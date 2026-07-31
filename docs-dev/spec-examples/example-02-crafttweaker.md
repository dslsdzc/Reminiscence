# 任务：奇点配方注入（脚本类样例）

## 目标

无尽贪婪（Avaritia）的"奇点"合成配方要求注入暮色森林 Boss 灵魂碎片。玩家必须从暮色星获得该材料后才能合成奇点——材料卡点（spec §3.4 第 4 行）的落地。

## 边界

只允许触碰：
- `pack/scripts/avaritia_singularity.zs`（新建，唯一产物）
- 只读：`docs-dev/spec-workflow.md`、本文件

禁止触碰：`pack/config/`、任何 jar、任何 `.java` 文件。

## 输入

- 材料卡点：spec §3.4「奇点前置 | 暮色灵魂碎片 | 暮色星」
- 物品注册名（已由核心维护者确认，直接使用）：
  - 奇点：`avaritia:singularity`
  - 暮色灵魂碎片：`twilightforest:trophy`（Boss 战利品，任选一种 Boss 的 trophy——用 `twilightforest:trophy_pedestal` 无效，必须是可合成物品）
- CraftTweaker 1.12 语法（`crafttweaker` 官方文档为唯一参考，不自行发明 API）

## 验收标准

1. 语法检查：文件加载无报错。用 `scripts/` 目录下现有 `.zs` 文件的格式风格
2. 功能验收（游戏内人工步骤）：
   - 无灵魂碎片时打开奇点配方 → 显示配方但材料缺件（灰色）
   - 放入灵魂碎片 → 可合成
3. 不破坏现有配方：运行后 `JEI` 中奇点原有配方仍在（若原配方存在——若 Avaritia 奇点原本无配方，则本任务只是新增）
4. 文件内注释只写"行为描述"（如 `// 奇点需要暮色星 Boss 灵魂碎片`），禁止写任何实现细节（如何 Hook、引擎如何接管等）

## 回退条件

- 若 `avaritia:singularity` 或 `twilightforest:trophy` 注册名错误（游戏内 `CT 查询` 确认无效）→ 停止，PR 说明真实注册名，不猜测变体
- 若 Avaritia 的奇点配方系统不支持 CraftTweaker 注入 → 宣告失败退回（此路不通，改走引擎层任务，与你无关）

## 交付物

- `pack/scripts/avaritia_singularity.zs`
- 自检清单：语法无错 / JEI 显示验证 / 原配方未破坏 / 注释无实现细节
