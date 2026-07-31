# 任务：能量转换插件适配（模组 patch 类样例）

## 目标

在开源模组 **Power Converters**（1.12.2 分支）的 fork 中，为其能量转换引擎新增一种转换目标：**星辉魔法的星光能量 ↔ 热力 RF**。转换由统一引擎的 EnergyPipe 接管——本任务只负责模组侧"转换端口"的对接（读入/写出），不做数值设计。

## 边界

只允许触碰（fork 工作区）：
- `PowerConverters/src/main/java/powercrystals/powerconverters/power/`（新增一个子包 `astral/`）
- `PowerConverters/build.gradle`（仅新增依赖行，见下）
- 产出 patch 文件到 `patches/powerconverters-astral.patch`（相对 fork 根目录的 diff）

禁止触碰：`pack/`、核心引擎代码（不存在于你的工作区）、Power Converters 其他模块。

## 输入

- 引擎公开接口（唯一的引擎层接触点，只读参考）：
  - 星辉魔法 API：`astralsorcery.api.power.ICrystalProperties`（星座能量读入口，官方 API 类）
  - 热力 RF：`cofh.redstoneflux.api.IEnergyHandler`
- 联动总图：spec §6.2「能量域：星光→AE2 · …候选」——本任务是总图第一根候选 EnergyPipe 的模组侧实现
- 转换数值（行为公开，直接使用，不做设计）：1 星光单位 = 100 RF，无损耗

## 验收标准

1. 编译：`cd PowerConverters && ./gradlew build` 通过（JDK 8，项目要求）
2. 单元测试：新增 `AstralConversionTest`——构造模拟星光源 + RF 接收器，断言转换 1 单位星光输出 100 RF
3. patch 产出：`git diff > ../patches/powerconverters-astral.patch`，文件存在且 `git apply --check` 反向验证通过
4. 集成验证（人工）：游戏内放置星光采集器 → 转换器 → 能量单元，输出为 RF 且比率 1:100
5. patch 内注释只写行为描述（`// 星辉星光 → RF，1:100`），禁止写引擎内部实现

## 回退条件

- 若星辉魔法 API 类名/方法在 1.12.2 版本中不存在（编译失败且无法通过查阅该版本 API 文档解决）→ 停止，PR 说明真实 API 形状，不自行改名
- 若 `./gradlew build` 环境问题（无 JDK8/依赖下载失败）→ 报告环境，不提交

## 交付物

- fork 内的新子包源码 + 测试
- `patches/powerconverters-astral.patch`
- 自检清单：编译通过 / 单测通过 / patch 可反向应用 / 注释无实现细节 / 数值未自行设计
