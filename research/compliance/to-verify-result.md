# 专项身份核对结果：8 个"无法核实"模组

> 核对时间：2026-07-31。方法：e2ee-MODS.md / po3-mods.txt 中的 CurseForge slug 线索直连 CF 详情页（WebFetch 成功渲染，非 Cloudflare 拦截）+ GitHub API 仓库/许可核验 + mcmod.cn 站内搜索兜底。每模组最多 2 次尝试。
>
> **总结果：8/8 全部确认收录（真实模组 + 1.12.2 支持 + 许可明确），无一排除。** 此前的"无法核实"是因为这些条目来自 E2EE/PO3 的 modlist 合并且多为冷门小模组，按名称搜索 CF/mcmod 均无命中——而 e2ee-MODS.md 中实际带有 CF slug（advanced-smelter / findmeanydurability / finite-gas / forked-proxy / nuclearcraft-reactor-builder）与 jar 文件名，可精确定位。

---

## 1. Advanced Alchemical Furnace — 确认收录（风险标注：ARR）

- 查询过程：mcmod 站内搜"高级炼金炉"系无独立模组命中；e2ee-MODS.md 线索 CF slug `advanced-smelter`，直连详情页成功。
- 真实名：Advanced Alchemical Furnace（主文件 jar 名为 Advanced Essentia Smelter-1.2.0，页面显示名与清单条目一致）
- 作者：Handeril（John__Carver 美术、IcarussOne/fakeginkgo 贡献）
- 1.12.2：仅 1.12.2（Forge），2025-01-23 更新，约 15 万下载
- 许可：ARR（All Rights Reserved）——收录须走官方链接分发/联系作者授权
- 功能：Thaumcraft 4 高级炼金炉复刻，多方块快速冶炼炉（100% 效率无污染，需 Void Essentia Smelter 解锁）——TC6 生态附属，包内 Thaumcraft 6 在列，有消费方
- 证据：https://www.curseforge.com/minecraft/mc-mods/advanced-smelter

## 2. AutoInput-1.12.1-3.0.0-universal — 确认收录（风险标注：多人滥用有封禁风险）

- 查询过程：mcmod 仅命中 BetterFurnaces Reforged 的"自动输入升级"物品（非独立模组）；CF 搜索 0 结果、slug `autoinput` 404（从未在 CF 发布）；GitHub 搜索命中 Team-Fruit/AutoInput。
- 真实名：AutoInput（"Ingame Auto Input Mod"，游戏内自动输入/宏工具，支持自动执行输入序列）
- 作者：Team-Fruit（日本模组团队组织）
- 1.12.2：仓库分支 1.10.2 / 1.12.1 / 1.12.1_js / master——1.12.1 分支与 PO3 jar 版本号 AutoInput-1.12.1-3.0.0-universal 完全对应
- 许可：MIT（GitHub LICENSE 实证）
- 风险：README 明确警告——多人模式滥用可能被认定为 spam bot，有 MCBans 全球封禁风险，使用自负；属辅助/宏类，建议整合包内提示或默认禁用
- 证据：https://github.com/Team-Fruit/AutoInput （CF 无发布页，来源即 GitHub 分发）

## 3. Find My Items And Fluids — 确认收录（MIT）

- 查询过程：CF 搜索"Find My Items And Fluids"命中；slug 确认 `findmyitemsandfluids`，详情页直连成功。
- 真实名：FindMyItemsAndFluids
- 作者：hjaeee（FindMyItemsAndFluids Team）
- 1.12.2：仅 1.12.2（主文件 findme-1.12.2-1.0.0.jar），2022-04 更新，34.6 万下载
- 许可：MIT
- 功能：FindMe（源自 Extra Utilities 2 搜索功能）的延续，箱子/机器内物品搜索 + 机器内流体搜索，主要为 GTCEu 开发
- 证据：https://www.curseforge.com/minecraft/mc-mods/findmyitemsandfluids

## 4. FindMeAnyDurability — 确认收录（MIT，注意功能已并入原版）

- 查询过程：e2ee-MODS.md 线索 slug `findmeanydurability`，详情页直连成功。
- 真实名：FindMeAnyDurability
- 作者：exokem
- 1.12.2：仅 1.12.2（findme-1.12.2-1.1.0.jar，2019-08）
- 许可：MIT
- 功能：Buuz135 FindMe 的修改版——搜索不再受物品耐久匹配限制；页面明示 2019-09-03 起该改动已合并回原版 FindMe（历史条目）
- 关联决策：与 #3 FindMyItemsAndFluids 同为 FindMe 系搜索模组，功能家族重叠——FindMyItemsAndFluids 是 FindMe 功能超集 + 流体搜索，二选一倾向保留 #3；包内无原版 FindMe，无三方依赖
- 证据：https://www.curseforge.com/minecraft/mc-mods/findmeanydurability

## 5. Finite Gas — 确认收录（BSD）

- 查询过程：e2ee-MODS.md 线索 slug `finite-gas`，详情页直连成功。
- 真实名：Finite Gas
- 作者：HeatherWhite
- 1.12.2：仅 1.12.2（Finite Gas-1.0.jar）
- 许可：BSD License
- 功能：修复 Advanced Generators（1.12）燃气轮机 Gas Intake Valve 无限复制气体的 bug（上游报 bug 被 wont-fix，故独立修复）——包内 Advanced Generators 在列（master-modlist 27 行），有消费方
- 证据：https://www.curseforge.com/minecraft/mc-mods/finite-gas

## 6. Forked Proxy — 确认收录（MIT）

- 查询过程：e2ee-MODS.md 线索 slug `forked-proxy`，详情页直连成功。
- 真实名：Forked Proxy
- 作者：Srki_2k（GitHub Srdjan-V/ForkedProxy）
- 1.12.2：仅 1.12.2（forkedproxy-2.0.0.jar），13.8 万下载
- 许可：MIT（CF 页面明示；GitHub 仓库同源）
- 功能：Integrated Proxy 的 1.12.2 fork（小重写+bug 修复），Integrated Dynamics 附属——新增单一访问代理方块，可重定向 part 目标位置（相对/绝对模式、XYZ 变量槽）；已知不兼容 redstone writer/light panels/display panel。包内 Integrated Dynamics 在列（master-modlist 481 行），前置齐全
- 证据：https://www.curseforge.com/minecraft/mc-mods/forked-proxy · https://github.com/Srdjan-V/ForkedProxy

## 7. NuclearCraft Reactor Builder — 确认收录（许可标注不一致：CF 页 ARR vs 源码 MIT）

- 查询过程：e2ee-MODS.md 线索 slug `nuclearcraft-reactor-builder`，详情页直连成功；GitHub API 核验源码仓库 LICENSE。
- 真实名：NuclearCraft Reactor Builder
- 作者：sonar_sonic（TheDeadFerryman 成员；源码仓库 thedeadferryman/reactorbuilder）
- 1.12.2：仅 1.12.2（NC-ReactorBuilder-1.12.2-1.1.0a.jar），45.4 万下载，2025-06 仍更新
- 许可：CF 页标 ARR，但 GitHub 源码仓库 LICENSE 文件为 MIT（2025-06-18 最后 push）——以源码为准，标注两处不一致
- 功能：NuclearCraft 自动化反应堆建造机——粘贴 NCPF/JSON 设计自动建造/拆除、熔毁修复、全息预览、3D 渲染预览、可调速度/能量；支持 Underhaul SFR / Overhaul SFR / Overhaul Turbine。包内 NuclearCraft: Overhauled 在列（batch-25 已确认 2239 行），Overhaul 设计兼容
- 证据：https://www.curseforge.com/minecraft/mc-mods/nuclearcraft-reactor-builder · https://github.com/thedeadferryman/reactorbuilder

## 8. Overloaded — 确认收录（许可标注不一致：CF 页 ARR vs 官方源码 BSD-3-Clause）

- 查询过程：po3-mods.txt 含 jar Overloaded-1.12.2-0.0.59.jar；CF slug `overloaded` 详情页直连成功；GitHub 搜索定位官方仓库（cjm721/Overloaded 404 后改用搜索，命中 CJ-MC-Mods/Overloaded）。
- 真实名：Overloaded
- 作者：cjm721（团队 CJ-MC-Mods；成员 mega___byte、sironin、braingkk）
- 1.12.2：是（Overloaded-1.12.2-0.0.59.jar，2020-02-05；另有 1.15.2-1.21.1 现代版本，Forge/NeoForge），全版本累计 1560 万下载
- 许可：CF 页标 ARR，但官方 GitHub 仓库 CJ-MC-Mods/Overloaded LICENSE 为 BSD-3-Clause（2025-06 仍 push）——BSD-3-Clause 允许再分发，以源码为准
- 功能：终局模组——十亿级 RF 发电、物品/流体/RF 存储、跨维度存储传输、免疫护甲（自动进食/飞行/跑速/穿墙）、Rail Gun/雷电召唤等大威力武器、远距多方块工具；配置可调，官方建议整合包调贵配方
- 证据：https://www.curseforge.com/minecraft/mc-mods/overloaded · https://github.com/CJ-MC-Mods/Overloaded

---

## 汇总

| # | 清单条目 | 结论 | 真实名/作者 | 许可 | 备注 |
|---|----------|------|-------------|------|------|
| 1 | Advanced Alchemical Furnace | 确认收录 | Handeril | ARR（风险标注） | TC6 附属，包内有消费方 |
| 2 | AutoInput-1.12.1-3.0.0-universal | 确认收录 | Team-Fruit | MIT | 宏工具，多人封禁风险；CF 无发布页 |
| 3 | Find My Items And Fluids | 确认收录 | hjaeee | MIT | 与 #4 功能家族重叠，建议保留本条目 |
| 4 | FindMeAnyDurability | 确认收录 | exokem | MIT | 改动已并入原版 FindMe；与 #3 二选一 |
| 5 | Finite Gas | 确认收录 | HeatherWhite | BSD | Advanced Generators 修复，包内有前置 |
| 6 | Forked Proxy | 确认收录 | Srki_2k | MIT | Integrated Dynamics 附属，前置齐全 |
| 7 | NuclearCraft Reactor Builder | 确认收录 | sonar_sonic | 源码 MIT（CF 页 ARR 标注不一） | 支持 Overhaul 设计，适配包内 NC Overhauled |
| 8 | Overloaded | 确认收录 | cjm721 | 源码 BSD-3-Clause（CF 页 ARR 标注不一） | 终局模组 |

- 确认排除：无
- 仍无法核实：无
- 需后续处理：① #1 ARR 走官方链接分发；② #2 宏类工具多人封禁风险提示；③ #3/#4 二选一（倾向 #3 FindMyItemsAndFluids，功能超集）；④ #7/#8 许可以源码仓库为准（MIT / BSD-3-Clause），无需授权即可再分发。
