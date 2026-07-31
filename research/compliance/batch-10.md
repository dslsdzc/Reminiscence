# 《回忆》整合包 模组合规核查 · batch-10（FastQuit-Forge – Gambling Style）

来源：`modlist.md` 第 1242–1370 行，共 45 个模组条目（含重复条目与疑似资源包）。
核查方式：以 `modrinth-results.tsv` 批量结果为基准（名字匹配且标题对得上时直接用其许可证）；NO_HIT / 批量 ARR / 标题疑似误匹配的条目经 **mcmod.cn HTTP 直连搜索+详情页**逐项补查（每模组最多 1 次详情页，间隔 3 秒+），**GitHub 许可证用 `gh api` 逐仓库核实**（本批核实 16 个仓库：Shadows-of-Fire、Chicken-Bones、shadowfacts、flyingperson23、SonarSonic、eutro、Fuzss、AlgorithmX2、MJRLegends、SuperMartijn642 等），Modrinth API 用于实体确认（Full Brightness 确认为资源包）。mcmod 评论区 JS 懒加载不可直取，口碑采用页面"评分百分比 + 简介警告"综合判断。

> **本包核心模组关联**：星系 Galacticraft-Legacy、AE2UEL、暮色森林、神秘时代（TC6）。本批与四核心的关联：**星系系密集**——Galacticraft-Legacy（核心本体，与条目 #41 重复）、Galacticraft Tweaker（星系 CraftTweaker 附属，GC-Legacy 兼容需实测）、ExtraPlanets（前批，同为 MJRLegends 系）；暮色/神秘时代无直接冲突；AE2 生态无新增（Fusion 为连接纹理库，与 CTM 重叠，不影响 AE2）。
>
> **批量表 4 处误匹配已校正**：Fixeroo（批量 MIT 实为 Packet Fixer）、FluiDict（批量 MIT 实为 Fluid Interaction Tweaker）、Galacticraft Tweaker（批量 ARR 实为 Hide Galacticraft Equipments）、FoamFix 零宽空格条目（批量 NO_HIT，实为同一模组重复）。
>
> **许可更正**：Flux Networks 批量 NO_HIT，补查 GitHub SonarSonic/Flux-Networks = **MIT**；Framed Compacting Drawers = **MIT**（eutro/FramedCompactDrawers）；Gambling Style = **Unlicense**（Fuzss）；FluiDict = **LGPL-2.1**（flyingperson23 LICENSE 为 Forge LGPL 模板）；ForgeMultipart = **LGPL-2.1-or-later**（Chicken-Bones）；Forgelin = **LGPL-3.0**（shadowfacts）；Fence Jumper / Fluid Drawers / Floralchemy / Fixeroo / Galacticraft Tweaker = 开源但具体协议未核实；ForgeEndertech = **闭源**（mcmod 明确标记）；Full Brightness = **ARR 资源包**（Modrinth 确认）。

| # | 模组 | 正确分类 | 当前分类 | 许可证 | 1.12.2 | 开发状态 | 冲突/重复 | 风险 | 结论 |
|---|------|---------|---------|--------|--------|---------|-----------|------|------|
| 1 | FastQuit-Forge | 辅助优化（死亡界面快速退出按钮） | 辅助优化 | MIT（批量表，标题精确匹配） | 有 | 停更（小工具） | 无（客户端工具） | 低 | 收录 |
| 2 | FastWorkbench | 辅助优化（合成配方缓存性能优化） | 辅助优化 | MIT（批量表 + GitHub 核实 Shadows-of-Fire/FastWorkbench） | 有（Forge 1.12.2 列表含） | 活跃（现代线维护，1.12.2 完整；195 个整合包收录，62.5% 稳定/75% 实用） | 前置 Placebo（包内有）；与 FastFurnace（前批收录）同作者配套 | 无-低 | 收录 |
| 3 | Fence Jumper | 辅助优化（可直接跳上栅栏，5KB 轻量玩法调整） | 装饰 | 未标注（mcmod 无开源/闭源标记；作者 TheRealp455w0rd，仅 CurseForge 分发） | 有（1.12.2 为主版本线） | 停更（18 个整合包收录） | 无（客户端/服务端均可，只影响玩家） | 低-中（许可未标注） | 收录（分类修正） |
| 4 | FermiumASM | 前置库（coremod ASM 库） | 未分类 | LGPL-2.1-only（批量表，标题精确匹配） | 有 | 停更（小库） | 与 FermiumBooter（#5）配套使用 | 低 | 收录（分类修正） |
| 5 | FermiumBooter | 前置库（coremod 加载引导器） | 未分类 | LGPL-3.0-or-later（批量表，标题精确匹配） | 有 | 停更（GTNH 系常用） | 与 FermiumASM（#4）配套 | 低 | 收录（分类修正） |
| 6 | File Director | 辅助优化（游戏内文件/配置管理 GUI） | 未分类 | MIT（批量表，标题精确匹配） | 有 | 停更（小工具） | 无 | 无 | 收录（分类修正） |
| 7 | Find My Items And Fluids | ——（无法核实） | 未分类 | 未知 | 未知 | 未知（mcmod/GitHub/Modrinth 三渠道均无记录） | 未知 | 高（查无资料） | 待人工核对 jar 来源 |
| 8 | FindMeAnyDurability | ——（无法核实） | 未分类 | 未知 | 未知 | 未知（三渠道均无记录） | 未知 | 高（查无资料） | 待人工核对 jar 来源 |
| 9 | Finite Gas | ——（无法核实，疑似 Finite Water 配套） | 未分类 | 未知 | 未知 | 未知（三渠道均无记录） | 与 Finite Water（#10）疑似配套但未证实 | 高（查无资料） | 待人工核对 jar 来源 |
| 10 | Finite Water | 辅助优化（有限水资源玩法调整） | 未分类 | MIT（批量表，标题精确匹配） | 有（1.12.2） | 停更（小工具） | 与 Finite Gas（#9）疑似配套 | 低 | 收录（分类修正） |
| 11 | Firmalife | 农业（TerraFirmaCraft 附属：食物/酿造/农业扩展） | 未分类 | MIT（批量表，标题精确匹配） | 有（1.12.2 TFC 线） | 停更（TFC 生态附属） | **前置 TerraFirmaCraft（包内有，EUPL-1.2）**；无核心冲突 | 低-中（TFC 联动体量大） | 收录（分类修正） |
| 12 | FirstAid | 生存玩法（身体部位独立血量/受伤机制） | 辅助优化 | GPL-3.0-only（批量表，标题精确匹配） | 有（1.12.2） | 停更（经典模组） | **与包内 Scaling Health 等生命上限类模组的叠加效果需实测**（部位伤害 vs 全局血量）；无核心冲突 | 中（生命系统叠加实测） | 收录但风险标注（分类修正） |
| 13 | Fix Experience Bug | 辅助优化（经验条/经验获得 bug 修复） | 辅助优化 | MIT（批量表，标题精确匹配） | 有 | 停更（小修复） | 无 | 无 | 收录 |
| 14 | Fixeroo | 辅助优化（经验球合并/性能修复） | 辅助优化 | 开源（mcmod 标记；具体协议未核实；**批量 MIT 为误匹配**——实为 Packet Fixer） | 有（1.12.2；9 个整合包收录） | 停更（前置 ConfigAnytime，包内有） | **与包内 Clumps 功能重复（mcmod 明示"可直接替换掉 Clumps"）——二选一**；与 Homing Exp Orbs 兼容更佳 | 中（功能重复） | 收录但风险标注（二选一） |
| 15 | Flare (Spark for 1.12.2) | 辅助优化（性能剖析工具，spark 的 1.12.2 移植） | 未分类 | LGPL-3.0-only（批量表，标题精确匹配） | 有（仅 1.12.2） | 停更（spark 高版本继续维护） | 与 spark 同源（高版本不同加载器，无冲突） | 低 | 收录（分类修正） |
| 16 | Flat Colored Blocks | 装饰（1000+ 精确颜色方块，像素画向） | 世界生成 | MIT（批量表 + GitHub 核实 AlgorithmX2/FlatColoredBlocks） | 有（1.12.2） | 停更（28 个整合包收录） | 与 Chisels & Bits（包内有）搭配更佳；**注意：mcmod 警告与整合包配套时颜色有"掉色"风险** | 低-中 | 收录（分类修正） |
| 17 | Flopper | 存储物流（流体版漏斗：自动搬运流体） | 未分类 | MIT（批量表：匹配 "Flopper - ProjectHDS Edition" fork，标题同源） | 有（1.12.2） | 停更 | 无核心冲突 | 低（fork 实体注明） | 收录（分类修正） |
| 18 | Floralchemy | 魔法（Botania 附属：油→魔力产能花，1.1.0 起可独立运行） | 魔法 | 开源（mcmod 标记；具体协议未核实） | 有（1.12.2） | 停更（2 月前收录的新词条） | 前置 B.A.S.E（包内有）；需 Botania 或独立运行 | 低-中（许可未标注） | 收录 |
| 19 | FluiDict | 辅助优化（JEI 流体信息标签：注册名/密度/亮度） | 未分类 | **LGPL-2.1**（GitHub 核实 flyingperson23/FluiDict LICENSE 为 Forge LGPL 模板；**批量 MIT 为误匹配**——实为 Fluid Interaction Tweaker） | 有（1.12.2） | 停更（5 个整合包收录） | 前置 JEI（包内有） | 无 | 收录（分类修正+许可更正） |
| 20 | Fluid Drawers | 存储物流（流体抽屉，与抽屉管理器统一管理） | 存储物流 | 开源（mcmod 标记；具体协议未核实） | 有（1.12.2） | 停更（24 个整合包收录） | 前置 LibNine（包内有）；与镶框压缩抽屉（#34）联动 | 低-中（许可未标注） | 收录 |
| 21 | Fluid Interaction Tweaker | 辅助优化（流体交互行为脚本调整） | 辅助优化 | MIT（批量表，标题精确匹配） | 有（1.12.2） | 停更（小工具） | 无 | 低 | 收录 |
| 22 | Fluidlogged API | 前置库（方块流体承载 API） | 前置库 | 自定义许可（批量表 Custom-License） | 有（1.12.2） | 停更 | 供流体承载类模组使用；无核心冲突 | 低（自定义许可注明） | 收录 |
| 23 | Flux Networks | 科技（跨维度无线能量传输） | 科技 | **MIT**（GitHub 核实 SonarSonic/Flux-Networks；批量 NO_HIT 补查得） | 有（1.12.2；169 个整合包收录） | 1.12.2 线停更（mcmod 注明 1.12.2 版由 BloCamLimb 重写、不再依赖 SonarCore；口碑 88.7% 稳定/96.8% 实用） | 前置 Sonar Core（包内有，重写版可不需要）；与 EIO/AE2 无线传能功能重叠（共存常见） | 低 | 收录 |
| 24 | FoamFix | 辅助优化（内存/模型烘焙性能优化） | 辅助优化 | 自定义许可（批量表 Custom；asiekierka 宽松自定义） | 有（1.12.2） | 停更（经典优化） | 与各类性能优化共存常见；**与 #25（零宽空格重复条目）为同一模组** | 低 | 收录（去重） |
| 25 | Foam​Fix（含零宽空格） | ——（与 #24 同一模组的重复条目） | 辅助优化 | 同 #24（自定义许可） | 有 | 同 #24 | 重复收录 | 高（重复） | 建议排除 |
| 26 | Forestry | 科技（林业/养蜂/树木基因体系） | 科技 | LGPL-3.0-only（批量表：Forestry: Community Edition，标题匹配） | 有（1.12.2 CE 线） | 1.12.2 CE 线停更但完整 | 与包内 Binnie's/Extra Trees 生态配套（前批已提示 Extra Trees 与 Binnie's 冗余二选一）；无核心冲突 | 低 | 收录 |
| 27 | ForgeEndertech | 前置库（EnderTech 系模组通用前置） | 前置库 | 闭源（mcmod 明确闭源标记） | 有（1.12.2；87 个整合包收录） | 停更（词条仍在编辑） | 高级烟囱/高级钩爪发射器等 EnderTech mods 的前置——包内是否含其依赖项待核对 | 中（闭源 + 依赖面不明） | 收录但风险标注 |
| 28 | ForgeMultipart | 前置库（多方块部件 API） | 未分类 | **LGPL-2.1-or-later**（GitHub 核实 Chicken-Bones/ForgeMultipart LICENSE 声明） | 有（1.12.2；106 个整合包收录） | 停更（CBE 生态收尾） | 前置 CCL（包内有）；**与包内 CB Multipart 为同一模组（mcmod 627 同一词条）——二选一** | 高（重复） | 收录但风险标注（二选一） |
| 29 | Forgelin-1.8.4 | 前置库（Kotlin coremod 库，原版） | 前置库 | **LGPL-3.0**（GitHub 核实 shadowfacts/Forgelin LICENSE） | 有（1.8.4 即 1.12.2 版） | 停更（原版） | **与 Forgelin-Continuous（#30）、GTNH's Forgelin（#40）为同一模组家族——三选一，原版最旧**；Future MC 等依赖此库 | 高（重复） | 建议排除（保留 #30） |
| 30 | Forgelin-Continuous | 前置库（Forgelin 维护 fork，ChAoSUnItY） | 前置库 | LGPL-3.0-or-later（批量表，标题精确匹配） | 有 | 维护中（fork 线活跃） | 同 #29 家族（替代原版与 GTNH fork 的优先选择）；Future MC 等 Kotlin mods 依赖 | 中（与 #29/#40 重复） | 收录（作为家族唯一保留项） |
| 31 | Forked Proxy | ——（无法核实） | 未分类 | 未知 | 未知 | 未知（mcmod/GitHub/Modrinth 三渠道均无记录） | 未知 | 高（查无资料） | 待人工核对 jar 来源 |
| 32 | ForkedEnderTweaker | 辅助优化（EnderIO 的 CraftTweaker 脚本支持） | 辅助优化 | MIT（批量表，标题精确匹配） | 有 | 停更（fork 维护） | 依赖 EnderIO（包内 EnderIO CEu 线）；与 EnderTweaker 同源 fork，包内另有 EnderTweaker 条目需注意去重 | 低 | 收录 |
| 33 | Fossils and Archeology: Revival | 生物（考古/恐龙培育） | 生物 | 自定义 FA 许可（批量表 LicenseRef-FA-License） | 有（1.12.2） | 停更但内容完整 | 无核心冲突 | 低-中（自定义许可注明） | 收录 |
| 34 | Framed Compacting Drawers | 存储物流（镶框压缩抽屉/管理器，Storage Drawers 拓展） | 存储物流 | **MIT**（GitHub 核实 eutro/FramedCompactDrawers） | 有（1.12.2；58 个整合包收录） | 停更 | 前置 Storage Drawers（包内有）；与 Fluid Drawers（#20）联动 | 无-低 | 收录 |
| 35 | Friendly Fire | 辅助优化（防止友军误伤） | 未分类 | LGPL-2.1-only（批量表，标题精确匹配） | 有 | 停更 | 无 | 无 | 收录（分类修正） |
| 36 | Fugue | 辅助优化（Cleanroom 兼容性补丁集） | 未分类 | GPL-3.0-or-later（批量表 + mcmod 开源标记） | 有（仅 1.12.2） | 维护中（12 个整合包收录；100% 实用/83.3% 兼容） | **仅 Cleanroom 生效——包内 Cleanroom Relauncher 已收录，正好配套（非冲突而是必需件）** | 低 | 收录（分类修正） |
| 37 | Full Brightness | 装饰（**资源包**：全亮度纹理，非模组） | 未分类 | ARR（批量表 + Modrinth 确认项目为资源包，许可证 All-Rights-Reserved） | 有（资源包含 1.12.2） | 资源包（停更） | 无（纯视觉；应与模组类全亮度工具区分） | 低（ARR 注明；**移入 resourcepacks 目录**） | 收录（归类调整） |
| 38 | Fusion (Connected Textures) | 前置库（连接纹理支持库，SM642 系资源包/模组所需） | 辅助优化 | ARR（批量表；GitHub SuperMartijn642/Fusion 无 LICENSE 文件） | 有（1.12.2 列表含） | 活跃（SM642 系列全线维护） | **与包内 CTM 功能重叠（均为连接纹理支持）——batch-04 已记待决策**；CTM 为 Chisel/Decocraft 等所需，两者共存需实测纹理包兼容 | 中（功能重叠） | 收录但风险标注（分类修正） |
| 39 | Future MC | 科技（内容扩展：向 1.12.2 添加 1.13–1.16 物品/方块/工具） | 未分类 | ARR/未标注（批量表；mcmod 未标开源） | 有（1.12.2/1.12.1/1.12） | 停更（43 个整合包收录；86.7% 好玩但 **56.7% 稳定/46.7% 兼容**） | 前置 Forgelin（包内 #30 可满足）；兼容评价偏低；新物品与 Quark 等内容部分重叠 | 中（兼容评价 + ARR） | 收录但风险标注（分类修正） |
| 40 | GTNH's Forgelin | ——（与 #29/#30 同一模组的 GTNH fork） | 前置库 | LGPL-3.0 家族（fork 同源推断） | 有 | 活跃（GTNH 维护） | 同 #29 家族重复 | 高（重复） | 建议排除（与 #30 保留其一） |
| 41 | Galacticraft Legacy | 维度探索（星系 1.12.2 社区延续分支） | 科技 | MIT（批量表，标题匹配 Galacticraft-Legacy） | 有（仅 1.12.2 系） | 维护中（Legacy 分支） | **与 #43（Galacticraft-Legacy）为同一模组重复**；星系附属（ExtraPlanets/GC Tweaker）联动需实测 | 中（重复 + 附属实测） | 收录（去重） |
| 42 | Galacticraft Tweaker | 科技（星系 CraftTweaker 附属：元件制造台等配方脚本化） | 科技 | 开源未标注（GitHub MJRLegends/GalacticraftTweaker 无 LICENSE 文件） | 有（仅 1.12.2；9 个整合包收录） | 停更 | 前置 CraftTweaker（包内有）；**与 #44（GalacticraftTweaker）为同一模组重复**；星系 API 依赖——**与包内 GC-Legacy 兼容需实测** | 中（重复 + GC-Legacy 实测） | 收录（去重） |
| 43 | Galacticraft-Legacy | ——（与 #41 同一模组的重复条目） | 科技 | 同 #41（MIT） | 有 | 同 #41 | 重复收录 | 高（重复） | 建议排除 |
| 44 | GalacticraftTweaker | ——（与 #42 同一模组的重复条目） | 科技 | 同 #42（开源未标注） | 有 | 同 #42 | 重复收录 | 高（重复） | 建议排除 |
| 45 | Gambling Style [Archived] | 辅助优化（1.14+ 风格村民交易界面重绘） | 未分类 | **Unlicense**（GitHub 核实 Fuzss/gamblingstyle） | 有（仅 1.12.2；8 个整合包收录） | 停更（条目名已标 [Archived]） | MCA（包内有）大改村民——交易界面与 MCA 共存需实测 | 低-中 | 收录（分类修正） |

## 统计

- **收录 24**：FastQuit-Forge、FastWorkbench、FermiumASM、FermiumBooter、File Director、Finite Water、Fix Experience Bug、Flare、Flat Colored Blocks、Floralchemy、FluiDict、Fluid Drawers、Fluid Interaction Tweaker、Fluidlogged API、Flux Networks、FoamFix、Forestry、ForkedEnderTweaker、Fossils and Archeology: Revival、Framed Compacting Drawers、Friendly Fire、Fugue、Full Brightness（资源包）、Gambling Style
- **风险 12（收录但风险标注）**：Fence Jumper（许可未标注）、Firmalife（TFC 联动体量）、FirstAid（生命系统叠加实测）、Fixeroo（与 Clumps 二选一）、Flopper（fork 实体）、ForgeEndertech（闭源 + 依赖面）、ForgeMultipart（与 CB Multipart 二选一）、Forgelin-Continuous（与 #29/#40 家族重复，作唯一保留项）、Fusion（与 CTM 重叠）、Future MC（兼容 46.7% + ARR）、Galacticraft Legacy（与 #43 重复 + 附属实测）、Galacticraft Tweaker（与 #44 重复 + GC-Legacy 实测）
- **排除 5（重复条目）**：FoamFix（零宽空格）、Forgelin-1.8.4、GTNH's Forgelin、Galacticraft-Legacy、GalacticraftTweaker
- **无法核实 4（待人工核对 jar 来源）**：Find My Items And Fluids、FindMeAnyDurability、Finite Gas、Forked Proxy
- **分类修正 18**：Fence Jumper（装饰→辅助优化）、FermiumASM/FermiumBooter（未分类→前置库）、File Director/Finite Water/Friendly Fire/Fugue/Gambling Style/Flare/FluiDict（未分类→辅助优化）、Firmalife（未分类→农业）、FirstAid（辅助优化→生存玩法）、Flat Colored Blocks（世界生成→装饰）、Flopper（未分类→存储物流）、ForgeMultipart/Fusion（未分类→前置库 / 辅助优化→前置库）、Future MC（未分类→科技）、Full Brightness（未分类→装饰资源包）

> 构建提示：① **去重优先**——本批 45 条中 8 条为重复/家族重复（FoamFix×2、Galacticraft Legacy×2、GC Tweaker×2、Forgelin×3），排除后实际净收录 37 条；② **星系系实测清单**：Galacticraft Tweaker（MJRLegends，与 ExtraPlanets 同作者生态）对 GC-Legacy 的 API 兼容、ExtraPlanets 维度 ID 与前批一致需构建期核对；③ **功能二选一决策点**：Fixeroo vs Clumps、ForgeMultipart vs CB Multipart、Fusion vs CTM（batch-04 遗留）、ForkedEnderTweaker vs EnderTweaker；④ **非模组移目录**：Full Brightness（资源包→resourcepacks）；⑤ 4 个无法核实模组（#7/#8/#9/#31）建议人工核对 jar 文件名与来源后再定。Fugue 与 Cleanroom Relauncher 为必需配套，属正向关系。
