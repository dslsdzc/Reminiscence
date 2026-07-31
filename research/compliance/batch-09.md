# 《回忆》整合包 模组合规核查 · batch-09（Eternal Singularity – FastFlyBlockBreaking）

来源：`modlist.md` 第 1130–1238 行，共 45 个模组条目。
核查方式：以 `modrinth-results.tsv` 批量结果为基准（名字匹配且标题对得上时直接用其许可证）；NO_HIT / 批量 ARR / 标题疑似误匹配的条目经 **mcmod.cn 站内搜索 + 详情页**逐项补查，每模组最多 1 次详情页访问，间隔 3 秒以上，页面失败或查不到按"未知"跳过不重试轰炸；**GitHub 许可证用 `gh api` 逐仓库核实**（本批共核实约 20 个仓库：FTB 系、CyclopsMC、BlakeBr0、GlodBlock、rlnt、Invadermonky、Phylogeny、BloodWorkXGaming、Shadows-of-Fire 等）；Modrinth API 用于确认 1.12.2 版本存在性（EvergreenHUD / FancyMenu / Fancy End / FPS Reducer / FastFurnace / Excalibur / Extended illumina 等）。

> **数据来源说明**：本环境 Firefox 实例被并行批次共享且导航频繁被抢占（本批实测 3 次导航被劫持至他批页面，均已按"导航后校验 URL"策略识别），故 mcmod 页面数据改用 HTTP 直取（mcmod.cn 为服务端渲染，curl 结果与浏览器同源同内容；搜索端点与详情页均已校验 URL 身份）。mcmod 评论区为 JS 懒加载不可直取，社区口碑采用页面"红黑票 + 模组评比（好玩/稳定/兼容等百分比） + 简介警告"综合判断。
>
> 本包核心模组：星系 Galacticraft(-Legacy)、AE2/AE2UEL、暮色森林、神秘时代（TC6）。本批与四核心的关联：**AE2UEL 生态密集**（ExtendedAE、Extra CPUs、ExtraCells2、ECT-AE2、Extended Crafting 系均为 AE2 附属）；**星系系**：ExtraPlanets 为 Galacticraft 附属（需实测 GC-Legacy 兼容）；暮色/神秘时代无直接冲突（Expanded Equivalence 对 TC6 有 EMC 联动，属正向）。

| # | 模组 | 正确分类 | 当前分类 | 许可证 | 1.12.2 | 开发状态 | 冲突/重复 | 风险 | 结论 |
|---|------|---------|---------|--------|--------|---------|-----------|------|------|
| 1 | Eternal Singularity | 科技（无尽贪婪附属：奇点收纳合成） | 科技 | 开源（mcmod 标开源，许可证未核实） | 有（1.12.2/1.10.2/1.7.10） | 停更（2016，功能完整，评价 83% 好玩/75% 稳定） | 前置 Avaritia + WanionLib，推荐配 JAOPCA 奇点——**包内三者均有**，联动闭环 | 低（许可未标注） | 收录 |
| 2 | EvergreenHUD | 辅助优化（HUD 元素自定义） | 辅助优化 | GPL-3.0-with-Minecraft-Linking-Exception（批量表；GH isXander/EvergreenHUD GPL-3.0 佐证） | 有（Forge 1.12.2/1.8.9） | 1.12.2 线停更（mcmod 标停更；高版本由 Polyfrost 接手维护，1.12.2 版"最高级 HUD 之一"） | 无（客户端 HUD，与 MiniHUD 等共存常见） | 低 | 收录 |
| 3 | EverlastingAbilities | 生物（击杀特殊光效生物/开宝箱获得 30 种 Buff 的 RPG 增益） | 未分类 | MIT（GitHub 核实 CyclopsMC/EverlastingAbilities） | 有（Forge 1.12.2） | 活跃开源（1.12.2–1.21 全系；评价 73% 好玩/64% 稳定） | 无核心冲突；与血魔法/神秘时代无联动依赖 | 无-低 | 收录 |
| 4 | EvilCraft | 魔法（魔法/科技混合体系） | 魔法 | 开源（CyclopsMC 系惯例 MIT，仓库无独立 LICENSE 文件） | 有（0.10.71；版本列表含 1.12.2） | 活跃（评价 95% 好玩/79% 稳定，社区正面） | 无核心冲突（自成一派；与血魔法有官方联动） | 低 | 收录 |
| 5 | Ex Compressum | 科技（无中生有附属：压缩/自动化） | 科技 | **ARR**（GitHub LICENSE = All Rights Reserved，BlayTheNinth；整合包许可页 mods.twelveiterations.com/permissions 明文放行） | 有（3.0.x；列表含 1.12.2） | 活跃（现代线维护中，1.12.2 线停更但完整；评价 91% 好玩/73% 稳定） | 前置 Ex Nihilo Creatio（包内 #6 有）；与"Ex Nihilo"系列配套 | 低（ARR 注明许可页） | 收录 |
| 6 | Ex Nihilo: Creatio | 科技（空岛/资源生产：筛子/坩埚/自动旋转动力） | 科技 | MIT（GitHub 核实 BloodWorkXGaming/ExNihiloCreatio） | 有（1.13.x，仅 1.12.x 线） | 停更（2021，功能完整；评价 73% 稳定） | 与 Ex Compressum（#5）配套；无核心冲突 | 无 | 收录 |
| 7 | Excalibur | 装饰（资源包）或工具武器——**同名双实体待确认** | 工具武器 | ARR（Modrinth 匹配"Excalibur"资源包）；同名模组 mcmod 8594 亦闭源 | 有（Modrinth 资源包 1.12 系；mcmod 8594 仅 1.12.2） | 资源包：停更；mcmod 8594 模组：MCreator 制作、作者自称停更、仅 1 包使用 | 若为 mcmod 8594：MCreator 模组质量存疑（新增"石中剑"结构） | 中（收录对象不明；MCreator 模组社区无人问津） | 收录但风险标注 |
| 8 | Expanded Equivalence | 科技（ProjectE 附属：批量 EMC 配方） | 未分类 | ARR（批量表）；GitHub dragon-forge/ExpandedEquivalence 无 LICENSE 文件（开源但未标注） | 有（1.12.2/1.19.2） | 停更（评价 70% 好玩，**40% 稳定**——稳定性评价偏低） | 支持龙研/无尽/XU2/TC6 EMC——与包内核心正向联动；与 FTB Project EX（#32）同为 ProjectE 附属，EMC 内容叠加 | 中-高（稳定 40% + 许可未标注 + 跨模组 EMC 配方面大） | 收录但风险标注 |
| 9 | Expanded Events | 前置库（面向开发者的新增事件 API，Invadermonky） | 未分类 | MIT（GitHub 核实 Invadermonky/ExpandedEvents） | 有（仅 1.12.2） | 活跃（pushed 2026-06） | 供开发者/脚本使用（含 BaubleAttributeModifierEvent）；与包内 Invadermonky 系（FancyOutlines #39）同作者 | 无 | 收录 |
| 10 | ExpandedEquivalence | ——（与 #8 同一模组的重复条目） | 未分类 | 同 #8 | 有 | 同 #8 | 重复收录 | 高（重复） | 建议排除 |
| 11 | Extended Crafting | 科技（合成扩展：高级工作台/自动合成） | 未分类 | MIT（批量表；GH BlakeBr0/ExtendedCrafting MIT，2026 仍活跃） | 有（3.1.x） | 活跃开源（经典模组） | **与 #13（Nomifactory fork）、#16（重复条目）三选一**；与 AE2UEL 联动良好（配 #12 终端） | 无-低 | 收录 |
| 12 | Extended Crafting Terminals for Applied Energistics 2 | 科技（AE2UEL 附属：合成拓展终端） | 科技 | LGPL-3.0（GitHub 核实 0xC4DE/Extended-Crafting-Terminals-For-AE2） | 有（仅 1.12.2） | 活跃（pushed 2025-08；仅 2 包收录） | **专为 AE2UEL + Extended Crafting 的桥接**——本包两者皆有的关键联动件；无冲突 | 低（小众，实测验证） | 收录 |
| 13 | Extended Crafting: Nomifactory Edition | 科技（合成拓展的 Nomi 延续 fork） | 未分类 | 开源（fork 自 MIT 原版，未单独标注；mcmod 标开源） | 有（仅 1.12.2） | 停更（Nomi 团队 Exa4096/Neeve 等维护；Neeve 即 AE2UEL 作者，生态同源） | **与 #11 原版 Extended Crafting 同源冲突（配方/ID 重复，二选一）**；若保留建议二者择一（可作原版替代） | 高（重复/冲突） | 收录但风险标注（二选一） |
| 14 | Extended illumina (3D lantern and torch) | 装饰（资源包：灯笼/火把 3D 模型） | 装饰 | ARR（批量表） | 有（1.12–1.13 资源包，不挑版本） | 停更（资源包性质） | 无（纯视觉） | 低（ARR 注明出处） | 收录 |
| 15 | ExtendedAE | 科技（AE2 附属：解决 AE2 痛点系列物品） | 未分类 | LGPL-3.0（GitHub 核实 GlodBlock/ExtendedAE，2026-07 仍活跃） | 有（Forge 1.12.2 线） | 活跃（评价 94% 好玩/94% 实用，100 包收录——口碑佳） | 目标原版 AE2；**与 AE2UEL 兼容需实测**（本包用 AE2UEL）；与 AE2 Stuff/AE2UEL 附属等物品类部分重叠（共存常见） | 中（AE2UEL 兼容待实测） | 收录但风险标注 |
| 16 | ExtendedCrafting | ——（与 #11 同一模组的重复条目，jar 名形态） | 未分类 | 同 #11（MIT） | 有 | 同 #11 | 重复收录 | 高（重复） | 建议排除 |
| 17 | Extra Bit Manipulation | 装饰（Chisels & Bits 附属：雕刻坐骑/盔甲外观） | 未分类 | Unlicense（GitHub 核实 Phylogeny/ExtraBitManipulation） | 有（1.8.9–1.12.2） | 停更（功能完整） | 需 C&B（包内有）；无核心冲突 | 低 | 收录 |
| 18 | Extra CPUs | 科技（AE2 附属：更大容量合成存储器 256k+） | 未分类 | GPL-3.0（GitHub 核实 rlnt/minecraft-extracpus，作者即 mcmod 3191 的 Relentless） | 有（仅 1.12.2） | 停更（19 包收录） | AE2 附属；**与 AE2UEL 兼容需实测**（纯方块注册类，预期可用） | 低-中（AE2UEL 实测） | 收录 |
| 19 | Extra Trees | 农业（林业/蜜蜂系扩展树木） | 未分类 | 开源（Binnie 系，许可证未核实） | 有（1.12.2） | 停更（评价 83% 好玩/67% 稳定） | **与包内 Binnie's Mods（前批已收录）重复/冗余**——1.12.2 的 Binnie's Mods 单体 jar 已含 Extra Trees 模块，建议核实后二选一 | 中-高（重复/冗余） | 收录但风险标注（二选一） |
| 20 | Extra Utilities | 科技（XU2：GP 能源/管道/实用机器） | 科技 | 闭源（mcmod 无开源标注，RWTema 惯例 ARR） | 有（1.9.4） | 停更（2019；评价 86% 好玩/59% 稳定，经典模组） | 无核心冲突；XU2 管道/搬运与 EIO 等功能重叠（共存常见）；包内另有 XU2-Patcher（后批）配套 | 低（闭源注明） | 收录 |
| 21 | ExtraBotany | 魔法（Botania 附属：新花/新系统，国创） | 魔法 | 开源（GitHub ExtraMeteorP/ExtraBotany 无 LICENSE 文件——许可未标注） | 有（1.7.10/1.12.2/1.16.5） | 停更（2019；评价 76% 好玩，**52% 稳定**；38 篇教程、社区活跃） | 需 Botania（包内有）；无核心冲突 | 中（许可未标注 + 稳定评价一般） | 收录但风险标注 |
| 22 | ExtraCells2 | 科技（AE2 附属：大容量存储/流体单元） | 未分类 | MIT（GitHub 核实 ExtraCells/ExtraCells2 组织仓库；Jorch72 fork 亦 MIT） | 有（2.5.8） | 停更（1.12.2 线收尾） | AE2 附属；**与 AE2UEL 兼容需实测**（DJ2 同框组合常见，预期可用）；与 AE Additions-EC2 Fork（包内另有）功能重叠二选一 | 低-中（AE2UEL 实测 + 与 AE2-EC2-Fork 重复） | 收录 |
| 23 | ExtraPlanets | 维度探索（Galacticraft 附属：太阳系多行星） | 科技 | 开源（GitHub MJRLegends/ExtraPlanets 无 LICENSE 文件——许可未标注） | 有（1.7.10–1.12.2） | 停更（pushed 2025 仍有动静；评价 86% 好玩，**53% 稳定/42% 兼容**） | **依赖 Galacticraft 4 系——本包用 Galacticraft-Legacy（MIT fork），兼容性需实测**；新增大量行星维度（维度 ID 构建期核对，避开星系/暮色/TC 维度）；前置 MJRLegendsLib（包内有） | 高（GC-Legacy 兼容待实测 + 稳定/兼容评价偏低） | 收录但风险标注 |
| 24 | Extreme Reactors | 科技（多块核电） | 科技 | MIT（批量表；原 erogenousbeast MIT 血统，ZeroNoRyouki 续作） | 有（2.0.x） | 1.12.2 线停更（高版本活跃） | 与包内 NuclearCraft: Overhauled 核电功能部分重叠（机理不同，可共存——建议构建期评估取舍）；与龙研/格雷无冲突 | 低 | 收录 |
| 25 | ExtremeReactors | ——（与 #24 同一模组的重复条目） | 科技 | 同 #24（MIT） | 有 | 同 #24 | 重复收录 | 高（重复） | 建议排除 |
| 26 | Eye of Dragons | 工具武器（冰火传说附属：龙之眼寻踪道具） | 生物 | 开源（mcmod 标开源，许可证未核实） | 有（1.12.2/1.15.2/1.16.4） | 停更（10 包收录） | 需 Ice and Fire（包内有）；无核心冲突 | 低 | 收录 |
| 27 | FPS Reducer | 辅助优化（闲置降帧省资源） | 辅助优化 | 闭源（批量表 ARR；mcmod 标闭源） | 有（Modrinth 1.12.2-1.20 版本 2023；mcmod 列表偏现代线） | 活跃（评价 96% 稳定） | 无（客户端性能） | 低（闭源注明） | 收录 |
| 28 | FTB Backups | 辅助优化（定时备份） | 辅助优化 | ARR/未标注（GitHub FTBTeam/FTB-Backups 无 LICENSE 文件；FTB 官方分发） | 有（1.1.0.1 与条目名一致） | 停更（官方称已被 Backups 2/3 取代；评价 100% 稳定/实用） | **与包内 AromaBackup（前批）备份功能重复——建议二选一** | 中（功能重复 + 许可未标注） | 收录但风险标注 |
| 29 | FTB Backups (Forge) | ——（与 #28 同一模组的重复条目） | 辅助优化 | 同 #28 | 有 | 同 #28 | 重复收录 | 高（重复） | 建议排除 |
| 30 | FTB Library | 前置库（FTB 系 GUI 通用前置） | 辅助优化 | **ARR**（GitHub LICENSE = "All Rights Reserved" FTB Ltd 2025） | 有（5.4.7.0 与条目名一致） | 1.12.2 线停更（高版本活跃） | FTB Utilities/FTB Quests 系前置（包内 FTBU 依赖）；无核心冲突 | 低（ARR 注明） | 收录 |
| 31 | FTB Library (Forge) (Legacy) | ——（与 #30 同一模组的重复条目） | 辅助优化 | 同 #30（ARR） | 有 | 同 #30 | 重复收录 | 高（重复） | 建议排除 |
| 32 | FTB Project EX | 科技（ProjectE 附属：等价交换升级） | 未分类 | LGPL-3.0（GitHub 核实 FTBTeam/FTB-ProjectEX） | 有（1.12.2/1.16.5/1.18.2） | 停更（FTB 接手；评价 78% 好玩/58% 稳定） | **简介明示：FTB 接手后存在 [WIP] 未完成物品，右击使用可能崩溃**；与 #8 Expanded Equivalence 同为 ProjectE 附属（EMC 内容叠加）；需 ProjectE（包内有） | 中-高（WIP 崩溃风险 + 停更） | 收录但风险标注 |
| 33 | FTB Utilities | 辅助优化（队伍/家/死亡墓碑/区块加载/边界） | 辅助优化 | ARR/未标注（GitHub FTBTeam/FTB-Utilities 无 LICENSE 文件） | 有（5.4.0.124 与条目名一致） | 停更（2019，经典稳定；评价 100% 好玩/83% 稳定） | 与包内 VisualClaiming（FTBU 附属）配套；前置 FTB Library（包内 #30）；无核心冲突 | 低（ARR 注明 + 停更） | 收录 |
| 34 | FTB Utilities (Forge) | ——（与 #33 同一模组的重复条目） | 辅助优化 | 同 #33 | 有 | 同 #33 | 重复收录 | 高（重复） | 建议排除 |
| 35 | FTBBackups-1.1.0.1 | ——（与 #28 同一模组的重复条目，版本文件名） | 辅助优化 | 同 #28 | 有 | 同 #28 | 重复收录 | 高（重复） | 建议排除 |
| 36 | FTBLib-5.4.7.0 | ——（与 #30 同一模组的重复条目，版本文件名） | 辅助优化 | 同 #30 | 有 | 同 #30 | 重复收录 | 高（重复） | 建议排除 |
| 37 | FTBUtilities-5.4.0.124 | ——（与 #33 同一模组的重复条目，版本文件名） | 辅助优化 | 同 #33 | 有 | 同 #33 | 重复收录 | 高（重复） | 建议排除 |
| 38 | Fancy End（End Aesthetic Overhaul） | 装饰（资源包：末地方块/物品重绘） | 装饰 | CC-BY-NC-ND-4.0（批量表） | 有（Modrinth 资源包含 1.12.2） | 资源包（活跃） | 无（纯视觉） | 低（CC-BY-NC-ND：署名 + 不可商用，整合包内使用可、分发注明） | 收录 |
| 39 | Fancy Outlines | 辅助优化（方块高亮框颜色/宽度自定义） | 装饰 | WTFPL（GitHub 核实 Invadermonky/FancyOutlines） | 有（仅 1.12.2，2026 年新作） | 活跃（2026-03 仍在更新） | 前置 MixinBooter（包内有）；无冲突（与 Iskandar 同名 1.16+ 模组无关） | 低-中（新小模组，功能面窄） | 收录 |
| 40 | FancyMenu | 辅助优化（主菜单/界面自定义） | 辅助优化 | DSMSLv3（批量表；Keksuccino 自定义许可，允许整合包使用） | 有（Modrinth 2.14.9-1.12-1.12.2-forge，2023；mcmod 列表偏现代线） | 活跃（1.12.2 线版本较旧但可用；评价 82% 好玩/82% 稳定） | 依赖 Konkrete + Load My Resources——**包内两者均有**；与 Custom Main Menu 功能重叠（共存常见，二选一更佳） | 低 | 收录 |
| 41 | Fantasy 3D Weapons CIT | 装饰（资源包：CIT 3D 武器模型） | 工具武器 | ARR（批量表） | 有（Modrinth 资源包含 1.12.2） | 资源包（停更） | **依赖 OptiFine CIT 渲染——若包内无 OptiFine 则该资源包无效**（包内有 Optifine Check 模组，需确认最终方案） | 中（OptiFine 依赖未定） | 收录但风险标注 |
| 42 | Farming for Blockheads | 农业（农场市场/浇水/肥料商店） | 农业 | **ARR**（GitHub LICENSE = All Rights Reserved，BlayTheNinth；整合包许可页 mods.twelveiterations.com/permissions 明文放行） | 有（7.x） | 活跃（现代线维护中；1.12.2 线停更但完整） | 与 Cooking for Blockheads（包内有）为姊妹模组互补；无核心冲突 | 低（ARR 注明许可页） | 收录 |
| 43 | Fast Furnace | 辅助优化（熔炉配方缓存性能优化 + 烧炼时间溢出修复） | 辅助优化 | MIT（GitHub 核实 Shadows-of-Fire/FastFurnace） | 有（1.12.2 线） | 活跃（1.14–1.21 全线更新） | 与包内 FastWorkbench（后批）同作者配套；性能类与 FoamFix 等共存建议实测 | 低 | 收录 |
| 44 | Fast Leaf Decay | 辅助优化（快速树叶腐烂） | 辅助优化 | 未标注（GitHub 无 LICENSE 文件，但 **README 明示"整合包免许可随意使用"**） | 有（v25） | 停更（经典小工具） | **与包内 Quick Leaf Decay（快速树叶腐烂，前批）功能重复——建议二选一** | 中（功能重复） | 收录但风险标注 |
| 45 | FastFlyBlockBreaking | 辅助优化（生存飞行时正常速度破方块） | 辅助优化 | 开源（mcmod 标开源，许可证未核实） | 有（1.7.10–1.13.2） | 停更（小工具） | 无；服务端亦需安装才生效（说明文档已注明） | 低 | 收录 |

## 统计

- **收录 25**：Eternal Singularity、EvergreenHUD、EverlastingAbilities、EvilCraft、Ex Compressum、Ex Nihilo: Creatio、Expanded Events、Extended Crafting、Extended Crafting Terminals for AE2、Extended illumina、Extra Bit Manipulation、Extra CPUs、Extra Utilities、ExtraCells2、Extreme Reactors、Eye of Dragons、FPS Reducer、FTB Library、FTB Utilities、Fancy End、Fancy Outlines、FancyMenu、Farming for Blockheads、Fast Furnace、FastFlyBlockBreaking
- **风险 11（收录但风险标注）**：Excalibur（同名双实体待确认）、Expanded Equivalence（稳定 40%）、Extended Crafting: Nomifactory Edition（与原版二选一）、ExtendedAE（AE2UEL 实测）、Extra Trees（与 Binnie's Mods 冗余二选一）、ExtraBotany（许可未标注）、ExtraPlanets（GC-Legacy 实测 + 维度 ID）、FTB Backups（与 AromaBackup 二选一）、FTB Project EX（WIP 崩溃警告）、Fantasy 3D Weapons CIT（OptiFine 依赖）、Fast Leaf Decay（与 Quick Leaf Decay 二选一）
- **排除 9（全部为重复条目）**：ExpandedEquivalence、ExtendedCrafting、ExtremeReactors、FTB Backups (Forge)、FTB Library (Forge) (Legacy)、FTB Utilities (Forge)、FTBBackups-1.1.0.1、FTBLib-5.4.7.0、FTBUtilities-5.4.0.124
- **分类错误 17**：EverlastingAbilities（未分类→生物）、Excalibur（工具武器→装饰/待定）、Expanded Equivalence（未分类→科技）、Expanded Events（未分类→前置库）、Extended Crafting（未分类→科技）、Extended Crafting: Nomifactory Edition（未分类→科技）、ExtendedAE（未分类→科技）、Extra Bit Manipulation（未分类→装饰）、Extra CPUs（未分类→科技）、Extra Trees（未分类→农业）、ExtraCells2（未分类→科技）、ExtraPlanets（科技→维度探索）、Eye of Dragons（生物→工具武器）、FTB Library（辅助优化→前置库）、FTB Project EX（未分类→科技）、Fancy Outlines（装饰→辅助优化）、Fantasy 3D Weapons CIT（工具武器→装饰）

> 构建提示：本批 AE2UEL 生态附属密集（#12/#15/#18/#22 及 #11/#13），建议一次性实测与 AE2UEL 的加载兼容；ExtraPlanets 与 Galacticraft-Legacy 组合、FTB Project EX 的 WIP 物品、Expanded Equivalence 的稳定评价为最高优先级验证项；FTB 系（#28/#30/#33）与 Blay 系（#5/#42）许可均为 ARR 但有官方整合包许可通道，收录时注明出处即可。
