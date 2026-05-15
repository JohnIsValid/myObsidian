## 引导与教程

### ActionVertification.xlsx

**动作验证|ActionVerify**（135条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 玩法sn |
| cs | int | `areaSn` | 交互区域sn |
| cs | int | `directorBirthSn` | 总导演ActorBirth |
| cs | int[] | `npcBirthSn` | 表演型NPC BrithSn |
| c | Text | `desc` | 描述信息 |
| cr | String | `interactIcon` | 开启交互按钮图片 |
| c | String | `interactText` | 开启交互按钮文字 |
| cr | String | `audioEvent` | 对应音乐 |
| cs | int[] | `actionButton` | 交互动作按钮对应的动作序列sn |
| cs | int[] | `needFinishNum` | 要求玩家完成的交互动作数量 |
| cs | int | `totalNum` | 一轮玩法总共会播放的动作数量 |
| cs | int[] | `actionSn` | 索引到动作表|ActionVerifyActions |
| cs | int[] | `rewardId` | drop奖励id |

**动作表|ActionVerifyActions**（12条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 动作SN |
| cs | int | `interactSn` | Interact表SN（验证动作） |
| cs | int | `time` | 动作验证时间 |
| cs | int[] | `npcBrithSn` | 表演型NPC序号(索ActorBirth表) |
| csr | String[] | `actionName` | 动作 （配置蒙太奇资源（MTG_...），修改后重新打版） |
| cs | int[] | `shout` | 喊话(索VisualCommunication表) |
| cs | int | `loopTimes` | 循环次数 |

### BeginnerGuide.xlsx

**新手手册章节|BeginnerGuideChapters**（7条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 章节Sn |
| c | Text | `chapterName` | 章节名称 |
| cr | String | `pic` | 章节介绍图片 |
| c | Text | `chapterDesc` | 章节描述 |
| cs | int[] | `questSn` | 章节下的任务ChaptersQuest的Sn |
| cs | int | `requiredQuestNum` | 必做任务数量 |
| cs | String | `reward` | 章节奖励 itemSn:数量,itemSn:数量…… |
| c | int | `autoTraceMandatoryQuestSn` | 自动追踪必做任务的触发Quest |

**手册章节任务|ChaptersQuest**（37条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 任务Sn |
| cs | int | `type` | 任务类型 1=必做 2=选做 3=挑战 |
| c | Text | `unlockDesc` | 已解锁后任务描述 |
| cs | int | `unlockType` | 解锁条件： 0或不填=不需要解锁 1=完成同章节任务必做数量 2=角色达到指定等级解锁 |
| cs | int[] | `unlockTypeParam` | 解锁参数 1=数量 2=等级 |
| c | Text | `lockDesc` | 未解锁时描述 |
| cs | int | `questType` | 任务类型  |
| cs | boolean | `keepListening` | 是否未开启时就监听 |
| cs | int[] | `questParam` | 任务参数 |
| cs | int[] | `extraQuest` | 前者任务类型未完成时转化为该任务 |
| c | boolean | `showProgressNum` | 是否需要显示进度计数 如果是任务组和非计数任务，建议不显示 True显示，其他不显示 |
| cs | String | `reward` | 任务奖励 |
| cs | int | `pursuitType` | 前往类型 1=打开界面，参数为openUI表sn 2=追踪任务，配置任务sn,(引导sn，可选） 3=触发引导，配置guide表sn 选做、挑战必须填前往，否则... |
| cs | int[] | `pursuitParam` | 前往参数，根据类型配置对应参数 |
| cs | int | `chapterSn` | 所属章节sn |

- **类型备注**（22行×4列）— 辅助sheet，首行: 目标类型, 名称, 配置参数, 参数说明

### Handbook.xlsx

**图鉴|Handbook**（26条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 图鉴ID （此列不可轻易改变，id为存库数据） |
| c | Text | `name` | 图鉴名称 |
| ics | int | `type` | 所属大类 |
| cs | int | `typesn` | 大类数据 |
| cs | int | `nexttype` | 所属小类 |

### Help.xlsx

**帮助界面|Help**（41条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` |  |
| c | String | `GUISN` | 索引Gui表中SN，该界面上的问号点击弹出玩法介绍 |
| c | int | `Slot` | 该页使用模板 1=标题+描述+星级奖励（当前不可用） 2=宽图片+标题+描述（优先选择） 3=窄图片+标题+描述（当前无窄图） 4=标题+描述 小（当前不可用）... |
| c | int | `Page` | 页数 （页数为1时，不显示代表页签的小点） |
| c | Text | `Title` | 大标题 |
| c | Text | `Content` | 描述内容 |
| cr | String | `Picture` | 插图 （不配默认显示UI上的图） 模板3用配看板娘（T_HelpPic2） 模板1，2配玩法介绍图 看板娘和玩法介绍图尺寸不一样，不要配错 |
| c | int[] | `StarLevel` | 如果是模板1，对应的星级 |
| c | String | `Conditions` | 如果是模板1，模板1的条件 |
| c | String | `ItemSns` | 如果是模板1，奖励item的id |
| c | Text | `TagName` | Tag按钮内容 （如果是模版6 模版6按钮的标题） |

- **PW新备注**（10行×6列）— 辅助sheet，首行: 

- **备注**（70行×24列）— 辅助sheet，首行: 

### NoviceGuidance.xlsx

**新手目标阶段|NoviceGuidanceStage**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 客户端服务器约定Sn为1的是第1个Stage |
| c | Text | `stageName` | 阶段名 |
| c | Text | `stageTitle` | 阶段title |
| c | Text | `stageDesc` | 阶段描述 |
| cs | int | `nextStage` | 下一个stage |
| cs | int[] | `stageQuestSns` | 包含目标 |
| cs | int | `dropSn` | 任务奖励 （最多包含四种道具） |
| c | int | `hudShowReward` | hud奖励预览item |

**新手目标任务|NoviceGuidanceQuest**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `goalType` | 目标类型 |
| cs | int[] | `goalParam` | 目标参数 |
| c | Text | `goalTitle` | 任务title |
| c | Text | `goalDec` | 任务描述 |
| cs | String | `reward` | 奖励 （策划规定只配1个） （装备格式-物品Sn:Num:Color:Level） |
| cs | int | `funcopenSn` | 对应的功能开启表FuncOpen中的sn（-1代表不限制） |
| c | int | `hudShowRewardLevel` | HUD显示奖励优先级 |
| c | int | `jumpClose` | 跳转时是否关闭本界面 0-否 1-是 |
| c | int | `jumpOpenMainFold` | 跳转是否打开主界面折叠区 0=否 1=是 |
| c | int | `jumpOpenCellphone` | 跳转时是否打开手机界面 0=否 1=手机第1页 2=手机第2页 |
| c | int | `guideSn` | 播放引导 Guide表Sn |
| c | int | `clickType` | 点击事件类型 （见点击类型页签） |
| c | int[] | `clickParam` | 点击事件参数 （见点击类型页签） |

**未开启提示|NoviceGuidanceHint**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn 对应funcOpen表中FuncOpen_tishen中的type列 0-等级控制（参数1=等级） 1-提交任务（参数1=任务sn）  |
| c | Text | `textHint` | 未开启提示文本 |
| c | Text | `buttonHint` | 未开启按钮文本 |

- **目标条件list**（28行×3列）— 辅助sheet，首行: 条件类型, 参数格式, 条件描述

- **点击类型click**（12行×3列）— 辅助sheet，首行: clickType, clickParam

- **title规划**（19行×2列）— 辅助sheet，首行: 软脚虾, soft-shell 

### Tutorial.xlsx

**引导类别|TutorialType**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | Text | `name` | 名称 |
| c | int | `sort` | 显示排序 |

**引导条目|TutorialItem**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | int | `preSn` | 前置页sn 不填就是第一条 |
| c | int | `sort` | 显示排序 只有第一条的需要填 |
| c | int | `type` | 引导类型 2 基础 3 世界 4 系统  |
| c | Text | `name` | 条目名字 只有第一条的需要填 |
| c | Text | `title` | 内容页标题 |
| c | Text | `desc` | 内容页描述 |
| c | int | `imageType` | 图片类型 1=视频 2=图片尺寸1 3=图片尺寸2 |
| cr | String | `imageRes` | 图片/视频资源 图片=T_ 视频=FMS_ |
| c | int | `unlockType` | 最近分类列表显示条件类型 0=不显示在最近分类 1=触发引导GuideSN 2=功能开启funcOpenSN 3=完成任务questSN |
| c | int | `unlockParam` | 条件参数 |
| c | int | `clickType` | 按钮功能类型 0=不显示 1=地图图标吸附 2=播放guideSN |
| c | int | `clickParam` | 按钮功能参数 |
| c | Text | `clickName` | 按钮文本 |
| c | int | `clickFuncOpen` | 此FuncOpen后 才可以点 |

**引导任务|TutorialQuest**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| c | int | `sort` | 显示排序 sort相同按sn排 |
| c | Text | `name` | 任务名字 |
| c | Text | `desc` | 任务描述 |
| cs | int | `preSn` | 前置 引导任务sn |
| cs | int | `preQuestSn` | 前置 任务sn |
| cs | int | `preFuncOpenSn` | 前置 功能开启sn |
| cs | int | `goalType` | 目标类型 详见「目标类型说明」 |
| cs | int[] | `goalParam` | 目标参数 |
| cs | int | `dropSn` | 任务完成奖励 及奖励预览 |
| c | int | `clickType` | 点击功能类型 1=地图图标吸附 2=播放guideSN 3=追踪导航某个actor 4=追踪导航某个Area 5=打开界面OpenUI |
| c | int[] | `clickParam` | 点击参数 Type1=MapIconType表SN Type2=Guide表SN Type3=ActorBirth表SN，追踪时长 Type4=Area表SN，... |
| c | int | `mapIconTypeSn` | 地图上指引任务图标 点击功能是3、4，此字段生效 |
| cr | String | `traceEffect` | 场景指引点特效 点击功能是4，此字段生效  基础白色光柱 NS_Tracking_IconBeam01 集合圈提示特效NS_PublicEvent_Gather... |
| cr | String | `traceIcon` | 场景指引图标Icon 点击功能是3、4，此字段生效 |

- **任务目标类型说明**（31行×6列）— 辅助sheet，首行: 类型, 参数配置说明, 其他, 备注