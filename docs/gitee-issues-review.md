# Gitee Issues 审查表

本表记录 Gitee 当前待处理 issue 的审查结论及其 GitHub 去向，用于后续增量复查，避免重复阅读未发生变化的历史讨论。

## 审查快照

- 审查时间：2026-07-11（Asia/Shanghai）
- Gitee 仓库：<https://gitee.com/xkwxdyy/exam-zh>
- 查询范围：`is:open` 与 `is:progressing`
- 本轮结果：40 个 open（均为“待办的”），1 个 progressing（“进行中”），合计 41 项
- GitHub 迁移：[#6](https://github.com/xkwxdyy/exam-zh/issues/6)–[#46](https://github.com/xkwxdyy/exam-zh/issues/46)
- 当前状态：7 个保持开放，34 个已关闭（其中 2 个 P0、5 个 P1、5 个 P2 已于 2026-07-11 修复）

优先级定义：

- P0：正常使用被阻断、答案丢失或发布版本出现严重回归
- P1：核心功能错误、编译失败或明显错误输出
- P2：重要但有替代方案的缺陷或功能需求
- P3：文档、低频需求、重复项、已实现项或不纳入核心的请求

## 总体分析

当前最主要的矛盾不是“缺少更多版式选项”，而是少数核心数据流和列表布局仍不够稳定：`show-move` 在多试卷中会覆盖前文答案，v0.2.7 的 list 参数作用域又造成题间距回归。这两项列为 P0，应先于页面预设、答案汇总和 choices 扩展处理。

第二层风险集中在四组共享内核：题目 list 参数、fillin 断行、choices/计数器、coffin/tblr 布局。多个 Gitee issue 实际上是同一结构问题的不同表现，实施时应共享测试和底层修复，但保留独立 GitHub issue 以便验收。

页面尺寸、紧凑模式、四栏、讲义 chapter 等请求中，有些可以通过标准 LaTeX 或下游模板完成。核心类只保留具有普遍性且能维持页眉页脚、密封线和师生两版契约的接口；其余条目已记录替代方案后关闭。

## P0

| Gitee | 最后更新 | 评论 | 审查结论 | GitHub |
| --- | --- | ---: | --- | --- |
| [IK0A55](https://gitee.com/xkwxdyy/exam-zh/issues/IK0A55) | 2026-07-11 | 1 | 已修复：列表参数恢复跨辅助分组生效，并增加参数回归测试 | [#6](https://github.com/xkwxdyy/exam-zh/issues/6) completed |
| [IJR78Q](https://gitee.com/xkwxdyy/exam-zh/issues/IJR78Q) | 2026-06-01 | 0 | 已修复：移动答案改用文档级唯一序号和 jobname 隔离文件名 | [#7](https://github.com/xkwxdyy/exam-zh/issues/7) completed |

## P1

| Gitee | 最后更新 | 评论 | 审查结论 | GitHub |
| --- | --- | ---: | --- | --- |
| [IDPPJR](https://gitee.com/xkwxdyy/exam-zh/issues/IDPPJR) | 2026-02-08 | 2 | 已修复：抽取共享 TikZ 实现，并为独立 choices 注册 `tikzcirclednumber` | [#11](https://github.com/xkwxdyy/exam-zh/issues/11) completed |
| [IDDOCK](https://gitee.com/xkwxdyy/exam-zh/issues/IDDOCK) | 2025-12-17 | 2 | 已修复：`\vec` 改按未展开 token 数判断；单控制序列视为单个符号 | [#13](https://github.com/xkwxdyy/exam-zh/issues/13) completed |
| [ID9469](https://gitee.com/xkwxdyy/exam-zh/issues/ID9469) | 2025-12-27 | 3 | 已修复：无题干直接进入 enumerate 时，外层题号盒不再给首项叠加缩进 | [#16](https://github.com/xkwxdyy/exam-zh/issues/16) completed |
| [ICEH9X](https://gitee.com/xkwxdyy/exam-zh/issues/ICEH9X) | 2025-06-11 | 1 | 已修复：textfigure 改以顶部对齐 varwidth 的首行基线输出 | [#26](https://github.com/xkwxdyy/exam-zh/issues/26) completed |
| [IAXE1N](https://gitee.com/xkwxdyy/exam-zh/issues/IAXE1N) | 2025-05-23 | 2 | 已修复：宽度达到 `\linewidth` 即进入可换行分支，覆盖等宽越界边界条件 | [#27](https://github.com/xkwxdyy/exam-zh/issues/27) completed |

## P2：保持开放

| Gitee | 最后更新 | 评论 | 审查结论 | GitHub |
| --- | --- | ---: | --- | --- |
| [IDBLDN](https://gitee.com/xkwxdyy/exam-zh/issues/IDBLDN) | 2025-12-28 | 6 | 需要安全的自定义纸张/多栏接口及对应页脚模型 | [#14](https://github.com/xkwxdyy/exam-zh/issues/14) open |
| [ID7G2T](https://gitee.com/xkwxdyy/exam-zh/issues/ID7G2T) | 2025-11-19 | 1 | 16K 油印场景真实存在，需与自定义纸张接口协调 | [#19](https://github.com/xkwxdyy/exam-zh/issues/19) open |
| [ID6D6C](https://gitee.com/xkwxdyy/exam-zh/issues/ID6D6C) | 2025-11-13 | 5 | 参考 cloze 语义重整 fillin；不能引入 LuaLaTeX 依赖 | [#22](https://github.com/xkwxdyy/exam-zh/issues/22) open |
| [ICMVN4](https://gitee.com/xkwxdyy/exam-zh/issues/ICMVN4) | 2025-11-23 | 1 | 建立跨选择、判断、填空、解答的答案记录与渲染模型 | [#25](https://github.com/xkwxdyy/exam-zh/issues/25) open |
| [I8QVL9](https://gitee.com/xkwxdyy/exam-zh/issues/I8QVL9) | 2024-02-11 | 7 | P1 部分已修复：question/problem 支持 verbatim/verb；choices 尚有 `lstinputlisting` 替代路径，降为 P2 继续设计 | [#30](https://github.com/xkwxdyy/exam-zh/issues/30) open |
| [I5ROOL](https://gitee.com/xkwxdyy/exam-zh/issues/I5ROOL) | 2025-12-28 | 0 | choices 的正确答案标记/着色仍是源码 TODO | [#43](https://github.com/xkwxdyy/exam-zh/issues/43) open |

## P2：已关闭

| Gitee | 最后更新 | 评论 | 关闭结论 | GitHub |
| --- | --- | ---: | --- | --- |
| [IHXNX9](https://gitee.com/xkwxdyy/exam-zh/issues/IHXNX9) | 2026-04-02 | 1 | 已修复：同行项目按首行/中部/末行基线统一对齐，高低公式无需再用 `\vphantom` 补齐 | [#9](https://github.com/xkwxdyy/exam-zh/issues/9) completed |
| [IHQMPM](https://gitee.com/xkwxdyy/exam-zh/issues/IHQMPM) | 2026-03-26 | 1 | 已修复：仅在 calculations 直接作为 list 首段时抵消宿主 `itemindent`，统一 question/problem 位置 | [#10](https://github.com/xkwxdyy/exam-zh/issues/10) completed |
| [ID823C](https://gitee.com/xkwxdyy/exam-zh/issues/ID823C) | 2026-05-30 | 3 | 已实现 `column-gap` 图片间距键，并补充第二个可选参数透传 `tblr` 的稳定 `colspec` 用法 | [#46](https://github.com/xkwxdyy/exam-zh/issues/46) completed |
| [I63X3T](https://gitee.com/xkwxdyy/exam-zh/issues/I63X3T) | 2022-12-01 | 2 | 已增加 `paren/type=dotfill`，支持括号前点线填充；复杂自定义 leader 内容不纳入核心接口 | [#42](https://github.com/xkwxdyy/exam-zh/issues/42) completed |
| [I670KF](https://gitee.com/xkwxdyy/exam-zh/issues/I670KF) | 2022-12-21 | 0 | 已文档化 `ExamPrintAnswerSet` 覆盖教师版标题、科目并隐藏 warning/notice 的稳定写法 | [#39](https://github.com/xkwxdyy/exam-zh/issues/39) completed |
| [IDPOT4](https://gitee.com/xkwxdyy/exam-zh/issues/IDPOT4) | 2026-02-07 | 0 | 已抽取共享计数器实现，新增无歧义的 `\tikzcirclednumber` 并保留旧接口兼容 | [#12](https://github.com/xkwxdyy/exam-zh/issues/12) completed |
| [ID7HWH](https://gitee.com/xkwxdyy/exam-zh/issues/ID7HWH) | 2025-11-20 | 3 | 已为 choices 新增独立控制多行选项内部行距的 `item-linesep` | [#18](https://github.com/xkwxdyy/exam-zh/issues/18) completed |
| [ID6INO](https://gitee.com/xkwxdyy/exam-zh/issues/ID6INO) | 2025-11-13 | 0 | 已将文档默认值更正为 `normal`，并增加默认行为回归测试 | [#21](https://github.com/xkwxdyy/exam-zh/issues/21) completed |
| [I6HQ2S](https://gitee.com/xkwxdyy/exam-zh/issues/I6HQ2S) | 2025-12-28 | 0 | 已为 problem 新增默认关闭的 `hang` 键并覆盖嵌套场景 | [#37](https://github.com/xkwxdyy/exam-zh/issues/37) completed |
| [I67JXY](https://gitee.com/xkwxdyy/exam-zh/issues/I67JXY) | 2025-12-28 | 2 | 已为 choices 新增 `left-indent`、`right-indent` 与 `margin` | [#38](https://github.com/xkwxdyy/exam-zh/issues/38) completed |

## P3：保持开放

| Gitee | 最后更新 | 评论 | 审查结论 | GitHub |
| --- | --- | ---: | --- | --- |
| [I7QT33](https://gitee.com/xkwxdyy/exam-zh/issues/I7QT33) | 2025-12-28 | 1 | 可评估 opt-in 图片宽度自动测量，必须有最小文字宽度回退 | [#33](https://github.com/xkwxdyy/exam-zh/issues/33) open |

## P3：已关闭

| Gitee | 最后更新 | 评论 | 关闭结论 | GitHub |
| --- | --- | ---: | --- | --- |
| [ID9MTP](https://gitee.com/xkwxdyy/exam-zh/issues/ID9MTP) | 2025-11-30 | 0 | 已明确推荐内置 `solution`，记录外置写法兼容边界并补充最小示例 | [#15](https://github.com/xkwxdyy/exam-zh/issues/15) completed |
| [ID83OW](https://gitee.com/xkwxdyy/exam-zh/issues/ID83OW) | 2025-11-23 | 0 | 已说明 `\varnothing` 的 Asana Math 单符号覆盖，并澄清这不等同于完整支持 mtpro2 | [#17](https://github.com/xkwxdyy/exam-zh/issues/17) completed |
| [ID7B6Z](https://gitee.com/xkwxdyy/exam-zh/issues/ID7B6Z) | 2025-11-18 | 0 | 完整手册和基础手册均已补充 `exam-zh-math.sty` 及其职责 | [#20](https://github.com/xkwxdyy/exam-zh/issues/20) completed |
| [IJ00Q0](https://gitee.com/xkwxdyy/exam-zh/issues/IJ00Q0) | 2026-04-16 | 1 | 过度依赖单份版式和私有函数，不纳入核心 | [#8](https://github.com/xkwxdyy/exam-zh/issues/8) not planned |
| [ID6BN9](https://gitee.com/xkwxdyy/exam-zh/issues/ID6BN9) | 2025-11-13 | 5 | 使用标准 enumerate/resume；额外空白来自手写换行 | [#23](https://github.com/xkwxdyy/exam-zh/issues/23) not planned |
| [ICONDZ](https://gitee.com/xkwxdyy/exam-zh/issues/ICONDZ) | 2025-07-24 | 1 | 讲义应使用 ctexbook 加载子宏包，不扩展 exam-zh 的 book 语义 | [#24](https://github.com/xkwxdyy/exam-zh/issues/24) not planned |
| [IALBFX](https://gitee.com/xkwxdyy/exam-zh/issues/IALBFX) | 2025-12-28 | 1 | 四栏偏离核心版式，multicol 还会破坏 separate 页脚 | [#28](https://github.com/xkwxdyy/exam-zh/issues/28) not planned |
| [I9T0DX](https://gitee.com/xkwxdyy/exam-zh/issues/I9T0DX) | 2025-12-27 | 6 | 不增加全局紧凑模式；使用标准行距和现有局部间距键 | [#29](https://github.com/xkwxdyy/exam-zh/issues/29) not planned |
| [I7QTGG](https://gitee.com/xkwxdyy/exam-zh/issues/I7QTGG) | 2025-02-19 | 3 | TeX flushbottom 正常行为；可用 `\raggedbottom` | [#31](https://github.com/xkwxdyy/exam-zh/issues/31) not planned |
| [I7QT4I](https://gitee.com/xkwxdyy/exam-zh/issues/I7QT4I) | 2025-12-28 | 1 | 无当前版本 MWE，无法确认图例来源 | [#32](https://github.com/xkwxdyy/exam-zh/issues/32) not planned |
| [I7I19S](https://gitee.com/xkwxdyy/exam-zh/issues/I7I19S) | 2023-07-03 | 1 | 与 IAXE1N 同一 fillin 换行缺陷 | [#34](https://github.com/xkwxdyy/exam-zh/issues/34) duplicate → [#27](https://github.com/xkwxdyy/exam-zh/issues/27) |
| [I7FGOJ](https://gitee.com/xkwxdyy/exam-zh/issues/I7FGOJ) | 2025-04-21 | 4 | calculations 环境及文档已实现 | [#35](https://github.com/xkwxdyy/exam-zh/issues/35) completed |
| [I6VUWY](https://gitee.com/xkwxdyy/exam-zh/issues/I6VUWY) | 2025-02-19 | 2 | 多层 enumerate 已覆盖小问/小小问 | [#36](https://github.com/xkwxdyy/exam-zh/issues/36) completed |
| [I64WIO](https://gitee.com/xkwxdyy/exam-zh/issues/I64WIO) | 2022-12-06 | 0 | 科目目录属于下游多试卷信息架构 | [#40](https://github.com/xkwxdyy/exam-zh/issues/40) not planned |
| [I63XSP](https://gitee.com/xkwxdyy/exam-zh/issues/I63XSP) | 2022-12-21 | 4 | 合并到统一自定义纸张接口 | [#41](https://github.com/xkwxdyy/exam-zh/issues/41) duplicate → [#14](https://github.com/xkwxdyy/exam-zh/issues/14) |
| [I5PCPA](https://gitee.com/xkwxdyy/exam-zh/issues/I5PCPA) | 2022-09-29 | 15 | 师生版重排同一题图会绑定独立模块，建议下游显式分支 | [#44](https://github.com/xkwxdyy/exam-zh/issues/44) not planned |
| [I5J7YG](https://gitee.com/xkwxdyy/exam-zh/issues/I5J7YG) | 2025-11-23 | 9 | 合并到完整答案汇总设计 | [#45](https://github.com/xkwxdyy/exam-zh/issues/45) duplicate → [#25](https://github.com/xkwxdyy/exam-zh/issues/25) |

## 后续增量复查流程

1. 从 Gitee API 获取 `state=open` 的全部 issue，并同时检查 UI 的 `is:progressing` 查询。
2. 对每项比较本表中的“最后更新”和评论数；两者均未变化时跳过正文与评论复读。
3. 新 issue 或发生变化的 issue 必须重新阅读正文和全部评论，再检查对应 GitHub issue 是否需要创建、更新、重开或关闭。
4. 每次复查更新本页的审查时间、统计数、最后更新时间、评论数、结论和 GitHub 状态。
5. GitHub issue 标准标签为 `source:gitee` 加 `priority:P0`–`priority:P3`；不要仅依靠标题表达优先级。

Gitee issue 即使后来关闭，也暂不从表中删除；将其移入历史/已关闭分组并保留 GitHub 映射，才能持续避免重复劳动。
