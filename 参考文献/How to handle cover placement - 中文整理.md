---
title: "Episode #2: The Dual Function of Cover"
aliases:
  - "How to handle cover placement"
  - "掩体放置处理方法"
author: "Iuliu-Cosmin Oniscu"
published: 2020-01-26
created: 2026-05-30
source: "https://iuliu-cosmin-oniscu.medium.com/how-to-handle-cover-placement-d10580faac66"
image_mirror_source: "https://news.16p.com/893378.html"
type: article-note
translation: "中文整理版（非逐字全文翻译）"
tags:
  - level-design
  - game-design
  - cover-system
  - article-note
---

# Episode #2：掩体的双重功能——在潜行与战斗布局中引导玩家行动

> 原文：[https://iuliu-cosmin-oniscu.medium.com/how-to-handle-cover-placement-d10580faac66](https://iuliu-cosmin-oniscu.medium.com/how-to-handle-cover-placement-d10580faac66)  
> 作者：Iuliu-Cosmin Oniscu｜发布时间：2020-01-26  
> 说明：这是一份按原文结构整理的中文 Markdown 阅读笔记。为避免整篇逐字转载，正文采用中文转述与要点化翻译；图片按原文/镜像顺序缓存到本地。

![[asset/how-to-handle-cover-placement/01-cover-metrics.jpg]]

## 1. 战斗空间如何由“掩体”组织

原文的核心问题是：**掩体应该如何放置？设计时应采用什么思考流程？**  
答案不是先摆物件，而是先确认掩体在当前游戏类型中的功能。不同品类里，同一个“cover”会承担不同的玩家行为引导职责。

## 2. 潜行游戏：掩体是路径追踪器

在潜行游戏中，掩体首先像一条“可被玩家读取的路径”。玩家借助掩体绕开 NPC 的视线，并在地图中保持机动性。

![[asset/how-to-handle-cover-placement/02-stealth-cover-placement.jpg]]

**潜行掩体放置的基本原则：**

- 玩家会从一个掩体移动到另一个掩体，以避开 NPC 侦测。
- 暴露在 NPC 视线中，会形成一个短暂的“机会窗口”。
- 玩家需要等待 NPC 转头或移开视线，再移动到下一个掩体。
- AI 的转向、观察节奏等参数，会直接影响场景难度。

![[asset/how-to-handle-cover-placement/03-window-opportunity-distance-look-duration.png]]

因此，潜行场景的难度可以从两个基本变量开始拆解：

| 参数 | 设计影响 |
|---|---|
| Traveling Distance / 移动距离 | 掩体之间越远，玩家暴露时间越长 |
| NPC Look Duration / NPC 注视时长 | 敌人看向玩家路径的时间越长，机会窗口越窄 |

设计师可以通过“掩体间距 × NPC 观察/转向节奏”的组合，制造不同强度的潜行压力。

## 3. 掩体射击：掩体是规避火力与重组战术的位置

在掩体射击游戏中，掩体的功能从“躲避视线”转向“躲避火力、观察战场、转移阵位”。玩家通过掩体移动来规避交叉火力，并寻找反击角度。

![[asset/how-to-handle-cover-placement/04-cover-shooter-simplified.png]]

这里仍然可以沿用“机会窗口”的思路，只是将潜行中的 **NPC Look Duration** 替换成战斗中的 **Shooting Duration**。

![[asset/how-to-handle-cover-placement/05-window-opportunity-distance-shooting-duration.png]]

| 潜行场景 | 掩体射击场景 |
|---|---|
| 移动距离 × 敌人注视时长 | 移动距离 × 敌人射击持续时间 |
| 玩家等敌人移开视线 | 玩家等火力间隙或压制减弱 |
| 目标是避免被发现 | 目标是避免被击中并重构战术位置 |

## 4. 混合玩法与开放世界：掩体必须“说得通”

一些混合型游戏会把潜行与战斗掩体融合到同一个空间中，例如 GTA、Watch Dogs、Mafia 3 这类开放世界游戏。  
问题在于：开放世界还需要维持沉浸感，掩体不能显得像“为了战斗而硬塞的箱子”。

因此，掩体放置不仅要满足玩法，还要在叙事、建筑与环境逻辑上显得自然。原文提出的关键方法是：**Implied Spaces / 隐含空间**。

## 5. 隐含空间：让掩体成为空间逻辑的一部分

**隐含空间**指的是：由几何、功能或环境边界暗示出来的空间细分。它来自建筑学思路，也能用于解决关卡设计中的掩体放置问题。

![[asset/how-to-handle-cover-placement/06-implied-space-example.png]]

与其把掩体当成孤立物件摆进场景，不如通过墙体凹槽、辅助空间、边界转折、家具/结构关系等方式，让掩体成为空间组织的一部分。

![[asset/how-to-handle-cover-placement/07-implied-space-integration.png]]

通过在空间中制造 niche / 凹位，可以同时达成三件事：

1. 提供可用掩体；
2. 形成装饰或辅助功能空间；
3. 不破坏布局中的主要引导线与行进方向。

![[asset/how-to-handle-cover-placement/08-direct-layout-application.png]]

## 6. 面向战斗的隐含空间示例

当场景更偏战斗导向时，隐含空间仍然可以用于组织掩体：让玩家从空间结构中自然读出“哪里能躲、哪里能推进、哪里能观察”。

![[asset/how-to-handle-cover-placement/09-halo-reach-level-exploration.png]]

![[asset/how-to-handle-cover-placement/10-realistic-layout-example.png]]

这类设计的重点不是“摆更多掩体”，而是把可战斗的位置嵌进真实或可信的布局中，使它既服务玩法，又不破坏环境真实性。

## 7. 阴影/遮蔽空间：用光线制造视觉掩体

隐含空间也可以来自光照。阴影或遮蔽区域并不一定是实体掩体，但它们能提供另一种视觉层面的“cover”。

![[asset/how-to-handle-cover-placement/11-shadow-space-example.png]]

如果使用这种方法，关卡设计师需要对环境光源有足够控制：光从哪里来、哪里形成暗区、玩家如何读懂暗区的安全性，都会影响掩体是否成立。

## 8. 设计提炼

- **先定义功能，再放置掩体。** 不同类型游戏中的掩体功能不同。
- **掩体之间的距离就是风险。** 距离越长，玩家暴露在视线或火力下的时间越长。
- **机会窗口是可调难度。** 潜行看“注视时长”，射击看“射击持续时间”。
- **开放世界中的掩体要有叙事和空间理由。** 不要让玩家觉得掩体是硬塞进来的。
- **用建筑逻辑替代箱子逻辑。** 凹位、墙体、功能分区、阴影都可以成为掩体来源。
- **光照也能参与掩体设计。** 阴影区域可以提供视觉掩护，但前提是设计师能控制光源与可读性。

## 图片来源记录

图片文件已缓存到：`asset/how-to-handle-cover-placement/`。  
镜像页面说明其插图主要来自 Iuliu-Cosmin Oniscu 的 Medium 博客与 Tommy Norberg 的相关资料；以下保留下载来源，便于回溯：

  - 01-cover-metrics.jpg: https://di.gameres.com/attachment/forum/202203/09/092210jrtvtv1yexgyxc2h.jpg
  - 02-stealth-cover-placement.jpg: https://di.gameres.com/attachment/forum/202203/09/092210ozk81119m0n0irnc.jpg
  - 03-window-opportunity-distance-look-duration.png: https://di.gameres.com/attachment/forum/202203/09/092210f8v34qtwq6v6hpcv.png
  - 04-cover-shooter-simplified.png: https://di.gameres.com/attachment/forum/202203/09/092211jczquvapz95ujl6i.png
  - 05-window-opportunity-distance-shooting-duration.png: https://di.gameres.com/attachment/forum/202203/09/092212p3r0fffk0exlffe3.png
  - 06-implied-space-example.png: https://di.gameres.com/attachment/forum/202203/09/092212pcwrrchiiyz9zl90.png
  - 07-implied-space-integration.png: https://di.gameres.com/attachment/forum/202203/09/092212gviiz3ur0cve3zr6.png
  - 08-direct-layout-application.png: https://di.gameres.com/attachment/forum/202203/09/092213ncz8phtitee9z1fc.png
  - 09-halo-reach-level-exploration.png: https://di.gameres.com/attachment/forum/202203/09/092214y8ta1m9e09cepty9.png
  - 10-realistic-layout-example.png: https://di.gameres.com/attachment/forum/202203/09/092214wpfffn0qdn0xgxi5.png
  - 11-shadow-space-example.png: https://di.gameres.com/attachment/forum/202203/09/092215ntjww4tj94twzr2r.png

## 参考链接

- 原文 Medium：[https://iuliu-cosmin-oniscu.medium.com/how-to-handle-cover-placement-d10580faac66](https://iuliu-cosmin-oniscu.medium.com/how-to-handle-cover-placement-d10580faac66)
- 图片镜像/中文编译来源：[https://news.16p.com/893378.html](https://news.16p.com/893378.html)
