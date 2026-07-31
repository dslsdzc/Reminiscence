# 二选一决策表（基于 27 组合规核查数据）

> 每组的建议基于：许可证/维护状态/口碑/与包生态兼容性。标注"待定"的需包作者拍板。

## 已有明确建议（信息充分，倾向清晰）

| # | 候选 A | 候选 B | 决策依据 | 建议 |
|---|---|---|---|---|
| 1 | JEI（生态核心）| HEI（性能替代）| JEI 生态庞大（JER/JETIF/JEHC/JECh 全依赖）；HEI 兼容性存疑 | **保留 JEI** |
| 2 | CTM（ARR 闭源，被 Chisel/Connected Glass 依赖，稳定）| Fusion（开源活跃）| CTM 是连接纹理生态标准，Chisel 等硬依赖 | **保留 CTM**（Fusion 排除）|
| 3 | Fixeroo（停更，mcmod 明示可替换 Clumps）| Clumps（MIT、维护中、经典）| Clumps 维护中且许可明确 | **保留 Clumps** |
| 4 | Grappling Hook Mod（GPL-3.0、停更、附魔线）| Hooked（MIT、现代线活跃）| Hooked 许可干净 + 现代线活跃 | **保留 Hooked** |
| 5 | Gravestone mod（LGPL-3.0、经典口碑正面）| Corpse Complex（LGPL-3.0、死亡机制配置超集）| CC 功能更全（死亡机制配置）| **保留 Corpse Complex**（Gravestone 排除）|
| 7 | LootTableTweaker（LGPL-2.1、停更）| LootTweaker（CrT 官方系）| 与 CraftTweaker 生态配套 | **保留 LootTweaker** |
| 8 | OAuth（LGPL-3.0、2023 更新、功能完整）| ReAuth（无 LICENSE、停更、**红票 80%**）| ReAuth 口碑差 | **保留 OAuth** |
| 9 | OneKeyMiner（ARR、活跃）| Ore Excavation（ARR、**红 151/99%**、完成度高）| Ore Excavation 口碑碾压 | **保留 Ore Excavation** |
| 11 | Random Things（开源停更）| Quantum Things（MIT、**其 1.12.2 续作**、活跃）| mcmod 明示续作关系 | **保留 Quantum Things** |
| 12 | Quick Leaf Decay | Fast Leaf Decay（README 明示整合包免许可）| 许可明确 | **保留 Fast Leaf Decay** |
| 13 | Thaumic JEI（MIT、稳定）| Thaumic Information（MIT、**包含 TJ 全部功能**、2026-07 活跃）| TI 功能超集 + 活跃 | **保留 Thaumic Information** |
| 14 | Natura Legacy | Natura（代码 CC0）| 同一模组两版本 | **保留 Natura 主条目** |
| 16 | Phosphor 官方（无 1.12.2，社区分支 GPL-3.0）| Alfheim Lighting Engine（MIT、2.5M 下载、作者体系推荐）| 许可 + 生态推荐 | **保留 Alfheim**（已定）|
| 17 | Iron Backpacks（GPL-3.0、停更）| Traveler's Backpack（LGPL-3.0、稳定）| TB 许可更干净 | **保留 Traveler's Backpack** |
| 18 | Iron Jetpacks（MIT、停更）| Simply Jetpacks 2（thundR 维护）| SJ2 有维护者 | **保留 Simply Jetpacks 2** |
| 20 | itlt（许可未标注、停更）| Custom Window Title（Unlicense、活跃）| CWT 许可干净活跃 | **保留 Custom Window Title** |
| 21 | Smeltery IO（CC-BY-NC-SA、停更）| Tinker I/O CE（国创、活跃、红票 100%）| Tinker I/O 活跃 + 许可干净（同一模组）| **保留 Tinker I/O** |

## 待拍板（信息需权衡）

| # | 候选 A | 候选 B | 权衡点 | 建议 |
|---|---|---|---|---|
| 6 | CC: Tweaked（Apache-2.0、**活跃维护**、电脑编程）| OpenComputers（1.12.2 经典、功能更深：机器人/外设、**停更**）| 活跃 vs 深度；OC 生态有附属（Cloche Profit 等）| 倾向 **CC: Tweaked**（活跃+许可干净）——若想要机器人深玩法则留 OC |
| 10 | Quark 官方（CC BY-NC-SA-3.0、1.12.2 停更、内容标准）| Quark RotN Edition（同 modid 1.12.2 分支）| 官方内容全 vs 分支适配 1.12.2；NC-SA 非商用注意 | 倾向 **Quark 官方**（内容标准，NC-SA 注明）|
| 15 | Patchouli 官方 | Patchouli ROFL Edition（fork）| 官方标准 vs fork 适配 | 倾向 **Patchouli 官方** |
| 19 | Custom Starter Gear（停更但功能完整、87 包在用）| Initial Inventory（初始物品发放）| 功能相同，口碑相近 | 待定——保留其一即可 |

## 决策影响备注

- #1 保留 JEI → HEI 及其配套（HECh 等）排除
- #2 保留 CTM → Fusion 排除（batch-04 遗留项关闭）
- #6 保留 CC:Tweaked 或 OC → 对应附属生态一并取舍
- #10 Quark 官方为 CC BY-NC-SA-3.0（非商用条款——整合包非商用分发 OK，注明即可）
