# 已知问题与构建处理记录

> 记录审查/测试中发现的问题与处理方案。随核查推进更新。

## MixinBooter（Cleanroom 核心前置，必收）

- 问题：玩家反馈高版本导致启动失败（游戏界面不出现）
- 原因：加载顺序问题（1.12.2 已知坑）
- 处理：打包时文件名加 `!` 前缀强制最先加载（如 `!MixinBooter.jar`）；其他模组文件名避免中文前缀
- 状态：构建注意事项（不排除）

## Lord Craft 2.10.1

- 问题：半成品（社区评价：任务 bug、研究手册未完成、无汉化）
- 处理：已排除（modlist v8）

## Mahou Tsukai（神话魔法）

- 问题：与星系（Galacticraft）维度 ID 冲突 + 玩法互搏
- 处理：已排除（modlist v9）

## Emojicord / Emojiful

- 问题：功能重复（聊天表情）
- 处理：删 Emojicord，保留 Emojiful（modlist v8）

## JEI Villagers + MCA

- 问题：MCA 大改村民后交易查看意义小（重复/冲突）
- 处理：删 JEI Villagers（modlist v8）

## MixinBootstrap（核心前置，保留）

- 关系：Phosphor 1.12.2 版与 Snow! Real Magic 内置 Mixin 引导（功能重叠信号）
- 处理：保留（非所有模组内置引导，多数依赖 MixinBootstrap）；构建时依赖解析注意三者 Mixin 版本兼容
- 状态：构建注意事项

## Mob Grinding Utils（怪物捣碎器，保留）

- 案例：1.20.1 版与莱特兰-恶意不兼容（击杀实体世界凝固）——莱特兰为 1.20 模组，本包（1.12.2）不受该案例直接波及
- 关注：其"实体死亡处理"钩子实现——构建期测试与生物模组（泰坦/寄生虫/凋灵风暴）的交互
- 状态：构建期测试关注点

## Mod Name Tooltip

- 问题：与 JEI 功能重复（JEI 物品详情已显示模组归属）
- 处理：已排除（modlist v10）

## Batch-02 核查发现（第 150-277 行，50 个）

**匠魂分支互斥（高优先级）**：Antique Armory 需 Tinkers' Antique、Armory Expansion 需原版 TiCon+Construct's Armory——两分支不可共存，全包须统一（用原版匠魂线则删 Antique Armory）

**维度 ID 配置**：Aroma 挖矿维度可配置，须避开星系（-27~-32）与暮色森林（ID 7）；阿图姆固定 ID 17——构建期维度 ID 分配表必须核查

**重复条目（12 条→6 组）**：AppleCore×2 / AppleSkin×2 / Aqua Acrobatics×2 等——modlist 版本残留，统一去重

**评论级风险**：Ambient Environment（与 Better Biome Transitions 不兼容）· Artisan Worktables（无序配方崩端 BUG）· Armourer's Workshop（动画冲突）· Apotheosis（极端附魔破坏平衡——平衡引擎接管点）· Astral Sorcery（Optifine 天空问题）· Ancient Spellcraft（前置链深：EB Wizardry+MixinBooter+Baubles）

**许可证**：ArtemisLib/Antique Armory GPL-3.0（CC 包可收录，注明即可）· Aroma 系闭源自定义条款（允许整合包分发）· Ancient Spellcraft 无 LICENSE（风险标注）

## Batch-01 核查发现（第 25-149 行，50 个）

**已排除 6**：AE2 Network Visualiser（停更闭源仅官方AE2）· Actually Subtractions（仅1.20.1）· ActuallyAdditions（重复条目）· **Advanced Rocketry（官方页明示与星系维度ID冲突/世界生成错误/氧气不通用——与核心星系直接冲突）** · AkashicTome-1.2-12（重复）· Alfheim（仅1.7.10）

**待实测 1**：Advanced Rocketry - Reworked（继承 AR 维度体系，与星系潜在冲突未声明——实测后定，冲突则随排除）

**AE2 家族版本矩阵（构建知识）**：以 AE2UEL 为核心——AE2 Stuff 须 Unofficial 分支；AE2 Fluid Crafting 用原版非 Rework；AE2WTLib 需 p455w0rd patch 防崩溃；WFT/WIT 与 AE2UEL 内置无线终端重复可裁剪

**资源包混入 mods 清单**：Serified Font、3D crops（3D Sugar Cane 等 3D 系）为资源包——应放 resourcepacks 目录非 mods

**无法核实 3 个（待人工核对 jar 来源）**：3D Sugar Cane · Advanced Alchemical Furnace · Alternative Rain Sounds

**神秘时代联动注意**：AbyssalCraft Integration 的 TC6 联动引入永久扭曲负面机制；前置须 AC 稳定版

## Batch-04 核查发现（第 445-575 行，50 个）

**已排除 8**：BloodMagic/Brandons Core×2/Bring Me The Rings!/BuildingGadgets-2.8.1/CTM-版本残留（重复条目）· BloomTech/Body Camera（无法核实——mcmod/CF/Modrinth 均无 1.12.2 条目，待人工核对 jar 来源）

**待决策（功能重复二选一）**：CC: Tweaked × OpenComputers（电脑模组双雄，本包两者都收——保留 CC:Tweaked(活跃)+OpenComputers(经典) 或二选一）；CTM × Fusion（连接纹理——本包两者都收）

**评论级**：Blockcraftery 萤石 bug 未修（用 Refurbished 分支）· Binnie's Mods 须 Patched 分支 · Botania Tweaks 官方声明不支持 ExtraBotany（本包含 ExtraBotany——注意）· Botanic Bonsai 隐藏前置 Bonsai Trees

**非模组混入**：CTR VCR 是光影包（移出 mods 清单 → shaderpacks）

**批量表 4 处误匹配已校正**：Blur/CC:Tweaked/Botania Tweaks/Body Camera 的批量许可证匹配不可信（同名不同模组）

## Batch-05 核查发现（第 579-721 行，48 个）

**已排除 13**：Cathedral/ChatFlow/Chibi/Clarity（无法核实）· Chunk Loaders（与 Chicken Chunks 功能重复）· ChickenChunks 重复条目 · ClientTweaks/Clumps/CoFHCore/CoFHWorld/CodeChickenLib 系重复条目（版本残留）

**批量表误匹配校正（重要）**：Charm/Chisel/Chisels & Bits 的批量许可证匹配均为**误匹配**（匹配到同名不同模组）——真实许可是 ARR；CoFH 系是自定义许可（"Don't Be a Jerk"）——CoFH 全家许可需单独确认

**待补 mcmod 评论核验 17 项**（WebSearch 额度耗尽时标未知）：Chococraft/ChiseledAdditions/CensoredASM 等——额度恢复后补查

## Batch-03 核查发现（第 281-441 行，50 个）

**已排除 4**：Barebones Bossbars（查无资料）· Better 3D Beds/Better Dogs（资源包，移入 resourcepacks）· Better Gendustry（查无条目 + 与 Gendustry 功能重叠）

**评论级关键**：Avaritia Tweaks 半成品实证（Botania 花未实现/忘写魔力代码——与 Complement fork 二选一保留 Complement）· Avaritiaddons 与 EIO 接口卡服（TPS 下降）· **BiblioCraft × Botania 不兼容**（本包含 Botania——实测或换 1.12.2 fork "Reshelved"）· **Better Battle Towers × RLTweaker 配置互斥**（本包含 RLTweaker2——配置 397 须落实）· BetterWaterSplashPotions 1.12.2 未证实 · Baubles 批量许可误匹配（本体未标协议，建议 Baubles-LTS 分支）

## Batch-07 核查发现（第 849-975 行，47 个）

**已排除 9**：CustomMainMenu/CyclopsCore/DarkUtils/DefaultOptions/DiscordSuite×2/Draconic-Evolution（重复条目）· Don't Clear Chat History（无 1.12.2 Forge 版，仅 Fabric）· Draconic Energy（仅 1.16.5 + 与 DE 功能重复）

**功能重复二选一**：DiscordSuite（停更闭源）vs CraftPresence → 保留 CraftPresence；Custom Starter Gear × Initial Inventory；Doomlike Dungeons × Dungeons 2（同作者，可共存注意重叠）

**OptiFine 冲突**：Custom FOV 官方声明与 OptiFine 不兼容（包内 OptiFine 状态须确认——二选一）

**维度 ID 构建期必查**：DivineRPG 8 维度 · Dimensional Doors 4 维度 · Defiled Lands 1 维度

**批量误匹配校正**：Cyclic 实为 MIT（GitHub 核实）· Default Options/Ding/DivineRPG 批量匹配不可信

## Batch-06 核查发现（第 725-845 行，43 个）

**已排除 11**：Comforts Modernized/Controlling/CookingForBlockheads/CraftTweaker2/CraftingTweaks/CreativeCore/Cucumber（重复条目）· CraftTweaker Sixik Utils（无 1.12.2，仅 1.16.5+）· Condition Overload（无法核实）· Craftify（Essential 前置存疑+停更+与 Net Music 重叠）· Crafting Tweaks 原版（保留 Unofficial 分支——Cleanroom 版支持 Avaritia/Extended Crafting 工作台）

**兼容注意**：CompatSkills × 巫术学已知冲突（mcmod 有教程方案）· Corpse Complex × Gravestone 功能重叠（二选一或共存实测）· Crash Assistant 口碑分化（57% 认为不稳定）· Congrega Mystica（TC6 附属，正面）

## Batch-08 核查发现（第 979-1126 行，49 个）

**已排除 5**：Epic Fight/Epic Knights（无 1.12.2，仅 1.16.5+）· Enchantment Level Language Patch（Forge 最低 1.13）· Dynamic View（1.20+）· **Enigmatica 2: Expert - E2E（整合包成品混入，非模组）**

**EnderIO 家族分支决策（重大）**：官方 EnderIO（Unlicense）vs **EnderIO CEu**（MIT，TeamDimensional，含 AE2/Mek/OC/RS 导管适配）——不可同装，建议保留 CEu（更适配 1.12.2 LTS）；EnderCore vs EnderCore CEu 同理

**重叠注意**：EmberRootZoo ↔ 余烬复刻（生物重复，可配置关闭）· Endorium ↔ Fancy End/Stygian End（末地改造重叠）

**批量纠偏**：Wizardry 自定义许可（整合包可用）· EnderIO CEu MIT · Dynamic Surroundings/Dynamos/EnderTweaker MIT

**风险标注 17**：许可未知类（EBlib/Endorium/Engineer's Decor/Enhanced P2P 等）+ ARR 类（Entangled/Environmental 系）+ Enhanced Audio（资源包，移入 resourcepacks）

## Batch-09 核查发现（第 1130-1238 行，45 个）

**已排除 9**（全部重复条目）：ExpandedEquivalence/ExtendedCrafting/ExtremeReactors/FTB Backups/FTB Library/FTB Utilities 及版本文件名变体

**兼容待实测**：ExtraPlanets 依赖 Galacticraft 4 系——与包内 Galacticraft-Legacy 兼容需实测（新增大量行星维度，维度 ID 必核对）；AE2UEL 生态（ExtendedAE/Extra CPUs/ExtraCells2/ECT-AE2）一次性实测

**许可证更正**：FTB 系 ARR（FTB Ltd 2025）· Ex Compressum/Farming for Blockheads ARR 但有官方整合包许可页 · ExtraCells2 = MIT

**高风险**：FTB Project EX（官方明示 WIP，物品右击可崩溃——风险标注）· Expanded Equivalence（稳定评价 40%）· Fantasy 3D Weapons CIT（依赖 OptiFine）

**功能重复二选一待定**：Extended Crafting vs Nomifactory fork · Extra Trees vs Binnie's Mods · FTB Backups vs AromaBackup · Fast Leaf Decay vs Quick Leaf Decay

## Batch-10 核查发现（第 1242-1370 行，45 个）

**已排除/去重**：FoamFix 零宽空格变体 · Forgelin 三选一（留 Continuous）· Galacticraft Legacy 重复行 · Galacticraft Tweaker 重复行

**二选一待定**：Fixeroo vs Clumps（mcmod 明示 Fixeroo 可替换 Clumps）· ForgeMultipart vs CB Multipart（同一词条）· Fusion vs CTM（遗留）· ForkedEnderTweaker vs EnderTweaker

**星系系**：Galacticraft Tweaker 对 GC-Legacy API 兼容需实测（与 ExtraPlanets 同作者 MJRLegends 生态）· Fugue 与 Cleanroom Relauncher 必需配套（正向）

**无法核实 4（待人工核对 jar）**：Find My Items And Fluids · FindMeAnyDurability · Finite Gas · Forked Proxy

**资源包**：Full Brightness（移入 resourcepacks）

## Batch-11 核查发现（第 1374-1500 行，42 个）

**已排除**：Geckolib/HammerCore（重复条目）· Hesperus（作者明示用包内 Alfheim Lighting Engine 替代）· HammerLib 三连条目去重

**资源包混入（4）**：Glowing/Glowing Ores!/Glowy Nether Portals/Human Era（移入 resourcepacks）

**二选一**：JEI × HEI 物品管理器（连带 JECh/HECh）· 抓钩（Grappling Hook × Hooked）· 墓碑（Gravestone × Corpse Complex）· Hesperus × Alfheim（已定 Alfheim）

**兼容实测**：Gendustry × Forestry CE · Gas Conduits × EnderIO CEu/Mekanism CE

**许可证**：Gendustry = MMPL v1.0.1 · Gas Conduits = Unlicense · Grimoire of Gaia = 代码 CC0/美术 ARR · Headcrumbs = ARR · GunpowderLib 自定义（整合包明示可用）

## Batch-13 核查发现（第 1616-1730 行，50 条目）

**已排除 7**：IntegrationForegoing/Inventory Tweaks 变体/InventoryHUD+ 重复/InventoryTweaks 变体/ItemPhysic 变体/JEE（重复或变体）· Item Borders（1.20+，无 1.12.2）

**二选一待定**：Inventory BogoSorter × Inventory Tweaks · Iron Backpacks × Traveler's Backpack · Iron Jetpacks × Simply Jetpacks 2 · Just Enough Calculation × Just Enough Drags · JEC × HECh（联动 batch-11）· itlt × Custom Window Title

**前置补入**：Item Stages Plus 缺 ItemStages 前置（须补入）

**TSV 误匹配纠正**：Integrated Dynamics = MIT · InvMove = LGPL-3.0 · IvToolkit 未标注（作者弃坑）

**构建期实测**：Just Enough Energistics × AE2UEL · JEI Bees × Forestry CE

## Batch-12 核查发现（第 1504-1612 行，41 条）

**已排除 5**：Immersive Fx（无 1.12.2，仅 1.16.5+）· I Like Vanilla（无 1.12.2 模组——批量表误匹配为着色器）· Hwyla/IE/InGameInfoXML 变体去重

**口碑警示**：Hunger Overhaul 红票 67%（难度大改）· IC2 Patcher 红票 80%（二进制补丁，官方提示备份存档）· IGIExteneded 依赖停更 IGI+LunatriusCore · **InfinityLib 包内无消费方（孤立库——可删）**

**构建期实测**：Immersive Cables × AE2UEL 线缆兼容 · Hwyla+TOP+Wawla（Waila 系共存组合）

## Batch-14 核查发现（第 1734-1855 行，47 条）

**去重 7**：JEI/JER/JETIF/KleeSlabs/Konkrete/Lapis Stays/JEP 系变体与重复行

**KAMI: Reborn 澄清**：Thaumcraft 6 附属（移植 Thaumic Tinkerer 的 KAMI 终局内容，非外挂客户端）——与包内 Thaumic Tinkerer 内容重叠，二选一评估

**许可证**：JER = CoFH "Don't Be a Jerk" 非商用（可收录注明）· KleeSlabs = ARR（模组包需走许可页授权）· LittleTiles = LGPL-3.0 · LibVulpes = ARR（AR-Reworked 前置配套核对）· KAMI Reborn = ARR

**待人工核实 14**（CF 小模组许可无法证实）：JEMagiculture/JEPetroleum/JEReactors/Just Sleep/KaratGarden/Keeping Inventory/Large Ore Deposits/Lava Waders/LightningCraft 等

**版本注意**：Legendary Tooltips 1.12.2 需换原版文件（Neo/Forge 版无 1.12.2）

## Batch-15 核查发现（第 1859-1980 行，41 条）

**已删 3**：MCMultiPart-2.5.3/MJRLegendsLib/MTLib-3.0.6（变体与重复）

**二选一**：LootTableTweaker × LootTweaker（同为战利品魔改）· Loot Overhaul 与战利品机制重叠（ARR+停更，倾向排除）

**风险标注**：Magneticraft（1.12.2 社区 dev 半成品）· MEDIEVAL CRAFT（需未收录前置"Medieval Craft Weapons"——须补入或排除）· Low On Fire（身份无法交叉验证）

**待核对**：Mechanics - Crafting Ways（任何渠道无法确认身份）

**亮点**：Lumenized 国创 1.12.2 专属（LGPL-3.0）· Lootr 有 1.12.2（0.6.2）· LootBags 自定义许可（整合包可用须署名）

## Batch-17 核查发现（第 2100-2227 行，51 条）

**最高风险**：Music Player（mcmod 警告：国内网络环境未进主菜单前可能崩溃——核实版本或改用 Net Music）· Music Triggers（无法连接 Twitch 崩溃，国内网络注意）

**已删 6 重复**：MouseTweaks 版本条目/MysticalAgradditions/Neat 版本/NetherEx 版本/Netherending-Ores 版本/NoMobSpawningOnTrees 版本

**二选一**：Natura vs Natura Legacy

**许可证亮点**：MrCrayfish 家具 = GPL-3.0（非 ARR）· Mowzie's Mobs 自定义 · Natura 代码 CC0+资源 CC-BY-3.0 · NetherPortalFix 自定义（仓库活跃）

**无法验证（待核对）**：Mouse Tweaks Unofficial（误名重复？）· My Precious Tool · No Night Vision Flashing

## Batch-16 核查发现（第 1984-2096 行，49 条）

**已排除/删除 8**：Mob Spawner Control（与包内 In Control! 功能重复——保留 In Control!）· MooFluids（无 1.12.2）· More Default Options（与 Default Options 重复）· Mekanism-CE-Unofficial（与 MCE 同源再分支——保留 CE 线）· **MmmMmmMmmMmm（Supplementaries Team License 禁止公共再分发——不可收录）** · MikesModsLib/MobGrindingUtils/Modular Diversity 变体

**许可纠偏**：Modular Machinery = GPL-3.0（GitHub 实锤）· Minecraft Forge = LGPL-2.1 · More Electric Tools = LR8Soft 中文自定义协议（禁派生再分发——风险标注）· Moar Tinkers 实为 Moar TCon（ARR）

**亮点**：MekanismOres MIT（GitHub build.gradle 实证）· Mixmetica LGPL-3.0 · Mob Sunscreen MIT · MicdoodleCore 随 GC Legacy = MIT
