# 模组合规核查 batch-08（modlist.md 第 979-1123 行，共 49 条）

核查日期：2026-07-31
方法：modrinth-results.tsv 批量结果为主；NO_HIT / All-Rights-Reserved / ERR 条目经 MC百科(mcmod.cn)、Modrinth API、GitHub API(git license)、CurseForge 页面交叉核实。MC百科红/黑票为社区口碑参考。

| # | 模组 | 正确分类 | 当前分类 | 许可证 | 1.12.2 | 开发状态 | 冲突/重复 | 风险 | 结论 |
|---|------|----------|----------|--------|--------|----------|-----------|------|------|
| 1 | Durability Tooltip (L979) | 辅助优化 | 辅助优化 | All-Rights-Reserved（批量；mcmod 7033 确认） | ✓ | 维护中：百科最后推荐 1 年前、无更新日志，功能简单稳定 | 无 | ARR，禁止再分发 | 收录（风险） |
| 2 | Dynamic Dynamos (L983) | 辅助优化（客户端视觉动画） | 未分类 | MIT（GitHub exaskye/DynamicDynamos；批量标题错配但许可一致） | ✓ | 停更（2017 年后无更新，百科最后推荐 3 年前） | 需装热力膨胀 5 才有意义；纯客户端 | 无 | 收录 |
| 3 | Dynamic Surroundings (L984) | 辅助优化（环境音效/氛围） | 未分类 | MIT（GitHub OreCruncher/DynamicSurroundings 证实；批量标题错配） | ✓ | 停更（2021-10 停止推送，1.12.2 为最终版） | 无 | 无 | 收录 |
| 4 | Dynamic View (L988) | 辅助优化 | 辅助优化 | GPL-3.0（现项目由 someaddon 接管，CurseForge 注明 GPLv3；1.12.2 旧版许可未明示） | 待确认（mcmod 2989 仅列 Forge 1.16.3+；1.12.2 旧版为 CurseForge 时代构建） | 项目活跃（2026-05 更新） | 与 #5 为同一项目前后代，二选一 | 1.12.2 旧版下载链接已并入新项目，构建存在性未能 100% 确认 | 风险 |
| 5 | Dynamic View and Simulation Distances (L989) | 辅助优化 | 辅助优化 | GPL-3.0（CurseForge 页面注明） | ✗（当前版本 1.20+/26.x，无 1.12.2 构建） | 活跃（26.9M 下载，2026-05 更新） | 与 #4 同项目，二选一 | 与 1.12.2 包不兼容 | 排除 |
| 6 | Dynamistics (L993) | 辅助优化（JEI 客户端附加） | 未分类 | MIT（GitHub eutro/dynamistics） | ✓（1.12.2 时代产物） | 停更（2022 年后无提交） | AE2/PackagedAuto 的 JEI 客户端附加，与 AE2UEL 兼容性待实测 | 无 | 收录 |
| 7 | EBlib (L997) | 前置库 | 前置库 | 未知（无开源仓库、无许可声明） | ✓（Forge 1.12.2） | 停更（收录 7 年前，2红0黑，流量极低） | 新版女仆 Mod 前置库；包内需确认含对应女仆模组，否则无用 | 许可未知 | 收录（风险） |
| 8 | Ears (L1001) | 装饰（玩家模型） | 装饰 | MIT（批量 + GitHub unascribed/Ears 证实） | ✓（v1.4.7+forge-1.12） | 活跃（2026-07 仍在推送） | 无 | 无 | 收录 |
| 9 | EasyLAN (L1005) | 辅助优化（局域网联机工具） | 未分类 | GPL-3.0-or-later（批量；GitHub XiaoXianHW/EasyLAN） | ✓（v1.2/1.5/1.6a 均支持） | 活跃（v1.6a 2026-05） | 无 | 无 | 收录 |
| 10 | ElecCore (L1009) | 前置库 | 世界生成 | LGPL-2.1（GitHub Elecs-Mods/ElecCore，LICENSE 文件证实） | ✓ | 维护中（2023-09 推送） | 巫术学(Electroblob's Wizardry)前置库 | 分类错误 | 收录 |
| 11 | Electroblob's Wizardry (L1013) | 魔法 | 科技 | 自定义（GitHub 自定义许可：源码可改、重分发需询问；整合包使用无碍。批量 ARR 系标题错配到"Wizardry Magic Rune"） | ✓（Forge 1.7.10-1.12.2） | 维护中（WinDanesz 维护，红151黑6，40 个整合包使用，人气极高） | 无 | 自定义许可条款需留存 | 收录（风险） |
| 12 | ElevatorMod (L1017) | 装饰（功能性方块） | 未分类 | MIT（批量） | ✓（经典 1.12.2 模组） | 停更（老牌稳定模组） | 无 | 无 | 收录 |
| 13 | EmberRoot Zoo (L1021) | 前置库（生物库） | 魔法 | MIT（GitHub Lothrazar/EmberRootZoo） | ✓（仅 1.12.2） | 停更（2017-12 后无提交） | 与余烬复刻版(#14)的太古魔像、根源魔法的生物重复（mcmod 明示），需配置关闭生成 | 生物重复、废弃库 | 收录（风险） |
| 14 | EmbersRekindled-1.13-hotfix2 (L1022) | 魔法 | 魔法 | MIT（GitHub DaedalusGame/EmbersRekindled） | ✓（1.13-hotfix2 为 1.12.2 构建文件） | 活跃（红21黑5，22 个整合包使用，2024 仍有推送，BordListian/RCXcrafter 接手） | 与 #13 EmberRootZoo 生物重复 | 无 | 收录 |
| 15 | Emojiful (L1026) | 辅助优化（聊天表情） | 未分类 | MIT（批量） | ✓（emojiful-1.0.3，2023-08） | 维护中 | 无 | 无 | 收录 |
| 16 | Enchantment Descriptions (L1030) | 辅助优化 | 辅助优化 | LGPL-2.1-only（批量） | ✓ | 停更（Darkhax 1.12.2 版本稳定） | 无 | 无 | 收录 |
| 17 | Enchantment Level Language Patch (L1031) | 辅助优化 | 辅助优化 | WTFPL（批量） | ✗（Forge 最低 1.13/1.14，Modrinth 最早版本 1.16） | 活跃 | 无 | 与 1.12.2 包不兼容 | 排除 |
| 18 | Ender Core CEu (L1035) | 前置库 | 世界生成 | 未知（未开源；推断继承原版 EnderCore 的 CC0） | ✓（仅 1.12.2） | 新（2026-05 收录，EnderIO CEu 前置，活跃） | 与 #26 EnderCore 同体二选一；是 #28 EnderIO CEu 的前置 | 许可未明示 | 收录（风险） |
| 19 | Ender IO (L1039) | 科技 | 科技 | Unlicense（批量；Modrinth "enderio" 项目证实，Team-EnderIO/Rover656） | ✓ | 维护中（LTS 延续） | 与 #27 EnderIO 重复行；与 #28 EnderIO CEu 为不同分叉二选一 | 分叉不可同装 | 收录（去重） |
| 20 | Ender IO Endergy (L1040) | 科技 | 科技 | Unlicense（批量） | ✓ | 维护中 | 与 #29 EnderIO-endergy 重复行；需匹配所装 EnderIO 分支版本 | 与 CEu 分支混用有风险 | 收录（风险） |
| 21 | Ender Modpack Tweaks (L1044) | 辅助优化 | 辅助优化 | MIT（批量；mcmod 26530 证实与 #25 同一项目） | ✓（仅 1.12.2） | 新（2026-04 收录，Ender-Development 团队，活跃） | 与 #25 Ender's Modpack Tweaks 重复行 | 无 | 收录（去重） |
| 22 | Ender Storage (L1048) | 科技 | 科技 | MIT（批量） | ✓ | 维护中（1.12.2 稳定经典） | 与末影箱功能类模组部分重叠（无硬冲突） | 无 | 收录 |
| 23 | Ender Tweaker (L1052) | 前置库（整合包脚本工具） | 辅助优化 | MIT（GitHub Shadows-of-Fire/EnderTweaker 证实；批量标题错配） | ✓ | 停更（2021-09 后无提交） | 与 #30 EnderTweaker 重复行 | 无 | 收录（去重） |
| 24 | Ender Utilities (L1056) | 工具（实用功能集合） | 未分类 | LGPL-3.0-only（批量） | ✓ | 维护中（GabrielOlvH） | 无 | 无 | 收录 |
| 25 | Ender's Modpack Tweaks (L1060) | 辅助优化 | 辅助优化 | MIT（批量，标题精确匹配） | ✓ | 新（2026，活跃） | 与 #21 重复行（mcmod 26530 同一条目） | 无 | 收录（去重） |
| 26 | EnderCore (L1064) | 前置库 | 前置库 | CC0-1.0（批量） | ✓ | 维护中 | 与 #18 Ender Core CEu 二选一（同体） | 无 | 收录（去重） |
| 27 | EnderIO (L1068) | 科技 | 科技 | Unlicense（批量） | ✓ | 维护中 | 与 #19 Ender IO 重复行 | 无 | 收录（去重） |
| 28 | EnderIO CEu (L1069) | 科技 | 科技 | MIT（GitHub TeamDimensional/EnderIO-CEu 证实） | ✓（仅 1.12.2） | 活跃（2026-07 推送；1.12.2 LTS 分叉，含 AE2/Mekanism/OC/RS 导管优化） | 与 #19/#27 EnderIO 二选一（不可同装）；与官方分叉不兼容 | 无（分叉冲突已标注） | 收录 |
| 29 | EnderIO-endergy (L1070) | 科技 | 科技 | Unlicense（批量） | ✓ | 维护中 | 与 #20 重复行 | 混用 CEu 分支风险 | 收录（去重） |
| 30 | EnderTweaker (L1074) | 前置库（整合包脚本工具） | 辅助优化 | MIT（GitHub 证实） | ✓ | 停更（2021） | 与 #23 重复行 | 无 | 收录（去重） |
| 31 | EndermanEvolution (L1078) | 生物/冒险 | 未分类 | MIT（GitHub p455w0rd/EndermanEvolution） | ✓ | 停更（2023-01 最后推送） | 无 | 无 | 收录 |
| 32 | Endorium (Forge) (L1079) | 维度探索（末地拓展） | 未分类 | 未知（源码公开但无 LICENSE 文件，Immodernist/Endorium） | ✓（1.12.2 在列） | 活跃（红17黑2，1.21 仍在更新） | 与包内其他末地改造模组（Fancy End、Stygian End 等）功能重叠 | 许可未知 | 收录（风险） |
| 33 | EnergeticSheep (L1080) | 生物 | 未分类 | MIT（GitHub CyclopsMC/EnergeticSheep） | ✓（master-1.12 分支） | 维护中（2026-07 推送） | 无 | 无 | 收录 |
| 34 | Engineer's Decor (L1084) | 装饰 | 装饰 | 未知（作者 wilechaote 已撤 GitHub，仅 CurseForge） | ✓（1.12.2-1.19.3） | 停更（最后推荐 2 年前；红7黑0，69 个整合包使用） | 沉浸工程拓展（可独立运行，部分机器需能量） | 许可未知 | 收录（风险） |
| 35 | Engineer's Doors (L1085) | 装饰 | 装饰 | 未知（无开源仓库） | ✓（仅 1.12.2） | 停更（最后编辑 4 年前，最后推荐 2 年前；红4黑0） | 必须安装沉浸工程 | 许可未知 | 收录（风险） |
| 36 | Enhanced Audio (Sound Pack) (L1089) | 资源包（非模组） | 辅助优化 | All-Rights-Reserved（批量；Modrinth 资源包页确认） | N/A（资源包，适用新版/1.12.2 需实测） | 维护中（Modrinth 有活跃页） | 无 | 非模组：应放入 resourcepacks 而非 mods；ARR | 收录（风险/注意） |
| 37 | Enhanced P2P (L1093) | 科技（AE2 附加） | 未分类 | 未知（仅 CurseForge，无开源仓库） | ✓（CurseForge 页面注明 1.12.2 Forge） | 停更（2023-10 最后更新；71.7 万下载） | Better P2P 的改进分叉；AE2 附加，与 AE2UEL 兼容性待实测 | 许可未知 | 收录（风险） |
| 38 | Enigmatica 2: Expert - E2E (L1094) | 非模组（整合包） | 未分类 | NOASSERTION（整合包脚本仓库 EnigmaticaModpacks/Enigmatica2Expert） | — | — | 整合包成品不能作为模组文件装入 | 建议移除 | 排除 |
| 39 | Entangled (L1098) | 科技 | 科技 | All-Rights-Reserved（批量；GitHub SuperMartijn642/Entangled 无 LICENSE 文件） | ✓（1.3.21-forge-mc1.12） | 活跃（2026-07 推送） | 无 | ARR | 收录（风险） |
| 40 | Entity Culling (L1102) | 辅助优化 | 辅助优化 | tr7zw 保护性许可（批量） | ✓（1.6.3-1.12.2 回移植，2024-03） | 活跃 | 无 | 保护性许可条款（禁止反编译/需授权修改） | 收录 |
| 41 | Entity NaN Health Fix (L1103) | 辅助优化 | 辅助优化 | 未知（仅 CurseForge，Animefan8888，64.7 万下载） | ✓（仅 1.12.2） | 停更（2018-09 后，修复类小模组功能稳定） | 无 | 许可未知 | 收录（风险） |
| 42 | Environmental Materials (L1107) | 装饰 | 科技 | All-Rights-Reserved（批量） | ✓（1.12-1.20.2） | 维护中（最后编辑 9 月前；红1黑0） | 环境科技扩展，前置=环境科技 | ARR | 收录（风险） |
| 43 | Environmental Tech (L1108) | 科技 | 科技 | All-Rights-Reserved（批量；社区有 GPL-3.0 分支 TMM-Corporation/EnvironmentalTech） | ✓（1.9.4-1.16.5） | 维护中（红37黑1，65 个整合包使用，最后推荐 3 月前） | 无 | ARR；GPL 分支与本体重合需甄别 | 收录（风险） |
| 44 | Epic Fight (L1112) | 工具武器 | 工具武器 | GPL-3.0-or-later（批量） | ✗（Modrinth 无 1.12.2 版本，官方为 1.16.5+） | 活跃（但针对新版本） | 无 | 与 1.12.2 包不兼容 | 排除 |
| 45 | Epic Knights: Shields Armor and Weapons (L1113) | 工具武器 | 工具武器 | All-Rights-Reserved（批量） | ✗（Modrinth 无 1.12.2 版本，官方为 1.16.5+） | 活跃（针对新版本） | 无 | 与 1.12.2 包不兼容；ARR | 排除 |
| 46 | EpicSiegeMod-13.167 (L1117) | 怪物 AI/围攻 | 未分类 | MIT（GitHub NoxArs/EpicSiegeMod） | ✓（13.x 为 1.12.2 构建） | 维护中（NoxArs 接手，2026-02 推送） | 深度修改怪物 AI/生成逻辑，需与包内 AI/刷怪调节类（Bad Mobs、In Control 等）调校，注意配置 | 无 | 收录 |
| 47 | Equipment Compare (L1118) | 辅助优化 | 未分类 | CC-BY-NC-ND-4.0（批量） | ✓（经典 1.12.2 模组） | 停更（稳定） | 无 | NC-ND：禁改禁商用 | 收录 |
| 48 | Equivalent Integrations (L1122) | 魔法（ProjectE 附加） | 魔法 | 无标准许可（GitHub pkmnfrk/equivalentintegrations NOASSERTION，无 LICENSE 文件） | ✓ | 停更（2019-05 后无提交） | 与 #49 重复行；前置 ProjectE；功能与 ProjectE 自身联动需测试 | 许可未明示 | 收录（风险） |
| 49 | EquivalentIntegrations-0.4.6 (L1123) | 魔法（ProjectE 附加） | 魔法 | 同上（0.4.6 为同一模组版本化文件名） | ✓ | 停更 | 与 #48 重复行 | 同上 | 收录（去重） |

---

## 统计

**收录 44 / 风险 17 / 排除 5 / 分类错误 14**

补充说明：
- 排除（5）：#5 Dynamic View and Simulation Distances（无 1.12.2）、#17 Enchantment Level Language Patch（最低 1.13/1.14）、#38 Enigmatica 2: Expert - E2E（整合包非模组）、#44 Epic Fight（无 1.12.2）、#45 Epic Knights（无 1.12.2）。
- 重复行需去重（12 行→6 组）：Ender IO/EnderIO（#19/#27）、Endergy 两行（#20/#29）、Ender Tweaker 两行（#23/#30）、Ender Modpack Tweaks 两行（#21/#25）、EquivalentIntegrations 两行（#48/#49）、Dynamic View 前后代（#4/#5，其中 #5 已排除）。
- 二选一冲突（2 组）：EnderIO 官方分叉 ↔ EnderIO CEu（#19/#27 ↔ #28，CEu 为 TeamDimensional LTS 分叉，建议保留 CEu + Ender Core CEu，删官方行）；EnderCore ↔ Ender Core CEu（#26 ↔ #18）。
- 生物重复（1 组）：EmberRootZoo ↔ 余烬复刻版（#13 ↔ #14，太古魔像等重复实体，可配置关闭）。
- 末地改造重叠（1 组）：Endorium（#32）与包内 Fancy End/Stygian End 功能重叠，建议三选一。
- 特别提示：#36 Enhanced Audio 是资源包非模组，需放入 resourcepacks 目录；#38 E2E 应移除；#7 EBlib 若无对应女仆模组则为无效前置。
- 特重大人气模组：#11 巫术学（红151黑6）与 #43 环境科技（红37黑1）均为 1.12.2 生态核心，建议保留。
