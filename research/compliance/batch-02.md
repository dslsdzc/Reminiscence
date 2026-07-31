# 模组合规核查报告 — Batch-02（modlist.md 第 150-277 行，共 50 条）

> 核查日期：2026-07-31 ｜ 方法：WebSearch（mcmod.cn 优先 / CurseForge 备查）+ WebFetch 详情页复核
> 说明：modlist.md 中存在多个"同模组不同文件名"的重复条目（版本号后缀），已逐条列出并在"冲突/重复"列标注。
> 包核心模组对照：星系 Galacticraft、AE2、暮色森林、神秘时代。

| # | 模组 | 正确分类 | 当前分类 | 许可证 | 1.12.2 | 开发状态 | 冲突/重复 | 风险 | 结论 |
|---|------|---------|---------|--------|-------|---------|-----------|------|------|
| 1 | Ambience（环境音乐，Vazkii 原作） | 辅助优化（音乐/环境音） | 辅助优化 | 未知（社区续作 AmbiencePlus 为 CC BY-NC-SA 3.0） | 有（2017-10 停更于 1.12.2） | 已停更（官方推荐 1.12+ 改用 Ambience: Extras） | 与 mineTunes 不兼容 | 中 | 收录但风险标注（建议换用 Ambience Extras） |
| 2 | Ambient Environment | 辅助优化（客户端视觉，生物群系颜色噪点） | 辅助优化 | MIT | 有（1.0.1） | 完成，长期维护（1.12–1.21 均支持） | 1.12 橡树叶偏暗；与 Better Biome Transitions 不兼容；与 Distant Horizons 远景有接缝 | 低 | 收录 |
| 3 | AmbientSounds | 辅助优化（环境音效） | 辅助优化 | LGPL-3.0 | 有（3.1.5） | 完成，持续维护 | 需前置 CreativeCore；旧版 2.2.2 在 Forge 2712 上崩溃（升 2.3+ 修复） | 低 | 收录 |
| 4 | Ancient Spellcraft | 魔法（Electroblob's Wizardry 附属） | 魔法 | 未知（GitHub 仓库无 LICENSE 文件） | 有（1.12.2-1.7.5） | 活跃（2026-04 仍有 v1.8.2 发布） | 前置链深：EB Wizardry + WizardryUtils + MixinBooter + Baubles（ArtemisLib 可选）；Wizardry 动画与 Armourer's Workshop 冲突（可配置关闭） | 中 | 收录但风险标注（前置较多，需确认包内含 EB Wizardry） |
| 5 | Anger Management | 辅助优化（生物行为微调，猪人/铁傀儡） | 未分类 | 未知（Lothrazar 系，未标注） | 有（1.0.2，2019） | 完成，1.12.2 已停更（后续版本仅到 1.16） | 无已知冲突 | 低 | 收录 |
| 6 | Animus（血魔法附属） | 魔法（Blood Magic 附属） | 未分类 | 未知 | 有（2.1.8，2019） | 停更（1.12.2 线 2019 后无更新，作者转 1.20.1+） | 需前置 Blood Magic；含神秘时代咒波→恶魔意志联动仪式（可选，与神秘时代兼容非冲突） | 中 | 收录但风险标注（依赖包内必须含血魔法） |
| 7 | AnotherTips | 辅助优化（加载页提示） | 未分类 | MIT | 有（1.0.5，2026-02 仍在更新） | 活跃 | 需前置 mixinbooter 10.0+；客户端 mod | 低 | 收录 |
| 8 | Antique Armory | 工具武器（匠魂盔甲续作 fork） | 工具武器 | GPL-3.0（Elite Modding Team） | 有（1.3.0，2026 仍更新） | 活跃维护（非官方续作） | **需 Tinkers' Antique 而非原版 Tinkers' Construct**——若包用原版匠魂则不可用；与本包 #24 Armory Expansion（需 Construct's Armory）生态潜在冲突 | 高 | 收录但风险标注（依赖 Tinkers' Antique，须全包统一匠魂分支） |
| 9 | Anvil Patch（lawful 版） | 辅助优化（铁砧 XP 修复） | 辅助优化 | 未知（未标注） | 有（1.12.2） | 完成，停更 | 与 Ender IO 末影铁砧兼容（未测）；建议用 lawful 版而非 Evil 版（Evil 版无配置） | 低 | 收录 |
| 10 | Apotheosis（神化） | 综合（附魔/刷怪笼/药水/村庄强化） | 未分类 | MIT（GitHub 当前仓库） | 有（1.12.5） | 1.12.2 线停更（后续版本另起炉灶） | 需 Enchantment Descriptions + Patchouli + Placebo；Sharpness 25 级等极端强化严重破坏平衡；无核心模组冲突 | 中 | 收录但风险标注（平衡性注意，与工具武器分类合并整理） |
| 11 | AppleCore | 前置库（食物/饥饿 API） | 世界生成 | LGPL-3.0 | 有（3.4.0） | 完成，1.12.2 线停更 | 与 AppleSkin 同作者共生（HUD 已独立至 AppleSkin）；本文件与 #12 为重复条目 | 低 | 收录（建议删除 #12 重复条目） |
| 12 | AppleCore-mc1.12.2-3.2.0 | 前置库（同 #11） | 世界生成 | LGPL-3.0 | 有 | 同 #11 | 与 #11 为同一模组两个版本，重复 | 低 | 收录（重复条目，二选一） |
| 13 | AppleSkin | 辅助优化（食物 HUD） | 辅助优化 | Unlicense | 有（1.0.14） | 完成，1.12.2 线停更（1.12.2 有已知小 bug，社区 fork LemonSkin 修） | 与 #14 重复条目 | 低 | 收录 |
| 14 | AppleSkin-mc1.12-1.0.9 | 辅助优化（同 #13） | 辅助优化 | Unlicense | 有 | 同 #13 | 与 #13 重复条目 | 低 | 收录（重复条目，二选一） |
| 15 | Applied Energistics 2 | 科技/存储物流 | 科技 | LGPL-3.0（代码）+ MIT（API）+ CC BY-NC-SA（贴图） | 有（rv6-stable-7） | 官方停更，**AE2-UEL 团队持续维护 1.12.2 fork** | 本包核心模组，无冲突；建议采用 AE2UEL 分支以获得修复 | 低 | 收录（建议使用 AE2UEL 延续版） |
| 16 | Aqua Acrobatics | 辅助优化（1.13 游泳/潜行物理） | 未分类 | Unlicense | 有（v1.15.4） | 完成，停更 | 与 Better Sprinting、Idō 不兼容（同机制）；需 MixinBootstrap/MixinBooter；与 #17 重复条目 | 中 | 收录但风险标注（Mixin 系，注意与其他 Mixin 模组共存） |
| 17 | Aqua Acrobatics [Forge] | 辅助优化（同 #16） | 未分类 | Unlicense | 有 | 同 #16 | 与 #16 为同一模组（Forge 版），重复 | 低 | 收录（重复条目，二选一） |
| 18 | ArchitectureCraft - TridentMC Version | 装饰（建筑构件） | 装饰 | MIT | 有（1.12-3.108） | 维护中（TridentMC 续作） | 无已知冲突 | 低 | 收录 |
| 19 | Armor Curve | 辅助优化（护甲递减机制重做） | 工具武器 | 未知 | 有（1.2.9） | 完成，跨版本维护 | 改动全包护甲公式，需与包内平衡联动；与 Armor Points++/Toughness Bar 等展示类无冲突 | 中 | 收录但风险标注（全包机制改动，须测试） |
| 20 | Armor Points ++ | 辅助优化（HUD，护甲 240 点显示） | 工具武器 | MIT | 有（3.1.4） | 活跃 | 与 #21 Armor Toughness Bar 功能重叠（二者选一）；覆盖护甲栏的 mod 可能不兼容 | 低 | 收录（建议与 #21 合并取舍） |
| 21 | Armor Toughness Bar | 辅助优化（HUD，韧性条） | 工具武器 | 未知 | 有（2.0，2019） | 停更 | 与 #20 Armor Points++ 功能重叠；建议搭配 AttributeFix 才能显示 20 以上韧性 | 中 | 收录但风险标注（停更 + 功能重叠，建议只留 #20） |
| 22 | ArmoreableMobs | 辅助优化（CraftTweaker 给生物穿装备） | 工具武器 | 未知 | 有（1.1.8） | 完成，1.12.2 停更 | 需前置 CraftTweaker；SevTech 等整合包用过，无冲突报告 | 低 | 收录 |
| 23 | Armored Arms | 辅助优化（第一人称手持护甲渲染） | 工具武器 | 未知 | 有（v1.3.4，2025 仍更新） | 维护中 | 纯客户端渲染，兼容绝大多数护甲 mod；有黑名单配置 | 低 | 收录 |
| 24 | Armory Expansion（匠魂盔甲扩展） | 工具武器（TiCon 盔甲材料扩展） | 工具武器 | 开源（未标具体协议） | 有（仅 1.12.2） | 停更 | 前置 TiCon + Mantle + Construct's Armory；与本包 #8 Antique Armory（需 Tinkers' Antique）的匠魂分支生态冲突；与暮色森林等联动无冲突 | 高 | 收录但风险标注（与 #8 存在匠魂分支互斥，须统一） |
| 25 | Armourer's Workshop（时装工坊） | 装饰（时装/自定义护甲皮肤） | 工具武器 | 未知 | 有（0.50.x，2020） | 1.12.2 停更（作者转 1.16+，SAGESSE 重写） | 与 Obfuscate、TLauncher、Electroblob Wizardry 动画不兼容（可配置）；与改玩家动画的 mod 有冲突报告 | 中 | 收录但风险标注 |
| 26 | Aroma1997Core | 前置库 | 维度探索 | 未知（闭源，作者自定义条款） | 有（2.0.0.2.b164） | 停更（2019） | Aroma 系模组必需前置；无独立功能 | 低 | 收录 |
| 27 | Aroma1997s-Dimensional-World（挖矿维度） | 维度探索 | 维度探索 | 未知（闭源，自定义条款） | 有（2.0.0.2.b97，2020） | 停更 | 维度 ID 可配置，**须避开星系（-27~-32 区间）与暮色森林（ID 7）已用 ID**；需 Aroma1997Core；与 Minecolonies 有跨维度兼容问题 | 中 | 收录但风险标注（维度 ID 配置核查） |
| 28 | AromaBackup（存档备份） | 辅助优化（备份工具） | 维度探索 | 闭源（允许非盈利整合包含入分发，禁止单独分发） | 有 | 停更 | 需 Aroma1997Core；社区有与其他 mod 的兼容性讨论 | 中 | 收录但风险标注（闭源 + 停更，备份工具替代品多） |
| 29 | ArtemisLib | 前置库（实体尺寸 API） | 前置库 | GPL-3.0 | 有（v1.0.6，2019） | 停更（2019） | 被 Exotic Birds、Ancient Spellcraft（可选）等依赖；强 Copyleft 许可，非商业包无碍 | 低 | 收录 |
| 30 | Artisan Worktables 1.12 | 辅助优化（魔改工作台，供整合包作者） | 工具武器 | 开源（未标具体协议） | 有（仅 1.12.2） | 停更 | 需前置 Athenaeum；**已知 BUG：无序合成配方可导致崩端**（1.12.2-1.24.2） | 中 | 收录但风险标注（规避无序配方） |
| 31 | AssetMover | 辅助优化（运行时拉取资源，避免资产许可问题） | 未分类 | LGPL-3.0 | 有（2.5，2023） | 完成，停更 | CleanroomMC 出品，无冲突 | 低 | 收录 |
| 32 | Astral Additions（星辉附加） | 魔法（Astral Sorcery 附属） | 魔法 | 开源（未标具体协议） | 有（仅 1.12.2） | 停更 | 需 Astral Sorcery + Baubles；星辉盔甲默认禁用 | 低 | 收录 |
| 33 | Astral Sorcery（星辉魔法） | 魔法 | 魔法 | 闭源 ARR（官方允许整合包回链、禁牟利） | 有（1.10.27，2020） | 1.12.2 线停更（整体项目 2022 后不再更新） | 不加维度，无维度冲突；Optifine 着色器/天空渲染已知问题（weakSkyRender 可缓解）；Sponge 服务端不支持 | 低 | 收录 |
| 34 | Async Logger | 辅助优化（异步日志） | 辅助优化 | 未知 | 未证实（现版本为 NeoForge 26.2，未见 1.12.2 文件） | 活跃（2026-07 仍更新） | 无冲突报告 | 高 | 收录但风险标注（**1.12.2 版本存疑，需人工确认后下载**） |
| 35 | Athenaeum | 前置库 | 未分类 | 闭源（CurseForge 标注 ARR，GitHub 有源码） | 有（1.19.6，2023） | 停更 | Artisan Worktables 等 codetaylor 系模组必需前置 | 低 | 收录 |
| 36 | Atlas Lib | 前置库 | 前置库 | LGPL-2.1 | 有（1.1.11） | 维护中（至 1.21 均更新） | The Hordes 等模组依赖 | 低 | 收录 |
| 37 | Attribute Fix | 辅助优化（属性上限修复） | 辅助优化 | 未知 | 未知 | 未知 | 无法独立考证，**疑为 #38 AttributeFix（Darkhax）的重复条目** | 中 | 收录但风险标注（需人工确认是否重复） |
| 38 | AttributeFix | 辅助优化（属性上限修复） | 辅助优化 | LGPL-2.1 | 有（1.0.10） | 活跃维护 | 与 Armor Points++/Armor Toughness Bar 兼容（推荐搭配）；无冲突 | 低 | 收录 |
| 39 | Atum 2: Return to the Sands（阿图姆 2） | 维度探索 | 维度探索 | 未知 | 有（2.1.x 线） | 停更（最后版本 2022-09） | **维度 ID 固定为 17**，须核查与包内其他维度模组不重叠（暮色=7、星系=-27~-32，不冲突）；The One Probe 需 ≥1.4.28 否则方块信息显示异常 | 中 | 收录但风险标注（维度 ID 与 TOP 版本核查） |
| 40 | Authentic Shadows | 未知（查无同名模组） | 未分类 | 未知 | 未知 | 未知 | mcmod 无条目；CurseForge 仅有同名 16x **材质包**（liahim85，2.1M 下载）——疑为材质包误入模组清单 | 高 | 建议排除（未找到同名模组，疑为材质包，需人工复核） |
| 41 | Auto Third Person（自动第三人称） | 辅助优化（视角切换） | 未分类 | 开源（未标具体协议） | 有（1.12.2-v1.2.1） | 活跃（维护至 1.21.5） | 纯客户端；1.12.2 版联动 Wings；无冲突 | 低 | 收录 |
| 42 | AutoInput-1.12.1-3.0.0-universal | 未知（查无资料） | 辅助优化 | 未知 | 未知 | 未知 | mcmod / CurseForge 均无该模组条目（仅 Better Furnace 的同名升级品）；无法核实作者与来源 | 高 | 建议排除（查无此模组，来源不明，需人工确认） |
| 43 | AutoPlant（自动种植） | 农业（砍树后自动补种） | 辅助优化 | 开源（作者声明：与模组同包分发时不得直接分发 jar） | 有（仅 1.12.2/1.11.2 线） | 停更 | 与 Seedy Place、Saplanting、QuickPlant、Nature Overhaul、Better Planting 不兼容（其已含此功能） | 低 | 收录 |
| 44 | AutoRegLib | 前置库（Vazkii 库） | 世界生成 | 自定义许可（CurseForge 标注 Custom License） | 有（1.3-32） | 停更（2022 后无新版） | 被 Vazkii 系模组（植物魔法等，若包含）依赖；与 #45 重复条目 | 低 | 收录（建议删除 #45 重复条目） |
| 45 | AutoRegLib-1.3-32 | 前置库（同 #44） | 世界生成 | 自定义许可 | 有 | 同 #44 | 与 #44 为同一模组同一版本，重复 | 低 | 收录（重复条目，二选一） |
| 46 | AutoRun（自动跑步） | 辅助优化（自动疾跑热键） | 未分类 | 未知（闭源） | 有 | 停更 | 纯客户端；无冲突 | 低 | 收录 |
| 47 | Avaritia（无尽贪婪，原版） | 工具武器（终局合成） | 未分类 | MIT | 无（仅 1.7.10） | 停更（作者拒做高版本，1.10+ 官方移交 1.1x） | 1.12.2 包内不可用，须用 #48/#49 | 中 | 建议排除（1.12.2 无版本，换用 #48/#49） |
| 48 | Avaritia 1.1x（无尽贪婪 1.1x） | 工具武器（终局合成） | 未分类 | MIT | 有（3.3.0.37，2020） | 停更（2023 后无更新） | 与 #49 UEL 功能完全重复，**二者只留其一**；CrT/JEI 支持良好 | 低 | 收录 |
| 49 | Avaritia 1.1x Unofficial Extended Life | 工具武器（终局合成） | 未分类 | 未知 | 有 | 社区延续维护（修复星空渲染、无缝循环） | 与 #48 二选一（推荐 UEL：有修复）；与神秘时代/植物魔法/血魔法联动类附属需对应分支 | 中 | 收录但风险标注（与 #48 重复，建议 UEL 取代 1.1x） |
| 50 | Avaritia IO（无尽贪婪：接口） | 科技（Ender IO 联动） | 未分类 | 未知 | 有（仅 1.12.2，1.3 版 2019） | 停更（社区续作 Re/Neo 仅 1.21.1） | 需 Avaritia（1.1x/UEL）+ Ender IO 双前置；无冲突报告 | 中 | 收录但风险标注（双前置，属可选附加） |

---

## 统计

**收录 29 ／ 风险标注 18 ／ 建议排除 3 ／ 分类错误 14**

- 收录（29）：#2,3,5,7,9,11,12,13,14,15,17,18,20,22,23,26,29,31,32,33,35,36,38,41,43,44,45,46,48
- 收录但风险标注（18）：#1,4,6,8,10,16,19,21,24,25,27,28,30,34,37,39,49,50
- 建议排除（3）：#40 Authentic Shadows（查无同名模组，疑为材质包）、#42 AutoInput（查无资料，来源不明）、#47 Avaritia 原版（无 1.12.2 版本）
- 分类错误（14）：AppleCore×2、AutoRegLib×2（世界生成→前置库）；Aroma1997Core、AromaBackup（维度探索→前置库/辅助优化）；AutoPlant（辅助优化→农业）；Armor Curve、Armor Points++、Armor Toughness Bar、ArmoreableMobs、Armored Arms（工具武器→辅助优化）；Armourer's Workshop（工具武器→装饰）；Artisan Worktables（工具武器→辅助优化/魔改）
- 另有 16 条处于"未分类"（#5,6,7,10,16,17,31,35,40,41,42,46,47,48,49,50）需补充分类，未计入上表"分类错误"。
- 重复条目 6 组（12 条）：#11/12、#13/14、#16/17、#37/38（疑似）、#44/45、#48/49（建议只留一个）——建议清单去重后约 44 条有效模组。

### 重点风险提示（与本包核心模组的关系）
1. **匠魂生态分裂**：#8 Antique Armory 要求 Tinkers' Antique（匠魂 fork），#24 Armory Expansion 要求原版 TiCon + Construct's Armory——二者互斥，全包须统一匠魂分支。
2. **维度 ID**：星系占用负 ID（-27~-32）、暮色森林=7、阿图姆 2=17（固定）；Aroma1997 挖矿维度 ID 可配置，须显式配置避开。
3. **Mixin 堆叠**：#4/#7/#16/#17/#9(Evil) 等依赖 MixinBooter/MixinBootstrap，1.12.2 下 Mixin 版本冲突是常见崩溃源，建议统一用 MixinBooter。
4. **ARL/闭源许可**：#33 Astral Sorcery（ARR）、#28 AromaBackup（禁单独分发）、#11/#13（LGPL/Unlicense 无碍）——非商业整合包分发均可接受，但发布时需按各自条款回链。
5. **无法核实项**：#34 Async Logger、#40 Authentic Shadows、#42 AutoInput 三项资料缺失或存疑，需人工复核后决定收录或删除。
