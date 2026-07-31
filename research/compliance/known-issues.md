# 已知问题与构建处理记录

> 记录审查/测试中发现的问题与处理方案。随核查推进更新。

## MixinBooter（Cleanroom 核心前置，必收）

- 问题：玩家反馈高版本导致启动失败（游戏界面不出现）
- 原因：加载顺序问题（1.12.2 已知坑）
- 处理：打包时文件名加 `!` 前缀强制最先加载（如 `!MixinBooter.jar`）；其他模组文件名避免中文前缀
- 状态：构建注意事项（不排除）

## Lord Craft 2.10.1

- 问题：半成品（社区评价：任务 bug、研究手册未完成、无汉化）
- 处理：已排除（modlist v8）

## Mahou Tsukai（神话魔法）

- 问题：与星系（Galacticraft）维度 ID 冲突 + 玩法互搏
- 处理：已排除（modlist v9）

## Emojicord / Emojiful

- 问题：功能重复（聊天表情）
- 处理：删 Emojicord，保留 Emojiful（modlist v8）

## JEI Villagers + MCA

- 问题：MCA 大改村民后交易查看意义小（重复/冲突）
- 处理：删 JEI Villagers（modlist v8）
