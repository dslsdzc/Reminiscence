# 《回忆》整合包 模组合规核查 · batch-05（Cassette Music Disc – Colourful containers GUI）

来源：`modlist.md` 第 579–721 行，共 48 个模组条目。
核查方式：以 `modrinth-results.tsv` 批量结果为基准（名字匹配且标题对得上时直接用其许可证）；仅对 NO_HIT / 批量匹配存疑 / 需核证 1.12.2 支持的条目补查。
> **本次网络核查额度说明**：WebSearch（200/200 已尽）、web_search_prime、webReader 均限流，mcmod.cn 搜索页直连为空壳（JS 渲染），浏览器方案不可用。因此本次**未能抓取 mcmod 评论区**，凡依赖评论信息的位置一律标注"未核实/未知"，未做任何重试轰炸。以下许可证以批量表 + 既有知识为准，标注了 15 个"未知"项，建议人工核对 jar 来源。

> 本包核心模组：星系 Galacticraft、AE2/AE2UEL、暮色森林、神秘时代（TC）。冲突栏以此四者为基准：本批与四核心**无直接冲突**；唯二注意点——CoFH World 的生成配置须避开星系/暮色维度 ID，Chunk-Pregenerator 预生成前须确认目标维度列表。

| # | 模组 | 正确分类 | 当前分类 | 许可证 | 1.12.2 | 开发状态 | 冲突/重复 | 风险 | 结论 |
|---|------|---------|---------|--------|--------|---------|-----------|------|------|
| 1 | Cassette Music Disc | 装饰（音乐唱片内容） | 辅助优化 | 闭源（ARR，批量表） | 未知（需人工核对） | 未知；小型内容模组 | 无 | 中（1.12.2 版本未核实 + 分类错误） | 收录但风险标注 |
| 2 | Cathedral | 未知（无法定位，mcmod/CF 无可靠同名 1.12.2 条目） | 装饰 | 未知 | 未知 | 未知 | 未知 | 高（来源无法核实） | 建议排除（或人工核对 jar 后定） |
| 3 | CensoredASM | 前置库（ASM 核心） | 世界生成 | 未知（CF 未标注） | 未知 | 未知；疑为 ASM 库（单独安装无效果属正常） | 无 | 中（身份/许可未核实，分类错误） | 收录但风险标注 |
| 4 | Ceramics | 装饰（陶器/陶土，KnightMiner） | 装饰 | MIT（批量表） | 有（1.1.3） | 停更但内容完整、稳定 | 无；其陶土桶与 Clay Bucket（#28）功能重叠 | 无 | 收录 |
| 5 | Chameleon | 前置库（Storage Drawers 前置，jaquadro） | 前置库 | MIT（批量表） | 有 | 停更但稳定 | 被 Storage Drawers 依赖（本包含） | 无 | 收录 |
| 6 | Champions | 生物（精英怪强化，TheIllusiveC4） | 生物 | LGPL-3.0-or-later（批量表） | 有 | 停更（1.12.2 线完成） | 与 Scaling Health 等增强类可共存；无核心冲突 | 无 | 收录 |
| 7 | ChanceCubes | 娱乐/彩蛋（随机事件方块） | 未分类 | GPL-3.0（批量表，Turkey2349） | 有（5.1.x） | 停更但稳定、广为人知 | 无 | 无 | 收录 |
| 8 | Charm | 辅助优化（QoL/装饰混合，svenhjol） | 未分类 | ARR（**批量表 MIT 为误匹配——匹配到同名不同模组 "ProjectE Charms"**，按 svenhjol 原版 ARR 标注） | 有（1.12.2 起家版 0.3.x） | 1.12.2 线停更，高版本活跃 | 无 | 低-中（ARR + 许可标识需人工确认） | 收录但风险标注 |
| 9 | ChatFlow | 未知（无法定位 1.12.2 同名模组；批量表 MIT 匹配到 "chatlog" 疑误匹配） | 辅助优化 | 未知 | 未知 | 未知 | 未知 | 高（来源无法核实） | 建议排除（或人工核对 jar 后定） |
| 10 | Cherished Worlds | 辅助优化（服务器列表收藏/固定，TheIllusiveC4） | 维度探索 | LGPL-3.0-or-later（批量表） | 有 | 停更（1.12.2 线完成） | 无 | 无（仅分类错误） | 收录 |
| 11 | Chest Transporter | 存储物流（整箱搬运，CubeX2 系） | 存储物流 | 未知（CF 未标注） | 有 | 停更；小模组 | 无 | 低-中（许可证未核实） | 收录但风险标注 |
| 12 | Chibi | 未知（批量表 GPL-3.0 匹配到 "Chitin Equipment" 疑误匹配） | 未分类 | 未知 | 未知 | 未知 | 未知 | 高（身份/来源未核实） | 建议排除（或人工核对 jar 后定） |
| 13 | Chicken Chunks | 科技（区块加载，chicken_bones） | 科技 | MIT（批量表） | 有（2.0.6） | 停更但稳定 | 需 CodeChicken Lib（#41，本包有）；**与 Chunk Loaders（#21）功能重复** | 低 | 收录 |
| 14 | ChickenASM | 前置库（ASM 核心库，chicken_bones） | 未分类 | 未知（CF 未标注，批量表匹配 "Backported Chickens" 为误匹配） | 有 | 停更；ASM 库 | 与 CodeChicken 系配套 | 低-中（许可证未核实） | 收录但风险标注 |
| 15 | ChickenChunks | ——（与 #13 同一模组的重复条目） | 未分类 | 同 #13（MIT） | 有 | 同 #13 | 重复收录 | 高（重复） | 建议排除 |
| 16 | Chisel | 装饰（凿子雕刻，Chisel-Team/asie） | 装饰 | ARR（**批量表 LGPL-3.0 为误匹配——匹配到 "Unlimited Chisel Works" 分支**，原版 ARR） | 有（0.2.1.49） | 1.12.2 停更，内容完整稳定 | 需 CTM（本包已有，batch-04）；被 ChiseledAdditions 等依赖 | 低（ARR 注明出处） | 收录 |
| 17 | ChiseledAdditions | 装饰（Chisel 附属：其他模组方块雕刻变体） | 装饰 | 未知 | 未知 | 未知（停更小附属） | 需 Chisel + CTM（本包有） | 中（身份/许可未核实） | 收录但风险标注 |
| 18 | Chisels & Bits | 装饰（方块雕刻，AlgorithmX2） | 装饰 | ARR（**批量表 MIT 为误匹配——匹配到 Fabric 项目 "Bits And Chiseled"**，原版 CF 为 ARR） | 有（14.33） | 停更但内容完整、极流行 | 无直接冲突；与 LittleTiles 定位有重叠（本包有 LittleTiles，注意评测） | 低（ARR） | 收录 |
| 19 | Chococraft | 生物（陆行鸟坐骑，clienthax） | 未分类 | 闭源（ARR，批量表） | 有 | 停更；社区口碑一般（老版本遗留 bug 未核实——mcmod 评论不可用，待人工核验） | 无核心冲突 | 中（ARR + 老版本 bug 评价待核实） | 收录但风险标注 |
| 20 | Chocolate Quest | 世界生成（地牢/结构，Repoured 移植版） | 维度探索 | MIT（批量表，匹配 "Chocolate Quest Repoured"——1.12.2 维护分支） | 有（Repoured） | 原版停更；Repoured 分支维护 | 生成结构不添加维度；**与星系/暮色无冲突**；与其他结构模组（Recurrent Complex 等）共存注意重叠 | 低（分类错误） | 收录 |
| 21 | Chunk Loaders | 科技（区块加载） | 科技 | 闭源（ARR，批量表） | 未知（Modrinth 同名项目疑为高版本，1.12.2 版本需人工核对） | 未知 | **与 #13 Chicken Chunks 功能重复（区块加载，二选一）** | 中-高（重复 + 1.12.2 未核实） | 建议排除（保留 Chicken Chunks 即可） |
| 22 | Chunk-Pregenerator | 世界生成（区块预生成，Speiger） | 未分类 | 未知（开源 GitHub Speiger/Chunk-Pregenerator 无 LICENSE；批量表 GPL-3.0 匹配 "MineTogether" 为误匹配） | 有（3.1.x） | 维护中（含 1.12.2 线） | 预生成维度须避开星系/暮色等特殊维度（配置可限）；依赖 Carbon Config（本包已有，batch-04） | 低-中（许可证未核实） | 收录 |
| 23 | ChunkGenLimiter | 辅助优化（服务端：限制区块生成速率） | 未分类 | 未知 | 未知 | 未知（停更小工具） | 与 Chunk-Pregenerator 互补（限速 vs 预生成），非重复 | 中（身份未核实） | 收录但风险标注 |
| 24 | Clarity | 未知（批量表 ARR 匹配的 Modrinth "Clarity" 疑为高版本 Fabric 项目） | 未分类 | 闭源（ARR） | 未知（需人工核对） | 未知 | 未知 | 高（1.12.2 版本未核实） | 建议排除（或人工核对 jar 后定） |
| 25 | Classic 3D | 辅助优化（方块 3D 浮雕视觉效果） | 未分类 | GPL-3.0（批量表 "Classic 3D"） | 未知（需人工核对） | 未知 | 无 | 中（1.12.2 未核实） | 收录但风险标注 |
| 26 | Classic Bar Legacy | 辅助优化（经典样式 HUD 栏，与 Classic Bars 疑似同系列） | 未分类 | 未知 | 未知 | 未知 | 与 #27 疑似同系列/重复 | 中（身份未核实） | 收录但风险标注 |
| 27 | Classic Bars | 辅助优化（经典样式 HUD 栏） | 未分类 | 未知（批量表 ARR 匹配 "Bare Bones - Classic Ores" 为误匹配） | 未知 | 未知 | 与 #26 疑似同系列/重复 | 中（身份未核实） | 收录但风险标注 |
| 28 | Clay Bucket | 工具武器（陶土桶） | 未分类 | 未知 | 未知 | 未知（小模组） | **与 Ceramics（#4）陶土桶功能重叠** | 中（身份未核实 + 功能重叠） | 收录但风险标注 |
| 29 | Cleanroom Relauncher | 前置库（Cleanroom 加载器配套工具） | 未分类 | MIT（批量表，CleanroomMC） | 有（Cleanroom 生态即 1.12.2） | 维护中 | **Cleanroom 系为 1.12.2 Forge 分支加载器——需确认整包加载方案**（用原版 Forge 则本工具无意义） | 中（加载器方案需决策） | 收录但风险标注 |
| 30 | Clear Water | 辅助优化（水下视野清晰） | 未分类 | MIT（批量表） | 未知（需人工核对） | 未知（小模组） | 无 | 中（1.12.2 未核实） | 收录但风险标注 |
| 31 | Client Tweaks | 辅助优化（客户端微调，Blay） | 辅助优化 | 闭源（ARR，批量表） | 有（3.1.11） | 完成/停更 | 无 | 低（ARR） | 收录 |
| 32 | ClientTweaks_1.12.2-3.1.11 | ——（与 #31 同一模组的重复条目，带版本号文件名） | 辅助优化 | 同 #31（ARR） | 有 | 同 #31 | 重复收录 | 高（重复） | 建议排除 |
| 33 | Cloche Profit Peripheral | 科技（OpenComputers 外设：自动化 IE 温室/Cloche） | 未分类 | 未知（GitHub 开源，许可证未核实） | 有（若所引版本支持 1.12.2） | 未知（停更小附属） | 需 OpenComputers + 沉浸工程/神秘农业（本包含 OC，见 batch-04） | 中（身份/许可未核实） | 收录但风险标注 |
| 34 | Clumps | 辅助优化（XP 球合并，jaredlll08） | 辅助优化 | MIT（批量表） | 有（3.1.2） | 维护中 | 无 | 无 | 收录 |
| 35 | Clumps-3.1.2 | ——（与 #34 同一模组的重复条目，带版本号文件名） | 辅助优化 | 同 #34（MIT） | 有 | 同 #34 | 重复收录 | 高（重复） | 建议排除 |
| 36 | CoFH Core | 前置库（TeamCoFH 核心库） | 世界生成 | CoFH "Don't Be a Jerk" 自定义许可（**批量表 ARR 匹配 "SoftCore" 为误匹配**） | 有（4.6.6） | 1.12.2 停更但稳定 | 被 CoFH World / Thermal 系依赖；无核心冲突 | 低（分类错误 + 许可为自定义需注明） | 收录 |
| 37 | CoFH World | 世界生成（矿物/特征生成与改写，TeamCoFH） | 维度探索 | CoFH "Don't Be a Jerk" 自定义许可 | 有（1.3.1） | 1.12.2 停更但稳定 | 需 CoFH Core（#36）；**生成维度配置须避开星系/暮色维度 ID** | 低（分类错误） | 收录 |
| 38 | CoFHCore | ——（与 #36 同一模组的重复条目） | 世界生成 | 同 #36 | 有 | 同 #36 | 重复收录 | 高（重复） | 建议排除 |
| 39 | CoFHWorld | ——（与 #37 同一模组的重复条目） | 维度探索 | 同 #37 | 有 | 同 #37 | 重复收录 | 高（重复） | 建议排除 |
| 40 | CocoaInput | 辅助优化（中日韩输入法 IME，axionbuster） | 辅助优化 | 未知（GitHub 开源 axionbuster/CocoaInput，LICENSE 未核实） | 有（3.1.5 支持 1.9–1.12.2，与条目名一致） | 停更但功能完整 | 与 I18nUpdateMod（本包有）互补不冲突 | 低-中（许可证未核实） | 收录 |
| 41 | CodeChicken Lib | 前置库（chicken_bones 核心库） | 前置库 | LGPL-2.1-or-later（批量表） | 有（3.2.3） | 停更但稳定 | 被 Chicken Chunks/ChickenASM 等依赖；无核心冲突 | 无 | 收录 |
| 42 | CodeChicken Lib 1.8.+ | ——（与 #41 同一模组的重复条目，旧命名残留） | 前置库 | 同 #41 | 有 | 同 #41 | 重复收录 | 高（重复） | 建议排除 |
| 43 | CodeChicken Lib CRE | ——（疑为 CCL 社区分支/改名条目，与 #41 功能重复） | 前置库 | LGPL-2.1-only（批量表） | 未知 | 未知 | 与 #41 功能重复 | 高（重复/身份未核实） | 建议排除 |
| 44 | CodeChickenLib | ——（与 #41 同一模组的重复条目） | 前置库 | 同 #41（LGPL-2.1-or-later） | 有 | 同 #41 | 重复收录 | 高（重复） | 建议排除 |
| 45 | ColorUtility | 辅助优化（颜色/调色工具，疑小模组） | 未分类 | 未知 | 未知 | 未知 | 未知 | 中（身份未核实） | 收录但风险标注 |
| 46 | Colossal Chests | 存储物流（巨型箱，kroeser） | 存储物流 | 未知（GitHub 开源 kroeser/ColossalChests，无 LICENSE） | 有（1.7.x） | 停更但稳定 | 无核心冲突；与 AE2/存储抽屉等存储体系共存注意性能 | 低-中（许可证未核实） | 收录 |
| 47 | Coloured Tooltips | 辅助优化（物品提示着色，DarkhaxDev） | 辅助优化 | LGPL-2.1（批量表） | 有 | 完成 | 无 | 无 | 收录 |
| 48 | Colourful containers GUI | 辅助优化/装饰（容器 GUI 着色） | 未分类 | 闭源（ARR，批量表） | 未知（需人工核对） | 未知（小模组） | 无 | 中（1.12.2 未核实） | 收录但风险标注 |

---

## 统计

**收录 18 / 风险标注 17 / 建议排除 13 / 分类错误 6**

- **建议排除 13**：#2 Cathedral（无法核实）、#9 ChatFlow（无法核实）、#12 Chibi（批量匹配不可信，身份未核实）、#15 ChickenChunks（与 #13 重复）、#21 Chunk Loaders（与 #13 功能重复 + 1.12.2 未核实）、#24 Clarity（1.12.2 未核实，批量匹配疑为高版本项目）、#32 ClientTweaks_1.12.2-3.1.11（与 #31 重复）、#35 Clumps-3.1.2（与 #34 重复）、#38 CoFHCore（与 #36 重复）、#39 CoFHWorld（与 #37 重复）、#42 CodeChicken Lib 1.8.+（与 #41 重复）、#43 CodeChicken Lib CRE（CCL 分支疑重复）、#44 CodeChickenLib（与 #41 重复）
- **分类错误 6**：#1 Cassette Music Disc（辅助优化→装饰）、#3 CensoredASM（世界生成→前置库）、#10 Cherished Worlds（维度探索→辅助优化）、#20 Chocolate Quest（维度探索→世界生成）、#36 CoFH Core（世界生成→前置库）、#37 CoFH World（维度探索→世界生成）
- 另有 **15 条"未分类"** 按本表"正确分类"归位（ChanceCubes→娱乐彩蛋、Chococraft→生物、Chunk-Pregenerator→世界生成、Cleanroom Relauncher→前置库、Colourful containers GUI→辅助优化 等），其余 4 条未分类为建议排除条目（#9/#12/#15/#24）。

## 关键发现（供整合包决策）

1. **重复条目 8 条 → 6 组**：ChickenChunks×2（#13/#15，去重）、Client Tweaks×2（#31/#32）、Clumps×2（#34/#35）、CoFH Core×2（#36/#38）、CoFH World×2（#37/#39）、CodeChicken Lib×3（#41 保留 + #42/#44 重复 + #43 疑分支）——modlist 版本残留，统一去重，CodeChicken 系保留 #41 一条即可。
2. **功能重复二选一**：区块加载类 Chunk Loaders × Chicken Chunks——Chicken Chunks 有明确的 1.12.2 版本（MIT、需 CCL），Chunk Loaders 1.12.2 版本存疑，建议保留 Chicken Chunks、排除 Chunk Loaders。
3. **无法核实 4 个（网络额度耗尽，待人工核对 jar 来源）**：Cathedral、ChatFlow、Chibi、Clarity——mcmod 搜索页直连不可用（JS 渲染）、搜索类工具全部限流，建议直接核对 mods 目录 jar 后定去留。
4. **批量表 6 处误匹配已校正**：#8 Charm（MIT→实为 ProjectE Charms，原版 ARR）、#16 Chisel（LGPL-3.0→实为 Unlimited Chisel Works 分支，原版 ARR）、#18 Chisels & Bits（MIT→实为 Fabric 的 Bits And Chiseled，原版 ARR）、#22 Chunk-Pregenerator（GPL-3.0→实为 MineTogether，实际开源无 LICENSE）、#36 CoFH Core（ARR→实为 SoftCore，实际 CoFH Don't Be a Jerk）、#37 CoFH World（NO_HIT，同 CoFH 自定义许可）。
5. **与四核心（星系/AE2UEL/暮色/神秘时代）关系**：本批无直接冲突。注意点：CoFH World 与 Chunk-Pregenerator 的维度配置须避开星系（-27~-32 等）/暮色（ID 7）等特殊维度；Cloche Profit Peripheral 依赖 OpenComputers（本包已有）与沉浸工程生态。
6. **加载器方案提示**：Cleanroom Relauncher（MIT，CleanroomMC）是 1.12.2 Cleanroom 加载器配套工具——本包若采用原版 Forge 环境则该工具多余，需决策（known-issues 已有 MixinBooter 与 Cleanroom 相关记录，保持联动）。
7. **许可证**：ARR 8 个（Cassette Music Disc、Charm、Chisel、Chisels & Bits、Chococraft、Chunk Loaders、Client Tweaks、Colourful containers GUI）——整合包分发注明出处；CoFH 系为自定义 "Don't Be a Jerk" 许可（允许整合包分发）；开源但无明确 LICENSE 的 5 个（ChickenASM、Chunk-Pregenerator、CocoaInput、Colossal Chests、Cloche Profit Peripheral）按"开源无明确许可"标注。
8. **社区评价缺口**：因本次网络核查不可用（WebSearch/web_search_prime/webReader 限流、mcmod 搜索页 JS 渲染、浏览器被禁用），**17 个"风险标注"项（#1/#3/#8/#11/#14/#17/#19/#23/#25/#26/#27/#28/#29/#30/#33/#45/#48）的 mcmod 评论区评价未能获取**，均已按"未知"处理而非猜测；建议额度恢复后对这 17 项补一次 mcmod 评论核验。
