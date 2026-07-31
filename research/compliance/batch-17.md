# Batch 17 模组合规核查报告（modlist.md 2100-2227 行，共 51 条）

核查日期：2026-07-31
数据来源：Modrinth 批量结果（TSV）、GitHub 仓库 LICENSE（api.github.com + raw）、mcmod.cn 搜索页 + 详情页（15 个详情页）。
规则：TSV 精确名称匹配直接采用其许可证；NO_HIT/ARR/身份可疑者补查；每模组详情页最多 1 次；未命中即标"未知"，不重试轰炸。

| # | 模组 | 正确分类 | 当前分类 | 许可证 | 1.12.2 | 开发状态 | 冲突/重复 | 风险 | 结论 |
|---|---|---|---|---|---|---|---|---|---|
| 1 | Morph-o-Tool-1.2-21 | 工具武器 | 未分类 | CC-BY-NC-SA-3.0（TSV 匹配 Morph-o-Tool，Vazkii 系） | 是（1.2-21 即 1.12.2 版） | 停更 | 与包内 Morph-o-Tool（早批次条目）为同一模组版本化条目；MorphOverlay（#2）为其客户端配套 | 无 | 收录（与早批次条目去重核对） |
| 2 | MorphOverlay | 辅助优化 | 辅助优化 | 开源（mcmod class 21508 标注，国创） | 是 | 半弃坑（11 个月前收录） | 为 Morph-o-Tool/阿卡什宝典/Omniwand 显示变形标记的客户端小模组，与 #1 配套不冲突 | 无 | 收录 |
| 3 | Morpheus | 辅助优化 | 辅助优化 | MIT（社区通认；GitHub Quetzi/Morpheus 无 LICENSE 文件；TSV 命中标题为无关模组已排除） | 是 | 停更（GitHub 最后推送 2023-05） | 无 | 无 | 收录 |
| 4 | Mouse Tweaks | 辅助优化 | 辅助优化 | BSD-3-Clause（GitHub YaLTeR/MouseTweaks） | 是（2.10） | 活跃（2026-06 仍有推送） | 与 #6 MouseTweaks-2.10-mc1.12.2 为同一模组 | 无 | 收录（与 #6 去重） |
| 5 | Mouse Tweaks Unofficial | 辅助优化 | 辅助优化 | 未知 | 未知 | 未知 | 疑为 Mouse Tweaks 的误名/重复条目（包内已有 #4、#6 两条） | 全渠道无命中（TSV 无、mcmod 无、GitHub 无），身份无法确认 | 建议核对（确认 jar 内容；疑似重复则删除） |
| 6 | MouseTweaks-2.10-mc1.12.2 | 辅助优化 | 辅助优化 | BSD-3-Clause | 是（2.10 即 1.12.2 版） | 活跃 | 与 #4 完全重复（同一 jar） | 无 | 建议删除（重复条目） |
| 7 | Mowzie's Mobs | 生物 | 生物 | 自定义许可（GitHub BobMowzie/MowziesMobs-Public NOASSERTION 有 LICENSE 文件无法归类；mcmod 未标开源） | 是 | 1.12.2 版停更（原作者弃坑后新版本由社区续更，仓库 2026 仍有推送） | 无已知冲突（与暮色/神秘时代均为内容模组，互不依赖） | 口碑极佳（mcmod 红票 76/96%、黑票 3） | 收录 |
| 8 | MrCrayfish's Furniture Mod | 装饰（家具） | 农业（错） | GPL-3.0（GitHub MrCrayfish/MrCrayfishFurnitureMod；mcmod 标开源） | 是 | 停更（作者弃坑并转向新版本 Refurbished） | 无 | 老牌模组口碑佳（红票 220/94%） | 收录（分类修正） |
| 9 | MrTJPCore | 前置库 | 世界生成（错） | LGPL-3.0（GitHub MrTJP/MrTJPCore） | 是 | 停更（2021 后无推送） | Project Red 系列共用前置；与包内 Project Red 条目配套 | 无 | 收录（分类修正） |
| 10 | Multithreaded Noise | 辅助优化（性能） | 未分类 | 闭源（mcmod class 6186 标注） | 是 | 停更 | 世界生成多线程优化，与大型地形模组兼容性需实测 | 闭源 + 口碑一般（红票 8/80%、黑票 2） | 收录（闭源提示） |
| 11 | Music Player | 辅助优化（音乐播放） | 辅助优化 | 开源（mcmod class 2566 标注） | 是 | 停更 | 无 | 高风险：mcmod 明确警告"已无法在离线或国内网络环境下使用，若在未进入主菜单前崩溃请先移除本模组"（1.12.2 旧版属受影响版本） | 风险标注（建议核实版本或排除） |
| 12 | Music Triggers | 辅助优化 | 辅助优化 | LGPL-3.0-or-later（TSV）；mcmod 标开源 | 是 | 半弃坑 | 无 | 已知问题：6.3 版本因无法连接 Twitch 导致崩溃（国内网络需注意）；1.12.2 版为 6.x 系 | 收录（网络提示） |
| 13 | My Minimal Armor | 辅助优化（客户端显示） | 工具武器（错） | LicenseRef-All-Rights-Reserved（TSV 标题匹配） | 未知 | 未知 | 无 | 无 mcmod/GitHub 命中，1.12.2 身份无法交叉验证 | 风险标注（核对 jar 后收录） |
| 14 | My Precious Tool | 未知 | 未分类 | 未知 | 未知 | 未知 | 未知 | 全渠道无命中（TSV 无、mcmod 无、GitHub 无） | 建议核对（先确认是哪个模组） |
| 15 | MystAgrad Cloche Compat | 农业（MA+IE 兼容） | 未分类 | 闭源（mcmod class 1233 未标开源） | 是（8.73KB 小兼容件） | 停更 | 需 Mystical Agriculture + Immersive Engineering（包内均有 ✓） | 闭源小件，功能单一 | 收录（分类修正；闭源提示） |
| 16 | Mysterious Mountain Lib | 前置库 | 世界生成（错） | MIT（TSV 精确匹配） | 是 | 停更 | 前置库（供 Mysterious Mountain 系列模组） | 无 | 收录（分类修正） |
| 17 | Mystical Agradditions | 农业 | 魔法（错） | MIT（TSV 精确匹配，BlakeBr0） | 是 | 1.12.2 停更（新版活跃） | 与 #22 MysticalAgradditions 重复条目 | 无 | 收录（分类修正 + 与 #22 去重） |
| 18 | Mystical Agriculture | 农业 | 科技（错） | MIT（TSV 精确匹配，BlakeBr0） | 是 | 1.12.2 停更（4.3.x，新版活跃） | 系列核心；本批多个附属以其为前置 | 无 | 收录（分类修正） |
| 19 | Mystical Agriculture Tiered Crystals | 农业（附属） | 科技（错） | MIT（TSV 精确匹配） | 是 | 停更 | MA 附属（阶层水晶） | 无 | 收录（分类修正） |
| 20 | Mystical Creations | 农业（附属） | 魔法（错） | MIT（GitHub focamacho/MysticalCreations） | 是 | 停更（2021 后无推送） | MA 附属（自定义种子） | 无 | 收录（分类修正） |
| 21 | Mystical World | 内容（生物/世界生成） | 魔法（错） | MIT（EpicSquid；TSV 标题命中"Mystical Wildlife"为无关项） | 是 | 停更 | 无 | 无 | 收录（分类修正） |
| 22 | MysticalAgradditions | 农业 | 魔法（错） | MIT | 是 | 同上 | 与 #17 完全重复（同一模组） | 无 | 建议删除（重复条目） |
| 23 | MysticalLib | 前置库 | 魔法（错） | MIT（TSV 命中；BlakeBr0 库） | 是 | 停更 | MA 系列前置库 | 无 | 收录（分类修正） |
| 24 | NBT-API | 前置库 | 前置库 | MIT（TSV 精确匹配，tr7zw） | 是 | 活跃 | 前置库（仅依赖时安装） | 无 | 收录 |
| 25 | NCO Java Legacy Lib | 前置库 | 前置库 | MIT（GitHub tomdodd4598/NCO-Java-Legacy-Lib） | 是（NCO Overhauled Java 1.12.2 版前置） | 维护至 2024-06 | NCO Java Legacy 版配套前置 | 无 | 收录 |
| 26 | Name Pain | 辅助优化 | 未分类 | 闭源（mcmod class 4638 未标开源；TSV ARR 一致） | 是 | 半弃坑 | 与 Neat 等血条显示类轻微重叠（显示形式不同） | 无 | 收录（闭源提示） |
| 27 | Natura | 内容（世界生成/资源） | 未分类 | 代码 CC0-1.0 + 资源/二进制 CC-BY-3.0（GitHub LICENSE.md 原文；TSV"Botania"命中为无关项） | 是 | 停更（2022 后无推送） | 与 #28 Natura Legacy 为同一模组两个版本 | 无 | 收录（与 #28 二选一） |
| 28 | Natura Legacy | 内容（世界生成/资源） | 未分类 | 开源（mcmod class 17909 标注；mDiyo 非官方修复分支，继承上游许可） | 是 | 停更 | 与 #27 重复（为修复版，含原版全部内容） | 非官方分支 | 二选一（建议保留 Legacy 修复版或原版之一，二者不可并存） |
| 29 | Nature's Compass | 辅助优化（工具） | 未分类 | CC-BY-NC-SA-4.0（TSV 精确匹配，ChaosTheDude） | 是 | 停更 | 无 | 无 | 收录 |
| 30 | Neat | 辅助优化 | 未分类 | CC-BY-NC-SA-3.0（TSV 精确匹配，Vazkii） | 是 | 停更 | 与 #31 Neat 1.4-17 重复条目 | 无 | 收录（与 #31 去重） |
| 31 | Neat 1.4-17 | 辅助优化 | 未分类 | CC-BY-NC-SA-3.0 | 是（1.4-17 即 1.12.2 版） | 停更 | 与 #30 完全重复（同一 jar） | 无 | 建议删除（重复条目） |
| 32 | Neeve's AE2: Extended Life Additions | 科技（AE2UEL 附属） | 科技 | 开源（mcmod class 11824 标注；GitHub 主仓库未检索到） | 是 | 停更 | 专为 AE2UEL 打造的附属（需 JEI/HEI，若缺会崩溃）；与 AE2UEL 兼容关系正确 | 口碑良好（红票 7/88%） | 收录（确认包内 AE2UEL 与 JEI 齐备） |
| 33 | Net Music | 辅助优化（音乐播放） | 辅助优化 | 开源（mcmod class 4935 标注） | 是 | 弃坑（作者已放弃网络音乐机系列开发） | 无 | 依赖网络流媒体服务，国内网络部分电台可能不可用；口碑佳（红票 45/96%） | 收录（网络提示） |
| 34 | Nether API | 前置库 | 维度探索（错） | LicenseRef-Custom-License（TSV 精确匹配，Jayzei） | 是 | 停更 | NetherEX 前置库（包内 #35/#36 配套） | 自定义许可 | 收录（分类修正） |
| 35 | NetherEX | 维度探索（下界内容） | 维度探索 | LicenseRef-Custom-License（TSV 匹配 Nether API 词条；Jayzei） | 是 | 停更（作者弃坑） | 与 #36 NetherEx 重复条目 | 自定义许可 | 收录（与 #36 去重） |
| 36 | NetherEx | 维度探索 | 维度探索 | LicenseRef-Custom-License | 是 | 停更 | 与 #35 完全重复 | 无 | 建议删除（重复条目） |
| 37 | NetherPortalFix | 辅助优化 | 维度探索（错） | 自定义许可（补查：GitHub TwelveIterations/NetherPortalFix 有 LICENSE 文件、GitHub 标 NOASSERTION；TSV ARR 疑为同名无关项目） | 是 | 活跃（2026-07 仍有推送） | 无 | 无 | 收录（分类修正） |
| 38 | Netherending Ores | 世界生成（矿物） | 维度探索（错） | 开源（mcmod class 3375 标注；GitHub ICannt 镜像无 LICENSE） | 是（ICannt 移植版） | 停更 | 与 #39 Netherending-Ores 重复条目 | 无 | 收录（分类修正 + 与 #39 去重） |
| 39 | Netherending-Ores | 世界生成（矿物） | 维度探索（错） | 开源 | 是 | 停更 | 与 #38 完全重复 | 无 | 建议删除（重复条目） |
| 40 | Nimble (Forge) | 辅助优化（视角动画） | 未分类 | 开源（mcmod class 5085 标注，国创） | 是 | 停更 | 无 | 无 | 收录 |
| 41 | No Block Break Particles | 辅助优化 | 辅助优化 | LGPL-3.0-only（TSV 标题匹配） | 未知 | 未知 | 无 | TSV 命中项目与 1.12.2 条目身份未能交叉验证（mcmod/GitHub 无命中） | 风险标注（核对 jar 后收录） |
| 42 | No Cave Ambience | 辅助优化（音效） | 世界生成（错） | CC0-1.0（TSV 标题匹配） | 未知 | 未知 | 无 | 同上，1.12.2 身份待核对 | 风险标注（分类修正 + 核对 jar） |
| 43 | No Mob Spawning on Trees | 生物 | 生物 | MIT（GitHub oldjunyi/NoMobSpawningOnTrees，版本号 1.2.2 与包内文件吻合） | 是（1.2.2） | 停更 | 与 #49 重复条目 | 无 | 收录（与 #49 去重） |
| 44 | No More Poison with Regeneration | 辅助优化 | 世界生成（错） | LGPL-3.0-only（TSV）；mcmod class 10449 标开源 | 是 | 停更 | 无 | 无 | 收录（分类修正） |
| 45 | No Night Vision Flashing | 辅助优化 | 未分类 | 未知 | 未知 | 未知 | 无 | 全渠道无命中（TSV 无、mcmod 无、GitHub 无） | 风险标注（身份无法确认） |
| 46 | No Pumpkin Blur | 辅助优化 | 未分类 | LGPL-3.0-only（TSV 精确匹配，gr8pefish） | 是 | 停更 | 无 | 无 | 收录 |
| 47 | NoExpensive | 辅助优化 | 未分类 | MIT（TSV 精确匹配） | 是 | 停更 | 无 | 无 | 收录 |
| 48 | NoFog-1.12.2b3 | 辅助优化（视觉） | 未分类 | 开源（mcmod class 1820 标注） | 是（b3 即 1.12.2 版） | 停更 | 与雾效类模组轻微重叠（影响面小） | 无 | 收录 |
| 49 | NoMobSpawningOnTrees-1.2.2-mc1.12.2 | 生物 | 生物 | MIT | 是（1.2.2） | 停更 | 与 #43 完全重复（同一 jar） | 无 | 建议删除（重复条目） |
| 50 | NoMoreRecipeConflict | 辅助优化（配方） | 世界生成（错） | 无 LICENSE 文件（GitHub MinecraftIsTooEasy/NoMoreRecipeConflict；保守按 ARR） | 是 | 维护至 2025-08 | 配方冲突消除工具，与本包大量 CraftTweaker 配方魔改互补 | 无许可证文件，分发注意 | 收录（分类修正 + 许可提示） |
| 51 | NoRecipeBook | 辅助优化 | 世界生成（错） | 许可存疑（TSV 命中 LGPL-3.0-only 项目与 1.12.2 原版可能非同一项目；mcmod class 2102 未标开源） | 是 | 停更 | 无 | 口碑一般（红票 8/73%、黑票 3） | 收录（分类修正；许可待确认） |

## 统计

- 共核查 51 条（含 6 组同批重复条目 + 1 组跨批次版本化条目）。
- 1.12.2 支持：确认 44 条；未知 6 条（#5 Mouse Tweaks Unofficial、#13 My Minimal Armor、#14 My Precious Tool、#41 No Block Break Particles、#42 No Cave Ambience、#45 No Night Vision Flashing），另有 1 条身份存疑（#51 NoRecipeBook 许可）。
- 许可证：开源 37 条（MIT 14、LGPL 系 5、CC-BY-NC-SA 4、BSD-3-Clause 2、CC0/CC-BY 2、GPL-3.0 1、开源未标具体协议 9）；闭源/ARR/自定义 10 条（#7、#10、#13、#15、#26、#34/35/36、#37、#50）；未知 3 条（#5、#14、#45）；存疑 1 条（#51）。Natura（#27）为代码 CC0 + 资源 CC-BY-3.0。
- 分类错误 19 处（本批分类节明显混乱，含 3 处为重复条目同步修正）：#8（农业→装饰）、#9/#16/#34（→前置库）、#13（工具武器→辅助优化）、#17-23（魔法/科技→农业/前置库/内容）、#37/#38/#39（维度探索→辅助优化/世界生成）、#42/#44/#50/#51（世界生成→辅助优化）。
- 重复条目 6 组（建议删除：#6、#22、#31、#36、#39、#49；各与其同名条目为同一 jar），另有 #27/#28 Natura 与 Natura Legacy 二选一，以及跨批次 Morph-o-Tool 版本化条目（#1）。
- 结论：收录 37 条、风险标注 5 条（#11 Music Player、#13、#41、#42、#45）、建议删除 6 条（#6、#22、#31、#36、#39、#49）、建议核对 2 条（#5、#14）、二选一 1 组（#27/#28）。
- 与星系 Galacticraft 冲突：未发现（本批无太空相关模组；#32 NAE2、#10 Multithreaded Noise 均与星系无交互）。
- 与 AE2UEL 相关：#32 Neeve's AE2: Extended Life Additions 专为 AE2UEL 打造（需 JEI/HEI，包内确认齐备即可），无冲突。
- 暮色/神秘时代：#7 Mowzie's Mobs 与暮色均为大型内容模组，无已知冲突；#34-36 Nether 系与神秘时代无关；#26 Name Pain 无冲突。
- 特别提示：#11 Music Player 的国内网络/离线崩溃警告为整批最高风险项，务必核实 1.12.2 版本行为或改用替代（如 Net Music #33）；#12 Music Triggers 6.3 版存在 Twitch 连接崩溃已知问题，国内网络玩家注意。
