# 程序生成行星配置模板

> 每颗生成行星 = 一份 `planet-config.json`（GenerationService 生成器输入）。种子驱动，30-80 颗，稀有度分级。
> 设计依据：spec §3（主线）/ §10.5（内存策略）。环境参数与"环境锁"、"航行能耗"联动。

## 字段说明

| 字段 | 类型 | 说明 |
|---|---|---|
| seed | string | 世界种子派生，保证存档内确定性 |
| orbit.ring | enum | 内/中/外/深空——分布比例 15%/30%/35%/20% |
| orbit.au | number | 0.1-50（AU 坐标，航行系统按此计算航程）|
| env.temperature | -100~300 | 防护装备需求（环境锁）|
| env.atmosphere | enum | breathable/toxic/none |
| env.gravity | 0.2-2.5 | 影响航行单位能耗 |
| env.radiation | 0-100 | 防护装备需求 |
| env.dayNight | enum | standard/long/eternal-night |
| resources[] | 数组 | 矿ID/丰度 1-10/深度范围/权重——补充材料来源 |
| structures | 0-1 ×4 | dungeon/city/ruins/portal-candidate 密度 |
| rarity | enum | common 60% / rare 25% / epic 12% / legendary 3%（传说级唯一遗迹/Boss 落点）|
| theme | enum | none/beast-hunt/dragon-nest/infected/...（生物群组与生成物覆盖）|
| discover | 对象 | clue（未探索星图线索模板）/ archive（探索后档案模板）|

## 样例（稀有级主题行星）

```jsonc
{
  "seed": "派生",
  "orbit": { "ring": "外环", "au": 12.5 },
  "env": { "temperature": -40, "atmosphere": "toxic", "gravity": 1.1, "radiation": 30, "dayNight": "long" },
  "resources": [ { "ore": "陨铁", "abundance": 6, "depth": "0-40", "weight": 3 } ],
  "structures": { "dungeon": 0.6, "city": 0.2, "ruins": 0.8, "portal-candidate": 0.1 },
  "rarity": "rare",
  "theme": "beast-hunt",
  "discover": { "clue": "信号异常，伴兽吼", "archive": "泰坦猎场：以泰坦生物为顶级的生态链" }
}
```

## 交付约定

- 生成器（C 引擎 GenerationService）读配置批量生成；主题模板 = 配置引用 + 生成覆盖规则
- 主线卡点材料**只在命运行星**——生成行星只做补充材料来源
- 验收：同种子多次生成结果一致（确定性）+ 环境锁/航行能耗计算正确 + 稀有度分布符合权重
