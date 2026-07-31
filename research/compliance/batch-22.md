# 批量核查 22（modlist.md 2779-2912 行，44 个模组）

核查方法：优先使用 modrinth-results.tsv 批量结果（名称精确匹配直接采用其许可证）；NO_HIT / ARR / 标题错配的模组通过 GitHub API（gh api）+ raw.githubusercontent LICENSE/README 抓取 + mcmod 详情页（浏览器 tab 0）+ Modrinth API `versions:1.12.2` 分面复核补查。数据截至 2026-07-31。

| # | 模组 | 正确分类 | 当前分类 | 许可证 | 1.12.2 | 开发状态 | 冲突/重复 | 风险 | 结论 |
|---|------|----------|----------|--------|--------|----------|-----------|------|------|
| 1 | Simple Smeltery Accelerator | 科技（匠魂2附属：冶炼炉加速器方块） | 未分类 | 未标注（无开源仓库，默认 ARR） | 有（仅 1.12.2） | 停更（作者 SOLs_Gaming，简单附属，10 整合包收录，口碑 0 无人问津） | 需 TConstruct（包内有）；无冲突 | 中（许可未标注） | 收录（风险标注） |
| 2 | Simple Storage Network | 存储物流 | 存储物流 | ARR（Modrinth 明确标注 All Rights Reserved；GitHub 无官方仓库） | 有 | 活跃维护（Lothrazar，支持至 1.21.1，42 整合包收录） | 与 AE2 定位重叠但互补（低成本前期存储），可共存；与 Storage Drawers 互补 | 高（ARR 禁止再分发未豁免） | 风险标注（民间整合包普遍收录，正式发布需作者授权） |
| 3 | Simple Trophies | 实用（整合包奖杯/奖励展示） | 未分类 | MPL-2.0（GitHub quat1024/simpletrophies 确认） | 有（仅 1.12.2） | 停更开源（quaternary，12 整合包收录） | 无 | 低 | 收录 |
| 4 | Simple Void World | 维度探索（虚空维度传送门） | 维度探索 | MIT（GitHub modmuss50/SimpleVoidWorld 确认） | 有（Forge 1.12.2/1.12.1/…/1.10.2） | 停更（modmuss50 转 Fabric，1.12.2 版稳定，18 整合包收录） | 与 #5 完全重复；需 Reborn Core 前置 | 低 | 收录（与 #5 去重） |
| 5 | Simple-Void-World | 同 #4（版本文件名） | 维度探索 | 同 #4 | 有 | 同 #4 | 与 #4 完全重复 | 低 | 二选一（并入 #4） |
| 6 | SimpleSponge | 实用（OpenBlocks 海绵移植+增强） | 未分类 | 自定义 JMML（Jacky's Minecraft Mods License：官方版明确允许任何公开/私有整合包使用；禁止修改版再分发、禁止代码/素材复用；OpenBlocks 部分 MIT） | 有（1.10+ 全版本） | 活跃（JackyyTV 持续维护，1.20.2 分支仍开发） | 无 | 中（自定义许可，须用官方原版，不得改） | 收录（仅官方原版，风险标注） |
| 7 | Simply Jetpacks 2 | 科技/工具（喷气背包） | 工具武器 | MIT（Modrinth 批量） | 有 | 停更（经典稳定） | 与 #8 完全重复 | 低 | 收录（与 #8 去重） |
| 8 | SimplyJetpacks2 | 同 #7 | 工具武器 | 同 #7 | 有 | 同 #7 | 与 #7 完全重复 | 低 | 二选一（并入 #7） |
| 9 | SkyLandsForge | 维度探索（天域维度，还原 beta 1.6） | 未分类 | Apache-2.0（GitHub lhns/mc-skylands 确认，README 明示） | 有（1.12.2 Forge 仅） | 停更（lhns 早期项目，简单稳定；mcmod 无词条） | 无 | 低 | 收录（改分类维度探索） |
| 10 | SlashBladeJapaneseAddonPack | 工具武器（SlashBlade 日系附属包） | 工具武器 | MIT（Modrinth 批量） | 有 | 停更 | 需 SlashBlade 本体（若包内未装本体则无效） | 低 | 收录 |
| 11 | Slashblade Murasame | 工具武器（村正刀） | 工具武器 | MIT（Modrinth 批量） | 有 | 停更 | 需 SlashBlade 本体 | 低 | 收录 |
| 12 | Sledgehammer | 前置库（ADudeCalledLeo 库） | 未分类 | Apache-2.0（Modrinth 批量，1.12.2 共 6 版确认） | 有 | 维护缓慢（2024 仍有发布） | 库，无冲突 | 低 | 收录 |
| 13 | Small Held Items | 装饰/客户端（手持物品缩小显示） | 未分类 | CC-BY-4.0（Modrinth 批量，1.12.2 1 版确认） | 有 | 停更 | 与 #14/#15 同类视觉调整（非互斥） | 低 | 收录 |
| 14 | Small Shield & Totem | 装饰/客户端（盾牌与图腾缩小） | 工具武器 | CC-BY-NC-ND-4.0（Modrinth 批量，1.12.2 4 版确认） | 有 | 停更 | 与 #15 功能重复 → 二选一 | 中（NC-ND：禁止商用与修改，原样收录进包可） | 收录（与 #15 二选一） |
| 15 | Smaller Totem | 装饰/客户端（图腾缩小） | 未分类 | ARR（Modrinth 批量 small-totem，1.12.2 1 版确认） | 有 | 停更 | 与 #14 功能完全重复 | 高（ARR） | 建议排除（#14 已覆盖且许可更宽松） |
| 16 | Smart Particles | 辅助优化（粒子物理/智能粒子） | 辅助优化 | MIT（Modrinth 批量，1.12.2 3 版确认） | 有 | 停更 | 无 | 低 | 收录 |
| 17 | Smeltery IO | 科技（匠魂冶炼炉 IO 扩展） | 未分类 | CC-BY-NC-SA-4.0（Modrinth 批量） | 有 | 停更 | 与包内 Tinker I/O 为同一模组（Tinker I/O 的 1.12.2 名）→ 重复 | 中（NC-SA） | 二选一（与 Tinker I/O 保留其一） |
| 18 | Smooth Font | 辅助优化（平滑字体渲染） | 辅助优化 | 未标注（GitHub bre2el 无仓库；TSV 的 MIT 匹配实为"Der's Smooth Shaded Font"资源包，误匹配弃用） | 有（1.7.10-1.12.2） | 停更（bre2el，经典，118 整合包收录） | 与 #19 完全重复 | 中（许可未标注，社区广泛使用） | 收录（风险标注，与 #19 去重） |
| 19 | SmoothFont-mc1.12.2-2.0 | 同 #18（版本文件名） | 辅助优化 | 同 #18 | 有 | 同 #18 | 与 #18 完全重复 | 中 | 二选一（并入 #18） |
| 20 | Snow! Real Magic | 装饰（雪物理/积雪增强） | 装饰 | MIT（GitHub Snownee/SnowRealMagic 确认） | 有（1.12.2 至 1.21.4） | 活跃（Snownee 持续维护，76 整合包收录） | 无 | 低 | 收录 |
| 21 | Solar Flux Reborn | 科技（太阳能板，RF/FE 互通） | 科技 | ARR（Modrinth 批量标注；GitHub 无 LICENSE 文件） | 有（1.9.4-1.21.4） | 活跃（Zeith 等 4 人维护，65 整合包收录） | 无硬冲突 | 高（ARR 禁止再分发未豁免） | 风险标注（民间普遍收录，正式发布需作者授权） |
| 22 | Sonar Core | 前置库（Flux Networks / Calculator / 实用物流前置） | 世界生成（误） | ARR（SonarSonic 一贯闭源；Modrinth 批量 ARR） | 有（1.7.10-1.12.2） | 停更（1.12.2 稳定，50 整合包收录） | 包内 Flux Networks 的前置，必须同装 | 高（ARR，作为前置随主模组分发） | 收录（改分类前置库；风险标注） |
| 23 | Sonomagy | 非模组（Thaumcraft 4/5/6 音效增强资源包） | 未分类 | ARR（CurseForge 资源包惯例，作者 PessiMysterio 未开源） | 有（1.7.10-1.12.2） | 停更（音效资源包，21 万+ 下载） | 非 mod，需放 resourcepacks 目录；与神秘时代联动 | 高（ARR；且非模组条目放错位置） | 建议排除（或移入资源包目录并另确认许可） |
| 24 | Soot-1.6 | 科技（Embers 附属） | 未分类 | MIT（GitHub DaedalusGame/Soot 确认，©2017 BordListian） | 有 | 停更（Embers 时代附属，简单） | 需 Embers（包内有 EmbersRekindled）；无冲突 | 低 | 收录 |
| 25 | Sound Physics | 辅助优化（物理声效：衰减/混响/遮挡） | 辅助优化 | 未标注（Sonic Ether 原创、1.12.2 作者 daipenger；原仓库不可考，1.12.2 CurseForge 上传为非官方） | 有（1.12.2 作者 daipenger） | 停更（11 整合包收录） | 与包内 籁 (SoundPhysics Remixin)（L1341）为同一模组家族 → 功能重复二选一 | 高（许可不明 + 非官方上传） | 建议排除（保留籁：1.12.2 专用分叉且维护更活跃） |
| 26 | Sound Reloader | 辅助优化（按键仅重载声音，替代 F3+T） | 辅助优化 | Unlicense（GitHub TheWhoAreYouPerson/soundreloader 确认） | 有（1.7.10-1.12.2） | 停更（简单稳定，13 整合包收录） | 无 | 低 | 收录 |
| 27 | Spartan Shields | 工具武器（盾牌扩展） | 工具武器 | Apache-2.0（Modrinth 批量） | 有 | 停更 | 需 Spartan Weaponry（包内 #28 有） | 低 | 收录 |
| 28 | Spartan Weaponry | 工具武器（武器扩展） | 工具武器 | Apache-2.0（Modrinth 批量） | 有 | 停更 | 与 TCon 等工具类可共存 | 低 | 收录 |
| 29 | SpatialCompat | 科技（AE2 空间塔兼容带 NBT 方块） | 未分类 | 未标注（无开源仓库，默认 ARR） | 有（仅 1.12.2） | 停更（MrDj200，12 整合包收录） | 前置 AE2（包内为 AE2UEL）→ 与 AE2UEL 兼容性需实测（针对原版 rv6 开发） | 中（许可未标注 + AE2UEL 兼容存疑） | 收录（风险标注） |
| 30 | SpeedRunIGT | 实用（速通计时） | 未分类 | MIT（Modrinth 批量，1.12.2 共 20 版确认） | 有 | 活跃（持续维护） | 无 | 低 | 收录 |
| 31 | Spice of Life | 农业（饮食多样化惩罚机制） | 农业 | 未标注（squeek502 无公开仓库，默认 ARR） | 有 | 停更（经典，44 整合包 + 20 服务器） | 与 #32 Carrot Edition 功能重叠（机制相反，同装体验冲突）→ 二选一 | 高（许可未标注） | 风险标注（建议二选一，倾向保留 LGPL 的 Carrot Edition） |
| 32 | Spice of Life: Carrot Edition | 农业（饮食多样化奖励机制） | 农业 | LGPL-2.1（GitHub Cazsius/Spice-of-Life-Carrot-Edition 确认） | 有 | 停更（1.12.2 线，mcmod 明确"非 SoL 分支但功能相反"） | 与 #31 二选一 | 低 | 收录 |
| 33 | SplashAnimation | 装饰/客户端（标题界面动画） | 未分类 | LGPL-3.0-only（Modrinth 批量） | 有 | 停更（focamacho） | 无 | 低 | 收录 |
| 34 | Spooklementary | 装饰/万圣节（万圣节元素） | 未分类 | 自定义 Complementary License（Modrinth 批量，1.12.2 共 7 版确认） | 有 | 停更 | 无 | 中（自定义许可条款需确认） | 收录（风险标注） |
| 35 | Stackie | 辅助优化（掉落物/经验球堆叠） | 辅助优化 | 未标注开源（Lunatrius 无 LICENSE；mcmod 记载"作者允许玩家将本模组添加至整合包"） | 有（1.7.10-1.12.2） | 停更（Lunatrius，经典，11 整合包收录） | 前置 LunatriusCore（包内有）；与包内 Get It Together, Drops! 功能部分重复 → 可二选一 | 中（作者口头授权整合包，无书面许可） | 收录（风险标注） |
| 36 | Stained Glass Ultra | 装饰（彩绘玻璃） | 装饰 | LGPL-3.0-or-later（Modrinth 批量，1.12.2 共 10 版确认） | 有 | 停更 | 无 | 低 | 收录 |
| 37 | StandardExpansion-3.4.173 | 任务（Better Questing 官方附属：任务/奖励扩展） | 未分类 | MIT（GitHub aggie33/StandardExpansion 系列确认） | 有（1.7.10-1.20.1） | 停更（Funwayguy，成熟，53 整合包 + 24 服务器，安装率 35%） | 需 Better Questing 本体（若包内未装则无效） | 低 | 收录 |
| 38 | Stellar Fluid Conduits | 科技（EIO 流体导管 64 倍速增强） | 未分类 | 未标注（GitHub Tfarcenim/StellarFluidConduits 无 LICENSE 文件，默认 ARR） | 有（仅 1.12.2） | 停更（冷门，5 整合包收录，口碑 0） | 前置 Ender IO + Endergy（包内均有） | 高（ARR，无许可文件） | 风险标注（建议排除或联系作者授权） |
| 39 | StellarCore | 辅助优化（Mixin 驱动的修复/性能优化，1.12.2） | 世界生成（误） | LGPL-3.0（GitHub NovaEngineering-Source/StellarCore 确认） | 有（1.12.2 仅） | 活跃（NovaEngineering 持续维护） | 需 MixinBooter 8.0+ 与 ConfigAnytime 2.0+（包内均有）；与包内 CensoredASM 冲突（resourceLocationCanonicalization 须关）与 VintageFix 冲突（vintagefix.mixin.dynamic_resources 须关），README 有明确配置要求 | 低-中（按 README 调配置即可） | 收录（改分类辅助优化） |
| 40 | Storage Drawers | 存储物流（抽屉存储） | 存储物流 | MIT（Modrinth 批量 + GitHub jaquadro/StorageDrawers 确认） | 有 | 停更（jaquadro，1.12.2 经典） | 与 #42 完全重复；与 SSN 定位互补 | 低 | 收录（与 #42 去重） |
| 41 | Storage Drawers Extras | 存储物流（装饰木种扩展） | 存储物流 | MIT（GitHub jaquadro/StorageDrawersExtras 确认） | 有 | 停更 | 需 Storage Drawers（包内有） | 低 | 收录 |
| 42 | StorageDrawers | 同 #40（版本文件名） | 存储物流 | MIT（同 #40） | 有 | 同 #40 | 与 #40 完全重复 | 低 | 二选一（并入 #40） |
| 43 | Stuff A Sock In It | 辅助优化（控制台刷屏过滤） | 未分类 | LGPL-2.1-only（Modrinth 批量） | 有 | 停更 | 无 | 低 | 收录 |
| 44 | Stygian End | 维度探索（末地维度重做） | 维度探索 | MIT（Modrinth 批量 Stygian End Continuation，1.12.2 共 6 版确认） | 有 | 停更（原版停更；Continuation 分支维护） | 原版与 Continuation 版本二选一 | 低 | 收录 |

## 统计

- 共核查：44 行（modlist.md 2779-2912 行，其中 2912 行为分类标题）
- 收录：25 个（#3 #4 #7 #9 #10 #11 #12 #13 #14 #16 #20 #24 #26 #27 #28 #30 #32 #33 #36 #37 #39 #40 #41 #43 #44）
- 收录但风险标注：7 个（#1 Simple Smeltery Accelerator、#6 SimpleSponge、#18 Smooth Font、#22 Sonar Core、#29 SpatialCompat、#34 Spooklementary、#35 Stackie）
- 风险标注（许可禁止再分发/未标注，仅私用或需作者授权）：4 个（#2 SSN、#21 Solar Flux Reborn、#31 Spice of Life、#38 Stellar Fluid Conduits）
- 建议排除：3 个（#15 Smaller Totem（与 #14 重复且 ARR）、#23 Sonomagy（非模组资源包 + ARR，放错位置）、#25 Sound Physics（许可不明+非官方上传，与籁重复））
- 包内重复需二选一：7 组 —— Simple Void World×2（#4/#5）、SimplyJetpacks×2（#7/#8）、SmoothFont×2（#18/#19）、StorageDrawers×2（#40/#42）、Smeltery IO vs Tinker I/O（#17）、Sound Physics vs 籁（#25）、SoL vs SoL: Carrot Edition（#31/#32）；视觉类 #14/#15（Small Shield & Totem vs Smaller Totem）
- 分类错误需修正：Sonar Core（世界生成→前置库）、StellarCore（世界生成→辅助优化）、SkyLandsForge（未分类→维度探索）、Stellar Fluid Conduits/SpatialCompat/Soot/Simple Smeltery Accelerator（未分类→科技）、StandardExpansion（未分类→任务）、Simple Trophies/SimpleSponge（未分类→实用）、Sledgehammer（未分类→前置库）、SplashAnimation/Small Held Items（未分类→装饰/客户端）、Stuff A Sock In It（未分类→辅助优化）
- 关键冲突核查：与星系 Galacticraft 无交集；SpatialCompat 与 AE2UEL 兼容性需实测（针对原版 rv6 开发）；StellarCore 与 CensoredASM/VintageFix 有已知配置冲突（README 明确处理方案）；Sonomagy/Stellar Fluid Conduits 与神秘时代/Ender IO 均为附属关系；Soot 依赖 EmbersRekindled（包内有）。
