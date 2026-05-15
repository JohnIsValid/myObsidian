## 音效与表现

### BossStrategy.xlsx

**boss攻略|BossStrategy**（189条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | int | `bossStrategyGroupSN` | boss攻略组 |
| c | Text | `bossName` | boss名字 |
| cr | String | `bossModel` | boss头像地址 |
| cr | String | `bossPicture` | boss立绘地址 |
| c | int | `paluType` | 帕鲁类型图标 |
| c | int[] | `elements` | 属性 元素属性图标ElementIcon |
| c | int[] | `bossSkillSN` | boss技能SN |
| c | int[] | `habitatDescSN` | 战场特点SN 引用：HabitatDesc表单SN |
| c | int[] | `phaseSequence` | 对应关卡阶段 填写关卡阶段序号 |
| c | boolean | `isCatchable` | 是否可捕捉 默认：FALSE |
| c | int | `monsterLevel` | 怪物等级 不填则隐藏条目 |

**攻略索引|StrategyIndex**（189条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | int | `strategyType` | boss攻略组类型 |
| c | int | `param` | 查询参数(基本上是各表对应的sn) |
| c | int | `strategyGroupSn` | 攻略组Sn |

**战场特点描述|HabitatDesc**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | Text | `habitatTitle` | 栖息地标题 |
| c | Text | `habitatDesc` | 栖息地描述 |
| cr | String | `habitatIcon` | 栖息地icon |

### Director.xlsx

**导演|Director**（15条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `ShowHeadUpDistance` | 特殊导演要显示的头顶距离控制 |

### EventTrigger.xlsx

**限时玩法时间|EventTriggerTime**（12条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| csi | int | `type` | 时间配置类型       1=每天                 2=每周                 3=Cron表达式 |
| c | String | `timeShowParam` | 在某个时间后才会显示在列表（状态1） |
| c | String | `timeReadyParam` | 即将开始阶段（状态2） |
| cs | String | `timeParam` | 时间参数                      1=小时:分钟                  2=星期几:小时:分钟                  ... |
| cs | int[] | `eventTriggerLevelSn` | 每天类型的是当前轮的限时玩法等级Sn |
| cs | int | `nextTime` | 下一轮时间（仅每天类型用，预告时间 单位分钟） |
| cs | int | `serverCacheTime` | 服务器缓存时间（秒）与活动时长一样 |
| cs | String | `timeEndParam` | 时间参数                      1=小时:分钟                  2=星期几:小时:分钟                  ... |
| cs | int | `maxEnterTimes` | 每天类型每次活动最大进入次数 |
| cs | String | `notifyTimeParam` | 跑马灯预告时间参数 |
| c | int[] | `notifyParam` | 跑马灯播放总次数,间隔秒数 |
| c | boolean | `isShow` | 每天类型是否显示在界面 |
| c | int | `notifyGoTo` | 通知情况下的跳转OpenUISn |
| c | int | `weeklyActiveSN` | 跳转内容对应的weeklyGamePlay |

**限时玩法等级|EventTriggerLevel**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `level` | 等级范围 |
| cs | int[] | `eventTriggerBaseSn` | EventTriggerBase表Sn |
| cs | int[] | `sceneSn` | 不可以收到玩法推送的场景使用类型sn（填写Scene表中的场景使用类型列） |

**玩法准备大厅|EventTriggerBase**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 准备大厅场景Sn |
| cr | String | `icon` | 图标 |
| c | Text | `name` | 名称 |
| c | Text | `desc` | 描述 |
| c | String | `notifyStrSn` | 跑马灯sn |
| c | int | `noticeTime` | 推送提示持续时间(秒) |
| c | Text | `startDesc` | 开始提示 |
| cs | int | `dropSn` | 参与奖励 |
| cs | int | `gamePlayType` | 玩法类型                                            1=公共事件 2=全城事件 3=团队PVP（仅限两队伍）Grou... |
| cs | int | `gamePlaySn` | 玩法Sn |
| cs | int | `gamePlaySceneSn` | 玩法场景sn |
| cs | int | `areaSn` | 准备大厅进入后位置区域（目前仅支持圆形！） |
| cs | int | `time` | 准备时间 |
| cs | int | `waitStartTime` | 人满或者准备时间到时，等待开始时间 |
| cs | int | `upLimit` | 玩法人数上限 |
| c | String | `helpGUISN` | 帮助界面GUISN配置 |
| c | int[] | `entranceSn` | 保留的入口sn,不配则表示全显示 |
| c | int | `dropPreview` | 预览奖励(总） |
| c | Text[] | `dropPreviewDetailText` | 预览奖励(详细)名 |
| c | int[] | `dropPreviewDetailSn` | 预览奖励(详细)掉落sn |
| s | int | `MinimumLimit` | 低于这个人数传回大世界 （少用 体验不好） |
| s | boolean | `useStageService` | 是否使用场景模块控制流程（false=使用全局服务控制流程) |
| c | int | `levelLimit` | 等级限制，仅玩法预告界面有效 |
| c | String | `gamePlayTypeTxt` | 玩法类型仅玩法预告界面有效 |
| c | int | `noticeViewReward` | 推送界面仅玩法预告界面有效 |
| cr | String | `backImg` | 玩法预告界面背景图 |
| c | int | `showGamePlayGroup` | 预告显示组（仅用来在预告界面去重，配置一样时，取其中之一进行显示，其余不会显示） |

- **时间表设定**（35行×7列）— 辅助sheet，首行: 

- **Sheet1**（122行×20列）— 辅助sheet，首行: Casual, Casual, Casual, Casual

### LineVoice.xlsx

**台词语音|LineVoice**（468条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | String | `sn` | SN |
| e | String | `type` | 台词类型 |
| e | String | `speakerName` | 发言人名称 |
| e | Text | `lineText` | 台词的完整文本 |
| cs | String | `wwiseAudio` | 实际游戏中播放的 Wwise事件名称 |
| e | boolean | `soundOnly` | 是否仅有音频 |
| csr | String | `mouthAnim` | 口型动画资源名 |
| e | String | `soundWave` | 用于生成口型动画的 中间音频资源名 |

### ModelActionTestHelper.xlsx

**动作预览器怪表|ModelActionTestMonster**（12条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `ActorSn` | Actor表的sn |
| cs | String | `ActorDesc` | 界面显示名称 |

**动作预览器行为树表|ModelActionTestTree**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| csr | String | `BTRes` | 行为树 |
| cs | String | `BTDesc` | 界面显示名称 |

### Npc.xlsx

**Npc|Npc**（463条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 (同Actor表的类型参数sn) |
| c | String | `nameColour` | NPC名称颜色 |
| c | boolean | `showName` | 是否显示名字 |
| c | Text | `headTitle` | 称号文本 |
| cr | String | `imageTitle` | 图片称号 |
| c | int | `plotSN` | 交互基础对话 PlotNew表sn |
| cs | String | `appearType` | 根据任务显隐条件类型 看注释  |
| cs | String | `appearParam` | 根据任务显隐的条件参数 （填写任务sn和目标sn，必须与appearType里的出现/消失条件一一对应。）  |
| cs | boolean | `ignoreColliders` | NPC出生后忽略碰撞体 |
| cs | boolean | `turnAround` | 与NPC交互时是否转身面向玩家 |
| cs | int[] | `showLevelLimit` | 玩家处于等级区间内，NPC显示 注：NPCActorBirth的刷新sn是10 |
| cs | int[] | `funcId` | NPC功能 NpcFunc表的sn 注：功能NPCActorBirth的刷新sn是10 |
| c | int | `animationType` | 交互对话时播放的动画类型 1=播放一次ANTM 2=循环播放ANTM 3=播放一次MTG后，循环播放末端 |
| cr | String | `animationParam` | ANIM/MTG资源名 |
| cs | int[] | `showtime` | 服务器时间达到后显示（待开发） |
| cs | int[] | `hidetime` | 服务器时间达到后隐藏 （待开发） |
| cs | int | `npcType` | NPC类型 （待开发） |
| cs | boolean | `Open` | NPC是否生效 |
| c | int | `movementDelayTime` | 移动延迟时间 |
| cs | float[] | `endMoveToPos` | 移动到某坐标后消失  |
| c | int | `hideEffect` | 死亡溶解效果 （这里的死亡指的是npc因为任务状态或其他因素导致npc隐藏的情况） 索引Death表的销毁表现sn |
| c | int | `playMonstageDistance` | 播放蒙太奇的距离 |
| cr | String | `disMontageName` | 到达一定距离播放蒙太奇动画的名称 |
| cr | String | `disVoiceName` | 到达一定距离播放声音的名称 |
| c | int[] | `PaoPaoData` | 准星瞄准后头顶显示的文本的数据 HeadUpPaoPao 中的Sn  |
| cs | int | `Npc_InteractDistance` | 交互动作距离的 |
| c | float | `ShowHeadUpDistance` | 头顶显示距离 会覆盖通用的头顶显示距离（米） |
| c | int[] | `BubbleInteractData` | 准星瞄准后头顶显示的文本的数据 HeadUpPaoPao 中的Sn  |
| cs | boolean | `InteractShowFuncName` | 交互列表显示NpcFunc功能名 |
| cs | int | `InteractDistance` | 交互动作距离的 |
| c | boolean | `autoInteract` | 是否自动交互 |
| c | boolean | `InVehicleCanInteract` | 玩家在车中是否能交互 |
| c | int | `communicationTriggerSn` | 播旁白sn |
| c | float | `communicationTriggerRadius` | 触发旁白距离（米） |
| c | float | `communicationTriggerInterval` | 播旁白间隔时间 |
| c | float | `lookatPlayerRadius` | 看向玩家距离（米） |

### NpcFunc.xlsx

**NPC功能|NpcFunc**（278条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | ID |
| c | Text | `name` | 对话界面按钮显示文本  考虑本地化翻译，文本不宜过长 |
| c | String | `icon` | 按钮显示图标 |
| cs | int | `type` | 功能类型 |
| cs | String | `funcParam` | 功能类型的对应参数 1.播放对话：PlotNewSN 2.播放剧情动画：StorySN 3.接取任务：QuestSN 4.激活情报 5.打开界面：Gui表【跳转... |
| cs | int | `funcOpenSN` | FuncOpen表的SN 按钮功能是否开启，根据FuncOpen表的开启条件 |
| cs | String | `appearType` | 显隐条件类型 （和Npc表显隐条件一致） 1在某个任务sn接受后出现; 如果仅配置1, 该按钮之前都不出现, 任务接受之后出现 2在某个任务sn完成后出现;  ... |
| cs | String | `appearParam` | 显隐条件参数 appearType与参数一一对应； 如appearType配置多个类型，本列也要用“|”分割，并对应配置参数。 |
| cs | int[] | `showLevelLimit` | 玩家等级处于区间内(闭区间)按钮显示 |
| c | int | `priority` | 在同个NPC对话界面的显示排序 （数字小靠上） |
| c | boolean | `hideDialogueUI` | 功能结束后，是否关闭对话界面 |
| c | boolean | `autoStart` | 点击F键后，跳过显示对话界面，功能自动开始 |
| c | int | `quitPlotSN` | 功能不可用时Npc对话 |

- **类型参数说明**（33行×4列）— 辅助sheet，首行: 类型说明, NPCfunc
类型, 参数

**NPC功能切场景|NpcFuncSwitchScene**（7条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | ID |
| cs | int | `type` | 类型 |
| cs | String | `param` | 参数 1.进入位面：场景sn 2.进入副本：场景SN，副本SN 3.进入主城场景：sceneSn[,posX,posY,posZ[,dir]] 4.回到主城场景... |
| cs | int | `targetSceneSn` | 目标场景sn |
| cs | int | `storySn` | 传送前播剧情 |
| cs | int | `storyLocatorBirthSn` | 剧情定位器birthSn |

**NPC功能表演动作|NpcFuncPerformAction**（27条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | ID |
| csr | String | `montages` | Montage资产 |
| cs | int | `times` | 次数 |
| cs | float | `weight` | 权重 |

**怪物气泡|Npctalk**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | ID |
| c | int | `show` | 展示类型  0=气泡 1=字幕 |
| c | int | `type` |     触发方式  1=距离播放 2=AI调用 6=接力播放 |
| c | int[] | `data` |                触发数据  1. 直接填距离； 2. 不填； 6. 上一个talk的ID； |
| c | String | `bubbletext` | 对话内容（如果要写多段用 ；隔开） |
| c | int | `showrange` | 显示距离 |
| c | int | `showpriority` | 显示优先级 |
| c | float[] | `interval` | 气泡间隔时间（若单句话就是气泡起始等待时间） |
| c | float[] | `time` | 气泡持续时间（秒） |
| s | int | `totalTime` | 气泡总时间（毫秒） |
| c | int | `monsterID` | 怪物SN |
| c | int | `loop` | 是否循环(0顺序，1循环，2随机) |
| c | int | `randomtime` | 选择随机时随机的次数（默认为0是无数次） |
| cr | String[] | `montage` | NPC动作 |
| c | int[] | `monsterVoiceSn` | NPC声音表SN |
| s | boolean | `nonBroadcast` | 不广播【默认是广播，填TRUE则不广播】 |

### PasserReaction.xlsx

**路人感知事件反馈|PasserReaction**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | sn |
| s | int | `Personality` | 性格类型 |
| s | int | `IncidentType` | 感知事件类型 |
| s | int | `EmitterType` | 事件触发者类型 |
| s | int | `TargetType` | 事件目标类型 |
| s | int | `Priority` | 优先级 |
| s | int | `BehaviorSn` | 行为树sn |

**路人感知到的事件参数|PasserIncidentParams**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | 感知事件类型 |
| s | int | `SpreadType` | 传播类型 |
| s | float | `SpreadRadius` | 传播范围半径（米） |
| s | float | `SpreadDuration` | 传播时间 |

### Room.xlsx

**自定义房间|Room**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| c | Text | `name` | 玩法名称 |
| csi | int | `type` | 游戏模式： 1.PVP 2.赛车  |
| cs | int | `funcopen` | 开启和参与限制 |
| cs | int[] | `map` | 可选地图 1、2类型读取战斗-团队战斗副本|GroupFightInstance sn,0在填写的所有非0地图中随机 3类型读取 PVP-夺金副本|RobMon... |
| cs | int | `midwayJoin` | 中途加入 0:默认选中 1:默认不选 2:禁用 3:强制选中 |
| c | Text | `typeName` | 游戏模式名称 |
| cs | int | `spectator` | 观战 0:默认选中 1:默认不选 2:禁用 3:强制选中 |
| cs | int | `bot` | 机器人 0:默认选中 1:默认不选 2:禁用 3:强制选中 |
| c | Text[] | `mapName` | 对应地图名称 |
| cr | String[] | `mapPic` | 可选地图对应图片 |
| cs | int[] | `rules` | 可自选规则的sn数组 |
| c | int | `showRuleInList` | 房间列表显示设置内容 |
| c | int[] | `showRules` | 房间内现实的规则及顺序 |
| cs | int | `groupCount` | 分组数量 |
| cs | int | `memberPerGroup` | 每组人数 |
| c | int[] | `defaultVehicles` | 默认载具 |
| s | int[] | `robotPool` | 机器人随机池 |

**自定义房间规则|RoomRules**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 可选规则的sn  |
| cs | int | `ruleType` | 规则类型 1:Buff 2:胜利条件  valueParams参数为允许玩家设置的上下限 3:公平属性  valueParams参数1为公平属性0为玩家属性 4... |
| c | Text | `name` | 规则名称 |
| cs | int | `showType` | 1:输入框 2:二选一切换按钮 3:下拉选框 |
| c | Text[] | `showTexts` |  |
| c | String[] | `spShowFormat` | 特殊显示效果 (index:RichTextFormat) showType == 1 时前面index随意 |
| cs | int[] | `valueParams` | showType = 1时 为最小值,最大值 其它时候ShowText的选项对应 |
| cs | int | `defaultParam` |  为默认值 |

### Sound.xlsx

**场景环境音兜底|SceneMusic**（7条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 场景sn |
| c | String | `amb_state` | 环境音 |

**场景分区环境音|SceneBlockMusic**（37条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | int | `type` | 区域类型 1=SceneBlock 2=Area |
| c | int | `param` | 区域内容 1=SceneBlockSN 2=AreaSN |
|  | String | `desc` | 策划备注 |
| c | int | `scenesn` | 区域所在场景sn 只对类型1有效 不填写默认遵从SceneBlock |
| c | int | `priority` | 优先级 数字越大优先级越高 |
| c | String | `amb_state` | 环境音 |

**环境音|AmbientSound**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| c | int | `sceneSn` | 场景SN |
|  | String | `desc` | 策划备注 |
| cr | String | `eventName` | 音频资源名 |
| c | float[] | `position` | 位置，单位:米 |
| c | float[] | `rotation` | 角度 |
| c | float | `innerRadius` | 内环半径，单位:米 与中心点的距离超过 该值后声音开始衰减 （废弃在wwise里配置） |
| c | float | `falloffDistance` | 衰减距离 单位:米 声音从最大到最小 的衰减距离 |
| c | float | `volume` | 音量 |
| cs | boolean | `open` | 默认是否开启 |

**任务区域BGM音频|QuestAreaSound**（17条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
|  | String | `desc` | 策划备注 |
| cs | int | `paramType` | 参数类型 1=任务sn列表 2=副本sn列表 |
| cs | int | `sceneblocksn` | sceneblocksn  标蓝三列中同时只能填一列内容 |
| cs | int | `areasn` | areasn   标蓝三列中同时只能填一列内容 |
| cs | int | `scenesn` | scenesn   标蓝三列中同时只能填一列内容 |
| c | int[] | `questSnList` | 任务、副本sn列表 什么都不填空着代表 不判断任务直接执行 |
| c | int | `BgmSn` | 对应LogicSound页签sn |
| c | int | `chapterSn` | 章节编号 资源动态下载功能 新手本配-1 |
| c | int | `priority` | 优先级 |

**逻辑音频|LogicSound**（31条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
|  | String | `desc` | 策划备注 |
| c | String | `BaseState` | 音频基础状态切换 |
| c | String[] | `stateGroup1` | 音频状态切换 |
| c | int | `priority` | 优先级 |
|  | sn拼接（复制到左侧，不要带公式） | `` |  |

**命中音效2D|Hitmarker**（20条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn Weapon表Type列 |
|  | String | `desc` | 策划备注 |
| c | String | `normal` | 普通资源 |
| c | String | `critica` | 暴击音频 |

**AI专用BGM|AiBGM**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| cr | String | `music` | 区域背景音 |

**短音效|SortSound**（10条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 这仅仅是个id |
| cr | String | `music` | 音效名字 |

**ActorType配置|ActorTypeToSwich**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | String | `sn` | Actor类型 |
|  | desc | `描述` | Actor类型 通过实现Actor蓝图的GetActorType实现 |
| cr | String | `SwitchValue` | Switch值 |

**SkillType配置|SkillTypeToSwitch**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | String | `sn` | Skill类型 |
|  | desc | `描述` | Skill类型 配置在技能的GA里的技能类型 |
| cr | String | `SwitchValue` | SwitchValue |

**物理材质配置|MaterialToSwitch**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 物理材质类型 |
|  | desc | `描述` |  |
| cr | String | `SwitchValue` | SwitchValue |

### VisualCommunication.xlsx

**通话触发|Trigger**（188条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 序号 |
| c | int | `triggerType` | 触发类型 |
| c | String | `triggerParam` | 触发参数 类型1=任务接受后，参数：QuestSn 类型2=任务目标完成后，参数：QuestGoalSn 类型3=接受某任务后到达某区域，参数：QuestSn|... |
| c | int | `visualCommunicationSn` | 对话sn |
| cr | String | `callerPicture` | 来电动画的显示头像 此三列都配才有来电动画 |
| c | Text | `callerName` | 来电动画的显示名字 |
| c | boolean | `showReminder` | 触发后是否需要播放来电提示动画 配TRUE，前两列的配置生效 |
| c | boolean | `showPalknows` | 显示帕鲁诺斯 |
| c | boolean | `isRepeatable` | 是否可重复触发 配true，则在本次登录中，只要满足触发条件，就会重复触发 |
| c | boolean | `isGlobalTriggerOnce` | 是否全局只触发一次 配true，则在触发一次后下次及之后登录都不会触发，除非清除客户端文件 |
| c | boolean | `canContinuePlaying` | 打断结束后再次播放 配TRUE，打断后才能再次播放 |
| c | int | `UIType` | 界面类型 1=3D视讯（已废弃） 2=2D电话，对话文本配置在 【通话内容|RadioCommunication】 |
| c | int | `hudBlackListSn` | 消息队列黑名单Sn |

**通话内容|RadioCommunication**（451条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | id 任务关联对话编号为【任务编号+xx】 非任务关联对话请尽量避免使用9位数字段 |
| c | int | `order` | 下一对话 |
| cr | String | `Picture` | 说话人头像 不配不显示手机UI |
| c | Text | `name` | 说话人名字 |
| c | Text | `content` | 通话内容 玩家昵称用<playerName> 突出色<QuestYellow>主线黄</> |
| c | float | `liveTime` | 旁白存在时间 |
| c | float | `delayTime` | 旁白延迟播放时间 |
| c | String | `voiceChat` | 语音文件 |
| c | int | `replaceSn` | 女主角替换配置 |
| c | int | `UIType` | UI类型 1-常规 2-引导 |

**已废弃|VisualCommunication**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | id |
| c | int | `order` | 下一对话 |
| c | String | `name` | 说话人名字 |
| c | String | `actorSn` | 视讯人名称和模型 |
| c | String | `content` | 对话内容 |
| c | float | `liveTime` | 旁白存在时间 |
| c | float | `delayTime` | 旁白延迟播放时间 |
| cr | String | `action` | 动作 |
| c | String | `voiceChat` | 语音文件 |
| c | int | `characterVoiceSN` | 主角语音 |
| c | String | `mouthpiece` | 口型文件 |

**主角语音|CharacterVoice**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 序号 |
| c | int | `characterVoiceSN` | 所属主角语音组 |
| c | int | `characterSn` | 主角类型 |
| c | String | `Voice` | 语音文件 |

### Weather.xlsx

**天气控制|WeatherControl**（16条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| cs | int | `startGameTime` | 指定游戏内时间 |
| cs | boolean | `isStop` | 是否关闭时间流逝 |
| cs | int | `fadeTime` | 插值时间 |
| cs | int | `weatherUnitID` | 指定天气ID |
| cs | int | `specialWeatherSN` | 特殊天气类型 索引SpecialWeather |

**天气|Weather**（15条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | String | `sn` | 场景资源sn |
| c | int | `profileid` | 天气文件id |
| c | float | `cycleRate` | 天气循环的速率 |
| c | boolean | `isDefaultEnable` | 是否默认开启 |

**时间段|WeatherTimeSlot**（8条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 时间段sn |
| cs | int | `startTime` | 开始时间 |
| cs | int | `ueConfId` | ue配置中对应的时间效果id |

**特殊天气|SpecialWeather**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | SN |
| c | int | `weatherType` | 特殊天气类型 0=无特殊天气 1=雨  |
| cr | string | `weatherTypeRes` | 特殊天气对应的资源 |
| c | float | `Intensity` | 特殊天气强度 影响光照、雾效等 [0,1] |
| c | string | `cameraEffect` | 相机例子特效 |
| c | float | `cameraEffectIntensity` | 相机粒子强度 |
| c | int | `postprocessWeatherType` | 后处理类型 0=无 1=下雨 |
| c | float | `postprocessWeatherTypeIntensity` | 后处理强度 |
| c | string[] | `environmentSound` | 环境音效 |
| c | int | `flashType` | 闪电类型 0=无 1=小闪电 2=随机播放小闪电、中闪电 3=随机播放小闪电、中闪电和大闪电 |
| c | float[] | `flashInterval` | 闪电间隔 每次闪电之后在该间隔内随机 |
| c | string[] | `flashSound` | 闪电音效 小,中,大 |

**雨速衰减|RainVelocityScale**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | float | `minValue` | 最小速度 km/h |
| c | float | `maxValue` | 最大速度 km/h |
| c | float | `scaleSpeed` | 缩放倍数 |
| c | float | `forwardOffset` | 下雨位置朝向偏移 |

**天气模板|WeatherModel**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | SN |
| c | int | `weatherType` | 天气类型 0=默认 1=雨  2=雪 |
| cr | string | `weatherTypeRes` | 特殊天气对应的资源 |
| c | float | `Intensity` | 天气强度 （0到1） |

**打雷下雨模板|RainModel**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | SN |
| c | int[] | `thunderGroup` | 闪电分组： 强度,强度 |
| c | int[] | `thunderInterval` | 间歇随机时间上下限度 |
| cr | string | `thunderSoundResource` | 音效资源 |
| c | float | `thunderSoundDelay` | 闪电音效延迟 |
| c | float | `intensity` | 雨滴强度 |
| c | float | `dripIntensity` | 水流强度 |

### WebGame.xlsx

**网页游戏|WebGameLevel**（43条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `gameSn` | 游戏sn |
| cs | String | `level` | 关卡 |

**网页游戏|WebGame**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 场景资源sn |
| cs | String | `gameName` | 游戏名称 |
| cs | int | `rewardSn` | 奖励道具sn |
| c | String | `cdnurl` | cdn路径 |

### WwiseInfo.xlsx

**WwiseEvent信息|WwiseEventInfo**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | String | `sn` | SN |
| cs | float | `duration` | 持续时间 |