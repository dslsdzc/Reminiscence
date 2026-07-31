# 角色适配单元模板

> 每个都市传说角色 = 一份 `character-adapter.json`（注册表条目）+ 独有能力钩子（代码）。新增角色 = 新增适配单元，不动调度内核。
> 完整 schema 与 Herobrine 样例见下。设计依据：spec §7（角色体系）。

## Schema 字段说明

| 字段 | 类型 | 说明 |
|---|---|---|
| identity.name | string | 指令用名（/reminiscence <name>）|
| identity.alias | string[] | 别名（指令也可用）|
| identity.skin | string | 外观标识（模型/皮肤引用）|
| identity.faction | string | 阵营（核心四元/衍生/村民/怪物/恐怖传说/文化）|
| stateMachine.base | object | 七状态默认参数（idle/follow/explore/collect/combat/cast/patrol）|
| stateMachine.personality | 0-100 ×4 | aggression/fear/curiosity/obedience——状态迁移倾向权重 |
| stateMachine.movement | hook ID | 移动模式钩子（潜行/瞬移/阴影/漂浮）|
| stateMachine.combat | hook ID | 战斗行为钩子（近战/远程/精神干扰/召唤）|
| abilities | map | 能力 ID → 引擎实现引用（实现走统一引擎服务，适配器只声明）|
| encounter.location | string | 遭遇地点（行星/区域/程序生成条件）|
| encounter.condition | string | 遭遇条件（时间/事件/玩家状态）|
| encounter.probability | 0-1 | 每 tick/事件触发概率 |
| trust.start | 0-100 | 初始信任度 |
| trust.events | map | 事件 → 信任变化值（成功任务+/被伤害-/交付成长物+）|
| growth | map | 成长节点：item（成长物）/source（产出地）/unlock（解锁能力）——星辉式材料强化，无经验值 |
| events | map | 专属事件链：遭遇对话/背景碎片/信任事件（叙事内容）|
| ai.promptTemplate | string | 云端人格 prompt（{player}/{trust}/{context} 占位符）；本地模式忽略此字段 |

## Herobrine 完整样例

```jsonc
{
  "identity": { "name": "herobrine", "alias": ["HIM", "白瞳"], "skin": "白瞳史蒂夫", "faction": "核心四元" },
  "stateMachine": {
    "personality": { "aggression": 40, "fear": 10, "curiosity": 80, "obedience": 70 },
    "movement": "shadow-blink",
    "combat": "spawn-puppet + gaze-fear"
  },
  "abilities": { "blink": "engine:graph-瞬移寻点", "whisper": "engine:formula-环境低语" },
  "encounter": { "location": "程序生成外域", "condition": "夜晚+玩家独自", "probability": 0.05 },
  "trust": { "start": 50, "events": { "follow 成功": 10, "战斗协助": 15, "玩家攻击": -20 } },
  "growth": {
    "节点1": { "item": "幽灵碎片", "source": "暮色星", "unlock": "幽魂传送" },
    "节点2": { "item": "七形态余烬", "source": "恐怖传说系支线", "unlock": "形态切换" },
    "节点3": { "item": "HIM 印记", "source": "终局后隐藏", "unlock": "第八形态 HIM" }
  },
  "events": {
    "遭遇对话": "你见过我。",
    "背景碎片": "2x2 隧道壁画",
    "信任事件": "信任 80 解锁真名低语"
  },
  "ai": { "promptTemplate": "你是 Herobrine——白瞳的观察者。{player} 当前信任度 {trust}。保持沉默神秘，用短句回应..." }
}
```

## 交付约定

- 新增角色：提交 `character-adapter.json` + 能力钩子代码（若用引擎已有服务则只声明引用）
- 验收：注册表加载成功 + 遭遇条件可触发 + 指令模式可用 + 信任事件生效 + 成长节点可交付
- 生成 53+1 角色时按此模板逐角色产出（执行者任务，spec 流水线）
