# 《回忆》整合包 模组合规核查 · batch-13（Integrated Crafting – Just Enough Energistics）

来源：`modlist.md` 第 1616–1730 行，共 50 个模组条目（去重后 43 个唯一模组）。
核查方式：以 `modrinth-results.tsv` 批量结果为基准（名字+标题对得上时直接用其许可证）；NO_HIT / 批量 ARR / 标题疑似误匹配的条目经 **GitHub `gh api`**（search/repositories + branches 核实 11 个仓库：CyclopsMC/Integrated* 五件套、JackyyTV/IntegrationForegoing、PieKing1215/InvMove、gr8pefish/IronBackpacks、CreativeMD/ItemPhysic、mezz/ItemZoom、TheLMiffy1111/JAOPCAAdditions&Custom、imdutch21/jei-bees、vfyjxf/JEI-Utilities、latvian-dev/item-filters、p455w0rd/JustEnoughEnergistics、ukmojb/ItemStagesPlus、Towdium/JustEnoughCalculation）+ **mcmod.cn 站内搜索 + 详情页**（HTTP 直连，间隔 3–4 秒，共访问详情页 7 个：3048/16799/805/4234/1163/6172 + ItemZoom 等）+ **Modrinth API**（1.12.2 版本过滤，核实 Item Collectors / Item Highlighter / Inventory Bogosorter 的 1.12.2 版本、Item Filters 无 1.12.2 上传）。

> **本批重要发现**：
> 1. **TSV 三处误匹配已纠正**：Integrated Dynamics（批量 Unlicense 实为"Astral Sorcery Anti Anti Fake Player"→ 实际 **MIT**）、InvMove（批量 CC-BY-NC-4.0 实为 ItemOverflow → 实际 **LGPL-3.0**）、IvToolkit（批量 ARR 实为 Adventure Toolkit → 许可**未标注**）。Integrated Terminals/Tunnels 批量标题（Integrated Derivative）为同系列近似匹配，许可证 MIT 与 GitHub 核实一致，直接采用。
> 2. **两个高版本模组混入 1.12.2 清单**：Item Borders [Neo/Forge]（1.20+ 模组，1.12.2 无版本）、Item Filters 在 Modrinth 无 1.12.2 上传（但 GitHub 有 1.12 分支，CF 有 1.12.2 文件，判定**有 1.12.2**，仅为 FTB 系依赖库，包内未见 FTB Quests 用途窄）。Item Borders 建议排除。
> 3. **Just A Resource Generation 实为 JARGCA**（JAOPCA 神秘农业附属，曾用名 JAOPCAAgriculture，mcmod 1163）——分类"世界生成"错误，应归农业/科技，依赖包内 Mystical Agriculture + JAOPCA。
> 4. **本批 6 组包内重复/二选一**：Inventory BogoSorter vs Inventory Tweaks（自动整理）；Iron Backpacks vs Traveler's Backpack（可穿戴背包）；Iron Jetpacks vs Simply Jetpacks 2（喷气背包）；Just Enough Calculation vs Just Enough Drags（合成材料计算）；Just Enough Characters vs HECh（拼音搜索，batch-11 已提示）；itlt vs Custom Window Title（窗口标题定制，部分重叠）。
> 5. **与四核心（星系 Galacticraft / AE2UEL / 暮色 / 神秘时代）无直接冲突**；关联点：Just Enough Energistics 与 AE2UEL 兼容需构建期实测（AE2UEL 保持 API 兼容，大概率可）、Integrated Terminals 走 ID×AE2 联动（正向）；JEI Bees 与 Forestry: Community Edition 数据兼容需实测。
> 6. **重复条目 7 个**：IntegrationForegoing（= Integration Foregoing）、InventoryHUD+（= Inventory HUD+）、Inventory Tweaks [1.12 only]（= Inventory Tweaks）、InventoryTweaks-1.63（文件名条目）、ItemPhysic_Full_1.4.28_mc1.12.2（文件名条目）、Just Enough Energistics (JEE)（= Just Enough Energistics）。

| # | 模组 | 正确分类 | 当前分类 | 许可证 | 1.12.2 | 开发状态 | 冲突/重复 | 风险 | 结论 |
|---|------|---------|---------|--------|--------|---------|-----------|------|------|
| 1 | Integrated Crafting | 科技（ID 系列附属：矿石/流体自动合成） | 科技 | MIT（GitHub CyclopsMC/IntegratedCrafting 核实；kroeserr 1.12.2 原版同许可） | 有（1.0.6） | 1.12.2 线停更但完整稳定；现代线由 CyclopsMC 维护、Quantum-Studios fork 仍活跃 | 依赖 Integrated Dynamics（包内）；与 AE2UEL 无直接冲突 | 无-低 | 收录 |
| 2 | Integrated Derivative | 科技（ID 附属：复合管道/计算） | 科技 | MIT（批量表+GitHub 一致） | 有 | 停更（1.12.2 专属） | 依赖 Integrated Dynamics | 无-低 | 收录 |
| 3 | Integrated Dynamics | 科技（变量编程/管道/逻辑网络） | 科技 | **MIT**（GitHub CyclopsMC/IntegratedDynamics 核实；**批量表 Unlicense 为误匹配**"Astral Sorcery Anti Anti Fake Player"） | 有（1.10.13） | 1.12.2 线停更；现代线活跃（集成生态核心，大量附属依赖） | 与 AE2UEL 联动正向（ID 支持 AE2 接口）；与 EnderIO/Mek CE 管道功能重叠但可共存；无核心冲突 | 无-低 | 收录 |
| 4 | Integrated NBT | 科技（ID 附属：NBT 变量操作） | 科技 | MIT（GitHub SCLeoX/IntegratedNBT、Quantum-Studios fork 均 MIT） | 有 | 停更（1.12.2 专属） | 依赖 Integrated Dynamics | 无-低 | 收录 |
| 5 | Integrated Terminals | 科技（ID 附属：终端，AE2 联动） | 科技 | MIT（批量表+GitHub CyclopsMC/IntegratedTerminals 一致） | 有 | 停更（1.12.2 线） | 依赖 ID + AE2（AE2UEL 兼容需构建期实测，老 API 附属通常可） | 低 | 收录 |
| 6 | Integrated Tunnels | 科技（ID 附属：管道/物品流体网络） | 科技 | MIT（批量表+GitHub CyclopsMC/IntegratedTunnels 一致） | 有 | 停更（1.12.2 线） | 依赖 Integrated Dynamics | 无-低 | 收录 |
| 7 | Integration Foregoing | 科技（工业先锋官方附属：跨 mod 集成） | **世界生成（错误）** | JackyyTV 自定义（NOASSERTION=ARR+官方版整合包可用，与包内 GunpowderLib 同款许可） | 有（mcmod 3298） | 停更（31 mod 集成，经典） | **需 GunpowderLib 前置（包内 batch-11 已收录）+ 工业先锋（包内）**；与包内 Industrial Foregoing 附属线无冲突 | 低（许可注明） | 收录（分类修正：世界生成→科技） |
| 8 | IntegrationForegoing | 同 #7（重复条目） | 世界生成 | 同 #7 | 有 | 同 #7 | 重复收录（= Integration Foregoing） | 高（重复） | 建议排除（去重） |
| 9 | InvMove | 辅助优化（GUI 打开时可移动） | 未分类 | **LGPL-3.0**（GitHub PieKing1215/InvMove 核实；**批量表 CC-BY-NC-4.0 为误匹配**"ItemOverflow"） | 有（mcmod 2809） | 现代线活跃（Forge/Fabric 继续维护） | 无冲突；客户端操控类 | 无 | 收录（分类修正：未分类→辅助优化） |
| 10 | Inventory Bogo Sorter | 存储物流（自动整理） | 存储物流 | LGPL-3.0-only（批量表+Modrinth CuLATCrJ 一致） | 有（Modrinth 1.12.2 版本核实） | 停更（1.12.2 线） | **与 #12 Inventory Tweaks 功能重复（自动整理）——二选一**；整理热键与 Mouse Tweaks 等共存注意 | 中（重复） | 收录但风险标注（二选一） |
| 11 | Inventory HUD+ | 辅助优化（背包/药水/饰品 HUD） | **存储物流（错误）** | ARR（批量表+CF 一致） | 有（mcmod 3395） | 停更（经典 HUD，口碑正面） | 无核心冲突；与 Armor Points ++/Armor Curve 等 HUD 模组共存注意 | 低（ARR 注明） | 收录（分类修正：存储物流→辅助优化） |
| 12 | Inventory Tweaks | 存储物流（经典自动整理） | 存储物流 | LGPL-3.0（批量表标题误匹"Bogosorter"但许可证与模组实际一致） | 有（1.63=包内文件名） | 停更（经典，2020 后无更新） | **与 #10 BogoSorter 二选一** | 中（重复） | 收录但风险标注（二选一） |
| 13 | Inventory Tweaks [1.12 only] | 同 #12（变体条目） | 存储物流 | 同 #12 | 有 | 同 #12 | 重复收录 | 高（重复） | 建议排除（去重） |
| 14 | InventoryHUD+ | 同 #11（重复条目） | 存储物流 | 同 #11（ARR） | 有 | 同 #11 | 重复收录（= Inventory HUD+） | 高（重复） | 建议排除（去重） |
| 15 | InventoryTweaks-1.63 | 同 #12（文件名条目） | 存储物流 | 同 #12 | 有 | 同 #12 | 重复收录（文件名版本号） | 高（重复） | 建议排除（去重） |
| 16 | Invisible Armor Model | 装饰/外观（盔甲隐形显示） | 工具武器 | ARR（批量表标题匹配） | 有 | 停更（小众） | 无冲突 | 低（ARR 注明） | 收录（分类轻微调整：工具武器→装饰/外观） |
| 17 | Invisible Item Frames | 装饰（隐形物品展示框） | 装饰 | MIT（批量表） | 有 | 停更（小模组） | 无冲突 | 无 | 收录 |
| 18 | Iron Backpacks | 存储物流（可穿戴铁背包） | 存储物流 | GPL-3.0（GitHub gr8pefish/IronBackpacks 核实） | 有（3.0.8） | 停更（作者不活跃，经典） | **与包内 Traveler's Backpack 功能重复（可穿戴背包）——二选一或共存实测** | 中（重复） | 收录但风险标注 |
| 19 | Iron Chests | 存储物流（金属箱子） | 存储物流 | GPL-3.0-or-later（批量表） | 有（7.6.x） | 高版本线活跃（继续更新） | 无冲突；与 Storage Drawers（包内）定位互补 | 无-低 | 收录 |
| 20 | Iron Jetpacks | 工具武器（喷气背包） | 工具武器 | MIT（批量表） | 有 | 停更 | 需 LibNine（包内 ✓）；**与包内 Simply Jetpacks 2 功能重复（喷气背包）——二选一** | 中（重复） | 收录但风险标注 |
| 21 | It's The Little Things | 辅助优化（窗口图标/标题定制，itlt） | 未分类 | 未标注（GitHub 未找到仓库；mcmod 4234 无开源标注） | 有（mcmod 4234，红10黑1，1.10.2–1.19.2 全线） | 停更（口碑好） | **与包内 Custom Window Title 功能部分重叠（窗口标题）** | 低-中（许可未标注） | 收录但风险标注 |
| 22 | Item Borders [Neo/Forge] | 装饰（物品格边框高亮） | 未分类 | 未核查（**1.20+ 模组**，Pickell） | **无（1.12.2 无版本）** | 现代线活跃 | 不兼容 1.12.2 | 高（版本不兼容） | **建议排除** |
| 23 | Item Collectors | 存储物流（自动拾取收集器，SuperMartijn642） | 未分类 | ARR（批量表+Modrinth y9vDr4Th 一致，51.6 万下载） | 有（Modrinth 1.12.2 核实） | 停更 | 需 SuperMartijn642's Core Lib 1.12.2（包内 ✓）；与 Simple Storage Network 等拾取类共存注意 | 低（ARR 注明） | 收录（分类修正：未分类→存储物流） |
| 24 | Item Filters | 前置库（FTB 系物品过滤库） | 未分类 | LGPL-3.0（GitHub latvian-dev/item-filters，1.12 分支确认） | 有（CF 1.12.2 文件；Modrinth 无 1.12.2 上传但 GitHub 1.12 分支证实） | 活跃（FTB 生态） | 通常随 FTB Quests 使用——**包内未见 FTB Quests，单独用途窄**；与 FTB Library/Utilities（包内）同族 | 低-中（依赖方不明） | 收录但风险标注 |
| 25 | Item Highlighter | 装饰（拾取物品高亮） | 装饰 | CC-BY-NC-ND-4.0（批量表+Modrinth cVNW5lr6 一致，1540 万下载） | 有（Modrinth 1.12.2 核实） | 活跃 | 无冲突 | 低-中（CC-BY-NC-ND：不可商用/修改，注明） | 收录（许可证限制注明） |
| 26 | Item Scroller | 辅助优化（物品栏滚动/批量操作，masa 系） | 辅助优化 | LGPL-3.0-only（批量表） | 有 | 活跃（masa 生态持续更新） | 与包内 Inventory Tweaks 滚轮整理部分重叠（可共存） | 低 | 收录 |
| 27 | Item Stages Plus | 辅助优化（阶段物品锁定扩展） | 辅助优化 | LGPL-2.1（GitHub ukmojb/ItemStagesPlus 核实） | 有 | 停更 | **需 Game Stages（包内 ✓）+ ItemStages（包内未见——缺前置，需补入 ItemStages 或核实）** | 中（前置缺失） | 收录但风险标注 |
| 28 | ItemPhysic | 辅助优化（掉落物物理效果） | 辅助优化 | LGPL-3.0（GitHub CreativeMD/ItemPhysic 核实） | 有（1.4.28=包内文件名，mcmod 932） | 停更但稳定（经典） | 需 CreativeCore（包内 ✓）；与包内掉落物处理类（Get It Together, Drops!/Homing Exp Orbs）功能不同可共存 | 低 | 收录 |
| 29 | ItemPhysic_Full_1.4.28_mc1.12.2 | 同 #28（文件名条目） | 辅助优化 | 同 #28 | 有 | 同 #28 | 重复收录 | 高（重复） | 建议排除（去重） |
| 30 | ItemZoom | 辅助优化（物品缩放查看） | 辅助优化 | MIT（GitHub mezz/ItemZoom 核实） | 有（mcmod 3048，红13黑0，1.10.2–1.19.2） | 停更（口碑好） | 无冲突 | 无 | 收录 |
| 31 | IvToolkit | 前置库（Ye Gamol Chattels 前置） | 前置库 | 未标注（mcmod 606：作者弃坑、无 LICENSE；非 TSV 匹配的 Adventure Toolkit） | 有（1.12.2 版留存） | 停更（作者弃坑，有 1.13 构建提交） | **依赖方 Ye Gamol Chattels 需在包内，否则冗余** | 中（许可未标注+作者弃坑） | 收录但风险标注 |
| 32 | JAOPCA | 科技（矿石处理统一框架） | 未分类 | MIT（批量表） | 有 | 停更（经典） | 与包内矿石处理线（Mekanism 等）互补不冲突 | 低 | 收录（分类修正：未分类→科技） |
| 33 | JAOPCA Singularities | 科技（JAOPCA 附属：奇点支持） | 未分类 | MIT（批量表） | 有 | 停更 | 需 JAOPCA + Avaritia 奇点（包内 Avaritia 在列） | 低 | 收录（分类修正） |
| 34 | JAOPCAAdditions | 科技（JAOPCA 附属：装饰方块） | 未分类 | 未标注（GitHub TheLMiffy1111/JAOPCAAdditions 无 LICENSE） | 有（mcmod 1160） | 停更（小众） | 需 JAOPCA（包内） | 中（许可未标注+小众） | 收录但风险标注 |
| 35 | JAOPCACustom | 科技（JAOPCA 附属：JSON 自定义矿石） | 未分类 | 未标注（GitHub TheLMiffy1111/JAOPCACustom 无 LICENSE） | 有（mcmod 8276） | 停更（小众） | 需 JAOPCA；简介提示配资源加载模组使用 | 中（许可未标注+小众） | 收录但风险标注 |
| 36 | JEI Area Fixer | 辅助优化（修复 JEI 界面重叠补丁） | 辅助优化 | 未标注（无公开 GitHub 仓库） | 有（mcmod 16799，红2黑0） | 停更 | 客户端补丁，针对性修复 XNet/RFTools/OpenBlocks/夸克等界面重叠——**依赖方是否在包内决定价值**；与包内 JEI 无冲突 | 低-中（许可未标注） | 收录但风险标注 |
| 37 | JEI Bees | 辅助优化（JEI 显示林业蜜蜂杂交） | 辅助优化 | 未标注（GitHub imdutch21/jei-bees 无 LICENSE） | 有（mcmod 805，红6黑2） | 停更 | **与包内 Forestry: Community Edition 兼容性构建期实测**（读取林业数据，大概率可） | 中（许可未标注+Forestry CE 兼容） | 收录但风险标注 |
| 38 | JEI Integration | 辅助优化（JEI 配方集成库） | 辅助优化 | LGPL-2.1-only（批量表；标题 JERI 为 1.16+ 继承者） | 有 | 停更 | 无冲突 | 低 | 收录 |
| 39 | JEI Utilities | 辅助优化（JEI 浏览历史/书签/预览） | 辅助优化 | MIT（GitHub vfyjxf/JEI-Utilities 核实） | 有（mcmod 6172，红12黑1） | 停更 | 无冲突 | 低 | 收录 |
| 40 | JER Ore Integration | 辅助优化（JER 矿石分布数据扩展） | 世界生成 | MIT（批量表，Fork 版） | 有 | 停更 | 需 JER（包内在列）+ JAOPCA；无冲突 | 低 | 收录（分类修正：世界生成→辅助优化） |
| 41 | JSON Paintings | 装饰（数据驱动的画作，BlayTheNinth） | 装饰 | ARR（批量表标题匹配；Blay 系整合包许可页 mods.twelveiterations.com/permissions 放行） | 有（仅 1.12.2） | 停更 | 与 #42 Joy of Painting 定位不同（画作 vs 画架玩法），可共存 | 低（ARR 注明许可页） | 收录 |
| 42 | Joy of Painting | 装饰（画架绘画玩法） | 装饰 | GPL-3.0-or-later（批量表） | 有 | 停更 | 与 JSON Paintings 可共存 | 低 | 收录 |
| 43 | Jump Over Fences | 辅助优化（跳过栅栏微调） | 装饰 | MIT（批量表） | 有 | 停更（小模组） | 与 Fence Jumper（包内在列但 1.16+ 模组，1.12.2 无版本，实际不冲突） | 低 | 收录（分类修正：装饰→辅助优化） |
| 44 | Just A Resource Generation（JARGCA） | 农业（JAOPCA×神秘农业附属，作物产矿石精华） | **世界生成（错误）** | 未标注（TheLMiffy1111，无 LICENSE；曾用名 JAOPCAAgriculture） | 有（mcmod 1163，红9黑1） | 停更（简介提示焦黑石英种子未同步删除小 bug） | **需 Mystical Agriculture（包内 ✓）+ JAOPCA（包内 ✓）** | 中（许可未标注） | 收录（分类修正：世界生成→农业） |
| 45 | Just Enough Calculation | 辅助优化（合成材料总量计算器，Towdium） | 辅助优化 | Towdium 自定义（GitHub NOASSERTION；CF 标 Custom，官方自带汉化） | 有（mcmod 3643） | 停更（大型科技包常用，口碑好） | **与 #48 Just Enough Drags 功能重叠（合成材料计算）——二选一或共存实测** | 中（重叠+许可自定义） | 收录但风险标注 |
| 46 | Just Enough Characters | 辅助优化（JEI 拼音搜索，Towdium） | 辅助优化 | MIT（批量表） | 有 | 停更 | **与包内 Had Enough Characters（HECh，batch-11 #28）功能重复（拼音搜索）——二选一，受 JEI/HEI 物品管理器取舍联动** | 中（重复） | 收录但风险标注 |
| 47 | Just Enough Dimensions | 辅助优化（JEI 维度信息显示） | 维度探索 | LGPL-3.0-only（批量表） | 有（仅 1.12.2） | 停更 | 需 JEI；与维度类（星系/暮色维度）无冲突，仅显示 | 低 | 收录（分类修正：维度探索→辅助优化） |
| 48 | Just Enough Drags | 辅助优化（拖拽查看配方材料总量） | 辅助优化 | MIT（批量表；标题 Just Extra Drags 为现代继任） | 有 | 停更 | **与 #45 Just Enough Calculation 功能重叠——二选一或共存实测** | 中（重叠） | 收录但风险标注 |
| 49 | Just Enough Energistics | 科技（AE2 附属：JEI 免材料写入样板，p455w0rd） | 科技 | MIT（GitHub p455w0rd/JustEnoughEnergistics 核实） | 有（mcmod 1537） | 停更（经典 AE2 体验增强） | **依赖 AE2 API——与包内 AE2UEL 兼容性构建期实测**（AE2UEL 保持 API 兼容，大概率可）；无其他冲突 | 中（AE2UEL 兼容实测） | 收录但风险标注 |
| 50 | Just Enough Energistics (JEE) | 同 #49（重复条目） | 科技 | 同 #49（MIT） | 有 | 同 #49 | 重复收录（= Just Enough Energistics） | 高（重复） | 建议排除（去重） |

## 统计

- **收录 26**：Integrated Crafting、Integrated Derivative、Integrated Dynamics、Integrated NBT、Integrated Tunnels、Integration Foregoing、InvMove、Inventory HUD+、Invisible Armor Model、Invisible Item Frames、Iron Chests、Item Collectors、Item Highlighter、Item Scroller、ItemZoom、JAOPCA、JAOPCA Singularities、JEI Integration、JEI Utilities、JER Ore Integration、JSON Paintings、Joy of Painting、Jump Over Fences、Just Enough Dimensions（另 #5 Integrated Terminals、#7 风险低直接收录；#25 收录但许可证限制注明）
- **风险 17（收录但风险标注）**：Inventory Bogo Sorter（与 Inventory Tweaks 二选一）、Inventory Tweaks（同上二选一）、Iron Backpacks（与 Traveler's Backpack 二选一）、Iron Jetpacks（与 Simply Jetpacks 2 二选一）、It's The Little Things（许可未标注+与 Custom Window Title 重叠）、Item Filters（包内未见 FTB Quests 用途窄）、Item Stages Plus（缺 ItemStages 前置）、JAOPCAAdditions（许可未标注+小众）、JAOPCACustom（许可未标注+小众）、JEI Area Fixer（许可未标注）、JEI Bees（许可未标注+Forestry CE 兼容实测）、IvToolkit（许可未标注+依赖方确认）、Just A Resource Generation（许可未标注）、Just Enough Calculation（与 JED 二选一）、Just Enough Drags（与 JECal 二选一）、Just Enough Characters（与 HECh 二选一）、Just Enough Energistics（AE2UEL 兼容实测）；另 #5 Integrated Terminals、#49 同属 AE2UEL 联动实测风险类
- **排除 7**：IntegrationForegoing（#7 重复条目）、Inventory Tweaks [1.12 only]（#12 变体）、InventoryHUD+（#11 重复条目）、InventoryTweaks-1.63（#12 文件名条目）、ItemPhysic_Full_1.4.28_mc1.12.2（#28 文件名条目）、Just Enough Energistics (JEE)（#49 重复条目）、**Item Borders [Neo/Forge]（1.12.2 无版本，版本不兼容）**
- **分类修正 18 处**（世界生成→科技 2 个：Integration Foregoing×2；世界生成→农业 1 个：Just A Resource Generation；世界生成→辅助优化 1 个：JER Ore Integration；存储物流→辅助优化 2 个：Inventory HUD+×2；未分类→科技 4 个：JAOPCA 系；未分类→辅助优化 2 个：InvMove、It's The Little Things；未分类→存储物流 1 个：Item Collectors；未分类→前置库 1 个：Item Filters；工具武器→装饰 1 个：Invisible Armor Model；维度探索→辅助优化 1 个：Just Enough Dimensions；装饰→辅助优化 1 个：Jump Over Fences；未分类→装饰 1 个：Item Borders，已建议排除）
- **TSV 批量结果纠正 3 处**：Integrated Dynamics（Unlicense→**MIT**）、InvMove（CC-BY-NC-4.0→**LGPL-3.0**）、IvToolkit（ARR→**未标注**）
- **与四核心结论**：星系（无）、AE2UEL（JEE、Integrated Terminals 两处联动需构建期实测）、暮色（无）、神秘时代 TC6（无）

> 构建提示：本批重点——① Item Borders 剔除（1.12.2 无版本）；② 四组二选一联动决策：BogoSorter/Inventory Tweaks、Iron Backpacks/Traveler's Backpack、Iron Jetpacks/Simply Jetpacks 2、JECal/JED，另 JECh/HECh 取舍与 batch-11 物品管理器取舍联动；③ Item Stages Plus 需确认 ItemStages 前置是否入包；④ Just Enough Energistics 与 AE2UEL、JEI Bees 与 Forestry CE 两组构建期兼容实测；⑤ JAOPCA 系 3 个附属（Additions/Custom/JARGCA）许可未标注，均在作者 TheLMiffy1111 名下，打包前建议联系确认。
