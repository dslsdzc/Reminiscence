# 任务：星图模糊线索表（配置类样例）

## 目标

为 13 颗未探索手工行星 + 程序生成外域模板提供模糊线索文案。玩家在星图上看到未探索行星时显示一行线索（不暴露具体内容），探索后更新为完整档案。

## 边界

只允许触碰：
- `pack/config/starmap/clues.json`（新建）
- `docs-dev/spec-examples/example-01-config.md`（本文件，只读）

禁止触碰：任何代码、其他 config 文件、`pack/scripts/`。

## 输入

- 命运行星名单：`docs/superpowers/specs/2026-07-31-reminiscence-design.md` §3.3（13 手工星 + 群峦隐藏星 + 下界/末地入口）
- 可发现性规则：spec §3.4（星图模糊线索：未探索行星只显示模糊提示；探索后具体化）
- 线索风格参考：`research/dj2-MODLIST.md` 无——风格自定，须符合下面的格式规则

## 验收标准

1. `clues.json` 通过 JSON 校验：`python3 -m json.tool pack/config/starmap/clues.json > /dev/null`
2. 结构：每个手工星一个条目 `{ "planet": "<行星名>", "unexplored": "<模糊线索>", "explored": "<探索后档案>" }`
3. 覆盖全部 13 手工星 + 群峦星（标记 `hidden: true`）+ 下界/末地入口（标记 `portal: true`）+ 1 个程序生成模板（`"planet": "*template*"`）
4. 模糊线索规则：不含具体物品名/模组名/资源名；最多 40 字符；风格示例："信号异常" / "富含未知矿物" / "灵异信号"（灵异信号仅用于角色遭遇相关行星，见 §7 角色体系）
5. `explored` 档案：包含资源概况 + 环境提示 + 一句世界碎片线索钩子（不剧透）
6. 星球名与 spec §3.3 完全一致（复制粘贴，不自行拼写）

## 回退条件

- 若星球名与 spec 不一致无法判断归属 → 停止，在 PR 说明中列出疑点，不猜测
- 若 JSON 校验失败且修复后仍失败 → 宣告失败退回（不提交）

## 交付物

- `pack/config/starmap/clues.json`
- 自检清单：覆盖 13+1+2+1 星球数 / 无物品名泄露 / 无剧透 / JSON 校验通过
