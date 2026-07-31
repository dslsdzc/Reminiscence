# 《回忆》整合包 模组合规核查 · batch-18（N–P，第 2231–2358 行）

来源：`modlist.md` 第 2231–2358 行，共 47 个模组条目（含 3 个版本文件重复条目）。
核查方式：先读 `modrinth-results.tsv` 批量结果（名字+标题双匹配者直接采用许可证），仅对 NO_HIT/标题不符/ARR 者补查。补查通道：mcmod.cn HTTP 直连搜索与详情页（每模组 ≤1 次详情访问、间隔 3.5 秒）、gh api（GitHub 仓库 LICENSE 直查；search 接口慢/限流，超时即标未知不重试）、Modrinth API（版本端点验证 1.12.2 存在性）。GitHub 网页搜索与 WebSearch/web-reader 通道均被限流或余额不足，未能使用的通道一律标"未知"。

> 本包核心模组：星系 Galacticraft、AE2/AE2UEL、暮色森林、神秘时代（TC）。冲突栏以此四者为基准。

| # | 模组 | 正确分类 | 当前分类 | 许可证 | 1.12.2 | 开发状态 | 冲突/重复 | 风险 | 结论 |
|---|------|---------|---------|--------|--------|---------|-----------|------|------|
| 1 | Not Enough Items | 前置/辅助（物品查看合成） | 未分类 | MIT（TSV 精确匹配） | 有 | 经典完成态 | 与 JEI 并存为 1.12.2 惯例；分类需修正 | 低 | 收录 |
| 2 | Not So Essential | 辅助（堆叠/挖掘增强） | 未分类 | AGPL-3.0-only（Modrinth notsoessential，1.12.2 在列） | 有 | 活跃维护多版本 | 与 Inventory Tweaks/Mouse Tweaks 类小功能轻微重叠 | 低（AGPL 收录无碍，修改分发须开源） | 收录 |
| 3 | NotEnoughIDs | 前置/优化（ID 上限扩展） | 未分类 | MIT（Solarstrike 分支）；原作者 fewizz 仓库已删除（404） | 有（1.5.4.4 即最终版） | 作者弃坑，mcmod 页明确建议改用 JustEnoughIDs | 与 JustEnoughIDs 功能替代，若包内另有 JEIDs 需二选一 | 中（弃坑+替代推荐） | 收录但风险标注 |
| 4 | NotEnoughIDs-1.5.4.4 | 同 #3 | 未分类 | 同 #3 | 有 | 同 #3 | 与 #3 为同一模组版本文件 | — | 去重（并入 #3） |
| 5 | NuclearCraft Reactor Builder | 未证实（若存在属科技工具） | 科技 | 未知 | 未知 | 未找到独立 1.12.2 模组（mcmod/Modrinth/GitHub 均无；NC 生态对应物多为网页/外部设计器） | 未知 | 高（来源无法核实） | 建议人工确认，未证实前暂缓收录 |
| 6 | NuclearCraft: Overhauled | 科技 | 科技 | MIT（TSV 精确匹配；tomdodd4598/NuclearCraft） | 有 | 1.12.2 分支维护稳定 | 与 NuclearCraft 原版二选一（本包用 Overhauled） | 低 | 收录 |
| 7 | Nyx | 环境/游戏体验（月相与夜晚事件） | 未分类 | MIT（Ellpeck/Nyx） | 有（mcmod 2401） | 2021-01 停更；小模组完成度高；mcmod 红7(88%)/黑1 | 无核心冲突 | 低 | 收录 |
| 8 | OAuth | 辅助（游戏内账号登录） | 未分类 | LGPL-3.0（Sintinium/oauth） | 有（mcmod 4855，支持 1.12.2–1.19.4） | 2023-09 更新，功能完整 | 与包内 ReAuth（modlist 第 2584 行）功能重复（均为游戏内登录），建议二选一 | 中（重复） | 收录但风险标注（与 ReAuth 取舍） |
| 9 | OC Sensors | 科技（OC 附属传感器扩展） | 未分类 | 无许可证文件（默认 ARR；thraaawn/ocsensors） | 有（mcmod 2997，红1/黑0） | 2018-01 停更，小而完整 | 需 OpenComputers | 低-中（无许可文件） | 收录但风险标注 |
| 10 | OME Tweaks | 辅助优化 | 辅助优化 | MIT（TSV 精确匹配） | 有（Modrinth 1.5.5） | 稳定 | 无 | 低 | 收录 |
| 11 | OMLib | 前置库 | 前置库 | MIT（OpenModularTurretsTeam/OMLib，2024-02 更新） | 有（mcmod 1070） | 维护中 | OMT/OMPD 配套前置，不冲突 | 低 | 收录 |
| 12 | Obscure Tooltips | 辅助优化（物品提示美化） | 辅助优化 | 自定义 LicenseRef-Obscuria-Ecosystem（Obscuria 自定义许可，再分发条款需人工审阅） | 有（Modrinth 3.10.2，2026-07-27 发布，活跃更新） | 活跃（2026-07） | 无 | 中（自定义许可未审阅） | 收录但风险标注 |
| 13 | OldJavaWarning | 辅助（启动提示） | 未分类 | LGPL-2.1-only（TSV；Darkhax） | 有 | 稳定 | 无 | 低 | 收录 |
| 14 | Omniwand | 工具（万用法杖） | 未分类 | MIT（TSV 精确匹配） | 有 | 稳定 | 无 | 低 | 收录 |
| 15 | OneConfig | 前置库（Polyfrost 配置库） | 辅助优化 | LGPL-3.0 + Polyfrost 附加条款（TSV） | 有，仅 alpha（v0.2.2 2023-02 / bootstrap 2024-06） | 1.12.2 分支为 alpha 质量 | Polyfrost 系模组前置 | 中（alpha） | 收录但风险标注 |
| 16 | OneKeyMiner | 辅助优化（连锁挖掘） | 辅助优化 | ARR（TSV；Modrinth onekeyminer_nf） | 有（1.5.8 release，2025-11） | 活跃 | 与 #28 Ore Excavation 连锁挖掘功能重叠（建议二选一或实测共存） | 中（ARR+重叠） | 收录但风险标注 |
| 17 | Open Modular Passive Defense | 科技（防御炮台） | 未分类 | GPL-3.0（OpenModularTurretsTeam/OMPD） | 有 | 2023-09 更新 | 与 OMT 同生态，配套不冲突 | 低 | 收录 |
| 18 | Open Modular Turrets | 科技（炮塔） | 科技 | MIT 文本自定义许可（LICENSE 注明仅适用源码；OpenModularTurretsTeam/OMT） | 有 | 活跃（2026-02 push） | 无 | 低 | 收录 |
| 19 | Open Terrain Generator (OTG) | 世界生成 | 世界生成 | MIT（PG85/OpenTerrainGenerator；TSV 匹配续作同 MIT） | 有 | 1.12.2 版本停更但稳定 | 地形生成器类独占世界生成管线，与包内其他地形/结构模组需实测 | 低-中 | 收录但风险标注 |
| 20 | OpenBlocks Reopened | 综合/辅助（开放式方块 1.12.2 续作） | 未分类 | 未知（原 OpenBlocks=MIT；Reopened 分支源码未定位，CF 页未验证） | 有（其即为 1.12.2 续作） | CF 社区分支，维护情况未验证 | 依赖 OpenModsLib（#24） | 中 | 收录但风险标注（人工确认来源） |
| 21 | OpenComputers | 科技（电脑化） | 科技 | MIT | 有（1.7.5.192 即 1.12.2 版本） | 稳定 | 无 | 低 | 收录 |
| 22 | OpenComputers Drivers for Tinkers Construct | 科技（OC 附属驱动） | 科技 | 无许可证（brisingraerowing/TinkersOCDrivers，默认 ARR） | 有 | 2018-12 停更，小模组 | 需 OC + TConstruct | 低-中 | 收录但风险标注 |
| 23 | OpenComputers-MC1.12.2-1.7.5.192 | 同 #21 | 科技 | 同 #21 | 有 | 同 #21 | 与 #21 为同一模组版本文件 | — | 去重（并入 #21） |
| 24 | OpenModsLib | 前置库 | 前置库 | MIT（OpenMods/OpenModsLib，2025-01 更新） | 有 | 维护中 | OpenBlocks 系前置，不冲突 | 低 | 收录 |
| 25 | OpenScreens | 前置库（OMT 生态渲染库） | 辅助优化 | 未知（V0idWa1k3r 相关库，仓库未定位） | 推断有（OMT 生态 1.12.2 配套） | 未知 | 与 OMPD/OMT 配套 | 中 | 收录但风险标注（验证前置关系） |
| 26 | Optifine Check | 辅助（若存在） | 辅助优化 | 未知 | 未知 | 未找到同名 1.12.2 模组（Modrinth 仅"OptiFine Checker"且为 1.14.4+，非此物） | 未知 | 高 | 建议人工确认 |
| 27 | Optimization | 辅助优化（若存在） | 未分类 | 未知 | 未知 | 未找到同名 1.12.2 模组（mcmod 搜索仅命中 FTB Quests Optimizer；Modrinth 无对应项目） | 未知 | 高 | 建议人工确认（疑似错名或资源脚本） |
| 28 | Ore Excavation | 工具/辅助（连锁挖掘） | 世界生成 | ARR（Modrinth 官方项目标 ARR；GitHub 无 LICENSE 文件） | 有（1.4.143；mcmod 红151(99%)/黑2，口碑极佳） | 完成度高，2023 停更 | 与 #16 OneKeyMiner 连锁挖掘重叠；分类需修正 | 中（ARR，再分发需授权） | 收录但风险标注 |
| 29 | Ore Excavation Integration | 科技/附属（OE 附属） | 世界生成 | 未知 | 未知 | 未找到（mcmod/Modrinth/GitHub 均未定位） | 未知 | 高 | 建议人工确认 |
| 30 | Ore Stages | 世界生成/魔改（矿物阶段限制） | 世界生成 | LGPL-2.1-only（TSV；Darkhax） | 有 | 稳定 | 与 Game Stages 配套 | 低 | 收录 |
| 31 | Ore Visual Detector | 辅助（矿物视觉探测） | 世界生成 | 未知 | 未知 | 未找到（mcmod/Modrinth/GitHub 均未定位） | 未知 | 高 | 建议人工确认 |
| 32 | OreExcavation-1.4.143 | 同 #28 | 世界生成 | 同 #28 | 有 | 同 #28 | 与 #28 为同一模组版本文件 | — | 去重（并入 #28） |
| 33 | OreLib | 前置库（OreCruncher 共享库） | 世界生成 | MIT（OreCruncher/OreLib） | 有（mcmod 1476，红7/黑2） | 2019 停更（库） | 无 | 低 | 收录（分类需修正） |
| 34 | Orechid Endium | 魔法（Botania 附属） | 世界生成 | MIT（p455w0rd/OrechidEndium） | 有 | 2019 停更，小而完整 | Botania 附属；分类需修正 | 低 | 收录 |
| 35 | Outlined Ores | 辅助（矿物描边视觉） | 世界生成 | ARR（TSV；Modrinth 各同名项目均为 ARR） | 未证实（Modrinth ore-outlines/outlinedores 等全部为 1.16/1.20+，无 1.12.2 文件） | 现代版本活跃，1.12.2 未见发布 | 未知 | 中-高 | 建议人工确认（1.12.2 版本来源） |
| 36 | Overgrown Flowery GUI | 辅助（GUI 皮肤） | 未分类 | 自定义 LicenseRef-Overgrown-Flowery-GUI（需审阅） | 有 | 稳定 | 无 | 中（自定义许可） | 收录但风险标注 |
| 37 | Overloaded | 未证实（若为 CF 创意物品模组属工具） | 辅助优化 | 未知 | 未知 | 未找到 1.12.2 同名模组（mcmod 仅命中 #38；Modrinth "OVERLOADED" 为 1.19+ 的不同模组） | 未知 | 高 | 建议人工确认 |
| 38 | Overloaded Armor Bar | 辅助优化（HUD 护甲显示） | 工具武器 | Apache-2.0（Modrinth 官方；Tfarcenim/OverloadedArmorBar） | 有（mcmod 3131，红18(95%)/黑1） | 活跃（2026-03 push） | 与包内护甲条/HUD 类模组（Classic Bars、Armor Points++ 等）轻微重叠；分类需修正 | 低 | 收录 |
| 39 | Overworld Quartz | 世界生成/资源（主世界石英矿） | 维度探索 | ARR（Modrinth overworld-quartz） | 有（版本列表含 1.12.2） | 稳定 | 无核心冲突；分类需修正 | 低-中（ARR） | 收录但风险标注 |
| 40 | PSICaster | 魔法（Psi 附属自动施法） | 魔法 | 无明确许可（LICENSE.txt 仅为 Forge LGPL 样板文件）→ 默认 ARR | 有（mcmod 5770，红1/黑0） | 2021-02 停更，小而完整 | Psi 附属 | 低-中 | 收录但风险标注 |
| 41 | PTRLib | 前置库 | 前置库 | ARR（TSV；Shadows-of-Fire） | 有 | 稳定 | 无 | 低-中（ARR） | 收录但风险标注 |
| 42 | PackMode Reborn | 辅助（整合包模式切换） | 未分类 | 按 PackMode 收录（SkySom/The-Acronym-Coders，MIT）；"Reborn"独立项目未找到，疑为同名延续/二传 | 有（PackMode 1.12.2） | PackMode 本体维护至 2023 | 与 PackModeMenu（#43）配套 | 低-中 | 收录（标注按 PackMode 收录，确认来源） |
| 43 | PackModeMenu | 辅助（模式切换菜单） | 辅助优化 | MIT（IllgiLP/PackModeMenu） | 有（mcmod 3226） | 2021-12 停更；mcmod 红0(50%)/黑0(50%)，评价极少 | PackMode 配套，不冲突 | 低 | 收录 |
| 44 | PackagedAstral | 魔法（Packaged 系列） | 魔法 | MIT（TSV 精确匹配） | 有 | 稳定 | Packaged 系列（Astral Sorcery 附属） | 低 | 收录 |
| 45 | PackagedAuto | 科技（自动化封装） | 未分类 | MIT（TSV 精确匹配） | 有 | 稳定 | Packaged 系列 | 低 | 收录（分类需修正） |
| 46 | PackagedAvaritia | 科技/魔法（Avaritia 配方封装） | 未分类 | MIT（TSV 精确匹配） | 有 | 稳定 | Packaged 系列（Avaritia 附属） | 低 | 收录 |
| 47 | PackagedDraconic | 科技（Draconic Evolution 附属封装） | 科技 | MIT（TSV 精确匹配） | 有 | 稳定 | Packaged 系列 | 低 | 收录 |

## 统计

- **收录 22**：Not Enough Items、Not So Essential、NuclearCraft: Overhauled、Nyx、OME Tweaks、OMLib、OldJavaWarning、Omniwand、Open Modular Passive Defense、Open Modular Turrets、Open Terrain Generator (OTG)、OpenComputers、OpenModsLib、Ore Stages、OreLib、Orechid Endium、Overloaded Armor Bar、Overworld Quartz、PackagedAstral、PackagedAuto、PackagedAvaritia、PackagedDraconic
- **风险 15（收录但风险标注）**：NotEnoughIDs（作者弃坑并建议改用 JustEnoughIDs）、OAuth（与 ReAuth 功能重复二选一）、OC Sensors（无许可文件）、Obscure Tooltips（Obscuria 自定义许可待审阅）、OneConfig（1.12.2 仅 alpha）、OneKeyMiner（ARR+与 Ore Excavation 连锁挖掘重叠）、OpenBlocks Reopened（分支源码未定位）、OpenComputers Drivers for Tinkers Construct（无许可文件）、OpenScreens（仓库未定位）、Ore Excavation（ARR 再分发需授权）、Overgrown Flowery GUI（自定义许可待审阅）、PSICaster（无明确许可）、PTRLib（ARR）、PackMode Reborn（按 PackMode 收录待确认）、PackModeMenu（评价极少）
- **建议人工确认 7（暂缓收录）**：NuclearCraft Reactor Builder、Optifine Check、Optimization、Ore Excavation Integration、Ore Visual Detector、Outlined Ores（1.12.2 无版本）、Overloaded（身份未证实）
- **去重 3（与同批条目同一模组版本文件）**：NotEnoughIDs-1.5.4.4（并入 #3）、OpenComputers-MC1.12.2-1.7.5.192（并入 #21）、OreExcavation-1.4.143（并入 #28）
- **分类错误 24 处**：Not Enough Items（未分类→前置/辅助）、Not So Essential（未分类→辅助）、NotEnoughIDs（未分类→前置/优化）、Nyx（未分类→环境）、OAuth（未分类→辅助）、OC Sensors（未分类→科技）、OldJavaWarning（未分类→辅助）、Omniwand（未分类→工具）、OneConfig（辅助优化→前置库）、OMPD（未分类→科技）、OpenBlocks Reopened（未分类→综合）、OpenScreens（辅助优化→前置库）、Ore Excavation（世界生成→工具）、Ore Excavation Integration（世界生成→科技附属）、Ore Visual Detector（世界生成→辅助）、OreLib（世界生成→前置库）、Orechid Endium（世界生成→魔法）、Outlined Ores（世界生成→辅助）、Overgrown Flowery GUI（未分类→辅助）、Overloaded Armor Bar（工具武器→辅助HUD）、Overworld Quartz（维度探索→世界生成）、PackModeMenu（辅助优化→辅助）、PackagedAuto（未分类→科技）、Optimization（未分类→辅助优化，仅当其存在）

> 构建提示：本批两处核心取舍——(1) OAuth 与包内 ReAuth 均为游戏内账号登录，需二选一（OAuth 为 LGPL-3.0，许可更友好，建议保留 OAuth）；(2) OneKeyMiner 与 Ore Excavation 连锁挖掘重叠，建议保留口碑更好的 Ore Excavation（红151）。NotEnoughIDs 作者明确推荐 JustEnoughIDs，若包内同时收录需移除其一。7 个"建议人工确认"条目在确认来源前不要打包；Outlined Ores 与 Overloaded 均未找到 1.12.2 对应版本。ARR 类（Ore Excavation、PTRLib、PSICaster、OC Sensors、TinkersOCDrivers、Overworld Quartz、OneKeyMiner）收录时在整合包页面注明出处即可，打包分发前建议联系作者确认再分发授权。
