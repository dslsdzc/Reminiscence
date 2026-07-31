# Batch 24 合规核查报告（modlist.md 第 3014-3159 行，64 个模组）

核查日期：2026-07-31。数据源：modrinth-results.tsv 批量匹配（名字匹配直接采用许可证）+ GitHub API 许可证验证 + Modrinth API 版本验证 + mcmod.cn 浏览器补查（NO_HIT / 标题不匹配 / All-Rights-Reserved 项）。批量结果中标题不匹配的匹配项（如 Thermal Foundation→"BlueBlocksTFoundation"、The Spice of Life→"Shield By Side"）一律视为需补查项。

| # | 模组 | 正确分类 | 当前分类 | 许可证 | 1.12.2 | 开发状态 | 冲突/重复 | 风险 | 结论 |
|---|---|---|---|---|---|---|---|---|---|
| 1 | The Abyss II（深渊：第二章） | 维度探索（1.16+ 模组，非 1.12.2） | 维度探索 | 开源（Custom License，Shinyflvres） | ❌ 仅 1.16.4-1.20.2，无 1.12.2（mcmod 3527 确认） | 停更开源（最后 2022-05，MCreator 制作），红票 84% | 包内已有 AbyssalCraft（1.12.2 深渊线）——若本条目意图指 AbyssalCraft 则重复 | 版本不符：1.12.2 整合包不可收录 | **建议排除**（无 1.12.2 版本） |
| 2 | The Aether | 维度探索 | 维度探索 | LicenseRef-Custom（批量精确匹配） | ✅（Modrinth 项目 "aether" 版本含 1.12.2） | 经典模组，1.12.2 线停更；红票口碑佳 | 与 Tinkers Aether 附属的依赖（Aether Legacy modid）需核对版本对应 | Custom 许可需注明出处；1.12.2 与新版为不同代码线 | 收录（风险标注：Custom 许可） |
| 3 | The Betweenlands | 维度探索 | 维度探索 | 开源但 GitHub（Angry-Pixel/The-Betweenlands）无 LICENSE 文件（实质 ARR） | ✅（1.12-fixes 分支，3.9.6） | 半弃坑开源（mcmod）；GitHub 1.12-fixes 分支 2026-07-28 仍在提交 | 无直接冲突 | 许可文件缺失，再分发需作者确认 | 收录（风险标注：GitHub 无 LICENSE） |
| 4 | The Erebus | 维度探索 | 维度探索 | 停更开源（mcmod；GitHub vadis365/TheErebus 无 LICENSE 文件） | ✅（1.12.2） | 停更（最后 1.0.31，2019-11），红票 199（91%） | 无 | 开源但无许可文件 | 收录（风险标注：许可未明） |
| 5 | The Hordes | 生物 | 生物 | LGPL-2.1-only（批量精确匹配） | ✅（Modrinth the-hordes 版本含 1.12.2） | 活跃（Modrinth 2026-07-28 更新） | 无 | 低 | 收录 |
| 6 | The Impossible Library | 前置库 | 前置库 | GPL-3.0-or-later（批量精确匹配） | ✅（Modrinth 版本含 1.12/1.12.2） | 稳定 | 无 | 低 | 收录 |
| 7 | The Lost Cities | 维度探索 | 维度探索 | MIT（批量精确匹配） | ✅ | 稳定 | 与 TSV 中 lostcities 行为同一模组文件条目，非独立重复 | 低 | 收录 |
| 8 | The Midnight | 维度探索 | 维度探索 | All Rights Reserved（Modrinth 精确匹配） | ✅（Modrinth 版本含 1.12.2） | 停更（Cryptic Mushroom，2021 前后） | 无 | ARR 不可再分发，需作者许可 | 收录（风险标注：ARR 停更） |
| 9 | The One Probe | 信息显示（前置/工具） | 未分类 | MIT（批量精确匹配） | ✅ | 稳定 | **与第 3036 行 "The One Probe Community Edition" 同 modid（theoneprobe），不可共存，必须二选一** | 低 | 二选一（原版与 CE 保留其一） |
| 10 | The One Probe Community Edition | 信息显示（TOP 增强 fork） | 未分类 | MIT（GitHub ukmojb/The-One-Probe-Community-Edition 确认） | ✅（gradle.properties mod_version=1.12-1.3.8-fix1，modid 仍为 theoneprobe） | 活跃（ukmojb，1.12.2 生态） | **与第 3035 行 The One Probe 同 modid 硬冲突，二选一**；CE 为功能超集（工具提示/本地化/Botania 魔力显示） | 二选一即可，无其他风险 | 二选一（建议保留 CE 或原版其一；TOP Addons/TOPExtras 等附属对两者 API 均兼容） |
| 11 | The Rename Compat Project | 兼容工具（包名重命名适配） | 未分类 | MIT（批量精确匹配） | ✅ | 稳定 | 无 | 低 | 收录（补分类） |
| 12 | The Spice of Life | 饮食/农业（食物多样性） | 农业 | Unlicense（GitHub squeek502/SpiceOfLife 确认，1.12 分支） | ✅ | 停更（最后提交 2018-08）但稳定 | 与包内 Tough As Nails、TFC 等生存体系需确认平衡 | 低（Unlicense 公有领域） | 收录 |
| 13 | The Twilight Forest | 维度探索 | 维度探索 | LGPL-2.1（GitHub TeamTwilight/twilightforest LICENSE 为 LGPL-2.1+） | ✅（3.11.x） | 活跃（2026-07-30 仍提交） | 与包内 "Twilight Forest Fixes"（补丁）兼容 | 低 | 收录 |
| 14 | Thermal Cultivation | 科技（农业扩展） | 科技 | CoFH "Don't Be a Jerk" License（DBaJ，GitHub 无 LICENSE 文件，README 载明） | ✅ | 1.12.2 线停更 | 无 | **DBaJ 明确禁止整体再分发（含编译产物）** | 收录（风险标注：DBaJ，仅可提供官方下载链接） |
| 15 | Thermal Dynamics | 科技（管道物流） | 科技 | CoFH DBaJ | ✅ | 1.12.2 线停更 | **与第 3056 行 "ThermalDynamics" 同一模组，重复条目** | 同 14 | 收录（与 ThermalDynamics 合并去重；DBaJ 风险同上） |
| 16 | Thermal Expansion | 科技（大型机器模组） | 科技 | CoFH DBaJ | ✅ | 1.12.2 线停更 | **与第 3057 行 "ThermalExpansion" 同一模组，重复条目** | 同 14 | 收录（与 ThermalExpansion 合并去重；DBaJ 风险同上） |
| 17 | Thermal Foundation | 科技（基础/前置） | 科技 | CoFH DBaJ | ✅ | 1.12.2 线停更 | **与第 3058 行 "ThermalFoundation" 同一模组，重复条目** | 同 14 | 收录（与 ThermalFoundation 合并去重；DBaJ 风险同上） |
| 18 | Thermal Innovation | 科技（工具/附属） | 科技 | CoFH DBaJ | ✅ | 1.12.2 线停更 | **与第 3059 行 "ThermalInnovation" 同一模组，重复条目** | 同 14 | 收录（与 ThermalInnovation 合并去重；DBaJ 风险同上） |
| 19 | Thermal Logistics | 科技（智能合成物流） | 科技 | GitHub（Astavie/ThermalLogistics）无 LICENSE（实质闭源） | ✅（仅 1.12.2） | 停更（最后 2021-07 提交），红票样本极小 | **与包内 Logistics Pipes 功能重复（本模组即"物流管道精神续作"：请求器/合成器）——二选一** | 闭源停更 + 与 LP 重叠 | 收录（风险标注：闭源停更，与 Logistics Pipes 二选一） |
| 20 | Thermal Tinkering | 科技/工具（TE×TiC 联动） | 科技 | 许可未明（GitHub 未检索到仓库，mcmod 无开源标注） | ✅（1.12.2） | 停更，红票 2（100%） | 前置 TE5 + TiC2（包内均有 ✓） | 许可未明 + 停更 | 收录（风险标注：许可未明） |
| 21 | ThermalDynamics | 科技 | 科技 | 同第 15 行 Thermal Dynamics | ✅ | 同上 | **与第 3050 行 "Thermal Dynamics" 重复条目，二选一** | 同 14 | 二选一（保留 3050 行即可，删除本行） |
| 22 | ThermalExpansion | 科技 | 科技 | 同第 16 行 Thermal Expansion | ✅ | 同上 | **与第 3051 行 "Thermal Expansion" 重复条目，二选一** | 同 14 | 二选一（删除本行） |
| 23 | ThermalFoundation | 科技 | 科技 | 同第 17 行 Thermal Foundation | ✅ | 同上 | **与第 3052 行 "Thermal Foundation" 重复条目，二选一** | 同 14 | 二选一（删除本行） |
| 24 | ThermalInnovation | 科技 | 科技 | 同第 18 行 Thermal Innovation | ✅ | 同上 | **与第 3053 行 "Thermal Innovation" 重复条目，二选一** | 同 14 | 二选一（删除本行） |
| 25 | ThermalLogistics | 科技 | 科技 | 同第 19 行 Thermal Logistics | ✅ | 同上 | **与第 3054 行 "Thermal Logistics" 重复条目，二选一** | 同 19 | 二选一（删除本行） |
| 26 | TickCentral | 辅助优化（TPS 中央调度） | 未分类 | GPL-3.0（GitHub LeonPhilips/TickCentral） | ✅（build.gradle Forge 1.12.2-14.23.5.2854） | 停更（2022-04 最后提交） | GTNH 系另有 fork；无冲突 | 低（GPL 可再分发） | 收录（补分类） |
| 27 | Tiered Tooltips | 魔改/显示（物品阶段变色提示） | 辅助优化 | BSD-3-Clause（GitHub Stapleton/Tiered-Tooltips） | ✅（1.12-1.12.2） | 停更开源，红票样本极小（50/50） | 前置 CraftTweaker + Game Stages + Item Stages（包内均有 ✓） | 低 | 收录 |
| 28 | Tinker I/O（工匠接口社区版） | 科技（匠魂熔炉 IO，国创） | 工具武器 | 活跃开源（mcmod 17119，GitHub 链接） | ✅（仅 1.12.2） | 活跃开源（国创，村民黄金/唐轩宇），红票 3/100% | **与包内 Smeltery IO 功能重叠**（CE 版仅保留冷却输出端+燃料输入机）——二选一；前置 TiC2+RFAPI ✓ | 样本极小 + 功能重叠 | 收录（风险标注：与 Smeltery IO 二选一） |
| 29 | Tinker's JEI | 信息显示（匠魂工具属性面板） | 工具武器 | MIT（GitHub PssbleTrngle/TinkersJEI） | ✅（仅 1.12.2） | 停更开源，红票 10/100% | 前置 TiC2 + JEI ✓ | 低 | 收录 |
| 30 | Tinker's Planner Antique | 工具（匠魂工具规划 UI） | 工具武器 | MIT（GitHub xy177/Tinker-s-Planner-Antique） | ✅（仅 1.12.2） | 活跃（2026-05-15 提交） | 前置 TiC2 | 低 | 收录 |
| 31 | TinkerStages | 魔改（匠魂阶段锁定） | 工具武器 | LGPL-2.1-only（批量精确匹配） | ✅ | 停更但稳定 | 前置 TiC2 + Game Stages（包内均有 ✓） | 低 | 收录 |
| 32 | Tinkers Aether | 工具（匠魂×Aether Legacy 材料） | 工具武器 | GPL-3.0（GitHub Shnupbups/TinkersAether） | ✅（1.12.2） | 停更（最后 2022-01） | **与第 3081 行 "Tinkers' Aether" 同一模组，重复条目**；前置 Aether Legacy（需与包内 The Aether 条目版本对应） | GPL-3.0 可再分发，随包注明即可 | 收录（与 Tinkers' Aether 合并去重；确认 Aether Legacy 前置） |
| 33 | Tinkers Alloying Addon（TAIGA） | 工具（匠魂合金扩展） | 工具武器 | GPL-3.0（GitHub TartaricAcid/TAIGA） | ✅（1.12.2，mcmod 1146） | 停更开源（最后 1.3.4，2018-10），红票 84% | 前置 TiC2 | 低 | 收录 |
| 34 | Tinkers Construct | 科技（匠魂本体） | 工具武器 | MIT（批量精确匹配） | ✅ | 成熟稳定 | **与第 3084 行 "Tinkers' Construct" 同一模组，重复条目**（batch-23 已标注与 TConstruct 同源） | 二选一 | 收录（与 Tinkers' Construct 合并去重） |
| 35 | Tinkers Extras | 工具（匠魂特性开关） | 工具武器 | 无 LICENSE（GitHub MJRLegends/TinkersExtras，实质闭源） | ✅（仅 1.12.2） | 停更，红票 3/100% | 前置 TiC2；包内已有 MJRLegends Lib ✓ | 闭源无证 + 停更 | 收录（风险标注：无证闭源停更） |
| 36 | Tinkers' Addons | 工具（匠魂附属） | 工具武器 | GPL-3.0-only（批量精确匹配） | ✅ | 停更但稳定 | 前置 TiC2 | 低 | 收录 |
| 37 | Tinkers' Aether | 工具 | 工具武器 | 同第 32 行 Tinkers Aether（GPL-3.0） | ✅ | 同上 | **与第 3076 行 "Tinkers Aether" 重复条目，二选一** | 同上 | 二选一（删除本行，保留 3076） |
| 38 | Tinkers' Antique | 科技（TC2 非官方复刻） | 工具武器 | LGPL-3.0（GitHub Ahmet53535353/TinkersAntique-，代码纹理承袭 TC 的 MIT） | ✅（仅 1.12.2） | 活跃（2025-12 提交）；Elite Modding Team 长线维护 | **与 Tinkers' Construct 冲突/重复：TC2 fork，实质取代原版（要求重置配置，原作者不再支持 1.12.2）——二选一** | 若保留 Antique，包内 10+ 个依赖 tconstruct modid 的匠魂附属需重新评估 | 二选一（建议保留原版 Tinkers' Construct；Antique 需全套附属适配测试） |
| 39 | Tinkers' Complement | 工具（匠魂补充部件） | 工具武器 | MIT（批量精确匹配） | ✅ | 稳定 | 前置 TiC2 | 低 | 收录 |
| 40 | Tinkers' Construct | 科技（匠魂本体） | 工具武器 | MIT（批量精确匹配） | ✅ | 成熟稳定 | **与第 3078 行 "Tinkers Construct" 重复条目，二选一**；与第 3082 行 Tinkers' Antique（TC2 fork）冲突二选一 | 二选一 | 收录（建议保留此条，删除 3078；与 Antique 二选一） |
| 41 | Tinkers' Evolution | 工具（匠魂新材料/工具） | 工具武器 | MIT（含 "Good, not Evil" 条款；GitHub phantamanta44/tinkers-evolution LICENSE.md） | ✅（仅 1.12.2，Modrinth 确认） | 活跃（2026-06-30 提交） | 前置 TiC2 | 低 | 收录 |
| 42 | Tinkers' Modifier Modifier（TMM） | 魔改（匠魂强化修改） | 工具武器 | 开源（mcmod；Phanta 系模组惯例 MIT） | ✅（仅 1.12.2） | 停更开源，红票 8/100% | 前置 TiC2；与 Tinkers' Tool Leveling 功能不重叠 | 低 | 收录 |
| 43 | Tinkers' Tool Leveling | 工具（匠魂工具升级） | 工具武器 | MIT（GitHub SlimeKnights/TinkersToolLeveling） | ✅（1.12.2） | 停更（最后 2022-01）但稳定 | 前置 TiC2 | 低 | 收录 |
| 44 | Tiny Mob Farm | 生物（微型刷怪笼） | 生物 | MIT（批量精确匹配 "Tiny Mob Farm CE"） | ✅（1.12.2） | 稳定 | 与包内 Mob Grinding Utils 功能部分重叠（微型刷怪 vs 刷怪塔），非直接冲突 | 低 | 收录 |
| 45 | TipTheScales | 辅助优化（GUI 缩放） | 未分类 | LGPL-2.1-only（批量精确匹配） | ✅ | 稳定 | 无 | 低 | 收录（补分类） |
| 46 | Tips | 辅助优化（加载界面提示） | 未分类 | LGPL-2.1-only（批量精确匹配） | ✅ | 稳定 | 无 | 低 | 收录（补分类） |
| 47 | Toast Control | 辅助优化（消息框控制） | 未分类 | 活跃开源（mcmod 1758）；新版本 Modrinth MIT | ✅（1.12/1.12.1/1.12.2） | 活跃（Shadows-of-Fire，跨版本长期维护） | 无 | 低 | 收录（补分类） |
| 48 | TofuCraft | 农业/饮食 | 农业 | MIT（1.12.2 版 TofuCraftReload，GitHub 0999312/TofuCraftReload） | ✅（TofuCraftReload 1.12.2；原版 TofuCraft 仅至 1.7.10） | 原版停更；Reload 停更（2020） | 无 | 低（注明 1.12.2 对应 TofuCraftReload） | 收录 |
| 49 | Together Forever | 多人协同（阶段/成就同步） | 世界生成 | MIT（GitHub Buuz135/Together-Forever） | ✅（1.12-1.12.2） | 停更开源（红票 1/100%，样本极小） | 联动 Game Stages/Reskillable（包内已有 ✓） | 低 | 收录（修正分类：世界生成→多人协同） |
| 50 | Too Many Efficiency Losses | 科技辅助（XU2 发电机效率配置） | 未分类 | MIT（GitHub 确认，CF 同页） | ✅（仅 1.12.2，tmel-1.12.2-1.4.0.0） | 停更（最后 2019-07）但稳定 | 依赖 Extra Utilities 2（包内已有 ✓）；与 XU2-Patcher 兼容 | 低 | 收录（补分类） |
| 51 | Tool Progression | 魔改（挖掘等级配置） | 未分类 | 停更开源（mcmod 4171；GitHub tyra314/ToolProgression 无 LICENSE 文件） | ✅（1.11.2-1.12.2） | 停更（最后 1.6.12，2021-04），红票 3/100% | 无 | 许可文件缺失 | 收录（风险标注：GitHub 无 LICENSE） |
| 52 | TopAllDependents | 辅助优化（前置自动补载） | 辅助优化 | MIT（GitHub ukmojb/TopAllDependents） | ✅（1.12.2 生态） | 活跃（2026-07-31 提交） | 无 | 低 | 收录 |
| 53 | Torch Slabs Mod | 装饰/方块（火把半砖） | 未分类 | AGPL-3.0（GitHub EndlesNights/TorchSlab） | ✅（1.12.2 分支） | 停更（2023） | 无 | AGPL 强传染需开源义务（对整合包影响小） | 收录（补分类；风险标注：AGPL） |
| 54 | Torchmaster | 辅助（刷怪抑制） | 未分类 | MIT（GitHub xalcon/Torchmaster） | ✅（1.12.2） | 活跃（2026-07 提交） | 与包内其他刷怪抑制（Mob Grinding Utils 的 megatorch 替代）功能部分重叠，可共存 | 低 | 收录（补分类） |
| 55 | ToroHealth Damage Indicators | 辅助（血量显示） | 辅助优化 | GPL-3.0（GitHub ToroCraft/ToroHealth） | ✅（1.12.2） | 维持（2025-09 仍提交） | 与包内其他血条显示需确认共存（Neat 已被包内收录）——二者均显示生物血量，可二选一 | 低 | 收录（风险标注：与 Neat 血条功能重叠，二选一） |
| 56 | Totemic | 魔法（图腾仪式） | 魔法 | MIT（批量精确匹配） | ✅（1.12.2） | 稳定 | 无 | 低 | 收录 |
| 57 | TouchController | 辅助（触屏操作） | 未分类 | LGPL-3.0-or-later（批量精确匹配） | ✅（1.12.2） | 稳定 | 无 | 低 | 收录（补分类） |
| 58 | Tough As Nails | 生存硬核（口渴/体温） | 农业 | All Rights Reserved（GitHub Glitchfiend/ToughAsNails LICENSE 明确 "All rights reserved"） | ✅（1.12.2 CF 版） | 1.12.2 线停更；新版活跃 | 与包内饮食/生存体系（The Spice of Life、TFC）需确认平衡 | ARR 不可再分发 | 收录（风险标注：ARR 停更） |
| 59 | Touhou Little Maid | 生物/魔法（女仆，国创） | 魔法 | MIT（代码）+ CC BY-NC-SA 4.0（资产）（GitHub 双 LICENSE 文件确认） | ✅（1.12.2） | 活跃（1.5.3，2026-05-09），红票 505（98%） | 无 | 资产 CC BY-NC-SA：仅限非商用再分发、需署名+相同方式共享；**包内条目已标 🔒，发布前需确认作者对整合包分发条款** | 收录（风险标注：资产 NC-SA 非商用限制；🔒 需确认） |
| 60 | Translocators | 物流（物品/液体传输） | 未分类 | MIT（批量精确匹配） | ✅（1.12.2） | 稳定（chicken-bones） | 无 | 低 | 收录（补分类） |
| 61 | Transparent GUI and HUD | 辅助优化（透明 GUI） | 辅助优化 | All Rights Reserved（Modrinth 精确匹配） | ✅（Modrinth 版本含 1.12.2） | 活跃（跨版本更新至 26.x） | 无 | ARR 不可再分发 | 收录（风险标注：ARR） |
| 62 | Trash Cans | 存储物流（垃圾桶） | 存储物流 | All Rights Reserved（Modrinth 精确匹配，SuperMartijn642） | ✅（Modrinth 版本含 1.12.2） | 活跃 | 无 | ARR 不可再分发（SM 系列惯例允许整合包收录需注明） | 收录（风险标注：ARR） |
| 63 | TrashSlot | 辅助（垃圾桶格） | 未分类 | OUFL-1.0（批量精确匹配，BlayTheNinth 开源框架许可） | ✅（1.12.2） | 稳定 | 无 | 低（开源可再分发，需署名） | 收录（补分类） |
| 64 | Traveler's Backpack | 存储物流（背包） | 存储物流 | LGPL-3.0-only（批量精确匹配，Modrinth travelersbackpack 同源） | ✅（Modrinth 版本含 1.12.2） | 1.12.2 线稳定（GotoLink 版） | 无 | 低 | 收录 |

## 统计

- 共核查：64 行
- 直接收录（低风险）：33 条
- 收录但需风险标注：20 条（The Aether、The Betweenlands、The Erebus、The Midnight、Thermal 系 CoFH 6 条、Thermal Logistics、Thermal Tinkering、Tinker I/O、Tinkers Extras、Tool Progression、Torch Slabs、ToroHealth、Tough As Nails、Touhou Little Maid、Trash Cans、Transparent GUI and HUD，详见各行）
- 二选一（须去重，共 9 组、涉及 10 行）：
  1. Tinkers Construct ↔ Tinkers' Construct（行 3078/3084，同一模组）
  2. Tinkers Aether ↔ Tinkers' Aether（行 3076/3081，同一模组）
  3. The One Probe ↔ The One Probe Community Edition（行 3035/3036，**同 modid theoneprobe 硬冲突**）
  4-8. Thermal 系列 5 组连字符变体重复（Thermal Dynamics/ThermalDynamics、Thermal Expansion/ThermalExpansion、Thermal Foundation/ThermalFoundation、Thermal Innovation/ThermalInnovation、Thermal Logistics/ThermalLogistics，建议各保留无空格一行）
  9. Tinkers' Antique ↔ Tinkers' Construct（TC2 fork 实质取代原版；建议保留原版 TC，因 10+ 匠魂附属依赖 tconstruct modid）
- 另 3 组跨条目功能重叠（非硬冲突）：Tinker I/O ↔ Smeltery IO、Thermal Logistics ↔ Logistics Pipes、ToroHealth ↔ Neat
- 建议排除：1 条（The Abyss II——无 1.12.2 版本，仅 1.16.4-1.20.2，且包内已有 AbyssalCraft 承担 1.12.2 深渊内容）
- 分类错误需修正：约 12 条（The One Probe、TOP CE、The Rename Compat Project、TickCentral、TipTheScales、Tips、Toast Control、Together Forever、Too Many Efficiency Losses、TouchController、Translocators、TrashSlot、Torch Slabs 等，详见"正确分类"列）
- 许可证禁止再分发（ARR/闭源无证/受限）：The Midnight、Tough As Nails、Transparent GUI and HUD、Trash Cans（ARR）；CoFH Thermal 系 6 条（DBaJ 明令禁止整体再分发，整合包仅可提供官方下载链接）；Thermal Logistics、Tinkers Extras、Tool Progression、The Betweenlands、The Erebus（GitHub 无 LICENSE 文件，实质闭源）；Touhou Little Maid（资产 CC BY-NC-SA 4.0 非商用，条目已标 🔒，发布前需确认）；Torch Slabs（AGPL-3.0 强传染）
