# 模组合规核查报告 — Batch-03（modlist.md 第 281-441 行，共 50 条）

> 核查日期：2026-07-31
> 方法：modrinth-results.tsv 批量结果直接采用（名字匹配）；NO_HIT / All-Rights-Reserved / 批量匹配存疑（标题与实体不符）的模组走 mcmod.cn 补查（评论/开发状态为重点），每模组 ≤2 次 mcmod 请求、间隔 4 秒，被拒/查无资料一律标"未知"不重试轰炸。
> 工具限制说明：内置 WebSearch 配额耗尽、web-search-prime 与 web-reader MCP 余额不足，全部补查改为 WebFetch 直连 mcmod.cn（search.mcmod.cn 搜索页 + class 详情页），并以 Modrinth API / GitHub API / CurseForge 页面交叉核实身份与版本。
> 包核心模组对照：星系 Galacticraft、AE2(AE2UEL)、暮色森林、神秘时代——本批无直接冲突，相关提示见文末。

| # | 模组 | 正确分类 | 当前分类 | 许可证 | 1.12.2 | 开发状态 | 冲突/重复 | 风险 | 结论 |
|---|------|---------|---------|--------|-------|---------|-----------|------|------|
| 1 | Avaritia Recipe Generator (ARG，无尽配方编辑器) | 辅助优化（魔改辅助：9×9/3×3 配方可视化编辑，输出 CrT 脚本） | 辅助优化 | 未知（mcmod 标开源，未注明具体协议） | 有（1.12.2 专属工具） | 停更（1.12.2 线） | 纯辅助工具无冲突；生成配方同名 NAMEPLACEHOLDER 需手改（教程已知坑） | 低 | 收录 |
| 2 | Avaritia Tweaks | 辅助优化（无尽贪婪工具强化：世界崩解之镐破基岩等） | 辅助优化 | 未知（GitHub JackyyTV/AvaritiaTweaks 开源未标协议） | 有（1.10–1.12.2） | 停更（2020-10 v1.2 后弃坑，作者自认弃坑） | **与 #3 Avaritia's Complement 为 fork 关系，功能重复，二选一**；需 CCLib + Avaritia + GunpowderLib；联动 Botania | 中（已知半成品：Botania 花一朵功能未实现、一朵忘写魔力代码只消耗不产出） | 收录但风险标注（建议删除，由 #3 Complement 取代） |
| 3 | Avaritia's Complement | 辅助优化（无尽贪婪附属：无瑕水晶、工具提示修复等，全可配置） | 未分类 | 未知（开源，未标具体协议） | 有（仅 1.12.2） | 停更（官方 CurseForge 页已失效，仅剩 CDN 直链下载） | 与 #2 Tweaks 重复（其 fork，修复观战 bug），二选一；需 Avaritia，联动 JEI；好评 3 红/0 黑 | 中（下载渠道不稳、停更） | 收录但风险标注（保留此支，删除 #2） |
| 4 | Avaritiaddons（无尽收容） | 辅助优化/存储物流（无尽箱子、压缩箱子、梦魇自动合成台） | 未分类 | 未知（开源，未标具体协议） | 有（1.7.10 + 1.12.2） | 停更（高版本功能并入无尽贪婪后产生 NBT bug，作者不再维护） | 需 Avaritia + WanionLib（本包均有）；**已知：与 EIO 接口共用时卡服、概率性 TPS 下降**；联动 Iron Chests | 中（EIO 卡服 + 停更） | 收录但风险标注 |
| 5 | B.A.S.E | 前置库（The Acronym Coders 共用库） | 未分类 | MIT（Modrinth 核实，Lanse505） | 有（1.10–1.12.2） | 停更 | 纯前置库，无冲突 | 低 | 收录 |
| 6 | BDLib（bdew 前置库） | 前置库 | 前置库 | 未知（开源未标具体协议；批量结果误匹配 XD's Library） | 有 | 停更 | 被 AE2 Stuff、Gendustry、压力管道等依赖（本包有）；Cleanroom 环境需 Scala 2.x（不兼容 Scala 3.x） | 低 | 收录 |
| 7 | BnBGamingLib | 前置库（Blood N Bones 系列共用库） | 前置库 | 未知 | 有（1.12.2，BnB 3 系） | 停更 | Triumph（任务书）与自定义加载画面前置 | 低 | 收录 |
| 8 | Backpack Display | 辅助优化（客户端：显示所装备背包外观） | 存储物流 | MIT | 有 | 停更 | 与背包类 mod 渲染可能重叠 | 低 | 收录（分类错误：存储物流→辅助优化） |
| 9 | Backpack Opener | 辅助优化（快捷键直接打开背包/末影箱） | 存储物流 | MIT | 有 | 停更 | 无 | 低 | 收录（分类错误：存储物流→辅助优化） |
| 10 | BacoDifficulty | 辅助优化（服务端：禁止除玩家/控制台外修改难度与 gamerule） | 未分类 | 未知 | 有（原为 RLCraft 制作，1.12.2） | 停更 | 服务端 mod、无配置文件；无冲突 | 低 | 收录 |
| 11 | Bad Mobs | 生物（生物生成黑名单，Darkhax） | 生物 | LGPL-2.1（批量） | 有 | 停更 | 与 In Control! 功能重叠（本包含 In Control!，可二选一） | 低 | 收录 |
| 12 | Bad Wither No Cookie - Reloaded | 生物（凋灵不再掉落曲奇） | 生物 | MIT（批量） | 有 | 停更/稳定 | 无 | 低 | 收录 |
| 13 | Balkon's WeaponMod: Legacy | 工具武器（真实武器包） | 工具武器 | MIT（批量） | 有 | 停更（legacy 修复线） | 武器数值需与全包平衡联动；无核心冲突 | 低 | 收录 |
| 14 | Barebones Bossbars | 未知（查无资料） | 生物 | 未知（Modrinth 弱匹配标 ARR、无标题；mcmod 0 结果；CurseForge slug 未命中） | 未知 | 未知 | 无法核实身份与来源 | 高 | 建议排除（需人工核对 jar 来源） |
| 15 | Basic Nether Ores | 世界生成（下界矿石生成） | 维度探索 | MIT（批量） | 有 | 停更 | 无 | 低 | 收录（分类错误：维度探索→世界生成） |
| 16 | Baubles（饰品栏，核心 API） | 前置库 | 前置库 | 未知（Azanor 未标注协议，GitHub 无 LICENSE；**批量结果 LGPL-3.0 系误匹配 Trinkets and Baubles**） | 有（1.7.10–1.12.2） | 停更（社区 Baubles-LTS 1.12.2 分支做性能优化，可作替代） | 本包大量依赖（Botania、Bewitchment Legacy 等）；无冲突 | 低 | 收录（建议采用 Baubles-LTS 性能分支） |
| 17 | Baubley Elytra | 工具武器（饰品鞘翅，gigaherz） | 未分类 | 自定义（批量：Custom License） | 有（仅 1.12.2） | 停更 | 需 Baubles；与鞘翅类 mod 功能重叠风险 | 低 | 收录 |
| 18 | Baubley Heart Canisters | 工具武器（饰品心容器，gigaherz） | 未分类 | MIT（批量） | 有 | 停更 | 需 Baubles；无冲突 | 低 | 收录 |
| 19 | BdLib | 前置库 | 前置库 | 同 #6 | 有 | 同 #6 | **与 #6 BDLib 为同一模组，重复条目** | 低 | 收录（重复条目，二选一） |
| 20 | Bedrock Ores（基岩矿簇） | 世界生成（基岩层矿簇 + RF 采掘机） | 世界生成 | 未知（Sangar 开源未标协议；批量结果 MIT 系误匹配 Gravel GUI） | 有 | 停更 | 需 RF 能量（兼容 TF/Mek/IC2/IE 等，无硬前置）；默认不生成煤矿簇需配置 | 低 | 收录 |
| 21 | Bedspreads | 装饰（床罩配色） | 装饰 | LGPL-3.0-or-later（批量） | 有 | 停更 | 无 | 低 | 收录 |
| 22 | BehindYouV3 | 辅助优化（惊悚氛围：身后"注视者"音效/动画） | 未分类 | GPL-3.0（含 Minecraft 链接例外，批量） | 有 | 停更/维护 | 纯客户端；无冲突 | 低 | 收录 |
| 23 | Better 3D Beds | 资源包（**非模组**——Modrinth 明示为床 3D 模型材质包，148 万下载） | 装饰 | ARR | 资源包形式可用（声明支持 1.8.9–1.20.6） | 活跃（资源包） | 与 batch-01 的 3D 系资源包混入 mods 清单问题同源 | 低 | 建议排除（资源包误入，应放 resourcepacks 目录） |
| 24 | Better Animals Plus Plus | 生物（BA+ 增强 fork：攻击动画+AI 改良） | 生物 | 未知（bglandolt 开源未标协议） | 有（仅 1.12.2） | 停更 | 与 BA+ 原版二选一（本 fork 含全部内容+动画，够用） | 低 | 收录 |
| 25 | Better Battle Towers（战斗高塔，启动） | 世界生成（战斗高塔 1.12.2 fork：维度级生成开关） | 维度探索 | 未知（开源未标协议） | 有（仅 1.12.2） | 停更（红票6/黑票3） | **与"战斗高塔修复"共存时不生效；与 RLTweaker 同装需关其配置 397**（Mixin 近乎重写互斥）——本包含 RLTweaker2，需处理 | 中 | 收录但风险标注（分类错误：维度探索→世界生成；冲突配置须落实） |
| 26 | Better Biome Blend | 辅助优化（客户端生物群系颜色平滑过渡） | 世界生成 | Unlicense（批量） | 有 | 停更/稳定 | 纯客户端渲染 | 低 | 收录（分类错误：世界生成→辅助优化） |
| 27 | Better Burning | 辅助优化（燃烧伤害机制修正，Darkhax） | 未分类 | LGPL-2.1（批量） | 有 | 停更 | 无 | 低 | 收录 |
| 28 | Better Caves（YUNG's 洞穴优化） | 世界生成（洞穴大改） | 世界生成 | ARR（Modrinth 标；GitHub 保留权利，mcmod 标开源） | 有（Forge 1.12.2/1.12） | 活跃（跨版本持续维护） | 生成大量方块、世界生成期卡顿（官方建议 OptiFine）；1.12.2 与 Worley's Caves 互斥（本包未见）；兼容 OTG V8+ | 中 | 收录但风险标注（性能与同类世界生成 mod 排查） |
| 29 | Better Chat（Darkhax） | 辅助优化（聊天显示增强） | 辅助优化 | LGPL-3.0（批量） | 有 | 停更 | 无 | 低 | 收录 |
| 30 | Better Dogs | 资源包（**非模组**——Modrinth 明示为"驯服狼变真实犬种"皮肤资源包，27 万下载） | 生物 | ARR | 资源包形式可用（声明支持 1.8.9–1.20.6） | 活跃（资源包） | 与狗类 mod 视觉重叠 | 低 | 建议排除（资源包误入，应放 resourcepacks 目录） |
| 31 | Better Foliage | 辅助优化（客户端树叶/植被外观，Octarine Noise） | 世界生成 | 未知（开源未标协议；批量结果 CC-BY-NC-ND 系误匹配 Saturated Grass） | 有 | 停更（有 Renewed 1.16+ 移植） | **1.10.2–1.12.2 需 Shadowfacts' Forgelin 前置**（本包有 Forgelin-Continuous）；100% 兼容 OptiFine | 低 | 收录（分类错误：世界生成→辅助优化；前置注意） |
| 32 | Better Furnaces Reforged | 辅助优化（熔炉升级线） | 未分类 | MIT（批量） | 有 | 停更 | 无 | 低 | 收录 |
| 33 | Better Gendustry | 未知（查无资料；mcmod 0 结果、Modrinth NO_HIT、CF slug 未命中） | 未分类 | 未知 | 未知 | 未知 | 与 Gendustry（本包含）功能重叠风险 | 高 | 建议排除（需人工核实；疑为 Gendustry 改进行，属重复） |
| 34 | Better Hurt Timer | 辅助优化（战斗冷却机制重做：冷却未满直接锁伤） | 未分类 | 未知（Cinnamon 开源未标协议） | 有 | 停更 | **1.12.2 需 MixinBooter**（本包核心前置，有）；全包战斗机制大改，社区反馈配置难调、平衡争议（BHT 下铁质武器输出超钻石） | 中 | 收录但风险标注（与包内武器生态联动，须实测） |
| 35 | Better Night Vision | 辅助优化（夜视平滑/无闪烁） | 未分类 | LGPL-3.0（批量） | 有 | 停更 | 纯客户端 | 低 | 收录 |
| 36 | Better Placement（tterrag） | 辅助优化（移除原版放置 4tick 限速） | 未分类 | 未知（开源未标协议） | 有（1.7.10–1.12.2） | 停更 | 直接覆盖原版放置逻辑：**垫高/搭桥需点按（文档明示慎用）**；多人服有封禁风险（单人包无关） | 低 | 收录 |
| 37 | Better Signs | 辅助优化（长按快捷连续放置告示牌） | 装饰 | 未知（开源未标协议） | 有（1.12.2 列入） | 停更 | 纯客户端 | 低 | 收录（分类错误：装饰→辅助优化） |
| 38 | Better Slimes（更好的史莱姆） | 生物（14 种新史莱姆+各色粘液球） | 生物 | 未知（开源未标协议） | 有（仅 1.12.2） | 停更（有 CatIsLeisure fork 延续） | 无；5 个整合包在用 | 低 | 收录 |
| 39 | Better Title Screen | 辅助优化（标题界面自定义文本） | 辅助优化 | 未知（Girafi 开源未标协议） | 有 | 停更（长期无更新） | **与 Custom Main Menu（本包另列）功能重叠，建议二选一**；1.16.5 有改配置即崩报告（1.12.2 未见） | 中 | 收录但风险标注 |
| 40 | Better mobGriefing GameRule（Judge40） | 辅助优化（分实体 mobGriefing 规则，服务端） | 生物 | 未知（开源未标协议） | 有（1.7.10–1.16.5） | 停更 | 服务端规则类；无冲突 | 低 | 收录（分类错误：生物→辅助优化） |
| 41 | BetterBuildersWands | 工具武器（建筑魔杖） | 未分类 | MIT（批量） | 有 | 停更（有 Fix 分支） | 1.12.2 本体有碰撞 bug，须搭配 #42 Fix 版 | 低 | 收录 |
| 42 | BetterBuildersWandsFix | 辅助优化（BBW 修复 fork） | 辅助优化 | MIT（批量） | 有 | 维护中（fork） | 与 #41 为修复关系（依赖 BBW 本体） | 低 | 收录 |
| 43 | BetterEndForge Backport（Goodbird-git/BetterEndForge-1.12.2） | 维度探索（末地内容大改 1.12.2 移植） | 未分类 | 自定义（GitHub 标 NOASSERTION，沿用 BetterEnd 条款——随包分发须确认） | 有（仅 1.12.2） | 活跃（2026-05 仍在更新） | 与 BetterNether/其他末地世界生成 mod 需构建期实测 | 中 | 收录但风险标注（自定义许可条款确认） |
| 44 | BetterFps（Guichaguri） | 辅助优化（FPS 优化） | 辅助优化 | MIT（批量；批量标题误匹配但 GitHub 证实 MIT） | 有 | 停更 | 优化类，与 OptiFine 叠加注意 | 低 | 收录 |
| 45 | BetterFps-1.4.8 | 辅助优化（同 #44） | 辅助优化 | MIT | 有 | 同 #44 | **与 #44 为同一模组版本文件，重复条目** | 低 | 收录（重复条目，二选一） |
| 46 | BetterNether（更好的下界） | 维度探索（下界大改，paulevs 原版线） | 维度探索 | 未知（开源未标协议；延续分支标 LGPL-3.0） | 有（Forge 1.12.2 原版线） | 停更（1.12.2 线；有 BetterNether Continuing 分支延续 1.12.2） | **1.12 需 [LibEx] LibraryEx 前置**；官方声明设计为与其他下界 mod 兼容；42 红/2 黑 | 低 | 收录 |
| 47 | BetterWaterSplashPotions（suppergerrie2） | 辅助优化（喷溅水药水可熄灭燃烧实体） | 未分类 | ARR（CurseForge 标注） | **未证实**（CF 页面版本列表未显示 1.12.2，"+7 版本"未列明；GitHub 无 releases） | 停更（2022-08 后无更新） | 无 | 中 | 收录但风险标注（1.12.2 文件需人工确认，确无则排除） |
| 48 | Bewitchment (Legacy)（巫师之路） | 魔法（巫术 Witchery 精神续作） | 魔法 | 未知（开源未标协议） | 有（1.12.2 legacy 线 0.19.10，2019-02 止） | 停更（legacy 线；1.16+ 为 Fabric 重写） | 需 Baubles + Patchouli（本包均已有）；与 Vampirism 主题重叠风险（可共存）；14 红/1 黑 | 低 | 收录 |
| 49 | Beyond Dimensions | 维度探索 | 维度探索 | MIT（批量，标题精确匹配） | 有 | 停更 | 未发现冲突 | 低 | 收录 |
| 50 | BiblioCraft（收藏馆） | 装饰（书架/家具/展示类） | 装饰 | 未知（Nuchaz 未标协议，历史视为保留权利） | 有（1.12.2 v2.x 线） | 停更（有 1.12.2 专属 fork "BiblioCraft Reshelved" 修复维护） | **论坛实证：与植物魔法（Botania）不兼容**——本包含 Botania，须实测或改用 Reshelved fork；精致工作台配方书存在复制漏洞（忽略 NBT） | 中 | 收录但风险标注（Botania 冲突 + 复制漏洞，建议换 Reshelved） |

---

## 统计

**收录 34 ／ 风险标注 12 ／ 建议排除 4 ／ 分类错误 8（另有 2 个资源包误入清单、15 条未分类已补充分类）**

- 收录（34）：#1,5,6,7,8,9,10,11,12,13,15,17,18,19,20,21,22,24,26,27,29,32,35,36,37,38,40,41,42,44,45,46,48,49
- 收录但风险标注（12）：#2,3,4,16,25,28,31,34,39,43,47,50
- 建议排除（4）：#14 Barebones Bossbars（查无资料）、#23 Better 3D Beds（资源包误入）、#30 Better Dogs（资源包误入）、#33 Better Gendustry（查无资料）
- 分类错误（8）：#8、#9（存储物流→辅助优化）；#15、#25（维度探索→世界生成）；#26、#31（世界生成→辅助优化）；#37、#40（装饰/生物→辅助优化）
- 资源包误入 mods 清单（2）：#23、#30——与 batch-01 的 Serified Font/3D crops 同源问题，移入 resourcepacks 目录
- 未分类已补充分类（15）：#3,4,5,10,17,18,22,32,33,34,35,36,41,43,47（其中 #33 建议排除、#43 风险标注）
- 重复条目 3 组（6 条）：#6/19（BDLib/BdLib）、#2/3（Tweaks/Complement，fork 二选一）、#44/45（BetterFps 版本文件）——去重后约 47 条有效

### 重点风险提示（与本包核心模组的关系）
1. **资源包混入**：#23 Better 3D Beds、#30 Better Dogs 均为 Modrinth 明示的资源/模型包（非模组），应移入 resourcepacks 目录，与 batch-01 的 3D 系资源包问题同源，建议清单层面统一去重。
2. **Avaritia 家族**：Tweaks（#2）与 Complement（#3）二选一——保留 Complement（修复观战 bug、工具提示，内容全可配置）；Avaritiaddons（#4）独立收录但注意其与 **Ender IO 接口共用卡服**（TPS 下降）的已知问题。
3. **Baubles 许可修正**：批量结果（LGPL-3.0，来自"Trinkets and Baubles"）为误匹配；Baubles 本体为 Azanor 未标注协议（GitHub 无 LICENSE，默认保留权利）。功能上 1.12.2 必需，建议采用 Baubles-LTS 性能分支（社区维护，声称完全兼容替代）。
4. **BiblioCraft × Botania 不兼容**（mcmod 论坛实证）：本包含植物魔法，收录前必须实测；或改用 1.12.2 专属修复 fork "BiblioCraft Reshelved"；同时其精致工作台存在复制漏洞（配方书忽略 NBT），包内建议禁用该功能。
5. **前置链核对**（均在本包已有或需补齐）：Better Foliage → Forgelin；BetterNether 1.12.2 → LibraryEx；Better Hurt Timer → MixinBooter；Bewitchment Legacy → Baubles + Patchouli；Avaritiaddons → Avaritia + WanionLib。
6. **Mixin/世界生成互斥配置**：Better Battle Towers 与 RLTweaker（本包含 RLTweaker2）共存需关配置 397，否则其功能不生效；YUNG's Better Caves 1.12.2 与 Worley's Caves 互斥且生成量大（建议 OptiFine）。
7. **战斗/平衡大改**：Better Hurt Timer 重做全包攻击冷却，社区反馈平衡争议（铁质武器超钻石）——与本包 Epic Fight、Balkon's 等武器 mod 叠加须整体测试。
8. **许可标注**：BetterEndForge Backport 为 GitHub NOASSERTION（自定义，沿用 BetterEnd 条款）、BetterWaterSplashPotions 为 ARR——随包分发均需确认条款。
9. **无法核实 3 项**（需人工核对 jar 来源）：#14 Barebones Bossbars、#33 Better Gendustry、#47 BetterWaterSplashPotions 的 1.12.2 文件（其余已按"未知"处理，不重试轰炸）。
