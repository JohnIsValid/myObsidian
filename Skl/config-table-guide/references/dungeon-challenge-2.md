## 副本与挑战（续）

### Mirror.xlsx

**位面本|Mirror**（142条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 位面sn |
| cs | int | `livingTime` | 副本时长(单位秒) |
| cs | int | `masterSceneSn` | 离开位面时要返回的场景 |
| cs | boolean | `canAutoLeave` | 能否主动离开 |
| cs | int | `secondSureStr` | 二次确认str |
| cs | boolean | `showLoading` | 是否要显示Loading条 |
| cs | int | `LoadingEffect` | 切场景loading效果 1代表播放刷漆效果 （但刷漆已经废弃） 2代表播放水波纹效果 |
| cs | boolean | `beNight` | 是否要变黑 |
| cs | int | `enterCarBirthSn` | 进入位面时要刷出的birthsn |
| cs | float[] | `enterCarPos` | 刷出的车要进入车的位置 |
| cs | int | `enterCarQuestSn` | 刷车时的当前任务sn |
| cs | int | `leaveCarBirthSn` | 离开位面时要刷出的birthsn |
| cs | float[] | `leaveCarPos` | 刷出的车要进入车的位置 |
| cs | int | `leaveCarQuestSn` | 刷车时的当前任务sn |
| cs | int[] | `inAreaSns` | 超出这些区域一定时间后要踢出位面 |

### MoleSeizeStatue.xlsx

**遁地鼠抢雕像|MoleSeizeStatue**（9条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 导演的BirthSn |
| cs | int | `statueBirthSn` | 雕像的BirthSn |
| cs | int | `moleBirthSn` | 遁地鼠的BirthSn |
| cs | int[] | `randomArea` | 随机出土区域 |
| cs | int | `hpPercentLimit` | 血量单次降低百分比 |
| cs | int | `showTimeLimit` | 露头时间 |
| cs | int[] | `moundBirthSn` | 土堆的BirthSn |
| c | int | `startStorySn` | 开始的StorySn |
| csr | String | `UPMTG` | 钻出蒙太奇 |
| csr | String | `DownMTG` | 遁地蒙太奇 |

### MultiInstance.xlsx

**中途加入条件|JoinMidWayCondition**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 副本sn（对应场景sn） |
| s | int | `leftTime` | 局内剩余时间小于此时间不再找人加入残局，单位秒 |
| s | int | `winScore` | 提前胜利条件大于此数时不再找人加入残局 1.团队死斗--先杀满人数，战斗-团队战斗副本|GroupFightInstance的preWinParam列 2.军备... |

**战斗-团队战斗副本|GroupFightInstance**（8条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 副本sn（对应场景sn） |
| cs | Text | `name` | 副本名称 |
| cs | int | `groupFightType` | 赛季日程-玩法类型 1=训练家联赛 |
| cr | String | `icon` | 图标 |
| cr | String | `boardIcon` | 战绩面板右上角图标 |
| cs | Text | `details` | 玩法描述（开局展示） |
| s | int | `directorSn` | 默认导演birthSn |
| s | int | `type` | 副本类型type（1=原有段位玩法 2= GC限时玩法） |
| cs | int | `balanceAttrSn` | 公平属性SN （0表示不使用公平属性）（废弃） |
| cs | int | `activityBagSn` | 活动背包 ActivityBag表sn（废弃） |
| cs | int | `rounds` | 轮数 |
| cs | int | `winRound` | 胜利轮数 |
| cs | int | `battleShowSn` | 开局/结算展示sn |
| cs | int | `beginStorySn` | 开场剧情sn |
| cs | int | `perRoundTime` | 每轮时间（单位秒） |
| cs | int | `nextRoundInterval` | 下一轮间隔时间（实际显示时间为-3秒） |
| s | String | `birthList` | 每轮开始刷出，每轮结束清理（格式为：birthSn:time,birthSn:time） |
| cs | int | `prepTime` | 准备时间 |
| cs | int[] | `groupMem` | 团队人数（废弃） |
| cs | Text[] | `groupName` | 团队名称 |
| cr | String[] | `groupIcon` |  |
| c | Text | `beginHint1` | 开场提示1 |
| c | Text | `beginHint2` | 开场提示2 |
| c | Text | `regularInstruction` | 常态指引文字 |
| s | String | `group1InitPos` | 团队初始位置（每个节点格式为 x,y,z 节点之间以 | 分隔，每个队伍之间用逗号隔开） |
| s | String | `group1InitDir` | 团队初始朝向（每个节点格式为 x,y,z 节点之间以 | 分隔，每个队伍之间用逗号隔开） |
| s | String | `group2InitPos` | 团队初始位置（每个节点格式为 x,y,z 节点之间以 | 分隔，每个队伍之间用逗号隔开） |
| s | String | `group2InitDir` | 团队初始朝向（每个节点格式为 x,y,z 节点之间以 | 分隔，每个队伍之间用逗号隔开） |
| s | String | `group1RevivePos` | 团队复活位置（每个节点格式为 x,y,z 节点之间以 | 分隔，每个队伍之间用逗号隔开） |
| s | String | `group1ReviveDir` | 团队复活朝向（每个节点格式为 x,y,z 节点之间以 | 分隔，每个队伍之间用逗号隔开） |
| s | String | `group2RevivePos` | 团队复活位置（每个节点格式为 x,y,z 节点之间以 | 分隔，每个队伍之间用逗号隔开） |
| s | String | `group2ReviveDir` | 团队复活朝向（每个节点格式为 x,y,z 节点之间以 | 分隔，每个队伍之间用逗号隔开） |
| c | String | `mainView` | 玩法HUD View名字 |
| cs | int | `WinType` | 胜利类型： 1，存活人数多的获胜。 2，击杀数高的获胜。 3，积分数高的获胜。 |
| c | Text | `WinTypeDetails` | 胜利目标描述 显示在局内战绩面板左上角 |
| cs | int | `preWinParam` | 提前胜利条件： 1，所有敌人全灭。（可不用配置） 2，击杀数达到指定值。 3，积分数达到指定值。 |
| s | int | `killScore` | 击杀获得积分数 |
| s | int | `deadScore` | 死亡获得积分数（可为负值） |
| cs | int | `singleReviveCnt` | 单人复活次数 |
| cs | int | `groupReviveCnt` | 团队复活次数 |
| s | boolean | `nextRoundResetBag` | 下一轮是否重置背包 |
| s | boolean | `dieResetBag` | 死亡是否重置背包 |
| s | boolean | `nextRoundResetPlayerData` | 下一轮是否重置玩家数据 |
| c | boolean | `hideHeadHP` | 是否隐藏血条（默认不隐藏） |
| s | int | `winDropSn` | 胜利方DropSn奖励 |
| s | int | `loseDropSn` | 输方DropSn奖励 |
| s | int | `winMVPDropSn` | 胜利方DropSn奖励 |
| s | int | `loseMVPDropSn` | 输方DropSn奖励 |
| s | int | `dailywinDropSn` | 每日超过上限后胜利方DropSn奖励 |
| s | int | `dailyloseDropSn` | 每日超过上限后输方DropSn奖励 |
| s | int | `dailywinMVPDropSn` | 每日超过上限后胜利方DropSn奖励 |
| s | int | `dailyloseMVPDropSn` | 每日超过上限后输方DropSn奖励 |
| s | boolean | `allLeaveLose` | 任意一方全体离开，对面方直接胜利 |
| cr | String | `logoImg` | logo图片 |
| cs | int | `gunGameGroupSn` | 军备竞赛玩法groupSn，winType为4时生效 |
| c | boolean | `needDestruction` | 当前PVP是否需要角色和可破坏物碰撞 |

**PVP-夺金副本|RobMoneyArena**（7条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 副本sn（对应场景sn） |
| cs | int | `gamePlayType` | 玩法类型枚举： 1=夺金PVP 2=夺金PVPVE （暗金突袭） |
| cs | int | `beginStoryPlayType` | 开场展示动画，读取StorySN |
| cs | int | `endStoryPlayType` | 结算展示动画，读取StorySN |
| cs | int | `duration` | 单局持续时间（单位 秒 s） |
| csi | int | `funcOpenSN` | 用于映射FuncOpen表 |
| cs | int[] | `winDropGroupSn` | 获胜奖励（冠军，亚军，季军） <一定日游玩次数的奖励 |
| cs | int[] | `winDropGroupSnExtra` | 获胜奖励（冠军，亚军，季军） >=一定日游玩次数的奖励 |
| cs | int | `playerDieOverScore` | 玩家死亡奖励分数  单位万/W |
| cs | float | `playerDieTeamDropScore` | 被击杀者同分组掉落分数比例  单位万/W |
| cs | float | `playerDieTeamOverScore` | 被击杀者同分组扣除分数比例  单位万/W |
| cs | String[] | `endHint` | 结束提示语 |
| c | int | `SettlementCountdown` | 结算界面倒计时 |
| cs | int | `
delayQuitTime` | 玩法结束延迟退出副本时间 |
| cs | int | `beginHintRemainTime` | 开场提示停留时间（单位秒 s） |
| c | Text | `beginHint1` | 开场提示1 |
| c | Text | `beginHint2` | 开场提示2 |
| cr | Text | `Gameplayname` | 玩法名称 |
| c | Text | `GameplayDescribe` | 玩法说明（局内显示） |
| cr | String | `iconImg` | 任务区显示的图标 |
| c | int | `helpSN` | 帮助 |
| cs | Text[] | `groupName` | 团队名称 |
| cr | String[] | `groupIcon` | 团队图标 |
| cr | String[] | `ScoreiconImg` | 成绩显示图标 |
| s | boolean | `submitScoreMethods` | 提交分数方式： 1.自动提交 2.交互提交 |
| cs | float | `atmOpenTime` | ATM与人的交互时间(单位秒) |
| cs | float | `atmIntervalTime` | ATM上交分数的间隔时间(单位秒) |
| cs | int | `atmOneSubmintScore` | ATM每次上交的分数 |
| cs | float | `atmLifeTime` | ATM存留时间(单位秒) |
| s | String | `atmBirthSn` | ATM刷新sn |
| cs | int | `WinScore` | 获胜分数（ 提交到服务器上获胜的分数） |
| s | String | `group1InitPos` | 团队1初始位置（每个节点格式为 x,y,z 节点之间以 | 分隔） |
| s | String | `group1InitDir` | 团队1初始朝向（每个节点格式为 x,y,z 节点之间以 | 分隔） |
| s | String | `group2InitPos` | 团队2初始位置（每个节点格式为 x,y,z 节点之间以 | 分隔） |
| s | String | `group2InitDir` | 团队2初始朝向（每个节点格式为 x,y,z 节点之间以 | 分隔） |
| s | String | `group3InitPos` | 团队3初始位置（每个节点格式为 x,y,z 节点之间以 | 分隔） |
| s | String | `group3InitDir` | 团队3初始朝向（每个节点格式为 x,y,z 节点之间以 | 分隔） |
| cs | int | `RevivalPosType` | 复活位置选择规则 枚举1：随机复活点复活 枚举2：在最近队友附近的复活点复活。 |
| s | String | `group1RevivalPos` | 团队1复活点（每个节点格式为 x,y,z 节点之间以 | 分隔） |
| s | String | `group1RevivalDir` | 团队1复活点朝向（每个节点格式为 x,y,z 节点之间以 | 分隔） |
| s | String | `group2RevivalPos` | 团队2复活点（每个节点格式为 x,y,z 节点之间以 | 分隔） |
| s | String | `group2RevivalDir` | 团队2复活点（每个节点格式为 x,y,z 节点之间以 | 分隔） |
| s | String | `group3RevivalPos` | 团队3复活点（每个节点格式为 x,y,z 节点之间以 | 分隔） |
| s | String | `group3RevivalDir` | 团队3复活点（每个节点格式为 x,y,z 节点之间以 | 分隔） |
| s | int[] | `cashItemGroupSn` | 场景默认刷新组 （GroupRefresh刷新规则） |
| s | String | `bucketRefreshTime` | 一沓美金刷新时间（单位秒） |
| s | String | `bucketRefreshGroup` | 一沓美金刷新组（birth_GroupSn） |
| s | String | `bucketRefreshNum` | 一沓美金刷新数量 |
| s | String | `highvalueRefreshTime` | 金条箱、运钞车、BOSS刷新时间（单位秒） |
| s | String | `highvalueRefreshGroup` | BOSS、金条箱、运钞车刷新组（birth_GroupSn） |
| s | String | `highvalueRefreshNum` | 金条箱、运钞车刷新数量 |
| s | String | `highvalueDelayTime` | 金条箱、运钞车、怪物延迟刷新时间 (单位秒) |
| s | String | `hintRemindTime` | 提示刷新时间（单位秒） |
| cs | int | `showChampionPostionTime` | 显示冠军坐标时间 |
| cs | int[] | `showBossPostionBirth` | 地图与导航显示BOSS怪的Birth |
| c | String | `showBossPostion` | 展示BOSS怪图标 |
| s | String | `hintTextSn` | 提示语Sn（str表） 参数1=文本 参数2=提示限时时长 参数3=提示样式（1为金库箱样式，2为运钞车样式，3为怪物样式，4角色样式） |
| cs | int[] | `warMessage` | 战局播报信息： 枚举1.当任意队伍存入现金>=90% 枚举2.某角色开始夺取金库箱提示 枚举3.某角色开始夺取运钞车提示 枚举4.队伍获得积分>=指定分数值 枚... |
| cs | int[] | `warMessageParameter ` | 战局播报信息的条件参数： 枚举1.百分比（万分为） 枚举2.无参数 枚举3.无参数 枚举4.参数：分数值 枚举5.参数：分数值 枚举6.参数：累计杀怪数 枚举7... |
| cs | int[] | `warMessageType` | 信息播报方式： 枚举1=全体播报 枚举2=同分组播报 |
| cs | int[] | `warMessageContent` | 播报信息对应的文字SN |
| csr | String[] | `interactMontage` | 交互蒙太奇： 1.ATM 2.金条箱、运钞车 |
| c | int | `mapIconStartChallengSn` | 地图数据索引sn （MapIconStartChalleng表的sn） |
| cs | int[] | `endBuffs` | 结束时玩家添加的buff列表 |
| cs | int | `revivalEnemyDistanceMin` | 复活时离敌人最小距离m (大于才能复活) |
| cs | int | `revivalGroupDistanceMax` | 复活时离玩家最大距离m (小于才能复活) |

**PVP-夺金区域任务|RobMoneyAreaTask**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 区域sn |
| cs | int | `taskType` | 任务类型 |
| cs | int | `monsterGroupSn` | 怪物组sn |
| cs | int | `rewardScore` | 完成后奖励分数 |
| cs | int | `beginGroupStrId` | 开始时同队文字提示 |
| cs | int | `beginOtherStrId` | 开始时其他队伍文字提示 |
| cs | int | `endGroupStrId` | 结束时同队文字提示 |
| cs | int | `endOtherStrId` | 结束时其他队伍文字提示 |

**死斗之军备竞赛玩法|GunGame**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `groupSn` | Buff配置组 |
| cs | int | `buffCnt` | 武器数量 |
| cs | int  | `upgradeKillCnt` | 升级所需击杀数 |
| cs | int | `level` | 击杀数对应等级 |
| s | int | `buffSn` | buffSn |
| s | int | `nextBuffSn` | 下一个buffSn |
| cs | int | `weaponSn` | 武器Sn |
| cs | int | `nextWeaponSn` | 下一把武器Sn |

**个人死斗副本|FreeForAllInstance**（7条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 副本sn（对应场景sn） |
| c | Text | `name` | 副本名称 |
| cr | String | `logoImg` | logo图片 |
| cs | Text | `details` | 玩法描述（开局展示） |
| cs | int | `battleShowSn` | 开局/结算展示sn |
| cs | int | `beginStorySn` | 开场剧情sn |
| cs | int | `remainCount` | 当第一离达到目标还有多少个人头 |
| s | int | `type` | 副本类型type（1=原有段位玩法 2= GC限时玩法） |
| cs | int | `rounds` | 轮数 |
| cs | int | `winRound` | 胜利轮数 |
| cs | int | `perRoundTime` | 每轮时间（单位秒） |
| cs | int | `nextRoundInterval` | 下一轮间隔时间（实际显示时间为-3秒） |
| s | String | `birthList` | 每轮开始刷出，每轮结束清理（格式为：birthSn:time,birthSn:time） |
| cs | int | `prepTime` | 准备时间 321 go |
| c | Text | `beginHint1` | 开场提示1 |
| c | Text | `beginHint2` | 开场提示2 |
| c | Text | `regularInstruction` | 常态指引文字 |
| cs | int | `WinType` | 胜利类型： 5 个人死斗玩法 |
| cs | int | `preWinParam` | 提前胜利条件：击杀数达到指定值。  |
| s | int | `killScore` | 击杀获得积分数 |
| s | int | `deadScore` | 死亡获得积分数（可为负值） |
| cs | int | `singleReviveCnt` | 单人复活次数 |
| s | boolean | `nextRoundResetBag` | 下一轮是否重置背包 |
| s | boolean | `dieResetBag` | 死亡是否重置背包 |
| s | boolean | `nextRoundResetPlayerData` | 下一轮是否重置玩家数据 |
| cs | String | `respawnPos` | 玩家初始位置(每个节点格式为x.y.z节点之间以|分隔） |
| cs | String | `respawnDir` | 玩家初始朝向（每个节点格式为 x.y.z节点之间以|分隔 |
| cs | int[] | `dropReward` |  不同排名玩家的奖励配置 格式  sn,sn,sn  |
| cs | int[] | `dropRewardSeasonRank` | 赛季 玩家的奖励配 格式  sn,sn,sn  |
| c | boolean | `hideHeadHP` | 是否隐藏血条（默认不隐藏） |

**帮派战斗|UnionWar**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 副本sn（对应场景sn） |
| csi | int | `groupSn` | 副本对应组sn |
| cs | Text | `name` | 副本名称 |
| cr | String | `icon` | 图标 |
| cs | Text | `details` | 玩法描述（开局展示） |
| s | int | `directorSn` | 默认导演birthSn |
| cs | int | `prepTime` | 准备时间 |
| cs | int | `
duration` | 单局持续时间（单位 秒 s） |
| cs | int | `exitTime` | 结算时间 |
| cs | int | `groupMem` | 团队人数 |
| s | String | `areaBirthList` | 区域出生点列表（AreaID1:BirthID11,BirthID12）|（AreaID2:BirthID21,BirthID22） |
| s | String | `areaReviveList` | 区域复活点列表（AreaID1:BirthID11,BirthID12）|（AreaID2:BirthID21,BirthID22） |
| s | String | `strongHoldAreaList` | 据点区域列表（StrongHoldID1:Area11,AreaID12）|（StrongHoldID2:Area21,AreaID22） |
| cs | int | `preWinParam` | 分数达到胜利 |
| cs | int | `killScore` | 击杀获得积分数 |
| cs | int | `strongHoldScore` | 控制区域时获得积分数 |
| cs | float | `strongHoldLoopTime` | 据点控制后多少s加一次分数 |
| cs | String | `strongHoldLoopScore` | 据点控制后持续数量加分（Num1:AddScore1）|（Num2:AddScore2） |
| cs | int | `playerKillScore` | 玩家击杀获得积分数 |
| cs | int | `playerAssistScore` | 辅助击杀获得积分数 |
| cs | float | `playerAssistTime` | 距离死亡多少s的伤害算助攻 |
| cs | int | `playerRescueScore` | 营救获得积分数 |
| cs | int | `playerStrongHoldScore` | 控制区域时获得积分数 |
| s | int | `areaBirthBuffSn` | 出生点BUFFSn |
| s | int | `winDropSn` | 胜利方DropSn奖励 |
| s | int | `loseDropSn` | 输方DropSn奖励 |
| cs | int | `normalMonsterReward` | 普通怪物积分奖励 |
| cs | int | `bossReward` | 首领怪物积分奖励 |
| cs | String | `bossSpawnPool` | 首领刷新池 填写格式：刷新节点比例:bossSN1:GeneralBuffSN:boss头像,刷新节点比例:bossSN2:GeneralBuffSN:boss... |
| s | int[] | `StartWallBirthSn` | 出生阻挡刷新组 |

### Pvp.xlsx

**pvp安全区|PvpSafeArea**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN（填AreaSN） |

**pvp罪恶值效果|PvpEvilEffect**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | sn(从1开始往下拉) |
| s | int | `evilValueMax` | 本段配置对应罪恶值区间上限（小于等于） 最后一级配置填99999 |
| s | float | `wantedScore` | 每个PVP击杀的额外通缉值(可以填小数) |
| s | int | `addiFine` | 每次死亡或被捕的额外罚款 |

**PVP参考标准属性|PvpRefAttrs**（69条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn（等级，1开始） |
| cs | int | `weaponLevel` | 参考武器装等 |
| cs | String | `attrs` | 参考属性 |
| cs | float | `modifierRangeMin` | 调整系数下限 |
| cs | float | `modifierRangeMax` | 调整系数上限 |
| cs | int | `hpShdTotalValue` | 标准生命+护盾值 |
| cs | float | `modifierHpShdRangeMin` | 生命+护盾值 调整系数下限 |
| cs | float | `modifierHpShdRangeMax` | 生命+护盾值 调整系数上限 |

**PVP参考武器成长率|PvpRefWeaponMul**（851条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn（装等） |
| cs | float | `weaponMul` | 参考武器成长率 |

### SavageBoss.xlsx

**狂暴Boss|SavageBoss**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | bossSn(eventTriggerSN) |
| cs | int[] | `areaSns` | 活动区域(大世界) |
| c | Text | `name` | 怪物名称 |
| cs | int | `duringTime` | 活动时长（单位秒） |
| c | int[] | `suggestAttr` | 推荐属性 读取attr表元素Icon sn |
| cs | int | `dropSn` | 奖励预览 |
| cs | int | `hintStrId` | 作废,走eventtrigger |
| cs | int | `costEnergy` | 消耗体力提示 |
| cr | String | `TitlePicture` | 标题图 |
| c | Text | `Description` | 玩法描述 |

**场景Boss的区域|SavageBossArea**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 活动区域sn （大世界） |
| cs | int | `savageBossSn` | 狂暴bossSn |
| cs | int | `targetScene` | 目标场景 |
| cr | String | `tracePicture` | 追踪图标 |
| cr | String | `frameIcon` | 底框图标 |
| s | int | `bossBirthSn` | bossBirthSn |
| cs | int | `maxPlayerNum` | 最大场景人数 |
| c | int | `crystalBirthSn` | 大世界晶石birthsn |
| cs | int | `maskBirthSn` | 大世界遮罩birthsn |
| cs | int | `rewardStrId` | 拾取奖励提示 |
| cs | int | `mirrorTreasureBoxSn` | 位面宝箱birthsn |
| cs | int | `TreasureBoxSn` | 大世界宝箱birthsn |
| s | int | `delayTickSecond` | 活动结束延迟踢人时间，单位秒 |
| s | int | `delayDestroyMin` | 无人多长时间销毁单位分钟 |
| cs | Location | `exitPos` | 退出位置 |
| cs | float | `exitDir` | 退出的主角朝向 -1为不做处理， 有效范围 0-360， 0度朝向X轴正方向、 90度朝向Y轴正方向 |

### SniperElite.xlsx

**狙击精英场景信息|SniperEliteSceneInfo**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 星级挑战SN |
| sc | int[] | `monsterGroupSn` | 刷新怪GroupSn 默认随场景刷的不要填入 |
| sc | int[] | `ScoreCondition` | 分数条件索引 |
| sc | float[] | `CameraRotation` | 相机角度 Pitch,Yaw,Roll |

**计分条件|SniperEliteScoreCondition**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 分数sn |
| sc | int | `type` | 计分类型 1.击杀 2.爆头 3.炸死 |
| sc | float | `typeValue` | 条件参数 1.（CBT3）[击杀]参数1：击杀分数倍率 2.（CBT3）[爆头]参数1：爆头分数倍率 3.（CBT3）[炸死]参数1：炸死分数倍率 4.（暂不实... |
| sc | int[] | `ExclusiveConditions` | 互斥条件 触发本条件则不触发其他条件SN，避免重复加分 |
| sc | int | `str` | 分数跳字 |

**击杀得分|SniperEliteScore**（10条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `challengeSn` |  星级挑战SN |
| sc | int | `actorSn` | 怪物编号 |
| sc | int | `score` | 击杀基础分数 |
| cs | int | `dist` | 提示距离单位米 |
| cr | String | `traceIcon` | 追踪图标 |
| c | float | `traceOffset` | 追踪图标偏移 单位米 |

### SoloTower.xlsx

**共鸣回廊|SoloTower**（30条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn   |
| csi | int | `level` | 层次 |
| cs | int | `levelLimit` | 等级限制 |
| cs | int | `monsterLevel` | 怪物等级 |
| cs | int | `suggestLevel` | 推荐等级 |
| cs | int | `levelLimitTime` | 关卡限时 |
| cs | int | `group` | 怪物组 |
| cs | int | `bossBirth` | 首领birth （配置则击杀该怪物即通关，副本目标提示杀BOSS，留空则击杀所有怪通关，副本目标是怪物计数） |
| cr | string | `bossBanner` | BOSS来袭提示图 （配置则开始时播放） |
| cs | int | `buffSn` | buffSn(加强怪物，索引skill表) |
| cs | String[] | `forceBuffInfo` | 战力碾压buff （玩家不满足推荐战力时，怪物的额外强化buff，玩家战力/推荐战力的比例，min=闭区间,max=开区间） （格式min:max:buffsn... |
| cs | int | `levelReward` | 楼层奖励 |
| cs | boolean | `bNeedHint` | 战区首次通关是否需要播放跑马灯 |
| cr | String | `btnImage` | 楼层按钮图标 |
| cr | String | `bpAssetName` | ActorHouse展示怪物蓝图 |
| c | int | `showBirthSn` | ActorHouse展示怪物 （birth） |
| c | float | `cameraOffsetX` | 相机距离偏移 (单位cm，正值远离，负值靠近） |
| c | float | `cameraOffsetY` | 相机左右偏移 (单位cm，正值向左，负值向右） |
| c | float | `cameraOffsetZ` | 相机高度偏移 (单位cm，正值向上，负值向下） |
| c | float | `scale` | 缩放比例 |
| c | Text | `levelDesc` | 楼层描述 |
| c | int[] | `recommendElements` | 属性 元素属性图标ElementIcon |
| cr | String | `palImg` | 楼层帕鲁图标 |

- **Sheet2**（76行×13列）— 辅助sheet，首行: 3,45互换, v

- **Sheet1**（217行×11列）— 辅助sheet，首行: 1, 161200

- **Sheet3**（103行×48列）— 辅助sheet，首行: 

**关卡存底儿勿动**（120条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn   |
| csi | int | `level` | 层次 |
| cs | int | `levelLimit` | 等级限制 |
| cs | int | `monsterLevel` | 怪物等级 |
| cs | int | `suggestScore` | 推荐战力 |
| cs | int | `levelLimitTime` | 关卡限时 |
| cs | int | `group` | 怪物组 |
| cs | int | `bossBirth` | 首领birth （配置则击杀该怪物即通关，副本目标提示杀BOSS，留空则击杀所有怪通关，副本目标是怪物计数） |
| cs | int | `doorBirthSn` | 大门birthSn |
| cr | string | `bossBanner` | BOSS来袭提示图 （配置则开始时播放） |
| cs | int | `buffSn` | buffSn(加强怪物，索引skill表) |
| cs | String[] | `forceBuffInfo` | 战力碾压buff （玩家不满足推荐战力时，怪物的额外强化buff，玩家战力/推荐战力的比例，min=闭区间,max=开区间） （格式min:max:buffsn... |
| cs | int | `levelReward` | 楼层奖励 |
| cs | int | `firstReward` | 首通奖励 |
| cs | boolean | `bNeedHint` | 战区首次通关是否需要播放跑马灯 |
| cr | String | `btnImage` | 楼层按钮图标 |
| cr | String | `bpAssetName` | ActorHouse展示怪物蓝图 |
| c | int | `showBirthSn` | ActorHouse展示怪物 （birth） |
| c | float | `cameraOffsetX` | 相机距离偏移 (单位cm，正值远离，负值靠近） |
| c | float | `cameraOffsetZ` | 相机高度偏移 (单位cm，正值向上，负值向下） |

### StrongHoldBattle.xlsx

**据点战|StrongHoldBattle**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int | `type` | 据点类型 1、一般据点 2、特殊据点（走副本目标） |
| cs | int | `instanceUnit` | 对应instanceUnit的ID                                                               ... |
| cs | int | `sceneSn` | 场景sn |
| cs | boolean | `outDoor` | TRUE=室外据点 |
| c | Text | `name` | 据点名称 |
| c | Text | `desc` | 据点描述 |
| cr | string | `bgImg` | 背景图 |
| c | int | `mapIconSn` | MapIconCom表sn |
| cs | int | `lv` | 推荐等级 |
| cs | int | `force` | 战力 |
| cs | int | `difficult` | 难度等级 参照StrongHoldBattleBuff页sn |
| c | int | `previewDropGroupSn` | 预览奖励 |
| cs | int | `bossBirthSn` | boss |
| cs | int | `boxBirthSn` | boss死亡后会掉落此宝箱 |
| cs | int[] | `specialBoxBirthSn` | 隐藏宝箱，可以有多个 |
| s | Location | `birthPos` | 场景出生点 |
| s | float[] | `birthDir` | 出生朝向 |
| s | Location | `leavePos` | 出口坐标 当踩出口回到主城的时候回到该点 |
| s | float[] | `leaveDir` | 出口朝向 |
| c | int[] | `questSns` | 退出场景时需要检查的任务sn |
| c | String | `mapPicture` | 大地图上红区遮照图片 |
| c | float[] | `mapPos` | 像素坐标 |
| c | int | `questHintSn` | strsn |

**据点战战力buff|StrongHoldBattleBuff**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | float | `forceLimitMin` | 战力下限-开区间 |
| cs | float | `forceLimitMax` | 上限-闭区间 |
| s | int | `buffSn` |  |
| c | Text | `Hint` | UI面板提示 |
| cr | string | `bgName` | 背景图的名字 |
| cr | string | `bgImg` | 难度背景图 |

- **Sheet1**（58行×12列）— 辅助sheet，首行: 

### Tower.xlsx

**关卡定义|TowerLevel**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 关卡SN |
| cs | int | `unlockLevel` | 解锁等级 |
| csr | int | `Type` | 关卡类型 1：分页1 2：分页2 |
| c | text | `roundName` | 关卡名称 |
| cr | text | `desName` | 描述名称 |
| cr | text | `difficulty` | 关卡难度 |
| cr | String | `RoundBg` | 配图，背景图（入口界面的图和大背景图用一张） |
| cs | int[] | `fightStyles` | 此房间可选战斗风格 1、配战斗风格组，此房间只能使用所配的战斗风格和带有此战斗风格的标签 2、如果不配则无限制 3、逗号隔开 |
| cs | int[] | `roomGroup` | 房间组 |
| cs | int[] | `roomWeight` | 房间组权重 |
| cs | int | `suggestionGS` | 推荐战力/等级 |
| c | text | `roundContent` | 关卡描述 |
| cs | int | `firstReward` | 首次通关奖励 关联掉落表 |
| cs | int | `reward` | 普通奖励 关联掉落表 |
| cs | int | `monsterLevel` | 怪物等级 |
| cs | int | `nextRoomLevel` | 下一个房间怪物增加几级 |
| cs | int | `affixNum` | 词缀数量 |
| cs | int | `ReviveTime` | 复活次数 |
| cs | int | `PowerLimit` | 体力消耗限制 |

**房间组|TowerRoomGroup**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 房间组sn |
| cs | int[] | `roomContent` | 房间内容 |
| cs | int[] | `roomWeight` | 房间权重 |

**房间定义|TowerRoom**（183条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 房间SN |
| c | text | `RoomName` | 房间名称 |
| c | text | `RoomTips` | 房间提示 |
| csi | int | `InstanceUnitSn` | 副本sn |
| csi | int | `Scene` | 场景SN |
| cs | int | `BirthSN` | 玩法导演BirthSN |
| cs | int | `BuffBirthSN` | buff交互物BirthSN |
| cs | int | `BuffShopBirthSN` | buff商店BirthSN |
| cs | int[] | `TowerPoint` | 通关每个副本阶段玩家可获积分 |
| cr | String | `Icon` | 场景指引点Icon和地图图标类型 |
| c | int | `LoadingSequence` | 传送动画 |
| cs | int | `TransportationBirthSN` | 传送点BirthSN 最后一个房间不配 |
| cs | int | `FirstRewardBoxBirthSN` | 首次通关掉落箱子BirthSN 只在最后一个房间里配 |
| cs | int | `RewardBoxBirthSN` | 非首次通关掉落箱子BirthSN 只在最后一个房间里配 |
| cs | int | `BuffGroup1` | Buff位置1 |
| cs | int | `BuffGroup2` | Buff位置1 |
| cs | int | `BuffGroup3` | Buff位置1 |
| cs | int | `Countdown` | 倒计时s |
| cs | int | `AutoTransferTime` | 自动传送倒计时 s 最后一个房间不配 |

**Buff组|TowerBuffGroup**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int[] | `skillSns` |  |
| cs | int[] | `weights` |  |

**Buff价格|BuffPrice**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int | `CustomPrice` | 基础价格 和品质相关 |
| cs | int | `LevelupFactor` | 升级增加系数 基础价格+(技能等级-1)*系数 |

**Buff等级|TowerBuffLevel**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | skillsn 技能id*1000+等级 |
| cs | int | `level` | 等级 |
| c | float | `effectAttribute1` | 技能效果属性值1 |
| c | float | `effectAttribute2` | 技能效果属性值2 |
| c | float | `effectAttribute3` | 技能效果属性值3 |

**爬塔战斗风格|TowerFightStyle**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | Text | `Name` | 战斗风格名（标签名） |
| cs | int | `Grade` | buff最高等级 |
| cs | int[] | `TagNum` | 标签影响战斗风格生效数量 |
| cs | int[] | `NewEffectSN` | 达到标签数量后，生效效果技能sn |
| cr | String[] | `TagBg` | 标签背景 |
| c | float[] | `EffectAttribute1` | 技能效果属性值1 |
| c | float[] | `EffectAttribute2` | 技能效果属性值2 |
| c | float[] | `EffectAttribute3` | 技能效果属性值3 |

**爬塔Buff|TowerBuff**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn 等同SkillID |
| cs | int | `type` | buff类型 |
| cs | float[] | `params` | 基础值，提升值，不配置都是0 |
| cs | int | `Tier` | 品质 |
| cs | Text | `Name` | 祝福名 |
| cs | int | `MaxLevel` | 最大等级 |
| cs | int | `BaseWeight` | buff基础权重 |
| cs | int | `TagWeight` | buff选中战斗风格时的权重 |
| cs | int[] | `fightStyles` | 对应标签 |
| cs | int | `Price` | 商城价格 |
| c | float[] | `EffectAttribute1` | 技能效果属性值1 |
| c | float[] | `EffectAttribute2` | 技能效果属性值2 |
| c | float[] | `EffectAttribute3` | 技能效果属性值3 |

**Buff商店|BuffShop**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 商品位 |
| cs | int | `ItemType` | 商品类型 1=固定（buff或道具） 2=从已拥有未满级的buff中随机 3=从未拥有的buff中随机 |
| cs | int[] | `RegularItem` | 固定商品SN 指定道具SN或BuffSN 1=道具 2=Buff 道具直接读价格 buff按照品质在Buff组中读价格 |

**词缀轮换|AffixExchange**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int[] | `AffixGroup` | 词缀内容[]，关联skill表 |
| cs | int[] | `target` | 目标，1是我方，2是敌方 |

### TowerBoss.xlsx

**高塔boss|TowerBoss**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `sceneSn` | 副本sn |
| cs | int | `storySn` | 开场动画 |
| cs | int | `npcBirthSn` | npcBirthSn 入口npc使用的sn |
| cs | int | `bossBirthSn` | bossBirthSn boss出生使用的sn |
| cs | int | `timeLimit` | 战斗限时（秒） |
| c | int | `bossLevel` | boss等级 |
| c | Text | `bossName` | boss名字 |
| cr | String | `bossIcon` | boss头像  |
| cr | String | `sideMonIcon` | 地图侧边栏boss头像 |
| cr | String | `sideMonIconLock` | 地图侧边栏boss头像没挑战时 |
| c | int[] | `elements` | boss属性 关联att表 |
| c | int[] | `recElements` | 克制属性 关联att表 |
| cs | int[] | `conditionAnd` | 解锁条件逻辑与 |
| cs | int | `sciencePoint` | 首次击杀获得科技点数 同时有获取和显示的功能 |
| c | String | `firstDropItems` | 首杀掉落物品icon (sn:num,sn:num) |
| c | String | `mainDropItems` | 主要掉落物品icon (sn:num,sn:num) |
| c | String | `normalDropItems` | 普通掉落物品icon (sn:num,sn:num) |
| s | int | `firstDrop` | 首杀掉落组 首杀获取这个，不会再掉落正常组 |
| s | int | `normalDrop` | 正常掉落组 普通掉落 |
| cs | int | `quitExitTime` | 主动退出倒计时 |
| cs | int | `exitTime` | 成功退出倒计时 |
| cs | int | `AssistArea` | 助战信标区域 |
| s | int | `exitBirthSn` | 胜利退出位置 |
| c | int | `transferPointSn` | 塔顶传送点图标sn(MapIconCommon) |

**高塔进入条件|TowerCondition**（8条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `type` | 1：背包拥有指定sn的道具N个 2：完成指定任务 3：玩家达到指定等级 4：通关指定数量据点 |
| cs | String[] | `params` | 参数: 1：itemSn,itemCount 2：任务sn 3：等级 4:数量 |
| c | int | `strId` | 面板展示的str |

### VRSecretArea.xlsx

**VR秘境|VRSecretArea**（10条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN关卡顺序 |
| cs | int | `DifficultyGrade` | 难度等级（暂时没用） |
| cs | int | `UpgradeLv` | 关卡怪物等级 |
| cs | int | `combatLimit` | 战力进入限制 |
| cs | int | `firstReward` | 首通奖励（掉落表Sn） |
| cs | int | `finishReward` | 每周最高楼层奖励 |
| cs | int | `BoxBirthSnDropSn` | 活力宝箱的奖励 |
| c | int | `guidSn` | 教程数据 |
| cs | int | `bossbuff` | BOSS 增强Buff |
| cs | int | `monsterbuff` | 小怪 增强Buff |
| cs | int[] | `randomUnitPool` | 随机副本的池 增强Buff |
| cs | String | `refreshConsume` | 刷新关卡单次费用 |

**VR秘境副本|VRSecretAreaUnit**（7条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `instanceUnitSn` | 关联到InstanceUnit表的Sn  |
| cs | int | `scenceSn` | 副本的场景 |
| cs | int | `LimitTime` | 挑战时间秒(s) |
| cs | int | `UpGradeTime` | 跳关时间(s) |
| cs | int | `exitTime` | 成功后的离开时间(s) |
| cs | int[] | `monsterBirthSn` | 非Boss怪 |
| cs | int[] | `bossBirthSn` | Boss怪 |
| cs | int | `BoxBirthSn` | 活力宝箱的BirthSn |
| cs | int | `npcBirthSn` | 接关NPCBirthSn |

**VRBuff|VRSecretAreaWeekBuff**（14条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | WeekIndex |
| cs | String | `vrSn1` | 关卡顺序 |
| cs | String | `vrSn2` | 关卡顺序 |
| cs | String | `vrSn3` | 关卡顺序 |
| cs | String | `vrSn4` | 关卡顺序 |
| cs | String | `vrSn5` | 关卡顺序 |
| cs | String | `vrSn6` | 关卡顺序 |
| cs | String | `vrSn7` | 关卡顺序 |
| cs | String | `vrSn8` | 关卡顺序 |
| cs | String | `vrSn9` | 关卡顺序 |
| cs | String | `vrSn10` | 关卡顺序 |
| cs | String | `vrSn11` | 关卡顺序 |
| cs | String | `vrSn12` | 关卡顺序 |
| cs | String | `vrSn13` | 关卡顺序 |
|  | 107000 | `107010` | 107030 |
|  | 玩家不再自然回复护盾；成功命中敌人弱点时，有概率回复10%的护盾。 | `击杀敌人不再掉落子弹；玩家武器的弹匣上限减半，且提前换弹会损失子弹。` | 玩家每次切换武器之后的10s过后，当前使用的武器会无法射击和换弹 |

**废弃的|VRSecretAreaDelBuff**（14条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | levelIndex |
| cs | int | `buffAdd` | buff数量 |
| cs | String[] | `buffParam` | buff信息 |
|  | 107000 | `107010` | 107030 |
|  | 玩家不再自然回复护盾；成功命中敌人弱点时，有概率回复10%的护盾。 | `击杀敌人不再掉落子弹；玩家武器的弹匣上限减半，且提前换弹会损失子弹。` | 玩家每次切换武器之后的10s过后，当前使用的武器会无法射击和换弹 |

**Buff信息|VRSecretAreaBuff**（21条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 对应Skill表 |
| cs | int | `maxLevel` | 最大buffLevel |
| cs | boolean | `bigBuff` | 是否是大buff |
| cs | boolean | `player` | True |
| cs | boolean | `monster` | True |
| cs | boolean | `boss` | True |
| cs | int | `bDirector` | 需要生成导演的 |

**Buff|VRSecretAreaBuffLevel**（49条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | skillsn 技能id*1000+等级 |
| cs | int | `level` | 等级 |
| c | float | `effectAttribute1` | 技能效果属性值1 |
| c | float | `effectAttribute2` | 技能效果属性值2 |
| c | float | `effectAttribute3` | 技能效果属性值3 |

### WarRoom.xlsx

**作战室类型|WarRoomType**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | Text | `name` | 名称 |
| c | int | `sort` | 显示排序 |
| c | int | `seasonActivityType` | SeasonActivityType表Sn |
| c | int | `seasonOpenUI` | OpenUI表Sn |

**作战室条目|WarRoomEntry**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | int | `type` | 所属类型 WarRoomTypeSn  |
| c | int | `pageIndex` | 在页面中的位置 PVE每页5个位置 PVP、赛车每页4个位置 |
| cr | String[] | `icon` | 条目图片 需要循环展示的配多个 |
| c | Text | `title` | 条目标题 |
| cr | String | `subIcon` | 副图标 |
| c | Text | `subTitle` | 副标题 |
| c | boolean | `showCount` | 是否显示次数 |
| c | Text | `unlockTip` | 解锁提示文字 不填显示funcOpen的等级 {0}级解锁 |
| c | int | `funcOpen` | 功能开启限制Sn |
| c | int | `help` | 帮助Sn |
| c | int | `seasonTargetSn` | 匹配Sn SeasonTargetActivity表 |
| c | int[] | `iconOpenSn` | 循环展示图片时，每张图的解锁Sn 需要保证解锁顺序，不然循环有问题 默认解锁的可填0 日常行动，填的日常行动表SN |
| c | int | `assetPackageSn` | 需要下载资源Sn |

### WineFightGame.xlsx

**拼酒游戏|WineFightGame**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int | `NPCbirthSN` | 活动NPC |
| c | Text | `name` | 游戏名字 |
| c | Text | `description` | 开启界面描述文本 |
| cs | int | `matchSN` | 匹配sn |
| cs | int[] | `wineSNs` | 酒的类型 |
| cs | int[] | `wineWeight` | 酒的随机权重 |
| cs | int[] | `cupSNs` | 杯量类型 |
| cs | int[] | `cupWeight` | 杯量随机权重 |
| cs | int[] | `tipsyAndDrunkValue` | 小醉，大醉临界值 |
| cs | int | `selectionTime` | 回合选择倒计时 |
| cs | int | `pleaseNum` | 请对方喝酒次数限制 |
| cs | int | `dropSN` | 胜利奖励 |
| cs | int | `rewardNum` | 每天获得奖励次数 |
| cs | int | `failedDebuff` | 失败debuff GeneralBuff表SN |
| cs | int | `debuffTime` | debuff持续时间(秒) |
| c | float[] | `cameraRotation` | 相机角度 |
| c | float[] | `cameraLocation` | 相机位置 |
| c | float | `cameraFOV` | 相机臂长 |
| c | String | `myChairTag` | 玩家自己的位置 |
| c | float[] | `myRelativeRotation` | 玩家旋转偏移 |
| c | float[] | `myRelativeLocation` | 玩家位置偏移 |
| c | String | `anotherChairTag` | 对方的位置 |
| c | float[] | `anotherRelativeRotation` | 对方旋转偏移 |
| c | float[] | `anotherRelativeLocation` | 对方位置偏移 |
| cs | int | `mailSN` | 奖励补发邮件sn |
| cs | int | `helpSN` | 帮助sn |

**酒种类|WineType**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| c | Text | `wineName` | 酒的名字 |
| c | int | `alcoholValue` | 每毫升酒精值 |
| cr | String | `icon` | 对应酒图标 |

**杯量类型|CupType**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| c | Text | `cupName` | 酒杯的名字 |
| c | int | `mlNum` | 毫升数值 |
| cr | String | `cupIcon` | 对应图标 |
| cr | String | `cupModel` | 对应酒杯模型 |

**回合提示文本|RoundPromptText**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| c | int | `type` | 类型 1=热身开始 2=热身结束 3=拼酒开始 4=酒的类型提示 5=酒、杯量提示 6=自己喝酒 7=请对方喝酒 8=放弃本局 |
| c | int | `order` | 需要连续播放顺序 |
| c | Text | `prompt` | 文本 |
| c | Text | `displayTime` | 本句显示时间（秒） |
| c | String | `voice` | 对应声音文件 |

### WorldBoss.xlsx

**世界boss|WorldBoss**（24条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `type` | 1:个人世界 2:多人世界 |
| cs | int | `birthSn` | birthSn |
| cs | int | `boxBirthSn` | 宝箱birthSn |
| c | Text | `bossName` | boss名字 |
| cr | String | `bossIcon` | boss头像 |
| cr | String | `sideMonIcon` | 地图侧边栏boss头像 |
| cs | int | `interval` | 刷新时间间隔：秒 |
| cs | int | `level` | boss等级 |
| cs | int | `recLevel` | 推荐等级 |
| c | int[] | `elements` | boss属性 关联att表 |
| c | int[] | `recElements` | 克制属性 关联att表 |
| c | String | `firstDropItems` | 首杀掉落物品icon (sn:num,sn:num) |
| c | String | `mainDropItems` | 主要掉落物品icon (sn:num,sn:num) |
| c | String | `normalDropItems` | 普通掉落物品icon (sn:num,sn:num) |
| s | int | `firstDrop` | 首杀掉落组 首杀获取这个，不会再掉落正常组 |
| s | int | `normalDrop` | 正常掉落组 普通掉落 |
| cs | int | `sciencePoint` | 首次击杀获得科技点数 只用于显示 |
| cs | int | `AssistArea` | 助战信标区域 |
| cs | int | `StopTrackDis` | 停止追踪距离半径 |

### WorldChallengeDodgeTrial.xlsx

**闪避试炼|WorldChallengeDodgeTrial**（20条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| cs | int | `directorBirthSn` | 导演birthSn |
| cs | int | `areaActorBirhSn` | 区域birthSn |
| cs | int[] | `palBirthSns` | 帕鲁birthSn |
| cs | int[] | `skillGroups` | 释放技能组 |
| cs | int[] | `heroBuffs` | 给玩家添加的buff |
| cs | int[] | `palBuffs` | 给帕鲁添加的buff |
| c | int | `survivalNum` | 可被击中次数 |
| c | float | `invincibleSecond` | 击中后无敌时间 |
| c | String[] | `stateTipsArray` | 播报提示 |
| c | float | `hitEffectShowTime` | 击中屏幕效果持续时间 |

**帕鲁释放技能表|DodgeSkillSchedule**（431条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| csi | int | `skillGroup` | 技能组id |
| cs | int | `activeSecond` | 释放时间 |
| cs | int | `skillSn` | 释放技能Sn |

### WorldChallengeRiding.xlsx

**骑乘试炼|WorldChallengeRiding**（21条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `directorBirthSn` | 导演的birthSn |
| cs | int | `ridingBirthSn` | 坐骑的birthSn |
| cs | int[] | `targetBirthSnArray` | 收集目标的birthSn |
| cs | int[] | `speedUpBirthSnArray` | 加速光环的birthSn |
| cs | int[] | `patrolBirthSn` | 传送门 |
| cs | int | `targetBuffSn` | 收集目标的buffSn |
| cs | int | `speedUpBuffSn` | 加速光环的buffSn |

**传送门路径|RidingChallengePortalRoad**（19条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn 同时为传送门的birthSn |
| c | string | `splinePointsLocation` | 样条线的点的位置数组 |
| c | string | `splinePointsArriveTangent` | 样条线的点的前切角数组 |
| c | string | `splinePointsLeaveTangent` | 样条线的点的后切角数组 |
| c | string | `splinePointsRotation` | 样条线的点的旋转数组 |
| c | string | `splinePointsScale` | 样条线的点的缩放数组 |
| c | int[] | `splinePointsType` | 样条线的点的类型数组 0=Linear 1=Curve 2=Constant 3=CurveClamped 4=CurveCustomTangent |

- **Sheet1**（54行×10列）— 辅助sheet，首行: 170922, ,, 170922,, 170398

### ZombieSurvival.xlsx

**丧尸生存|ZombieSurvival**（7条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `instanceSn` | 副本sn |
| c | Text | `gameplayName` | 玩法名称 |
| c | Text | `gameplayDesc` | 玩法描述 |
| c | Text | `gameplayRule` | 玩法规则 |
| cs | int | `unlockLevel` | 解锁等级 |
| cs | int | `matchType` | 匹配sn |
| c | String | `rewardPreview` | 奖励预览 |
| cr | String | `backgroundImg` | 列表背景图片 |

**波次数据|ZombieSurvivalWaveData**（20条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 波次序列 |
| cs | int | `WaveReplenishSpawnSn` | 波次补充刷怪 （对应InstanceUnit表中的Sn） |
| cs | int | `refreshLevel` | 刷新等级 |
| cs | String | `buffs` | 出生Buff |
| cs | String | `weeklyRewardItems` | 对应波次本周首通奖励 |
| cs | String | `historyRewardItems` | 对应波次历史首通奖励 |
| cs | int | `mailSn` | 背包已满奖励邮件 |

**怪物击杀获得进度|ZombieMonsterProgress**（332条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 怪物birthSn |
| cs | int | `progressValue` | 获得进度值 |
| e | String | `desc` | 备注 |

**公式页**（332条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 怪物birthSn |
| c | int | `progressValue` | 获得进度值 |
| c | Text | `desc` | 备注 |