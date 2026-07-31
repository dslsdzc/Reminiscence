# 模组合规核查 Batch 16（modlist.md 第 1984-2096 行，49 条）

核查时间：2026-07-31。数据源：modrinth-results.tsv 批量结果、mcmod.cn 搜索与下载页（HTTP 直连）、GitHub gh api（仓库 LICENSE）、Modrinth API（versions:1.12.2 筛选）。限流/失败的按"未知"标注，未重试轰炸。

| # | 模组 | 正确分类 | 当前分类 | 许可证 | 1.12.2 | 开发状态 | 冲突/重复 | 风险 | 结论 |
|---|------|---------|---------|--------|--------|---------|-----------|------|------|
| 1 | Mekanism Generators | 科技 | 科技 | MIT（TSV 批量，标题吻合） | 是 | 活跃（Mekanism CE 系） | 与第1981行 "Mekanism Community Edition: Generators" 疑似同 jar 重复 | 低 | 收录，与 MCE:Generators 二选一合并 |
| 2 | Mekanism-CE-Unofficial | 科技 | 科技 | 未知（mcmod 类8934 [MekCEu] sddsd2332 维护；GitHub 仓库未定位，Mekanism 系多为 MIT，需以官方页为准） | 是（mcmod 文件 Mekanism-CE-Unofficial-All-10.0.2.540 等 50 个） | 活跃（10.0.2 持续更新） | 与第1980行 "Mekanism Community Edition" 为同源再分支，类 ID 冲突，必须二选一 | 高 | 风险标注：与 MCE 二选一，确认许可后再收录 |
| 3 | MekanismOres | 科技 | 科技 | MIT（GitHub phantamanta44/MekanismOres，build.gradle 明确 1.12.2-14.23.5.2838） | 是 | 停更（v2.0.13，功能稳定） | 无（为 Mekanism 增加其他矿石处理支持，与包内 MCE 互补） | 低 | 收录 |
| 4 | Memory Cleaner Mod | 辅助优化 | 辅助优化 | Apache-2.0（GitHub towavephone/MemoryCleaner） | 是（CurseForge 1.12.2 版） | 活跃（作者多版本维护） | 无 | 低 | 收录 |
| 5 | MemoryTester | 辅助优化（启动内存检测） | 未分类 | MIT（GitHub KaptainWutax/MemoryTester） | 是（1.12.2 整合包常用） | 停更（功能完整） | 无 | 低 | 收录，归 辅助优化 |
| 6 | Metals Ultra | 资源包（视觉） | 未分类 | LGPL-3.0-or-later（Modrinth metals-ultra，46.8 万下载） | 是（资源包） | 资源包，成熟 | 无 | 低 | 收录，注意：Modrinth 上为资源包非模组，需确认包内引用意图 |
| 7 | MicdoodleCore | 前置库（Galacticraft Legacy 核心） | 世界生成 | MIT（Galacticraft Legacy 仓库 MIT，romploits/Galacticraft-Legacy） | 是（随 Galacticraft Legacy 分发） | 维护中（Galacticraft Legacy 活跃） | 与星系 Galacticraft Legacy 配套，勿与旧版核心混用 | 低 | 收录，归 前置库 |
| 8 | Midnighttigger's Default Connected Textures | 资源包（CTM 连接纹理） | 维度探索 | All Rights Reserved（Modrinth mt-ct-d，123 万下载） | 是（资源包） | 成熟 | 需 CTM/连接纹理支持（包内含 CTM） | 中 | 收录，风险标注：ARR 资源包，分发需遵守作者条款 |
| 9 | Mike's Mods Lib | 前置库 | 前置库 | MMPL（Minecraft Mod Public License，GitHub pkmnfrk/mikesmodslib） | 是（仓库 1.12.2 分支） | 停更（稳定） | 与第2008行 "MikesModsLib-1.0.2" 重复 | 低 | 收录，去重（合并第2008行） |
| 10 | MikesModsLib-1.0.2 | 前置库 | 前置库 | 同上（MMPL） | 是 | 同上 | 与第2007行重复（同模组文件条目） | 低 | 建议删除该行（重复） |
| 11 | MineMenu | 辅助优化 | 辅助优化 | MIT（GitHub GirafiStudios/MineMenu；Modrinth mine-menu） | 是 | 停更（稳定） | 无 | 低 | 收录 |
| 12 | MineTraps | 装饰（机关陷阱） | 未分类 | All Rights Reserved（Modrinth minetraps，49.7 万下载） | 是 | 停更（功能完整） | 无 | 中 | 收录，风险标注：ARR |
| 13 | Minecraft Forge | 前置库（加载器） | 未分类 | LGPL-2.1（Forge 1.12.2 版许可证；TSV 误配 ViaForge GPL-3.0 不可信） | 是（本身即 1.12.2 加载器） | 维护（1.12.2 分支稳定） | 无（必装） | 低 | 收录，归 前置库 |
| 14 | MiniEffects-Legacy Extended Life | 辅助优化（状态效果折叠） | 未分类 | MIT（GitHub ZZZank/MiniEffects-ExtendedLife；上游 Snownee/MiniEffects 亦 MIT） | 是（LEL 为 1.12.2 分支） | 维护中 | 无 | 低 | 收录，归 辅助优化 |
| 15 | MiniHUD | 辅助优化 | 辅助优化 | LGPL-3.0-only（TSV 批量，标题吻合；masa 系许可） | 是（需 maLiLib 前置） | 活跃 | 无 | 低 | 收录 |
| 16 | Minor Integrations and Additions (MIA) | 辅助优化（杂项整合） | 未分类 | MIT（TSV 批量，标题吻合） | 是（Modrinth 1.12.2 版） | 停更（稳定） | 无 | 低 | 收录，归 辅助优化 |
| 17 | MixinBooter | 前置库 | 未分类 | LGPL-2.1-only（TSV 批量；Rongmario/MixinBooter） | 是 | 维护中 | 与 MixinBootstrap 同为 mixin 加载前置，功能重叠但多数包并存 | 低 | 收录，归 前置库 |
| 18 | MixinBootstrap | 前置库 | 未分类 | Apache-2.0（TSV 批量，标题吻合） | 是 | 停更（稳定） | 与 MixinBooter 功能重叠，可并存 | 低 | 收录，归 前置库 |
| 19 | Mixmetica | 辅助优化（皮肤/饰品） | 未分类 | LGPL-3.0-only（Modrinth + GitHub xthe-dev/Mixmetica） | 是（Modrinth 版本 1.8.9/1.12.2，101 万下载） | 1.12.2 版停更（成熟） | 修改 OptiFine，需包内含 OptiFine；与 CustomSkinLoader 部分重叠可并存 | 中 | 收录，风险标注：依赖 OptiFine |
| 20 | MmmMmmMmmMmm | 生物（测试假人） | 未分类 | 自定义（Supplementaries Team License v1.5：允许个人使用，禁止公共再分发，MehVahdJukaar 维护版） | 是（mcmod MmmMmmMmmMmm-1.12-2.0.7.jar） | 上游活跃（dummmmmmy），1.12 版停更稳定 | 与第2031行 "(Target Dummy)" 重复 | 高（许可禁止公共再分发） | 收录，风险标注：去重 + 许可对公开分发有约束 |
| 21 | MmmMmmMmmMmm (Target Dummy) | 生物（测试假人） | 未分类 | 同上 | 是 | 同上 | 与第2030行重复（同模组） | 高 | 建议删除该行（重复） |
| 22 | Mo' Bends | 生物（动画增强） | 未分类 | MIT（TSV 批量；Modrinth mobends） | 是 | 停更（稳定） | 与动画类资源包可能有视觉叠加 | 低 | 收录，归 生物 |
| 23 | Moar Tinkers | 科技（匠魂附属） | 工具武器 | All Rights Reserved（Modrinth "Moar TCon"，TSV 亦匹配 Moar TCon；即包内所指） | 是（Moar TCon 有 1.12.2 版） | 停更 | 需 Tinkers Construct；与其他 TCon 材料扩展配方可能重叠 | 中 | 收录，风险标注：ARR |
| 24 | Mob Dismemberment | 生物（战斗肢解特效） | 魔法 | 未知（iChun 系模组，GitHub 未定位仓库，CurseForge 通常 ARR） | 是（iChun 发布 1.12.2 版，CurseForge 独有） | 停更 | 无（渲染特效类） | 中 | 收录，风险标注：许可未确认/疑似 ARR |
| 25 | Mob Grinding Utils | 生物 | 生物 | All Rights Reserved（TSV 批量；Vadis365） | 是 | 停更（0.3.13 稳定） | 与第2048行 "MobGrindingUtils-0.3.13" 重复 | 中 | 收录，去重（合并第2048行）；风险标注：ARR |
| 26 | Mob Spawner Control | 生物（刷怪控制） | 生物 | 未知（mcmod 类3069 刷怪箱控制与修改；GitHub Luki20091/MobSpawnerControl 无 LICENSE。TSV/Modrinth 匹配到的 In Control!（MIT）为误配不可信，且 In Control! 已在包内第1577行独立存在） | 待确认（mcmod 无文件列表，疑似 1.7.10 时代模组） | 未知 | 与包内 In Control!（1577行）刷怪控制功能重复 | 高 | 建议排除，或核实来源（CurseForge 项目与 1.12.2 文件）后再收录 |
| 27 | Mob Stages | 辅助优化（Game Stages 附属） | 生物 | LGPL-2.1-only（TSV 批量；Modrinth mob-stages） | 是（Modrinth 1.12.2 版） | 停更（稳定） | 需 Game Stages（包内有） | 低 | 收录 |
| 28 | Mob Sunscreen | 生物 | 生物 | MIT（TSV 批量；Modrinth mob-sunscreen，219 万下载） | 是 | 停更（稳定） | 无 | 低 | 收录 |
| 29 | MobGrindingUtils-0.3.13 | 生物 | 生物 | 同第25行（ARR） | 是 | 同上 | 与第2044行重复（同模组文件条目） | 中 | 建议删除该行（重复） |
| 30 | Mod Name Tooltip | 辅助优化 | 辅助优化 | MIT（GitHub mezz/ModNameTooltip；mcmod modnametooltip_1.12.2-1.10.1.jar 与包内文件一致） | 是 | 活跃（作者持续更新多版本） | 无 | 低 | 收录 |
| 31 | ModTweaker | 辅助优化（魔改） | 辅助优化 | MIT（GitHub jaredlll08/ModTweaker） | 是 | 停更（1.12.2 版稳定） | 与第2095行 MoreTweaker 同为 CraftTweaker 扩展，部分重叠可并存；需 MTLib | 低 | 收录 |
| 32 | Modern Warfare Cubed | 工具武器（枪械） | 装饰 | Apache-2.0（TSV 批量） | 是（MWC 即 1.12.2 项目） | 社区维护 | 无 | 低 | 收录，分类改 工具武器 |
| 33 | Modpack Configuration Checker | 辅助优化 | 辅助优化 | Apache-2.0（TSV 批量） | 是 | 停更（稳定） | 无 | 低 | 收录 |
| 34 | Modular Diversity | 科技（模块化机械附属） | 未分类 | 未知（CurseForge 独有，GitHub 未定位） | 是（mcmod 收录，MM 1.12.2 附属） | 停更 | 与第2066行 "Modular Diversity-1.9" 重复；依赖 Modular Machinery（包内有），与 Modular Magic 互补；与 MMCE 兼容性需验证 | 中 | 收录，去重（合并第2066行）；风险标注：许可未知 |
| 35 | Modular Diversity-1.9 | 科技（模块化机械附属） | 未分类 | 同上 | 是 | 同上 | 与第2065行重复（同模组版本条目） | 中 | 建议删除该行（重复） |
| 36 | Modular Machinery | 科技 | 未分类 | GPL-3.0（GitHub HellFirePvP/ModularMachinery；包内 modularmachinery 文件条目对应 ModularMachinery: Community Edition 亦 GPL-3.0。注意 TSV 匹配 "GuGu Utils" MIT 为误配不可信） | 是 | 维护中（CE 版活跃） | 与 ModularUI 配套（前置）；Diversity/Magic 附属按所装版本（原版/CE）验证兼容 | 低-中 | 收录，归 科技 |
| 37 | Modular Magic | 魔法（模块化机械魔法附属） | 未分类 | LGPL-2.1（GitHub NullaDev/ModularMagic） | 是（mcmod 收录，1.12.2 时代） | 停更 | 依赖 Modular Machinery（包内有）；无重复 | 低 | 收录，归 魔法 |
| 38 | Modular Routers | 科技 | 科技 | 未知（GitHub desht/ModularRouters 无 LICENSE 文件） | 是（CurseForge 1.12.2 版；Modrinth 仅 1.16.5+） | 停更（1.12.2 版稳定） | 无（物流类，与 AE2/管道系互补） | 中 | 收录，风险标注：许可未标注 |
| 39 | ModularUI | 前置库 | 未分类 | LGPL-3.0-only（TSV 批量，标题吻合；CleanroomMC/ModularUI） | 是 | 维护中（Cleanroom 系） | 作 Modular Machinery CE 等 Cleanroom 系模组前置 | 低 | 收录，归 前置库 |
| 40 | MooFluids | 生物（流体牛） | 未分类 | 未知（原 1.12.2 版 CurseForge 独有；Modrinth 无 1.12.2 项目） | 待确认（mcmod 收录 MooFluids Modern / Moo Fluids，均未见 1.12.2 文件列表） | 未知 | 无 | 高 | 建议核实 CurseForge 项目名与 1.12.2 文件后再收录 |
| 41 | More Bees | 农业（林业蜜蜂附属） | 世界生成 | 未知（GitHub Tencao/MoreBees 无 LICENSE，以 CurseForge 页为准） | 是（mcmod morebees-1.12.2-2.0.1.jar） | 停更（稳定） | 依赖 Forestry（包内有）；与 Gendustry 等蜜蜂附属可并存 | 中 | 收录，风险标注：许可未知；分类改 农业 |
| 42 | More Bows: Restrung! | 工具武器 | 工具武器 | CC0-1.0（TSV 批量；Modrinth more-bows-restrung，70 万下载） | 是 | 停更（成熟） | 无 | 低 | 收录 |
| 43 | More Default Options | 辅助优化（默认选项） | 世界生成 | 未知（mcmod MoreDefaultOptions；GitHub 未定位） | 待确认（mcmod 无文件列表） | 未知 | 与包内 Default Options（blay09）功能重复 | 高 | 建议排除或核实，与 Default Options 二选一 |
| 44 | More Electric Tools | 科技（IC2 附属） | 世界生成 | 自定义（LR8Soft 中文授权：非商业免费，禁止派生/再分发修改版，商业需授权） | 是（mcmod 13 个 1.12.2 文件，v1.662） | 停更（稳定） | 依赖 IC2（包内有 Industrial Craft）；无冲突 | 中 | 收录，风险标注：非标准许可，分发注意条款；分类改 科技 |
| 45 | More Libs | 前置库（MorePlates 依赖） | 世界生成 | 未知（与 MorePlates 同作者，CurseForge 独有；mcmod 标注其为更多金属板前置） | 是（伴随 MorePlates 1.12.2 版） | 停更 | 与第2094行 More Plates 配套，非重复 | 中 | 收录，风险标注：许可未知；分类改 前置库 |
| 46 | More Loot Tables | 辅助优化（战利品扩展） | 世界生成 | LGPL-3.0-only（TSV 批量，标题吻合；Modrinth more-loot-tables） | 是 | 停更 | 与 LootTweaker 等可并存 | 低 | 收录，分类改 辅助优化 |
| 47 | More Overlays | 辅助优化（区块/视野叠加） | 世界生成 | MIT（GitHub feldim2425/MoreOverlays） | 是（包内 moreoverlays-1.15.1-mc1.12.2 文件名佐证） | 停更（稳定） | 与第3556行 "moreoverlays-1.15.1-mc1.12.2" 重复 | 低 | 收录，去重（合并第3556行）；分类改 辅助优化 |
| 48 | More Plates | 科技（工业材料） | 世界生成 | 未知（TSV 匹配 "More Beautiful Plates" 为误配不可信） | 是（1.12.2 时代常用，mcmod 收录） | 停更（mcmod 注明已停更，有 Revamped 分支） | 需 More Libs（包内有）；与匠魂/IC2 材料体系互补 | 中 | 收录，风险标注：许可未知；分类改 科技 |
| 49 | MoreTweaker | 辅助优化（魔改） | 世界生成 | 未知（CurseForge 独有） | 是（mcmod 收录，支持 Bewitchment/BedrockCraft 等 1.12.2 模组） | 停更 | 与 ModTweaker 功能部分重叠（均为 CraftTweaker 支持扩展），可并存 | 中 | 收录，风险标注：许可未知；分类改 辅助优化 |

## 统计

- 本批共 **49 条**；其中 **低风险收录 28 条**、**风险标注收录 14 条**、**建议排除或核实 3 条**（Mob Spawner Control、MooFluids、More Default Options）、**建议删除的重复条目 4 行**（MikesModsLib-1.0.2、MmmMmmMmmMmm (Target Dummy)、MobGrindingUtils-0.3.13、Modular Diversity-1.9）。
- 另需跨行合并去重：Mekanism Generators（与 1981 行 MCE:Generators）、More Overlays（与 3556 行 moreoverlays 文件条目）。
- 明显分类错误 13 处（MicdoodleCore、Midnighttigger's、Mob Dismemberment、Modern Warfare Cubed、More Bees、More Default Options、More Electric Tools、More Libs、More Loot Tables、More Overlays、More Plates、MoreTweaker、Mob Stages 等误置）；另有约 18 条"未分类"待归入 前置库/辅助优化/科技/魔法/资源包 等（详见上表）。
- 关键冲突：Mekanism-CE-Unofficial 与 Mekanism Community Edition 同源分支必须二选一；Mob Spawner Control 与 In Control!（1577 行）功能重复；More Default Options 与 Default Options 功能重复。
- 许可证为"未知/待确认"共 12 条（Mekanism-CE-Unofficial、Mob Dismemberment、Mob Spawner Control、MooFluids、More Bees、More Default Options、More Libs、More Plates、MoreTweaker、Modular Diversity、Modular Routers、Minecraft Forge 已判定 LGPL-2.1 除外）；ARR/禁再分发 6 条（Midnighttigger's、MineTraps、Moar Tinkers、Mob Grinding Utils、MmmMmmMmmMmm 自定义许可、More Electric Tools 自定义许可）。
