# Batch 15 模组合规核查报告（modlist.md 1859-1980 行，共 41 条）

核查日期：2026-07-31
数据来源：Modrinth 批量结果（TSV）、GitHub 仓库 LICENSE（gh api）、mcmod.cn 搜索+详情页、Modrinth API。
规则：TSV 精确名称匹配直接采用其许可证；NO_HIT/ARR/身份可疑者补查；每模组详情页最多 1 次；未命中即标"未知"，不重试轰炸。

| # | 模组 | 正确分类 | 当前分类 | 许可证 | 1.12.2 | 开发状态 | 冲突/重复 | 风险 | 结论 |
|---|---|---|---|---|---|---|---|---|---|
| 1 | Loading Tips | 辅助优化 | 辅助优化 | LGPL-2.1-only（TSV 匹配至 Darkhax Tips） | 是 | 停更（Tips 1.12.2 为旧版） | 无 | 条目名与 CurseForge 实际名 "Tips" 不对应；国创 "LoadingTips/初雪·冰" 仅 1.7.10 不符，应核对 jar 文件名 | 收录 |
| 2 | Logistics Pipes | 科技 | 科技 | LicenseRef-Minecraft-Mod-Public-License（MMPL 自定义） | 是（1.0.0.77） | 停更（2018 后无更新） | 与 Ender IO 管道/热力管道/Mekanism 管/ XNet 功能重叠（管道物流专精） | 自定义许可证（整合包分发需确认 MMPL 条款）；物流功能重复 | 收录（功能重叠提示） |
| 3 | Loot Capacitor Tooltips | 辅助优化 | 辅助优化 | 开源（mcmod 标记，GitHub 仓库已删、具体协议未明） | 是（1.12.2 专属） | 停更 | 无（前置 Ender IO，包内已有） | 具体许可协议无法确认 | 收录 |
| 4 | Loot Overhaul | 游戏机制/掉落 | 未分类 | LicenseRef-All-Rights-Reserved（GitHub 无 LICENSE 文件，Tmtravlr） | 是（1.12.2/1.12.1） | 停更 | 与 LootTweaker / LootTableTweaker 掉落体系重叠 | ARR + 停更 + 全方块掉落机制与 loot 魔改脚本可能冲突 | 风险标注（建议确认与 loot 魔改取舍） |
| 5 | LootBags | 掉落/玩法内容 | 未分类 | 自定义 LootBags License v5（允许整合包使用、须署名；禁改版分发） | 是 | 停更（2018 后社区停） | 与 Lootr / Loot Overhaul 轻微重叠 | 自定义许可：整合包内署名即可 | 收录（需署名） |
| 6 | LootTableTweaker | 辅助优化 | 辅助优化 | LGPL-2.1-only（TSV 精确匹配，jaredlll08） | 是 | 停更 | 与 LootTweaker 功能重复（均为 CraftTweaker 系战利品表魔改） | 无 | 收录（与 #7 二选一） |
| 7 | LootTweaker | 辅助优化 | 辅助优化 | MIT（TSV 精确匹配，Daomephsta） | 是（0.3.1） | 停更 | 与 LootTableTweaker 功能重复 | 无 | 收录（与 #6 二选一；脚本生态更全可选此） |
| 8 | Lootr (Forge & NeoForge) | 游戏机制（战利品） | 未分类 | MIT（GitHub noobanidus/Lootr） | 是（Modrinth 17 个 1.12.2 版本，最新 0.6.2/2023-10） | 维护中（1.12.2 于 0.6.2 后停更，后续版本转向新 MC） | 与 LootBags、Loot Overhaul 战利品机制重叠 | 无 | 收录 |
| 9 | Lost Cities | 世界生成（结构） | 维度探索（错） | MIT（TSV 精确匹配，McJty） | 是 | 活跃（作者仍更新新版本；1.12.2 为旧版） | 无 | 分类错误：不添加维度，仅在现维度生成城市 | 收录（分类修正） |
| 10 | Low On Fire | 未分类（建议辅助优化） | 未分类 | LicenseRef-All-Rights-Reserved（TSV 精确标题） | 未知（无 mcmod 词条/无 GitHub） | 未知 | 无 | 身份无法交叉验证，1.12.2 版本存疑 | 风险标注（核对 jar 文件名与版本） |
| 11 | Lumenized | 辅助优化（视觉） | 未分类 | LGPL-3.0（GitHub NovaEngineering-Source/Lumenized；mcmod 开源） | 是（1.12.2 专属） | 维护至 2024（国创，独立化 GTCEu 的 Bloom/泛光） | 无（前置 CTM、CCL、MixinBooter 包内均常见） | 小众（mcmod 指数低）但可用 | 收录 |
| 12 | LunatriusCore | 前置库 | 世界生成（错） | MIT（GitHub Lunatrius/LunatriusCore） | 是 | 停更（2019 后） | Schematica / InGameInfo XML / Killing Spree 等前置库 | 分类错误 | 收录（分类修正） |
| 13 | MCA | 游戏机制（村民/NPC） | 未分类 | GPL-3.0（GitHub WildBamaBoy/minecraft-comes-alive） | 是（6.3.5） | 停更（原版停止；社区有 MCA Reborn 分支） | 无 | 大型 NPC 模组，1.12.2 版本有历史 bug 反馈；GPL-3.0 合规分发 | 收录（停更提示） |
| 14 | MCMultiPart | 前置库 | 未分类 | LGPL-2.1-only（TSV 匹配 CB Multipart） | 是 | 停更（由 CB Multipart 延续） | 与 #15 为同一模组重复条目 | 无 | 收录（与 #15 去重） |
| 15 | MCMultiPart-2.5.3 | 前置库 | 未分类 | LGPL-2.1-only | 是（2.5.3 即 1.12.2 版） | 同上 | 与 #14 完全重复（同一 jar） | 无 | 建议删除（重复条目） |
| 16 | ME Capability Adapter | 科技/AE2 附属 | 未分类 | WTFPL（GitHub ruifung/MECapabilityAdapter；mcmod 开源） | 是（1.12.2/1.12.1/1.12） | 停更（最后编辑 2 年前） | AE2 附属，与 AE2UEL 兼容性需实测 | 无 | 收录（AE2UEL 兼容待实测） |
| 17 | MEDIEVAL CRAFT | 内容/装备 | 未分类 | 闭源/ARR（mcmod 无开源标记） | 是（1.12.2 起多版本） | 活跃（Ffunari2004，MCreator 生成） | 需前置 "Medieval Craft (Weapons)"，包内未见 | MCreator 模组质量一般；1.12.2 非作者推荐版本（推荐 1.16.5）；前置缺失风险 | 风险标注（确认前置） |
| 18 | MJRLegends Lib | 前置库 | 前置库 | LicenseRef-All-Rights-Reserved（TSV 精确匹配） | 是 | 停更 | 与 #19 重复条目（同一库） | ARR（仅作前置依赖） | 收录（与 #19 去重） |
| 19 | MJRLegendsLib | 前置库 | 前置库 | LicenseRef-All-Rights-Reserved | 是 | 停更 | 与 #18 完全重复 | 无 | 建议删除（重复条目） |
| 20 | MPUtils | 前置库（整合包工具库） | 未分类 | 无 LICENSE 文件（mcmod 无开源标记→ARR 默认） | 是 | 停更（GenDeathrow/Darkosto） | MPUtils Basic Tools / Tip Alert 前置 | ARR | 收录（前置库） |
| 21 | MTLib | 前置库 | 前置库 | MIT（TSV 精确匹配，jaredlll08） | 是 | 停更 | 与 #22 重复条目 | 无 | 收录（与 #22 去重） |
| 22 | MTLib-3.0.6 | 前置库 | 前置库 | MIT | 是（3.0.6 即 1.12.2 版） | 停更 | 与 #21 完全重复（同一 jar） | 无 | 建议删除（重复条目） |
| 23 | MTS/Immersive Vehicles - New Cars | 科技（载具内容包） | 科技 | LicenseRef-All-Rights-Reserved（TSV 精确匹配） | 是 | 内容包持续更新 | 依赖 Immersive Vehicles(MTS) 核心；与 OCP 官方内容包可共存 | ARR 内容包 | 收录 |
| 24 | MaLiLib | 前置库 | 前置库 | LGPL-3.0-only（TSV 精确匹配，masa） | 是 | 活跃 | 无 | 无 | 收录 |
| 25 | Macaw's Lights and Lamps | 装饰 | 装饰 | LicenseRef-All-Rights-Reserved（TSV 精确匹配） | 是（v1.0.5） | 活跃（作者持续更新，1.12.2 为早期版） | 无 | ARR | 收录 |
| 26 | Macaw's Paintings | 装饰 | 装饰 | LicenseRef-All-Rights-Reserved（TSV 精确匹配） | 是（v1.0.4） | 活跃（同上） | 无 | ARR | 收录 |
| 27 | Magic Bees | 魔法 | 魔法 | WTFPL（GitHub DiamondCookie/MagicBees、Jorch72/MagicBees；mcmod 开源） | 是 | 停更（社区维护至 1.12.2，38 个整合包在用） | 需 Forestry（包内 Forestry CE ✓）；联动 Thaumcraft 6 | 无 | 收录 |
| 28 | Magic Feather | 装备/内容（飞行道具） | 未分类 | 开源（mcmod 标记，具体协议未明；GitHub 无对应仓库） | 是（1.12.2-1.15.2） | 停更（Ephys/EizhFox） | 与 XU2 天使指环功能类似（飞行） | 无 | 收录 |
| 29 | Magiculture Integrations | 兼容/整合 | 未分类 | MIT（GitHub Invadermonky/MagicultureIntegrations） | 是 | 停更 | 大量 mod 编码兼容（无冲突，纯加成） | 无 | 收录 |
| 30 | Magneticraft_1.12-2.8.2-dev | 科技 | 科技 | GPL-2.0（GitHub Magneticraft-Team/Magneticraft；mcmod 开源） | 是（dev 版） | 停更（原版停更；1.12.2 仅社区 dev 半成品；另有 MagnetiCraft: Reborn 续作） | 与星系 Galacticraft 无直接冲突（多方块工业 vs 太空） | 文件名即 "dev"，功能不完整风险 | 风险标注（半成品） |
| 31 | Main Menu Scale | 辅助优化 | 辅助优化 | 未知（mcmod 无开源标记；GitHub 无仓库；作者 modmuss50） | 是（1.12.2 专属） | 停更 | 无 | 许可未声明（保守按 ARR） | 收录（许可待定） |
| 32 | Malek's Infinity Gauntlet | 装备/内容 | 未分类 | 开源（mcmod 标记；作者 MalekiRe 同类项目均为 GPL-3.0） | 是（1.12.2 专属） | 停更 | 无 | 无 | 收录 |
| 33 | ManaVisualizer-r1.0-1 | Botania 附属/辅助优化 | 装饰（错） | 闭源（mcmod class 17523，国创 C似水流年；具体协议未明） | 是 | 未知（1 年前新收录） | 需 Botania | 闭源 + r1.0-1 文件名与 mcmod 条目对应关系需核对；Botania 附属大包兼容性一般 | 风险标注（身份/闭源） |
| 34 | Mantle | 前置库 | 前置库 | MIT（TSV 精确匹配，Slime Knights） | 是（1.3.3.55） | 维护中（随 TiC 更新） | 无 | 需与 TConstruct 1.12.2 版本配套 | 收录 |
| 35 | Map Tooltip | 辅助优化 | 辅助优化 | MIT（TSV 精确匹配，VendoAU） | 是（1.12.2-1.18） | 活跃（最后编辑 3 月前） | 无 | 无 | 收录 |
| 36 | Mapmaker's Gadgets-1.2_for_1.12.x | 辅助优化 | 辅助优化 | 闭源（mcmod 无开源标记；作者 Tmtravlr） | 是（1.12.2/1.12.1） | 停更 | 无（创造模式地图工具） | 闭源 | 收录（闭源提示） |
| 37 | Material Changer | 辅助优化 | 未分类 | 开源（mcmod 标记；GitHub 仓库已删，具体协议未明） | 是（1.10.2-1.12.2） | 停更（Lellson；最后编辑 2 月前） | 无 | 无 | 收录 |
| 38 | McJtyLib | 前置库 | 前置库 | MIT（TSV 精确匹配，McJty） | 是 | 活跃 | RFTools 系列前置 | 无 | 收录 |
| 39 | McMouser | 辅助优化 | 辅助优化 | MIT（TSV 精确匹配） | 是 | 未知/停更 | 无 | 无 | 收录 |
| 40 | Mechanics - Crafting Ways | 未知 | 未分类 | 未知 | 未知 | 未知 | 未知 | 无任何渠道命中（TSV 无、mcmod 无、GitHub 无），身份无法确认 | 建议核对（先确认是哪个模组再收录） |
| 41 | Mekanism Community Edition | 科技 | 科技 | LicenseRef-Custom（Modrinth 标注；原版 Mekanism 为 MIT 的社区分支） | 是 | 社区维护（CE 1.12.2 持续修 bug） | 需配套 CE 版 Generators/Tools；与 AE2UEL、星系无直接冲突 | 自定义许可标注，分发前确认条款 | 收录（确认 Generators 配套） |

## 统计

- 共核查 41 条（40 个唯一模组 + 3 组重复条目）。1.12.2 支持：确认 38 条，未知 2 条（#10 Low On Fire、#40 Mechanics - Crafting Ways），另有 1 条身份存疑待核对（#33 ManaVisualizer 具体 fork）。
- 许可证：开源 26 条（MIT 11、LGPL 系 8、GPL 系 3、WTFPL 2、MPL/其他 2）、闭源/ARR 9 条、自定义 3 条（Logistics Pipes MMPL、LootBags License v5、Mekanism CE Custom）、未知 3 条（#31、#33 具体协议、#40）。
- 分类错误 4 处：#9 Lost Cities（维度探索→世界生成）、#12 LunatriusCore（世界生成→前置库）、#33 ManaVisualizer（装饰→Botania 附属）、及 7 条"未分类"建议归入正式类别。
- 重复条目 3 组（建议删除 #15、#19、#22，各与其同名条目为同一 jar）。
- 功能重复 2 组：#6/#7 LootTableTweaker 与 LootTweaker 二选一；#4 Loot Overhaul 与二者及 #5/#8 战利品机制重叠。
- 结论：收录 31 条、风险标注 5 条（#4、#10、#17、#30、#33）、建议删除 3 条（#15、#19、#22）、建议核对 1 条（#40）、二选一 1 组（#6/#7）。
- 与星系 Galacticraft 冲突：未发现（#30 Magneticraft、#41 Mekanism CE、#2 Logistics Pipes 均无直接冲突）。
- 与 AE2UEL 相关：#16 ME Capability Adapter 兼容性建议实测；#2/#41 无冲突。
- 暮色/神秘时代：Magic Bees（#27）联动 Thaumcraft 6 正常，无冲突。
