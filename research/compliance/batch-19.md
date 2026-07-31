# Batch 19 模组合规核查报告（modlist.md 2362-2495 行，共 50 条）

核查日期：2026-07-31
数据来源：Modrinth 批量结果（TSV）、GitHub 仓库 LICENSE（gh api + raw）、Modrinth API（项目/版本核实）、mcmod.cn 搜索页 23 次 + 详情页 17 个（间隔 3-4 秒）。
规则：TSV 精确名称匹配直接采用其许可证；NO_HIT/ARR/身份可疑者补查；每模组详情页最多 1 次；未命中即标"未知"，不重试轰炸。

| # | 模组 | 正确分类 | 当前分类 | 许可证 | 1.12.2 | 开发状态 | 冲突/重复 | 风险 | 结论 |
|---|---|---|---|---|---|---|---|---|---|
| 1 | PackagedExCrafting | 科技（AE2 打包附属） | 未分类 | MIT（TSV 精确匹配） | 是（Packaged 系 1.12.2） | 停更 | 需 PackagedAuto + Extended Crafting（包内均有 ✓）；与包内 AE2UEL 为配套关系 | 无 | 收录（分类修正） |
| 2 | Packet Fixer | 辅助优化 | 辅助优化 | 开源（mcmod class/12625 标开源；简介明示"可在整合包中随意添加本模组"；TSV 匹配 MIT） | 是 | 活跃（持续维护） | 无 | 无 | 收录 |
| 3 | Pam's HarvestCraft | 农业 | 农业 | 闭源/ARR（mcmod 标注闭源；作者一贯允许整合包使用，mcmod 收录 129 个整合包在用） | 是 | 1.12.2 停更（新版 PHC2 系列继续） | 与包内 Pam's Weee! Flowers 等食物类模组并存无冲突 | ARR，建议保留作者署名与来源链接 | 收录（闭源提示） |
| 4 | Pam's Weee! Flowers | 农业（装饰花朵） | 农业 | 闭源/ARR（Pam 系列同政策） | 是（1.12.2 在列） | 停更 | 与 #3 为同一作者系列，无冲突 | ARR 同上 | 收录（闭源提示） |
| 5 | Parasites: Reloaded | 生物（寄生生存内容） | 生物 | LicenseRef-All-Rights-Reserved（Modrinth 项目 parasites-reloaded 精确匹配） | 是（仅 1.12.2） | 更新至 2024-07（Modrinth） | 与包内 Scape and Run: Parasites（TSV 早批次条目）同为 1.12.2 寄生生存玩法，疑为重制/续作关系 | ARR + 与 SRP 功能重复 | 风险标注（与 SRP 二选一确认） |
| 6 | Particle Culling | 辅助优化 | 辅助优化 | MIT（TSV 精确匹配；Modrinth 项目仅 1.12.2 Forge） | 是（仅 1.12.2） | 停更 | 无 | 无 | 收录 |
| 7 | Passable Leaves | 辅助优化 | 辅助优化 | MIT（GitHub Team-RTG/Passable-Leaves） | 是（RTG 时代 1.12.2） | 停更（2019 后无推送） | 与包内 RTG 系列同团队出品，无冲突 | 无 | 收录 |
| 8 | Patchouli | 前置库 | 辅助优化 | CC-BY-NC-SA-3.0（TSV 精确匹配，Vazkii） | 是 | 1.12.2 停更 | 与 #10 Patchouli ROFL Edition 同为 1.12.2 指南书库（同 modid），二选一 | NC 条款（非商业） | 收录（分类修正 + 二选一提示） |
| 9 | Patchouli Books | 辅助优化（内容附属） | 辅助优化 | MIT（TSV 精确匹配） | 待核对（TSV 命中项目与 1.12.2 身份未交叉验证） | 未知 | 需 Patchouli | 身份未完全确认 | 风险标注（核对 jar 后收录） |
| 10 | Patchouli ROFL Edition | 前置库 | 辅助优化 | 开源（mcmod class/12144 标开源；Patchouli 1.12.2 分支，继承原许可能引用 CC-BY-NC-SA-3.0） | 是（仅 1.12.2） | 停更（Mets；141 个整合包在用） | 与 #8 Patchouli 功能重复（为修复增强分支），二选一 | NC 条款 | 收录（分类修正 + 二选一提示） |
| 11 | Patchouli-1.0-20 | 前置库 | 辅助优化 | CC-BY-NC-SA-3.0（即 Patchouli 1.12.2 的 jar 版本条目） | 是（1.0-20 即 1.12.2 版） | 同 #8 | 与 #8 Patchouli 完全重复（同一模组） | 无 | 建议删除（重复条目） |
| 12 | Performant | 辅助优化 | 未分类 | 闭源/ARR（mcmod class/2385 标注闭源、停更） | 是（1.12.2-1.16.5） | 停更（someaddons） | 与大量模组存在潜在兼容问题（优化器型，需实测） | 口碑两极：红票19(50%)/黑票19(50%)，72% 认为不稳定 | 风险标注（闭源+口碑；分类修正） |
| 13 | Perspective Mod Redux | 辅助优化 | 未分类 | MIT（TSV 精确匹配） | 是（Lomeli12 1.12.2 版） | 停更 | 无 | 无 | 收录（分类修正） |
| 14 | Phosphor (Forge) | 辅助优化 | 辅助优化 | 开源（1.12.2 版为社区分支：embeddedt 磷分支/燐 Hesperus 系，GPL-3.0 承继；官方 Phosphor 无 1.12.2——Modrinth 验证 count=0） | 是（分支版；mcmod class/9046 仅 1.12.2） | 停更（作者建议用 Alfheim 替代） | 与包内 Alfheim Lighting Engine（MIT，同作者推荐替代）功能重复（同为 1.12.2 光照引擎优化），二选一 | 无 | 收录（二选一提示） |
| 15 | Pick Up Notifier [Forge & Fabric] | 辅助优化 | 辅助优化 | MPL-2.0（Fuzs 现代版项目） | 否（Modrinth 项目仅 1.16+/26.x；Fuzs 复古版 vpun 亦无 1.12.2） | 活跃（现代版） | 无 | 版本不符（1.12.2 无此模组版本） | 建议排除（或核对 jar 来源） |
| 16 | Ping | 辅助优化 | 未分类 | MIT（判为 Better Ping Display，Qendolin；Modrinth 有 1.12.2-1.0 Forge 版；mcmod class/2950 开源、活跃） | 是（BPD 1.12.2-1.0） | 活跃 | 无 | 身份歧义：1.12.2 另有 Girafi 的 Ping（CF 经典，ARR，未入 mcmod），需核对包内 jar | 收录（核对 jar 后定；分类修正） |
| 17 | Pixelmon 🔒 | 内容（宝可梦） | 未分类 | 闭源（宝可梦 IP 版权；官方渠道限制整合包再分发，CF 页曾遭 DMCA） | 是（1.12.2） | 活跃（Reforged 现代版） | 无 | 版权再分发风险高 | 建议排除（modlist 已标 🔒，结论一致） |
| 18 | Placebo | 前置库 | 前置库 | MIT（GitHub Shadows-of-Fire/Placebo） | 是（1.12.2 版存在） | 维护中 | 前置库（Apotheosis 等依赖） | 无 | 收录（分类正确） |
| 19 | PlaneFix | 辅助优化 | 辅助优化 | MIT（GitHub Shadows-of-Fire/PlaneFix） | 是 | 停更（2019） | 修复 AE2 精准破坏面板等 2 个 bug；与包内 AE2UEL 的兼容需实测（patch 型模组） | 无 | 收录 |
| 20 | Planet Progression | 科技（星系附属） | 科技 | 开源（mcmod class/1430 标注；GitHub MJRLegends/Planet-Progression 无 LICENSE 文件，保守按 ARR 提示） | 是（0.4.8，2022-09） | 停更（MJRLegends） | 需星系（包内 Galacticraft Legacy ✓）；与星空星图存在按 M 键崩溃兼容问题（config 可修复） | 许可存疑（仓库无 LICENSE） | 收录（许可提示） |
| 21 | PlayersDropHeads | 辅助优化 | 辅助优化 | LGPL-2.1（GitHub josephcsible/PlayersDropHeads） | 是 | 停更（2018） | 无 | 无 | 收录 |
| 22 | Plethora Peripherals | 科技（OpenComputers 外设） | 未分类 | MIT（GitHub SquidDev-CC/Plethora） | 是（1.12.2 版） | 停更（SquidDev 弃坑） | 需 OpenComputers（包内 ✓） | 无 | 收录（分类修正） |
| 23 | Plummet | 魔改（游戏阶段限制飞行） | 未分类 | 闭源/ARR（mcmod class/6173 标注闭源；Darkhax；TSV ARR 一致） | 是（仅 1.12.2） | 停更 | 需 Game Stages（包内 ✓） | 闭源 | 收录（分类修正 + 闭源提示） |
| 24 | PlusTiC | 工具武器（匠魂附属） | 未分类 | 未知（官方 CF 页与 GitHub 仓库均已删除：作者 Landmaster 在 8.0.0.1 版植入恶意踢人代码遭 CF 封禁；包内 plustic-7.1.6.1 为恶意版本之前的版本） | 是（7.1.6.1） | 停更（官方渠道消失） | 与包内 xXx_MoreToolMats_xXx（非官方 1.12.2 分支，同 MODID 可直接替代）冲突，二选一 | 作者信誉崩塌 + 许可不明 | 风险标注（建议改用非官方分支或移除） |
| 25 | Pointer | 未知 | 未分类 | 未知（mcmod 无命中、GitHub 无命中；TSV 命中 "Point Crosshair" ARR 疑为无关项目） | 未知 | 未知 | 未知 | 身份未确认 | 建议核对（先确认是哪个模组） |
| 26 | PolyBlur | 辅助优化 | 未分类 | GPL-3.0 with Minecraft Linking Exception（TSV 精确匹配，Polyfrost） | 是（Polyfrost 1.12.2 Forge 版，Modrinth 验证） | 活跃 | 无 | 无 | 收录（分类修正） |
| 27 | PolyPatcher | 辅助优化 | 辅助优化 | CC-BY-NC-SA-4.0（TSV 精确匹配，Polyfrost） | 是（1.12.2 + 1.8.9 Forge，Modrinth 验证） | 活跃 | 无 | NC 条款 | 收录 |
| 28 | PolySprint | 辅助优化 | 未分类 | AGPL-3.0（TSV 精确匹配，Polyfrost） | 否（Modrinth 仅 1.21+/26.x Fabric；原版为 1.8.9） | 活跃（现代版） | 无 | 版本不符（1.12.2 无此模组） | 建议排除 |
| 29 | PolyTime | 辅助优化 | 未分类 | GPL-3.0 with Minecraft Linking Exception（TSV 精确匹配，Polyfrost） | 否（无 1.12.2，同上） | 活跃（现代版） | 无 | 版本不符 | 建议排除 |
| 30 | PolyWeather | 辅助优化 | 辅助优化 | GPL-3.0 with Minecraft Linking Exception（TSV 精确匹配，Polyfrost） | 否（无 1.12.2） | 活跃（现代版） | 无 | 版本不符 | 建议排除 |
| 31 | Portable Drill for Immersive Engineering | 科技（IE 附属） | 科技 | 未知（mcmod 无命中、GitHub 无命中） | 未知 | 未知 | 需 Immersive Engineering（包内 ✓） | 身份未确认 | 建议核对（确认 jar 与来源） |
| 32 | Possibly (Actually) Baubles | 辅助优化（饰品集成） | 科技 | MIT（GitHub Invadermonky/PossiblyBaubles；mcmod class/27894 开源） | 是（仅 1.12.2） | 维护中（mcmod 收录于 2026 年） | 需 Actually Additions + Baubles（包内 ✓）；Mixin 注入式附属 | 无 | 收录（分类修正） |
| 33 | Potion Core | 内容（药水扩展） | 世界生成 | MIT（GitHub Tmtravlr/PotionCore；mcmod class/960 开源） | 是（1.7.10-1.12.2） | 停更 | 与包内 Potion Descriptions（仅显示）无冲突；已知 bug：复活 Buff + 抗性提升 V 时反复 /kill 可能血条消失 | 无 | 收录（分类修正） |
| 34 | Potion Descriptions | 辅助优化 | 未分类 | GPL-3.0-or-later（TSV 精确匹配；mcmod class/8368 开源，Azmalent） | 是（1.12.2 在列） | 停更 | 与 #35 完全重复 | 无 | 收录（分类修正 + 去重） |
| 35 | Potion Descriptions (Forge) | 辅助优化 | 未分类 | GPL-3.0-or-later（同 #34，同一模组的 CF 命名变体） | 是 | 同 #34 | 与 #34 完全重复（同一模组） | 无 | 建议删除（重复条目） |
| 36 | Precision Mining | 辅助优化 | 未分类 | LGPL-3.0-only（Modrinth precision-mining；mcmod class/22234 开源，PORTB） | 是（1.12.2-1.20.1） | 半弃坑 | 无 | 无 | 收录（分类修正） |
| 37 | Pretty Beaches | 世界生成（地形） | 未分类 | ARR（GitHub TwelveIterations/PrettyBeaches LICENSE 原文：All Rights Reserved + 明确整合包授权条款 mods.twelveiterations.com/permissions；TSV 亦为 ARR） | 是 | 1.12.2 版停更（仓库 2026 仍活跃） | 无 | 需遵守作者整合包授权条款（非商业、署名） | 收录（分类修正 + 授权条款提示） |
| 38 | Progressive Bosses | 生物 | 生物 | MIT（GitHub Insane96/ProgressiveBosses） | 是（1.5.4-mc1.12.x 与包内 jar 吻合） | 维护中（2026-07 仍有推送） | 与 #39 重复条目 | 无 | 收录（与 #39 去重） |
| 39 | ProgressiveBosses-1.5.4-mc1.12.x | 生物 | 生物 | MIT | 是（同一 jar） | 同 #38 | 与 #38 完全重复（同一模组） | 无 | 建议删除（重复条目） |
| 40 | Project Intelligence | 前置库（指南/知识系统） | 未分类 | CoFH "Don't Be a Jerk"（GitHub Draconic-Inc/ProjectIntelligence LICENSE 原文：代码 ARR + 资产 CC-BY-NC-SA-4.0；HellFirePvP 原作） | 是（1.12.2） | 停更 | 与 #46 重复条目；供 ProjectE 等联动（包内 ProjectE ✓） | 许可与包内 CoFH 系（Brandons Core 等）同类，可接受 | 收录（分类修正 + 去重） |
| 41 | Project Red - Core | 科技（红石） | 世界生成 | MIT（GitHub MrTJP/ProjectRed） | 是 | 停更 | 需 MrTJPCore（包内 ✓）；与 #47 ProjectRed 为同一系列，关系待核对 | 无 | 收录（分类修正） |
| 42 | Project Red - Integration | 科技（红石） | 未分类 | MIT（同 #41 系列） | 是 | 停更 | 与 #41/#47 同系列模块，配套使用 | 无 | 收录（分类修正） |
| 43 | Project: Vibrant Journeys | 世界生成（环境） | 维度探索 | CC-BY-NC-SA-4.0（TSV 精确匹配，OrderlyChaos） | 是（1.12.2 版） | 1.12.2 停更 | 与地形/植被类世界生成模组（含包内 RTG 系）兼容性需实测 | NC 条款 | 收录（分类修正） |
| 44 | ProjectE | 魔法（等价交换） | 魔法 | MIT（GitHub sinkillerj/ProjectE） | 是 | 维护中 | 与 #45 ProjectEX 为配套关系（ProjectEX 需 ProjectE 前置）；与包内 Expanded Equivalence 等附属兼容 | 无 | 收录 |
| 45 | ProjectEX-1.2.0.39 | 魔法（ProjectE 附属） | 魔法 | LGPL-3.0（GitHub FTBTeam/FTB-ProjectEX；mcmod class/1481 开源，FTB 接手） | 是（1.2.0.39 即 1.12.2 版） | 停更（FTB 接管后存在 [WIP] 未完成物品） | 需 ProjectE ✓ | [WIP] 物品右击可能崩溃 | 收录（提示 [WIP] 物品慎用） |
| 46 | ProjectIntelligence | 前置库 | 未分类 | 同 #40（DBaJ 许可） | 是 | 同 #40 | 与 #40 完全重复（同一模组） | 无 | 建议删除（重复条目） |
| 47 | ProjectRed | 科技（红石） | 未分类 | MIT（同 #41） | 是 | 停更 | 与 #41 Project Red - Core 为同一系列（若指全模块整合包则核心模块重复），核对去重 | 无 | 建议核对（与 #41 的关系） |
| 48 | Proportional Destruction Particles | 辅助优化 | 辅助优化 | Unlicense（GitHub Phylogeny/ProportionalDestructionParticles） | 是（1.12.2） | 停更（2019） | 无 | 无 | 收录 |
| 49 | Psi | 魔法 | 魔法 | Psi License（Vazkii 自定义许可，允许整合包使用） | 是 | 1.12.2 停更 | 包内 Psio 等多个 Psi 附属的前置（包内 ✓） | NC 系条款 | 收录 |
| 50 | Psio | 魔法（Psi 附属） | 魔法 | 开源（mcmod class/5752 标注；Phanta；GitHub 仓库名未确认、具体许可未核实） | 是（仅 1.12.2） | 停更 | 需 Psi ✓（改动 Psi 能量机制，与包内其他 Psi 附属同装需实测） | 无 | 收录 |

## 统计

- 共核查 50 条。
- 1.12.2 支持：确认 43 条；**否 4 条**（#15 Pick Up Notifier、#28 PolySprint、#29 PolyTime、#30 PolyWeather——均无 1.12.2 版本）；未知 3 条（#25 Pointer、#31 Portable Drill、#9 Patchouli Books 待核），另有 #16 Ping 身份歧义（BPD/Girafi 版 jar 待核）。
- 许可证：开源 35 条（MIT 系 16、LGPL 系 5、GPL 系 5 其中 4 条带 MC 链接例外、AGPL-3.0 1、LGPL-3.0 系 3、CC-BY-NC-SA 3、Unlicense 1、开源未标具体协议 1）；闭源/ARR 8 条（#3/#4 Pam's 系、#12 Performant、#17 Pixelmon、#20 许可存疑、#23 Plummet、#37 Pretty Beaches 含明确整合包授权条款、#5 Parasites: Reloaded）；自定义 2 条（#40/#46 DBaJ、#49 Psi License）；未知 3 条（#24 PlusTiC——官方渠道删除、#25、#31）。
- **版本不符 4+1 条**：Polyfrost 系的 PolySprint/PolyTime/PolyWeather 为 1.8.9 时代模组（现仅 1.21+/26.x），1.12.2 无版本；Pick Up Notifier 为 1.16+ 模组。同批 PolyBlur、PolyPatcher 则有 1.12.2 Forge 版（Modrinth 逐版本验证）。
- 分类错误约 27 处（本批"未分类"泛滥），主要为：前置库类（Patchouli 系、Project Intelligence 系）、辅助优化类（Performant、Ping、Poly 系、药水描述等）、科技红石类（Project Red 系）、世界生成类（Pretty Beaches、Vibrant Journeys）被误标。
- 重复条目 4 组（建议删除：#11 Patchouli-1.0-20、#35 Potion Descriptions (Forge)、#39 ProgressiveBosses-1.5.4-mc1.12.x、#46 ProjectIntelligence；各与其同名条目为同一模组/jar），另有 #47 ProjectRed 与 #41 Project Red - Core 关系待核对。
- 冲突/二选一 4 组：① Patchouli（#8）与 Patchouli ROFL Edition（#10）——同为 1.12.2 指南书库；② Phosphor (Forge)（#14）与包内 Alfheim Lighting Engine——同为 1.12.2 光照优化，作者自荐 Alfheim；③ PlusTiC（#24）与包内 xXx_MoreToolMats_xXx——同 MODID 非官方分支；④ Parasites: Reloaded（#5）与包内 Scape and Run: Parasites——玩法重复。
- 结论：收录 34 条、风险标注 4 条（#5、#9、#12、#24）、建议删除 4 条（#11、#35、#39、#46）、建议排除 5 条（#15、#17 Pixelmon 🔒、#28、#29、#30）、建议核对 3 条（#25、#31、#47）。
- 与星系 Galacticraft：#20 Planet Progression 为星系官方生态附属（需星系，兼容 ✓，与包内 Galacticraft Legacy 配套）。
- 与 AE2UEL：#1 PackagedExCrafting 为 AE2 打包系附属（配套 ✓）；#19 PlaneFix 为 AE2 类补丁，与 AE2UEL 并存需实测。
- 暮色/神秘时代：本批无直接交互模组；#33 Potion Core 药水与神秘时代药水无冲突。
- 特别提示：#24 PlusTiC 作者恶意代码事件（8.0.0.1 植入踢人代码、CF 封禁、官方渠道全删）为整批最高风险项——包内 7.1.6.1 为事发前版本但作者信誉已不可追认，且与包内 xXx_MoreToolMats_xXx 同 MODID 不可并存，务必二选一；#17 Pixelmon 版权再分发风险与 modlist 的 🔒 标记一致，建议维持排除。#37 Pretty Beaches 为 ARR 但作者在 mods.twelveiterations.com/permissions 提供整合包授权条款，收录前确认满足条款即可。
