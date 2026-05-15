## 怪物与AI

### AI.xlsx

**AI属性|AIAttr**（81条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| sr | String | `DefaultActionClass` | 默认Action类 |
| s | boolean | `AutoRunDefaultAction` | 默认自动运行 默认Action类 |
| sr | String | `DefaultRootCompositeActionClass` | 默认组合Action类 |
| s | boolean | `AutoRunDefaultCompositeAction` | 默认自动运行 默认组合Action类 |
| sr | String | `AIControllerClassName` | 控制器类 一般而言都是不需要填的 |
| sr | String | `BattleAIAction` | 战斗用的Action |
| cs | int | `AIResponseSn` | 感知反馈类型 参照AIResponse页签 |
| s | float | `DelayDestroy` | 延迟x分钟后销毁 不填就是不会主动销毁 |
| s | float | `HearingRate` | 听觉系数 为0就是没有听觉 |
| s | float | `WanderRadius` | 漫游半径 厘米 |
| cs | boolean | `sightEnterFight` | 视野主动入战 |
| cs | boolean | `SightOnlyPlayer` | 视野只检测玩家 （节省性能) |
| cs | boolean | `SightHeightPrecision` | 开启高精度检查 非高精度的视野检查频率会随着玩家人数增多而降低 |
| cs | float | `SightRadius` | 感知视野半径 米 |
| cs | int | `SightAngle` | 感知视野总张角（度），引擎侧按半角写入（=配置值/2） |
| cs | float | `FightSightRadius` | 战中视野半径 米 |
| cs | int | `FightSightAngle` | 战中视野总张角（度），引擎侧按半角写入（=配置值/2） |
| cs | float | `HatredRangeRadius` | 仇恨半径 米 |
| cs | float | `AbilitySenseRadius` | 感知攻击技能范围 米 |
| cs | float | `LeaveFightMaxDisChase` | 最大追敌距离（脱战配置） 当前位置距入战点超过此距离则脱战 必须配置正数 |
| cs | boolean | `isLeaveBattleResetHP` | 是否脱战回血 |
| cs | float | `LeaveFightMaxDisToBase` | 最大离巢距离 当前位置距出生点超过此距离则脱战 不填就是-1，-1就是距离无限大 |
| cs | boolean | `IgnoreSightTraceInPeace` | 战前状态是否 忽略视野遮挡检测 |
| cs | boolean | `CloseSenseOnVehicle` | 车上是否关闭感知 下车会自动开启感知 |
| cs | boolean | `SightSenseCopyHatred` | 复制视野内同Camp仇恨列表（仅一次） |
| cs | float | `ActionSenseRadius` | 感知玩家行动的范围 米 |
| cs | boolean | `AutoUpdateFightState` | 自检测更新战斗状态 如果受别人指挥应该关闭此功能 |
| cs | int | `CarAIType` | 载具相关AI逻辑枚举 给默认在车上怪用的 |
| s | float | `SensePosRememberTime` | 【潜行】感知坐标记忆时间 主要用于声音 覆盖怪物蓝图AIComp上配置 |
| s | float | `SenseActorRememberTime` | 【潜行】感知玩家记忆时间 主要用于视野 覆盖怪物蓝图AIComp上配置 |
| s | float[] | `HateListeningRange` | 监听仇恨刷新的范围 厘米 |
| s | float | `RemoveWithOutOfSightTime` | 目标离开视野超过x秒移除仇恨 >999表示永远不移除仇恨 -1使用蓝图配置 |
| s | int[] | `RobotCareActorSns` | 机器人看到后需要加入关注（环境道具）的ActorSn列表 |
| s | float | `RobotSenseItemRememberTime` | 机器人丢失环境道具视野记忆时间 （机器人丢失敌人记忆时间用RemoveWithOutOfSightTime） |

**音源广播半径|SoundSourceRadius**（9条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | String | `sn` | SN |
| cs | float | `radiusMeter` | 传播半径  米 |
| cs | boolean | `isMutable` | 可被静音技能影响 |

**AI感知反应|AIResponse**（10条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| cs | int | `DiscoverPlayer` | 发现玩家 |
| s | int | `DiscoverGreater` | 发现更强 |
| s | int | `DiscoverEqual` | 发现相等 |
| s | int | `DiscoverSmaller` | 发现弱小 |
| s | int | `DamagePlayer` | 被玩家攻击 |
| s | int | `DamageGreater` | 被更强野怪伤害 |
| s | int | `DamageEqual` |  |
| s | int | `DamageSmaller` |  |

**NpcAI|AIAttribute**（7条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| sr | boolean | `autoRunAI` | 默认运行AI |
| sr | String | `controllerClass` | 控制器 |
| sr | String | `defaultActionClass` | 默认运行的Action |
| sr | float | `wanderRadius` | 漫游半径 |

**怪物AI|NPCAI**（90条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| sr | String | `IdleTree` | 行为树 |
| sr | String | `EnterFightTree` | 行为树 |
| sr | String | `FightTree` | 行为树 |
| csr | String | `Controller` | 控制器 |
| s | float[] | `HidePos` | 掩体位置 |
| s | float[] | `PatrolPos` | 巡逻位置 |
| s | float[] | `FightPatrolPos` | 入战后移动到该点 |

**战前行为树枚举**（7条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| sr | String | `sn` | sn |
|  | String | `IdleDesc` | 战前行为树描述 |

**入战行为树枚举**（7条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| sr | String | `sn` | sn |
|  | String | `EnterFightDesc` | 入战行为树描述 |

- **AIsn规则**（28行×10列）— 辅助sheet，首行: 

### AIDecision.xlsx

**AI决策模式|AIDecision**（74条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | sn |
| s | int[] | `itemList` | 决策项目列表 |
| s | float | `decisionInterval` | 决策间隔时间（s） |

**AI决策项目|AIDecisionItem**（3590条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | sn |
| s | int | `priority` | 优先级 |
| s | int | `weight` | 权重 |
| s | int | `percent` | 概率（万分比） |
| s | int[] | `conditions` | 条件列表 |
| s | int | `conditionCombine` | 条件组合方式 0=AND（全部满足） 1=OR（任一满足） |
| sr | String | `btAsset` | 执行行为树 |
| s | int | `btAssetData` | 行为树数据sn |
| s | boolean | `bInterruptSamePriority` | 允许被同优先级打断 |
| s | boolean | `bInterruptSelf` | 允许被自身打断 |
| s | float | `maxExecuteTime` | 最大执行时间 |
| s | int | `selectTargetSn` | 目标筛选sn |
| s | boolean | `forceNeedTarget` | 是否必需有目标 |
| s | boolean | `overrideMainTarget` | 是否覆盖主目标 |
| s | float | `cooldown` | 决策冷却时间 |

**AI决策条件|AICondition**（130条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | sn |
| s | int | `type` | 类型 |
| s | int[] | `param` | 辅助参数 |
| s | float | `param2` | 辅助参数2 |
| s | float | `valueMin` | 值下限 |
| s | float | `valueMax` | 值上限 |

**AI决策目标筛选|AISelectTarget**（32条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | sn |
| s | int[] | `itemSnList` | 筛选项目列表 |
| s | boolean | `bAny` | 任意满足即可_x000D_ （默认为false：要求全部满足） |
| s | int | `multiTargetSelect` | 多目标时处理方式_x000D_ （0：随机，1：优先玩家，2优先机器人，3优先Monster类型） |

**AI目标筛选项目|AISelectTargetItem**（30条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | sn |
| s | int | `mainType` | 大类型 |
| s | int | `subType` | 子类型 |
| s | int | `selectType` | 数值型筛选方式 |
| s | float[] | `interval` | 区间上下限 |
| s | int | `stateType` | 状态类型 |
| s | int | `specificType` | 特定类型 |
| s | int[] | `specificTypeValue` | Sn列表 |

### BehaviorTree.xlsx

**行为树|BehaviorTree**（19条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN 类型+5位数字 |
| cs | int | `type` | 行为树类型 1: 战前行为树 2: 入战行为树 3: 战中行为树 4：车上行为树 5：群组AI行为树 |
| sr | String | `assetName` | 行为树资源名称 |
|  | String | `desc` | 备注 |

### FireMonster.xlsx

**怪物击杀场景信息|FireActorScene**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN   |
| csi | int | `sceneSn` | 场景sn |
| cs | int | `timeLimit` | 限定时间（秒） |
| cs | int | `targetScore` | 胜利所需分数 |
| s | String | `birthPos` | 刚出生时坐标（多个坐标用分好隔开） |
| cs | String | `noTimeRemind` | 时间不足提示 低于此时间，前端提示strSn |
| cs | String | `noScoreRemind` | 长时间没有得分提示 时间间隔，前端提示strSn |
| c | String | `allFireVcTriggerSn` | 一级火力不同时间点播放对话，（捡抢开始时间点1:triggersn,捡抢开始时间点2:triggersn） |
| c | int | `fireVcTriggerSn` | fire状态下电话提示 |
| c | Text | `targetTitle` | 目标说明 |
| c | Text | `targetDesc` | 目标内容 |
| cs | int | `npcBirthSn` | npcbirthsn |
| cs | int | `dist` | 提示距离单位米 |
| cr | String | `traceIcon` | 追踪图标 |
| c | float | `traceOffset` | 追踪图标偏移 单位米 |
| cs | int | `inAreaSn` | 限制的区域中 |
| cs | int | `allOutAreaTime` | 区域外总时间（超过这个时间后传回点单位秒） |
| cs | int | `leftOutAreaTime` | 超出区域剩余这个时间后开始提示（单位秒）3，就是表示第7秒开始弹 |
| cs | int | `startMagicSquareSec` | 捡枪开始多少秒后开始刷魔方 |
| cs | int | `loopMagicSquareSec` | 魔方刷新后隔多少时间后再次刷新 |
| cs | int | `specialLianKillNum` | 达到特殊效果时的连杀数量 |
| cs | int | `specialLianKillLastSec` | 达到特殊效果的持续时间 |
| cs | int[] | `addBuffSns` | 进入特殊状态添加的buffsn |
| cs | int[] | `removeBuffSns` | 进入特殊状态要删除的buffsn |
| c | float[] | `cameraRotation` | 相机的旋转（gm命令camera 获取到的参数） |
| s | int | `addBuffSnOnEnter` | 进入场景加的buff |

**怪物击杀信息|FireActor**（407条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN   |
| csi | int | `sceneSn` | 场景sn |
| csi | int | `actorSn` | actorSn |
| s | int | `mark` | 击杀后给的分数 |
| cs | int | `livingTime` | 存活时间 |
| s | int | `effectType` | 击杀效果类型 1.死亡后释放技能，参数技能sn 2.死亡后增加时间，参数时间值 3.击杀后一定时间内分数加成，参数1时间，参数2比例（填整数） 4.击杀后给玩家... |
| cs | String | `effectParam` | 效果参数 |
| cs | int[] | `reviveBirthSn` | 击杀后刷出 |
| cs | int | `dist` | 提示距离单位米 |
| cr | String | `traceIcon` | 追踪图标 |
| c | float | `traceOffset` | 追踪图标偏移 单位米 |
| cs | int | `hintstr` | 出现时的提示 |

**星级奖牌|FireStarMedal**（12条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| cs | int | `star` | 星级 |
| csi | int | `sceneSn` | 场景sn |
| cs | int[] | `scoreTarget` | 分数 |

**怪物击杀游戏开始需要创建的怪|FireBirthActors**（433条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | birthSn |

**连杀信息|LianKill**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int[] | `range` | 连杀区间 |
| cs | float | `timeCD` | 连杀有效时间(秒) |
| cs | int | `markUp` | 连杀加成分数（百分比） |
| cs | String | `color` | ui颜色 |
| cs | float | `Rotate` | 速度 |

**怪物击杀场景刷怪信息|FireAreaRefresh**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | areaSn |
| cs | int[] | `birthSn` | 要刷出的怪物 |

**怪物击杀副本完成|FireActorResult**（12条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| cs | int | `star` | 星级 |
| csi | int | `sceneSn` | 场景sn |
| cs | int | `leftTime` | 剩余时间 |
| cs | int | `rewardPreview` | 掉落显示 |
| cs | int[] | `rewards` | 掉落组s |

**一级火力效果|FireEffect**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN   |
| s | int | `effectType` | 击杀效果类型 1.效果持续时间内，连杀数量翻倍，更快提升连杀数，连杀数越高连杀分数倍率越高，参数时间单位秒  2.效果持续时间内，可射击目标的基础分数 参数：参... |
| cs | String | `effectParam` | 效果参数 |
| cs | float | `weight` | 权重 |
| s | int | `addBuffSn` | 添加的buffsn |
| cs | int | `effectStr` | 效果的提示 |
| csr | String | `effectIcon` | 效果图标 |

**能量魔方birthsn|FireMagicSquare**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | birthSn |
| csr | String | `picture` | 小地图图标 |

### Monster.xlsx

**怪物|Monster**（1860条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cr | String[] | `TraceEnemyArrowRes` | 敌人指引箭头资源 |
| cs | int | `soldierType` | 兵种： 0   近战 1   手枪士兵 2   突击士兵 3   狙击手 4   军官 |
| c | boolean | `bHeadupHideLevelText` |  是否隐藏头顶等级文字 |
| cs | int | `SlowWalkSpeed` | 基础移动速度 巡逻 |
| cs | int | `WalkSpeed` | 基础移动速度 环绕 |
| cs | int | `TransportSpeed` | 基础移动速度 搬运 |
| cs | int | `RunSpeed` | 基础移动速度 跑步 |
| cs | int | `EscapeSpeed` | 基础移动速度 逃跑 |
| cs | int | `RideSprintSpeed` | 基础移动速度 加速 |
| cs | int | `SwimSpeed` | 游泳速度 |
| cs | int | `SwimDashSpeed` | 游泳疾速 |
| cs | boolean | `isSleep` | 是否夜晚睡觉 |
| cs | int | `actorSize` | 怪物尺寸 0=XS  1=S  2=M  3=L  4=XL |
| cs | int | `biologicalGrade` | 生物等级 影响AIResponse判定 |
| cs | String | `BattleBGM` | 战斗BGM |
| cs | int | `addiAttrGroupId` | 怪物动态等级 附加属性组ID |
| c | int | `ArrowShowDis` | 入战箭头显示距离 不填读Param表默认 |
| c | int | `HeadUpWidgetType` | 特殊血条类型 |
| cs | int | `element1` | 元素1 0=无效 1=无属性 2=火 3=水 4=雷 5=草 6=冰 7=地 8=暗 9=龙 |
| cs | int | `element2` | 元素2 |
| cs | boolean | `canNooseTrap` | 能否套索陷阱捕获 仅体型XS/S会触发套索 |
| s | String | `levelAbilities` | 等级解锁的技能SN 冒号逗号分隔 |
| s | int | `normalAbility` | 普攻技能SN |
| cs | int | `captureAbility` | 捕捉时带下来的技能 |
| c | int | `DieDisslove` | 是否需要死亡溶解 |
| cs | int[] | `elementImmune` | 元素异常免疫类型（对应EKSGElementExceptionType枚举） 1=火 2=草 3=地 4=雷 5=水 6=冰 7=暗 8=毒 |
| cs | float | `elementStatus_ResistanceGrowFactor` | 耐性增加系数 |
| cs | float | `elementStatusDamageRate` | 元素异常伤害系数 |
| cs | Text | `title` | BOSS称号 |
| cs | boolean | `canBeCaptured` | 是否能被捕捉 |
| cs | int | `petSN` | 捕捉后宠物SN |
| cs | float | `capturedHpPercent` | 捕捉后血量百分比 |
| cs | float | `captureMultiRate` | 捕获加成概率（乘算） |
| cs | float | `paidCaptureMultiRate` | 付费球捕获加成概率（乘算） |
| s | float | `captureServerMultiRate` | 服务器隐藏捕获加成概率（乘算） |
| s | String | `captureServerFixedRatioWithHP` | 服务器隐藏捕获固定概率和血量关联 |
| cs | int | `npc_kill_drop` | NPC击杀能否触发掉落 需要配合公用掉落组 |
| cs | int[] | `characteristicTags` | 特征Tag列表 引至ActorCharacteristicTags |
| cs | int | `hpTribeValue` | 血量种族值 |
| cs | int | `atkTribeValue` | 物攻种族值 |
| cs | int | `defTribeValue` | 物防种族值 |
| cs | int | `mgcTribeValue` | 魔攻种族值 |
| cs | int | `macTribeValue` | 魔防种族值 |
| cs | String | `hpIndividualRandom` | 血量个体值随机 (值：概率，值：概率) |
| cs | String | `defIndividualRandom` | 物防个体值随机 (值：概率，值：概率) |
| cs | String | `atkIndividualRandom` | 物攻个体值随机 (值：概率，值：概率) |
| cs | String | `macIndividualRandom` | 魔防个体值随机 (值：概率，值：概率) |
| cs | String | `mgcIndividualRandom` | 魔攻个体值随机 (值：概率，值：概率) |
| cs | String | `wspIndividualRandom` | 工作速度个体值随机 (值：概率，值：概率) |
| cs | int | `maleProbability` | 男性随机概率 百分比值 |
| cs | float | `hpValueAttrMultiply` | 血量倍率 |
| cs | float | `atkValueAttrMultiply` | 物攻倍率 |
| cs | float | `defValueAttrMultiply` | 物防倍率 |
| cs | float | `mgcValueAttrMultiply` | 魔攻倍率 |
| cs | float | `macValueAttrMultiply` | 魔防倍率 |
| cs | String | `param` | 类型参数 |
| cs | int[] | `SpecialTags` | 特殊Tag 怪物生成时添加 1:免疫击飞 |
| cs | int | `angerTimes` | 激怒状态触发次数 （捕捉失败） |
| cs | int | `angerDuringTime` | 激怒状态多久 进入撤离状态 <=0不会撤离 |
| cs | int | `destroyTime` | 死亡尸体存留时间 |
| cs | int[] | `isDissolve` | 是否使用溶解效果 （出生,销毁） 0=不溶解 1=溶解 |
| c | int | `hideBossHeadupDis` | BOSS血条隐藏距离 OverrideParam配置 |
| c | boolean | `showHeadup` | 是否显示头顶UI |
| c | int | `ShowHeadUpDistance` | 显示头顶距离 |
| c | int[] | `BubbleInteractData` | 准星瞄准后头顶显示的文本的数据 HeadUpPaoPao 中的Sn  |
| cs | int | `InteractDistance` | 交互动作距离的 |

### MonsterAttrs.xlsx

**怪物属性|MonsterAttrs**（21769条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn 潜规则 |
| cs | int | `groupId` | 属性组ID |
| cs | int | `level` | 等级 |
| cs | String | `attrs` | 属性 |

**怪物附加属性|MonsterAddiAttrs**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `groupId` | 属性组ID |
| cs | int | `level` | 等级 |
| cs | String | `attrs` | 属性 |

**组队副本动态难度属性|TeamDynamicAttrs**（14条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `groupId` | 属性组ID |
| cs | String | `attrs` | 额外属性 |
| cs | int | `teamType` | 散人(1)或者组队(2) |
| cs | int[] | `monsterSubType` | 受到增益怪物的子类型 （目前只能增益怪物） |
| cs | int | `playerNum` | 玩家人数 单人队配置无效，因为是按散人算 |

### MonsterCampOccupy.xlsx

**怪物据点占领|MonsterCampOccupy**（16条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| c | Text | `Name` | 营地名称 |
| c | Text | `Description` | 营地描述 |
| cs | int | `AreaSn` | 区域Sn |
| cs | int | `LeaveAreaSn` | 离开区域Sn |
| cs | int | `BuildingBlueprintSN` | 建筑蓝图SN |
| c | int | `PreviewDropSN` | 客户端预览奖励掉落SN |
| cs | int | `FirstDropSN` | 首通奖励掉落SN |
| cs | int | `DropSN` | 奖励掉落SN |
| s | int[] | `MonsterGroupSN` | 营地怪物GroupSN |
| cs | int | `QuestSN` | 关联的任务SN |
| cs | int | `QuestGoalSN` | 关联的任务目标 |
| cr | String | `BGImg` | 背景图 |
| cr | String[] | `MapIcon` | 大地图图标 （未挑战,已挑战） |
| c | Location | `MapIconPos` | 大地图图标位置 |
| c | int | `RecommendLevel` | 推荐等级 |
| cs | int | `RebirthTime` | 重刷时间(s) |

### MonsterGroup.xlsx

**小队表（自动生成）|MonsterGroup**（1088条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | 分组SN (ActorBirth表groupSn) |
| s | int | `leaderBirthSn` | 队长BirthSN |
| s | int[] | `memberBirthSns` | 队员BirthSN （不包括队长） |

### NPCHitAnim.xlsx

**主角76受击动作|Role76HitAnimation**（15条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | String | `sn` | 骨骼名称 |
| csr | String | `FrontHit1` | 前受击动作1 （动作1和2随机播放） |
| csr | String | `FrontHit2` | 前受击动作2 （动作1和2随机播放） |
| csr | String | `BackHit1` | 后受击动作1 （动作1和2随机播放） |
| csr | String | `BackHit2` | 后受击动作2 （动作1和2随机播放） |
| csr | String | `LeftHit1` | 左受击动作1 （动作1和2随机播放） |
| csr | String | `LeftHit2` | 左受击动作2 （动作1和2随机播放） |
| csr | String | `RightHit1` | 右受击动作1 （动作1和2随机播放） |
| csr | String | `RightHit2` | 右受击动作2 （动作1和2随机播放） |

**主角克劳德动作|RoleCloudHitAnimation**（15条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | String | `sn` | 骨骼名称 |
| csr | String | `FrontHit1` | 前受击动作1 （动作1和2随机播放） |
| csr | String | `FrontHit2` | 前受击动作2 （动作1和2随机播放） |
| csr | String | `BackHit1` | 后受击动作1 （动作1和2随机播放） |
| csr | String | `BackHit2` | 后受击动作2 （动作1和2随机播放） |
| csr | String | `LeftHit1` | 左受击动作1 （动作1和2随机播放） |
| csr | String | `LeftHit2` | 左受击动作2 （动作1和2随机播放） |
| csr | String | `RightHit1` | 右受击动作1 （动作1和2随机播放） |
| csr | String | `RightHit2` | 右受击动作2 （动作1和2随机播放） |

**小白人受击动作|WhiteHitAnimation**（18条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | String | `sn` | 骨骼名称 |
| csr | String | `FrontHit1` | 前受击动作1 （动作1和2随机播放） |
| csr | String | `FrontHit2` | 前受击动作2 （动作1和2随机播放） |
| csr | String | `BackHit1` | 后受击动作1 （动作1和2随机播放） |
| csr | String | `BackHit2` | 后受击动作2 （动作1和2随机播放） |
| csr | String | `LeftHit1` | 左受击动作1 （动作1和2随机播放） |
| csr | String | `LeftHit2` | 左受击动作2 （动作1和2随机播放） |
| csr | String | `RightHit1` | 右受击动作1 （动作1和2随机播放） |
| csr | String | `RightHit2` | 右受击动作2 （动作1和2随机播放） |

**半藏受击动作|HanzoHitAnimation**（15条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | String | `sn` | 骨骼名称 |
| csr | String | `FrontHit1` | 前受击动作1 （动作1和2随机播放） |
| csr | String | `FrontHit2` | 前受击动作2 （动作1和2随机播放） |
| csr | String | `BackHit1` | 后受击动作1 （动作1和2随机播放） |
| csr | String | `BackHit2` | 后受击动作2 （动作1和2随机播放） |
| csr | String | `LeftHit1` | 左受击动作1 （动作1和2随机播放） |
| csr | String | `LeftHit2` | 左受击动作2 （动作1和2随机播放） |
| csr | String | `RightHit1` | 右受击动作1 （动作1和2随机播放） |
| csr | String | `RightHit2` | 右受击动作2 （动作1和2随机播放） |

**死亡动作|DeathAnimation**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | String | `sn` | sn |
| cs | int | `FrontHitDead` | 前击死亡动作 |
| cs | int | `BackHitDead` | 后击死亡动作 |
| cs | int | `LeftHiDead` | 左击死亡动作 |
| cs | int | `RightHitDead` | 右击死亡动作 |

### Robot.xlsx

**机器人|RobotData**（39条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 机器人sn |
| s | boolean | `usePlayerData` | 是否使用玩家数据 |
| s | float | `scatterData` | 散射数据（枪法准度修正） |
| s | float | `firingRateData` | 射速修正 |
| s | int[] | `defaultGun` | 默认枪（123号位） （Weapon表Sn） |
| s | boolean | `forceDefaultGun` | 是否强制使用默认枪 |
| cs | int | `CharacterSn` | 使用的Character模板 |
| cs | int[] | `defaultFashion` | 默认时装（可不配，配置替换Character模板里的对应时装） |
| cs | boolean | `forceDefaultFashion` | 是否强制默认时装 |
| cs | int | `nameType` | 名称类型：0 用玩家名称 1 用Actor名称 2 随机名字库 |
| cs | int | `weaponLevel` | 机器人装备等级 |
| cs | boolean | `supportVehicle` | 是否支持载具功能 |
| sr | String | `overrideController` | 覆盖的Controller（不填使用蓝图默认） |
| cs | int | `Avatar` | 机器人头像 |
| cs | int | `AvatarFrame` | 机器人头像框 |
| cs | int | `Card` | 机器人名片 |
| s | int | `decisionSn` | 使用AIDecision表的sn |
| s | int[] | `SkillSns` | 持有技能列表 |
| s | int[] | `SkillLevels` | 持有技能对应等级 |
| s | int[] | `SkillStars` | 持有技能对应星级 |
| cs | int | `SkillStrength` | 技能强度等级（技能等级和星级取强度等级表，为0不启用） |
| s | int[] | `WeaponAccuracyPool` | 机器人枪械能力列表 （索引RobotWeaponAccuracy表） |
| cs | int | `autoDrivingSn` | 自动驾驶sn |
| s | int | `weaponHitRateModify` | 枪械能力命中率修正万分比（仅用于枪械能力） |
| s | int | `weaponHeadshotRateModify` | 枪械能力爆头率修正万分比（仅用于枪械能力） |
| cs | int[] | `defaultPets` | 默认持有帕鲁（可不配） |

### RobotAIConf.xlsx

**机器人枪械能力|RobotWeaponAccuracy**（142条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | SN |
| s | int | `WeaponSn` | 武器Sn |
| sr | String | `HitRateCurve` | 命中曲线 |
| sr | String | `HeadshotCurve` | 爆头曲线 |
| s | int | `MoveHitModify` | 移动命中修正万分比 |
| s | int | `MoveHeadModify` | 移动爆头修正万分比 |
| s | int | `CrouchHitModify` | 下蹲命中修正万分比 |
| s | int | `CrouchHeadModify` | 下蹲爆头修正万分比 |
| s | int | `JumpHitModify` | 跳跃命中修正万分比 |
| s | int | `JumpHeadModify` | 跳跃爆头修正万分比 |

**机器人枪械替换|RobotWeaponReplace**（56条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | 原始武器Sn |
| s | int | `ReplaceWeaponSn` | 替换武器Sn |

**异形怪命中范围|HeterotypicMonsterArea**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 怪物sn |
| cs | String | `HitMainBone` | 命中区域中心骨骼 （不填则为模型中心） |
| cs | float | `HitAreaRadius` | 命中区域左右距离 |
| cs | float | `HitAreaUpRange` | 命中区域向上距离 |
| cs | float | `HitAreaDownRange` | 命中区域向下距离 |
| cs | float | `MissAreaRadius` | 非命中区域左右距离 |
| cs | float | `MissAreaUpRange` | 非命中区域向上距离 |
| cs | float | `MissAreaDownRange` | 非命中区域向下距离 |
| cs | float | `MaxRange` | 非命中区域缩放最大距离 |
| cs | float | `MinRange` | 非命中区域缩放最小距离 |
| cs | float | `MaxRangeScale` | 最大距离非命中区缩放比 |
| cs | float | `MinRangeScale` | 最小距离非命中区缩放比 |

**机器人技能等级|RobotSkillLevel**（207条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `Strength` | 技能强度等级 |
| cs | int | `Level` | 机器人等级 |
| s | int | `SkillLevel` | 技能等级 |
| s | int | `SkillStar` | 技能星级 |
| s | int | `WeaponLevel` | 覆盖武器等级（废弃） |
| s | int[] | `Weapons` | 覆盖武器 |
| cs | int[] | `Fashions` | 覆盖时装（只控制外显，不控制数值） |
| s | int[] | `Pets` | 持有帕鲁，配置则覆盖默认，配0没有 （Actor表sn，要求主类型2子类型1） |

### SceneAI.xlsx

**场景ai|SceneAI**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| si | int | `sceneSn` | 场景sn |
| sr | String | `aiName` | 关卡AI |
| s | float[] | `pos` | 参数 |