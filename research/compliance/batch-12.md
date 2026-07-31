# 《回忆》整合包 模组合规核查 · batch-12（Hunger Overhaul – InfinityLib）

来源：`modlist.md` 第 1504–1612 行，共 41 个模组条目。
核查方式：以 `modrinth-results.tsv` 批量结果为基准（名字+标题对得上时直接用其许可证）；NO_HIT / 批量 ARR / 标题疑似误匹配的条目经 **mcmod.cn 站内搜索 + 详情页**逐项补查（WebFetch 走 HTTPS 直连，每模组 ≤1 次详情页、间隔 3 秒以上，限流即标"未知"不重试）；**GitHub 许可证用 `gh api` 核实**（本批核实：TehNut/HWYLA、blusunrize/ImmersiveEngineering、AlexModGuy/Ice_and_Fire、Lunatrius/InGame-Info-XML、SanAndreaP/ImmersiveCables、Flaxbeard/ImmersivePetroleum、TwistedGate/ImmersivePosts、Su5eD/IC2-Patcher、Team-AbCiv/IC2Tweaker、coolsquid/HungerTweaker、iguanaman/HungerOverhaul、xt9/InWorldCrafting、InfinityRaider/InfinityLib、MCUpdater-Mods/IGI-Addon-BloodMagic、Y3Z0N/ImmersiveFX、Shadows-of-Fire 等 16 个）；**CurseForge 页面**核实：IC2 Crop-Breeding Plugin（ic2-nei-crop-plugin，Speiger，ARR）、Immersive FX（仅 1.18.2+）；**Modrinth API** 以 `versions:1.12.2` facet 批量核实 17 个模组的 1.12.2 版本存在性。

> **本批重要发现**：
> 1. **两个条目无 1.12.2 身份**：**Immersive Fx** 在 mcmod（6110）与 CurseForge 上均为 Dynamic Surroundings 分支（Y3Z0N/Shinyflvres），只支持 1.16.5/1.18.2/1.19.2，**无 1.12.2 版本**；**I Like Vanilla** 在 mcmod/CurseForge/Modrinth 均无 1.12.2 同名模组——唯一同名物是 what42pizza 的 OptiFine 着色器（全版本通吃、自定义 Shader 许可）。两者建议核实后排除/移出 mods 目录。
> 2. **三组重复条目**：`Hwyla-1.8.26-B41_1.12.2` = Hwyla 的 jar 文件名（E2EE 源清单同款 jar）；`ImmersiveEngineering-0.12-92` = Immersive Engineering（源清单用 0.12-98）；`InGameInfoXML` = InGame Info XML。各保留一条。
> 3. **批量表误匹配修正**：IC2 Tweaker（批量命中"IC2 Seedbag Display"）实为 Team-AbCiv 的 CrT 附属，**Unlicense**；Immersive Posts（批量命中 BREU）实为 TwistedGate 作品，**自定义许可**；InWorldCrafting（批量命中 Chocobo）实为 xt9 作品，**无 LICENSE → ARR**；InfinityLib（批量命中"Infinity With Mending"）实为 **InfinityRaider 的前置库，MIT**；I Like Vanilla（批量命中着色器）为错误匹配。
> 4. **核心冲突核查**：与星系 Galacticraft、AE2UEL、暮色、神秘时代 TC6 **均无直接冲突**；唯一需实测的关联是 **Immersive Cables（1.3.2，面向 AE2 rv6）与包内 AE2UEL 的兼容性**。包内 TOP 与 Hwyla 为 Waila 系并存常见组合；Wawla 是 Hwyla 的官方附属（设计共存）。
> 5. **口碑警示**：Hunger Overhaul 红票 38(67%)——难度改动大、口碑分化；IC2 Patcher 红票 4(80%) 且官方提示"安装前备份存档"（二进制补丁）；IGIExteneded 红票 6(86%) 且仅 ~199 下载（小众）。ICE 系附属 Immersive Cables（88%）、Iblis Headshots（93%）口碑正向。
> 6. **孤立依赖提示**：InfinityLib 在包内无已见消费方（Malek's Infinity Gauntlet 不依赖它），建议核实后保留或移除；Icons Removed ADS 依赖外部 "Icons" 资源包，需确认包内是否含该资源包。

| # | 模组 | 正确分类 | 当前分类 | 许可证 | 1.12.2 | 开发状态 | 冲突/重复 | 风险 | 结论 |
|---|------|---------|---------|--------|--------|---------|-----------|------|------|
| 1 | Hunger Overhaul | 生存/难度（饥饿系统重平衡，食物值/成熟期/口渴机制大改） | 未分类 | 开源未标注（GitHub iguanaman/HungerOverhaul 无 LICENSE 文件；mcmod 标注"整合包可自由使用"） | 有（1.3.3，2018-05-24 终版） | 停更；经典难度模组，**口碑分化：红票38(67%)/黑票19(33%)** | 需 AppleCore（包内有）；与包内 Spice of Life/Pam's 联动；**全包食物/饥饿数值大改，与饥饿类玩法强相关** | 中-高（口碑分化+难度改动面大，需整包平衡验证） | 收录但风险标注 |
| 2 | HungerTweaker | 前置库/魔改（CraftTweaker 附属：脚本调 AppleCore 食物与饥饿 API） | 未分类 | Unlicense（GitHub coolsquid/HungerTweaker 核实） | 有（仅 1.12.2） | 停更（mcmod 7796，红票1/黑票0） | 需 AppleCore + CraftTweaker（包内均有）；与 #1 Hunger Overhaul 配套使用 | 低 | 收录 |
| 3 | HuntingDimension | 维度探索（狩猎怪物的独立维度） | 维度探索 | LGPL-2.1-only（批量表） | 有（Modrinth versions:1.12.2 facet 确认） | 1.12.2 线停更（Darkhax，36 个版本） | 无核心冲突；维度玩法独立 | 无-低 | 收录 |
| 4 | Hwyla | 辅助优化（方块信息 HUD） | 辅助优化 | CC-BY-NC-SA-4.0（批量表；GitHub TehNut/HWYLA LICENSE 文本核实一致） | 有（1.8.26-B41） | 停更（作者转 WTHIT；1.12.2 最终版稳定、生态标配） | 与包内 TOP（The One Probe）同为 Waila 系并存常见；Wawla 是其官方附属（设计共存） | 低-中（停更+CC-BY-NC-SA 注明；与 TOP 显示重叠） | 收录但风险标注 |
| 5 | Hwyla-1.8.26-B41_1.12.2 | 辅助优化（= #4 Hwyla 的 jar 文件条目） | 辅助优化 | 同 #4（CC-BY-NC-SA-4.0） | 有 | 同 #4 | **与 #4 完全重复**（E2EE 源清单 jar 即 Hwyla-1.8.26-B41_1.12.2.jar） | 高（重复） | 建议排除（去重） |
| 6 | I Know What I'm Doing | 辅助优化（抑制新存档教程提示） | 未分类 | Apache-2.0（批量表） | 有（Modrinth facet 确认） | 维护线（2023-01 更新，8 版本） | 无冲突 | 无-低 | 收录 |
| 7 | I Like Vanilla | 待核实（无 1.12.2 同名模组；疑似着色器/资源包误录） | 未分类 | 未知（同名 Modrinth/CF 项目为 what42pizza 的 OptiFine 着色器，自定义 Shader 许可；mcmod 无词条） | 无（同名物为着色器，无 1.12.2 模组身份） | 无法定位 | 若为着色器需 OptiFine 且应移入 shaderpacks | 高（身份不明） | 建议排除/核实原名 |
| 8 | I18nUpdateMod | 辅助优化（汉化/多语言资源更新） | 辅助优化 | AGPL-3.0-only（批量表） | 有（3.x 线） | 活跃（xfl03 维护，2025-11 更新，1567 万下载） | 无冲突 | 无 | 收录 |
| 9 | IC2 Crop-Breeding Plugin | 科技（IC2 附属：作物培育模拟计算器） | 科技 | ARR（CF 页核实：Speiger，"All Rights Reserved"） | 有（1.12.2，2020-04-27 终版，169 万下载） | 停更（1.7.10/1.12 双线） | 需 IC2（包内有）；与 IC2 作物系统配套 | 低-中（ARR+停更注明） | 收录但风险标注 |
| 10 | IC2 Patcher | 科技（IC2 附属补丁：量子装甲/燃料棒等 Bug 修复） | 科技 | Unlicense（GitHub Su5eD/IC2-Patcher 核实） | 有（仅 1.12.2，2.0.13） | 维护线（Su5eD 2026-05 仍在更新） | 需 IC2（包内有）；**二进制补丁，官方提示"安装前备份存档"**；口碑分化：红票4(80%)/黑票1(20%) | 中（二进制补丁改原版行为+口碑） | 收录但风险标注 |
| 11 | IC2 Tweaker | 前置库/魔改（CraftTweaker 集成：IC2 实验版配方脚本化） | 科技 | Unlicense（GitHub Team-AbCiv/IC2Tweaker 核实；批量表误匹配"IC2 Seedbag Display"已修正） | 有（0.2.1+build.4） | 停更（2023 后无更新） | 需 IC2 + CraftTweaker（包内均有）；无冲突 | 低 | 收录 |
| 12 | ID Squeezer Tweak | 辅助优化（修复集成动力 ID 挤压机低 TPS 失灵） | 未分类 | 开源未标注（mcmod 1654 标注开源；GitHub 无 LICENSE 文件；作者 Shadows-of-Fire） | 有（1.12.2 + 1.19.2，SqueezerPatch-1.12.2-1.0.0） | 停更（红票2/黑票0，100%正向） | **注意"ID"= 集成动力(Integrated Dynamics) 而非工业先行**；需 ID（包内有） | 低-中（许可未标注） | 收录但风险标注 |
| 13 | IFPatcher | 辅助优化（服务端补丁：修复工业先行 EOL 后的已知 Bug） | 辅助优化 | MIT（批量表 + Modrinth ifpatcher 核实一致） | 有（2.5.0；仅 1.12.2，服务端） | 活跃（eve0415，2026-05 更新） | 需 Industrial Foregoing（包内有，同批 #39）；正向补丁关系 | 低 | 收录 |
| 14 | IGIExteneded | 辅助优化（IGI 信息扩展：TPS/MSPT 自定义显示） | 未分类 | LGPL-3.0（mcmod 7185 核实） | 有（仅 1.12.2） | 停更（Hikari_Nova；**仅 ~199 下载，红票6(86%)/黑票1(14%)**） | 需 InGameInfoXML + LunatriusCore（包内均有，同批 #34）；服务端需同装 | 中（极小众+依赖已停更的 IGI） | 收录但风险标注 |
| 15 | Iblis Headshots | 战斗/玩法（枪械爆头判定独立模组） | 未分类 | 闭源 ARR（mcmod 3107 标注闭源） | 有（1.12/1.12.1/1.12.2） | 停更（好评 93%：红票13/黑票1） | 与恶魔(Iblis)本体**不兼容**（包内无本体，无碍）；与包内枪械模组配合；与 Epic Fight 等战斗改动共存需实测 | 低-中（闭源+战斗规则改动） | 收录但风险标注 |
| 16 | Ice and Fire: Dragons | 生物（冰与火：龙与神话生物） | 生物 | LGPL-3.0-only（批量表；GitHub AlexModGuy/Ice_and_Fire LICENSE 核实一致） | 有（2.1.12-1.0 终版，584 万下载） | 1.12.2 线停更（2023 终版，官方转高版本线） | 与星系/AE2UEL/暮色/TC6 无冲突；可与 #32 In Control! 配置生成 | 低（停更注明，1.12.2 线成熟） | 收录 |
| 17 | Icon Xaero's | 辅助优化（Xaero's 地图图标扩展，实体/生物群系图标） | 辅助优化 | ARR（批量表） | 有（Modrinth facet 确认） | 活跃（2026-03 更新，469 万下载） | 需 Xaero's Minimap/World Map（包内有）；无冲突 | 低（ARR 注明） | 收录 |
| 18 | Icons Removed ADS | 辅助优化/装饰（移除 "Icons" 资源包的水印广告） | 未分类 | ARR（批量表） | 有（Modrinth facet 确认） | 维护中（2025-09 更新） | **依赖外部 "Icons" 资源包**——需确认包内是否含该资源包，否则无意义 | 中（依赖外部资源包） | 收录但风险标注 |
| 19 | Idle Tweaks | 辅助优化（后台/闲置时降低资源占用，性能类） | 辅助优化 | CC-BY-NC-ND-4.0（批量表） | 有（Modrinth facet 确认） | 活跃（2026-04 更新） | 客户端性能类，无冲突 | 低（CC-BY-NC-ND 注明） | 收录 |
| 20 | Immersive Cables | 科技（IE 附属：AE2/RS 沉浸风格线缆） | 科技 | 开源/自定义（GitHub SanAndreaP/ImmersiveCables LICENSE NOASSERTION；mcmod 标注开源；批量表 NO_HIT 已补查） | 有（1.3.2） | 停更（好评 88%：红票52/黑票7） | 需 IE（包内有）；**与包内 AE2UEL 兼容需实测**（1.3.2 面向 AE2 rv6，AE2UEL 为兼容分支通常可用）；与包内 Integrated Tunnels 等线缆玩法重叠（可共存） | 中（自定义许可+AE2UEL 实测） | 收录但风险标注 |
| 21 | Immersive Combat | 战斗/玩法（攻击动画等战斗增强，含配置） | 科技 | MIT（批量表） | 有（唯一版本，2023-07-21，9915 下载） | 一次性发布/无后续（仅 1 个版本） | 战斗规则改动，与 #15 Iblis Headshots、Epic Fight 等共存需实测 | 中（小众+一次性发布） | 收录但风险标注 |
| 22 | Immersive Engineering | 科技（沉浸工程：多方块科技核心模组） | 科技 | 自定义（批量表 LicenseRef-Custom；GitHub blusunrize/ImmersiveEngineering LICENSE NOASSERTION 核实一致） | 有（0.12-92/98） | 1.12.2 线停更（0.12 终版，生态标配、稳定） | 与星系/AE2UEL/暮色/TC6 无冲突；本批 IE 附属族（#20/24/25/26/27）依赖它 | 低 | 收录 |
| 23 | Immersive Fx | 辅助优化/音效（Dynamic Surroundings 分支）——**无 1.12.2 版** | 科技 | GPL-3.0（GitHub Y3Z0N/ImmersiveFX——但版本线不符） | **无**（mcmod 6110 / CF immersive-fx 仅 1.16.5/1.18.2/1.19.2） | 停更（红票7/黑票0，但版本不对） | **版本不符，1.12.2 整合包不可用**；包内已有 Dynamic Surroundings 本体（前代批次） | 高（版本不符） | 建议排除/核实原名 |
| 24 | Immersive Interfaces - Mod Support Unofficial | 科技（IE 附属：与其他模组接口兼容） | 科技 | ARR（批量表） | 有（Modrinth facet 确认） | 活跃（Bareneil，2026-04 更新，29 版本） | 需 IE；提供与血魔/暮色等接口（正向）；无冲突 | 低（ARR 注明） | 收录 |
| 25 | Immersive Petroleum | 科技（IE 附属：石油加工） | 科技 | ARR（GitHub Flaxbeard/ImmersivePetroleum 无 LICENSE 文件核实） | 有（1.1.10） | 停更（2019 后无更新，经典附属） | 需 IE；与包内 Tweaked Petroleum/JEIP 等配套（另批） | 低-中（ARR+停更注明） | 收录但风险标注 |
| 26 | Immersive Posts | 科技/装饰（IE 附属：木质/铝/钢柱结构件） | 科技 | 自定义（GitHub TwistedGate/ImmersivePosts LICENSE NOASSERTION；批量表误匹配 BREU 已修正） | 有（0.2.1） | 1.12.2 线维护中（仓库 2026-01 更新） | 需 IE；纯装饰结构，无冲突 | 低（自定义许可注明） | 收录 |
| 27 | Immersive Technology | 科技（IE 附属：多方块能源科技，MCT 系） | 科技 | GPL-3.0-only（批量表） | 有（1.9.102） | 1.12.2 线停更 | 需 IE；与包内其他 IE 附属共存常见 | 低 | 收录 |
| 28 | Immersive Vehicles | 科技（MTS 载具系统） | 科技 | ARR（批量表） | 有（0.4.x 线） | 1.12.2 线维护中（持续更新） | 需前置库（MTS 系）；与 IE 无冲突；内容包 #29 配套 | 低（ARR 注明） | 收录 |
| 29 | Immersive Vehicles - Official Content Pack [OCP] - Planes & Cars | 科技（#28 官方内容包：飞机与汽车） | 科技 | ARR（批量表） | 有 | 与 #28 同步维护 | 需 #28；无独立冲突 | 低（ARR 注明） | 收录 |
| 30 | ImmersiveEngineering-0.12-92 | 科技（= #22 Immersive Engineering 的 jar 文件条目） | 科技 | 同 #22（自定义） | 有 | 同 #22 | **与 #22 完全重复**（源清单用 0.12-98.jar） | 高（重复） | 建议排除（去重） |
| 31 | Improvable Skills | 玩法/RPG（技能与能力升级系统） | 未分类 | ARR（批量表） | 有（Modrinth facet 确认） | 维护中（Zeith，2025-01 更新，27 版本） | 无核心冲突（技能类与战斗模组共存常见） | 低（ARR 注明） | 收录 |
| 32 | In Control! | 辅助优化/玩法（刷怪规则配置，服务端） | 未分类 | MIT（批量表） | 有（3.9.18） | 活跃（McJty 持续维护） | 与 #16 IAF 生成配置正向联动；与包内其他刷怪控制类（Bad Mobs 等）功能部分重叠，建议只留一个控制中枢 | 低（重叠提示） | 收录 |
| 33 | In-Game Account Switcher | 辅助优化（游戏内账号切换） | **魔法（误）** | LGPL-3.0-or-later（批量表） | 有（Modrinth facet 确认，423 版本） | 活跃（2026-06 更新，467 万下载） | 无冲突（需重登账号） | 无-低 | 收录（分类修正） |
| 34 | InGame Info XML | 辅助优化（XML 自定义 HUD 信息显示） | 辅助优化 | MIT（GitHub Lunatrius/InGame-Info-XML 核实） | 有（1.7.3） | 停更（Lunatrius 停更，生态经典） | 需 LunatriusCore（包内有）；#14/#35 依赖它 | 低（停更注明） | 收录 |
| 35 | InGame Info XML Addon - Blood Magic | 辅助优化（IGI 血魔信息标签附属） | **魔法（误）** | Apache-2.0（GitHub MCUpdater-Mods/IGI-Addon-BloodMagic 核实） | 有（2019 终版） | 停更（2019-11） | 需 InGameInfoXML + Blood Magic（包内均有）；**极冷门**，依赖链整体停更 | 中（极冷门+依赖停更链） | 收录但风险标注（分类修正） |
| 36 | InGameInfoXML | 辅助优化（= #34 InGame Info XML 的重复条目） | 未分类 | 同 #34（MIT） | 有 | 同 #34 | **与 #34 完全重复** | 高（重复） | 建议排除（去重） |
| 37 | InWorldCrafting | 玩法/科技（CraftTweaker 世界合成：液体/火焰/爆炸触发合成） | 未分类 | ARR（GitHub xt9/InWorldCrafting 无 LICENSE 文件核实；批量表误匹配 Chocobo 已修正） | 有（1.2.0） | 停更（2020 后无更新） | 需 CraftTweaker（包内有）；无冲突 | 低-中（ARR+停更注明） | 收录但风险标注 |
| 38 | Industrial Craft | 科技（IC2 工业时代 2） | 科技 | ARR（批量表） | 有（2.8.222-ex112） | 1.12.2 线停更（终版成熟） | 与星系/AE2UEL/暮色/TC6 无冲突；#9/#10/#11 依附；电力互通走转换件 | 低（ARR 注明） | 收录 |
| 39 | Industrial Foregoing | 科技（工业先行：自动化机器集合） | 科技 | MIT（批量表） | 有（1.12.13-237） | 1.12.2 线停更（官方 EOL，现代线活跃）；#13 IFPatcher 修复其遗留 Bug | 无冲突 | 低 | 收录 |
| 40 | Infinite Night Vision | 辅助优化（无限夜视，客户端） | 未分类 | ARR（批量表） | 有（Modrinth facet 确认，34 版本） | 活跃（2026-06 更新） | 无冲突 | 低（ARR 注明） | 收录 |
| 41 | InfinityLib | 前置库（InfinityRaider 系列库） | 前置库 | MIT（GitHub InfinityRaider/InfinityLib 核实；批量表误匹配"Infinity With Mending"已修正） | 有（1.12.0） | 1.12.2 线停更（2022 后仓库未更新） | **包内未见依赖方**（Malek's Infinity Gauntlet 不依赖它；infinitylib-1.12.0 为同库 jar 重复条目，另批）——孤立库 | 中（孤立依赖，建议核实消费方） | 收录但风险标注 |

## 统计

- **收录 22**：HuntingDimension、I Know What I'm Doing、I18nUpdateMod、IFPatcher、Ice and Fire: Dragons、Icon Xaero's、Idle Tweaks、Immersive Engineering、Immersive Interfaces、Immersive Posts、Immersive Technology、Immersive Vehicles、OCP、Improvable Skills、In Control!、In-Game Account Switcher、InGame Info XML、Industrial Craft、Industrial Foregoing、Infinite Night Vision、HungerTweaker、IC2 Tweaker
- **风险 14（收录但风险标注）**：Hunger Overhaul（口碑 67% 红票+难度大改）、Hwyla（停更+与 TOP 并存）、IC2 Crop-Breeding Plugin（ARR+停更）、IC2 Patcher（二进制补丁+红票 80%+备份存档提示）、ID Squeezer Tweak（许可未标注）、IGIExteneded（极小众+依赖停更 IGI）、Iblis Headshots（闭源+战斗共存实测）、Immersive Cables（自定义许可+AE2UEL 实测）、Immersive Combat（一次性发布）、Immersive Petroleum（ARR+停更）、InGame Info XML Addon - Blood Magic（极冷门+停更依赖链）、InWorldCrafting（ARR+停更）、InfinityLib（孤立依赖）、Icons Removed ADS（依赖外部资源包）
- **排除 5**：Immersive Fx（**无 1.12.2 版本**）、I Like Vanilla（**无法定位 1.12.2 同名模组**）、Hwyla-1.8.26-B41_1.12.2（=Hwyla 重复）、ImmersiveEngineering-0.12-92（=IE 重复）、InGameInfoXML（=IGI 重复）
- **分类错误/待归位 18**（未分类→生存/辅助优化/战斗/前置库等 15 个；魔法→辅助优化 2 个：In-Game Account Switcher、IGI Blood Magic 附属；科技→战斗 1 个：Immersive Combat；另有 3 条为重复/无法定位条目）：详见上表
- **批量表误匹配修正 5 个**：IC2 Tweaker（→Unlicense）、Immersive Posts（→自定义）、InWorldCrafting（→ARR）、InfinityLib（→MIT）、I Like Vanilla（→着色器误匹配）

> 构建提示：本批重点——① 去重 3 组（Hwyla/IGI/IE jar 条目），剔除 Immersive Fx 与 I Like Vanilla 两个无 1.12.2 身份条目；② IC2 系（本体+Patcher+Tweaker+Crop-Breeding）配套完整、Unlicense 三件套，但 Patcher 按官方提示备份存档；③ Immersive Cables 与 AE2UEL 接线实测；④ 饥饿系（Hunger Overhaul+HungerTweaker+AppleCore）数值改动大，需整包平衡验证；⑤ IGI 系（IGI+IGIExteneded+血魔附属）依赖链全部停更，可保留但勿再扩展；⑥ InfinityLib 确认消费方后再定去留。
