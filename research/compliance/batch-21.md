# 批量核查 21（modlist.md 2642-2775 行，48 个模组）

核查方法：优先使用 modrinth-results.tsv 批量结果（名称精确匹配直接采用其许可证，并经 Modrinth API `versions:1.12.2` 分面复核版本）；NO_HIT / ARR / 模糊错配的模组通过 mcmod 详情页与 GitHub API（gh api）补查。数据截至 2026-07-31。

| # | 模组 | 正确分类 | 当前分类 | 许可证 | 1.12.2 | 开发状态 | 冲突/重复 | 风险 | 结论 |
|---|------|----------|----------|--------|--------|----------|-----------|------|------|
| 1 | Requious Frakto Unofficial | 科技（JSON/脚本自定义单方块机器） | 定制:待定 | MIT（分叉自 MIT 原版） | 有 | 活跃开源；mcmod 2026 年新收录，红黑票各 0 口碑未积累 | 前置 Resource Loader + CraftTweaker（包内均有）；无冲突 | 低（新分支稳定性待实测） | 收录 |
| 2 | Resizing Potion | 冒险/药水（缩小/放大） | 定制:待定 | 开源（未标注具体协议） | 有 | 停更，功能完整 | 前置 ArtemisLib；联动 Baubles | 低 | 收录 |
| 3 | Reskillable | 生存/RPG 技能（技能锁） | 辅助优化（误） | 开源（MIT 系；原 GitHub 仓库已删除，协议未标） | 有 | 停更（2019），成熟稳定，9 个整合包收录 | CompatSkills/Together Forever 等以它为前置；无冲突 | 低 | 收录（改分类） |
| 4 | Resource Loader | 前置库（资源/模型加载） | 辅助优化 | 未标注（GitHub 无 LICENSE，默认 ARR） | 有 | 停更（2018），知名前置，依赖方众多 | 与 #5 同模组二选一；Requious Frakto / 自定义主菜单等前置 | 中（许可未标注） | 收录（风险标注） |
| 5 | ResourceLoader-MC1.12.1-1.5.3 | 同 #4（版本文件名） | 辅助优化 | 同 #4 | 有 | 同 #4 | 与 #4 完全重复 | 中 | 二选一（并入 #4） |
| 6 | Resourcify | 辅助优化（资源包/着色器浏览更新器） | 未分类 | LGPL-3.0-only（Modrinth 批量） | 有（1.5.0~1.6.2） | 整体活跃；1.12.2 线停更于 1.6.2 | 无 | 低 | 收录 |
| 7 | Responsive Shields | 工具武器 | 工具武器 | MIT（Modrinth 批量） | 有 | 维护缓慢（2025 仍有更新） | 无 | 低 | 收录 |
| 8 | Restricted Portals | 冒险/维度（传送门进入限制） | 未分类 | 未标注（GitHub 无 LICENSE，默认 ARR） | 有 | 活跃（作者持续更新多版本） | 无 | 中（许可未标注） | 收录（风险标注） |
| 9 | Revolt of the Mobs | 生物（武装生物） | 生物 | 作者明确允许整合包收录（转载须注明 CurseForge 原帖） | **无（仅 1.19.4）** | 停更；半成品（仅牛、马两等级） | 与 SRP 等敌对生物模组可共存 | 高（版本不符，包为 1.12.2） | **建议排除（无 1.12.2 版本）** |
| 10 | Rex's Additional Structures | 世界生成（约 155 个小建筑） | 维度探索 | 未标注（未找到 LICENSE，默认 ARR） | 有 | 半弃坑（作者重心转新版本） | 与 Ruins/Roguelike Dungeons 结构生成重叠（非互斥） | 中 | 收录（风险标注） |
| 11 | Roguelike Dungeons | 世界生成/冒险（地下城） | 维度探索 | GPL-3.0（GitHub 确认） | 有（1.8.0） | 停更（1.12.2 最终版），口碑好 | 与 #10/#15 结构类重叠（非互斥） | 低 | 收录 |
| 12 | Roid's Tweaker | 前置库/魔改（CraftTweaker 附属，合并多个失效附属） | 辅助优化 | 开源（未标注具体） | 有 | 活跃开源 | 前置 MixinBooter/ConfigAnytime/CraftTweaker（包内均有）；与包内其他 CrT 附属功能面重叠但为替代关系 | 低 | 收录 |
| 13 | Roots | 魔法（自然/植物系，1.12.2 为 Roots 3） | 魔法 | 开源（mcmod 活跃开源） | 有 | 活跃开源 | 无 | 低 | 收录 |
| 14 | Roughly Enough IDs | 前置库/开发工具（字符串 ID） | 未分类 | MIT（Modrinth 批量） | 有 | 维护中（TFCF 分支） | 无 | 低 | 收录 |
| 15 | Ruins | 世界生成（自定义遗迹模板） | 维度探索 | 开源（mcmod 活跃开源） | 有 | 活跃 | 与 #16 同模组二选一；与 #10/#11 结构重叠（非互斥） | 低 | 收录 |
| 16 | Ruins (Structure Spawning System) | 同 #15（原子stryker 同款） | 维度探索 | 同 #15 | 有 | 同 #15 | 与 #15 完全重复 | 低 | 二选一（并入 #15） |
| 17 | Rustic | 魔法/农业（乡村生活） | 魔法 | MIT（Modrinth 批量） | 有（1.1.7） | 停更（2019），口碑好 | #18/#19 的前置 | 低 | 收录 |
| 18 | Rustic BOP Woods | 装饰（BOP 木材家具联动） | 魔法（误） | 开源（mcmod 停更开源） | 有 | 停更 | 需 Rustic + BOP（包内均有） | 低 | 收录（改分类装饰） |
| 19 | Rustic Thaumaturgy | 魔法（神秘时代 6 × Rustic 联动） | 魔法 | MIT（GitHub Sunconure11/RusticThaumaturgy 确认） | 有 | 停更 | 需 Thaumcraft 6 + Rustic（包内均有） | 低 | 收录 |
| 20 | STONEBORN UI Overhaul | 辅助优化（UI 界面） | 未分类 | ARR（Modrinth 批量） | 有 | 活跃（随 STONEBORN 包维护） | 无 | 高（禁止再分发） | 风险标注（仅私用/需获授权） |
| 21 | Sakura | 装饰（和风建筑家具） | 装饰 | ARR（Modrinth 批量） | 有 | 停更 | 无 | 高（ARR，禁止再分发未豁免） | 风险标注（民间包普遍收录，正式发布需作者授权） |
| 22 | Save My Stronghold | 世界生成（要塞防破坏） | 未分类 | LGPL-3.0（GitHub YUNG-GANG 确认） | 有 | 停更开源 | 与 YUNG's Better Caves/Mineshafts 联动（1.12.2 版存在） | 低 | 收录 |
| 23 | Scalar Legacy | 前置库（Scala 运行时，Cleanroom 生态） | 未分类 | LGPL-2.1（CleanroomMC/Scalar 确认） | 有 | 活跃开源（国创） | 3.x 依赖 Cleanroom（包内有 Cleanroom Relauncher）；2.11.1 适用于普通 Forge | 低 | 收录 |
| 24 | Scaling Health | 冒险/难度（怪物强度随进度增长） | 未分类 | MIT（Modrinth 批量） | 有 | 1.12.2 线停更 | 无 | 低 | 收录 |
| 25 | ScalingGUIs | 辅助优化（GUI 缩放） | 未分类 | MIT（Modrinth 批量） | 有 | 维护缓慢（2024 更新） | 无 | 低 | 收录 |
| 26 | Scannable | 工具武器（方块/实体扫描仪） | 未分类 | MIT（GitHub MightyPirates/Scannable 许可文本确认） | 有 | 停更开源 | 无 | 低 | 收录 |
| 27 | Scape and Run: Parasites | 生物（寄生生物） | 生物 | ARR（Modrinth 批量） | 有 | 活跃（1.12.2 持续更新） | 高难度大改模组，与包内生物/维度模组共存需调配置（有暮色联动 SRPT）；与 Revolt of the Mobs 同类但互斥建议只留 SRP | 高（ARR） | 收录（风险标注） |
| 28 | Scavenge | 魔改/玩法（自定义点击行为 + loot） | 世界生成（误） | 闭源（mcmod 活跃闭源） | 有 | 活跃闭源 | 与 JEI 联动；无冲突 | 高（闭源，禁止再分发未豁免） | 风险标注（私用可，发布需作者许可） |
| 29 | Schematica | 建筑工具（原理图） | 未分类 | MIT（GitHub Lunatrius/Schematica 确认） | 有 | 停更（1.12.2 最终版，社区有补丁版） | 包内无 Litematica → 无直接重复 | 低 | 收录 |
| 30 | Screenshot Viewer | 辅助优化（截图查看） | 辅助优化 | MIT（Modrinth 批量） | 有 | 维护缓慢（2026 更新） | 与 #31 功能邻近但不重复（查看 vs 复制） | 低 | 收录 |
| 31 | Screenshot to Clipboard | 辅助优化（截图复制到剪贴板） | 辅助优化 | MIT（Modrinth 批量） | 有 | 维护缓慢（2024 更新） | 与 #30 不重复 | 低 | 收录 |
| 32 | Search on MCMOD | 辅助优化（mcmod 内搜索，国创） | 辅助优化 | MIT（Modrinth 批量） | 有 | 维护中（2026 更新） | 无 | 低 | 收录 |
| 33 | SecurityCraft | 科技（安全装置/红石） | 科技 | MIT（Modrinth 批量） | 有 | 活跃（长期持续支持 1.12.2） | 无 | 低 | 收录 |
| 34 | Serene Seasons | 农业（四季） | 农业 | ARR（Modrinth 批量 + GitHub Glitchfiend/SereneSeasons LICENSE 明确 "All rights reserved."） | 有 | 1.12.2 线停更（后续版本活跃） | #35 前置；与其他季节/温度类模组共存注意 | 高（ARR） | 风险标注（包内使用需注意分发条款） |
| 35 | Serene Tweaks | 农业（修复冬季区块冰雪断层） | 农业 | 开源（mcmod 停更开源） | 有 | 停更 | 前置 Serene Seasons（包内有） | 低 | 收录 |
| 36 | SerializationIsBad | 前置库/安全修复（NBT 序列化漏洞封堵） | 未分类 | MIT（Modrinth 批量） | 有 | 停更 | 无 | 低 | 收录 |
| 37 | Server Tab Info | 辅助优化（TAB 显示延迟/TPS） | 未分类 | 开源（mcmod 停更开源） | 有 | 停更 | 客户端与服务端需同装 | 低 | 收录 |
| 38 | Server.Properties for LAN | 辅助优化（局域网联机端口/离线模式） | 未分类 | 未标注（GitHub 无 LICENSE，默认 ARR） | 有 | 停更，口碑好（mcmod 110 万浏览） | 与 Lan ServerProperties 功能重复（若同装需二选一） | 中 | 收录（风险标注） |
| 39 | ServerObserver | 辅助优化（服务器状态监控） | 未分类 | MIT（GitHub Team-Fruit/ServerObserver 确认） | 有（仓库含 1.12.2 目录） | 维护缓慢 | 无 | 低 | 收录 |
| 40 | Shadowfacts' Forgelin | 前置库（Kotlin） | 前置库 | LGPL-3.0（GitHub shadowfacts/Forgelin LICENSE 确认） | 有（1.8.4） | 停更（Shadowfacts 弃坑，稳定） | 与包内 Forgelin-1.8.4（L1321）/GTNH's Forgelin（L1356）/Forgelin-Continuous（L1322）为同一库不同变体 → 只保留一个 | 低 | 收录（与包内其他 Forgelin 变体二选一） |
| 41 | Shoulder Surfing | 辅助优化（第三人称视角） | 未分类 | MIT（批量结果匹配 Reloaded） | 原版（Shyroza）仅到 1.8 时代；1.12.2 以 Reloaded 为准 | 原版停更 | 与 #42 完全重复 | 低 | 二选一（并入 #42） |
| 42 | Shoulder Surfing Reloaded | 辅助优化（第三人称视角） | 未分类 | MIT（Modrinth 批量） | 有 | 停更 | 与 #41 重复 | 低 | 收录（保留 Reloaded） |
| 43 | Shut Up, Model Loader! | 辅助优化（抑制模型加载日志刷屏） | 辅助优化 | MIT（含 "for Good, not Evil" 条款，GitHub phantamanta44 确认） | 有 | 停更（2019），功能简单可靠 | 无 | 低 | 收录 |
| 44 | SideShieldTexturePack | 装饰/资源（盾牌侧面纹理） | 工具武器 | MIT（Modrinth 批量） | 有 | 维护中（2026 更新） | 无 | 低 | 收录（改分类装饰/资源） |
| 45 | SignPicture | 装饰（告示牌贴图） | 装饰 | 开源（mcmod 停更开源） | 有 | 停更 | 社区反馈已知问题：1.12.2 线上图片加载失败（MaxRetryCountOver）、本地图片多数无效 | 中 | 收录（风险标注） |
| 46 | Silent Gear | 工具武器（工具/材料强化） | 科技 | MIT（Modrinth 批量） | 有 | 1.12.2 线停更（作者转新版本） | 与 TConstruct 工具功能部分重叠（非互斥）；依赖 #47 Silent Lib | 低 | 收录（改分类工具武器） |
| 47 | Silent Lib | 前置库 | 前置库 | MIT（Modrinth 批量） | 有（3.0.14） | 1.12.2 线停更 | 与 #48 重复二选一；Silent Gear 前置 | 低 | 收录 |
| 48 | Silent Lib (silentlib) | 前置库 | 前置库 | MIT（Modrinth 批量） | 有 | 同上 | 与 #47 完全重复 | 低 | 二选一（并入 #47） |

## 统计

- 共核查：48 行
- 收录（含改分类）：32 个
- 收录但风险标注：10 个（#4 Resource Loader、#8 Restricted Portals、#10 Rex's Additional Structures、#20 STONEBORN UI Overhaul、#21 Sakura、#27 SRP、#28 Scavenge、#34 Serene Seasons、#38 Server.Properties for LAN、#45 SignPicture）
- 建议排除：1 个（#9 Revolt of the Mobs —— 无 1.12.2 版本，仅 1.19.4，且半成品）
- 包内重复需二选一：5 组 —— Resource Loader×2（#4/#5）、Ruins×2（#15/#16）、Shoulder Surfing×2（#41/#42，保留 Reloaded）、Silent Lib×2（#47/#48）、Forgelin 家族四变体（#40 与 L1321/L1322/L1356 只留其一）
- 分类错误需修正：Reskillable（辅助优化→生存/技能）、Scavenge（世界生成→魔改）、Rustic BOP Woods（魔法→装饰）、SideShieldTexturePack（工具武器→装饰/资源）、Silent Gear（科技→工具武器）、Rex's AS/Roguelike/Ruins（维度探索→世界生成）
- 关键冲突核查：与星系 Galacticraft、AE2UEL、暮色、神秘时代均无硬冲突；Rustic Thaumaturgy 依赖神秘时代 6、SRP 有暮色联动 SRPT（配置兼容）；结构类三件套（Rex/Roguelike/Ruins）与包内其他结构模组仅软重叠。
