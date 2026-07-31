# 都市传说角色调度系统（第四层）

## 角色清单（53 + 1）

- 核心传说（10）：Herobrine（七大经典版本 = 7 形态）· Red Steve · Entity 303 · Null/Tenebris · Entity 404 · Entity Zero
- Steve 衍生（12）：Green Steve · Alexbrine · Villainbrine · Twisted Steve · Headless Steve · Faceless Steve · Armless Steve · Distorted Alex · Zerobrine · Ghost Alex · 白瞳僵尸 · 冰冻史蒂夫
- 村民系（5）：Corrupted Villager · 无脸村民 · 死村民 · 神秘村民 · 午夜村民
- 怪物异变（12）：白末影人 · 红末影人 · 微笑苦力怕 · Devil Ghast · Devil Spider · Eyeball · Angel · Vampire+Vampire Bat · 血傀儡 · Sand Fantom · Cursed Item Man · The Intruder(4335)
- 原生恐怖传说（10）：11 号唱片之声 · 洞穴音效发声体 · 边境之地守卫 · 亡魂玩家 · 微笑矿工 · 夜行者 · 无声雕像 · 深井之声 · 雪地脚印 · 噩梦追逐者
- MC 文化（4）：Slender · SCP-173 · Lick · 天选者
- **隐藏 +1：HIM**——终局条件达成后出现的第八 Herobrine 形态（"更高存在"向）

全部 MC 圈记忆，零通用都市传说。

## 架构：注册表 + 适配器

- 角色注册表：53+1 统一注册（名字/阵营/遭遇条件/信任阈值/能力集）
- 每角色适配单元：状态机参数表 + 独有能力钩子 + 专属事件链（模板见 `docs-dev/templates/character-adapter-template.md`）
- Herobrine 额外实现七形态切换；隐藏第八形态 HIM（终局解锁）

## 调度与界面

- 纯指令调度：`/reminiscence <角色> <指令>`；四种模式：全局广播 / 单角色 / 组合 / 战术（按战斗场景自动分配职能）
- 唯一 UI：**属性面板**（信任度/已获取物/当前能力/位置），按键呼出，不常驻；无 HUD、无指挥界面

## AI 双模

- 云端：大模型驱动（玩家 API 密钥，**仅存本地配置文件**——玩家文档隐私承诺，实现必须兑现）
- 本地：纯状态机规则驱动（无个性但可用）
- 降级：云端超时/断网自动切本地，行为不中断

## 成长 = 获取物交付制（星辉魔法式强化）

- 无经验条、无等级、无数值成长
- 每角色 3-5 成长节点（核心能力 1 + 进阶 2-3 + 最终形态 1），每节点 = 一件成长物品（自主线/支线产出），材料+仪式交互交付 → 解锁二元能力
- 53 角色 × ~4 节点 ≈ 200+ 成长物品，全部挂在世界产出上
- 示例：Herobrine ← 幽灵碎片(暮色星)→幽魂传送；303 ← 红石核心(小行星带)→方块操控；Slenderman ← 暗影结晶(深渊星)→精神干扰
- 信任系统：成功任务 +、被伤害 -；低于阈值回归野性需重新遭遇；属性面板只显示信任/已获取物/能力（不评数值）
