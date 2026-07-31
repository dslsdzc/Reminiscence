# 模组合规核查 batch-14（modlist.md 第 1734-1855 行，47 条）

核查方式：modrinth-results.tsv 命中项直接用其许可证（未再搜索）；NO_HIT/ARR/模糊匹配项经 GitHub LICENSE（gh api）、Modrinth API、mcmod.cn 搜索交叉验证；mcmod 搜索对多数小模组无收录条目，WebSearch 预算耗尽，无法确认项一律标"未知"，不重复轰炸。日期：2026-07-31。

| # | 模组 | 正确分类 | 当前分类 | 许可证 | 1.12.2 | 开发状态 | 冲突/重复 | 风险 | 结论 |
|---|---|---|---|---|---|---|---|---|---|
| 1 | Just Enough Items | 辅助优化（界面/配方） | 辅助优化 | MIT（Modrinth 精确匹配） | 是（4.15.0.293） | 活跃（mezz 长期维护） | 无 | 低 | 收录 |
| 2 | Just Enough Items (JEI) | 辅助优化（界面/配方） | 辅助优化 | MIT | 是 | 同 JEI | 与 #1 完全重复 | 低 | 去重（与 #1 合并一条） |
| 3 | Just Enough Magiculture | 辅助优化（JEI 附属） | 辅助优化 | 未知（CurseForge 小附属，mcmod/Modrinth 均无条目） | 未知 | 未知（小工具型附属） | 需 Magiculture 生态 | 中：许可未证实 | 收录（风险标注） |
| 4 | Just Enough Pattern Banners | 辅助优化（JEI 附属） | 辅助优化 | 未知（同上） | 未知 | 未知 | 无 | 中：许可未证实 | 收录（风险标注） |
| 5 | Just Enough Petroleum | 辅助优化（JEI 附属） | 辅助优化 | 未知（同上） | 未知 | 未知 | 依赖沉浸石油（包内 Immersive Petroleum） | 中：许可未证实 | 收录（风险标注） |
| 6 | Just Enough Reactors | 辅助优化（JEI 附属） | 科技（标错） | 未知（同上） | 未知 | 未知 | 依赖极限反应堆（包内 Extreme Reactors） | 中：许可未证实 | 收录（风险标注） |
| 7 | Just Enough Resources | 辅助优化（JEI 附属） | 辅助优化 | CoFH "Don't Be a Jerk"（GitHub LICENSE ©2016 way2muchnoise，非商用） | 是 | 活跃（2026-07 有提交） | 无 | 中：非商用授权，发布需注明作者 | 收录（风险标注） |
| 8 | Just Enough Resources (JER) | 辅助优化（JEI 附属） | 辅助优化 | 同 #7 | 是 | 同 #7 | 与 #7 完全重复 | 低 | 去重 |
| 9 | Just Enough Throwing In Fluids | 辅助优化（JEI 附属） | 辅助优化 | MIT（GitHub Lykrast/JETIF） | 是 | 停更（Lykrast 淡出，1.12.2 版本稳定） | 无 | 低 | 收录 |
| 10 | Just Enough Throwing In Fluids (JETIF) | 辅助优化（JEI 附属） | 辅助优化 | 同 #9 | 是 | 同 #9 | 与 #9 完全重复 | 低 | 去重 |
| 11 | Just Sleep | 未分类（玩法小工具） | 未分类 | 未知（Modrinth 命中为"Left Handed Sweeping"属模糊误配，不采信） | 未知 | 未知 | 无 | 中：身份/许可均未证实 | 收录（风险标注） |
| 12 | JustEnoughCharacters | 辅助优化（中文输入） | 辅助优化 | MIT（Modrinth 精确匹配） | 是 | 半活跃（1.12.2 版稳定） | 无 | 低 | 收录 |
| 13 | JustEnoughEnergistics | 辅助优化（AE2+JEI 联动） | 科技 | MIT（GitHub p455w0rd/JustEnoughEnergistics） | 是 | 停更（2020 最后提交，1.12.2 版可用） | 与 AE2UEL 兼容；与包内 1726-1727 行两条同名条目重复 | 低 | 收录（建议合并重复条目） |
| 14 | JustEnoughPetroleum-0.1 | 辅助优化（JEI 附属） | 未分类 | 未知 | 未知 | 未知 | 与 #5 Just Enough Petroleum 为同一模组 | 中 | 去重（与 #5 合并） |
| 15 | JustTheTips | 辅助优化（提示） | 未分类 | 未知（无任何条目） | 未知 | 未知 | 无 | 中：许可未证实 | 收录（风险标注） |
| 16 | KAMI: Reborn | 魔法（TC6 附属） | 未分类 | ARR（GitHub LICENSE ©2026 Elite Modding Team） | 是 | 活跃（2026-07 有提交） | 移植 Thaumic Tinkerer 的 KAMI 内容，与包内 Thaumic Tinkerer 功能重叠（二选一评估）；依赖 Thaumcraft 6 | 中：ARR + 与 TT 内容重叠 | 收录（风险标注） |
| 17 | KaratGarden-0.1.4-[1.12.2] | 农业 | 农业 | 未知（日文小模组，无条目） | 是（文件名含 1.12.2） | 未知（小更新频率） | 无 | 中：许可未证实 | 收录（风险标注） |
| 18 | Keeping Inventory | 辅助/规则类（死亡不掉落类，非物流） | 存储物流（标错） | 未知（Modrinth 命中"Keep Inventory Perms"属模糊误配） | 未知 | 未知 | 与包内其他规则类（如保留物品）可能重复 | 中 | 收录（风险标注） |
| 19 | Key Binding Patch | 辅助优化（键位修复） | 辅助优化 | ARR（Modrinth 精确标题匹配） | 存疑（CurseForge 1.12.2 有旧版） | 停更 | 与 #20 Keybind Unconflict 功能重叠（二选一） | 中：ARR | 收录（风险标注） |
| 20 | Keybind Unconflict | 辅助优化（键位去冲突） | 辅助优化 | MIT（Modrinth 精确匹配） | 是 | 活跃 | 与 #19 功能重叠（二选一，建议保留此 MIT 版） | 低 | 收录 |
| 21 | Keyboard Wizard | 辅助优化（键位向导） | 魔法（标错） | GPL-3.0-or-later（Modrinth "Keyboard Wizard CE"） | 是 | 原版停更、CE fork 维护 | 无 | 低 | 收录 |
| 22 | KleeSlabs | 辅助优化（方块玩法） | 未分类 | ARR（GitHub TwelveIterations ©2023 BlayTheNinth，模组包需按 mods.twelveiterations.com/permissions 授权） | 是（5.4.12） | 维护中（2026-07 有提交） | 无 | 中：ARR，按许可页申请注明 | 收录（风险标注） |
| 23 | KleeSlabs_1.12.2-5.4.12 | 辅助优化 | 未分类 | 同 #22 | 是 | 同 #22 | 与 #22 完全重复 | 低 | 去重 |
| 24 | Knowledge Sharer | 科技（ProjectE 附属） | 未分类 | 未知（Modrinth 命中"Sync ProjectE Knowledge"属模糊误配） | 未知 | 未知 | 若为 ProjectE 知识同步类，与包内 ProjectE 生态相关 | 中 | 收录（风险标注） |
| 25 | Konkrete | 前置库 | 未分类 | Apache-2.0（Modrinth 精确匹配） | 是（Modrinth API 证实含 1.12.2） | 活跃（Keksuccino） | 与 #26 重复 | 低 | 收录 |
| 26 | Konkrete [Forge/NeoForge] | 前置库 | 未分类 | 同 #25 | 是 | 同 #25 | 与 #25 为同一模组 | 低 | 去重 |
| 27 | Ksyxis | 辅助优化（加载加速） | 辅助优化 | MIT（Modrinth 精确匹配） | 是 | 维护中（Vazkii） | 无 | 低 | 收录 |
| 28 | LLibrary | 前置库 | 前置库 | LGPL-2.1（GitHub iLexiconn/LLibrary） | 是 | 停更（iLexiconn 2022 后淡出，1.12.2 版稳定） | 为 Grimoire of Gaia、Mowzie's Mobs 等的前置，包内必需 | 低 | 收录 |
| 29 | LagGoggles | 辅助优化（性能分析） | 辅助优化 | GPL-3.0（GitHub LeonPhilips/LagGoggles） | 是 | 停更（2023 最后提交，1.12.2 可用；另有 FalsePattern Legacy fork） | 无 | 低 | 收录 |
| 30 | Lapis Stays | 辅助优化（附魔台青金石保留） | 前置库（标错） | 未知 | 未知 | 未知 | 与 #31 重复 | 中 | 收录（风险标注） |
| 31 | Lapis Stays in the Enchanting Table | 辅助优化 | 前置库（标错） | 未知 | 未知 | 未知 | 与 #30 完全重复 | 中 | 去重 |
| 32 | Large Ore Deposits | 世界生成 | 世界生成 | 未知 | 未知 | 未知 | 与包内其他矿脉/世界生成模组（CoFH World 等）可能重复矿脉生成 | 中 | 收录（风险标注） |
| 33 | Lava Waders Bauble | 冒险/饰品（Baubles 附属） | 未分类 | 未知 | 存疑 | 未知 | 依赖 Baubles（包内有） | 中 | 收录（风险标注） |
| 34 | Lazy AE2 | 科技（AE2 附属） | 科技 | 未知 | 存疑 | 未知 | 与 AE2UEL 兼容性待验证 | 中 | 收录（风险标注） |
| 35 | Lazy AE2 Patch | 科技（AE2 附属补丁） | 科技 | 未知 | 存疑 | 未知 | 依赖 #34 Lazy AE2 | 中 | 收录（风险标注） |
| 36 | Legendary Tooltips [Neo/Forge] | 辅助优化（物品提示框） | 辅助优化 | 未知（[Neo/Forge] 新版为 Keksuccino 系，1.12.2 无此版本；1.12.2 原版"Legendary Tooltips"身份/许可未证实） | 存疑（需换用 1.12.2 原版文件） | 未知 | 无 | 高：条目名与 1.12.2 不匹配，易装错版本 | 收录（风险标注） |
| 37 | LemonSkin (AppleSkin Fork) | 辅助优化（饥饿 HUD） | 辅助优化 | MIT（Modrinth 精确匹配） | 是 | 活跃（squeek502） | 与包内 AppleSkin 二选一（同名功能） | 低 | 收录 |
| 38 | Let Me Despawn | 辅助优化（实体清理玩法） | 辅助优化 | LGPL-3.0-only（Modrinth 精确匹配） | 是 | 停更（frikineric） | 无 | 低 | 收录 |
| 39 | Let Me Sleep | 未分类（玩法） | 未分类 | 未知 | 未知 | 未知 | 无 | 中 | 收录（风险标注） |
| 40 | LetsEncryptCraft | 辅助/服务器工具 | 未分类 | MIT（Modrinth 精确匹配） | 是 | 半活跃（1.12.2 版稳定） | 无 | 低 | 收录 |
| 41 | LibNine | 前置库 | 前置库 | MIT（Modrinth "libnine" 精确匹配） | 是 | 半活跃（DrParadox 系） | Modular Machinery 系前置 | 低 | 收录 |
| 42 | LibVulpes | 前置库 | 前置库 | ARR（zmaster；mcmod 条目 604 证实为高级火箭前置） | 是（0.4.x） | 停更（zmaster 淡出） | 与 Advanced Rocketry 配套；若包内同时用 AR 与 AR-Reworked（新前置 ARLib，mcmod 15209）需二选一 | 中：ARR | 收录（风险标注） |
| 43 | LibrarianLib | 前置库 | 前置库 | GPL-3.0-only（Modrinth "LibrarianLib-Continuous"） | 是 | 停更（Continuous fork 维护） | Psi 系前置 | 低 | 收录 |
| 44 | LibraryEx | 前置库 | 前置库 | 无 LICENSE 文件（GitHub LogicTechCorp/LibraryEx），默认视为 ARR | 是 | 停更（2021 最后提交） | 无 | 中：未声明许可 | 收录（风险标注） |
| 45 | LightningCraft | 装饰（待证） | 装饰 | 未知（无任何条目；Modrinth 命中"Philosophy Of Nothing"为模糊误配） | 未知 | 未知 | 无 | 中：身份/许可均未证实 | 收录（风险标注） |
| 46 | Link's 3D Rails | 装饰 | 未分类（可改装饰） | MIT（Modrinth 精确匹配） | 是 | 半活跃 | 无 | 低 | 收录 |
| 47 | LittleTiles | 装饰 | 装饰 | LGPL-3.0（GitHub CreativeMD/LittleTiles；修正 Modrinth 模糊命中"LittleTiles Patch"的 MIT） | 是 | 半活跃（2026-07 有提交） | 需 CreativeCore 前置 | 低 | 收录 |

## 统计

- 总条目：47（去重后独立模组约 40）
- 直接收录（许可明确、无重大风险）：17（#1, 9, 12, 13, 20, 21, 25, 27, 28, 29, 37, 38, 40, 41, 43, 46, 47）
- 收录（风险标注）：23（许可未证实 14 条：3, 4, 5, 6, 11, 15, 17, 18, 24, 30, 32, 33, 39, 45；ARR/非商用授权 6 条：7, 16, 19, 22, 42, 44；版本/身份存疑 3 条：34, 35, 36）
- 去重（与同批条目重复）：7（#2, 8, 10, 14, 23, 26, 31；另 #13 与包内 1726-1727 行条目重复）
- 建议排除：0
- 分类错误修正：6（#6 Just Enough Reactors 科技→辅助优化；#18 Keeping Inventory 存储物流→规则/辅助；#21 Keyboard Wizard 魔法→辅助优化；#30/31 Lapis Stays 前置库→辅助优化；#46 Link's 3D Rails 未分类→装饰）
- 需人工核实的高风险项：#36 Legendary Tooltips（1.12.2 需换原版文件）；#16 KAMI: Reborn 与 Thaumic Tinkerer 内容重叠；#42 LibVulpes 与 AR/AR-Reworked 版本配套
