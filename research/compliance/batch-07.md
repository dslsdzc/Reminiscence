# 《回忆》整合包 模组合规核查 · batch-07（Cursed Fog – Dungeons 2）

来源：`modlist.md` 第 849–975 行，共 47 个模组条目。
核查方式：以 `modrinth-results.tsv` 批量结果为基准（名字匹配且标题对得上时直接用其许可证）；NO_HIT / 批量 ARR / 标题疑似误匹配的条目经 **Firefox 浏览器访问 mcmod.cn**（站内搜索 + 详情页 + 页面文本/评论区提取）逐项补查，每模组最多 1 次详情页访问，间隔 3–5 秒；查不到的按"未知"处理、不重试轰炸。GitHub 许可证用 `gh api` 逐仓库核实（共核实 8 个仓库）。

> **共享浏览器说明**：本环境多个批次核查并行，Firefox 实例被共享，个别导航被其他批次代理抢占（曾出现搜索 Cyclic 却渲染出 CTM 页面）。已采用"导航后立即校验 URL+提取"策略规避，未造成漏查。
>
> 本包核心模组：星系 Galacticraft、AE2/AE2UEL、暮色森林、神秘时代（TC）。冲突栏以此四者为基准。本批**与四核心无直接冲突**；需要构建期注意的维度 ID 类：Defiled Lands、Dimensional Doors（4 维度）、DivineRPG（8 维度）。

| # | 模组 | 正确分类 | 当前分类 | 许可证 | 1.12.2 | 开发状态 | 冲突/重复 | 风险 | 结论 |
|---|------|---------|---------|--------|--------|---------|-----------|------|------|
| 1 | Cursed Fog | 辅助优化（雾气/氛围视觉） | 未分类 | CC-BY-4.0（批量表，标题匹配） | 未知（mcmod 无收录） | 未知（小模组，来源无法核实） | 无 | 中（1.12.2 未核实 + 身份未核实） | 收录但风险标注 |
| 2 | Curvy Pipes | 存储物流（弯曲管道物流，cyb0124） | 未分类 | 闭源（mcmod 标注"活跃闭源"，但页面明示"允许重新分发或用于任何整合包"） | 有（1.12.2 在列） | 活跃维护（跨版本；1.12.2 线持续更新） | 与 EIO 管道/循环管道等物流功能重叠（共存常见）；**已知与镭（Radium）不兼容（物理碰撞失效）**；可与 AE2/格雷联动 | 低-中（闭源但允许整合包分发；注意 Radium） | 收录 |
| 3 | Custom Backgrounds | 辅助优化（主菜单背景图，Lumien231） | 未分类 | 闭源（ARR，Lumien 系惯例） | 有（1.8–1.13.2 全系） | 停更（内容完整，13 包在用） | 无 | 低（ARR 注明出处） | 收录 |
| 4 | Custom FOV | 辅助优化（视野 FOV 自定义，TheIllusiveC4） | 未分类 | LGPL-3.0-or-later（批量表） | 有（Forge 列表含 1.12.2） | 活跃开源 | **官方声明与 OptiFine 不兼容**——本包若含 OptiFine 则直接冲突，二选一 | 中-高（OptiFine 冲突取决于包配置） | 收录但风险标注 |
| 5 | Custom Loading Screen | 辅助优化（加载画面自定义） | 辅助优化 | GPL-3.0-only（批量表） | 有（1.12.2 教程佐证） | 停更（客户端小模组；官方提示可能轻微影响加载速度） | 无 | 低 | 收录 |
| 6 | Custom Main Menu | 辅助优化（主菜单 JSON 自定义，Lumien231） | 辅助优化 | 闭源（ARR，Lumien 系） | 有（2.0.9.1 与条目名一致） | 停更但稳定（长期经典） | **与 #9（版本文件名条目）重复收录**；推荐搭配 Resource Loader / MainMenu Scale | 中（重复条目） | 收录 |
| 7 | Custom Starter Gear | 辅助优化（开局初始装备，Brandon3055） | 辅助优化 | 开源（GitHub，许可证未核实） | 有 | 停更但功能完整（87 包在用） | **与 Initial Inventory（本包另有，batch 前序）功能重复（初始物品发放）——建议二选一** | 中（功能重复） | 收录但风险标注 |
| 8 | Custom Window Title | 辅助优化（窗口标题/图标，chylex） | 装饰 | Unlicense（批量表） | 有（Forge 列表含 1.12.2） | 活跃开源（26 包在用） | 无 | 无 | 收录 |
| 9 | CustomMainMenu-MC1.12.2-2.0.9.1 | ——（与 #6 同一模组的重复条目，带版本号文件名） | 辅助优化 | 同 #6（ARR） | 有 | 同 #6 | 重复收录 | 高（重复） | 建议排除 |
| 10 | CustomSkinLoader | 辅助优化（皮肤加载，xfl03） | 辅助优化 | GPL-3.0-only（批量表；GitHub 侧 fork 佐证 GPL-3.0） | 有（3.x 支持 1.7.10–1.12.2） | 活跃维护 | 无核心冲突 | 无 | 收录 |
| 11 | Customizable Player Models | 辅助优化（玩家模型自定义，tom5454） | 辅助优化 | MIT（批量表） | 有（0.0.x 早期版即 1.12.2 起家） | 1.12.2 线停更（高版本活跃） | 客户端模型渲染类，与 Mo' Bends 等共存注意实测 | 低 | 收录 |
| 12 | Cyclic | 科技（实用机器/工具大合集，Lothrazar） | 科技 | MIT（GitHub 核实 Lothrazar/Cyclic；**批量表 ARR 为 Modrinth 侧标注差异，已校正**） | 有（1.19.x） | 活跃开源（99 包在用） | 功能大杂烩：与 EIO 管道/循环机器等有重叠（共存常见）；发电/管道与 RFTools 联动 | 无-低 | 收录 |
| 13 | Cyclops Core | 前置库（CyclopsMC 核心库，Ruben Taelman） | 世界生成 | MIT（GitHub 核实 CyclopsMC/CyclopsCore） | 有 | 活跃开源（224 包在用） | 被 Integrated Dynamics / 集成管道系依赖（本包清单另有）；无核心冲突 | 无（仅分类错误） | 收录 |
| 14 | CyclopsCore | ——（与 #13 同一模组的重复条目） | 世界生成 | 同 #13（MIT） | 有 | 同 #13 | 重复收录 | 高（重复） | 建议排除 |
| 15 | Dark Utilities | 辅助优化（实用道具，Darkhax） | 未分类 | LGPL-2.1-only（批量表） | 有（3.1.x） | 停更但内容完整 | 无 | 无 | 收录 |
| 16 | DarkUtils | ——（与 #15 同一模组的重复条目） | 未分类 | 同 #15 | 有 | 同 #15 | 重复收录 | 高（重复） | 建议排除 |
| 17 | DarknessLib | 前置库（光影/光学计算库，Shinoow） | 前置库 | LGPL-3.0（GitHub 核实 Shinoow/DarknessLib） | 有（仅 1.12.2） | 停更（10 包在用） | 被 Grue（本包有）与 Hungering Darkness 依赖 | 无 | 收录 |
| 18 | Dawn of Time | 装饰（建筑方块 ~300 种，Dawn of Time 团队） | 未分类 | MIT（批量表） | 有（原版 1.12.2；另有 1.12.2 专用修复分支 "RoA Edition"） | 活跃开源 | 无 | 低-中（1.12.2 建议核验原版世界生成选项或改用 RoA 分支） | 收录 |
| 19 | Death Counter | 辅助优化（死亡次数统计，iChun） | 辅助优化 | CC-BY-NC-4.0（批量表） | 有 | 半弃坑开源 | 无 | 无 | 收录 |
| 20 | Debark | 装饰（去皮原木装饰方块，asie/Adrian Siekierka） | 未分类 | MIT（批量表） | 有（仅 1.12.2） | 停更（小模组） | 纯装饰（不可替代原木参与合成）；与木料系模组（BOP/林业/Natura 等）联动 | 低 | 收录 |
| 21 | Decocraft | 装饰（家具装饰 3212 件，RazzleberryFox） | 装饰 | 闭源（ARR；经 CurseForge 分发） | 有（2.6+ 需 PTRLib——本包已有） | 活跃闭源（高版本持续更新） | 无核心冲突；**性能开销大（官方提示需强 CPU/≥4GB 内存）** | 低-中（ARR 注明 + 性能） | 收录但风险标注 |
| 22 | Deep Blood Evolution | 科技（Deep Mob Evolution × 血魔法联动附属，Yang Xizhi 国创） | 未分类 | 开源（GitHub，许可证未核实） | 有（仅 1.12.2） | 停更（小附属，6 物品） | 需 Deep Mob Evolution + 血魔法2（本包均有）；与神秘时代无关联 | 低-中（许可证未核实） | 收录 |
| 23 | Deep Mob Evolution | 生物（生物数据模型模拟，Buuz135） | 生物 | MIT（批量表） | 有（仅 1.12.2） | 停更但内容完整 | 无核心冲突 | 无 | 收录 |
| 24 | Default Options | 辅助优化（默认按键/选项，BlayTheNinth） | 未分类 | MIT（Blay 系模组惯例；**批量表匹配 "Saro's Default Options" 为误匹配，已校正**） | 有（9.2.8 与条目名一致） | 活跃（207 包在用） | 无 | 低（许可标注建议人工确认） | 收录 |
| 25 | Default World Generator | 世界生成（默认世界类型设定，EzTerry 移植版） | 维度探索 | 开源（GitHub，许可证未核实） | 有（1.8.9–1.12.2） | 停更（28 包在用） | 设定默认世界生成器，与 RTG/OTG 等配合使用（非冲突）；不与核心模组冲突 | 低-中（许可证未核实 + 分类错误） | 收录 |
| 26 | DefaultOptions_1.12.2-9.2.8 | ——（与 #24 同一模组的重复条目，带版本号文件名） | 辅助优化 | 同 #24（MIT） | 有 | 同 #24 | 重复收录 | 高（重复） | 建议排除 |
| 27 | Defiled Lands | 维度探索（腐化之地独立维度） | 维度探索 | MIT-Code-Only（批量表：代码 MIT、资源保留） | 有 | 停更（2019）但内容完整 | 新增 1 维度——**维度 ID 构建期核对**（避开星系/暮色 ID） | 低-中 | 收录 |
| 28 | Demagnetize | 辅助优化（消磁方块，comp500） | 未分类 | MIT（GitHub 核实 comp500/Demagnetize） | 有（1.12.x） | 停更开源（18 包在用） | 与 Simple Magnets（本包有）互补配套；兼容 EIO/热力/龙研/圣遗物等磁铁 | 无-低 | 收录 |
| 29 | Diet Hoppers | 存储物流（漏斗碰撞箱修复，RWTema） | 存储物流 | 开源（GitHub，许可证未核实） | 有 | 停更（54 包在用） | 无 | 低（许可证未核实） | 收录 |
| 30 | Dimension Stages | 维度探索（维度进度门控，Darkhax） | 维度探索 | LGPL-2.1-only（批量表） | 有 | 完成/停更 | 需 Game Stages（本包有） | 无 | 收录 |
| 31 | Dimensional Doors | 维度探索（次元门：地牢/口袋空间，Dimensional Development） | 维度探索 | GPL-3.0-only（批量表） | 有（3.0.0-beta 线） | 活跃开源（高版本活跃；**1.12.2 为 beta 测试线**） | 新增 4 维度（次元地牢/口袋空间/Limbo 等）——**维度 ID 构建期核对**；beta 线有崩端/性能/复制类社区反馈（本次未抓到具体评论原文，建议构建期实测） | 中-高（beta 稳定性） | 收录但风险标注 |
| 32 | DimensionalEdibles | 维度探索（传送食物蛋糕/苹果，Jackyy/TurkeyDev） | 维度探索 | 开源（GitHub JackyyTV/DimensionalEdibles，无 LICENSE） | 有 | 停更（官方自述有小问题/传送略延迟，不严重） | 需 GunpowderLib（本包有）；1.3.2+ 前置 | 低 | 收录 |
| 33 | Ding (Forge) | 辅助优化（游戏加载完成提示音，iChun） | 未分类 | 开源（GitHub，许可证未核实；**批量表匹配 "Better Ping Display" 为误匹配，已校正**） | 有 | 半弃坑开源（131 包在用） | v1.5.0+ 需 iChunUtil（本包有） | 低 | 收录 |
| 34 | Dirt2Path | 辅助优化（泥土→草径，Meabh Wintersmith） | 未分类 | 开源（GitHub mallrat208/dirt2path，无 LICENSE） | 有（1.10.2–1.14.4） | 停更（9 包在用） | 无 | 低 | 收录 |
| 35 | DiscordSuite | 辅助优化（Discord 状态/信息展示，Buuz135） | 未分类 | 闭源（ARR，停更） | 有（2.2.4 与条目名一致） | 停更（仅 CurseForge 链接，无源码） | **与 CraftPresence（本包清单另有）功能重复（Discord Rich Presence）——二选一** | 中-高（功能重复） | 建议排除（保留 CraftPresence） |
| 36 | DiscordSuite-2.2.4 | ——（与 #35 同一模组的重复条目，带版本号文件名） | 未分类 | 同 #35（ARR） | 有 | 同 #35 | 重复收录 | 高（重复） | 建议排除 |
| 37 | Divine Journey 2 Addons | 科技（DJ2 整合包定制内容附属） | 未分类 | GPL-3.0（GitHub 核实 Divine-Journey-2/Divine-Journey-2 组织仓库） | 有（仅 1.12.2） | 活跃（随 DJ2 持续维护） | 内容/配方为 DJ2 进度线定制——独立纳入本包需评估平衡性；无核心冲突 | 中（定制平衡 + 无汉化风险） | 收录但风险标注 |
| 38 | DivineRPG (Official) | 维度探索（8 维度大型冒险，DivineRPG 团队） | 未分类 | 开源但无 LICENSE 文件（GitHub DivineRPG/DivineRPG，NOASSERTION——按 ARR 实践标注） | 有（1.7.1 为最后 1.12.2 版） | 活跃（跨版本开发） | **新增 8 个维度（固定 ID 区间，可配置？）——构建期维度 ID 表必查**（避开星系/暮色/阿图姆等）；167 实体大内容模组，性能与加载量注意 | 中（维度 ID + 许可未声明 + 内容量） | 收录但风险标注 |
| 39 | Don't Clear Chat History | 辅助优化（聊天记录保留，anar4732） | 辅助优化 | CC0-1.0（批量表） | **无 Forge 版（1.12.2 仅有 Legacy Fabric 版）** | 停更 | **加载器不兼容：Fabric/Arch 构建无法装入 Forge 1.12.2 包** | 高（加载器不兼容） | 建议排除 |
| 40 | Doomlike Dungeons | 维度探索（地牢结构生成，gottsch） | 维度探索 | MIT（批量表） | 有 | 停更但稳定 | **与 #47 Dungeons 2 同作者同类型（地牢结构生成）——功能重叠，共存注意结构重叠**；与星系/暮色无冲突 | 低-中 | 收录 |
| 41 | Draconic Additions | 科技（龙之进化附属，FoxMcloud5655） | 科技 | 开源（GitHub FoxMcloud5655/Draconic-Additions，无明确 LICENSE） | 有 | 活跃（46 包在用） | 需 Draconic Evolution + Baubles（本包均有）；混沌级装备强度高于原版 DE——平衡引擎注意 | 低-中 | 收录 |
| 42 | Draconic Energy | 科技（DE 能量/聚合系统分支，UberHelixx） | 科技 | 闭源（ARR，停更） | **无（仅 1.16.5）** | 停更 | **版本不兼容（1.16.5 专版，无法装入 1.12.2）；且能量核心/聚合功能与 Draconic Evolution 重复** | 高（版本不兼容） | 建议排除 |
| 43 | Draconic Evolution | 科技（龙之进化，brandon3055） | 科技 | CoFH "Don't Be a Jerk" 自定义许可（批量表） | 有（2.3.28） | 1.12.2 停更但稳定（经典核心科技） | 无核心冲突（与 AE2 等共存常见） | 无（许可注明出处） | 收录 |
| 44 | Draconic-Evolution | ——（与 #43 同一模组的重复条目） | 科技 | 同 #43 | 有 | 同 #43 | 重复收录 | 高（重复） | 建议排除 |
| 45 | Dramatic Skys | 辅助优化（动态天空视觉效果） | 未分类 | 闭源（ARR，批量表 Modrinth 同名项目） | 未知（mcmod 无收录，身份无法核实） | 未知 | 无 | 中-高（身份/1.12.2 版本未核实） | 收录但风险标注（或人工核对 jar 后定） |
| 46 | Dropt | 辅助优化（掉落物规则定制工具，codetaylor） | 未分类 | 开源（GitHub codetaylor/Dropt，无 LICENSE 文件） | 有（仅 1.12.2） | 停更（34 包在用） | 需 Athenaeum（本包有）；与 LootTweaker 等战利品工具分工不同（可共存）；社区有脚本失效求助帖（功能正常性问题） | 低（无 LICENSE） | 收录 |
| 47 | Dungeons 2 | 维度探索（自定义地牢结构，gottsch） | 维度探索 | 开源（GitHub，许可证未核实） | 有（1.10.2–1.12.2） | 停更 | 需 GottschCore（本包有，LGPL-3.0-or-later）；**与 #40 Doomlike Dungeons 同作者同类型功能重叠** | 低-中 | 收录 |

---

## 统计

**收录 30 / 风险标注 8 / 建议排除 9 / 分类错误 3**

- **建议排除 9**：#9 CustomMainMenu-MC1.12.2-2.0.9.1（与 #6 重复）、#14 CyclopsCore（与 #13 重复）、#16 DarkUtils（与 #15 重复）、#26 DefaultOptions_1.12.2-9.2.8（与 #24 重复）、#35 DiscordSuite（与 CraftPresence 功能重复）、#36 DiscordSuite-2.2.4（与 #35 重复）、#39 Don't Clear Chat History（Forge 1.12.2 无对应版本，加载器不兼容）、#42 Draconic Energy（仅 1.16.5，版本不兼容）、#44 Draconic-Evolution（与 #43 重复）
- **风险标注 8**：#1 Cursed Fog（身份/版本未核实）、#4 Custom FOV（与 OptiFine 官方声明不兼容）、#7 Custom Starter Gear（与 Initial Inventory 功能重复二选一）、#21 Decocraft（ARR + 性能开销）、#31 Dimensional Doors（1.12.2 beta 线稳定性）、#37 Divine Journey 2 Addons（DJ2 定制平衡）、#38 DivineRPG（维度 ID + 许可未声明）、#45 Dramatic Skys（身份/版本未核实）
- **分类错误 3**：#8 Custom Window Title（装饰→辅助优化）、#13 Cyclops Core（世界生成→前置库）、#25 Default World Generator（维度探索→世界生成）
- **未分类归位 17 条**（Cursed Fog→辅助优化、Curvy Pipes→存储物流、Custom Backgrounds/Custom FOV/Custom Starter Gear/Demagnetize/Ding/Dirt2Path/Dropt→辅助优化、Dark Utilities→辅助优化、Dawn of Time/Debark→装饰、Deep Blood Evolution→科技、Default Options→辅助优化、Divine Journey 2 Addons→科技、DivineRPG→维度探索、Dramatic Skys→辅助优化），其余 3 条未分类为建议排除条目（#16/#35/#36）

## 关键发现（供整合包决策）

1. **版本不兼容 2 个（硬排除）**：#42 Draconic Energy 为 **1.16.5 专版**（DE 阉割分支：只留能量/聚合系统）——1.12.2 包无法使用，且与 Draconic Evolution 功能重复，直接排除；#39 Don't Clear Chat History 的 1.12.2 版本**仅有 Legacy Fabric 构建**（Forge 版本最低 1.16.1）——Forge 包无法装入，排除。
2. **重复条目 9 条 → 8 组**（版本文件名残留）：CustomMainMenu×2（#6/#9）、CyclopsCore×2（#13/#14）、DarkUtils×2（#15/#16）、DefaultOptions×2（#24/#26）、DiscordSuite×2（#35/#36）、Draconic Evolution×2（#43/#44）——保留主条目，版本文件名条目去重。
3. **功能重复二选一**：① DiscordSuite × CraftPresence（均 Discord Rich Presence，DiscordSuite 停更闭源 → 排除 DiscordSuite）；② Custom Starter Gear × Initial Inventory（初始物品发放，功能相同 → 二选一）；③ Doomlike Dungeons × Dungeons 2（同作者 gottsch 的地牢结构生成，可共存但注意结构重叠，建议保留其一为主、另一裁剪结构密度）。
4. **批量表 4 处误匹配已校正**：#12 Cyclic（ARR→GitHub 实为 MIT，Modrinth 标注差异）、#24 Default Options（ARR 匹配到 "Saro's Default Options"→实际作者 BlayTheNinth）、#33 Ding（MIT 匹配到 "Better Ping Display"→实际 iChun 出品）、#38 DivineRPG（NO_HIT→GitHub 无 LICENSE 按 ARR 实践）。
5. **与四核心（星系/AE2UEL/暮色/神秘时代）**：本批无直接冲突。构建期注意：#38 DivineRPG 新增 8 维度、#31 Dimensional Doors 新增 4 维度、#27 Defiled Lands 新增 1 维度——**维度 ID 分配表必须核查**（避开星系 -27~-32、暮色 ID 7、阿图姆 17 等）。
6. **OptiFine 冲突点**：#4 Custom FOV 官方声明与 OptiFine 不兼容——本包若采用 OptiFine（Optifine Check 条目暗示在案），Custom FOV 与之二选一。
7. **前置链核对**（均已在包内）：Decocraft 2.6+→PTRLib；DimensionalEdibles 1.3.2+→GunpowderLib；Ding v1.5.0+→iChunUtil；Dropt→Athenaeum；Dungeons 2→GottschCore；Dimensional Doors→无特殊前置；Draconic Additions→DE+Baubles；DarknessLib→Grue 的前置（反向依赖）。
8. **社区口碑**：Dimensional Doors 1.12.2 为 3.0.0-beta 线（mcmod 页面无负面评论原文，但 beta 定位 + 社区既有崩端/性能反馈，建议构建期实测）；Dropt 有脚本失效求助帖（功能正常性一般）；DimensionalEdibles 官方自述"小问题 + 传送略延迟"；其余模组无半成品/烂尾类负面口碑。
9. **许可证汇总**：闭源/ARR 4（Custom Backgrounds、Custom Main Menu、Curvy Pipes 例外——明示允许整合包分发、Decocraft、DiscordSuite、Draconic Energy、Dramatic Skys）；开源但无 LICENSE 9（Custom Starter Gear、Deep Blood Evolution、Default World Generator、Diet Hoppers、Ding、Dirt2Path、DimensionalEdibles、Draconic Additions、Dungeons 2、Dropt、Dawn of Time 未核实——按"开源无明确许可"标注）；GitHub 已核实 MIT 4（Cyclops Core、Cyclic、Demagnetize、DarknessLib 为 LGPL-3.0）。
10. **共享浏览器提示**：本批与并行批次共享 Firefox 实例出现导航抢占，后续批次注意"导航后立即校验 URL"；本次共完成 27 次 mcmod 检索/详情访问，未触发限流。
