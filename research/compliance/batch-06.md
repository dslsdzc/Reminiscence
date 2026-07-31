# 《回忆》整合包 模组合规核查 · batch-06（Combined Potions – Cucumber Library）

来源：`modlist.md` 第 725–845 行，共 **43 个模组条目**（任务描述约 50，实际 43）。
核查方式：以 `modrinth-results.tsv` 批量结果为基准（名字匹配且标题对得上时直接用其许可证）；仅对 NO_HIT / 批量匹配存疑 / 需核证 1.12.2 支持的条目补查。
网络核查：本次 mcmod.cn 可通过 Firefox 浏览器访问（前段搜索页被反爬拦截后改用 WebFetch 通道），共完成 **18 个模组的 mcmod 详情页核查**（含评论区口碑）；剩余条目依赖批量表 + 既有知识，个别标"未知"未做重试轰炸。

> 本包核心模组：星系 Galacticraft、AE2/AE2UEL、暮色森林、神秘时代（TC6）。冲突栏以此四者为基准：本批**与四核心无直接冲突**；唯一核心联动为 Congrega Mystica（TC6 附属，正面联动，见 #11）。另注意 CompatSkills 与巫术学（Electroblob's Wizardry）的已知兼容问题（#8）。

| # | 模组 | 正确分类 | 当前分类 | 许可证 | 1.12.2 | 开发状态 | 冲突/重复 | 风险 | 结论 |
|---|------|---------|---------|--------|--------|---------|-----------|------|------|
| 1 | Combined Potions | 辅助优化（药水效果合并） | 未分类 | 开源（GitHub，协议未注明；**批量表 MIT 为误匹配**——匹配到 "Large Fluid Tank"） | 有（1.12.2/1.12.1/1.12） | 停更开源（csb987），功能完整 | 与药水核心（Potion Core，包内）联动防"药水病"，互补非冲突 | 低 | 收录 |
| 2 | Comforts | 装饰（睡袋/吊床） | 装饰 | LGPL-3.0-or-later（批量表，TheIllusiveC4） | 有 | 活跃维护、开源（mcmod 标注活跃） | **原版直接支持 1.12.2——与 #3 Comforts Modernized 功能重复** | 低 | 收录（保留原版） |
| 3 | Comforts Modernized | 装饰（睡袋/吊床 1.12.2 移植） | 装饰 | LGPL-3.0-only（批量表，Tfarcenim 分支） | 有 | 停更（移植版；mcmod 无条目） | **与 #2 功能重复**（原版已支持 1.12.2，移植版多余） | 高（重复） | 建议排除 |
| 4 | Comics Bubbles Chat | 辅助优化（聊天气泡） | 辅助优化 | CC-BY-NC-SA-4.0（批量表） | 未知（mcmod 无条目，需人工核对 jar） | 未知（小模组） | 无 | 中（1.12.2 未核实） | 收录但风险标注 |
| 5 | Common Capabilities | 前置库（能力系统 API，CyclopsMC） | 前置库 | 开源（GitHub CyclopsMC，协议未注明） | 有 | 活跃开源 | 前置 Cyclops Core（包内）；被集成动力等依赖 | 无 | 收录 |
| 6 | Compact Machines | 科技（空间压缩机械） | 科技 | 开源（Davenonymous，MIT 系） | 有（CM3 3.0.14-b247） | 活跃开源 | 无核心冲突；与 AE2 有官方联动（包内有 ME Capability Adapter 配套） | 无 | 收录 |
| 7 | Compact Solars | 科技（IC2 压缩太阳能） | 科技 | 开源（停更） | 有 | 停更开源（cpw→Madison→alexbegt） | 需 IC2（包内，batch-07 范围）；无核心冲突 | 低 | 收录 |
| 8 | CompatSkills | 前置库（Reskillable 官方兼容插件） | 未分类 | 开源（协议未注明） | 有（仅 1.12.2 系） | 停更开源（Simon Stålnäbb） | 前置 Reskillable（包内）；**与巫术学（Electroblob's Wizardry）存在已知兼容问题**（mcmod 有解决方案教程）；联动 TC6/血魔法/星辉等 | 中（巫术学冲突已知有解） | 收录但风险标注 |
| 9 | Condition Overload | 未知（mcmod 无同名模组条目，仅有其他模组同名附魔/物品） | 未分类 | 未知 | 未知 | 未知 | 未知 | 高（身份无法核实） | 建议排除（或人工核对 jar 后定） |
| 10 | ConfigAnytime | 前置库（配置 API，CleanroomMC） | 辅助优化 | MIT（批量表） | 有（仅 1.12.2） | 停更开源（国创） | 被 Universal Tweaks（包内）/Zen Utils/StellarCore 等依赖 | 无（仅分类错误） | 收录 |
| 11 | Congrega Mystica | 魔法（TC6 附属） | 魔法 | 开源（活跃，Thaumic Modding Team） | 有（仅 1.12.2） | 活跃开源（10 月前收录，2 月前编辑） | **TC6 核心联动（正面）**；联动 TC 修复/神秘奇境/神秘进阶/血魔法/植物魔法/自然灵气/IE 等；动态矿簇生成须与其他矿生成模组配置协调 | 低-中 | 收录 |
| 12 | Connected Glass | 装饰（连接玻璃方块） | 装饰 | 开源（SuperMartijn642，活跃；**批量表 ARR 存疑**——mcmod 标注活跃开源） | 有 | 活跃开源 | 需 SuperMartijn642's Config Lib（包内）；与 CTM 机制不同（新增玻璃而非资源包），不冲突 | 低 | 收录 |
| 13 | ConnectedTexturesMod (CTM) | 前置库（连接纹理渲染） | 辅助优化 | 开源（Chisel Team/tterrag，协议未注明） | 有（1.12.2 仅客户端） | 活跃开源 | **与 Fusion（连接纹理）功能重复**（包内两者都收，batch-04 已记录待决策）；被 Chisel 等依赖 | 低-中 | 收录（分类调整：辅助优化→前置库） |
| 14 | Conquest Reforged 🔒 | 装饰（中世纪建材 15000+） | 辅助优化 | 闭源（活跃，ARR） | 有 | 活跃闭源（10 人团队） | 连接纹理需 OptiFine + 自带 CRRP 包；与建筑类共存注意内容体量（1294 条目/资源占用大） | 中（闭源+大体积+OptiFine 依赖） | 收录但风险标注 |
| 15 | Console Filter | 辅助优化（控制台消息过滤） | 辅助优化 | 开源（停更，Matt Czyr） | 有 | 停更开源 | 无 | 低 | 收录 |
| 16 | Construct's Armory | 工具武器（匠魂盔甲） | 工具武器 | LGPL-3.0-or-later（批量表，TheIllusiveC4） | 有 | 停更（1.12.2 线完成） | 需 Tinkers' Construct（包内）；注意匠魂分支互斥（batch-02：Antique Armory 线 vs 原版线） | 无 | 收录 |
| 17 | ContentTweaker | 前置库（魔改脚本 CoT） | 辅助优化 | MIT（批量表） | 有 | 维护中 | 被 #18 CoTRO、CTIG（#31）等依赖 | 无（仅分类错误） | 收录 |
| 18 | ContentTweaker Registry Orderer | 前置库（CoT 配套 coremod） | 辅助优化 | 开源（tomdodd4598，协议未注明） | 有（仅 1.12.2） | 停更开源 | 前置 ContentTweaker（#17）；coremod 注意加载顺序（与 MixinBooter 等协调） | 低 | 收录（分类调整） |
| 19 | Controlling | 辅助优化（按键冲突管理） | 未分类 | MIT（批量表） | 有（3.0.8） | 完成/维护 | 无 | 无 | 收录 |
| 20 | Controlling-3.0.8 | ——（与 #19 同一模组的重复条目） | 未分类 | 同 #19（MIT） | 有 | 同 #19 | 重复收录 | 高（重复） | 建议排除 |
| 21 | Converting Industrial Wires | 科技（IE 欧盟线缆转化） | 科技 | 开源（停更，tilera 分叉） | 有（仅 1.12.2） | 停更开源 | 需 IE；联动 IC2/GTCE/磁场工艺（包内有 IC2）；为 IndustrialWires 分叉——若包内含 IndustrialWires 则重复（应保留本分支） | 低 | 收录 |
| 22 | Cookie Core | 前置库（Ephys 库） | 世界生成 | 未知（mcmod 未标注；GitHub Ephys/CookieCore 待核） | 有 | 停更 | 被 Tinkers' Steelworks / Magic Feather（包内有）/ARRP 依赖 | 低-中（许可证未核实） | 收录（分类错误） |
| 23 | Cooking for Blockheads | 农业（烹饪书） | 农业 | 未注明（BlayTheNinth；mcmod 无许可信息，疑 ARR 需人工核） | 有（6.5.0） | 活跃维护 | 联动潘马斯农场（包内）；无核心冲突 | 低-中（许可未注明） | 收录 |
| 24 | CookingForBlockheads_1.12.2-6.5.0 | ——（与 #23 重复条目，带版本号文件名） | 农业 | 同 #23 | 有 | 同 #23 | 重复收录 | 高（重复） | 建议排除 |
| 25 | CoroUtil | 前置库（Corosus 库） | 未分类 | 未知（mcmod 未注明；GitHub Corosauce/CoroUtil 待核） | 有（1.12.2-1.2.37） | 维护中 | 被 Weather2 / 僵尸意识（包内有 Zombie Awareness）/敌对世界-入侵等依赖 | 低-中（许可证未核实） | 收录 |
| 26 | Corpse Complex | 辅助优化（死亡机制配置） | 未分类 | LGPL-3.0-or-later（批量表，TheIllusiveC4） | 有 | 停更开源 | **与包内 Gravestone mod 墓碑/死亡掉落功能重叠**；联动 Tough As Nails/Cosmetic Armor 等 | 中（功能重叠） | 收录但风险标注 |
| 27 | Cosmetic Armor Reworked | 工具武器（时装盔甲，国创） | 工具武器 | 开源（停更；**批量表 ARR 为误匹配**——匹配到 STONEBORN 变体，原版停更开源） | 有 | 停更开源（Lain MultipleInstances，国创） | 与 STONEBORN 皮肤系存在资源重叠可能；无核心冲突 | 低-中 | 收录 |
| 28 | CraftPresence | 辅助优化（Discord 状态 RPC） | 未分类 | MIT（批量表，CDAGaming） | 有（基于既有知识：早期版本即支持 1.12.2；mcmod 搜索端限流未复核） | 维护中 | 无 | 低-中 | 收录 |
| 29 | CraftStudio API | 前置库（模型动画 API） | 前置库 | 开源（协议未注明） | 有 | 停更开源（Jibay Mcs） | 被 Animania Base / mobultion 依赖——**若包内无此二者则该 API 多余（建议人工核对）** | 中 | 收录但风险标注 |
| 30 | CraftTweaker | 前置库（魔改脚本 CrT） | 辅助优化 | MIT（批量表） | 有 | 维护中 | 被本批 CTIG/CoTRO 及全包魔改依赖；无核心冲突 | 无 | 收录 |
| 31 | CraftTweaker Integration (CTIG) | 前置库（CrT 集成插件） | 辅助优化 | 开源（TCreopargh，协议未注明） | 有（仅 1.12.2） | 停更开源 | 前置 CraftTweaker；联动 Scaling Health/ProjectE/静谧四季/血魔法/TC6/Game Stages/饰品栏（均在包内） | 低 | 收录 |
| 32 | CraftTweaker Sixik Utils | 魔改（CrT 工具集） | 辅助优化 | 开源（停更，CF 已标记过时） | **无**（Sixik Utils 系列两个 mcmod 条目均仅 1.16.5+，无 1.12.2 版本） | 停更（GitHub/Wiki 已删） | 无 | 高（1.12.2 无对应版本） | 建议排除 |
| 33 | CraftTweaker2 | ——（与 #30 重复条目，jar 命名） | 辅助优化 | 同 #30（MIT） | 有 | 同 #30 | 重复收录 | 高（重复） | 建议排除 |
| 34 | Craftify | 辅助优化（音乐服务整合） | 未分类 | 未注明（ThatGravyBoat，GitHub 无 LICENSE 信息） | 存疑（mcmod 列 1.12.2/1.8.9，但注明 1.18 前需 **Essential 前置**——1.12.2 实际可运行性存疑） | 停更 | **与包内 Net Music（音乐播放）功能部分重叠** | 中-高（Essential 依赖存疑+停更+功能重叠） | 建议排除（或实测可运行后保留） |
| 35 | Crafting Tweaks | 辅助优化（合成辅助） | 辅助优化 | 未注明（BlayTheNinth，疑 ARR） | 有（8.1.9） | 活跃维护 | **与 #36 Crafting Tweaks Unofficial 功能重复（二选一）**；原版不支持 Avaritia/合成拓展工作台 | 中（重复） | 建议排除（保留 #36 Unofficial，其适配本包） |
| 36 | Crafting Tweaks Unofficial | 辅助优化（合成辅助 1.12.2 分支） | 辅助优化 | 开源（CleanroomMC/Serenibyss，协议未注明） | 有（仅 1.12.2） | 停更开源 | 与 #35 二选一：**支持 Avaritia/合成拓展/林业工作台**（包内有 Avaritia+Extended Crafting），并修复 GT 等模组物品复制 bug | 低 | 收录（与 #35 二选一，建议保留本条） |
| 37 | CraftingTweaks_1.12.2-8.1.9 | ——（与 #35 重复条目，带版本号文件名） | 辅助优化 | 同 #35 | 有 | 同 #35 | 重复收录 | 高（重复） | 建议排除 |
| 38 | Crash Assistant | 辅助优化（崩溃报告 GUI） | 辅助优化 | KostromDan-MML-1.1.3 自定义（批量表） | 有 | 维护中（1.6.4–1.21.11） | 无 | 中（**社区口碑分化：57% 投票认为"不稳定"/"没啥用"**） | 收录但风险标注 |
| 39 | CreativeCore | 前置库（CreativeMD 核心库） | 世界生成 | LGPL-3.0-only（批量表） | 有（v1.9.90） | 维护中 | 被 CreativeMD 系模组依赖 | 无（仅分类错误） | 收录 |
| 40 | CreativeCore_v1.9.90_mc1.12.2 | ——（与 #39 重复条目，带版本号文件名） | 世界生成 | 同 #39 | 有 | 同 #39 | 重复收录 | 高（重复） | 建议排除 |
| 41 | Ctrl Q | 辅助优化（防误丢物品） | 未分类 | MIT（批量表） | 有（1.12.x） | 停更开源 | 无 | 低-中（**主要面向 macOS 用户防 CMD+Q 误退；非 Mac 几乎无用**——评估必要性） | 收录但风险标注 |
| 42 | Cucumber | 前置库（BlakeBr0 库） | 前置库 | MIT（批量表） | 有 | 维护中 | 被神秘农业/种植拓展等依赖 | 无 | 收录 |
| 43 | Cucumber Library | ——（与 #42 同一模组的重复条目） | 前置库 | 同 #42（MIT） | 有 | 同 #42 | 重复收录 | 高（重复） | 建议排除 |

---

## 统计

**收录 21 / 风险标注 11 / 建议排除 11 / 分类错误 6**（另有 8 条"未分类"已按正确分类归位）

- **建议排除 11**：#3 Comforts Modernized（与 #2 重复，原版已支持 1.12.2）、#9 Condition Overload（mcmod 无法核实）、#20 Controlling-3.0.8（与 #19 重复）、#24 CookingForBlockheads_1.12.2-6.5.0（与 #23 重复）、#32 CraftTweaker Sixik Utils（**无 1.12.2 版本**）、#33 CraftTweaker2（与 #30 重复）、#34 Craftify（Essential 前置存疑 + 停更 + 与 Net Music 功能重叠）、#35 Crafting Tweaks（与 #36 Unofficial 重复，Unofficial 更适配本包）、#37 CraftingTweaks_1.12.2-8.1.9（与 #35 重复）、#40 CreativeCore_v1.9.90_mc1.12.2（与 #39 重复）、#43 Cucumber Library（与 #42 重复）
- **分类错误 6**：#10 ConfigAnytime（辅助优化→前置库）、#14 Conquest Reforged（辅助优化→装饰）、#17 ContentTweaker（辅助优化→前置库）、#18 CoTRO（辅助优化→前置库）、#22 Cookie Core（**世界生成→前置库**）、#39 CreativeCore（**世界生成→前置库**）
- 另有 8 条"未分类"归位：#1 Combined Potions→辅助优化、#8 CompatSkills→前置库、#19 Controlling→辅助优化、#25 CoroUtil→前置库、#26 Corpse Complex→辅助优化、#28 CraftPresence→辅助优化、#34 Craftify→辅助优化（但已建议排除）、#41 Ctrl Q→辅助优化

## 关键发现（供整合包决策）

1. **重复条目 6 组 8 条**：Comforts×2（保留原版 #2，移植版 #3 多余——原版 TheIllusiveC4 版直接支持 1.12.2）、Controlling×2、Cooking for Blockheads×2、CraftTweaker×2、CreativeCore×2、Cucumber×2——modlist 版本残留，统一去重。
2. **Crafting Tweaks 系二选一**：原版（#35，活跃但未注明许可、不支持 Avaritia 工作台）× Unofficial（#36，Cleanroom 分支、停更开源、**支持 Avaritia/合成拓展/林业工作台 + 修复 GT 等复制 bug**）。本包含 Avaritia 与 Extended Crafting，**建议保留 Unofficial、排除原版**。
3. **与四核心（星系/AE2UEL/暮色/TC6）关系**：无直接冲突。正面联动：Congrega Mystica 为 TC6 核心附属（联动 TC 修复/神秘进阶等，收录）；CTM 被暮色/IE/Mek/科技枪等联动（收录）；Compact Machines 与 AE2 联动（包内有 ME Capability Adapter 配套）。注意：Congrega Mystica 的动态矿簇生成与包内其他矿生成模组需配置协调。
4. **已知兼容问题**：CompatSkills × 巫术学（Electroblob's Wizardry）存在社区反馈的兼容冲突（mcmod 有解决方案教程，收录但注意）；Corpse Complex × Gravestone mod 死亡掉落功能重叠（本包两者都有，建议二选一或配置协调）。
5. **批量表 3 处误匹配已校正**：#1 Combined Potions（MIT→实为 "Large Fluid Tank"，实际开源未注明）、#27 Cosmetic Armor Reworked（ARR→实为 STONEBORN 变体，原版停更开源）、#12 Connected Glass（ARR→mcmod 标注活跃开源）。
6. **1.12.2 无版本 1 个**：CraftTweaker Sixik Utils（Sixik 系列仅 1.16.5+，直接排除）；**存疑 1 个**：Craftify（1.12.2 需 Essential 前置，可运行性存疑，建议排除或实测）。
7. **社区口碑**：Crash Assistant 有 57% 投票认为"不稳定/没啥用"（口碑分化，风险标注）；其余 mcmod 有评比的条目（Combined Potions 83%、Compact Machines、CTM、CAR 97%、Crafting Tweaks 96%、Comforts 96%、CTIG 100%、CoTRO 等）口碑均正面，无"半成品/烂尾"负面评价。
8. **许可证**：闭源/未注明 4 个（Conquest Reforged 闭源、Cooking for Blockheads/Crafting Tweaks/Craftify 未注明疑 ARR——分发注明出处）；开源但无明确协议 9 个（Combined Potions、Common Capabilities、Compact Solars、CTM、CompatSkills、CoTRO、Converting Industrial Wires、CraftStudio API、CTIG、Crafting Tweaks Unofficial——标注"开源未注明"即可）；Crash Assistant 为 KostromDan 自定义许可（MML-1.1.3）。
9. **待人工核对 3 个**：Comics Bubbles Chat（mcmod 无条目，1.12.2 版本待核）、CraftStudio API 必要性（若包内无 Animania/mobultion 则多余）、CraftPresence（mcmod 搜索端限流未复核，1.12.2 按既有知识标注"有"）。
