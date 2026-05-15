## 运营活动（续）

### RandomEvent.xlsx

**随机事件组|RandomEventGroup**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `sceneSn` | 场景sn |
| s | String[] | `randomDate` | 随机日期，如果配置了，则randomDay不生效,日期必须从小到大配置 |
| s | int[] | `randomDay` | 随机一周的某几天，如果randomDate配置了，则这里不生效 必须从小到大配置，一周的开始是周日，周日最小，周日到周六分别对应1-7 |
| s | String[] | `randomTime` | 随机的起始时间，必须从小到大配置 |
| s | String[] | `eventSnAndWeight` | 事件与权重(同一个sceneSn不要配置相同的事件，后配置的会不生效) |

**随机事件|RandomEvent**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| c | Text | `name` | 名字 |
| cs | int | `actorBirthSN` | 事件导演birthSN（场景必须和配置一样） |
| c | int | `priority` | 显示优先级 |
| cs | int | `type` | 玩法类型： 0：通用类型 1.站街女 2.抢劫运钞车 3：阻止抢劫 4：路见不平 |
| c | int | `mapIconTypeSn` | 地图图标 |
| c | Location | `mapIconPos` | 地图图标位置 |

**随机事件阶段描述|RandomEventStage**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| sc | int | `sn` | sn |
| cs | int | `eventSN` | 事件sn |
| cs | int | `stageIndex` | 阶段索引（0 是准备阶段的描述） |
| c | Text[] | `stageBriefing` | 阶段简报 |
| sc | String[] | `uiParam` | 不同玩法意义不同，但是每一项是一个选择：比如站街女是 选项index:消耗物品SN:消耗数量；归还钱包是：选项1，选项2 |
| cr | String | `choiceIcon` | 选项图标 |
| c | String[] | `choiceShortcut` | 快捷键 |
| c | Text[] | `uiDescription` | UI描述 |
| sc | int[] | `opType` | 表现类型： 0:无 1：播放视频 2：关闭事件 |
| sc | String[] | `opParam` | 参数 |
| c | int | `traceType` | 指引点类型(指引) 0.无 1.焦点actor指引 2.区域指引   |
| c | String | `traceParam` | 场景指引点参数 1.焦点actor是动态指引，直接找到Actor本身 2.区域指引用区域中心点  |

**站街女语音|StreetWalkerAudio**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | int[] | `triggers` | 对话sn |

**抢劫货车玩法|RobbingTruckInfo**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| sc | int | `sn` | 导演的birthSn |
| sci | int | `truckBirthSn` | truck的birthSn (和sn都是一对一的关系，此列不能重复值) |
| csi | int | `goalAreaSn` | 目标点areasn (和sn都是一对一的关系，此列不能重复值) |
| c | int | `goalAreaMapTypeSn` | 目标点小地图追踪图标 |
| s | int | `rewardSn` | 奖励的groupSn |
| c | int | `successStorySn` | 成功时剧情动画 |
| cs | float | `focusedActorDistance` | 货车周围广播的逻辑范围 |
| c | int | `truckMapTypeSn` | 卡车的小地图追踪图标 |
| cs | float | `monsterBackDistance` | 怪物开始往回走的范围 |
| cs | int | `eventAreaSn` | 事件areasn |

**抢劫运钞车|RobbingArmoredVehicle**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| sc | int | `sn` | 导演的birthSn |
| sci | int | `vehicleBirthSn` | vehicle的birthSn (和sn都是一对一的关系，此列不能重复值) |
| s | int | `rewardShowItemSn` | 奖励展示物品 |
| s | int | `rewardGroupSn` | 奖励物品组 |
| cs | float | `focusedActorDistance` | 货车周围广播的逻辑范围 |
| c | int | `vehicleMapTypeSn` | 卡车的小地图追踪图标 |
| cs | float | `monsterBackDistance` | 怪物开始往回走的范围 |
| cs | int | `eventAreaSn` | 事件areasn |
| cs | int | `npcBirthSn` | npcBirthSn |
| cs | float | `npcInteractWaitTime` | npc等待交互时间 |
| cs | float | `vehicleSpawnWaitTime` | 玩法开启后，等到刷新车辆的时间 |
| cs | float | `vehicleToEndTime` | 载具刷新到玩法结束时间 |
| cs | String | `openCost` | 玩法开启消耗 |
| c | int | `accpetSuccessPlot` | 接取成功对话 |

**阻止抢劫玩法|StopRobbery**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 随机事件Sn |
| cs | int | `RobbeyBirthSn` | 抢劫犯的birthSn |
| cs | int | `ShopBossBirthSn` | 商店老板birthSn |
| cs | int | `BagBirthSn` | 背包的birthSn |
| cs | int | `AppropriateDropGroupSn` | 私吞的奖励Sn |
| cs | int | `ReturnDropGroupSn` | 返回的奖励Sn |
| cs | float | `HumanHoldBoxMaxTime` | 玩家持有背包多久获得私吞奖励时间 单位s/秒 |
| cs | float | `FocusedRadious` | 焦点半径 |
| cs | float | `ReturnRadius` | 返回半径 |
| cs | float | `AreaSn` | 回归区域 |

### Schedule.xlsx

**必做日程|ScheduleType**（8条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | ID |
| c | Text | `text` | 描述 |
| c | int | `order` | 目标从左到右的显示顺序=参数从小到大的顺序 |
| cr | String | `picture` | 配图 |
| c | int[] | `mapTraceType` | 0：Lua代码ETraceType中枚举 1-N：额外参数 |
| c | int[] | `goMapTypeSN` | 点击后吸附地图图标 |
| c | int | `openUI` | 跳转打开界面 |
| c | int | `clickStrSN` | 相应的浮动提示 |
| cs | int | `addPoint` | 奖励日程点数 |
| cs | int | `funcOpenSN` | 活动开启限制 14日程 |
| cs | int[] | `limitOpenSN` | 限时功能开放sn funcOpen表【限时功能开放|LimitOpen】sn |
| c | Text | `energyDisplayValue` | 界面展示体力消耗 |

**必做目标触发|ScheduleDailyActivity**（10条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int | `scheduleType` | 日程类型 ScheduleTypeSN |
| cs | int | `goalType` | 触发类型 |
| cs | int[] | `goalParam` | 触发参数 |

**必做奖励|SchedulePointReward**（7条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN  |
| cs | int | `point` | 日程点 |
| cs | int | `dropSn` | 日程点奖励 |
| c | int | `previewItemSn` | 客户端预览物品 |

- **必做类型备注**（3行×4列）— 辅助sheet，首行: 类型, 描述, 参数

**推荐活动|EnergyActivity**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 活动sn |
| cs | int | `group` | EnergyActivityGroup表sn 1每日 2每周 3探索 4赛季 |
| cs | int | `funcOpenSN` | 活动开启限制 |
| c | int | `sortOrder` | 界面显示顺序 |
| c | int | `tabType` | 所属页签 1=推荐 2=探索 |
| c | Text | `name` | 活动名称 |
| c | Text | `dsc` | 活动描述文本 |
| c | int[] | `rewardTag` | 奖励类型标签 1经验 2装备 3金币 4现金 5战术装置（技能） 6生物芯片 7改装（载具升级） 8配件（武器改装） 9战技插件 10外观 11天赋 12装备培... |
| cs | int | `rewardPreview` | 体力界面奖励预览 |
| c | int | `openUI` | 点击后打开界面 |
| c | int[] | `mapTraceType` | 地图追踪类型 0：Lua代码ETraceType 1-N：额外参数 |
| c | int[] | `goMapTypeSN` | 点击选中地图图标 (强吸，配置多个根据玩家状态吸 |
| c | int | `clickStrSN` | 点击弹出浮动提示 |
| cr | String | `picture` | 体力界面图片 |
| c | String | `showLogicModName` | 奖励进度Mod |
| c | String | `showLogicModParam` | 奖励进度Mod参数 |

**推荐奖励标签|EnergyActivityItemTag**（12条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 活动sn |
| cr | String | `icon` | 图标 |
| c | Text | `rewardTag` | 奖励类型标签 |
| c | String | `textColor` | 文本颜色 |

**推荐分栏|EnergyActivityGroup**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 活动sn |
| cr | String | `icon` | 图标 |
| c | Text | `groupName` | 奖励类型标签  |
| cr | String | `groupPicture` | 分栏底图 |

### SeasonActivity.xlsx

**赛季活动|SeasonActivity**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 活动sn |
| s | int[] | `serverAppoint` | 指定服务器id |
| s | int[] | `serverExcept` | 排除服务器id |
| s | int[] | `countryAppoint` | 指定国家sn |
| s | int[] | `countryExcept` | 排除国家sn |
| s | int | `timeType` | 活动时间类型： 1、开服时间 2、自然时间 |
| s | int[] | `startTime0` | 开始时间 开服时间              天,小时,分钟,秒        |
| s | int[] | `finishTime0` | 结束时间 开服时间              天,小时,分钟,秒     |
| s | String | `startTime1` | 开始时间 自然时间            yyyy-MM-dd HH:mm:ss |
| s | String | `finishTime1` | 结束时间 自然时间             yyyy-MM-dd HH:mm:ss |
| s | boolean | `open` | 是否开启 |
| cs | int[] | `type` | 活动大类 |
| cs | int | `weeklyPiontLimit` | 每周任务积分上限 |
| cs | Text | `seasonname` | 赛季名称 |
| c | int | `helpSn` | 帮助sn |
| s | int | `defaultEloValue` | 默认elo值 |
| s | int | `minEloValue` | 最小elo值 |
| cs | Text | `seasondesc` | 赛季描述 （废弃） |

**段位奖励|SeasonRankReward**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| csi | int | `seasonSN` | 所属赛季sn |
| csi | int | `rank` | 段位等级 |
| cs | int | `matchRank` | 匹配等级（队列） |
| cs | int | `robotSeconds` | 匹配时间 |
| cs | int | `needScore` | 需要分数 |
| c | Text | `name` | 段位名字 |
| cs | int[] | `dropSNs` | 段位奖励 同【活动大类|SeasonActivityType】的序号 |
| s | int | `addPoint` | 胜利时 增加段位积分 |
| s | int | `reducePoint` | 失败时 减少段位积分 |
| cs | int | `addProtectionPoint` | 胜利时 增加胜点保护 |
| cs | int | `protectionPointMax` | 可累计的 最大胜点保护 |
| cs | boolean | `protectionRank` | 失败时 开启不掉段保护 |
| s | int | `eloK` | 计算 elo的系数 |
| cr | String[] | `ranklogos` | 段位logo 主界面显示四个活动 |
| cr | String | `picture` | 段位logo 奖励预览界面 |
| s | int | `nameStr` | 段位名称 服务器str ServerStr表 |
| cs | int | `effectiveProtectionPoint` | 保护点生效值 （废弃） |
| cr | String | `picture2` | 段位小logo（废弃） |
| cr | String | `picture3` | 标题栏logo（废弃） |

**活动大类|SeasonActivityType**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | Text | `name` | 名称 |
| c | int | `displayOrder` | 显示顺序 |
| cr | String | `bgImage` | 背景图片 |
| cs | String | `openUI` | 跳转界面 |
| c | int | `rankSn` | 排行榜 |
| cs | int | `rewardsNum` | 好奖励次数 |
| cs | int[] | `buttonType` | 显示的页签按钮 |
| cs | int[] | `targetActivitySN` | 包含的目标玩法 |
| cs | int[] | `statisticsSN` | 页签2-战绩统计 |
| cs | int[] | `weeklyTaskSN` | 页签3-每周任务 |
| cs | int[] | `challengeTaskSN` | 页签4-赛季挑战 |
| s | int | `startHour` | 开始时间 |
| s | int | `endHour` | 结束时间 |

**目标玩法|SeasonTargetActivity**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int | `enumerationType` | 类型 无实际意义 |
| cs | Text | `name` | 活动名字 |
| s | int | `nameStr` | 名称服务器str |
| cs | int | `funcOpenSN` | 功能开启限制 |
| cs | int | `matchSN` | 对应的匹配SN |
| cs | float | `pointRate` | 积分倍率 |
| cs | int | `playTimes` | 新手判定-累计进入次数小于等于 |
| cs | int | `lianFailed` | 新手判定-连续失败次数 |
| cs | int | `rankLess` | 新手判定-段位低于 |
| cs | int | `matchExtendSeconds` | 赛季段位扩展配置时间 |
| s | String | `performScore` | 保护积分表现系数 每个玩法自定义档位，胜负方都定义 档位1:档位系数,档位2:档位系数…… |
| cs | int | `helpSn` | 打开帮助的sn（废弃） |
| cs | Text | `matchNum` | pvp人数 （废弃） |
| cr | String | `picture` | 背景图片 （废弃） |
| c | Text | `description` | 活动描述 （废弃） |
| cs | boolean | `needCountTimes` | 显示完成次数（废弃） |
| cs | String | `openUI` | 跳转界面 （废弃） |

**赛季目标|SeasonGoal**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int | `activityTypeSn` | 活动大类 SeasonActivityType Sn |
| csi | int | `targetActivitySn` | 目标玩法SeasonTargetActivity |
| cs | int | `type` | 目标类型 |
| cs | int[] | `param` | 类型参数 |
| cs | int | `fireMaxTimes` | 最大的触发次数 |
| cs | int | `point` | 积分获得 |
| c | Text | `desc` | 描述 |
| cr | String | `logo` | 图标 |

**里程碑奖励|SeasonMileageReward**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| csi | int | `seasonSN` | 所属赛季sn |
| cs | int[] | `mileageGoal` | 需要达到的等级和数量 |
| cs | int | `mileageDropSn` | 里程碑奖励 |
| cs | int | `needScore` | 需要分数 |
| c | Text | `desc` | 目标描述 |
| c | int | `displayItemSn` | 目标奖励的预览道具 |
| cr | String | `mainPicture` | 主界面入口展示图片 |
| cr | String | `mileagePicture` | 里程碑界面奖励图片 |

**匹配组队加分|SeasonMatchAddScore**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 匹配的玩法数量 |
| cs | int | `addScore` | 加的分数 |
| c | Text | `desc` | 描述 |
| c | String | `color` | 颜色 |

**累计活跃度|SeasonActivation**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int[] | `onLineTime` | 在线时长（左闭右开） |
| s | float | `eloModify` | 匹配时elo修正系数 |

**赛季惩罚|SeasonPunish**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int | `readyQuitTimes` | 准备退出次数 |
| cs | int | `readyQuitPunish` | 准备退出对应的禁赛时间 |

- **Sheet1**（38行×19列）— 辅助sheet，首行: 

### Survey.xlsx

**问卷调查|survey**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | Text | `title` | 问卷标题 |
| cs | Text | `subtitle` | 问卷副标题 |
| cs | Text | `content` | 问卷内容 |
| cs | String | `url` | 问卷url |
| cs | String | `rewardItems` | 问卷展示奖励 用":"隔开物品和数量 ","分割多个物品消耗（示例103030006:2,103030005:8） |
| cs | int | `showType` | 显示类型，默认0按顺序显示，1表示仅显示一个 |
| s | int | `preFinishSn` | 针对showType=1的类型，需前置问卷完成，才能显示当前问卷，约定-1为第一个显示的。 |
| cs | int[] | `openTypeSn` | surveyOpen表sn |
| cs | boolean | `forceShow` | 是否强弹 |
| cs | int | `mailSn` | 奖励邮件sn（0为可多次提交的问卷，涉及拼参数的逻辑） |
| cs | int | `showMailSn` | 问卷对应的邮件表sn，如果需要同时展示才配置，不需要不配置 |

**问卷调查解锁|surveyOpen**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `openType` | 开启类型（1：完成任务，2：达到等级，3：登录持续时间（单位为分钟，1分钟检测一次）4：创角天数，5：团队死斗参与次数（子类型填副本sn),7:夺金竞技场参与次... |
| cs | int | `subType` | 子类型 |
| cs | int | `openParam` | 开启参数 |

### TraceType.xlsx

**追踪类型图片尺寸|TraceTypeSize**（77条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | TraceTypeSn |
| c | int | `iconIndex` | 图片样式序号 1=功能自定义 2=帕鲁 3=物品 |
| c | float | `iconScale` | 追踪图标的放缩 |
| c | int | `autoRemoveDistance` | 追踪自动删除的距离(单位厘米)  -1表示不会自动删除 |

### TreasureHunter.xlsx

**宝藏猎人|TreasureHunter**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| c | Text | `gamePlayDesc` | 任务描述 |
| cs | float | `maxTime` | 事件总时间（秒） |
| cs | int | `openLimit` | 宝箱开启限制（个人） |
| cs | int[] | `spawnGroup` | 出生点 |
| cs | int[] | `spawnRotation` | 出生点朝向（一一对应，如果少填则取最后一个） |
| cs | int | `spawnLimit` | 出生点数量 |
| cs | String | `treasureActorBirth` | 宝箱位置ActorBirth组（配置多个则表示多阶段刷出宝箱） |
| c | int | `voiceoverSN` | 旁白SN（关联VisualCommunication表） |

### TriggerQuest.xlsx

**触发任务触发|TriggerQuestGoal**（20条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| csi | int | `goalType` | 触发类型 1:上指定车，参数 载具蓝图  2：触发以上通缉 参数 N星，N次 3：获得声望多少点 参数 1,N点 4：使用npc功能参数 npc功能sn,1 |
| cs | String[] | `goalParam` | 目标参数 |
| cs | String | `randomQuestInfo` | 随机任务信息（格式：任务sn1:权重，任务sn2权重 （1:3000,2:4000,3:3000） |
| cs | int | `limitTime` | 限制时间（s，0代表不限制） |
| s | int | `dropId` | 真实发放奖励 DropGroup表ID |

- **配置说明**（9行×2列）— 辅助sheet，首行: 

### WeeklyActive.xlsx

**每周活力|WeeklyActive**（196条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int | `activeValue` | 目标活跃值 |
| cs | String | `reward` | 奖励1参数 |
| cs | int | `highRewardType` | 特殊奖励类型 |
| cs | String | `highRewardParam` | 特殊奖励参数 |
| c | Text | `rewardDesc` | 特殊奖励标题 |
| c | Text | `unlockRewardDesc` | 特殊奖励标题_已解锁 |
| c | int | `clickType` | 跳转类型 |
| c | String | `clickParam` | 跳转参数 |
| c | Text | `unlockClickDesc` | 跳转描述_已解锁 |
| c | Text | `clickDesc` | 跳转描述_未解锁 |
| c | boolean | `unlockClickOpen` | 进度未达到时，是否开启跳转功能 |
| cs | int | `fullBagMailsn` | 背包已满邮件 |
| cs | int | `resetMailsn` | 重置邮件补发奖励 |

**每周玩法|WeeklyGameplay**（12条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| c | Text | `playName` | 玩法名称 |
| c | int | `gameplayType` | 玩法目标类别 WeeklyGameplayType表Sn |
| c | int | `sort` | 排序 越小越前 相同按sn排 |
| cs | int | `goalType` | 玩法目标类别 |
| cs | int[] | `param` | 玩法目标参数 |
| cs | int | `limitType` | 限制类别(0=不限制,1=每日限制,2=每周限制) |
| cs | int | `valueMax` | 活力币限制 |
| cs | int | `addValue` | 获得活力币 |
| cs | int | `addProbability` | 获得概率值（万分比：比如填10000，表示百分百获得） |
| c | Text | `description` | 玩法说明 |
| c | int | `previewDropSn` | 奖励预览掉落 |
| c | int | `funcOpenSn` | 开启条件 |
| c | int[] | `eventTriggerArr` | 开启时限组 EventTriggerTimer表Sn |
| c | int[] | `tagArr` | 标签组 WeeklyGameplayTag表Sn  |
| c | int | `clickType` | 点击类型 详见【点击类型】页签 |
| c | int[] | `clickParams` | 点击参数 详见【点击类型】页签 |
| c | Text | `tips` | 提示 |
| c | int[] | `banSceneTypeArr` | 禁止点击的场景类型组 scene表里scene_type |

- **点击类型**（46行×11列）— 辅助sheet，首行: 类型, 说明, 参数格式, 情况

**每周玩法类别|WeeklyGameplayType**（11条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 序号 |
| c | Text | `typeName` | 类型名 |
| c | int | `isHide` | 是否隐藏 0/不填=不隐藏 1=隐藏 |

**每周玩法标签|WeeklyGameplayTag**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | Text | `name` | 标签名 |
| cr | String | `bg` | 标签背景 |

### WorldEvent.xlsx

**全城事件配置|WorldEvent**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 全城事件Sn |
| cs | int | `directorBirthSn` | 导演BirthSn |
| s | int | `sceneSn` | 场景Sn |
| cs | int | `lastTime` | 持续时间（分钟） |
| cs | int | `previewStrId` | 开启预告StrId（不配置，则事件无预告） |
| c | Text | `description` | 玩法描述 |
| c | Text | `name` | 玩法名称 |
| cs | int[] | `rewardSnArray` | 排名奖励 （数组的顺序决定排名奖励，sn为Drop表sn，同时需要配置物品预览） |
| cs | int[] | `mailSnArray` | （数组的顺序决定排名奖励，sn为mailSn） |
| cs | int | `extralRewardSn` | 参与奖sn（sn为Drop表sn） |
| cs | int | `extralMailSn` | 参与奖sn（sn为Mail表sn） |
| cs | int | `lastHolderRewardSn` | 最后持有箱子奖励 |
| cs | int | `lastHolderMailSn` | 最后持有箱子奖励 |
| c | String | `helpSn` | 帮助界面对应GUISN |
| s | int | `finishHintSec` | 距离结束还有多少秒的文字提示 |
| c | String | `ShowRewards` | 奖励展示 |
| c | Text | `Describe` | 地图描述文本 |

**抢箱子玩法奖励|GrabBoxReward**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int[] | `scoreRange` | 积分范围（闭区间） |
| cs | int | `rewardSn` | 奖励（rewardSn为Drop表sn，同时需要配置物品预览） |
| s | int | `mailSn` | 背包满的时候通过邮件给玩家发奖励 |
| c | Text | `showStr` | 结算奖励内容 |

**抢箱子玩法随机宝箱|GrabBoxRandomBox**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | 事件sn |
| s | int[] | `boxBirthSnPool` | 随机box池子 |