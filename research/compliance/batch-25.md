# 批量核查 25（modlist.md 3163-3284 行，44 个模组）

核查方法：优先使用 modrinth-results.tsv 批量结果（名称精确匹配直接采用其许可证；标题错配视为误匹配弃用）。NO_HIT / ARR / 标题错配模组通过 GitHub API（gh api）+ raw.githubusercontent LICENSE/README + mcmod 搜索/详情页（浏览器 tab 1 与 curl 交替，每模组最多 1 次详情页）+ Modrinth API `versions:1.12.2` 分面 + CurseForge 页面复核补查。数据截至 2026-07-31。

| # | 模组 | 正确分类 | 当前分类 | 许可证 | 1.12.2 | 开发状态 | 冲突/重复 | 风险 | 结论 |
|---|------|----------|----------|--------|--------|----------|-----------|------|------|
| 1 | Traverse Reforged | 世界生成（群系扩展，Prospector Traverse 的 1.12.2 端口/后续名） | 世界生成 | LGPL-3.0（Modrinth/CurseForge 项目标注；GitHub SimplexDevelopment/Traverse 仓库 LICENSE 文件为 MIT，两处标注不一致，均开源可再分发） | 有（mcmod 版本列表 Forge 1.12.2/1.12.1/1.12/1.11.2；现代版本 1.16.5+） | 活跃（Prospector 团队 2025 仍更新；1.12.2 线停更于 1.5.x） | 无；与包内其他群系 mod 可共存 | 低 | 收录 |
| 2 | Treasure2 | 冒险（寻宝：宝箱/锁/钥匙/结构生成） | 维度探索（误） | ARR（Modrinth 明确标注 All Rights Reserved，2025 起更名 STONEBORN - Treasure2；GitHub gottsch/gottsch-minecraft-Treasure 无 LICENSE 文件） | 有 | 活跃（gottsch 持续维护，2026-07 仍有提交） | 无硬冲突；与包内暮色等结构类 mod 叠加正常 | 高（ARR 禁止再分发未豁免，须用官方下载并联系作者授权） | 收录（风险标注，改分类冒险） |
| 3 | Tree Tweaker | 辅助优化（CraftTweaker 附属：脚本自定义树木生成） | 辅助优化 | MIT（CurseForge 标注） | 有（仅 1.12.2） | 停更（super_fluke，2019，31.9 万下载） | 需 CraftTweaker（包内有）；无冲突 | 低 | 收录 |
| 4 | Trinity | 科技（核电工艺附属：核弹/炸弹/放射性污染） | 未分类 | WTFPL（GitHub igentuman/NC-Trinity） | 有（仅 1.12.2） | 停更慢维护（mcmod 标"停更开源"；仓库 2025 仍有 push） | 前置 NuclearCraft: Overhauled（包内有 2239 行）+ ICBM（**包内缺失，需补装 ICBM Classic build 74+，否则功能受限且有崩溃提示**）；40% 用户认为不稳定 | 中（前置缺失） | 收录（风险标注，改分类科技，需补 ICBM） |
| 5 | Tropicraft | 维度探索（热带维度） | 维度探索 | MPL-2.0（Modrinth 批量） | 有（Modrinth 1.12.2 分面确认 tropicraft / tropicraft-legacy） | 慢维护（团队项目，1.12.2 线停更） | 无 | 低 | 收录 |
| 6 | Tumbleweed Wasteland | 装饰/世界生成（沙漠风滚草生态） | 装饰 | LGPL-3.0（GitHub Gamingb3ast/tumbleweed-wasteland 明示，源自 Konwboy Tumbleweed 修改） | 有（1.12.2 分叉） | 停更（原作者停更；GamingB3ast 分支 2025-01 有提交） | 无 | 低 | 收录 |
| 7 | Tweaked Excavation | 辅助优化（Ore Excavation 系：连锁挖掘扩展/修复） | 辅助优化 | GPL-2.0（GitHub Srdjan-V/TweakedExcavation） | 有（1.12.2 系） | 停更（2024 最后提交） | 与包内 Ore Excavation（2306 行）同一功能家族 → 二选一或仅作配置扩展共存 | 低 | 收录（与 Ore Excavation 去重确认） |
| 8 | Tweaked Lib | 前置库（Tweaked 系列共用库） | 辅助优化（应改前置库） | GPL-2.0（GitHub Srdjan-V/TweakedLib） | 有（1.12.2 系） | 停更 | Tweaked 系列依赖 | 低 | 收录（改分类前置库） |
| 9 | Tweaked Petroleum | 辅助优化（Immersive Petroleum 储层/抽油机配置扩展，供整合包开发者） | 辅助优化 | GPL-2.0（GitHub Srdjan-V/TweakedPetroleum） | 有（1.12.2 系） | 停更（2025-02 有提交） | 需 Immersive Petroleum（包内有 1567 行）+ CraftTweaker（包内有）；非功能重复，是配置扩展 | 低 | 收录 |
| 10 | Tweaked Petroleum: Gas Addon | 科技（Tweaked Petroleum 附属：燃气扩展） | 辅助优化 | GPL-2.0（GitHub Srdjan-V/TweakedPetroleum-Gas-Addon） | 有（1.12.2 系） | 停更（2024） | 需 Tweaked Petroleum（包内有） | 低 | 收录 |
| 11 | Tweakeroo | 辅助优化（客户端操作/渲染增强） | 辅助优化 | LGPL-3.0-only（Modrinth 批量） | 有 | 活跃（masady 持续维护） | 需 MaLiLib（包内有 1924 行） | 低 | 收录 |
| 12 | Tweakers Construct | 辅助优化（匠魂调整/魔改工具） | 辅助优化 | 未标注（GitHub RCXcrafter/TweakersConstruct 无 LICENSE/README，默认 ARR） | 有（1.12.2/1.10.2） | 停更 | 需 Tinkers' Construct（包内有 3084 行）；联动 Construct's Armory（包内有）；口碑好（红票 13/0，100% 稳定/实用，36 整合包收录） | 中（许可未标注） | 收录（风险标注） |
| 13 | Twilight Forest Fixes (Doors & Misc) | 辅助优化（暮色森林门/杂项修复补丁） | 维度探索（误） | LGPL-3.0-only（Modrinth 批量） | 有 | 停更（小型补丁） | 修复对象暮色在包内（3045 行），属补丁非冲突 | 低 | 收录（改分类辅助优化） |
| 14 | U Team Core | 前置库（MC-U-Team 模组共用库） | 农业（误） | Apache-2.0（Modrinth 批量） | 有 | 活跃（MC-U-Team 维护） | 库；包内 MC-U-Team 模组（Useful Railroads 等）依赖 | 低 | 收录（改分类前置库） |
| 15 | Uber Conduit Probe | 辅助优化（Ender IO 导管批量配置工具） | 未分类 | LGPL-3.0（CurseForge 标注） | 有（仅 1.12.2） | 停更（thanksihadtosignupforthis，2021，96 万下载） | 面向 Ender IO（包内有 1039 行） | 低 | 收录（改分类辅助优化） |
| 16 | Underground Biomes | 世界生成（地下岩石群系扩展） | 世界生成 | 自定义（Modrinth Kreezxil 版 LicenseRef-Custom；mcmod 标"停更开源"） | 有 | 停更（1.12.2 线；作者 Aang234 后由 Kreezxil 托管） | 无硬冲突；与其他矿石/生成类 mod 叠加需实测 | 中（自定义许可条款需确认） | 收录（风险标注） |
| 17 | Underlay | 装饰/建筑（任意方块嵌入放置，如地毯） | 未分类 | GPL-3.0-only（Modrinth 批量） | 有 | 停更 | 无 | 低 | 收录（改分类装饰） |
| 18 | Unforgiving Void | 生存辅助（虚空不再仁慈：虚空伤害/死亡） | 未分类 | MPL-2.0（GitHub The-Fireplace-Minecraft-Mods/Unforgiving-Void 确认） | 有（mcmod 版本列表含 1.12.2；1.12.2 版无维度选择等新功能） | 半弃坑（The_Fireplace 现代版本持续维护，1.12.2 线停更） | 无 | 低 | 收录（改分类辅助优化） |
| 19 | UniDict | 辅助优化（统一物品词典别名/去重） | 未分类 | MPL-2.0（Modrinth 批量） | 有 | 停更/慢维护 | 无硬冲突 | 低 | 收录（改分类辅助优化） |
| 20 | UniLib | 前置库（Uni 系模组库） | 前置库 | MIT（Modrinth 批量） | 有 | 停更 | 库 | 低 | 收录 |
| 21 | Unifine | 辅助优化（OptiFine 光影状态通知库 + 热动力学覆盖板崩溃修复） | 辅助优化 | MIT（mcmod 简介明示"此模组使用 MIT 许可证"，可任意整合包使用） | 有（仅 1.12.2） | 停更（Ferreus Veritas） | 无强制前置（OptiFine 可选）；对 Thermal Dynamics（包内有 3050 行）为修复性联动 | 低 | 收录 |
| 22 | Universal Tweaks | 辅助优化（通用配置/修复整合） | 辅助优化 | LGPL-3.0-only（Modrinth 批量） | 有 | 活跃（持续维护） | 配置类，与包内其他修复类（VanillaFix/VintageFix 等）可能有重复项，建议对照配置避免双修 | 低 | 收录 |
| 23 | Unloader | 辅助优化（定期卸载无使用维度省内存） | 辅助优化 | MIT（GitHub Unnoen/Unloader 确认） | 有（1.12.2/1.11.2/1.10.2） | 停更（Unnoen，2018） | 已知 bug：配置文件只能填一个维度（可用正则规避）；与包内多维 mod（暮色/Tropicraft 等）需黑名单配置，否则维度被卸载 | 中（配置 bug） | 收录（风险标注） |
| 24 | Useful Railroads | 科技（铁路交通增强：车站/装卸等） | 未分类 | Apache-2.0（GitHub MC-U-Team/Useful-Railroads，1.12.2 分支确认） | 有 | 停更（MC-U-Team） | 需 U Team Core（包内有） | 低 | 收录（改分类科技） |
| 25 | Useful Slime | 工具武器（史莱姆主题装备/道具） | 生物（应改） | 自定义（官方 Modrinth 项目 useful-slime：部分文件 MIT + 其余 ARR，LICENSE.md 逐文件列举） | 有（官方项目 1.12.2 Forge 版 v1.2 确认） | 停更（1.12.2 线 2023；现代版本 2025 活跃） | 无 | 中（自定义许可：仅部分文件 MIT，其余保留权利） | 收录（风险标注，改分类工具武器） |
| 26 | ValkyrieLib | 前置库（Vampirism 等 ValkyrieofNight/TeamKrypticLinks 模组库） | 前置库 | ARR（Modrinth 明确标注 All Rights Reserved） | 有 | 停更（随 Vampirism 生态维护） | 必须与 Vampirism（包内有）同装 | 高（ARR，作为 Vampirism 前置随包分发需授权） | 收录（风险标注） |
| 27 | Valkyrien Skies | 科技（方块物理/飞空舰船） | 未分类 | LGPL-3.0-only（Modrinth 批量） | 有（1.12.2 alpha 版） | 1.12.2 版停更弃用（VS2 仅支持 1.16+） | 无直接冲突；1.12.2 alpha 质量 + 物理引擎对大型科技整合包服务器性能负担大，兼容性未广泛验证 | 中-高（alpha 停更） | 风险标注（建议谨慎收录，需实测或替换） |
| 28 | Vampires Need Umbrellas | 魔法（Vampirism 附属：吸血鬼晴天打伞防灼烧） | 魔法 | MIT（Modrinth 批量） | 有 | 停更（小型附属） | 需 Vampirism（包内有） | 低 | 收录 |
| 29 | Vampirism | 魔法（吸血鬼变身玩法） | 魔法 | LGPL-3.0-only（Modrinth 批量） | 有 | 活跃（maxanier/TeamVampirism 持续维护） | 需 ValkyrieLib（包内有）；与包内其他魔法 mod 无硬冲突 | 低 | 收录 |
| 30 | Vampirism Integrations | 魔法（Vampirism 附属：多方块整合/跨模组联动） | 魔法 | LGPL-3.0-only（Modrinth 批量） | 有 | 停更（Ocd 附属） | 需 Vampirism（包内有） | 低 | 收录 |
| 31 | VanillaFix | 辅助优化（崩溃免重启 + FPS 提升，经典修复） | 辅助优化 | MIT（Modrinth 批量） | 有（1.12.2 线 1.0.10-99/-150，2020 最后更新） | 停更（作者归档，功能并入 RandomPatches/CE 生态） | 与 VintageFix/StellarCore 等修复类功能重叠，需配置避让（known-issues.md 已记录与 StellarCore 的配置冲突） | 低-中 | 收录（与 #32 去重） |
| 32 | VanillaFix-1.0.10-99 | 同 #31（1.12.2 版本文件名重复条目） | 辅助优化 | 同 #31 | 有 | 同 #31 | 与 #31 完全重复 | 低 | 二选一（并入 #31） |
| 33 | VanillaIcecreamFix | 辅助优化（冰淇淋相关崩溃修复） | 辅助优化 | MIT（Modrinth 批量） | 有 | 停更（小型修复） | 无 | 低 | 收录 |
| 34 | Variegated | 装饰/食物（Noobanidus 小物品扩展） | 未分类 | MIT（GitHub noobanidus/Variegated 确认） | 有（仅 1.12.2） | 停更（2021） | 联动 BM2/Botania/ExU2/TC6/Traverse/TOP 均为可选（包内多数有）；无冲突 | 低 | 收录（改分类装饰） |
| 35 | Vaultopic - Early Inventory Management | 存储物流（前期物品整理/储物箱管理） | 存储物流 | 未标注（GitHub wolforcept/Vaultopic 无模组专属许可，LICENSE.txt 仅为 Forge LGPL 模板，默认 ARR） | 有（仅 1.12.2） | 停更（2019） | 无 | 高（许可未标注） | 风险标注（建议排除或联系作者授权） |
| 36 | Versioner | 辅助优化（整合包版本检查/更新提示工具，国创 TCreopargh） | 未分类 | MIT（GitHub TCreopargh/Versioner 确认） | 有（仅 1.12.2） | 停更（2021） | 需 CraftTweaker + Shadowfacts' Forgelin（包内均有） | 低 | 收录（改分类辅助优化） |
| 37 | Vials | 存储物流（储液瓶：精确流体转移） | 未分类 | MIT（CurseForge 标注） | 有（1.12.2/1.12.1/1.12/1.11.x/1.10.x） | 停更（LordJoda，2018，144 万下载） | 需匠魂2 配合才有实用价值（包内有）；无冲突 | 低 | 收录（改分类存储物流） |
| 38 | Village Names | 辅助优化（村庄命名/标识） | 辅助优化 | LGPL-3.0-only（Modrinth 批量） | 有 | 停更（GoryMoon） | 无 | 低 | 收录 |
| 39 | Villager Contracts | 辅助优化/实用（村民雇佣契约） | 辅助优化 | MIT（Modrinth 批量） | 有 | 停更 | 无 | 低 | 收录 |
| 40 | Villager Market | 辅助优化（村民市场方块：村庄交易展示） | 辅助优化 | MIT（CurseForge 标注） | 有（1.12.2/1.12/1.11.2/1.10.2） | 停更（Face of Cat，2020，302 万下载） | 与 #41 为同一模组的 NBT 修复替代版 → 二选一，修复版不应与原版同装 | 低 | 二选一（并入 #41） |
| 41 | Villager Market - NBT Fix | 同 #40（NBT 堆叠修复 + 新 GUI/纹理，Invadermonky 修复版） | 辅助优化 | MIT（CurseForge 标注） | 有（仅 1.12.2） | 停更（Invadermonky，2022，13.4 万下载） | 替代 #40 安装（修复原版同类物品无 NBT 校验堆叠问题）；作者明示原版更新后即归档 | 低 | 二选一（推荐保留本修复版） |
| 42 | VintageFix | 辅助优化（Mixin 驱动修复/优化） | 辅助优化 | LGPL-3.0-or-later（Modrinth 批量） | 有 | 活跃（pruno 维护） | 与 StellarCore 有已知配置冲突（README 明确处理方案，known-issues.md 已记录）；与其他修复类需配置避让 | 低-中 | 收录 |
| 43 | VisualClaiming | 辅助优化（领地/区块认领区域可视化） | 装饰（应改） | LGPL-3.0-or-later（Modrinth 批量） | 有 | 停更 | 无 | 低 | 收录（改分类辅助优化） |
| 44 | VisualOres | 世界生成（矿石视觉标记/发光提示） | 世界生成 | MIT（Modrinth 批量） | 有 | 停更 | 无 | 低 | 收录 |

## 统计

- 共核查：44 行（modlist.md 3163-3284 行，其中 3283-3284 行为分类标题，无模组）
- 收录：33 个（#1 #3 #5 #6 #7 #8 #9 #10 #11 #13 #14 #15 #17 #18 #19 #20 #21 #22 #24 #28 #29 #30 #31 #33 #34 #36 #37 #38 #39 #41 #42 #43 #44；#41 为 Villager Market 二选一中的保留方）
- 收录（风险标注）：8 个（#2 Treasure2（ARR 需授权）、#4 Trinity（前置 ICBM 缺失）、#12 Tweakers Construct（许可未标注）、#16 Underground Biomes（自定义许可）、#23 Unloader（配置 bug）、#25 Useful Slime（自定义部分 ARR）、#26 ValkyrieLib（ARR 前置）、#27 Valkyrien Skies（alpha 停更））
- 风险标注（许可未标注/ARR 禁止再分发，需作者授权）：1 个（#35 Vaultopic）
- 包内重复需二选一（剔除 2 个）：#32 VanillaFix-1.0.10-99（与 #31 完全重复，并入 #31）、#40 Villager Market（被 #41 NBT 修复版替代）；#7 Tweaked Excavation 与包内 Ore Excavation（modlist 2306 行）功能家族重复需确认
- 分类错误需修正：Treasure2（维度探索→冒险）、Twilight Forest Fixes（维度探索→辅助优化）、U Team Core（农业→前置库）、Tweaked Lib（辅助优化→前置库）、Useful Railroads（未分类→科技）、Useful Slime（生物→工具武器）、VisualClaiming（装饰→辅助优化）、Trinity/Uber Conduit Probe/Underlay/Unforgiving Void/UniDict/Versioner/Vials/Variegated/Valkyrien Skies（未分类→科技/辅助优化/装饰/存储物流归位）
- 关键冲突核查：与星系 Galacticraft、AE2UEL 无交集；Trinity 与暮色/神秘时代无冲突但需 ICBM 前置（包内缺失，需补装）；Unifine 与热动力学为修复联动；VintageFix×StellarCore、VanillaFix×StellarCore 配置冲突已在 known-issues.md 记录；Unloader 与包内多维度 mod（暮色/Tropicraft）需黑名单配置；Valkyrien Skies 1.12.2 alpha 版整体风险最高。
