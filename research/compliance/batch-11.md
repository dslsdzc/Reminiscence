# 《回忆》整合包 模组合规核查 · batch-11（GardenOfGlass – Human Era）

来源：`modlist.md` 第 1374–1500 行，共 42 个模组条目。
核查方式：以 `modrinth-results.tsv` 批量结果为基准（名字+标题对得上时直接用其许可证）；NO_HIT / 批量 ARR / 标题疑似误匹配的条目经 **mcmod.cn 站内搜索 + 详情页**逐项补查（HTTP 直连，每模组 1 次详情页、间隔 4 秒以上，页面失败按"未知"跳过不重试）；**GitHub 许可证用 `gh api` 逐仓库核实**（本批核实：NightKosh/Gravestone-mod、bdew-minecraft/gendustry、DarkhaxDev/Grue=Shinoow/Grue、GoryMoon/GlobalGameRules、Silentine/GrimoireOfGaia、Gigaherz/Guidebook、JackyyTV/GunpowderLib、Ninjabrain1/Gendustry-JEI-Addon、CleanroomMC/HadEnoughCharacters、pupnewfster/GasConduits、mactso/HarderBranchMining、blackoutroulette/HomingExpOrbs、bl4ckscor3/GetItTogetherDrops、phantamanta44/give-me-back-my-hp、dragon-forge/HammerLib、embeddedt/Hesperus 等 16 个）；**CurseForge 页面**（WebFetch 直读）核实：Gendustry（MMPL v1.0.1）、Headcrumbs（ARR）、Hooked（MIT）、Give Me Back My HP（Custom License）、Garden of Glass（1.12.2 文件存在）；**Modrinth API** 核实：Glowy Nether Portals、Glowing（资源包，覆盖 1.12.2）等资源包身份与版本覆盖。

> **本批重要发现**：
> 1. **四个资源包混入 mods 清单**：Glowing、Glowing Ores! - Borderful Edition、Glowy Nether Portals、Human Era（均为资源包，应放 resourcepacks 目录）。
> 2. **Hesperus 是 Alfheim Lighting Engine 的祖先分支**（Phosphor → Hesperus → Alfheim Lighting Engine），作者本人明示"建议用 Alfheim Lighting Engine 代替，因为懒得更新"——包内 ALE 已在列，建议排除 Hesperus。
> 3. **物品管理器二选一**：包内 JEI 与 HEI（Had Enough Items）并存，HEI 是 JEI 的 CleanroomMC 分支（替代品），建议二选一；对应拼音搜索 JECh/HECh 亦二选一。
> 4. **抓钩重复**：Grappling Hook Mod × Hooked 功能重复二选一；**墓碑重复**：Gravestone mod × Corpse Complex（batch-06 已提示）。
> 5. **Hammer 系三连条目**：Hammer Lib / HammerCore / HammerLib 实为同一模组（Hammer Core/Hammer Lib，Zeith）。
> 6. 本批与四核心（星系 Galacticraft-Legacy / AE2UEL / 暮色 / 神秘时代 TC6）**无直接冲突**；关联点：Gendustry 与 Forestry CE、Gas Conduits 与 EnderIO CEu/Mekanism CE、Give Me Back My HP 与 Astral Sorcery 血量联动（正向）。

| # | 模组 | 正确分类 | 当前分类 | 许可证 | 1.12.2 | 开发状态 | 冲突/重复 | 风险 | 结论 |
|---|------|---------|---------|--------|--------|---------|-----------|------|------|
| 1 | GardenOfGlass | 魔法（Botania 附属：花之空岛玩法） | 未分类 | Custom（CF 标 Custom License；Vazkii 系惯例，GitHub 仓库不可查） | 有（GardenOfGlass.jar 1.12.2+2，2017-03，570 万下载；mcmod 645 收录） | 现代线活跃（2025-02 更新）；1.12.2 线停更但完整；31 包收录，红24黑3 | 需 Botania（包内有）；与包内 Ex Nihilo 空岛流派定位重叠（机制不同可共存）；Botania 系受 batch-04 "Botania Tweaks 不支持 ExtraBotany" 约束影响 | 低-中（许可未标注） | 收录 |
| 2 | Gas Conduits | 科技（EnderIO×Mekanism 附属：气体导管） | 未分类 | Unlicense（GitHub pupnewfster/GasConduits 核实，Mek 维护者托管） | 有（仅 1.12.2） | 停更（23 包收录，红4黑0） | **依赖原版 EnderIO + Mekanism——包内 EnderIO 走 CEu、Mekanism 走 CE，兼容需实测**；与 Mek 气体管道功能互补 | 中（EnderIO CEu / Mek CE 兼容实测） | 收录但风险标注 |
| 3 | GeckoLib | 前置库 | 前置库 | MIT（批量表） | 有（2.x 线） | 1.12.2 线停更；生态标准动画库（冰火/恐龙等依赖） | 无核心冲突 | 无-低 | 收录 |
| 4 | Geckolib | 前置库（= #3 同一模组的重复条目） | 前置库 | 同 #3（MIT） | 有 | 同 #3 | 重复收录 | 高（重复） | 建议排除 |
| 5 | Gendustry | 农业/科技（林业蜜蜂基因工业） | 未分类 | MMPL v1.0.1（CF 页核实；GitHub bdew-minecraft/gendustry 无 LICENSE 文件） | 有（1.12.2，CF 版本列表含） | 停更（49 包收录，红26黑5，口碑正面） | **与包内 Forestry: Community Edition 兼容性存疑**：bdew 版面向林业原版 5.8，Forestry CE 下需 thedarkcolour 的 Gendustry 移植版（GPL-3.0）——构建期实测 | 中（Forestry CE 兼容） | 收录但风险标注 |
| 6 | Gendustry JEI Addon | 科技（Gendustry 附属：JEI 机器配方联动） | 辅助优化 | MIT（GitHub Ninjabrain1/Gendustry-JEI-Addon 核实） | 有（仅 1.12.2） | 停更（20 包收录，红1黑0） | 需 Gendustry + JEI（包内均有） | 无-低 | 收录 |
| 7 | Get It Together, Drops! | 辅助优化（掉落物合并/收集规则配置） | 未分类 | MIT（GitHub bl4ckscor3/GetItTogetherDrops 核实） | 有（1.12.2） | 停更（bl4ckscor3 系经典） | 与 #39 Homing Exp Orbs 均涉掉落物处理（合并规则 vs 经验吸附），功能不同可共存 | 无 | 收录 |
| 8 | Give Me Back My HP | 辅助优化（服务端修复 MC-17876 登录不满血 Bug） | 未分类 | MIT 变体（"Good, not Evil"条款；GitHub phantamanta44/give-me-back-my-hp LICENSE.md 核实，可自由使用） | 有（仅 1.12.2） | 停更（2021；40 万+下载，服务端实用） | 作者注明对 Astral Sorcery 血量增益正常生效——包内 Astral Sorcery 已收录，正向联动 | 无-低 | 收录 |
| 9 | Global GameRules | 辅助优化（全局游戏规则/难度，服务端） | 未分类 | LGPL-3.0-or-later（GitHub GoryMoon/GlobalGameRules LICENSE 核实） | 有（1.7.10–1.20.1 全线） | 活跃（63 包收录，红11黑1） | 无冲突 | 无 | 收录 |
| 10 | Global XP | 科技（经验存储方块） | 未分类 | MIT（批量表；mcmod 5081 一致） | 有（1.12.2） | 停更（口碑正向） | 无核心冲突 | 无-低 | 收录 |
| 11 | Glowing | 装饰（资源包：发光/自发光贴图，OptiFine/CTM/CoreShaders 格式） | 未分类 | GPL-3.0（Modrinth 16olY6M5 核实——**资源包非模组**；批量表 GPL-3.0 一致） | 有（资源包覆盖 1.10–1.12.2） | 资源包（活跃，71.5 万下载） | **依赖 OptiFine 或 CTM 渲染**——与包内 Optifine Check 状态联动（同 #41 批次 Fantasy 3D CIT 的 OptiFine 依赖问题） | 中（OptiFine/CTM 依赖） | 收录但风险标注（移入 resourcepacks） |
| 12 | Glowing Ores! - Borderful Edition | 装饰（资源包：矿石发光纹理） | 世界生成 | CC-BY-NC-ND-4.0（批量表；署名+不可商用） | 有（资源包含 1.12.2） | 资源包（活跃，45.8 万下载） | 与 #11 Glowing 均为发光类资源包（矿石发光定位重叠，可共存或二选一） | 低（CC-BY-NC-ND 注明） | 收录（移入 resourcepacks） |
| 13 | Glowy Nether Portals | 装饰（资源包：下界传送门发光） | 维度探索 | ARR（Modrinth k7um3II4 核实；24.4 万下载） | 有（资源包覆盖 1.8.9–1.12.2） | 资源包（活跃） | 无冲突 | 低（ARR 注明） | 收录（移入 resourcepacks） |
| 14 | Gnetum | 辅助优化（HUD 分帧渲染性能优化） | 未分类 | LGPL-3.0（批量表；mcmod 19307 一致） | 有（Forge 1.12.2 + 1.20.1 及高版本） | 活跃（最后推荐 3 小时前，29 包收录，红11黑0） | 客户端性能类，与性能包共存建议实测 | 低 | 收录 |
| 15 | GottschCore | 前置库（Gottsch 系模组库） | 世界生成 | LGPL-3.0（批量表） | 有（1.12.2） | 停更 | 库模组；依赖它的内容模组需另行确认在包 | 低 | 收录 |
| 16 | Grappling Hook Mod | 工具武器 | 工具武器 | GPL-3.0（批量表；mcmod 989 抓钩，yyonline） | 有（1.12.2） | 停更（经典抓钩，2019 后小更新） | **与 #40 Hooked 同为抓钩模组——功能重复二选一**（本模组有附魔/铁驭机动线） | 中（重复） | 收录但风险标注（二选一） |
| 17 | Gravestone mod | 玩法（死亡墓碑掉落保护） | 辅助优化 | LGPL-3.0（GitHub NightKosh/Gravestone-mod 核实） | 有（1.12.2） | 停更（经典，口碑正面） | **与包内 Corpse Complex 功能重叠**（batch-06 已提示二选一或共存实测） | 中（重叠） | 收录但风险标注 |
| 18 | Grid | 辅助优化（客户端建筑网格，G 键配置） | 未分类 | 未标注（mcmod 18295 无开源标注；无公开 GitHub 仓库） | 有（Forge 1.12.2–1.16.5） | 小众（仅 1 包收录，红1黑0，收录时间 1 年前） | 客户端工具，无冲突 | 低-中（许可未标注+小众） | 收录但风险标注 |
| 19 | Grimoire of Gaia | 生物（神话怪物/怪物娘掉落系） | 魔法 | 自定义：代码 CC0 / 美术 ARR（GitHub Silentine/GrimoireOfGaia LICENSE.md 核实） | 有（1.12.2 移植版，Mrbysco/Bloodmc 等移植） | 移植线维护中（13 包收录，红375黑36 口碑极佳） | 简介建议配饰品栏（Baubles 包内有）；纯生物模组与 TC6/星系等无联动无冲突 | 低-中（美术 ARR 注明） | 收录 |
| 20 | GroovyScript | 辅助优化（魔改脚本引擎，CleanroomMC 系） | 未分类 | LGPL-3.0（批量表） | 有（仅 1.12.2） | 活跃（Cleanroom 生态） | 与 CraftTweaker 同为脚本魔改引擎（共存常见，Groovy 可调用 CT 内容）；无冲突 | 低 | 收录 |
| 21 | GrowableOres | 农业（可种植生长的矿石） | 世界生成 | MIT（批量表） | 有（1.12.2） | 停更（经典） | 矿石获取与 Mystical Agriculture（包内有）玩法部分重叠，可共存 | 低 | 收录 |
| 22 | Grue | 生物（黑暗中袭击玩家的恐怖挑战怪） | 未分类 | 未标注（GitHub Shinoow/Grue 无 LICENSE 文件；mcmod 无开源标注） | 有（1.7.10–1.12.2） | 停更（12 包收录；**口碑分化：25% 稳定 / 37.5% 好玩 / 68.75% 认为变态**——纯挑战向） | 无核心冲突；与包内恐怖/寄生虫类叠加时体验冲击注意 | 中（许可未标注+口碑） | 收录但风险标注 |
| 23 | GuGu Utils | 辅助优化（多功能实用工具，国创） | 未分类 | MIT（批量表） | 有（1.12.2） | 停更 | 与包内工具类部分重叠（共存常见） | 低 | 收录 |
| 24 | Guide-API | 前置库（指南书库） | 辅助优化 | MIT（批量表） | 有（1.12.2） | 停更 | 库模组，无冲突 | 低 | 收录 |
| 25 | Guidebook | 前置库（自定义书籍/指南库，Gigaherz） | 辅助优化 | 自定义 BSD 式（GitHub Gigaherz/Guidebook LICENSE.txt：允许再分发、需保留版权声明） | 有（1.10.2–1.21.1） | 停更（12 包收录，红2黑0） | **与包内 Patchouli 同为书籍指南库——定位重叠**（共存常见但实际使用面窄） | 低-中（重叠+小众） | 收录但风险标注 |
| 26 | GunpowderLib | 前置库 | 前置库 | Jackyy 自定义许可（GitHub LICENSE.md：ARR + **官方版可在任意整合包使用**） | 有（1.12.2 等） | 停更（75 包收录） | 依赖方：方块交换器/Simple Sponge/维度食物/Avaritia Tweaks/工业先锋附属——包内有 Avaritia Tweaks 等 | 低 | 收录 |
| 27 | HT's TreeChop | 辅助优化（快速砍树） | 未分类 | MIT（批量表） | 有（1.12.2） | 活跃 | 与包内 Fast Leaf Decay/Quick Leaf Decay 生态兼容（砍树后树叶腐烂联动正向）；与连锁采矿类注意叠加 | 低 | 收录 |
| 28 | Had Enough Characters | 辅助优化（HEI 拼音搜索，JECh 的 HEI 分支） | 辅助优化 | LGPL-3.0（GitHub CleanroomMC/HadEnoughCharacters 核实） | 有（仅 1.12.2） | 停更（27 包收录，红9黑0） | 需 HEI（包内 #29）；**与包内 JECh（JustEnoughCharacters）功能重复——取决于 #29 与 JEI 的物品管理器取舍，HECh/JECh 二选一** | 中（重复/依赖取舍） | 收录但风险标注 |
| 29 | Had Enough Items | 辅助优化（物品管理器，JEI 的 CleanroomMC 分支） | 辅助优化 | MIT（批量表） | 有（仅 1.12.2） | 停更（CleanroomMC 系） | **与包内 JEI 同为物品管理器——HEI 是 JEI 替代品，同装可能冲突，建议二选一**；HECh（#28）需此模组 | 中（重复） | 收录但风险标注（二选一） |
| 30 | Hammer Lib | 前置库 | 前置库 | ARR（批量表；GitHub dragon-forge/HammerLib 无 LICENSE 文件一致） | 有（1.12.2；mcmod 756 Zeith） | 活跃（122 包收录，红14黑8） | **与 #31 HammerCore、#32 HammerLib 为同一模组（Hammer Core/Hammer Lib）三连条目——保留一个即可** | 高（重复） | 收录（去重后） |
| 31 | HammerCore | 前置库（= Hammer Core，即 #30 同一模组） | 世界生成 | 同 #30（ARR） | 有 | 同 #30 | 重复收录（Hammer Core 即 Hammer Lib） | 高（重复） | 建议排除 |
| 32 | HammerLib | 前置库（= #30 同一模组） | 前置库 | 同 #30（ARR） | 有 | 同 #30 | 重复收录 | 高（重复） | 建议排除 |
| 33 | Hardcore Hearts | 生物（击杀掉落红心、提升血量上限） | 世界生成 | CC0-1.0（批量表） | 有（1.12.2） | 停更（经典） | 与包内 Scaling Health 等血量机制模组叠加注意；与 FirstAid 部位血量交互建议实测 | 低-中 | 收录 |
| 34 | Harder Branch Mining | 辅助优化（挖掘疲劳惩罚，mactso） | 未分类 | MIT（GitHub mactso/HarderBranchMining 核实） | 有（1.12.2） | 停更（小工具） | 与 mactso 系（In Control! 包内有）同作者；无冲突 | 低 | 收录 |
| 35 | Headcrumbs | 装饰（生物/名人头颅掉落） | 装饰 | ARR（CF 页核实，TurkeyDev；mcmod 431 一致） | 有（1.7.10–1.12.2） | 停更（2018；红34黑3 口碑正面） | 无核心冲突；支持热力/暮色/TC 系生物头颅 | 低（ARR 注明） | 收录 |
| 36 | Hesperus | 辅助优化（Phosphor 1.12.2 性能分支） | 未分类 | 未标注（GitHub 仓库已删；Phosphor fork 血统 LGPL） | 有（仅 1.12.2） | 停更（**作者明示：建议用 Alfheim Lighting Engine 代替，因为懒得更新**） | **与包内 Alfheim Lighting Engine（本模组的后代分支）同源功能重复——作者推荐 ALE，建议排除 Hesperus 保留 ALE** | 高（重复） | 建议排除（保留 ALE） |
| 37 | Hit Indication | 辅助优化（命中方向指示 HUD） | 未分类 | CC-BY-SA-4.0（批量表） | 有（1.12.2） | 停更 | 客户端 HUD，无冲突 | 低 | 收录 |
| 38 | Hole Filler Mod | 辅助优化（自动填坑工具） | 未分类 | 未标注（mcmod 3595 无开源标注；作者无公开仓库） | 有（Forge 1.12.2） | 活跃（最后编辑 2 月前；4 包收录，红10黑0） | 无冲突 | 低-中（许可未标注） | 收录但风险标注 |
| 39 | Homing Exp Orbs | 辅助优化（经验球吸附） | 未分类 | GPL-3.0（GitHub blackoutroulette/HomingExpOrbs 核实） | 有（1.12.2） | 活跃（高版本线持续更新） | 与 #7 掉落物处理可共存；无核心冲突 | 低 | 收录 |
| 40 | Hooked | 工具武器（抓钩，fiskfille/thecodewarrior1） | 未分类 | MIT（CF 页核实） | 有（1.12.2 1.0.3） | 现代线活跃（2.0.2，2025）；1.12.2 线停更 | **与 #16 Grappling Hook Mod 功能重复——二选一**（Hooked 无耐久/键位发射 vs 抓钩附魔线） | 中（重复） | 收录但风险标注（二选一） |
| 41 | Horse Tweaks | 玩法（马鞍升级/骑马增强） | 辅助优化 | ARR（BlayTheNinth；官方整合包许可页 mods.twelveiterations.com/permissions 放行） | 有（仅 1.12.2） | 停更（2021；8 包收录，红1黑0） | Blay 系无冲突 | 低（ARR 注明许可页） | 收录 |
| 42 | Human Era: Villagers & Illagers X Fresh Animations | 装饰（资源包：村民/灾厄村民动画包） | 辅助优化 | CC-BY-SA-4.0（批量表） | 有（资源包不挑版本；配 Fresh Animations 本体效果最佳） | 资源包（活跃） | 资源包，无冲突 | 低 | 收录（移入 resourcepacks） |

## 统计

- **收录 25**：GeckoLib、GardenOfGlass、Gendustry JEI Addon、Get It Together Drops!、Give Me Back My HP、Global GameRules、Global XP、Glowing Ores! - Borderful Edition、Glowy Nether Portals、Gnetum、GottschCore、Grimoire of Gaia、GroovyScript、GrowableOres、GuGu Utils、Guide-API、GunpowderLib、HT's TreeChop、Hardcore Hearts、Harder Branch Mining、Headcrumbs、Hit Indication、Homing Exp Orbs、Horse Tweaks、Human Era
- **风险 13（收录但风险标注）**：Gas Conduits（EnderIO CEu/Mek CE 实测）、Gendustry（Forestry CE 实测）、Glowing（OptiFine/CTM 依赖资源包）、Grappling Hook Mod（与 Hooked 二选一）、Gravestone mod（与 Corpse Complex 重叠）、Grid（许可未标注+小众）、Grue（许可未标注+口碑 25% 稳定）、Guidebook（与 Patchouli 重叠）、Had Enough Characters（HECh/JECh 二选一）、Had Enough Items（与 JEI 二选一）、Hammer Lib（三连条目去重）、Hole Filler Mod（许可未标注）、Hooked（与 Grappling Hook Mod 二选一）
- **排除 4**：Geckolib（#3 重复条目）、HammerCore（Hammer Core 即 Hammer Lib）、HammerLib（同上重复）、**Hesperus（与包内 Alfheim Lighting Engine 同源功能重复，作者本人推荐 ALE 替代）**
- **分类错误 33**（未分类→正确归属 20 个；世界生成→装饰/前置库/农业/生物 6 个；魔法→生物 1 个；辅助优化→科技/玩法/前置库/装饰 6 个，其中 4 个资源包归入装饰）：详见上表
- **资源包移入 resourcepacks 4 个**：Glowing、Glowing Ores!、Glowy Nether Portals、Human Era

> 构建提示：本批重点——① 资源包 4 个移出 mods 目录；② 物品管理器 JEI/HEI 与拼音搜索 JECh/HECh 的取舍需与前期批次联动决策；③ Gendustry 与 Forestry CE、Gas Conduits 与 EnderIO CEu/Mekanism CE 两组兼容实测；④ 抓钩（Grappling Hook Mod/Hooked）、墓碑（Gravestone mod/Corpse Complex）、光照（Hesperus/Alfheim Lighting Engine）三组二选一；⑤ Hammer Lib 三连条目去重为 1 个。
