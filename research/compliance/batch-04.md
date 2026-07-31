# 《回忆》整合包 模组合规核查 · batch-04（Bigger Chat History – Carbon Config）

来源：`modlist.md` 第 445–575 行，共 50 个模组条目。
核查方式：以 `modrinth-results.tsv` 批量结果为基准（名字匹配直接用其许可证）；仅对 NO_HIT / 匹配项目存疑 / 需核证 1.12.2 支持的条目补查。本会话 WebSearch 与 web_search_prime 额度均耗尽，改用直接抓取 mcmod.cn 搜索页/详情页（含投票与评价）、CurseForge 搜索/文件页、Modrinth API 逐条核证，每模组 mcmod 抓取 ≤2 次，被限流即标"未知"。共定位 mcmod 条目 11 个、CurseForge 项目 8 个、Modrinth 核证 5 个。

> 本包核心模组：星系 Galacticraft、AE2/AE2UEL、暮色森林、神秘时代（TC）。冲突栏以此四者为基准。本批与四核心无直接冲突模组，但含两个包内功能重复点（CC:Tweaked×OpenComputers、CTM×Fusion）。

| # | 模组 | 正确分类 | 当前分类 | 许可证 | 1.12.2 | 开发状态 | 冲突/重复 | 风险 | 结论 |
|---|------|---------|---------|--------|--------|---------|-----------|------|------|
| 1 | Bigger Chat History | 辅助优化（聊天记录上限） | 未分类 | 闭源（ARR，Keksuccino） | 有（1.12.2–1.17 线） | 停更；纯客户端、无前置；默认 2000 条可配 | 无 | 低（停更小工具） | 收录 |
| 2 | Bigger Crafting Tables | 辅助优化（更大工作台，GoryMoon） | 未分类 | MPL-2.0（批量表） | 有 | 完成/停更 | 无 | 无 | 收录 |
| 3 | Bigger Packets Please | 辅助优化 | 辅助优化 | 闭源（ARR） | 有（1.7.10–1.12.2） | 停更；修复 "Badly compressed packet / NBT too big" 断线，83% 好评 | 无 | 低 | 收录 |
| 4 | BilingualName | 辅助优化（客户端双语显示） | 未分类 | 未知（开源，GitHub friendlyhj/BilingualName 未标 LICENSE） | 有（仅 1.12.2） | 半弃坑；88% 好评 | 与 I18nUpdateMod 互补不冲突 | 低 | 收录 |
| 5 | Binnie's Mods | 农业/科技（林业附属：养蜂/花艺/基因） | 未分类 | LGPL-3.0（原版/Patched 分支同源） | 有（**须用 Binnie's Mods Patched 分支**） | 原版停更；Patched 分支社区维护 | 依赖 Forestry（本包已有）；与 More Bees 等林业附属功能部分重叠 | 中（1.12.2 必须用社区 Patched 分支） | 收录但风险标注 |
| 6 | Biome Border Viewer | 辅助优化（群系边界显示，mrp_v2） | 世界生成 | 未知（CF 未标注） | 有（1.0.0–1.3.0.0，2018） | 停更（1.12.2 线）；17 万下载 | 与 BiomeInfo 功能近似（可共存） | 低 | 收录 |
| 7 | BiomeInfo | 辅助优化（HUD 群系信息） | 世界生成 | MIT（批量表） | 有 | 完成/停更 | 与 #6 功能近似（可共存） | 无 | 收录 |
| 8 | BiomeTweaker | 世界生成（群系修改） | 世界生成 | 未知（开源，superckl GitHub 未标 LICENSE） | 有 | 停更；86% 好评；26 包使用；官方提示对其他模组群系"不一定能生效" | 需 BiomeTweakerCore（本包已列，配套非重复）；与 BOP/OTG/RTG 联动 | 中（停更 + 兼容性官方提示） | 收录 |
| 9 | BiomeTweakerCore | 前置库（BiomeTweaker 核心） | 世界生成 | 未知（开源，同 #8） | 有 | 停更 | 与 #8 为配套前置非重复 | 无 | 收录 |
| 10 | Biomes O' Plenty | 世界生成 | 世界生成 | ARR（闭源） | 有（7.0.1.2444） | 1.12.2 停更但稳定；高版本活跃 | 与 BiomeTweaker 联动；群系 ID 构建期核对 | 低 | 收录 |
| 11 | Blinking Ender Eyes | 装饰（末影人眼睛动画） | 未分类 | MIT（批量表） | 有 | 完成小模组 | 无 | 无 | 收录 |
| 12 | Blockcraftery | 装饰（自定义方块形状） | 未分类 | 未知（开源，GitHub MysticMods 未标 LICENSE） | 有（仅 1.12.2） | 停更；**社区反馈长期存在萤石(glowstone)相关 bug 官方未修**，社区出 1.12.2 修复分支 Blockcraftery: Refurbished | 需 MysticalLib（本包已有） | 中（已知 bug；建议改用 Refurbished 分支） | 收录但风险标注 |
| 13 | Blood Arsenal | 魔法（血魔法附属：武器/印记/仪式） | 未分类 | 未知（开源，GitHub Arcaratus/BloodArsenal 未标 LICENSE） | 有 | 停更；88% 好评；延续版 Reawakened 仅 1.16+/1.20+ | 需 Blood Magic 2 + Baubles（本包核心，匹配） | 低-中（停更附属，功能稳定） | 收录 |
| 14 | Blood Magic | 魔法 | 魔法 | CC-BY-4.0（批量表） | 有（2.4.3-105） | 1.12.2 停更，内容完整；本包核心魔法 | 与 Blood Arsenal/Blood Smeltery 等附属联动 | 无 | 收录（核心） |
| 15 | Blood Smeltery | 科技（血魔法×匠魂附属） | 未分类 | LGPL-2.1（批量表） | 有 | 停更小附属 | 需 TiCon + Blood Magic | 无 | 收录 |
| 16 | BloodMagic | ——（与 #14 同一模组的重复条目） | 未分类 | CC-BY-4.0（同 #14） | 有 | 同 #14 | 重复收录 | 高（重复） | 建议排除 |
| 17 | BloomTech | 未知（无法定位） | 未分类 | 未知 | 未知 | 未知（mcmod/CurseForge 均无同名条目） | 未知 | 高（来源无法核实） | 建议排除（或人工核对 jar 后定） |
| 18 | Blue's Better Cats | 生物（猫增强） | 未分类 | ARR（批量表） | 有 | 停更小模组 | 无 | 无 | 收录 |
| 19 | Blur | 装饰（GUI 背景模糊，tterrag） | 未分类 | LGPL-3.0（注：批量表误匹配 "No Pumpkin Blur"，实际 tterrag 原版即 LGPL-3.0，一致） | 有 | 1.12.2 停更，稳定 | 无 | 低 | 收录 |
| 20 | BnBGamingCore | 前置库（BnBGaming ASM 核心） | 世界生成 | 闭源（ARR） | 有 | 停更（单独安装无效果属正常，ASM 库） | 与 BnBGamingLib 配套；被 Calm Down Zombie Guy 等依赖 | 无 | 收录 |
| 21 | BnBGamingLib | 前置库 | 前置库 | 闭源（ARR） | 有 | 停更 | 被 Triumph/自定义加载画面/Calm Down Zombie Guy 依赖（本包含后者） | 无 | 收录 |
| 22 | BnnWidget | 前置库（GUI 组件库，老K/Kamesuta） | 未分类 | 未知（CF 未标注） | 有（1.1.1.24，2019-02） | 停更 | 无（须确认依赖它的模组是否已收录） | 低 | 收录 |
| 23 | Body Camera | 未知（无法核实） | 辅助优化 | 未知（Modrinth 同名项目已不存在 404，批量表 CC-BY-4.0 匹配不可信） | 未知（mcmod/CurseForge 均无 1.12.2 同名模组） | 未知 | 未知 | 高（来源无法核实） | **建议排除**（或人工核对 mods 目录 jar 后定） |
| 24 | Bookshelf | 前置库 | 前置库 | LGPL-2.1（批量表，DarkhaxDev） | 有 | 维护中（1.12.2 线完成） | 无 | 无 | 收录 |
| 25 | Borderless Mining | 辅助优化（无边框窗口化） | 未分类 | MIT（批量表） | 有（社区 Forge 移植版 0.0.0-1.6.0+1.12，Brycey92 编译） | 原版 1.15+ 活跃；1.12.2 靠社区移植 | 无 | 中（移植版，构建期实测） | 收录但风险标注 |
| 26 | Born in a Barn | 生物（僵尸破门行为修复） | 未分类 | ARR（批量表） | 有 | 完成 | 无 | 低 | 收录 |
| 27 | Botania | 魔法 | 魔法 | Botania 自定义许可（宽松，允许分发，批量表） | 有（r1.10-364） | 1.12.2 停更，内容完整；本包核心魔法 | 众附属（#28-31、Botanic Additions 等） | 无 | 收录（核心） |
| 28 | Botania Needs These Things | 魔法（Botania 附属，workbench61） | 魔法 | 未知（CF 未标注） | 有（仅 1.12.2；2020-01 最后更新，100 万+下载） | 停更 | 需 Botania；与 Botania Tweaks 互补 | 低 | 收录 |
| 29 | Botania Tweaks | 魔法（Botania 平衡/配置补丁） | 魔法 | 未知（开源，GitHub quat1024/BotaniaTweaks 未标 LICENSE；批量表误匹配 GuGu Utils 的 MIT，不可信） | 有（仅 1.12.2） | 停更（1.9.1，2020-10） | 需 Botania；**官方明确"额外植物学(ExtraBotany)不被也绝不会被支持"**——本包含 ExtraBotany 条目需注意；与 Avaritia/Extended Crafting 联动 | 中（ExtraBotany 不支持声明） | 收录但风险标注 |
| 30 | Botanic Additions | 魔法（Botania 附属） | 未分类 | ARR（批量表） | 有 | 停更 | 需 Botania | 低 | 收录 |
| 31 | Botanic Bonsai | 魔法（Botania 附属，盆栽自动树场） | 装饰 | 未知（百科未标注） | 有（仅 1.12.2） | 停更；仅 13 包使用 | 需 Botania + **Bonsai Trees（盆栽）额外前置——本清单未确认收录** | 中（隐藏前置） | 收录但风险标注 |
| 32 | Bountiful Baubles | 魔法/工具（Baubles 附属饰品，**非库**） | 前置库 | ARR（批量表匹配到 Retextured 分支，原版同 ARR） | 有 | 停更（Cursed1nferno） | 需 Baubles | 低 | 收录 |
| 33 | Brandon's Core | 前置库（DE/德拉克龙核心库） | 世界生成 | CoFH Don't Be a Jerk（允许整合包分发） | 有 | 完成 | 与 #34/#35 为同一模组三重复条目（三选一保留） | 高（重复） | 收录（去重后保留此条） |
| 34 | Brandons Core | ——（与 #33 重复条目） | 世界生成 | 同 #33 | 有 | 同 #33 | 重复收录 | 高（重复） | 建议排除 |
| 35 | BrandonsCore | ——（与 #33 重复条目） | 世界生成 | 同 #33 | 有 | 同 #33 | 重复收录 | 高（重复） | 建议排除 |
| 36 | Bring Me The Rings | 魔法/工具（Baubles 戒指栏位扩展，zabi94） | 未分类 | 未知（CF 未标注） | 有（仅 1.12.2，130 万+下载） | 完成/停更 | 与 #37 重复条目；需 Baubles | 低 | 收录 |
| 37 | Bring Me The Rings! | ——（与 #36 重复条目） | 未分类 | 同 #36 | 有 | 同 #36 | 重复收录 | 高（重复） | 建议排除 |
| 38 | Broken Wings | 工具武器（鞘翅机制调整） | 未分类 | 公共领域 PD（批量表，匹配到 Game Stages Edition 分支） | 有（2.1.1） | 停更 | 无 | 低 | 收录 |
| 39 | Building Gadgets | 工具武器（建筑工具，Direwolf20） | 未分类 | 未知（开源，GitHub 仓库；百科未标具体类型） | 有 | 1.12.2 完成；高版本活跃；投票 88% 好玩/稳定 47% | 1.12.2 无强制前置；FE 能量可配置；联动 EMC Gadgets | 低 | 收录 |
| 40 | BuildingGadgets-2.8.1 | ——（与 #39 重复条目，带版本号文件名） | 未分类 | 同 #39 | 有 | 同 #39 | 重复收录 | 高（重复） | 建议排除 |
| 41 | CB Multipart | 前置库（CBFM 多方块系统） | 未分类 | LGPL-2.1（批量表） | 有 | 停更但稳定 | 与 ForgeMultipart 同源互斥（本清单未见他者） | 低 | 收录 |
| 42 | CC: Tweaked | 科技（电脑编程，SquidDev） | 辅助优化 | Apache-2.0（批量表误匹配 CCUtils，实际 CC:Tweaked 即 Apache-2.0，一致） | 有（1.93.x） | 活跃维护 | **与 OpenComputers（本包含）功能重复**——社区常二选一 | 中（与 OC 功能重复） | 收录但风险标注 |
| 43 | CTM | 前置库（连接纹理核心，tterrag） | 未分类 | ARR（闭源） | 有（1.0.1.30） | 完成，稳定 | **与 Fusion (Connected Textures)（本包含）功能重复**——连接纹理实现二选一；被 Chisel/Connected Glass 依赖 | 中（与 Fusion 重复） | 收录但风险标注 |
| 44 | CTM-MC1.12.2-1.0.1.30 | ——（与 #43 重复条目，带版本号文件名） | 未分类 | 同 #43 | 有 | 同 #43 | 重复收录 | 高（重复） | 建议排除 |
| 45 | CTR VCR | 装饰（CRT/VHS 复古风**光影**，millennIumAMbiguity） | 未分类 | Apache-2.0 | 有（光影跨 1.12–1.21+，客户端） | 活跃（51 万+下载） | **是光影而非 Forge 模组**——应放 shaderpacks 目录；需 Optifine/Iris | 低-中（需人工确认放置位置） | 收录但风险标注 |
| 46 | Cake Chomps | 农业（蛋糕分段进食） | 农业 | LGPL-3.0-or-later（批量表） | 有 | 完成 | 无 | 无 | 收录 |
| 47 | CalcMod | 工具武器（游戏内计算器） | 未分类 | MIT（批量表） | 有 | 停更 | 无 | 无 | 收录 |
| 48 | Calm Down Zombie Guy | 生物（僵尸/猪人 bug 修复，BnBGaming） | 生物 | 闭源（ARR） | 有（仅 1.12.2，1060 万+下载） | 停更（2019-12） | 依赖 BnBGamingCore + BnBGamingLib（本包已含） | 无 | 收录 |
| 49 | Capsule | 工具武器（建筑打包搬运，LdtTeam） | 未分类 | MIT（批量表） | 有 | 维护中（1.12.2 线完成） | 无 | 无 | 收录 |
| 50 | Carbon Config | 前置库（配置 GUI 库） | 辅助优化 | Apache-2.0（批量表，GitHub Carbon-Config-Project） | 有（Forge 1.12.2 在支持列表） | 活跃 | 被 Chunk-Pregenerator 依赖；无核心冲突 | 无 | 收录 |

---

## 统计

**收录 34 / 风险标注 8 / 建议排除 8 / 分类错误 11**

- **建议排除 8**：#16 BloodMagic（与 #14 重复）、#17 BloomTech（无法核实）、#23 Body Camera（无法核实）、#34/#35 Brandons Core 系（与 #33 重复）、#37 Bring Me The Rings!（与 #36 重复）、#40 BuildingGadgets-2.8.1（与 #39 重复）、#44 CTM-MC1.12.2-1.0.1.30（与 #43 重复）
- **分类错误 11**：#6 Biome Border Viewer（世界生成→辅助优化）、#7 BiomeInfo（世界生成→辅助优化）、#9 BiomeTweakerCore（世界生成→前置库）、#20 BnBGamingCore（世界生成→前置库）、#31 Botanic Bonsai（装饰→魔法）、#32 Bountiful Baubles（前置库→魔法）、#33/#34/#35 Brandon's Core 系（世界生成→前置库）、#42 CC: Tweaked（辅助优化→科技）、#50 Carbon Config（辅助优化→前置库）
- 另有 **27 条"未分类"**，其中 22 条按本表"正确分类"归位，5 条为重复/无法核实条目（#16/17/37/40/44）建议直接清除。

## 关键发现（供整合包决策）

1. **重复条目 6 条 → 5 组**：Blood Magic×2（#14/#16）、Brandon's Core×3（#33/#34/#35，三选一）、Bring Me The Rings×2（#36/#37）、Building Gadgets×2（#39/#40）、CTM×2（#43/#44）——modlist 版本残留，统一去重。
2. **无法核实 2 个**：BloomTech、Body Camera——mcmod/CurseForge/Modrinth 均无 1.12.2 同名条目（Modrinth `body-camera` 项目已 404），建议排除或人工核对 mods 目录 jar 后再定。
3. **非模组混入 2 个**：CTR VCR 是光影包（放 shaderpacks 目录，需 Optifine）；Blur 为 GUI 视觉类客户端模组（正常收录）。
4. **包内功能重复二选一**：CC: Tweaked × OpenComputers（本包两者都有）；CTM × Fusion 连接纹理实现（本包两者都有）——构建期评估保留其一。
5. **评论级/已知 bug 风险**：Blockcraftery 官方停更且萤石 bug 未修，社区 1.12.2 修复分支 Refurbished 可用（建议换用）；Binnie's Mods 1.12.2 必须用 Patched 分支；Botania Tweaks 官方声明不支持 ExtraBotany（本包含 ExtraBotany）；Botanic Bonsai 有隐藏前置 Bonsai Trees 需确认收录。
6. **与四核心（星系/AE2UEL/暮色/神秘时代）关系**：本批无直接冲突；血魔法系（#13-15）与 BM2 配套正常；群系类（BOP/BiomeTweaker）维度与群系 ID 构建期核对即可。
7. **许可证**：闭源/ARR 10 个（BOP、CTM、BnBGaming 系×2、Bigger Chat History、Bigger Packets Please、Blue's Better Cats、Born in a Barn、Botanic Additions、Bountiful Baubles、Calm Down Zombie Guy）——整合包分发注明出处即可；CC-BY-4.0（Blood Magic）、LGPL/MIT/Apache 系可直接收录；多个 GitHub 开源但未标 LICENSE 的模组（Blockcraftery、Blood Arsenal、BiomeTweaker、Botania Tweaks、BilingualName、Building Gadgets）按"开源无明确许可"标注。
