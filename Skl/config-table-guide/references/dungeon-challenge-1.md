## 副本与挑战

### Arena1v1.xlsx

**段位配置|Arena1v1Rank**（60条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` |  |
| cs | Text | `rankName` | 段位名称 |
| cr | String | `icon` | 段位图标 |
| cr | String | `rankSmallDesc` | 段位图标角标文本 |
| cs | int | `k` | ELOK值 |
| cs | int | `scoreMin` | 段位下限积分 |
| cs | int | `scoreMax` | 段位上限积分 |
| cs | int | `rankMin` | 段位最低名次 |
| cs | int | `rankMax` | 段位最高名次 |
| cs | boolean | `isReduceScore` | 失败不扣分 |
| cs | int | `addScoreMin` | 保底获胜额外积分 |
| cs | int | `winRewardId` | 段位获胜奖励 |
| cs | int | `loseRewardId` | 段位失败奖励 |
| cs | int | `showRewardId` | 段位界面展示奖励 |
| cs | int | `dailyRewardId` | 每日段位维持奖励 |
| cs | int | `weeklyRewardId` | 每周段位维持奖励 |
| cs | int | `firstRewardId` | 首次到达积分奖励 |
| c | Text | `rankDesc1` | 详细段位外层描述 |
| c | Text | `rankDesc2` | 详细段位内层描述 |
| cs | int | `neekRank` | 段位需要获取的排名（列名为历史拼写neekRank，语义为needRank；当前Lua未使用此字段） |

**搜索对手配置表|Arena1v1Search**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` |  |
| cs | int | `scoreMin` | 积分下限 |
| cs | int | `scoreMax` | 积分上限 |

**机器人配置表|Arena1v1Robot**（104条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `minScore` | 积分下限 |
| cs | int | `maxScore` | 积分上限 |
| cs | int | `groupId` | 属性组id |
| cs | int | `level` | 等级 |
| cs | int | `equipLevel` | 武器装等 |
| cs | int | `combat` | 机器人战力 |
| cs | int[] | `petcombat` | 帕鲁战斗力 |
| cs | int[] | `robots` | 怪物机器人列表 |
| cs | int[] | `players` | 玩家机器人列表(废弃） |
| cs | int | `playerRepairBuff` | 机器人补正buff |
| cs | int[] | `players1` | 玩家机器人列表1 |
| cs | int[] | `players2` | 玩家机器人列表2 |
| cs | int[] | `players3` | 玩家机器人列表3 |
| cs | int[] | `players4` | 玩家机器人列表4 |
| cs | int[] | `players5` | 玩家机器人列表5 |
| cs | int[] | `players6` | 玩家机器人列表6 |
| cs | int[] | `players7` | 玩家机器人列表7 |

**战力压制配置表|Arena1v1Power**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | float | `powerMultiplierMin` | 战力下限-开区间 |
| cs | float | `powerMultiplierMax` | 上限-闭区间 |
| cs | int | `buffSn` | 给予玩家增益 |

**装评分段|Arena1v1ESSection**（7条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `minScore` | 玩家机器人装评下限百分比 |
| cs | int | `maxScore` | 玩家机器人装评上限百分比 |

**死斗奖励|ArenaDeathMatchReward**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 胜场数 |
| cs | int | `winRewardId` | 获胜奖励Id |
| cs | int | `playRewardId` | 参与奖励 |

**死斗等级|ArenaDeathMatchLevel**（7条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int[] | `levelRank` | 等级区间 |

**死斗匹配|ArenaDeathMatchTime**（11条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int[] | `time` | 时间区间 |
| cs | boolean | `robot` | 是否匹配机器人 |
| cs | int | `winDiff` | 胜场差 |
| cs | int | `levelDiff` | 等级差（-1无视等级差） |
| cs | int | `levelRankDiff` | 等级区间差 |

### CampInvade.xlsx

**事件|CampInvade**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| cs | int | `incidentType` | 入侵事件类型Sn（int型，非「关卡名称」） |
| cs | int | `incidentGradeLvMin` | 解锁-玩家等级 |
| cs | int | `incidentGradeLvMax` | 解锁-据点等级 |
| cs | float | `weight` | 解锁-服务器开服天数 |
| cs | int | `wave` | 关卡波次 |
| cs | int | `questSn` | 怪物组 |

**据点入侵关卡|CampInvadeStage**（24条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| cs | Text | `Name` | 关卡名称 |
| cs | int | `difficult` | 0=一般 1=困难 |
| c | Text | `tip` |  |
| c | int | `guidPetLv` | 推荐宠物等级 |
| c | int[] | `guidAttrs` | 推荐属性 |
| c | int | `bossStrategyGroupSn` | boss攻略 |
| cr | String | `bg` | 背景图 |
| cs | int | `unlockPlayerLv` | 解锁-玩家等级 |
| cs | int | `unlockCampLv` | 解锁-据点等级 |
| cs | float | `unlockServerDay` | 解锁-服务器开服天数 |
| cs | int | `wave` | 关卡波次 |
| cs | float | `spawnInterval` | 刷怪间隔x秒 |
| cs | float | `timeLimit` | 关卡持续时长(s)， 时间超时判负 |
| cs | int | `spawmLimitMax` | 累计存活X只怪物，判负 |
| cs | float[] | `spawnRadius` | 刷怪范围(米 |
| cs | float | `toCampDisLimit` | 和基地最大距离 超过此距离cm则直接判负 |
| cs | String | `birthSns` | 怪物组 |
| cs | int | `lv` | 指定怪的等级，会覆盖births表的配置 |
| cs | int | `reward` | 成功奖励 |
| cs | int | `rewardPreview` | 奖励预览 |

### CampRelation.xlsx

**阵营关系|CampRelation**（36条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 自身势力id |
| cs | int | `camp1` | 与势力1的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp10` | 与势力10的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp11` | 与势力11的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp12` | 与势力12的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp13` | 与势力13的关系(0：中立，1：敌对，2：友好。不填默认为1) |
| cs | int | `camp14` | 与势力14的关系(0：中立，1：敌对，2：友好。不填默认为2) |
| cs | int | `camp15` | 与势力15的关系(0：中立，1：敌对，2：友好。不填默认为3) |
| cs | int | `camp16` | 与势力16的关系(0：中立，1：敌对，2：友好。不填默认为4) |
| cs | int | `camp17` | 与势力17的关系(0：中立，1：敌对，2：友好。不填默认为5) |
| cs | int | `camp18` | 与势力18的关系(0：中立，1：敌对，2：友好。不填默认为6) |
| cs | int | `camp19` | 与势力18的关系(0：中立，1：敌对，2：友好。不填默认为7) |
| cs | int | `camp20` | 与势力20的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp21` | 与势力21的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp22` | 与势力22的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp23` | 与势力23的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp30` | 与势力30的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp31` | 与势力31的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp32` | 与势力32的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp39` | 与势力39的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp100` | 与势力100的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp101` | 与势力101的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp102` | 与势力101的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp110` | 与势力110的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp111` | 与势力111的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp112` | 与势力112的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp113` | 与势力113的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp114` | 与势力114的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp115` | 与势力115的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp116` | 与势力116的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp117` | 与势力117的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp118` | 与势力118的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp119` | 与势力119的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp120` | 与势力120的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp121` | 与势力121的关系(0：中立，1：敌对，2：友好。不填默认为0) |
| cs | int | `camp122` | 与势力122的关系(0：中立，1：敌对，2：友好。不填默认为0) |

### ChallengeModel.xlsx

**挑战模板|ChallengeModel**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | BirthSn |
| c | Text | `content` | 内容 |
| c | Text[] | `stepTitle` | 分步骤标题 |
| c | float[] | `cameraPosition` | 挑战开始摄像机转向坐标 |
| c | float | `enterTime` | 进入的缓动时间 |
| c | float | `keepTime` | 保持时间 |
| c | float | `exitTime` | 退出时间 |
| cr | string | `traceIcon` | 追踪图标 |

**NPC限时挑战|NpcChallengeModel**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| sc | int | `mirrorSn` | 位面sn |
| sc | int | `directorBirthSn` | 位面主导演birthsn |
| c | int | `MapIconCommonSn` | 地图数据索引sn（MapIconCommon表的sn） |

**星级挑战|StarChallengeModel**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `AccessMode` | 枚举类型： 0=默认为大世界单人模式 1=作战室多人模式 |
| cs | int | `Category` | 玩法大类 1驾驶类 2战斗类  3冒险类 |
| cr | String | `iconImg` | 任务区显示的图标 |
| cs | int | `type` | （新增）0:通用类型 1:火力全开 2:火线突围 3:极限狂飙 4:街区跑酷   5:破圈竞赛 6:标靶射击 7:狙击精英 50:自动驾驶射击  （新增）Sn≥... |
| c | Text | `name` | 玩法名称 |
| c | Text | `desc` | 玩法描述 |
| cs | int[] | `PlayerGroups` | 玩法分组 通过数组配置分组人数。 [分组1玩家人数，分组2玩家人数， ..... ,分组N玩家人数]  配置范例： [2,2,2,2]则为2人一组分为4队。[1... |
| cs | int | `BalanceWeapon` | 如果使用玩家自身武器，会调用本字段来强制改变武器的等级和品质，从而令不同层次的玩家在同一玩法中获得近似体验。 调用《ActivityBag》SN，在此表中<bU... |
| cs | int[] | `VehicleType` | 限制玩家载具类型 将允许进入玩法的载具进行填写，枚举类型遵循《VehicleType》的SN。 1.城市车 2.预留 3.越野车 4.性能车 5.其他（功能车，... |
| cs | int | `BaseVehicle` | 如果玩家不持有符合类型要求的武器资产，则给予保底载具，暂时替换为当前载具。 【三期临时处理】判断玩家是否当前装备了载具，如果没有装备载具则触发此逻辑。用于处理玩... |
| cs | boolean | `VehicleUseCCD` | 载具是否开启CCD，CCD是连续碰撞检测的简称，开启后载具速度很快撞墙不会插到墙里，如果场景里有破坏物撞破坏物时会导致停顿 |
| cs | boolean | `ForbiddenAutoLoseHP` | 是否禁止载具冒火自动掉血 |
| cs | boolean | `GhostVehicle` | 是否开启幽灵车模式 |
| cs | int | `BaseWeapon` | 【三期临时处理】判断玩家是否当前三个武器栏位是否装备了任意武器，如果均未装备武器，则触发此逻辑。用于处理玩家没有装备武器的极端情况。   配置方式： 《Acti... |
| cs | boolean | `FastMoveIgnoreCollision` | 是否需要FastMoveIgnoreCollision 主要是赛车速度很快才会需要  如果为True则速度快，可以少加载一些不必要的远景，保证加载速度  不需要... |
| cr | String | `icon` | 预览大图 |
| sc | String | `params` | 玩法参数，依据玩法含义不同： 一级火力：位面sn 赛车：VehicleRace表sn，需要保证与本表的sn一致 街区跑酷、火线：位面sn,导演birth    ... |
| cs | float[] | `startLoc` | 起点坐标 |
| cs | float[] | `startDir` | 起点朝向 |
| cs | String | `StartPoint` | 进入玩法的出生点配置项目。 索引《ElementData》Sn中的坐标和朝向值。 [ 分组1玩家1出生点SN，分组1玩家N出生点SN |....... | 分组... |
| cs | String | `RevivePoint` | 玩家死亡后重生点的配置项目。 索引《ElementData》Sn中的坐标和朝向值。 [ 分组1玩家1重生点SN，分组1玩家N重生点点SN |....... | ... |
| cs | String | `PlayerInitialStatus` | 状态枚举： 【一期】0=默认站立空手状态 【一期】1=主武器1持枪状态（主武器栏位1持枪状态） 【一期】2=自身处于当前载具主驾驶状态 【二期】3=在自身车辆的... |
| cs | int[] | `InitialBUFF` | 出生BUFF效果  BuffSN数组根据阵营分组来设置枚举：： 索引《GeneralBuff》表SN，在进入玩法时，所有角色持有此Buff。 [BuffSN1，... |
| cs | int | `RespawnLocationChoice` | 死亡重生位置与状态重置  枚举： 0=在玩家对应的<出生点>位置重生。 1=在关卡内自身所属分组的<重生点>刷新并恢复到角色初始状态。      2=在关卡内随... |
| cs | int | `InvincibleTimeAfterRespawn` | 重生后无敌时间 时间（单位：秒） 0为没有无敌效果。 |
| cs | String | `PlayerCameraAdjustment` | 角色镜头修正  镜头工具中【Dt cameracommon】可自定义镜头参数，需要索引镜头的Tag字符串。  配置方式： 镜头参数索引字符串 |
| cs | String | `InteractionRules` | 通过《星级挑战|StarChallengeModel》新增字段<操作与UI自定以配置>用于配置《InteractionRules》SN。  配置方式： [分组1... |
| cs | int | `SceneSn` | 场景SN |
| cs | int | `PlayDuration` | 玩法时长 单位秒 |
| cs | String | `RaceTrackSpline` | 行进距离样条线                 样条线Tag字符串 |
| cs | boolean | `DirectionReset` | 是否开启载具方向检测 判断玩家方向与样条线RaceTrackSpline方向相反则自动重置玩家方向。 （多用于赛车类玩法） |
| cs | int[] | `RefreshRules` | 刷新规则  索引《GroupRefresh》SN，来激活玩法内刷新规则。 [SN1，........，SN N]  备注：休闲玩法不控制具体是否执行刷新规则，这... |
| cs | int[] | `BeginPlayActiveRefreshRules` | 在所有玩家服务器连接完成后开始刷新。 后面通过播放Story、3、2、1倒计时开始正式开局。 被推迟的GroupSN需要在《GroupRefresh》中配置<r... |
| cs | String | `PersonalGoalConditions` | 个人达成目标枚举： 0=默认为无目标达成状态 1=到达<通关区域> （后续扩展）  分组配置方式： [分组1玩家1枚举，分组1玩家2枚举，.......分组1玩... |
| cs | int | `PersonalGoalTriggerLogic` | 个人目标达成触发逻辑枚举： 0=禁止移动、攻击操作保持当前状态 1=进入观战模式 2=默认自由运动 3=进入自定义的Story |
| cs | int[] | `LevelClearConditions` | 结算状态枚举： 1.玩家角色死亡 2.个人到达<通关点>结算 3.全员到达<通关点结算> 4.所有刷新怪物被击杀或销毁 5.首个刷新组Birth被击杀或销毁 |
| cs | String | `ScoreCalculationIndex` | 分数评定项目列表INT[]，分数评定规则需根据不同玩家分组单独进行设置。 如果一个分组配置多个评分索引SN，那么最终分数为各分数评定索引SN计算结果之和。  配... |
| cs | int[] | `StarScroeCalculationIndex` | （仅单人玩法有效,用来计算星级分数，和总分独立）星级分数评定项目列表INT[]，分数评定规则需根据不同玩家分组单独进行设置。 如果一个分组配置多个评分索引SN，... |
| cs | int | `beginStoryPlayType` | 开始演出形式0.没有演出 1：播放story 2：播放sequence（仅索引《Story》的Sequence数据） |
| cs | int | `beginStorySn` | 演出内容索引 《Story》表的SN |
| cs | int | `PersonalGoalStory` | 个人目标达成索引  story SN 《Stroy》表SN |
| cs | int | `endStoryPlayType` | 结束演出形式 0：默认没有演出 1：播放story 2：播放sequence（仅索引《Story》的Sequence数据） |
| cs | int | `endStorySn` | 演出内容索引  《Story》表的SN |
| cs | String | `promptMessageIndex` | 玩法提示索引                          索引《PromptMessage》Sn，用于在重要信息提示栏显示信息。 INT[]，玩法提示索引... |
| cs | int | `birthSN` | NPCbirthSN （用于映射大地图） |
| c | int | `mapIconStartChallengSn` | 地图数据索引sn（MapIconStartChalleng表的sn） |
| csi | int | `funcOpenSN` | 用于映射FuncOpen表 |
| c | int | `pickIndex` | 地图图标索引（映射的是Map表的PicktureIndex） |
| c | Text | `playTime` | 玩法时长(仅用于显示，具体时间由玩法蓝图或者其他逻辑控制) |
| c | String | `helpGUI` | 帮助界面 |
| cs | boolean | `bAutoEnter` | 任务自动进入，不计入排行榜，不弹出结算界面，不展示星级和分数 |
| c | string | `optimize` | 优化字段 1.是否优化大世界的更新 2.是否优化射击和血条 3.是否优化主角和可破坏物的碰撞   默认是全开的 |
| c | float[] | `showPlayerHeadUpDis` | 不同场景玩家的血条的显示距离 单位M 第一个敌方的 第二个其他（中立和友方） |

**操作规则|InteractionRules**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int[] | `ControlCustom` | 自定义操作： 1=禁止角色移动操作（主要服务一些禁止移动的玩法） 2=禁止角色攻击操作（已完成） 3=禁止角色开镜操作（已完成） 4=禁止角色切换武器操作（已完... |
| cs | int[] | `UICustom` | <UICustom>枚举包括： 1=隐藏角色移动按钮 2=隐藏角色攻击按钮（已完成） 3=隐藏角色开镜按钮（已完成） 4=隐藏角色武器栏（已完成） 5=隐藏道具... |

**分数计算|ScoreRuleCustom**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `ScoreConditions` | 分数判定条件： 即从什么条件下开始计算分数，分为如下枚举： 1=击杀Actor事件（怪物、路人Actor，死亡前最后一次攻击加分） 有归属 2=元件加分 机关A... |
| cs | int | `CalculationType` | 计算方式：（各公式计算参数读取<CalculationParam>） <ScoreCalculationType>各枚举对应公式参数，每个公式均为提前预设的公式... |
| cs | boolean | `ResultOverwrite` | 计算结果是否覆盖原值： TRUE：同公式计算结果覆盖原值 FALSE：同公式计算结果进行累计 |
| cs | boolean | `TeamMemberScoring` | （仅针对<ScoreConditions>无归属的判定条件） 是否分组内每人单独计算分数： TRUE：当达成计分条件时，分组内每人都计算一次加分。 FALSE：... |
| cs | float[] | `CalculationParam` | <CalculationType>枚举类型公式中对应的计算参数。  配置方式： [计算参数1 ，计算参数2，.........，计算参数N] |
| cs | int | `ActorMappingType` | 公式关联Actor类型： 如果<CalculationType>类型为2、6、7此类和Actor相关内容，则可以设置公式关联的Actor类型，用于获取特定Act... |
| cs | int[] | `ActorScoreTier` |  Actor分数档位值： 可以设定多个分数档位。  配置方式： [分值档位1，分值档位2，.......，分值档位N] （如果不需要Actor映射分数可以不填写... |
| cs | String | `ActorTypeData` | Actor类型数据： 根据<ActorMappingType>设定对应的索引值，与<ActorScoreTier>分数档位相对应。 1=Actor主类型type... |
| cs | int | `ScoreTextStr` | 加分提示文字： 显示加减分提示文字信息。通过引用《Str》富文本信息控制其样式。UI动效统一。 如果不进行配置，则不显示提示文字。  样式：StrSn字符串  ... |
| cs | int | `ScoreTextConditions` | 加分提示条件： 1=每次事件发生时发送提示                      2=事件持续发生中断x秒后发送提示（用于伤害加分、怪物较多时的击杀加分的频... |
| cs | int | `ScoreTextConditionsParam` | 对应<ScoreTextConditions>枚举的具体参数。 1=无参数            2=中断x秒（枚举2对应参数）  3=时间间隔（秒）（枚举3对... |

**多人匹配规则|CasualMultiMatchRule**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 玩法池sn 也是匹配sn |
| s | int[] | `gamePlayPool` | 玩法池 |
| s | int[] | `randomWeight` | 玩法权重 |
| s | int | `chooseGameNum` | 随机玩法数量 |
| cs | int[] | `dropGroups` | 普通奖励配置 |
| cs | int[] | `normalDropGroups` | 高级奖励配置 |

**星级奖牌|StarMedal**（177条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| csi | int | `modelSn` | 模板sn |
| csi | int | `medalType` | 3：三星 2：二星 1：一星 |
| cs | int | `score` | 需要的分数或者时间(秒)，参考StarScoreType |
| cs | int | `dropGroupSn` | 奖励掉落组sn |
| cs | int | `previewDropGroupSn` | 预览奖励掉落组sn |

**星级挑战类型和计分|StarScoreType**（29条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 街区挑战sn |
| cs | int | `scoreType` | 1:分值(进度条增长) 2:最大剩余（进度条减少） |
| c | int | `strId` | 界面星级描述 |
| c | int | `scoreStrId` | 进度条星级描述 |
| c | Text | `name` | 名字 排行榜显示用 （已废弃） |

**星级挑战类型|StarCategory**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 玩法大类 1驾驶类 2战斗类  3冒险类 |
| cr | String | `CategoryIcon` | 玩法大类图标 |
| cs | Text | `CategroyName` | 玩法大类名字 |

**赛车参数|VehicleRace**（9条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| csi | int | `sceneSN` | 副本sn，保证与表sn保持一致，方便排错和减少数据传输 |
| cs | int | `directorSN` | 关联的大脚车导演SN |
| cs | String[] | `roadTags` | 道路样条线tag |
| cs | int[] | `vehicleSn` | 允许载具sn （索引VehicleNew的sn字段） |
| cs | float[] | `startLoc` | 起点坐标 |
| cs | float[] | `startDir` | 起点朝向 |
| c | float | `traceZAdd` | 导航图标提升高度 |
| cs | int | `beginStorySn` | 比赛开始动画 |
| cs | int[] | `endStorys` | 比赛结束动画 |
| cs | int | `aiNumber` | AI数量 (0~2) |
| cs | int[] | `aiPool` | AI车池 (Actor) |
| csr | int[] | `recordLocal` |  |

**信息提示|PromptMessage**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `triggerType` | 触发类型                            1.倒计时（单位：秒） 2.样条线历程 3.所属分组分数 4.当前玩家车辆耐久百分比 |
| cs | boolean | `greater` | true=大于等于 参数必须从小到大       false=小于等于 参数必须从大到小 |
| cs | float[] | `param` | 字段<triggerType>对应的参数，可以填写多组参数。 枚举1：对应玩法倒计时时间 枚举2：对应样条线的百分比 枚举3：对应当前达到的分数值 枚举4：车辆... |
| cs | int[] | `tipsStrSn` | 提示字符串 与param一一对应 |
| cs | int | `forceTime` | 提示强制悬停时间  |
| cs | int | `totalTime` | 总显示时间  |
| cs | int | `messageType` | 信息提示 1:常规样式 2:警示样式：用于提示负反馈信息。 |

### DailyInstance.xlsx

**日常副本|DailyInstance**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 场景副本SN |
| cs | int | `instanceUnitSn` | 关联到InstanceUnit表的Sn |
| cs | int | `level` | 副本等级 |
| c | Text | `name` | 副本名称 |
| cr | String | `navBgPicture` | 背景图片 |
| cr | String | `navBgPicture2` | 背景图片 |
| c | int | `priority` | 副本优先度,越大越往下 |
| c | Text | `desc` | 副本描述 |
| cs | int | `matchSn` | 匹配sn |
| cs | int | `petSn` | 宠物sn |
| cs | int | `firstReward` | 首通奖励 |
| cs | int | `littleReward` | 副本通关小奖励 |
| cs | int | `bigReward` | 副本通关大奖励 |
| cs | int | `costEnergyNum` | 消耗体力数量 |
| cs | int | `combat` | 推荐战力 |
| c | int[] | `recommendElements` | 属性 元素属性图标ElementIcon |
| cs | int | `exitTime` | 退出时间秒 |
| cr | String | `worldBgPicture` | 大世界地图侧边栏关卡背景图片 |
| cr | String | `openMapPicture` | 大地图图标 |
| cr | String | `closeMapPicture` | 大地图图标 |
| c | Location | `worldEnterPos` | 大世界入口位置 单位：米 |
| cs | Location | `teleportPos` | 位面入口位置 单位：米 |
| cs | float | `dir` | 方向 |
| cs | int | `randomR` | 随机半径 |
| csi | int | `teleportScene` | 传送的场景sn |
| s | int[] | `unlockScene` | 解锁场景sn |
| cs | int | `cancleMatchEndingStep` | 在此副本阶段开始时，取消拉人匹配进副本stepsn |
| c | int[] | `bossElements` | boss属性 |
| c | Text | `bossName` | Boss名字 |
| cr | String | `bossPicture` | Boss头像 |
| cr | String | `bossModel` | boss模型蓝图 |
| cr | String | `actorHouseName` |  |
| c | float[] | `uiModelPos` | 模型位置 |
| c | float[] | `uiModelRotation` | 模型旋转 |
| c | float[] | `uiModelScale` | 缩放比例x,y,z |
| cr | String | `uiModeAnimation` | ui播放动画 |
| c | String | `uiModeSoundName` | ui播放声音 |
| cs | int | `BattleShowSn` | 关联BattleShow表 具体对应sn为配置sn*10 + 0:玩法开场 1:结算成功 2:结算失败 3:放弃 |

### DungeonBoss.xlsx

**秘域boss|DungeonBoss**（14条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| c | Text | `dungeonName` | 秘域名字 |
| c | Text | `bossName` | boss名字 |
| cs | int | `difficulty` | 难度（不同难度公用一个npc）： 0：普通 1：困难 |
| cs | int | `npcBirthSn` | 入口npcBirthSn |
| c | Text[] | `bossAttrDesc` | boss特殊属性描述 |
| cs | int | `sceneSn` | 副本sn |
| cs | int | `type` | 1:个人世界 2:多人世界 |
| cs | int | `birthSn` | 帕鲁birthSn |
| cs | int | `boxBirthSn` | 宝箱birthSn |
| cr | String | `bossIcon` | boss头像 |
| cr | String | `sideMonIcon` | 地图侧边栏boss头像 |
| cs | int | `escortBirthGroupSn` | 护卫帕鲁birthGroupSn |
| cs | int | `interval` | 刷新时间间隔：秒 |
| cs | int | `level` | boss等级 |
| cs | int | `recLevel` | 推荐等级 |
| cs | int | `unlockLevel` | 解锁等级 |
| c | String | `firstDropItems` | 首杀掉落物品icon (sn:num,sn:num) |
| c | String | `mainDropItems` | 主要掉落物品icon (sn:num,sn:num) |
| c | String | `normalDropItems` | 普通掉落物品icon (sn:num,sn:num) |
| s | int | `firstDrop` | 首杀掉落组 首杀获取这个，不会再掉落正常组 |
| s | int | `normalDrop` | 正常掉落组 普通掉落 |
| c | int[] | `elements` | boss属性 关联att表 |
| c | int[] | `recElements` | 克制属性 关联att表 |
| c | int | `combat` | 战斗力 |
| cs | int | `sciencePoint` | 首次击杀获得科技点数 只用于显示 |
| cs | int | `quitExitTime` | 主动退出倒计时 |
| cs | int | `exitTime` | 成功退出倒计时 |
| cs | int | `AssistArea` | 助战信标区域 |
| cs | int | `StopTrackDis` | 停止追踪距离半径 |

### Exploration.xlsx

**探索总览|Exploration**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 唯一ID 此值不可随意更改 用来存数据库 10001开始顺序排列 90000开始是假数据 |
| csi | int | `areaSn` | Territory表sn （该玩法种在哪个区） |
| cs | int | `type` | ExporationType表sn 1=据点 2=收集 3=发现 4=突袭窝点（已删） 5=星级挑战 6=随机事件 7=差事委托 8=赛车俱乐部 10=公共事件... |
| cs | int | `logicType` | 根据类型决定读表： logicType=1，ActorBirth收集玩法类型（部分ActorBirth不生效需要找程序监听） logicType=2，Quest... |
| cs | String | `typeParam` | 填表里的SN logicType=1，写BirthSN； logicType=2，Quest表|提交任务的SN logicType=3，RandomEvent表... |
| cs | int | `num` | 探索值 （默认所有填5） |
| cs | String | `rewardStr` | 探索完成奖励货币 不可以配置其他道具，进不了背包 配置格式： itemSN:数量,itemSN:数量 18 探索币4003-圣泽维尔 19 探索币4004 20... |
| cs | boolean | `canDetection` | 是否可以被探测 （区域探测器的功能） |

**探索类型|ExplorationType**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | ExporationType表ID 1=据点 2=特殊收集 3=探索解谜 4=突袭窝点（已删） 5=街区挑战 6=随机事件 7=差事委托 8=赛车俱乐部 10=... |
| c | boolean | `bMap` | 是否大地图显示 |
| c | int | `mapType` | MapSN （大类） |
| cr | String | `image` | 图标 |
| c | Text | `name` | 行为名称 |
| c | Text | `desc` | 行为描述 |
| c | int | `order` | 排序 值越小越靠前,可负数 |

**探索奖励|ExplorationReward**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 唯一ID 此值不可随意更改 用来存数据库 |
| csi | int | `areaSn` | Territory表sn |
| cs | int | `index` | 索引 |
| cs | int | `val` | 阶段值 |
| cs | int | `dropId` | 真实发放奖励 DropGroup表ID RewardPreview表ID |

**探索侦察标记|ExplorationMark**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | TriggerParam 根据Triggertype填写ActorSN或ActorBirthSN |
|  | int | `type` | 归属类型 1：追踪+高亮 2：高亮 3：追踪 |
| c | int[] | `EffectType` | 效果类型 【高亮,追踪,显隐】 （不需要的效果配0 需要的话配多少级的效果） |
| c | boolean | `AutoTrace` | 自动追踪 |
| c | int | `Triggertype` | 1=读ActorBirthSN 2=读ActorSN |
| c | int | `ExplorationSN` | 关联探索SN （关联的探索SN完成后取消探索侦察） |

**探索侦察等级|ScoutLevel**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| cs | int | `level` | 扫描仪等级 |
| csi | int | `ItemSN` | 升级消耗道具 |
| c | int | `Scale` | 探测范围m |
| cr | string | `Icon` | 技能图标 |
| cs | int | `Period` | 技能效果持续时间 |
| cs | int | `CodeDownTime` | 技能冷却时间 |

### ExplorationChallenge.xlsx

**大世界限时挑战|ExplorationChallenge**（170条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn 存库用不可改 |
| c | Text | `challengeName` | 挑战显示名称 |
| cs | int | `type` | 限时挑战类型 11.滑翔挑战 12.闪避挑战 13.球犰挑战 14.骑乘挑战 15.抢雕像挑战 |
| cs | int | `directorBirthSn` | 导演birthSn  |
| cs | int | `joinType` | 参加挑战方式 1：与指定BirthSn的Actor按F互动 2：通过NpcFunc开启 3：导演自己决定规则 |
| cs | int[] | `joinParam` | 根据JoinType决定 1：BirthSn列表 2：留空，去NPCFunc表填 3：导演自己决定 |
| cs | int[] | `interactBirthSns` | 所有可交互的BirthSn列表 做交互按钮显隐控制用 |
| cs | int | `dropSn` | 挑战成功奖励SN |
| cs | int | `challengeTime` | 持续时间（秒） |
| cs | float | `challengeRadius` | 离开失败半径（米） |
| c | float | `warningRadius` | 离开警告半径（米） |
| cs | String | `helpGuiSN` | 挑战帮助界面 引用Help表GUISn |
| c | int[] | `hideNpcBirthSns` | 挑战中隐藏npc列表 |
| c | int | `playerPortalBirthSn` | 挑战开始时玩家传送到指定的birthSn |
| c | int | `playerFocusBirthSn` | 挑战开始时玩家自动转向birthSn |
| c | int | `iconAttachBirthSn` | 小地图icon显示birthSn位置上 不填不显示icon |
| c | int | `mapConfig` | 大地图显示配置 不填无法点击弹出侧边栏 |
| c | int | `hudConfig` | 玩家HUD规则 |
| c | int | `failOperation` | 玩法失败后询问玩家 1:是否返回原点 2:是否重新开始 |
| c | Text | `challengeDesc` | 挑战描述 |
| c | Text | `challengeCountDesc` | 挑战进度描述 |
| c | string | `heroState` | 玩法开启后进入的状态 |
| c | int | `challengeBgm` | 挑战中的bgm(LogicSound表Sn) |
| cs | boolean | `isMultiplayer` | 允许多人参与 |
| cs | boolean | `showCountDown` | 是否显示321倒计时 当前仅支持开启类型为2 （通过NpcFunc开启）的； |
| cs | boolean | `showCommonResultView` | 显示全屏奖励界面 |
| cs | int | `levelLimit` | 等级限制 |
| cs | int | `treasureBoxSn` | 挑战成功宝箱SN |

**限时挑战大地图UI|ECWorldMapUI**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | Text | `mapDetailTitle` | 挑战显示名称 |
| cr | String | `mapDetailImageRef` | 图片引用 |
| c | Text | `mapDetailDesc` | 挑战详细描述 |
| cr | String | `mapIconInstance` | 地图替换icon 不填按照默认显示 |

**限时挑战玩家HUD|ECPlayerHUD**（164条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | boolean | `showView` | 显示挑战倒计时 |
| c | boolean | `bHidePalSystem` | 是否隐藏帕鲁功能 |
| c | boolean | `bHideOpenFuncBtn` | 是否隐藏功能开启按钮 |
| c | boolean | `bHideWeaponBtn` | 是否隐藏武器切换按钮 |
| c | boolean | `bHideBuildSystem` | 是否隐藏建筑按钮 |
| c | boolean | `bHidePalSphere` | 是否隐藏帕鲁球 |
| c | boolean | `waitEndAnim` | 是否等待客户端结束动画 |

### FlyExplorationChallenge.xlsx

**飞行挑战|FlyExplorationChallenge**（20条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 导演的BirthSn |
| c | int | `npcBirthSn` | 大世界NpcBirthSn |
| csr | String | `dataTableName` | 元件生成数据表 |
| cs | int[] | `spawnActorBirths` | 挑战开始生成的BirthSn |
| cs | int[] | `buffs` | 挑战开始添加的Buff |
| cs | int | `checkGlidingTime` | 开始检查滑翔状态时间 |
| cs | int | `checkGlidingTipTime` | 开始检查滑翔状态Tip时间 |
| cs | int | `maxScore` | 最大积分 |
| cs | Location | `startLocation` | 开始位置 |
| cs | float[] | `startRotation` | 开始朝向 |
| cs | int | `destArea` | 终点的AreaSn |
| c | int | `destAreaActor` | 终点Actor的BirthSn |
| cs | int | `startArea` | 起点的AreaSn |
| cs | int | `Paraglider` | 临时滑翔伞Sn |

### FootballHole.xlsx

**球洞配置|FootballHole**（15条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 球犰的BirthSn |
| cs | int | `directorBirthSn` | 导演的BirthSn |
| csr | String | `dataTableName` | 元件生成数据表 |
| cs | int | `treasureBox` | 宝箱BirthSn |
| cs | int | `hole` | 温泉box的BirthSn |
| cs | int[] | `blocks` | 边界groupSn |
| cs | int | `area` | 玩法区域的AreaSn |
| cs | int[] | `failedArea` | 失败区域 |
| cs | int | `limitofKicks` | 踢击次数限制 |

- **Sheet1**（1行×1列）— 非标准表头，可能是说明/辅助sheet

### InstanceUnit.xlsx

**副本单元|InstanceUnit**（9条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 副本sn 请查看子分页 【ID规则】  |
| c | Text | `name` | 副本名称 |
| cs | int | `stepsRepeatTimes` | 阶段重复次数 阶段1,2,3多次重复，配置2表示1,2,3,1,2,3 |
| cs | int[] | `steps` | 阶段数组 |
| cs | int | `unitType` | 副本类型 0=基础副本 1=RobActivity抢劫 2=任务 |
| cs | int[] | `randomGoalGroups` | 随机目标组 unitType=1时生效 |
| cs | int | `chiefDirectorBirthSn` | 主导演BirthSn |
| c | int | `mapIconTypeSn` | MapIconType Sn 关联map表图标类型 剧情副本用21003 |
| s | boolean | `saveStep` | 是否记录失败副本阶段 |
| cs | int | `timeLimit` | 总限时超时后，挑战失败 |
| s | boolean | `deathFailed` | 全体死亡后，挑战失败 |
| s | boolean | `includeRobotDeath` | 全体死亡会计入机器人死亡 |
| cs | int[] | `sceneLimit` | 副本场景限制 |
| c | boolean | `showExitButton` | 完成前显示退出按钮 |
| cs | int | `exitTime` | 副本完成的自动退出倒计时 |
| cs | int | `failExitTime` | 副本挑战失败的自动退出倒计时 |
| cs | int | `exitAreaSN` | 完成副本传送位置 场景类型是副本才生效 |
| cs | int | `anomalousExitAreaSN` | 没有完成副本传送位置 场景类型是副本才生效 |
| cs | boolean | `isMultiplayer` | 是多人副本 配置为TRUE，restPos阶段休整点才生效 |
| c | int | `mainViewType` | 默认右上角， 配置1，使用左上角目标UI |
| c | boolean | `isNeedSuccessView` | 副本单元完成时是否弹出挑战成功UI |
| c | boolean | `isCustomizeMainView` | 是否定制主界面 默认False，特殊玩法用 |
| c | boolean | `isCustomizeFailedView` | 是否定制失败界面 默认False，特殊玩法用 |
| s | int | `deathLimit` | 最大死亡次数 （废弃） |

**副本阶段|InstanceStep**（53条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 阶段sn 请查看子分页 【ID规则】 |
| c | Text | `description` | 阶段描述 UI无显示，文本加[不翻译] |
| cs | int[] | `goalGroups` | 目标组，顺序执行 |
| cs | int[] | `eventSns` | 监听的事件列表InstanceGoalsGroupEvent表sn |
| s | int[] | `CloseDoorBirthSnOnBegin` | 开始该阶段后该birthsn门关闭 |
| s | int[] | `OpenDoorBirthSnOnEnd` | 完成该阶段后该birthsn门开启 |
| cs | int[] | `Groups` | 本阶段开始后，刷新演员组GroupSN |
| s | int | `GroupsDelayTime` | Groups刷新延时（s） |
| s | boolean | `GroupsRetainOnEnd` | 结束的时候是否保留Groups刷新的Actor |
| s | int | `replenishSpawnSn` | 补充刷怪sn |
| cs | Location | `spawnPos` | 阶段出生点 |
| s | float | `spawnRadius` | 重置随机半径（单位厘米） |
| s | float | `spawnDir` | 阶段出生点朝向（0°-360°） |
| cs | Location | `restPos` | 阶段休整点 isMultiplayer配置为TRUE才生效 |
| s | float | `restRadius` | 重置随机半径（单位厘米） |
| c | boolean | `needShowSuccessView` | 本阶段是否要显示成功界面 |
| c | boolean | `canNotRiding` | 是否不可以骑乘（false和空表示可以被骑乘，true表示不能骑） |

**目标组|InstanceGoalsGroup**（76条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 目标组sn 请查看子分页 【ID规则】 |
| cs | int | `groupType` | 目标组类型 0=副本目标组 1=随机目标组 |
| cs | int[] | `goals` | 包含目标sn |
| cs | int[] | `eventSns` | 监听的事件列表InstanceGoalsGroupEvent表sn |
| cs | int[] | `Groups` | 本目标组开始后，刷新演员组GroupSN |
| s | int | `GroupsDelayTime` | Groups刷新延时（s） |
| s | boolean | `GroupsRetainOnEnd` | 结束的时候是否保留Groups刷新的Actor |
| s | int | `replenishSpawnSn` | 补充刷怪sn |

**副本目标|InstanceStepGoal**（76条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 目标sn 请查看子分页 【ID规则】 |
| c | Text | `name` | 目标名字 显示在主界面目标区域 |
| cs | int | `goalType` | 目标类型  |
| cs | int[] | `goalData` | 目标数据 1：杀怪数量（num） 2：指定怪物组SN，击杀数量(groupSn1, groupSn2...,num)支持多组共同计数 3：指定机关birthSN... |
| cs | int | `nextGoal` | 支持目标链，指向下一个目标sn |
| cs | int[] | `addItem` | 目标接取的时候给的临时物品（注：不要在副本第一个目标给物品，会失败） |
| cs | int[] | `eventSns` | 监听的事件列表 InstanceGoalsGroupEvent目标组事件表sn |
| c | boolean | `bShowGoalCount` | 是否显示目标计数 只对0/N类计数生效 百分比、计时类不生效 |
| s | int[] | `Groups` | 目标接受后刷新actor组GroupSN |
| s | int | `GroupsDelayTime` | Groups刷新延时秒 |
| s | boolean | `GroupsRetainOnEnd` | 结束的时候是否保留Groups刷新的Actor 阶段重置和副本失败的时候会删除保留的actotr |
| cr | String | `traceIcon` | 场景指引图标Icon 黄色六边形SP_ComMainBig1 蓝色六边形 SP_ComMainBig2 |
| c | int | `littleMapTraceArea` | 地图指引位置 参数配置AreaSN |
| c | int | `traceType` | 指引点类型 1.点指引 2.区域指引 3.actor指引  |
| c | String | `traceParam` | 场景指引点参数 1.坐标 2.AreaSN 3.ActorBirthSN |
| c | int | `traceHidingDistance` | 场景指引图标的隐藏距离 距离指引点小于该数值时，场景指引图标隐藏（单位米） |
| c | int | `traceShowDistance` | 场景指引图标的显示距离 距离指引点大于该数值时，场景指引图标显示（单位米） |
| cr | String | `traceNia` | 场景指引点特效 基础白色光柱NS_Tracking_IconBeam01 集合圈提示特效 NS_PublicEvent_GatherCircle  |
| c | boolean | `useNavEffect` | 使用特效导航线 |

**目标组事件|InstanceGoalsGroupEvent**（10条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 事件sn |
| cs | int | `eventType` | 事件类型 1：目标组超时（超时时间s） 2：触发通缉 3：Actor死亡（birthSn） 4：Actor进入战斗状态（groupSn） 5：全体死亡 6：玩家... |
| cs | int[] | `eventParam` | 事件参数 1：目标组超时（超时时间s，进度条Sn） 2：触发通缉 3：Actor死亡（birthSn） 4：Actor进入战斗状态（groupSn） 5：全体死... |
| cs | int | `actionType` | 动作类型 1：阶段重置，回到阶段出生点重新开始本阶段 2：替换当前阶段(stepSn) 3：当前目标失败不可完成 4：替换整个阶段列表 5：副本失败  触发后会... |
| cs | int[] | `actionParam` | 动作参数 1：阶段重置，回到阶段出生点重新开始本阶段 2：替换当前阶段(stepSn) 3：当前目标失败不可完成 4：要替换成的阶段列表（跟原来的阶段列表长度相... |
| c | Text | `eventText` | 事件提示文本 |

**副本补充刷怪|InstanceReplenishSpawn**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int[] | `groups` | 演员组 |
| cs | int[] | `spawnThreshold` | 触发刷新阈值（场上怪物数量小于等于此值刷新下一组） |
| s | boolean | `spawnCircle` | groups是否环形刷怪 |
| s | boolean | `retainActorOnEnd` | 补充刷怪结束时是否保留演员 |
| s | int[] | `intervalSec` | 触发死亡刷新间隔时间（s） |
| s | int | `spawnConditionType` | 刷新条件类型 0:无条件 1:指定groupSn的怪物存活 |
| s | String | `spawnConditionData` | 刷新条件数据 |

**副本进度条|InstanceProgressBar**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 进度条Sn |
| c | int | `Type` | 进度条形式（增长或减少） |
| c | boolean | `ShowPercent` | 是否显示百分比提示文本 |
| cr | String | `Color` | 进度条进度图片 |
| c | String | `StageText` | 进度条不同进度文本(引用Str表) |
| cr | String | `Icon` | 进度条图标配置 |

**追逐战|ChaseMonster**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn  |
| cs | int | `petBirthSn` | 坐骑帕鲁birthSn |
| cs | int | `monsterBirthSn` | 怪物birthSn(飞行类的可以配置为0) |
| cs | String | `splineTag` | 样条线标签 |
| cs | boolean | `lockUpDown` | 锁上下操作 |
| s | int | `buffSn` | 临时武器buff |
| cs | int | `type` | 成功条件类型 1：boss到达指定area 2：玩家到达指定area 3：boss血量归零 |
| cs | String | `typeParam` | 成功条件类型 1：birthSn,areaSn 2：areaSn 3：boss的birthSn |
| cs | int | `maxForwardSpeed` |  |
| cs | int | `forwardAcceleration` |  |
| cs | int | `forwardDeceleration` |  |
| cs | int | `maxOffset` |  |
| cs | int | `maxOffsetSpeed` |  |
| cs | int | `offsetAcceleration` |  |
| cs | int | `offsetDeceleration` |  |
| cs | boolean | `isFly` |  |

- **【ID规则】**（16行×6列）— 辅助sheet，首行: 副本单元, 副本阶段, 目标组, 副本目标

### Match.xlsx

**玩法匹配|Match**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 对应副本sn |
| cs | Text | `name` | 匹配单个玩法时提示文本 |
| cs | Text | `multipleName` | 匹配多个玩法时提示文本 |
| c | int | `openUI` | 界面跳转 配置GUI表中的 跳转界面|OpenUI内的sn |
| cs | boolean | `amendRobotCombat` | 修改机器人的战力 |
| cs | boolean | `hidePreapareUI` | 是否跳过准备大厅 默认不填不跳过  |
| s | boolean | `needElo` | 是否需要计算elo值 |
| cs | int | `logicType` | 匹配规则类型 1:默认类型 3:日常副本 |
| cs | int | `type` | 1：载具类 2：多人PVP 3：多人PVE |
| cs | int | `groupType` | 同组玩法在一起根据权重匹配，策划自己增加分组 1：日常副本 |
| cs | int | `minPlayer` | 玩法最低需要人数 logicType=9专用 |
| cs | int | `maxPlayer` | 玩法需要人数 |
| cs | int | `groupCount` | 玩法分组数量 0表示每人一组 |
| s | boolean | `autoTeam` | 是否启用组队系统 （groupPlayer>4时，必然不组队） |
| cs | int | `matchWeight` | 每秒根据权重进行一次随机，权重高的优先匹配上 |
| cs | boolean | `needTeam` | 是可以组队参加 （FALSE表示不能以组队状态参与） |
| cs | int[] | `sceneSn` | 副本池 |
| cs | int | `battleZoneRule` | 战区规则： 0：无战区规则 1：必须同战区匹配 2：有效时间内同战区匹配 |
| cs | int | `battleZoneRuleTime` | 战区规则有效时间，战区规则2参数 |
| cs | int | `platformRule` | 同平台规则： 0：无平台限制 1：必须同平台匹配（pc模拟器，移动平台） 2：有效时间内同平台匹配 |
| cs | int | `platformRuleTime` | 同平台规则有效时间，同平台规则2参数 |
| cs | int | `robotSourceType` | 机器人数据源： 0：Match表robotPool列 1：RankMatchRobot表rankRobotPool列 2：RankMatchRobot表pveR... |
| cs | int | `matchRobotRule` | 匹配机器人规则： 0：不匹配机器人 1：从匹配池中随机填满 2：随机但不重复（池内不能出现重复sn，数量要足够） |
| cs | int | `addRobotTime` | 添加机器人时间（秒） |
| cs | int[] | `robotPool` | 机器人匹配池 |

**等级匹配分段|LevelMatchRank**（11条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号（等级匹配分组sn） |
| cs | int[] | `level` | 等级匹配区间（都是闭区间） |
| cs | int | `matchTime` | 匹配时间（以此时间为标准，50%时扩大匹配分组），时间秒 |
| cs | int | `robotWeaponLevel0` | 机器人装备等级下限 |
| cs | int | `robotWeaponLevel1` | 机器人装备等级上限 |

**段位匹配机器人|RankMatchRobot**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 对应副本sn |
| s | int[] | `rank1RobotPool` | 青铜段位匹配的机器人池 |
| s | int[] | `rank2RobotPool` | 白银段位匹配的机器人池 |
| s | int[] | `rank3RobotPool` | 黄金段位匹配的机器人池 |
| s | int[] | `rank4RobotPool` | 铂金段位匹配的机器人池 |
| s | int[] | `rank5RobotPool` | 钻石段位匹配的机器人池 |
| s | int[] | `rank6RobotPool` | 大师段位匹配的机器人池 |
| s | int[] | `pveRobotPool` | pve匹配的机器人池 |

**新手流程|NoviceMatch**（36条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| s | int | `rank` | 段位等级 |
| s | int | `seasonActivityType` | 活动大类 |
| s | int[] | `robotSeconds` | 匹配时间 |
| s | int[] | `matchSn` | 可接的匹配sn |
| s | int[] | `matchWeight` | 可接的匹配sn对应权重，分母100，所填数加起来必须100 |
| s | int[] | `sceneSn` | 匹配后场景 |
| s | int[] | `robotPool` | 机器人匹配池 |
| s | boolean | `allBot` | 是否全匹配机器人 |
| cs | int | `buffSn` | 给玩家上的减伤buff |

**新手流程匹配场景|NoviceMatchScene**（14条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int[] | `sceneSn` | 匹配sn对应的副本 |
| cs | int[] | `sceneWeight` | 场景对应的权重,分母100，所填数加起来必须100 |

**打开界面|MatchOpenUI**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | String | `Gui` | Gui名称 |
| c | Text | `buttonName` | 按钮名称 |

**机器人战力修改|RoBotCombatAmend**（20条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | float | `forceLimitMin` | 下限-开区间 |
| cs | float | `forceLimitMax` | 上限-闭区间 |
| cs | int | `buffSn` | buffSn |