<div align="center">

# 爻枢 code · pilipala uni-app x

**爻枢 code 出品 —— 一键翻译 Flutter 应用为 uni-app x**

把一款成熟的 Flutter 客户端（piliPala，近 7 万行 Dart 代码）整体翻译成 uni-app x 工程：一套代码，多端运行。

![brand](https://img.shields.io/badge/%E7%88%BB%E6%9E%A2%20code-pilipala%20uni--app%20x-0ea5e9)
![stack](https://img.shields.io/badge/stack-uni--app%20x%20%2B%20%E7%88%BB%E6%9E%A2%E8%87%AA%E7%A0%94%E7%BB%84%E4%BB%B6%E4%BD%93%E7%B3%BB-42b883)
![license](https://img.shields.io/badge/license-GPL--3.0-green)

</div>

## 这是什么

这是一个 **fork 式迁移仓库**：保留原 piliPala 的全部 git 历史，并在其之上落地 uni-app x 迁移工程。

- `lib/` —— 原 Flutter 工程，**事实源**。迁移期间的唯一行为基准，保持原样不改。
- `uniAppX/` —— uni-app x 迁移产物，本仓库的主角。Flutter 的页面、状态、请求链路在此以 uts + uvue 重建。
- `ai-docs/` —— 迁移设计、需求、迁移清单、进度与交付说明（含双端视觉对照证据）。

## 迁移亮点

| 维度 | 原工程 | 迁移后 |
|------|--------|--------|
| 语言 / 框架 | Dart · Flutter 3.19 | uts + uvue · uni-app x（蒸汽模式） |
| UI 体系 | Flutter 自绘组件 | 爻枢 code 自研 UI 组件体系：uvue 原生组件 + 自研 `p-*` 基础件与业务组件，源码全部在 `uniAppX/components/`，可直接查证与复用 |
| 跨端形态 | 原生 App（Android / iOS） | 一套代码覆盖 App（Android / iOS / 鸿蒙）+ 小程序 + Web |
| 工程结构 | `lib/` 单端 | `uniAppX/` 49 个页面迁移项、组件与 API 层分层 |
| 迁移方式 | — | 逐页翻译 + 双端视觉对照 + 能力等价表逐项核对 |

迁移不是「重写一个相似的东西」：源工程的接口签名、状态流转、设置键默认值、页面跳转语义都被逐条对齐，差异项在 `ai-docs/移动端设计/迁移/` 里有据可查。

## 当前状态

**迁移进行中，当前以 Android 真机为优先验证端。**

| 项 | 状态 |
|----|------|
| 页面 | 迁移清单 49 项，48 项已完成页面实现（1 项等账号订阅数据才能取证），DLNA 投屏按决策不迁移 |
| 主链路 | 首页四频道 / 视频详情与 DASH 播放 / 弹幕 / 评论 / 搜索 / 动态 / 消息 / 直播 / 收藏 / 历史 / 设置，已在 Android 14 真机逐条走通 |
| 验证口径 | 编译门禁全量通过；Android 真机为主证据；Web 端仅作开发期视觉与逻辑验证通道，不代表任何端结论 |
| 未验证端 | iOS / 鸿蒙 / 小程序尚未建立运行验证门禁，请勿按「已支持」理解 |

已知边界（登录凭据、弹幕写入、部分写接口）在 `ai-docs/移动端设计/迁移/交付说明_pilipala.md` 中逐条列明。

> 迁移对照截图（双端视觉证据）体积过大，不随仓库分发；仓库只保留源码与文档，文档中指向 `*-assets/` 的图片路径在本仓库不可达。

## 快速开始

需要 HBuilderX **5.26+**（uni-app x 蒸汽模式工具链随其分发）：

1. 用 HBuilderX 打开 `uniAppX/` 目录
2. 运行 → 运行到手机或模拟器（Android）
3. 首次运行需下载对应调试基座

> 只想看迁移结论与差异？直接读 `ai-docs/移动端设计/迁移/交付说明_pilipala.md`。

## 目录结构

```
pilipala-uni-app-x/
├── uniAppX/         # uni-app x 迁移工程（主角）
│   ├── pages/       # 页面（49 条路由对应）
│   ├── components/  # 业务组件
│   ├── api/         # 接口层（签名、Cookie、状态码白名单）
│   ├── stores/      # 状态
│   └── uni_modules/ # uts 原生插件（如 pl-cookie 的 Cookie 桥）
├── lib/             # 原 Flutter 工程（事实源，只读）
├── ai-docs/         # 迁移设计 / 需求 / 进度 / 交付说明
├── android/ ios/ macos/ windows/ linux/ web/   # 原 Flutter 各端壳
└── LICENSE          # GPL-3.0
```

## 致谢与原项目

本项目是开源项目 [piliPala](https://github.com/guozhigq/pilipala) 的迁移分支，原项目由 [guozhigq](https://github.com/guozhigq) 及众多贡献者用 Flutter 开发，是 B 站第三方客户端中体验与工程质量俱佳的作品。没有它，就没有这次迁移的对照基准。

原项目的功能设计、交互与视觉资产版权归原作者及贡献者所有。

## 许可证

本项目遵循 **GNU General Public License v3.0**，与上游 piliPala 一致，完整条款见 [LICENSE](LICENSE)。

- 原 piliPala 代码：Copyright (C) guozhigq 及 piliPala 贡献者
- uni-app x 迁移部分：Copyright (C) 爻枢 code 及贡献者
- 分发衍生作品时请保留上述版权声明，并以同一许可证开源
