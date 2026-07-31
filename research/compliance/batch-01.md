# 《回忆》整合包 模组合规核查 · batch-01（A–Always）

来源：`modlist.md` 第 25–149 行，共 50 个模组条目。
核查方式：两轮。第一轮 WebSearch（mcmod.cn 优先，每模组 ≤2 次）；第二轮按协调员策略逐条抓取 mcmod.cn 模组详情页（含评论区/投票/官方公告，每模组 ≤1 次请求、限流即跳过，共补抓 14 页）。

> 本包核心模组：星系 Galacticraft、AE2/AE2UEL、暮色森林、神秘时代（TC）。冲突栏以此四者为基准。

| # | 模组 | 正确分类 | 当前分类 | 许可证 | 1.12.2 | 开发状态 | 冲突/重复 | 风险 | 结论 |
|---|------|---------|---------|--------|--------|---------|-----------|------|------|
| 1 | (Bee's) Serified Font | 装饰（字体资源包） | 辅助优化 | ARR（闭源） | 有（资源包支持 1.8–1.21.x） | 完成，维护中 | 无核心冲突；注意：**资源包而非 Forge 模组**，需人工确认 1.12.2 pack.mcmeta 兼容 | 中（ARR + 非模组需验证） | 收录但风险标注 |
| 2 | 3D Sugar Cane | 装饰（视觉/资源包） | 未分类 | 未知 | 未知（未能定位同名模组，社区多为资源包方案） | 未知 | 未知 | 高（来源无法核实，需人工确认） | 收录但风险标注 |
| 3 | 3D crops Revamped | 装饰（视觉资源包，Vexcenot） | 农业 | 未知（资源包） | 有（支持 1.7.10–1.21+） | 完成，2025 年更新，330 万+下载 | 无；与 #2 功能重叠（3D 作物/甘蔗，可留一） | 低 | 收录 |
| 4 | A Lib（AlchemyLib） | 前置库 | 前置库 | MIT | 有（alib-1.0.12.jar） | 完成 | 无（Alchemistry 依赖库） | 无 | 收录 |
| 5 | AE Additions - ExtraCells2 Fork | 科技（AE2 附属） | 未分类 | GPL-3.0 | 有（1.3.8） | 完成，维护中 | 与 ExtraCells2 非无缝替换（需清理旧物品）；ME 方块容器性价比失衡（社区反馈） | 低 | 收录但风险标注 |
| 6 | AE2 Crafting Tree - Legacy | 科技（AE2 附属，国创） | 科技 | 未知（GitHub 开源） | 有（v0.1.2） | 停更，功能未完全收尾（有"未来计划"） | 需 JEI + MixinBooter；前置 AE2/AE2UEL **任选其一**（兼容好评 100%） | 中（停更 + 0.1 早期版） | 收录但风险标注 |
| 7 | AE2 Fluid Crafting | 科技（AE2 附属） | 科技 | MIT（原版）/ LGPL-3.0（Rework） | 有（原版 ae2fc 支持官方 AE2） | 原版停更；Rework 2024 年仍更新 | 1.12.2 的 Rework **仅支持 PAE2**；官方 AE2/AE2UEL 必须用原版 AE2FC | 中（版本选择错误即不兼容） | 收录但风险标注 |
| 8 | AE2 Network Visualiser | 科技（AE2 调试辅助） | 科技 | 未知（**闭源**） | 有（仅兼容官方 AE2，前置写死 class/260） | **停更** + 作者自述"仍处测试阶段、从未充分测试" | **前置仅官方 AE2**，若本包以 AE2UEL 为核心则不兼容；与 AE2 Stuff 可视化工具功能重叠 | 高 | **建议排除** |
| 9 | AE2 Stuff | 科技（AE2 附属） | 科技 | MIT | 有（原版 0.7.0.4；Unofficial 分支） | 原版停更；AE2-UEL 维护的 Unofficial 分支活跃 | Unofficial 分支**要求 AE2UEL**；与 AE2UEL 内置无线终端等功能部分重叠 | 中（需选对分支） | 收录但风险标注 |
| 10 | AE2 Unofficial Extended Life | 科技（AE2 1.12.2 延续核心） | 科技 | LGPL-3.0（AE2 派生） | 有（0.56.x，2024 年更新） | 活跃维护 | 与官方 AE2 互斥（二选一）；本包应以此为核心，附属需对版选择 | 无（核心） | 收录 |
| 11 | AE2 Wireless Fluid Terminal | 科技（AE2 附属） | 科技 | MIT | 有（需 AE2WTLib） | 原版 Beta/停更（2019），300 万+下载 | 与 AE2UEL 内置无线流体终端功能重复；依赖 AE2WTLib | 中（重复 + 老库） | 收录但风险标注 |
| 12 | AE2 Wireless Interface Terminal | 科技（AE2 附属） | 科技 | MIT | 有（随 AE2WTLib 套件） | 原版停更 | 同 #11：与 AE2UEL 内置重复，需 AE2WTLib | 中 | 收录但风险标注 |
| 13 | AE2 Wireless Terminal Library | 前置库（AE2WTLib） | 科技 | MIT | 有（1.0.29） | 原版停更，社区有 LTS 补丁版 | 无线终端崩溃需 p455w0rd's patch（服务端）；有 Mouse Gestures 冲突报告 | 中 | 收录但风险标注 |
| 14 | AE2UEL Wireless Universal Terminal | 科技（AE2UEL 附属，Circulate233） | 科技 | 未知（开源，派生 AE2） | 有（2025 年更新） | 维护中 | 与 p455w0rd WUT 功能重复，但专为 AE2UEL 兼容而生（必要补位） | 无 | 收录 |
| 15 | AEble | 附属/兼容（Aether × Baubles） | 未分类 | 未知 | 有（针对 Aether Legacy v1.5.0+） | 完成（小模组） | 与 AE2 无关（"AE"指 Aether）；本包用 Aether Continuation 则适用性存疑 | 中 | 收录但风险标注 |
| 16 | AI Improvements | 辅助优化 | 未分类 | MIT | 有（0.0.1b3） | 完成（1.12.2 版停更但稳定，服务端 AI CPU 降 50–80%） | 无 | 无 | 收录 |
| 17 | ARLib | 前置库 | 前置库 | MIT | 有 | 维护中 | 无（AR Reworked 必备依赖） | 无 | 收录 |
| 18 | AbyssalCraft | 维度探索 | 维度探索 | LGPL-3.0（开源） | 有（1.9/1.10/1.11.x 稳定线；2.0 BETA 线） | **活跃**（1.11.3 于 2025-11 发布；2.0.0-BETA 持续迭代未完成） | 官方页注明与"召唤师模组"冲突（降低 AC 版本可解）；玩家评分：稳定 52.9%、兼容 51%（偏低） | 中（建议稳定线 1.11.x，勿用 2.0 BETA） | 收录但风险标注 |
| 19 | AbyssalCraft Integration | 附属/兼容（TC4/5/6、JEI/NEI、匠魂联动） | 维度探索 | 未知（开源） | 有（含 TC6 联动） | **停更**（最后更新 2020-05） | TC 联动有**永久扭曲增加**负面机制（可配置关闭）；前置须用 AC 稳定版（测试版会导致服务端无法运行） | 中 | 收录（用 AC 稳定版配套） |
| 20 | Actually Additions | 科技 | 科技 | MIT | 有（r135/r152） | 原版停更（1.12.2 内容完成度高） | 无 | 无 | 收录 |
| 21 | Actually Additions V2 Coffee Edition | 科技（AA 1.12.2 非官方延续） | 科技 | ARR（获原作者特别授权） | 有 | 维护中（回移植 1.21 美术 + 修 bug） | 与原版 AA 同为 AA 1.12.2 实现，**二选一**（建议用 Coffee 版替代原版） | 中 | 收录但风险标注 |
| 22 | Actually Baubles | 科技（AA 附属） | 科技 | 未知（开源，Jackyy） | 有（需 AA + Baubles） | 停更（功能简单稳定） | 无 | 低 | 收录 |
| 23 | Actually Subtractions | 科技（AA 移植） | 科技 | MIT | **无（仅 1.20.1 移植版）** | 1.20.1 移植维护中 | 功能即 AA 本体移植，与本包 1.12.2 无关 | 高（版本不符） | 建议排除 |
| 24 | ActuallyAdditions | ——（与 #20 同一模组重复条目） | 科技 | MIT | 有 | 同 #20 | 重复收录 | 高（重复） | 建议排除 |
| 25 | Additional Banners | 装饰（更多旗帜图案） | 未分类 | 未知 | 有 | 完成 | 无 | 无 | 收录 |
| 26 | Additional Compression | 存储/装饰（压缩方块至 10 级） | 未分类 | 未知（MIT 系待确认） | 有 | 完成 | 与 Extra Utilities 压缩方块概念重叠（可共存） | 低 | 收录 |
| 27 | Additional Enchanted Miner | 工具武器（可附魔挖矿机，QuarryPlus 延续） | 未分类 | MIT | 有（12.5.6） | 维护中（Kotori316） | 与 QuarryPlus 同源（二选一） | 无 | 收录 |
| 28 | Additional Lanterns | 装饰 | 装饰 | 未知 | 有 | 完成 | 无 | 无 | 收录 |
| 29 | Additional Structures | 世界生成（+250 结构） | 维度探索 | MIT | 有（CF 297680） | 完成 | 结构类，与 BOP 等地形模组兼容良好 | 无 | 收录 |
| 30 | Additions Mod | 工具（游戏内自定义内容，Tmtravlr） | 未分类 | MIT | 有（0.5.2） | 完成 | 无 | 无 | 收录 |
| 31 | Advanced Alchemical Furnace | 魔法（疑似 TC 附属，无法核实） | 辅助优化 | 未知 | 未知 | 未知 | 未知（mcmod 无条目，中英文检索均无结果） | 高（来源与功能无法核实） | 收录但风险标注 |
| 32 | Advanced Backups | 辅助优化 | 辅助优化 | MIT | 有（Modrinth 标注 1.12.2 Forge） | 活跃维护（HeatherWhite，320 万+下载） | 无 | 无 | 收录 |
| 33 | Advanced Generators | 科技（多方块发电机） | 科技 | MIT | 有（0.9.20.10） | 停更但稳定 | 无 | 无 | 收录 |
| 34 | Advanced Rocketry | 科技（太空/行星） | 科技 | MIT（开源） | 有（1.12.2-2.0.0-17，2023-07 稳定版） | **停更**（作者放弃高版本移植，计划转作沉浸工程附属） | 官方页明示：**与星系同时安装可能因维度 ID 冲突等导致严重世界生成错误**；氧气系统与 GC 不通用；Bug 多且部分破坏存档（火箭实体/燃油站崩溃） | 高（与本包核心星系直接冲突） | **建议排除** |
| 35 | Advanced Rocketry - Reworked | 科技（AR 活跃维护 fork） | 科技 | MIT（派生） | 有（2.2.11，2026-06 更新；仅 1.12.2） | **活跃**（修复卫星断连/跃迁燃料/轨道滞留等原版 Bug） | 与 AR 原版互斥；**需 ARLib**；继承 AR 维度系统，与星系潜在维度冲突**未声明**，建议实测后再定 | 中（若实测与星系冲突则随 #34 排除） | 收录但风险标注 |
| 36 | Advanced Tweakery | 魔改/辅助（CrT 重支持新版 AR，国创） | 辅助优化 | 未知（开源） | 有（仅 1.12.2） | 停更（youyihj） | 需 CraftTweaker + AR；仅魔改场景需要 | 低（可选） | 收录 |
| 37 | Advent Of Ascension（AoA3） | 维度探索 | 维度探索 | ARR（闭源） | 有（1.12.2 = 重做前 3.0–3.3.6，内容完整） | **活跃**（3.7.16.1 于 2026-01 发布；官方称因 Mojang 改动短期更新受限，不会停更） | 20+ 维度占用维度 ID 多；性能重（建议 4–8 GB 内存）；1.18+ 新版本维度未实装（与 1.12.2 无关）；稳定评分 53.9% | 中（维度/内存压力） | 收录但风险标注 |
| 38 | Aether Continuation | 维度探索（Aether II 1.12.2 延续） | 维度探索 | 未知（疑似 ARR） | 有 | 半成品/维护不活跃（Aether II 1.12.2 端口社区评价 Bug 多） | 与 Aether: Lost Content Addon 配套 | 中（稳定性存疑） | 收录但风险标注 |
| 39 | Aether: Lost Content Addon | 维度探索（Aether 附属，恢复被砍内容） | 维度探索 | 未知 | 有（需 Aether） | 完成（小附属） | 依赖 #38（或 Aether Legacy），随其风险 | 中 | 收录但风险标注 |
| 40 | Age of Weapons - Reforged | 工具武器 | 工具武器 | MIT | 有（1.12.2–1.20.4，Modrinth 确认） | 维护中（约一年内有更新） | 无 | 无 | 收录 |
| 41 | Ageing Spawners | 生物（刷怪笼限次自毁机制） | 辅助优化 | 未知（开源，Mrbysco） | 有 | **活跃**（28 个整合包使用） | 无 | 无 | 收录 |
| 42 | AgriCraft | 农业 | 农业 | MIT | 有（官方 1.12.2 已停止维护） | 官方页**明确推荐 1.12.2 用社区维护版 AgriCraft Refitted**（修光照/JEI 显示问题） | 无核心冲突（与潘马斯/林业/热力联动） | 中（须用 Refitted） | 收录但风险标注 |
| 43 | Akashic Tome | 工具/辅助（手册合集） | 未分类 | MIT | 有 | 完成 | 无 | 无 | 收录 |
| 44 | AkashicTome-1.2-12 | ——（与 #43 重复条目，带版本号文件名） | 未分类 | MIT | 有 | 同 #43 | 重复收录 | 高（重复） | 建议排除 |
| 45 | Alchemistry | 科技（元素分解/合成） | 未分类 | MIT | 有（前置 AlchemyLib + Shadowfacts' Forgelin） | 活跃维护（已至 NeoForge 1.21.5） | 已知：JEI 查看液化器配方闪退（有修复教程）；官方不推荐无 JEI 游玩 | 低 | 收录 |
| 46 | Alfheim | 维度探索（Botania 附属） | 未分类 | 未知（开源） | **无（页面明示仅支持 1.7.10，"不支持其他版本"）** | 1.7.10 持续维护（2024-12 更新）但永不移植；另有 2020 年管理员权限安全漏洞历史（已被修复） | 与本包 1.12.2 无关 | 高（版本不符） | **建议排除** |
| 47 | Alfheim Lighting Engine | 辅助优化（光照引擎，Phosphor 谱系） | 装饰 | MIT（开源） | 有（仅 1.12.2，需 MixinBooter + Red Core，加载顺序须 MixinBooter 在前） | **半弃坑**（2.5M 下载、344 包使用；光源更新降为 1/27、内存更省） | 与 Phosphor/Hesperus **互斥（三选一）**；Mixin 替换光照引擎，兼容性问题以警告代替崩溃 | 中（半弃坑 + 依赖两前置） | 收录但风险标注 |
| 48 | Alternate Current | 辅助优化（红石线优化） | 未分类 | MIT | 有（**须用官方认可的 Alternate Current Unofficial Forge 移植版**） | 原版活跃（Fabric/Forge 1.18+）；1.12.2 靠社区移植 | 官方页确认 1.12.2 用移植版；红石更新顺序变为确定性（兼容好评 85.7%，与原版结果基本一致） | 中（移植版） | 收录但风险标注 |
| 49 | Alternative Rain Sounds | 装饰（音效替换） | 辅助优化 | 未知 | 未知（mcmod 无条目，检索无果，疑为小型音效资源） | 未知 | 无 | 高（无法核实，需人工确认） | 收录但风险标注 |
| 50 | AlwaysEat | 辅助优化（饱腹可进食，suppergerrie2） | 未分类 | MIT | 有（1.1） | 完成 | 无 | 无 | 收录 |

---

## 统计

- **收录：23**（#3, 4, 10, 14, 16, 17, 19, 20, 22, 25, 26, 27, 28, 29, 30, 32, 33, 36, 40, 41, 43, 45, 50）
- **收录但风险标注：21**（#1, 2, 5, 6, 7, 9, 11, 12, 13, 15, 18, 21, 31, 35, 37, 38, 39, 42, 47, 48, 49）
- **建议排除：6**（#8 AE2 Network Visualiser——停更闭源且仅兼容官方 AE2；#23 Actually Subtractions——无 1.12.2；#24 与 #20 重复；#34 Advanced Rocketry——官方页明示与星系维度冲突；#44 与 #43 重复；#46 Alfheim——仅 1.7.10）
- **分类错误：7**（#1 辅助优化→装饰；#3 农业→装饰/资源包；#19 维度探索→附属兼容；#29 维度探索→世界生成；#31 辅助优化→魔法（疑似，未核实）；#41 辅助优化→生物；#47 装饰→辅助优化）
  - 另有 **13 条"未分类"待归类**（#2, 5, 15, 16, 25, 26, 27, 30, 43, 45, 46, 48, 50），建议按本表"正确分类"归位。

## 关键发现（供整合包决策）

1. **二选一冲突对**：Actually Additions × AA V2 Coffee Edition（#20/#21，建议 Coffee 版替代原版）；Advanced Rocketry × Reworked（#34/#35）；QuarryPlus 系（#27 已选 AEMiner）；Phosphor 系光照引擎（#47 已选 Alfheim，勿再装 Phosphor/Hesperus）。
2. **AE2 家族版本矩阵是最大风险点**：本包若以 AE2UEL 为核心（#10），则 #9 选 AE2 Stuff Unofficial 分支、#7 用原版 AE2FC 而非 Rework、#14 为 AE2UEL 专用无线通用终端、#11/#12 与 AE2UEL 内置无线终端重复可裁剪、#13 需装 p455w0rd's patch 防服务端崩溃、**#8 仅兼容官方 AE2 应剔除**。
3. **与核心模组冲突（星系）**：Advanced Rocketry 官方页明确标注与星系存在维度 ID 冲突/世界生成错误/氧气不通用——本包核心含星系，**#34 应排除**；#35 Reworked 继承同一维度体系，收录前须实测与星系共存，否则一并排除。
4. **无法核实的条目**：#2 3D Sugar Cane、#31 Advanced Alchemical Furnace、#49 Alternative Rain Sounds 检索无果，需人工核对 mods 目录 jar 来源后再定。
5. **版本不符需剔除**：#23（仅 1.20.1）、#46（仅 1.7.10）。
6. **资源包混入**：#1、#3 为资源包而非 Forge 模组，需放入 resourcepacks 目录。
7. **神秘时代联动注意**：#19 AbyssalCraft Integration 的 TC6 联动会引入永久扭曲机制，且前置须用 AC 稳定版——与本包核心神秘时代共存时需配置评估。
