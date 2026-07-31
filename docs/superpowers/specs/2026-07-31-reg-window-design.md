# 运行时注册窗口（Runtime Registration Window）技术方案

> 日期：2026-07-31
> 机密等级：**内部（仅核心维护者）**——本设计属于私有仓 Reminiscence-Core 的技术资产，公开仓不得出现本文件或其摘要。
> 状态：阶段 2 研究性设计（阶段 1 保底方案为"分量加载"，见 spec §6.4）

## 1. 背景与目标

《回忆》收录 1338 个模组（候选池曾达 1466）。1.12.2 + Cleanroom 下全量启动的硬内存开销（Metaspace 1.5-3GB + 区块/方块实体堆 3-4GB）使全量启动需要 10-12GB，"遇到哪个加载哪个"的按需加载是唯一能同时满足以下三者的终局解：

1. **全量保留**：所有经典模组同时收录（"成千上万的模组都可以同时融入"）
2. **低内存门槛**：目标下沉到 6GB（经典档）
3. **无手动分量管理**：玩家不感知模组管理，只感知"内容域随解锁展开"

## 2. 技术可行性分析（1.12.2 + Cleanroom）

### 2.1 可动态增量的注册系统（注册表层全是动态数据结构）

| 注册系统 | 实现机制 | 动态增量 |
|---|---|---|
| 物品/方块注册表 | 字符串 RegistryName → 注册表 HashMap | ✓ 追加即合法 |
| 方块状态 ID 映射 | `Block.BLOCK_STATE_IDS` IntIdentityMap | ✓ 追加 ID 与老存档映射不冲突 |
| 实体注册 | 字符串实体 ID → 注册表 | ✓ |
| 维度注册 | DimensionType 索引数组 | ✓ 扩容数组 |
| 网络通道 | 字符串 channel | ✓ |
| Capability | 并发注册表 | ✓ |

**核心洞察**：1.12.2 的数字 ID（blockstate ID）只是"注册顺序号"，追加新段不会破坏已生成区块的映射——这是注册窗口可行的根本原因。

### 2.2 难点清单（无原理性障碍，全是工程问题）

| # | 难点 | 解法参考 |
|---|---|---|
| 1 | **依赖闭包解析**：模组 A 的配方/初始化引用模组 B 的物品，B 未加载即崩溃 | OSGi bundle 依赖图 + 传递闭包解析（先解析依赖，再加载目标） |
| 2 | **增量集成钩子**：已加载模组在 PostInit 已扫描过全量物品，感知不到新模组 | Gregersen"集成点"模型：注册窗口触发已加载模组的增量集成回调 |
| 3 | **渲染动态加载**：ModelBakery 启动期烘焙模型/纹理 | render-bridge：新模组资源包动态注入 + 重烘焙触发 |
| 4 | **加载失败回滚**：模组初始化中途崩溃会污染注册表 | registry-controller 快照/回滚（失败 → 还原注册表 → 游戏继续） |
| 5 | **classloader 隔离**：新模组类不能污染已加载模组的类空间 | 每模组 classloader 岛（JBoss 无父 classloader 图模型） |

### 2.3 为什么 JVM 层不是障碍

- US 6,748,396 专利（2004）：组件首次被访问时才激活其类加载器——"遇到哪个加载哪个"的专利原型
- JBoss 15 年实践：无父 classloader 图（每模块一个 classloader）消除 JAR hell
- OSGi bundle 生命周期（install/resolve/start/stop/uninstall）：动态模块化的标准模型
- ServiceLoader/SPI + 自定义 ClassLoader：Gradle/IntelliJ/MC 服务器生态的标准插件模式

## 3. 架构（闭源核心旗舰组件）

```
Reminiscence-Core/
└── reg-window/                    # ★ 运行时注册窗口
    ├── registry-controller/       # 注册表控制：快照/增量/回滚
    │   ├── snapshot               # 加载前注册表快照（物品/方块/实体/维度/网络）
    │   ├── append                 # 增量追加注册段
    │   └── rollback               # 失败回滚（还原快照）
    ├── dep-resolver/              # 依赖闭包解析器（OSGi bundle 模型）
    │   ├── graph                  # 模组依赖图（jar manifest 声明）
    │   └── closure                # 传递闭包 + 环检测
    ├── integration-hooks/         # 增量集成点
    │   ├── hooks                  # 已加载模组的增量集成回调注册
    │   └── notify                 # 新模组加载 → 通知已加载模组
    ├── classloader-islands/       # 每模组 classloader 岛（JBoss 模型）
    │   ├── island                 # 模组岛（URLClassLoader 隔离）
    │   └── parent-lookup          # 岛间服务发现（findServiceProviders）
    └── render-bridge/             # 动态渲染加载桥
        ├── resource-inject        # 新模组资源动态注入
        └── rebake                 # 模型/纹理重烘焙触发
```

### 3.1 加载会话模型（OSGi 对齐）

```
加载请求（内容域/行星解锁/玩家行为触发）
  → dep-resolver 计算依赖闭包
  → registry-controller 快照注册表
  → 逐模组：classloader 岛创建 → 注册追加 → 初始化
  → integration-hooks 通知已加载模组（增量集成）
  → render-bridge 资源注入 + 重烘焙
  → 提交（成功）或回滚（失败）
```

### 3.2 内容域触发（与主线的咬合）

- 内容域 = 行星/维度解锁链的模组闭包（C0 主世界核心 / C1 月球线 / C2 火星线…）
- 触发点：星图解锁、遗迹修复、维度入口激活
- 加载失败 → 回滚 + 内容域标记"不可用"→ 星图提示线索缺失（可发现性系统兜底）

## 4. 三阶段路线图

| 阶段 | 内容 | 验收标准 | 风险 |
|---|---|---|---|
| **1 分量加载（保底）** | 内容域分量的启动级配置切换（解锁 → 重启 → 自动换配置） | 6GB 经典档跑通 | 低 |
| **2 注册窗口 MVP（研究验证）** | 仅支持"纯物品/方块/配方"模组的运行时加载（无渲染/实体/世界生成） | 运行中加载 3 个测试模组（含依赖闭包）+ 失败回滚演示 | 中 |
| **3 全量动态加载（旗舰）** | 渲染桥 + 实体/世界生成/维度增量注册 | 内容域运行时展开，无重启 | 高 |

阶段 2 是技术验证点：MVP 证明注册表快照/回滚 + 依赖解析 + classloader 岛三件套可行后，阶段 3 才投入。

## 5. 风险与失败模式

1. **模组初始化假设**：任何模组假设"全量已注册"（罕见但存在）→ 增量集成钩子无法完全覆盖 → 该模组标记为"不可运行时加载"，退回分量加载
2. **渲染重烘焙性能**：大模型组重烘焙卡顿 → render-bridge 分批烘焙 + 进度反馈
3. **存档兼容**：运行时加载的方块出现在旧区块 → 只在新生成区块出现（设计如此，无需迁移）
4. **调试复杂度**：双态（启动加载/运行时加载）环境 → 测试矩阵翻倍 → 自动化冒烟脚本（spec-workflow 的验收清单）
5. **失败**：若阶段 2 MVP 验证不通过 → 维持分量加载方案（1338 全量收录不变，仅加载策略不同）

## 6. 护城河意义

**这是全球首个 Minecraft 运行时模组注册窗口**——不做则已，做成 = 闭源核心的绝对技术壁垒：

- 玩法可抄（diff/文档公开），**底层能力抄不走**（无论文、无开源实现、逆向成本极高）
- 模组数量上限从"启动内存"解锁为"按需内存"——竞争对手无法复制的收录规模
- 分量加载可被模仿，注册窗口不可（除非逆向 C 引擎 + Mixin 层 + 大量调试）

## 7. 研究参考

- Gregersen (2011). "Implications of modular systems on dynamic updating." CBSE'11. —— 集成点框架
- Miedes & Muñoz-Escó (2012). "A survey of dynamic software updating." —— DSU 技术分类
- Ahmed et al. (2020). "Dynamic software updating: a systematic mapping study." —— 全景
- Gharaibeh et al. (2011). "Analyzing Software Updates: Should You Build a Dynamic Updating Infrastructure?" —— 成本收益决策模型
- Vandewoude & Berbers (2002). "An overview and assessment of dynamic update methods for component-oriented embedded systems."
- US Patent 6,748,396（按需组件激活）
- David Lloyd. "Inconsistency with service loading by layer or by class loader." OpenJDK jigsaw-dev 讨论（2024-12）—— 无父 classloader 图 + 服务发现缺口
- OSGi Core Specification —— bundle 生命周期模型
- CraftLib（Bukkit 运行时依赖解析，工程实证）

## 8. 与现有设计的关系

- 分量方案（spec §6.4 内容域分量）是阶段 1 保底，**并行推进**：阶段 1 先落地保证 6GB 目标，阶段 2-3 成功后分量自动退化为"默认配置"而非硬约束
- 统一引擎（C 核心）与注册窗口无耦合：注册窗口管"加载"，统一引擎管"计算"
- 清单挑选（modlist v7，1338）不受影响：重复/平衡/定制照常筛选
