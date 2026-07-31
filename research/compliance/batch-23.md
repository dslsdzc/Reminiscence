# Batch 23 合规核查报告（modlist.md 第 2916-3010 行，37 个模组）

核查日期：2026-07-31。数据源：modrinth-results.tsv 批量匹配（名字匹配直接采用）+ mcmod.cn 补查 + GitHub API 许可证验证 + Modrinth API 版本验证。批量结果中名字不匹配（如 TConstruct 被匹配到 "Seared Ladder (Backport)"、TATW 被匹配到 "TaterLib"）的均视为需补查项。

| # | 模组 | 正确分类 | 当前分类 | 许可证 | 1.12.2 | 开发状态 | 冲突/重复 | 风险 | 结论 |
|---|---|---|---|---|---|---|---|---|---|
| 1 | SuperHeroes | 冒险/战斗（英雄装备） | 未分类 | MIT | ✅（Modrinth 1.0.0，2024-03） | 小众、低活跃 | 无 | 注意与 Fisk's Superheroes（另一个模组）区分 | 收录（补分类） |
| 2 | SuperMartijn642's Config Lib | 前置库 | 辅助优化 | All Rights Reserved（GitHub 无 LICENSE） | ✅（1.1.8-forge-mc1.12，2023-08） | 1.12.2 线已停更（2023） | 无；其 Core Lib 与 Config Lib 均为 SuperMartijn642 生态前置 | ARR 无明文许可，作者惯例允许整合包收录但需注明 | 收录（风险标注：ARR） |
| 3 | SuperMartijn642's Core Lib | 前置库 | 世界生成 | All Rights Reserved（GitHub 无 LICENSE） | ✅（38 个 1.12.2 版本，2026-07-28 仍在发版） | 活跃 | 无 | 同上，ARR | 收录（风险标注：ARR） |
| 4 | Surge | 辅助优化 | 辅助优化 | LGPL-2.1-only（批量） | ✅ | 停更（Darkhax，1.12.2 时代） | 无 | 低 | 收录 |
| 5 | SwingThroughGrass | 战斗（穿草攻击） | 未分类 | MIT（GitHub 确认） | ✅ | 半弃坑但稳定（红票 100%，作者 Exidex） | 无 | 低 | 收录 |
| 6 | TATW | 科技（EU↔RF 能量转换） | 未分类 | 闭源（mcmod 标注"停更闭源"，无开源许可） | ✅ | 停更，红票 89% 但稳定性评价仅 25%（小样本） | 无；依赖 Aroma1997Core（包内已有 ✓） | 闭源不可再分发，需作者（Aroma1997）许可 | 收录（风险标注：闭源停更） |
| 7 | TCT Core | 前置库（The_TCT 核心库） | 世界生成 | All Rights Reserved（闭源，MCreator 库） | ✅ | 黑票 60%（口碑差） | 包内未见依赖方（CCTV Camera / TCT Flashlight / Jammy Furniture） | 闭源 ARR + 口碑差 + 若无依赖方纯冗余 | 建议排除（分类亦错误） |
| 8 | TConstruct | 科技（匠魂本体） | 未分类 | MIT（Tinkers' Construct） | ✅ | 成熟稳定 | 与第 3084 行 "Tinkers' Construct" 同一模组，重复条目 | 二选一 | 收录（与 Tinkers' Construct 合并去重） |
| 9 | TESLA | 前置库（能量 API） | 未分类 | MIT（批量） | ✅ | 稳定 | 与第 2980 行 "Tesla" 同一模组，重复条目 | 二选一 | 收录（与 Tesla 合并去重） |
| 10 | TOP Addons | 信息显示（TOP 附属） | 辅助优化 | GPL-3.0（GitHub 确认，DrManganese） | ✅ | 停更开源，红票 88% | 前置 The One Probe 包内已有 ✓；联动 IC2/林业/EIO/Mek/Botania 与包内容契合 | 低（GPL 可再分发，需随包注明） | 收录（补分类） |
| 11 | TS2K16 | 植被/树木成长 | 未分类 | 无 LICENSE 文件（实质闭源，Funwayguy） | ✅ | 停更（最后提交 2017-09） | 无 | 闭源无证 + 停更 + 小众；mcmod 未收录，口碑无数据 | 收录（风险标注，必要时可替代） |
| 12 | TT20 (TPS Fixer) | 辅助优化 | 辅助优化 | PolyForm Shield 1.0.0 | ✅ | 活跃 | 无 | PolyForm Shield：源码可用但**禁止商用**；非商用整合包可收录，商用打包不可 | 收录（风险标注：限非商用） |
| 13 | Tears & Cheers - Ghast Revamp | 冒险/战斗（生物改版） | 农业 | MIT（批量） | ✅ | 小众 | 无 | 低 | 收录（修正分类：农业→战斗） |
| 14 | Techguns | 科技（枪械） | 科技 | 原版仓库无 LICENSE（实质 ARR）；Techguns-CE 为 Techguns Mod License | ✅ | 停更（最后 2019-05，2.0.2.0），红票 93% 但兼容性评价仅 45% | 与科技体系无直接冲突；自带 RF 能量体系 | 许可证不明 + 停更 + 兼容性问题多 | 收录（风险标注：许可证需确认/建议评估 Techguns-CE 版） |
| 15 | Teddy Totems | 装饰/辅助（未分类） | 未分类 | All Rights Reserved（无源码） | ✅（1.12.2 版本 2025-11 更新） | 维持中 | 无 | ARR 无源码，再分发需作者许可 | 收录（风险标注：ARR） |
| 16 | TellMe | 调试/开发工具 | 辅助优化 | LGPL-3.0-only（批量） | ✅ | 稳定 | 无 | 低 | 收录 |
| 17 | TerraFirmaCraft | 生存大改/科技（完整生存重制） | 世界生成 | EUPL-1.2（批量） | ✅ | 1.12.2 版稳定（官方 1.12 线） | 与包内其他生存/农业体系需确认平衡 | 低 | 收录（修正分类：世界生成→生存大改） |
| 18 | Terracart Reloaded | 科技/运输（自动矿车） | 未分类 | MIT（批量） | ✅ | 稳定 | 无 | 低 | 收录 |
| 19 | Tesla | 前置库（能量 API） | 未分类 | MIT（批量） | ✅ | 稳定 | 与第 2943 行 "TESLA" 同一模组，重复条目 | 二选一 | 收录（与 TESLA 合并去重） |
| 20 | Tesla Core Lib | 前置库（Darkhax） | 世界生成 | MIT（MinecraftModDevelopmentMods/Tesla-Core-Lib 确认） | ✅ | 1.12.2 时代库，稳定 | 无 | 低 | 收录（修正分类：世界生成→前置库） |
| 21 | Thaumcraft | 魔法（TC6） | 魔法 | All Rights Reserved（Azanor，闭源） | ✅ | 停更（最后 2018-10，6.1.BETA26），红票 93% | 包内魔法体系核心；与 AE2/星系无直接冲突 | ARR 闭源；作者惯例明确允许整合包收录（注明作者） | 收录（风险标注：ARR 停更） |
| 22 | Thaumcraft Aspect Creator | 魔法（工具） | 魔法 | MIT（批量） | ✅ | 稳定 | 无 | 低 | 收录 |
| 23 | Thaumcraft Fix | 魔法（TC6 修复） | 魔法 | GPL-3.0（GitHub 确认，TheCodex6824） | ✅（仅 1.12.2） | 活跃（2026-06 仍提交），红票 100% | 前置 TC6 ✓；作者声明尽力避免与 TC6 附属冲突 | 低 | 收录 |
| 24 | Thaumcraft Inventory Scanning | 魔法（工具） | 魔法 | MIT（TwelveIterationMods/ThaumicInventoryScanning 确认） | ✅ | 停更（最后 2018-05），红票 92% | 前置 TC6 ✓ | 低 | 收录 |
| 25 | Thaumcraft Research Patcher | 魔法（整合包工具，JSON 改研究） | 魔法 | LGPL-3.0（GitHub 确认，TheCodex6824） | ✅ | 停更（最后 2023-01） | 前置 TC6 ✓ | 低 | 收录 |
| 26 | Thaumic Additions | 魔法 | 魔法 | 原版（AlexModGuy）GPL-3.0 | ❌ 原版仅至 1.10.2；1.12.2 版即"Reconstructed" | 原版简介明示"基本没做完…作者不填坑"（半成品） | 与第 2994 行 "Thaumic Additions: Reconstructed" 重复 | 重复条目 + 原版无 1.12.2 版 | 建议排除（删除该行，保留 Reconstructed） |
| 27 | Thaumic Additions: Reconstructed | 魔法（大型附属） | 魔法 | All Rights Reserved（GitHub 无 LICENSE，Zeitheron） | ✅（仅 1.12.2） | 停更（最后 2020-10，v12.6.5），红票 92% | 前置 TC6 | ARR 闭源停更，再分发需作者许可 | 收录（风险标注：ARR 停更） |
| 28 | Thaumic Augmentation | 魔法（大型附属） | 魔法 | LGPL-3.0（GitHub 确认，TheCodex6824） | ✅ | 活跃（2026-06 仍提交） | 前置 TC6 | 低 | 收录 |
| 29 | Thaumic Computers | 魔法/OC 联动（TC6↔OpenComputers 连接器） | 魔法 | 开源（mcmod 标注），具体协议未明 | ✅（仅 1.12.2） | 停更，红票 100%（仅 1 票） | 前置 TC6 + OpenComputers（包内均有 ✓） | 协议未明 + 小众样本少 | 收录（风险标注：协议需确认） |
| 30 | Thaumic Energistics | 科技（TC6×AE2 源质管理） | 科技 | MIT（GitHub 确认，Nividica） | ✅ | 停更（最后 2022-08，v2.2.5），红票 89% | **与第 3001 行 "Thaumic Energistics Extended Life" 同一 modid，不可共存，必须二选一** | 停更；与 UEL 冲突 | 二选一（建议排除原版、保留 UEL：UEL 活跃且适配 AE2UEL） |
| 31 | Thaumic Energistics Extended Life | 科技（TC6×AE2 源质管理） | 科技 | MIT（GitHub 确认，Delfayne 分支） | ✅（仅 1.12.2） | 活跃（2026-07 仍提交），红票 100%（4 票） | 与第 3000 行原版重复，二选一；前置 AE2UEL ✓（包内已有） | 低 | 收录（推荐保留此条） |
| 32 | Thaumic Information | 魔法/信息显示+优化 | 魔法 | MIT（GitHub 确认，Roidrole） | ✅（仅 1.12.2） | 活跃（2026-07 仍提交）；2026 年新收录，样本极少（浏览 768） | 简介明示"包含 Thaumic JEI 的所有功能"→ **与 Thaumic JEI 功能重复，二选一**；前置 TC6+ThaumicAPI+ConfigAnytime+MixinBooter（包内均有 ✓） | 新模组未经验证 + 与 Thaumic JEI 重叠 | 收录（风险标注：与 Thaumic JEI 二选一） |
| 33 | Thaumic JEI | 魔法（JEI 整合） | 魔法 | MIT（批量） | ✅ | 稳定 | 与 Thaumic Information 功能重叠（后者包含其全部功能） | 低（二选一保留其一即可） | 收录 |
| 34 | Thaumic Speedup | 辅助优化（TC6 加载加速） | 魔法 | 开源（mcmod 标注，国创 Rongmario），协议未明 | ✅（仅 1.12.2） | 停更，红票 86% | 前置 TC6 + MixinBooter（3.0+ 还需 Persistency，需确认包内是否安装）；与 Thaumic Information 优化功能部分重叠（TI 简介建议优先用本模组） | 停更 + 有崩溃/缓存注意项（jar 文件名须英文、装新模组后需重建缓存） | 收录（风险标注：注意前置 Persistency 与缓存维护） |
| 35 | Thaumic Tinkerer | 魔法（经典大型附属） | 魔法 | CC-BY-SA-4.0（批量） | ✅ | 1.12.2 版稳定 | 前置 TC6 | 低（CC-BY-SA 需署名共享） | 收录 |
| 36 | Thaumic Wonders | 魔法（大型附属） | 魔法 | MIT（GitHub 确认，daedalus4096） | ✅（仅 1.12.2） | 停更，红票 100%（8 票），稳定性评价 50% | 前置 TC6 | 低（存在非官方续作 "ThaumicWonders Unofficial" 可作备选） | 收录 |
| 37 | ThaumicAPI | 前置库（TC6 附属 API，Invadermonky） | 魔法 | LGPL-2.1（GitHub 确认） | ✅（仅 1.12.2） | 活跃（2026-07 仍提交） | 被 Thaumic Information 等依赖（包内必须）；前置 MixinBooter + TC6 | 低 | 收录（修正分类：魔法→前置库） |

## 统计

- 共核查：37 行（含 3 组跨行重复条目：TConstruct↔Tinkers' Construct、TESLA↔Tesla、Thaumic Energistics↔Thaumic Energistics Extended Life）
- 直接收录：22 条
- 收录但需风险标注：12 条（SM Config Lib、SM Core Lib、TATW、TS2K16、TT20、Techguns、Teddy Totems、Thaumcraft、Thaumic Additions: Reconstructed、Thaumic Computers、Thaumic Information、Thaumic Speedup）
- 二选一（须去重，不影响收录）：1 行（Thaumic Energistics 原版 vs UEL，建议保留 UEL）+ 2 组文件名级重复（TConstruct/Tinkers' Construct、TESLA/Tesla）
- 建议排除：2 条（TCT Core——闭源 ARR、黑票 60%、包内无依赖方；Thaumic Additions 原版条目——无 1.12.2 版本且与 Reconstructed 重复）
- 分类错误需修正：9 条（SM Core Lib、TCT Core、Tesla Core Lib、TerraFirmaCraft、Tears & Cheers、TellMe、TATW、TOP Addons、ThaumicAPI 等，详见各行"正确分类"列）
- 许可证禁止再分发（ARR/闭源无证）：9 条（SM Config Lib、SM Core Lib、TATW、TS2K16、Techguns、Teddy Totems、Thaumcraft、Thaumic Additions: Reconstructed、TCT Core），发布时均需确认作者许可或注明出处；TT20 另受 PolyForm Shield 非商用限制
