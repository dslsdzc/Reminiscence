# Batch 20 模组合规核查报告（modlist.md 2499-2638 行，共 48 条）

核查日期：2026-07-31
数据来源：Modrinth 批量结果（TSV）、GitHub 仓库/LICENSE（gh api + raw）、Modrinth API（项目/版本核实）、CurseForge 页面（WebFetch）、mcmod.cn 搜索页 14 次 + 详情页 18 个（间隔 3 秒以上）。
规则：TSV 精确名称匹配直接采用其许可证；NO_HIT/ARR/标题明显误配者补查；每模组详情页最多 1 次；未命中即标"未知"，不重试轰炸。
备注：本批 TSV 出现多处"标题误配"（如 RGB Chat→ChatColors、ReAuth→rAuth、Redstone Arsenal→BlueBlocksArsenal、Random Things→Quantum Things 等），均以补查结果为准。

| # | 模组 | 正确分类 | 当前分类 | 许可证 | 1.12.2 | 开发状态 | 冲突/重复 | 风险 | 结论 |
|---|---|---|---|---|---|---|---|---|---|
| 1 | QBitHop | 科技（漏斗替代物流，BitHop 的 Cleanroom 分叉） | 未分类 | GPL-3.0（GitHub CleanroomMC/QBitHop；承继 BitHop GPL） | 是（Cleanroom 即 1.12.2 平台） | 活跃（2025-12 推送） | 无冲突；依赖 ModularUI（包内 ✓）；修复了 InventoryBogoSorter（包内 ✓）的格子复制 void 问题 | 无 | 收录（分类修正） |
| 2 | QMD | 科技（核电工艺附属） | 未分类 | 开源（mcmod class/2561 标活跃开源） | 是（仅 1.12.2） | 活跃（v1.5，2026-04） | 需 NuclearCraft: Overhauled + NCO Java Legacy Lib（包内均 ✓） | 无 | 收录（分类修正） |
| 3 | Quantum Things | 科技 | 科技 | MIT（TSV 精确匹配） | 是（仅 1.12.2） | 活跃（mcmod 收录） | 与 #19 Random Things 功能重复（Quantum Things 即 Random Things 的 1.12.2 续作，mcmod 明示），二选一 | 无 | 收录（二选一提示） |
| 4 | QuantumStorage | 科技 | 科技 | LGPL-3.0（GitHub Gigabit101/QuantumStorage；mcmod 标开源） | 是（1.12.2 在列） | 停更 | 无（存储类，与 AE2UEL 并存可选） | 无 | 收录 |
| 5 | Quark | 功能增强（原版改良） | 世界生成 | CC-BY-NC-SA-3.0（TSV 精确匹配，Vazkii） | 是（1.12.2 在列） | 1.12.2 停更 | 与 #7 重复条目；与 #8 RotN 分叉同 modid，二选一 | NC 条款 | 收录（分类修正 + 去重/二选一提示） |
| 6 | Quark Oddities | 功能增强（Quark 附属） | 世界生成 | CC-BY-NC-SA-3.0（TSV 精确匹配） | 是 | 1.12.2 停更 | 需 Quark（包内 ✓） | NC 条款 | 收录（分类修正） |
| 7 | Quark-r1.6-178 | 功能增强 | 世界生成 | CC-BY-NC-SA-3.0（即官方 Quark 1.12.2 jar，r1.6-178） | 是（r1.6-178 即 1.12.2 最终版） | 同 #5 | 与 #5 Quark 完全重复（同一模组的版本条目） | 无 | 建议删除（重复条目） |
| 8 | Quark: RotN Edition | 功能增强（Quark 1.12.2 分叉） | 世界生成 | 开源（mcmod class/7869 标活跃开源，Quark 分叉承继 CC-BY-NC-SA-3.0） | 是（1.12.2/1.12.1/1.12） | 活跃 | 与 #5/#7 官方 Quark 功能重复（同 modid），二选一 | 无 | 收录（二选一提示） |
| 9 | Quick Leaf Decay | 辅助优化 | 辅助优化 | MIT（GitHub Lumien231/QuickLeafDecay） | 是 | 停更（2021 后无推送） | 与包内 Fast Leaf Decay（modlist 1237 行）功能重复，二选一 | 无 | 收录（二选一提示） |
| 10 | RFTools | 科技 | 科技 | MIT（TSV 精确匹配） | 是 | 1.12.2 停更（McJty） | 无 | 无 | 收录 |
| 11 | RFTools Control | 科技 | 科技 | MIT（TSV 精确匹配） | 是 | 停更 | 需 RFTools + RFTools Utility（包内 ✓） | 无 | 收录 |
| 12 | RFTools Dimension Tweaker | 科技（RFTools Dimensions 附属） | 科技 | MIT（CurseForge 项目页明示 MIT；blitzprog_io） | 是（仅 1.12.2） | 活跃（2025-05 发布 1.1b） | 需 RFTools Dimensions（包内 ✓）；默认无配方，需 ContentTweaker 配置（包内 ✓） | 无 | 收录 |
| 13 | RFTools Dimensions | 科技 | 科技 | MIT（TSV 精确匹配） | 是 | 停更 | 与包内星系 Galacticraft（各自维度系统，无冲突）；与暮色/神秘时代维度并存无冲突 | 无 | 收录 |
| 14 | RFTools Power | 科技 | 科技 | MIT（TSV 精确匹配） | 是 | 停更 | 需 RFTools（包内 ✓） | 无 | 收录 |
| 15 | RGB Chat | 辅助优化 | 辅助优化 | 开源（mcmod class/8149 标停更开源；TSV 匹配 "ChatColors" 为误配） | 是（另有 RGB Chat Vintage 1.12.2 分支维护版） | 停更（有分支维护版） | 无 | 无 | 收录 |
| 16 | RLMixins | 前置库（Mixin 加载/模组修复库） | 未分类 | LicenseRef-All-Rights-Reserved（Modrinth rlmixins 项目）；GitHub FermiumModding 为 NOASSERTION 自定义 | 是（Modrinth 仅 1.12.2） | 活跃（2026-05 更新） | RLCraft 生态工具/修复库，1.12.2 广泛使用（Modrinth 6135 下载） | ARR，再分发需确认 | 风险标注（ARR + 分类修正） |
| 17 | RLTweaker2 | 辅助优化 | 辅助优化 | 开源（mcmod class/8793 标活跃开源） | 是（仅 1.12.2） | 活跃 | 与 RLMixins 同属 RLCraft 系工具，可并存 | 无 | 收录 |
| 18 | Random PSIdeas | 魔法（Psi 附属） | 魔法 | 开源（mcmod class/1453 标停更开源；GitHub Kamefrede/rpsideas 无 LICENSE 文件） | 是（1.12.2/1.12.1/1.12） | 停更 | 需 Psi（包内 ✓） | 仓库无 LICENSE，许可提示 | 收录（许可提示） |
| 19 | Random Things | 功能（杂项内容） | 未分类 | 开源（mcmod class/940 标停更开源；GitHub Lumien231/Random-Things 无 LICENSE 文件） | 是（包内 4.2.7.3 为官方 1.12.2 版） | 停更 | 与 #3 Quantum Things（其 1.12.2 续作）功能重复，二选一；与 #23 重复条目 | 仓库无 LICENSE，许可提示 | 收录（二选一 + 许可提示） |
| 20 | RandomComplement | 功能（杂项补充） | 未分类 | 开源（mcmod class/18297 标活跃开源） | 是（仅 1.12.2） | 活跃 | 无（与 Random Things 无隶属关系） | 无 | 收录（分类修正） |
| 21 | RandomPatches | 辅助优化 | 辅助优化 | MIT（GitHub TheRandomLabs/RandomPatches） | 是 | 停更（2021） | 与 #22 重复条目；与包内 VanillaFix 等修复类模组功能有少量重叠（共存常见） | 无 | 收录（去重） |
| 22 | RandomPatches (Forge) | 辅助优化 | 辅助优化 | MIT（同一模组的 Forge 命名变体） | 是 | 同 #21 | 与 #21 完全重复（同一模组） | 无 | 建议删除（重复条目） |
| 23 | RandomThings-MC1.12.2-4.2.7.3 | 功能 | 未分类 | 同 #19（官方 4.2.7.3 jar） | 是（同一 jar） | 同 #19 | 与 #19 Random Things 完全重复 | 无 | 建议删除（重复条目） |
| 24 | RandomTweaker | 魔改（Random Things 附属，CraftTweaker 系） | 辅助优化 | 开源（mcmod class/4416 标活跃开源） | 是（仅 1.12.2） | 活跃 | 需前置（疑为 Random Things，包内 ✓，前置依赖需 jar 核对） | 无 | 收录（分类修正 + 前置核对） |
| 25 | RandomTweaks | 辅助优化 | 辅助优化 | MIT（GitHub TheRandomLabs/RandomTweaks；mcmod class/3215 标停更开源） | 是（1.12.2 在列） | 停更 | 无 | 无 | 收录 |
| 26 | Rapid Optimization | 辅助优化（性能优化） | 前置库 | MIT（TSV 精确匹配；Modrinth SnowFox114） | 是（1.12.2 在列） | 活跃 | 无 | 无 | 收录（分类修正） |
| 27 | Rare Ice | 世界生成 | 未分类 | CC-BY-NC-4.0（Modrinth LicenseRef-Custom，LICENSE 文件即 CC-BY-NC-4.0，shedaniel） | 是（1.12.2 在列） | 活跃（2025-11 更新） | 无 | NC 条款 | 收录（分类修正 + NC 提示） |
| 28 | Rather Enough Immersive Multiblocks | 科技（IE 附属） | 科技 | MPL-2.0（GitHub BananaFructa/RatherEnoughImmersiveMultiblocks） | 是（build.gradle 明确 1.12 映射） | 活跃（2026-06 推送） | 需 Immersive Engineering（包内 ✓） | mcmod 无条目，口碑未知 | 收录（口碑待实测） |
| 29 | Rats: RatN Edition | 生物（Rats 1.12.2 分叉） | 未分类 | 许可未明（mcmod 无开源/闭源标注；原 Rats 许可不明） | 是（仅 1.12.2） | 停更 | 需基础 Rats 作前置，包内未见 Rats 条目（grep 仅此一条）——前置缺失 | 许可未明 + 缺前置 | 风险标注（补 Rats 前置 + 许可确认） |
| 30 | Raw Input | 辅助优化 | 辅助优化 | GPL-3.0-only（TSV 精确匹配） | 是 | 停更 | 无 | 无 | 收录 |
| 31 | ReAuth | 辅助优化（登录/离线认证） | 未分类 | 许可未明（GitHub TechnicianLP/ReAuth 无 LICENSE 文件，README 仅称源码可见；TSV 匹配 "rAuth" 为误配） | 是（1.12 分支，README 明确 1.12.x） | 停更（2023-05 最后推送） | 无 | 许可未明 + 红票 80%/黑票 1 | 收录（许可提示 + 分类修正） |
| 32 | Reach Fix | 辅助优化 | 辅助优化 | MIT（TSV 精确匹配） | 是 | 停更 | 与包内 AttributeFix（早批次，触及/属性修复）功能部分重叠，可共存 | 无 | 收录 |
| 33 | Real First Person | 辅助优化（视角） | 未分类 | 开源（mcmod class/500 标停更开源） | 是（1.12.2 在列） | 停更 | 无 | 无 | 收录（分类修正） |
| 34 | Realistic Terrain Generation Unofficial | 世界生成（地形） | 世界生成 | 开源（mcmod class/9412 标停更开源） | 是（仅 1.12.2） | 停更（15 个整合包在用） | 与包内 OTG/其他地形模组并存需实测；与包内 Biomes O' Plenty 兼容性需实测 | 无 | 收录 |
| 35 | Realistic Torches | 辅助优化（光照 QoL） | 未分类 | CC-BY-NC-SA-4.0（TSV 精确匹配） | 是 | 停更 | 无 | NC 条款 | 收录（分类修正 + NC 提示） |
| 36 | Reborn Core | 前置库（TeamReborn） | 世界生成 | MIT（TSV 精确匹配） | 是 | 停更 | 与 #37 重复条目；作包内科技类模组前置 | 无 | 收录（分类修正 + 去重） |
| 37 | RebornCore | 前置库 | 世界生成 | MIT（同一模组） | 是 | 同 #36 | 与 #36 完全重复（同一模组） | 无 | 建议删除（重复条目） |
| 38 | Recipe Stages | 魔改（Game Stages 附属） | 辅助优化 | MIT（TSV 精确匹配） | 是 | 停更 | 需 Game Stages（包内 ✓）；与包内 CraftTweaker 系配合 | 无 | 收录 |
| 39 | Recipes for All | 辅助优化 | 辅助优化 | 开源（mcmod class/2523 标停更开源；作者将源码贴于 CF 页面，极轻量；TSV 匹配 "RecipeUnlocker" 为误配） | 是（仅 1.12.2） | 停更 | 无 | 无 | 收录 |
| 40 | Recurrent Complex | 世界生成（结构生成） | 维度探索 | MIT（GitHub Ivorforce/RecurrentComplex；TSV 匹配 "Volts" 为 1.16+ 重写版系，勿混） | 是 | 停更 | 与包内 Doomlike Dungeons/Roguelike Dungeons 等结构模组同类并存（非重复） | 无 | 收录（分类修正） |
| 41 | Red Core | 前置库（ProjectRed 核心库） | 世界生成 | MIT（TSV 精确匹配，MrTJP） | 是 | 停更 | 与包内 Project Red - Core / ProjectRed（早批次 #41/#47）同系列，Red Core 为核心库——是否与 Project Red - Core 重复需核对 jar | 无 | 收录（分类修正 + 核对提示） |
| 42 | Redstone Arsenal | 科技（RF 武器，CoFH 附属） | 未分类 | CoFH "Don't Be a Jerk" 系（mcmod class/256 标停更开源；TSV 匹配 "BlueBlocksArsenal" 为误配） | 是（1.12.2 在列） | 停更 | 需 Thermal Expansion 5 + CoFH Core（包内均 ✓）；与 #46 重复条目 | DBaJ 需署名 | 收录（分类修正 + 去重） |
| 43 | Redstone Flux API | 科技（API） | 科技 | CoFH DBaJ 系（RF API） | 是 | 停更 | RF API 自 1.10+ 起已内置于 CoFH Core jar（包内 ✓）——独立条目冗余 | 冗余 | 建议核对（确认 jar 后删除） |
| 44 | Redstone Paste | 科技（红石实用） | 未分类 | 闭源（mcmod class/1576 标停更闭源） | 是（1.12.2 在列） | 停更 | 无 | 闭源，无再分发条款 | 收录（闭源提示 + 分类修正） |
| 45 | Redstone Repository Revolved | 科技（红石军械库 1.12.2 重制） | 未分类 | 开源（mcmod class/1156 标停更开源） | 是（1.12.2 + 1.16.5） | 停更 | 原版停滞 1.7.10，thundR（包内 Simply Jetpacks 2 作者）接坑重制；与 #42 Redstone Arsenal 为不同模组，无冲突 | 无 | 收录（分类修正） |
| 46 | RedstoneArsenal | 科技 | 未分类 | CoFH DBaJ（同 #42） | 是 | 同 #42 | 与 #42 Redstone Arsenal 完全重复（同一模组） | 无 | 建议删除（重复条目） |
| 47 | Reliquary | 魔法（圣遗物） | 未分类 | 矛盾：mcmod class/525 标活跃开源；Modrinth "Reliquary Reincarnations"（P3pp3rF1y）标 LicenseRef-All-Rights-Reserved | 是（1.12.2 在列，Reincarnations 系） | 活跃（Modrinth 2026-07 更新） | 无（与包内神秘时代等魔法模组并存） | 许可渠道矛盾，需确认发布版许可 | 风险标注（许可确认 + 分类修正） |
| 48 | ReplayMod | 辅助优化（录制） | 辅助优化 | GPL-3.0-or-later（TSV 精确匹配；Modrinth 验证 1.12.2 在列） | 是 | 活跃 | 无 | 无 | 收录 |

## 统计

- 共核查 48 条。
- 1.12.2 支持：全部 48 条确认支持（本批无版本不符项）。
- 许可证：MIT 系 13（Quantum Things、RFTools×4、Dimension Tweaker、Reach Fix、Reborn Core/RebornCore、Recipe Stages、Rapid Optimization、RandomPatches、RandomTweaks、Quick Leaf Decay、Recurrent Complex、Red Core）；GPL 系 4（QBitHop GPL-3.0、Raw Input GPL-3.0-only、ReplayMod GPL-3.0-or-later、RLMixins 仓库 NOASSERTION 另计）；LGPL-3.0 1（QuantumStorage）；MPL-2.0 1（REIM）；CC 系 6（Quark/Quark Oddities/Quark-r1.6-178 CC-BY-NC-SA-3.0、Realistic Torches CC-BY-NC-SA-4.0、Rare Ice CC-BY-NC-4.0、Quark RotN 承继）；开源未标具体协议 11（QMD、RLTweaker2、RandomComplement、RandomTweaker、RGB Chat、Real First Person、RTG Unofficial、Random PSIdeas、Random Things、Recipes for All、RRR——其中 Random PSIdeas/Random Things GitHub 无 LICENSE 文件）；闭源/ARR 3（Redstone Paste、RLMixins、Reliquary 渠道矛盾）；CoFH DBaJ 2（Redstone Arsenal/RedstoneArsenal、Redstone Flux API）；许可未明 2（ReAuth、Rats: RatN Edition）。
- 分类修正约 23 处：前置库被误标为世界生成（Reborn Core/RebornCore、Red Core）、功能/辅助被误标为世界生成（Quark 系）、科技被误标为未分类（QBitHop、QMD、Redstone Arsenal、Redstone Paste、RRR、RedstoneArsenal）、维度探索误标 Recurrent Complex（应为世界生成）、Reliquary 未分类（应为魔法）、Rats 未分类（应为生物）、Rare Ice 未分类（应为世界生成）、Rapid Optimization 前置库（应为辅助优化）、ReAuth/Real First Person/Realistic Torches 未分类（应为辅助优化）等。
- 重复条目 6 组（建议删除 5 条 + 建议核对 1 条）：#7 Quark-r1.6-178 与 Quark、#22 RandomPatches (Forge) 与 RandomPatches、#23 RandomThings-jar 与 Random Things、#37 RebornCore 与 Reborn Core、#46 RedstoneArsenal 与 Redstone Arsenal；#43 Redstone Flux API 与包内 CoFH Core（RF API 已内置）冗余待核对；另 #41 Red Core 与包内 Project Red - Core 关系需核对 jar。
- 二选一 3 组：① Quark 官方（#5/#7）与 Quark: RotN Edition（#8）——同 modid 分叉；② Random Things（#19）与 Quantum Things（#3）——后者即前者的 1.12.2 续作（mcmod 明示），建议保留活跃的 Quantum Things；③ Quick Leaf Decay（#9）与包内 Fast Leaf Decay——功能完全相同。
- 与星系 Galacticraft：本批无直接交互模组；RFTools Dimensions 与星系为各自独立维度体系，无冲突。
- 与 AE2UEL：本批无 AE2 交互模组；QuantumStorage 为独立存储模组，可并存。
- 暮色/神秘时代：本批无直接交互；Reliquary 等魔法模组与神秘时代可并存（需实测）。
- 结论：收录 39 条、风险标注 3 条（#16 RLMixins ARR、#29 Rats: RatN 许可未明+缺前置、#47 Reliquary 许可渠道矛盾）、建议删除 5 条（#7/#22/#23/#37/#46 重复条目）、建议核对 2 条（#43 Redstone Flux API 冗余、#41 Red Core 与 Project Red - Core 关系）。
- 特别提示：① TSV 本批多处标题误配（ChatColors/rAuth/BlueBlocksArsenal/RecipeUnlocker/Quantum Things→Random Things 行），均以 mcmod/GitHub/CurseForge 补查为准，勿直接采信 TSV 行内许可；② Quantum Things 与 Random Things 为同源续作关系，若按包作者意图二者取其一是关键决策；③ Rats: RatN Edition 为 RotN 整合包专用分叉，包内缺基础 Rats 前置，收录前必须补齐并确认分叉许可；④ Reliquary 1.12.2（Reincarnations 系）Modrinth 标 ARR 而 mcmod 标开源，务必按实际发布渠道（CF/Modrinth 页面）核对后再打包。
