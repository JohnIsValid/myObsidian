## UI与界面

### Camera.xlsx

**伤害震屏|CameraDamageShake**（7条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | string | `sn` | sn |
| cr | string | `shakeRes` | 震屏资产 |
| c | float | `scaleMin` | 最小抖动强度 |
| c | float | `scaleDefault` | 默认抖动强度 |
| c | float | `scaleMax` | 最大抖动强度 |
| c | float | `hpRateMin` | 最小生效血量比例 （如 5 代表 5%） |
| c | float | `hpRateDefault` | 默认生效血量比例 （如 20 代表 20%） |
| c | float | `hpRateMax` | 最大生效血量比例 （如 80 代表 80%） |

**镜头使用区域表|CameraAreaUse**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | areasn |
| cr | string | `modifier` | modifier蓝图名 |

### CustomUI.xlsx

**个人界面设置|CustomUI**（82条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | String | `TargetUI` | 目标UI蓝图名 |
| c | String | `TargetUIWidget` | 目标UI控件名 |
| c | String | `SettingUI` | 设置UI蓝图名 |
| c | String | `SettingUIWidget` | 设置UI控件名 |
| c | boolean | `CanAlpha` | 是否可设置透明度 |
| c | float | `AlphaMin` | 透明度最小值 |
| c | float | `AlphaMax` | 透明度最大值 |
| c | boolean | `CanScale` | 是否可设置缩放 |
| c | float | `ScaleMin` | 缩放最小值 |
| c | float | `ScaleMax` | 缩放最大值 |
| c | boolean | `CanMove` | 是否可调整位置 |
| c | String | `FocusExpendWidget` | 聚焦时展开内容 |
| c | String | `RelateMainUI` | 关联主UI（蓝图名） |
| c | int | `UsingCondition` | 启用条件（这里是枚举，具体逻辑客户端定义） |

### FaceSlappingUI.xlsx

**拍脸UI配置|FaceSlappingUI**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | String | `sn` | 与Gui Sn对应 |
|  | Text | `desc` | 描述 |
| c | int | `priority` | 优先级 不能填0！ 数字越小，优先级越高 |
| c | int | `push_type` | 推送类型 0：各自UI自定义弹出 1：每日首次登录弹出 2：每次登录弹出 |
| cs | int | `isClose` | 是否关闭 填1关闭 |

### FunctionLocation.xlsx

**功能入口|FunctionLocation**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 序号 |
| c | Text | `funName` | 功能名称 （图标下方显示） |
| c | int | `funSN` | 功能sn (索引FuncOpen) |
| c | int | `funLevel` | 功能级别 （1=主界面入口） |
| c | int | `funGroup` | 所属聚合 （1左上/2右上/3左侧/4左下/5右下/6战斗右下） |
| c | boolean | `open` | 展开是否显示 |
| c | boolean | `close` | 收起是否显示 |
| c | int | `openOrder` | 展开排序参数 |
| c | int | `closeOrder` | 收起排序参数 |

- **Sheet2**（1行×1列）— 非标准表头，可能是说明/辅助sheet

- **Sheet3**（1行×1列）— 非标准表头，可能是说明/辅助sheet

### Gui.xlsx

**UI界面|Gui**（404条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | String | `sn` | sn 与Lua文件名对应 |
|  | Text | `desc` | 备注 |
| c | String | `bpName` | 对应的蓝图资源 该字段用于快速查找文件， 实际以Lua代码为准 |
| cr | String | `actorHouseBpName` | 使用的ActorHouse 的蓝图名称 |
| c | String[] | `tags` | 界面标签 用于辅助搜索界面 |
| c | int | `uiType` | UI类型，数字大的会盖住小的 详见 [UI类型说明] 分页 1: 头顶界面 2: 主界面 3: 手机界面 4: 低于功能界面 5: 功能界面 6: 高于功能界面... |
| c | int | `zOrderOffset` | Z-Order偏移值 在UI类型基础上的层级叠加值 取值范围(-5, 5] |
| c | bool | `bJoinOpenChain` | 是否启用浮动层级  启用后可以无视Z-Order来覆盖其它未启用的界面 启用浮动层级的界面互相之间按打开的时间顺序决定覆盖关系  建议只用于类型5、6的界面 |
| c | int | `fullscreenType` | 全屏类型 会影响逻辑判断与场景渲染 0：非全屏 1：漏边全屏(逻辑全屏，不关渲染) 2：全屏(逻辑全屏，关闭渲染) |
| c | bool | `bShowCursor` | 是否显示 鼠标指针 |
| c | bool | `bDisableKey` | 界面显示时 是否屏蔽快捷键 |
| c | boolean | `autoLoad` | 是否自动加载 标记为TRUE的界面将在 场景加载后自动显示 |
| c | boolean | `loadPriority` | 是否同步加载 |
| c | int | `mutexSN` | 界面互斥配置 控制显示该界面时要临时隐藏掉哪些界面 对应 MutextUI 表 |
| c | bool | `forceNoMutex` | 强制忽略互斥 该字段为true的界面将 不会因为其它界面而被隐藏 |
| c | bool | `hideOnClickOther` | 是否可以通过 点击其他界面关闭 |
| c | bool | `hideOnClickWhite` | 是否可以通过 点击空白位置关闭 |
| c | bool | `bCanEscapeClose` | 是否可以通过 按ESC键关闭 |
| c | bool | `bShowInAim` | 在瞄准时 是否可以显示 |
| c | bool | `autoHideWhenPlayStory` | 是否在剧情开始时 自动关闭 |
| c | bool | `DisplayUIWhenTransfer` | 切场景时是否保留界面 TRUE:保留 FALSE:切场景时关闭 |
| c | bool | `bDestroyWhenChangeMap` | 低配机切场景时是否销毁界面 常驻UI一般不配， 主要用于功能UI和一次性UI |
| c | bool | `bStillShowOnDead` | 死亡时是否保留界面 TRUE:保留 FALSE:死亡时关闭 |
| c | int[] | `currencySNs` | 货币栏SN 多个值则按顺序 对应界面内的子分页 |
| c | String[] | `OpenSFX` | 开启界面音效 |
| c | String[] | `HideSFX` | 关闭界面音效 |
| c | int | `UISoundState` | Wwise用UI_Status： 1=UI_Status_Phone 2=UI_Status_FullScreen 3=UI_Status_OnlyVO |
| c | bool | `bNeedBlur` | 是否需要UI 淡入淡出效果 |
| c | bool | `bForceRefresh` | 是否需要强制刷新 |
| c | float | `ForceRefreshTime` | 强制刷新时间 |
| c | bool | `bUsedActorView` | 是否有Actor显示 |
| c | bool | `UpgradeQuality` | 是否提升界面 存在时画面质量 |
| c | int | `CacheTime` | UI在内存中缓存的时间 -1:立马删除  0:永久缓存 >0:缓存的时间    单位秒 |

**界面互斥配置|MutexUI**（34条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 唯一标识 |
|  | String | `desc` | 备注 |
| c | int[] | `toHideTypes` | 要隐藏的界面类型 -1表示所有类型 |
| c | String[] | `toHideTags` | 要隐藏的界面标签 |
| c | String[] | `toHideViews` | 要隐藏的界面名称 |
| c | String[] | `ignoreTags` | 要忽略的界面标签 |
| c | String[] | `ignoreViews` | 要忽略的界面名称 |

**跳转界面|OpenUI**（52条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 唯一标识 |
| c | String | `guiSn` | 与Lua文件名对应 配置后UI界面|Gui跳转打开链bJoinOpenChain字段公式自动配成true （支持多层级跳转能够返回上级界面） |
|  | Text | `desc` | 备注 |
| c | String[] | `params` | ShowView参数 |
| c | int | `funcopen` | 功能开启ID |

**货币界面|CurrencyModel**（57条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 唯一标识 |
| c | int | `position` | 货币栏位置类型是用来配置不同界面货币栏样式和位置的，目前有3个类型，详见类型说明sheet页： 1:右上角，通用 2.右上角(位置偏下，白字，适合黑底) 3.右... |
| c | int | `currency1` | 从左到右，从上到下的1 |
| c | String | `openUI1` | 关联打开的界面，如果没有配置，则弹出物品tips界面 |
| c | int | `currency2` | 从左到右，从上到下的2 |
| c | String | `openUI2` | 关联打开的界面，如果没有配置，则弹出物品tips界面 |
| c | int | `currency3` | 从左到右，从上到下的3 |
| c | String | `openUI3` | 关联打开的界面，如果没有配置，则弹出物品tips界面 |
| c | int | `currency4` | 从左到右，从上到下的4 |
| c | String | `openUI4` | 关联打开的界面，如果没有配置，则弹出物品tips界面 |

- **UI类型说明**（8行×4列）— 辅助sheet，首行: 界面类型, 默认层级, 说明, 示例图

- **货币position类型说明**（5行×3列）— 辅助sheet，首行: 类型1, 说明, 附图

### Guide.xlsx

**新手引导|Guide**（271条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| c | int | `nextSn` | 下一引导 |
| c | boolean | `lock` | 是否锁屏压黑 |
| c | boolean | `isRepeatable` | 可重复触发 |
| c | boolean | `pause` | 是否暂停游戏（时间缩放为0） |
| c | float | `abortTime` | 防卡死时间 默认3秒 |
| c | int | `type` | 触发条件 |
| c | String | `typeValue` | 条件参数（根据前面的触发条件决定） |
| c | int | `postTriggerAction` | 当引导被触发要显示,额外的操作  1:检查当前武器SN(满足直接完成) 2:延后触发时机(秒)这个不能用在整组引导里的子引导 3:birthsn|血量百分比，如... |
| c | string | `postTriggerValue` |  |
| c | String | `controlPath` | 控件路径 |
| c | string | `pathParam` | 与之前路径搭配使用,需要对应界面实现GetGuideWidget的方法 |
| c | String | `receiver` | 接收事件的控件名（实际响应控件）。receiver都是controlpath的子控件，不需要加斜杠。如是receiver里的东西和controlpath是平级关... |
| c | float[] | `interationArea` | 交互区域位置与大小 |
| c | boolean | `circle` | 是否是圆环 |
| c | int | `maskType` | 1：中心亮+挖孔的遮罩 |
| c | int | `textFrame` | 提示文本框类型 |
| c | int | `margin` | 提示框的额外边距 |
| cr | String | `iconRes` | 引导的头像资源名称 |
| cr | String | `imageRes` | 图片资源名称 |
| c | Text | `textValue` | 引导标题 |
| c | int | `action` | 引导结束时的行为 0 触发点击操作1 手机界面翻到第二页 -1 什么都不做  |
| c | int[] | `specialComplete` | 特殊完成条件 |
| c | String[] | `specialValue` | 特殊完成参数 |
| c | int | `rollback` | 返回上一条引导的条件 |
| c | Text | `textDesc` | 引导描述 |
| c | int | `guideBook` | 引导手册 |
| cr | String[] | `guideImage` | 引导图片、视频 |
| c | int | `platform` | 支持的平台 |
| c | int | `fingerType` | 手指类型 |
| c | int | `fingerAnim` | 手指动画 |
| c | int | `playerType` | 支持的玩家类型 |
| c | int[] | `conditions` | 引导可见的限制条件 |
| c | boolean | `onlyTriggerInMainView` | 只在主界面的时候触发引导 |
| c | int | `hudBlackListSn` | 消息队列黑名单Sn |
| c | String[] | `mutexView` | 互斥的界面 |
| cr | String | `voice` | 语音 |

- **触发条件**（28行×1列）— 辅助sheet，首行: 1 按等级开启

### GuideBook.xlsx

**引导手册类型|GuideBookType**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 显示时默认小的sn在前面(0特殊给全部用) |
| cr | String | `icon` | 类型图标 |
| c | Text | `name` | 类型名字 |

**引导手册|GuideBook**（16条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| c | int | `sort` | 数值越小排序越靠前 |
| c | Text | `title` | 标题 |
| c | int | `type` | 所属分类 |
| cr | String[] | `assetList` | 显示的图片 |
| c | Int[] | `content` | 内容 |
| c | String[] | `searchKeys` | 搜索时特殊关键字 |
| c | boolean | `bInitialAvailable` | 是否初始可用 |
| c | int | `showTipTime` | 引导标签展示时间(0则表示不进行展示) |

### GuideLifmunk.xlsx

**引导翠叶鼠|GuideLifmunk**（64条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `BucketBirth` | 桶的BirthSN |
| cs | int | `LifmunkBirth` | 帕鲁的BirthSN |
| cs | int | `TreasureBoxBirth` | 宝箱的BirthSN |
| cs | int | `PatrolPathSN` | PatrolPath路径SN |
| cs | float | `LifmunkPauseDis` | 帕鲁超过该距离会暂停 单位米 |
| cs | float | `LifmunkResetDis` | 帕鲁超过该距离会重置现场 单位米 |
| csr | String | `LifmunkSpawnMTG` | 翠叶鼠出现时的蒙太奇 |
| csr | String | `LifmunkWaitMTG` | 玩家远离时播放的蒙太奇 |
| csr | String | `LifmunkDigMTG` | 挖掘宝箱的蒙太奇 |
| csr | String | `LifmunkFoundMTG` | 挖出宝箱后的蒙太奇 |
| c | int | `InteractHintStr` | 交互完的提示Str |
| cs | boolean | `LifmunkAlwaysSpawn` | 被困帕鲁是否同时生成 |
| csr | String | `LifmunkIdleMTG` | 被困帕鲁同时生成后，播放的MTG |

### GuideNew.xlsx

**引导触发|GuideTrigger**（218条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| c | boolean | `isRepeatable` | 可重复触发 |
| c | int | `playerType` | 支持的玩家类型 |
| c | int | `platform` | 支持的平台 |
| c | int | `type1` | 触发条件 |
| c | String | `typeValue1` | 条件参数（根据前面的触发条件决定） |
| c | int | `type2` | 触发条件 |
| c | String | `typeValue2` | 条件参数（根据前面的触发条件决定） |
| c | int | `type3` | 触发条件 |
| c | String | `typeValue3` | 条件参数（根据前面的触发条件决定） |
| c | boolean[] | `bIgnoreCancel` | 每个条件能否中断当前的引导 |
| c | boolean | `bInterruptAsComplete` | 被打断视为完成 |
| c | int[] | `actionTypes` | （行为类型） |
| c | String[] | `actionValues` | 参数间用|分隔 |

**界面引导|GuideView**（211条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | int[] | `prevActions` | 前置动作,比如等待 X 秒 (也在行为类型里面) |
| c | string[] | `prevActionParams` |  |
| c | int[] | `locks` | 数组有四个元素:0代表不启用,1代表启用 锁界面, 锁左摇杆, 锁右摇杆, 禁止点击空白关闭界面(装备斧子这个的ui会因为点击到引导关闭导致出问题)  |
| c | boolean | `pause` | 是否暂停游戏（时间缩放为0） |
| c | float | `abortTime` | 防卡死时间 默认3秒 |
| c | String | `controlPath` | 控件路径 |
| c | string | `pathParam` | 与之前路径搭配使用,需要对应界面实现GetGuideWidget的方法 |
| c | String | `receiver` | 接收事件的控件名（实际响应控件）。receiver都是controlpath的子控件，不需要加斜杠。如是receiver里的东西和controlpath是平级关... |
| c | int[] | `margin` | 提示框的额外边距,长高可以分开填写,只填一个数字则认为是相同的两个数组 |
| c | int | `pathOperation` | 对目标的操作 0:覆盖点击(用引导ui的点击) 1:露出目标区域,完全依赖其他功能 |
| c | boolean | `circle` | 是否是圆环 |
| c | int[] | `action` | 引导结束时的行为  (也在行为类型里面) |
| c | string[] | `actionParams` |  |
| c | int | `maskType` | 0:无遮罩 1：中心亮+挖孔的遮罩 2:挖孔遮罩 |
| c | int | `textFrame` | 提示文本框类型 |
| cr | String | `iconRes` | 引导的头像资源名称 |
| c | int | `iconType` | 引导的头像的类型 0:小图标 1:头像样式大图标 |
| cr | String | `imageRes` | 小屏图片、视频资源名称 |
| c | Text | `textValue` | 引导标题 |
| c | Text | `textDesc` | 小屏引导描述 |
| c | int[] | `completeTypes` | 特殊完成条件 |
| c | String[] | `completeValues` | 特殊完成参数 |
| c | int | `fingerType` | 手指类型 |
| c | int | `fingerAnim` | 手指动画 |
| c | int | `hudBlackListSn` | 消息队列黑名单Sn |
| c | String[] | `pauseView` | 有这些界面时引导暂停 |
| cr | String | `voice` | 语音 |

**图文引导|GuideHelpView**（7条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | boolean | `pause` | 是否暂停游戏（时间缩放为0） |
| c | Text | `textTitle` | 引导总标题 |
| c | Text | `textSubTitle1` | 引导副标题1,视频的不填 |
| c | Text | `textDesc1` | 引导描述1str  |
| c | Text | `textSubTitle2` | 引导副标题2,视频的不填 |
| c | Text | `textDesc2` | 引导描述2  |
| c | Text | `textSubTitle3` | 引导副标题3,视频的不填 |
| c | Text | `textDesc3` | 引导描述3  |
| c | int[] | `textSubTitleStrs` | 引导副标题Str,视频的不填 |
| c | int[] | `textDescStrs` | 引导描述的str  |
| c | int[] | `specialComplete` | 特殊完成条件 |
| c | String[] | `specialValue` | 特殊完成参数 |
| cr | String[] | `guideImage` | 引导图片、视频 |
| c | int | `hudBlackListSn` | 消息队列黑名单Sn |

- **触发条件**（29行×2列）— 辅助sheet，首行: 1, 角色等级≥N

- **行为类型**（9行×2列）— 辅助sheet，首行: 1, 界面引导(GuideView)

- **特殊完成条件**（11行×2列）— 辅助sheet，首行: 条件ID, 条件描述

### HeadUpPaoPao.xlsx

**头顶泡泡数据|HeadUpPaoPao**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn   |
| cr | String | `IconRes` | 显示图片资源 |
| cr | String | `AniName` | 播放的动画名字 |
| c | int | `IsSync` | 是否同步其他玩家 0不同步 1 同步到其他人 |
| c | int | `AnimType` | 1-> MTG 2-> 动画 |

### HeadUpWidget.xlsx

**头顶显示|HeadUp**（14条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn 暂时没用到 废弃的   |
| c | int | `actorType` | 主类型 |
| c | int | `actorSubType` | 子类型类型Actor保持一致 |
| c | int | `campRelation` | 和玩家阵营关系 |
| c | float | `showDistance` | 多少（米）之内显示 0 不显示 |
| c | float | `aimDistance` | 多少（米）之内瞄准显示 0不显示 |
| c | float | `hideTime` | 不瞄准后 头顶UI消失时间 |
| c | boolean | `needBlood` | 残血显示 载具 采集物等 用到 |

**头顶显示Widget|HeadUpWidgetInfo**（55条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn对应EHeadUpItemType   |
| c | String[] | `widgetName` | lua类名 |
| c | String[] | `slotName` | 插槽名字 会根据名字自动生成 注意规范 |
| c | int[] | `priority` | 头顶位置的优先级 越低越在头顶UI的下方 100 名字版上方的  |

### HudQueue.xlsx

**主界面弹出消息队列|HudQueue**（55条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 唯一标识（需要与代码配置一致，不可随意更改，对应ENewHudMsgType） |
| c | int | `AreaType` | 区域划分 0：固定提示 1：T1 2：T2 3：T3 4：L1 5：L2 6：L3 7：R1 8：R2 9：D1 10：D2 11:T0 |
| c | int | `Order` | 同区域排序 值越大靠前 |
| c | int | `MutexGroup` | 互斥组 |
| c | int | `MutexOrder` | 互斥排序 值越大靠前 |
| c | int | `MutexAction` | 互斥操作行为 0：等待 1：打断（高优先级打断正在播放的低优先级消息） |
| c | boolean | `bShowInMainView` | 是否只在主界面显示 仅D区生效 |
| c | int[] | `BlockHudTypeList` | 屏蔽消息类型列表 (显示当前消息时需要屏蔽某些消息时使用) |
| c | int | `CacheTime` | 消息被屏蔽时缓存时间(单位:秒) |
| c | int | `BlockType` | 当正在播放的消息自身被屏蔽的时处理方式： 0:自动播放完毕 1:消息中断并移除 2:消息隐藏并缓存 |
| c | boolean | `bExclusive` | 是否为界面独占的消息 |
| c | String | `ViewName` | 消息提示对应的lua文件名 |

**消息黑名单|HudBlackList**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 消息黑名单Sn |
| c | int[] | `blockAreaType` | 屏蔽消息区域类型 |
| c | int[] | `messageType` | 不屏蔽当前区域的某些特殊消息 |

- **#说明**（10行×3列）— 辅助sheet，首行: 区域, UMG, 程序View

### LimitLogo.xlsx

**18禁图配置|LimitLogo**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | String | `sn` | sn 与Lua文件名对应 |
| cr | String | `VN` | 越南版本是否显示 |
| cr | String | `TH` | 泰国版本是否显示 |
| cr | String | `KR` | 韩国版本是否显示 |
| cr | String | `CN` | 中国版本是否显示 |
| c | Float | `Alpha` | 不透明度 |

**18禁图配置|LimitLogo_vntishen**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | String | `sn` | sn 与Lua文件名对应 |
| cr | String | `VN` | 越南版本是否显示 |
| cr | String | `TH` | 泰国版本是否显示 |
| cr | String | `KR` | 韩国版本是否显示 |
| c | Float | `Alpha` | 不透明度 |

### MutexManagement.xlsx

**玩法互斥管理|MutexGameplayManagement**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 类型 1=有失败条件的主线任务 2=差事任务 3=驾驶挑战 4=职业任务-计程车 5=职业任务-消防车 6=公共事件 7=全城事件 8=星级挑战 9=挑战宝箱 ... |
| c | Text | `name` | 类型名称 |
| c | int | `tipsUIType` | 该类型开启前的提示UI类型 1=界面确认开启：玩家确认后会放弃互斥的玩法 2=提示倒计时：倒计时结束后，会放弃互斥的玩法 |
| c | int | `tipsUIParam` | 提示UI相关参数 倒计时时间 |
| c | int[] | `mutexGameplay` | 开启时，需要判断已有哪些互斥类型 |

### PhotoSpot.xlsx

**景点拍照配置|PhotoSpot**（149条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 景点actorBirthSn |
| cs | int | `index` | 序号(服务器存档用) |
| c | Text | `name` | 名字 |
| c | Location | `heroPosition` | 拍照界面打开时，玩家的位置(单位是米) |
| c | float[] | `cameraFov` | 相机默认fov,fov下限,fov上限 |
| c | float[] | `cameraDistance` | 相机默认距离,距离下限，距离上限(单位是米) |
| c | float[] | `cameraYaw` | 相机水平默认朝向，水平朝向下限，水平朝向上限 |
| c | float[] | `cameraPitch` | 相机竖直默认朝向，竖直朝向下限，竖直朝向上限 |
| cs | int | `reward` | 奖励dropSn |

- **拍照点数据**（149行×18列）— 辅助sheet，首行: CameraName, ActorType, 拍照界面打开时，玩家的位置(单位是米), 相机默认fov,fov下限,fov上限

### Photograph.xlsx

**天气|PhotoTime**（8条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 类型 |
| c | int | `gameTime` | 游戏内时间 |
| cr | String | `pictrue` | 图片资源（列名为picture拼写错误，与导出一致） |
| c | Text | `name` | 名字 |

**滤镜|PhotoFilters**（18条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 序号 |
| cr | String | `pictrue` | 图片资源（列名为picture拼写错误，与导出一致） |
| c | Text | `name` | 名字 |
| cr | String | `param` | 滤镜文件 |

**日常表情动作|DailyAct**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 序号 |
| cr | String | `icon` | 图标 |
| c | Text | `name` | 名字 |
| cr | String | `actParam` | 动作文件 |

**自拍动作|SelfieAct**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 序号 |
| cr | String | `icon` | 图标 |
| c | Text | `name` | 名字 |
| cr | String | `actParam` | 动作文件 |

### UICameraAdapter.xlsx

**UI镜头的适配|UICameraAdapter**（30条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 不同界面适配的sn |
| c | float[] | `cameraPixelOffset` | 实际在背景上的像素偏移,不填就默认为0,0,0 |
| c | boolean | `bUseSocketPos` | 相机是否以Socket的相对位置,否则是相对ActorHouse的原点 |
| c | float[] | `cameraLookAtPos` | 相机注视点的相对于actorhouse原点的位置 bUseSocketPos 为 false的时候才生效 不填就默认为0,0,0 |
| c | float[] | `exSmoothTargetRotator` | 相对于载具,时装镜头参数的额外旋转 |

**道具镜头参数|ItemCameraParam**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` |  |
| c | float[] | `cameraRotation` |  |
| c | float[] | `cameraLookAtOffset` |  |
| c | float | `cameraSpringArmLength` |  |

### UIHeadUpShow.xlsx

**头顶显示参数|UIHeadUpShow**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` |  |
| c | float | `HeadUpShowDistance` | 关注目标距离 |
| c | int | `PlayerForwardAngleShowHead` | 关注目标夹角 |
| c | float | `HeadUpCheckDistance` | 瞄准目标距离 |
| c | float | `HeadUpCheckRadius` | 准星半径 |
| c | float | `ShowHeadUpMaxDistance` | 警戒目标距离 |
| c | int | `HeadUpSubShowAngle` | 警戒目标夹角 |
| c | int | `HeadUpEnemyMainAmount` | 一级血条数量 |
| c | int | `HeadUpEnemySubAmount` | 二级血条数量 |
| c | boolean | `IsPlayerNameShow` | 显示其他玩家名字 |

**宠物状态气泡|IllBubble**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` |  |
| cr | string | `icon` | 状态使用的图标 |
| c | int | `priority` | 优先级（数小的优先级高） |

**骑乘角色血条位置|HeadUpRide**（8条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` |  |
| c | string | `pose` | 骑乘姿势 |
| c | string | `pos` | 挂点位置（默认为headup挂点位置） |