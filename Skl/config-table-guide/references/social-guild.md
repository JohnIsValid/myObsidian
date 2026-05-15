## 社交与公会

### BubbleInteraction.xlsx

**头顶泡泡数据|BubbleInteraction**（8条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn   |
| cs | Text | `InteractionName` | 交互名称，显示在按钮上的名称 |
| cs | int | `InteractionType` | 交互类型 |
| cs | int | `subType` | 子类型（类型三使用） |
| csr | String | `icon` | 显示图片资源 |
| cs | int | `InterCon_Level` | 交互条件_等级 |
| cs | int | `InterCon_Reputation` | 交互条件_声望 |
| csr | String[] | `InterParam_1` | 蒙太奇名字和语音 |
| csr | String[] | `InterParam_2` | 蒙太奇名字和语音 |
| csr | String[] | `InterParam_3` | 蒙太奇名字和语音 |
| csr | String[] | `InterParam_4` | 蒙太奇名字和语音（预留字段） |
| cs | int[] | `InterAward_Type` | 交互完毕后的结果，例如给玩家一些道具、给玩家一个buff、改变玩家的任务状态等等（预留字段） |
| cs | String[] | `InterAward_Param` | type1:Format sn_num_e:sn_num_e type2: sn:sn:sn ,type3:sn:sn（预留字段）: |
| cs | boolean | `IsInvincible` | 默认为false。交互时是否无敌（预留字段，当前未接入逻辑） |
| cs | boolean | `IsSingleMinded` | 默认为false。交互独占性控制（预留字段，当前未接入逻辑） |

### Chat.xlsx

**聊天|Chat**（12条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| c | Text | `name` | 频道名 |
| cs | boolean | `defultShow` | 默认显示频道 |
| cr | String[] | `channelIcon` | 频道页签图标(选中,未选中) |
| cr | String | `con` | 消息列表频道图标（与channelIcon页签图标区分） |
| c | String | `channelNameColor` | 频道名颜色（世界：绿色，队伍：蓝色，当前：黄色，系统：红色） |
| c | String | `nameColor` | 频道发言名称颜色 |
| c | String | `nameSelfColor_min` | 小聊天自己名称颜色 |
| c | String | `nameColor_min` | 小聊天玩家名称颜色 |
| c | String | `chatColor` | 频道消息颜色 |
| c | String | `chatColor_min` | 小聊天频道图标消息颜色 |
| c | boolean | `defultShow_min` | 小聊天默认显示 |
| cs | int | `wordsLimit` | 字数限制 |
| c | int | `sort` | 显示排序 |
| cs | boolean | `defultVoiceOn` | 默认自动播放语音 |
| cs | boolean | `defultShowMin` | 默认显示频道 |

### FriendInteract.xlsx

**好友交互|FriendInteract**（17条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 功能序号 （更改ID需告知程序） |
| c | Text | `Name` | 功能名称 |
| c | int | `GroupType` | 功能类型(1:通用,2组队,3交互,4房间) |
| c | Text | `Name2` | 功能名称2 |
| c | int | `Level` | 显示等级 |
| c | int | `Sort` | 排序小号在前 |
| cr | String | `Icon` | 图标 |
| cr | String | `Icon2` | 图标2 |

### FriendIntimacy.xlsx

**亲密度等级|IntimacyLevel**（50条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN(等级) |
| cs | int[] | `PointRange` | 亲密度区间 |
| cr | String | `LevelIcon` | 图标 |
| cs | String | `reward` | 阶段奖励物品Sn:Num,Sn:Num… |

**亲密度获得|IntimacyIncrease**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | SN(固定) |
| s | int | `IncreaseNum` | 单次改变数值 |
| s | int | `dayMax` | 每日最大值 |
| s | int | `Time` | 参与时间（秒） |

### GuildTrain.xlsx

**帮派特训表|GuildTrain**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 唯一ID |
| c | Text | `name` | 名字 |
| c | Text | `desc` | 描述 |
| s | int | `weekDay` | 活动每周几重置（1=星期1~7=星期日） |
| s | int | `weekTime` | 活动具体重置的时间（二十四小时制度0-23） |
| s | int[] | `levelSkillSet` | 关卡词缀池（Skill表的sn） |
| s | int[] | `monsterSkillSet` | 怪物词缀池（Skill表的sn） |
| s | int[] | `instancePool` | 副本池 |
| cs | int | `challengeReward` | 挑战奖励（DropGroupSn） 注意：这里的DropGroupSn需要在Drop表中的RewardPreview页配置奖励预览 |
| cs | int | `weekChallengeNum` | 每周可挑战的次数 |
| s | int | `mailSn` | 周奖励发放的邮件Sn |
| cs | String | `creditReward` | 帮派积分奖励品质（注意： 1.UI是三个，所有这里也必须是三组数据 2.这里的DropGroupSn需要在Drop表中的RewardPreview页配置奖励预览... |
| cs | String | `creditNumReward` | 帮派积分奖励发放次数（根据排名进行调整发放次数 开始排名:结束排名:奖励个数） |
| cs | int[] | `previewItemSn` | 名次奖励道具预览 |

**特训副本表|GildTrainInstance**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 唯一ID |
| cs | int | `sceneSn` | 场景Sn |
| cs | int | `instanceUnit` | 对应instanceUnit的ID                                                               ... |
| cs | int | `waveCredit` | 每波积分 |
| cs | int | `singleMonsterCredit` | 单怪积分（结束时如果没有杀完就用这个来结算积分） |
| cs | String | `monsterWaveNum` | 玩家战力对应的刷怪波数(刷怪波数:玩家战力。从第几波怪物刷起，刷怪波数-1 直接给分) |
| cs | int | `challengeTime` | 挑战时间（单位秒） |
| cs | int | `exitTime` | 退出倒计时（单位秒） |
| cs | int | `monsterInitLevel` | 怪物基础等级 |
| cs | int | `monsterMaxLevel` | 怪物等级上限（非基础等级，与monsterInitLevel区分） |
| cs | int | `delayStartTime` | 副本延迟开启时间（单位秒） 注意:在玩家进入副本后，延迟多少秒开启副本逻辑；延迟多久提示你跳过多少波 |
| cs | int | `delayRefreshfirstMonsterTime` | 副本开启后，延迟多少时间开启刷怪逻辑（单位秒） 注意：在提示你跳过多少波后，延迟多少秒启动刷怪 |
| cs | int | `delayHintMonsterWave` | 延迟提示怪物波次时间 注意:是在怪物死亡后，延迟多少秒提示怪物波次 |

- **Sheet1**（50行×11列）— 辅助sheet，首行: 

### Hearsay.xlsx

**传闻系统|Hearsay**（29条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| csi | int | `type` | 传闻触发类型（1=获得的稀有物品是指定的来源 2=捕捉到高个体值帕鲁3=捕捉到包含稀有词条的帕鲁 4=孵化到高个体值的帕鲁 5=孵化到包含稀有词条的帕鲁） |
| cs | int[] | `typeParams` | 类型参数(type1=来源配置列表(EItemGrantReason,找程序要) type2=四维个体值之和大于指定值 type3=被动技能包含配置的被动技能列... |
| cs | int | `str` | 传闻系统的文本内容  |
| cs | int[] | `chatSn` | Chat表的sn 1 系统 2 HINT 3 世界 4 公会 5 队伍 6 招募 7 当前 8 私聊 9 组聊 10 小队 11 房间 12 联机  |

- **Sheet1**（210行×6列）— 辅助sheet，首行: 

### Intelligence.xlsx

**情报系统|Intelligence**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 情报SN |
| s | int | `discoverType` | 发现类型 1-达到解锁条件 2-其他功能调用） |
| s | String | `unlockCondition` | 解锁条件 1-达到指定等级 2-完成指定任务 3-占领指定据点 4-使用指定道具 ,隔开表示and |隔开表示or |
| s | String | `unlockParam` | 解锁条件参数 1-等级 2-任务sn，quest表 3-据点导演birthsn 4-道具sn，item表 |
| c | int | `polygonArea` | 区域sn （索引polygonArea表SN） |
| cs | Text | `name` | 情报名称 |
| c | int | `type` | 情报类型 |
| cr | String | `image` | 情报贴图 |
| c | Text | `introduction` | 情报描述 |
| cs | int | `showType` | 表现类型 1-旁白 2-和NPC对话 不填则无表现 |
| c | int | `showParam` | 表现参数 1-索引VisualCommunication表SN 2-索引Plot表SN |
| c | boolean | `forcedUnexplore` | True时按配置探索点强制按「未探索」参与统计/指引；False不做控制。红点依赖「新」标记逻辑 |
| c | boolean | `mapIconState` | 显示探索点图标类型 True-显示类型+位置 False-仅显示类型 |
| cs | int[] | `mapIconSn` | 探索点参数 索引MapIconCommon/MapIconGear表sn |
|  | int | `intelligenceNum` | 显示探索点数量（未导出到客户端/服务端Conf，仅Excel内存在） |

**情报系统类型|IntelligenceType**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 情报类型 |
| c | int | `order` | 排序 |
| cr | String | `icon` | 情报图标 |

### InviteCode.xlsx

**邀请码信息|InviteCode**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 区号 |
| cs | boolean | `openInvite` | 是否开启邀请功能 |
| cs | int | `registerNumN` | 服务器注册人数达到N开始检测 |
| cs | int | `registerNumM` | 服务器注册人数达到M不能进入（0表示没有上限） |
| cs | int | `codeCanUseNum` | 兑换码可以使用的次数（因为数据库限制，最多有10个） |

### MessageBoard.xlsx

**初始留言文本|MessageBoard**（58条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | Actor的BirthSN |
| c | Text[] | `name` | 初始留言文本的作者名字，以英文'，'隔开，name数组的长度要短于或等于value数组长度，name数组缺少的命名，统一使用数组最后一个元素 |
| c | Text[] | `value` | 初始留言文本，以英文',' 隔开 |

**助战表|AssistTable**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | String | `sn` | 需要助战的表名字 |
| c | String | `bossBirthSnColName` | Boss表配置boss birthSn的列名 |
| c | String | `bossNameColName` | Boss表配置boss名的列名 |
| c | String | `bossIconColName` | Boss表行数据中头像字段的列名（字符串键，用于按列名动态取值） |

### Radio.xlsx

**电台|Radio**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` |  |
| c | Text | `Name` | 电台名称 |
| cr | String | `Logo` | 电台图标 |
| cr | String | `Resource` | 电台资源 |
| c | int | `RegularType` | 是否为固定电台 实际为int类型（0/1），1=固定电台不参与随机 0=参与随机 |

### Rank.xlsx

**排行榜|Rank**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 排行榜sn |
| cs | Text | `mailName` | 服务器邮件名字 客户端奖励预览名字 |
| s | int | `sortOrder` | 排序顺序（1：降序。2：升序） |
| s | boolean | `takePhoto` | 是否需要每天凌晨3点打印快照 （太多的打印，会造成服务器很大压力，修改为true时需要跟程序确认） |
| sc | int | `parseType` | 0:不特殊处理 1：等级和时间类解析 2：玩法自主排行类解析 |
| cs | int | `maxAllSize` | 总榜最大数量 |
| cs | int | `showAllSize` | 总榜客户端最多显示数量 |
| cs | int | `maxAreaSiz` | 区域榜最大数量（列名为Size拼写错误） |
| cs | int | `showAreaSize` | 区域榜榜客户端最多显示数量 |
| cs | int | `type` | 0:个人榜 1：帮会榜 |
| s | int | `uploadOpenSn` | 开启数据上传的FuncOpenSn |
| s | boolean | `versionNotClear` | 大版本不清空数据 (当前版本配置在param表，字段Rank_DataVersion，如果与数据库不一致，则起服时会清空排行榜) |
| cs | int | `resetType` | 清空类型： 0=不清空 1=周清空 2=赛季清空 3=帮派入侵通知清空 |
| s | boolean | `useExtremeValue` | 是否使用极值(true:使用历史最大值或最小值 false:使用上传值) |
| cs | int | `rewardType` | 全服榜发奖类型掩码： 00=0不发奖 01=1周发奖 10=2赛季发奖 11=3周和赛季都发奖 |
| cs | int | `rewardTypeArea` | 战区榜发奖类型掩码： 00=0不发奖 01=1周发奖 10=2赛季发奖 11=3周和赛季都发奖 |
| cs | int[] | `categoryGroup` | 包含榜单类型 填的顺序即显示排序 1=全服，2=好友，3=战区 |
| c | int | `parentType` | 父页签类型 对应RankType表Sn |
| c | int | `subPlayType` | 子列表类型 赛季填SeasonActivityType表Sn |
| c | int | `gameplaySn` | 玩法sn （筛选菜单用） |
| c | int | `gameplayName` | 玩法名字 （筛选菜单用） RankSubName表Sn |
| c | int | `gameplaySort` | 玩法排序 （筛选菜单排序） 数越小越前  |
| c | int | `allRewardUIType` | 全服发奖UI类型： 0：啥也没有 1：称号 2：珍贵外显 3：普通道具 4：更新提示 |
| c | String | `allRewardPreview` | 全服发奖预览： 类型1填称号Sn 类型23填物品Sn:Num:Color:Level |
| c | int | `areaRewardUIType` | 战区发奖UI类型： 0：啥也没有 1：称号 2：珍贵外显 3：普通道具 4：更新提示 |
| c | String | `areaRewardPreview` | 战区发奖预览： 类型1填称号Sn 类型23填物品Sn:Num:Color:Level |
| c | int | `itemStyle` | 数据条样式 0=数值样式 1=赛季样式 2=数值样式2列 3=帮派样式之人数 4=帮派样式之首领名 |
| c | Text | `header3` | 表头第3列显示名 |
| c | Text | `header4` | 表头第4列显示名 不填不显示这列 |
| c | Text | `emptyTip` | 没有榜单时 空白处提示文字 不填默认显示“还没有玩家上榜” |
| c | Text | `emptyJump` | 没有榜单时 跳转提示文字 |
| c | int | `jumpOpenUI` | 跳转打开UI OpenUI表Sn |

**排行榜类型|RankType**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 类型sn |
| c | Text | `name` | 显示名称 （本地化） |
| c | int | `funcopenSn` | 页签开启FuncOpenSn 0=默认开 999=不开 |
| c | int | `sort` | 排序，越小越前 相同按Sn排 |
| cr | String | `icon` | 主列表图标 不配就不显示 |
| c | int[] | `subTypes` | 包含子列表类型与排序 不填就只有主列表 对应Rank表subPlayType |
| cr | String[] | `subIcons` | 子列表图标 按subTypes顺序填 不配就不显示 |
| c | int[] | `subNames` | 子列表名字 按subTypes顺序填 RankSubName表Sn |
| c | int[] | `subHelps` | 子列表帮助 按subTypes顺序填 Help表Sn |
| c | int[] | `subOpens` | 子列表开启 按subTypes顺序填 FuncOpen表Sn 0=随父页签开 999=不开 |

**排行榜种类|RankCategory**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 种类sn |
| cs | Text | `name` | 名称 |

**排行榜奖励|RankReward**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| csi | int | `rankSn` | 排行榜sn |
| csi | int | `rangeArea` | 奖励范围： 0：战区 1：全服 |
| csi | int | `type` | 奖励类型： 0：周奖励 1：赛季奖励 |
| cs | int | `startRank` | 排名开始 |
| cs | int | `endRank` | 排名结束 |
| cs | String | `rewardString` | sn:num,sn:num |

**排行榜子列表名|RankSubName**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | Text | `name` | 名称 |

### Social.xlsx

**社群门户链接|SocialPortal**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |

**App安装列表|AppInstalled**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |

### Squad.xlsx

**升级要求|SquadExpReward**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| csi | int | `level` | 等级 |
| cs | int | `needExp` | 升到次级需要的经验 |

**主界面设置|SquadMainViewConfig**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | float[] | `ModelLoc_1` | 六角色的相对位置 |
| c | float[] | `ModelLoc_2` | 六角色的相对位置 |
| c | float[] | `ModelLoc_3` | 六角色的相对位置 |
| c | float[] | `ModelLoc_4` | 六角色的相对位置 |
| c | float[] | `ModelLoc_5` | 六角色的相对位置 |
| c | float[] | `ModelLoc_6` | 六角色的相对位置 |
| c | float[] | `ModelRot_1` | 六个角色的朝向 |
| c | float[] | `ModelRot_2` | 六个角色的朝向 |
| c | float[] | `ModelRot_3` | 六个角色的朝向 |
| c | float[] | `ModelRot_4` | 六个角色的朝向 |
| c | float[] | `ModelRot_5` | 六个角色的朝向 |
| c | float[] | `ModelRot_6` | 六个角色的朝向 |
| c | float[] | `OriginCameraLoc` | 相机位置 |
| c | float[] | `OriginCameraRot` | 相机朝向 |
| c | float[] | `FullScreenCameraLoc` | 全屏相机位置 |
| c | float[] | `FullScreenCameraRot` | 全屏相机朝向 |
| c | float[] | `AdjustPlacementCameraLoc` | 调整角色位置时 相机位置 |
| c | float[] | `AdjustPlacementCameraRot` | 调整角色位置时相机位置 |
| c | float | `AdjustPlacementCoe` | 调整角色位置时，角色推到与相机的距离系数 |
| c | float[] | `MoveRange_Min` | Actor拖拽过程中移动的范围左下角 |
| c | float[] | `MoveRange_Max` | Actor拖拽过程中移动的范围右上角 |
| cr | string | `Anim_1` | 角色动作 |
| cr | string | `Anim_2` | 角色动作 |
| cr | string | `Anim_3` | 角色动作 |
| cr | string | `Anim_4` | 角色动作 |
| cr | string | `Anim_5` | 角色动作 |
| cr | string | `Anim_6` | 角色动作 |

**小队任务|SquadTask**（16条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 任务sn |
| cs | int | `weight` | 任务权重 |
| c | int | `openUI` | 跳转界面 |

**小队任务对应等级|SquadTaskLevelReward**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 等级 |
| cs | int | `dropGroupSn` | 掉落组sn |

**小队等级对应头像|SquadLevelIcon**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 等级 |
| cr | string | `icon` | 头像Icon |

### Team.xlsx

**快捷消息|QuickMessage**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` |  |
| c | Text | `QuickMessage` | 消息文本 |
| c | String | `voiceFile` | 语音文件 |
| c | boolean | `needMapMarker` | 标记瞄准点在地图上 |
| c | boolean | `sendToTeamChannel` | 发送到队伍频道 |

**快捷招募|RecruitModel**（20条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| sc | int | `sn` | sn |
| sc | int | `type` | 201：默认 |
| c | Text | `title` | 大标题 |
| sc | int | `modelSn` | 分类玩法模板sn |
| c | Text | `subTitle` | 副标题 |
| sc | int | `defaultLevel` | 默认招募等级 |
| sc | int | `combat` | 招募战斗力限制 |
| sc | int | `maxMember` | 招募人数,不填默认是组队最大人数 |

**帕鲁显示|PalTeamView**（187条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | SN |
| c | Text | `name` | 名字 |
| c | float[] | `uiModelPos` | 模型位置（在actorhouse基础上） 单位厘米 |
| c | float[] | `uiModelRotation` | 模型旋转（在actorhouse基础上） |
| c | float[] | `uiModelScale` | 缩放比例x,y,z |

### Territory.xlsx

**领地|Territory**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | Text | `name` | 名称 |
| c | int | `territoryBattleOrder` | 排序 |
| cs | int | `worldSn` | 所属world |
| cs | int | `sceneSn` | 场景sn |
| csi | int | `sceneblockSn` | sceneblock中sn |
| cs | int | `currencyType` | 领地中流通的货币类型 |
| cs | Location | `enterScenePos` | 进入场景位置 |
| c | int | `mapIconSn` | 地图图标类型 |
| c | Location | `areaMapCtenter` | 区域在地图索引中心 |
| c | float | `Alpha` | 区域迷雾Alpha |
| cr | String | `OutlineTexture` |  区域的边框图 |
| c | float[] | `OutlineTextureScale` | 区域边框图的缩放 |
| c | float[] | `OutlineTextureOffset` | 区域边框图的偏移 |
| c | int | `order` | 探索区域排序 值越小越靠前 |
| c | Location | `mapIconPos` | 地图图标位置 |
| cr | String | `icon` | 未占领图标 |
| cr | String | `occupyIcon` | 占领后图标 |
| cr | String | `detailImg` | 大地图打开后显示图片 |
| cs | int | `enterRequiredReputation` | 进入突袭所需声望 |
| cs | int | `income` | 占领后收入 |
| cs | int | `openGrantReputation` | 领地开启后给予玩家的初始声望 |
| cs | String | `unlockRequiredTerritory` | 解锁所需领地条件（领地:声望，领地:声望) |
| cs | int[] | `unlockRequiredQuest` | 解锁所需完成的任务 |
| cs | int | `unlockRequiredLevel` | 解锁所需玩家等级 |
| cs | int | `passableRequiredLevel` | 区域可通行条件所需玩家等级。 填写>=1，撞空气墙会提示解锁等级 填写-1，撞空气墙会提示区域未解锁（不显示等级）。 |
| c | Text | `desc` | 描述信息（领地战专用） |
| cs | int | `funcOpenId` | 领地图标是否显示的功能开启id |
| cs | int[] | `battleUnlockGoalRequest` | 领地突袭战玩法解锁条件：or |
| cs | int[] | `battleGoalRequest` | 领地突袭进入条件：and |
| c | int | `previewDropGroupSn` | 预览奖励 |
| s | int | `dropSn` | 突袭战物品发送 |
| c | Text | `battleTitle` | 突袭战标题 |
| cr | String | `battleLockIcon` | 突袭状态图标 |
| cr | String | `battleUnlockIcon` | 突袭状态图标 |
| c | Text | `battleLockTips` | 突袭战未解锁提示 |
| cs | int | `battleSceneSn` | 进入副本sn |
| cs | int | `battleInstanceUnitSn` | InstanceUnitSn |
| cs | int | `battleEntranceBirthSn` | 进入据点的npcbirthsn |
| cs | int | `battleExitBirthSn` | 副本出口的birthsn |
| cs | int | `battleFirstFinishStoryId` | 首次通关剧情id |
| cs | int | `battleEnterStoryId` | 进入战斗剧情id |
| sr | String | `monsterBuffName` | 所有怪物挂buff（技能）名字 |

**领地突袭目标类型|TerritoryBattleGoal**（16条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `goalType` | 触发类型 1：完成指定个数的星级挑战活动(个数,sn,sn,sn...)，读取ChallengeModel表 2：完成指定个数的差事任务(个数,sn,sn,sn... |
| cs | int[] | `goalParam` | 触发参数 |
| c | Text | `desc` | 描述文本 |
| c | Text | `descParam` | 描述参数 |
| cs | int | `dropSn` | 完成目标可领取奖励sn |
| c | int | `previewItemSn` | 客户端预览 |
| cr | String | `icon` | 图标 |

**领地声望档位|TerritoryReputaionRank**（10条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `territorySn` | 领地sn |
| cs | int | `reputationRank` | 声望档位 |
| c | Text | `name` | 声望名称 |
| c | int | `color` | 声望颜色 |
| cs | int | `requiredReputation` | 当前档位所需声望 |
| c | Text | `desc` | 声望档位描述 |

**领地未解锁传出Area|TerritoryArea**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | Areasn |
| s | int | `TerritorySn` | 对应领地sn |

### Union.xlsx

**公会基础属性|Union**（10条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `level` | 等级 |
| cs | int | `memberLimit` | 人数上限 |
| cs | int | `levelUp` | 升至下级所需经验值 |
| cs | int | `vehicleBorrowCount` | 租借载具次数 |
| cs | int | `vehicleRentCount` | 出租载具次数 |

**帮派职位|UnionPosition**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | Text | `name` | 名称 |
| cs | boolean | `removeMember` | 是否可以踢人 |
| cs | boolean | `acceptMember` | 是否可以收人 |
| cs | boolean | `rename` | 是否可以修改帮名 |
| cs | boolean | `changeSign` | 是否可以修改标识 |
| cs | boolean | `changeNotice` | 是否可以修改公告 |
| cs | boolean | `changeDesc` | 是否可以修改宣言 |
| cs | boolean | `changePosition` | 是否可以调整职位 |
| cs | boolean | `inviteJoin` | 是否可以邀请玩家加入 |
| cs | boolean | `replaceLeader` | 是否可以接任首领 |
| cs | int[] | `positionNum` | 职位的数量（不同的帮派等级） |

**帮派标识|UnionLogo**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cr | String | `icon` | 徽章资源名 |
| cs | int | `unionLevel` | 帮派等级 |
| c | int | `iconToDecal` | 徽章到贴花转换 |

**帮派捐献|UnionDonate**（8条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn（捐献次数） |
| cs | String | `consume` | 消耗 |
| cs | String | `reward` | 获得奖励 |

**帮派任务|UnionTask**（8条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 任务sn |
| cs | boolean | `active` | 是否显示 |
| c | Text | `name` | 名称 |
| cr | String | `icon` | 图标 |
| c | Text | `desc` | 描述 |
| cs | int[] | `questParams` | 任务参数：对于特训任务，参数是目标池sn |
| c | Text | `operName` | 操作名称  |
| c | int | `operType` | 操作类型 1:打开界面GUIsn params1=GuiSn Params2=Gui参数 2：调用OPENUI功能，配置SN打开界面 3：前往工会基地场景指定坐... |
| c | String | `operValue` | 操作参数（OpenUI）  |
| cs | String | `item` | 活跃度奖励 |
| cs | String | `reward` | 奖励预览 |
| cs | int | `timeRequire` | 次数要求 |
| c | int | `sortId` | 排序 |
| c | Text | `timeContent` | 开启时间描述 |
| cs | int | `unionLevel` | 活动开启需要的工会等级 |

**任务目标|UnionTaskGoal**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 任务目标sn |
| cs | Text | `questDescription` | 任务目标描述 |
| cs | int | `goalType` | 目标类型 |
| cs | int[] | `goalParam1` | 目标参数1 |
| cs | int[] | `goalParam2` | 目标参数2 |
| c | int | `operType` | 操作类型 0：回到主界面 1:打开界面GUIsn params1=GuiSn Params2=Gui参数 2：调用OPENUI功能，配置SN打开界面 |
| c | String | `operValue` | 操作参数（OpenUI）  |

**活跃任务|ActiveTask**（8条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 任务sn |
| cs | boolean | `active` | 是否显示 |
| cs | Text | `name` | 任务名称 |
| c | int | `tag1` | 任务卡标签1 |
| c | int | `tag2` | 任务卡标签2（2040431：单人；2040432：多人） |
| c | Text | `desc` | 任务卡描述 |
| cs | boolean | `isTimedTask` | 是否是限时任务 |
| c | boolean | `isRecommend` | 是否是推荐任务 |
| cs | int | `questType` | 任务目标类型（ActiveTaskGlobalType） |
| cs | int | `questTarget` | 目标参数（需要根据领奖次数分别配置，目标参数会累计） |
| cs | boolean | `showOper` | 是否显示前往（不填默认为FALSE) |
| c | int | `operType` | 操作类型  1：调用OPENUI功能，配置SN打开界面 2：前往指定场景指定坐标点（单位米） |
| c | String | `operValue` | 操作参数（1：OpenUI 2：场景sn，坐标）  |
| cs | int | `timeRequire` | 领奖次数 |
| cs | String | `reward` | 奖励（根据前面的领奖次数分别配置：第一次奖励；第二次奖励；第三次奖励...） |
| c | int | `sortId` | 排序 |
| c | Text | `detailContent` | 玩法详细说明 |
| c | Text | `timeContent` | 开启时间描述 |
| c | Text | `numberRequire` | 人数要求 |
| c | String | `rewardPreview` | 玩法奖励预览 |
| cs | int | `functionID` | FunctionID |
| c | Text | `functionText` | Function未通过时显示的文本 |

**活跃任务目标类型|ActiveTaskGlobalType**（10条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 目标类型 |
| cs | boolean | `canFinishAhead` | 任务目标出现前是否可完成( TRUE：任务目标出现前可完成 FALSE：任务目标出现前不可完成） |

**耐力赛|UnionRace**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `sceneSn` | 场景 |
| cs | int | `directorBirthSn` | 导演birth |
| c | Text | `title` | 比赛名称 |
| c | Text | `target` | 目标描述 |
| s | int | `maxTime` | 保底时间 |
| cs | int | `startType` | 起步方式 1：原地起步 2：动态起步 |
| cs | int | `beginStorySn` | 开场动画 |
| cs | int | `endStorySn` | 结束动画  |
| c | int | `playType` | 0:默认按照sequence 1:按照story播放 |
| cs | int | `locateBirthSn` | 结束动画定位birth 用于播放story |
| s | int | `playerPosIndex` | 玩家出生点下标，用于解决自动驾驶开始阶段需要拐弯的问题 注意：历史原因从0开始，所以不使用时需要配置-1 |
| s | int[] | `birthSns` | 出生点BirthSn |
| s | int[] | `elementCheckPointSn` | 检查点BirthSn |
| c | int | `triggerSn` | VisualCommunication视讯通话sn |
| c | String | `actorHouseSelectVehicle` | 选车ActorHouse |
| cs | String[] | `roadTags` | 道路标签 用于导航和做排名 |
| cs | int[] | `vehicles` | 指定载具 |
| cs | boolean | `bCloseTCS` | 关闭车流 true:关闭 false:不关闭 |
| cs | int[] | `raceGearElement` | 比赛机关元件 |
| cs | int | `dayNightTime` | 昼夜时间,具体见weather表 1	Dawn 2	Morning 3	Noon 4	AfterNoon 5	SunSet 6	Evening 7	MidNig... |
| cs | int[] | `vehicleTypes` | 要求车型 |
| cs | int | `suggestionPoint` | 推荐评分 |
| c | int | `helpSn` | 帮助界面 |
| cs | int | `aiType` | 0:幽灵车 1:AI车 |
| cs | int | `aiNumber` | 幽灵车数量 |
| csr | int[] | `recordLocal` | 幽灵车数据 （当玩家车辆评分大于等于推荐评分时有效，索引GhostVehicle） |
| c | int | `weatherType` | 天气类型（0默认 1雨  2雪） |
| cr | string | `weatherTypeRes` | 特殊天气对应的资源 |
| c | float | `Intensity` | 天气强度（0到1） |

**耐力赛奖励|UnionRaceReward**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| csi | int | `type` | 1：个人奖励 2：帮会周奖励 |
| cs | int | `score` | 最低分数（小于等于此分数） |
| c | Text | `description` | 描述 |
| c | int | `previewDropSn` | 奖励预览 |
| c | int | `panelItemSn` | 帮会奖励数量预览 |
| s | String | `rewardString` | 奖励发放（掉落组需要玩家在线，这里离线发只能用配置） |

**帮派特训进度奖励|UnionTrainReward**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | String | `targetProgress` | 领取奖励,需要完成的进度 |
| cs | String | `reward` | 阶段奖励物品Sn:Num,Sn:Num… |

**周活跃度进度奖励|UnionProgressReward**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `count` | 领取奖励,需要完成活跃度值 |
| cs | String | `reward` | 阶段奖励物品Sn:Num,Sn:Num… |

**加入帮派|UnionJoin**（10条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn：文本类型*100+01~99 |
| cs | int | `talkType` | 文本类型：1、入帮喊话 2、欢迎词 |
| c | Text | `talkContent` | 文本内容 |

### UnionActivity.xlsx

**活动时间|UnionActivityTime**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | Text | `activityName` | 活动名称 |
| cr | String | `icon` | 活动图标 |
| cs | int | `type` | 活动类型 类型1=帮派聚会 类型2=帮派入侵 类型3=公会答题 |
| cs | int[] | `typeParam` | 活动类型参数 |
| cs | int[] | `weekday` | 活动每周几开启 1=周日 |
| cs | String | `startWarmUpDSTime` | 当天开始预热DS时间 |
| cs | String | `startPrepareDSTime` | 当天开始预创建分线时间 |
| cs | int | `prepareDSUseTime` | 预创建分线所用时间秒数 |
| cs | String | `startTime` | 当天具体的开启时间 |
| cs | String | `finishTime` | 当天具体的结束时间 |
| cs | String | `startNoticeTime` | 发出活动开启提示的时间 |
| cs | int | `callUpSn` | 发送的电话提示 VisualComunicationSN 配置为空，则没有提示 |
| cs | int | `pushNotificationTime` | 活动期间，每隔X秒触发一次前往弹窗 秒数 配置为空，则没有提示 |

**撒钱轰趴|CashParty**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| c | Text | `title` | 现金撒落标题文本 |
| c | Text | `description` | 现金撒落目标文本 |
| cs | int | `navigationAreaSN` | 目标导航区域 |
| cs | String | `startTime` | 现金撒落开始时间 |
| cs | String | `endTime` | 现金撒落结束时间 |
| cs | int | `cooldown` | 奖励发放间隔时间 |
| cs | int | `rewardLimit` | 现金撒落奖励获得次数 |
| cs | int | `dropSN` | 现金撒落奖励 |
| cs | int | `danceBtnCD` | 跳舞按钮点击冷却时间 |
| cs | int[] | `InteractionSNs` | Interaction表情动作 |

**集体舞|GroupDance**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int | `invitationTime` | 集体舞邀请持续时间 |
| c | Text | `title` | 集体舞标题文本 |
| c | Text | `description` | 集体舞目标文本 |
| cs | int | `navigationAreaSN` | 目标导航区域 Area表SN |
| csr | String | `danceSequence` | 跳舞玩法的 sequence文件 |
| cs | float | `sequenceDuration` | 跳舞玩法的 sequence的时间长度 |
| cs | int | `participantAddPoint` | 每个参与人数增加热度点数 |
| cs | int[] | `danceBeatSNs` | 节拍按钮组 |
| cs | int[] | `point` | 达到热度值 |
| cs | int[] | `pointDropSN` | 热度值对应的奖励 |
| cs | int | `personalDropSN1` | 前3名的个人奖励 |
| cs | int | `personalDropSN2` | 3名之后的个人奖励 |

**舞蹈节拍|DanceBeat**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| c | Text | `tips` | 显示提示文本 |
| csr | String | `danceSection` | 全部成功后SectionName |
| cs | int | `beatAddPoint` |  每个人成功后增加热度值 |

**主题时装|ThemeFashion**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| c | Text | `title` | 标题名字 |
| cs | Text | `description` | 目标描述 |
| cs | int | `navigationBirthSN` | 目标导航 actorBirth表SN |
| cs | int[] | `themeFashionSN` | 正确时装SN fashion表SN |
| cs | int | `rewardPlotSN` | 正确对话1 plot表SN |
| cs | int | `plotSN` | 错误对话2 plot表SN |
| cs | int | `randomWeight` | 随机权重 |
| cs | int | `themeFashionDropSN` | 主题时装奖励 drop表SN |

**入侵活动|InvadeActivity**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 活动sn |
| c | Text | `name` | 活动名称 |
| c | Text | `des` | 活动描述 |
| cs | String | `invadeEndTime` | 阶段1结束时间 |
| cs | int | `aDropSN` | 战斗1-3名奖励 |
| cs | int | `bDropSN` | 战斗4-10名奖励 |
| cs | int | `cDropSN` | 战斗11名+的奖励 |
| cs | int | `mailSn` | 奖励邮件sn |
| cs | int | `boxSn` | 宝箱Sn |
| cs | int | `boxOpenNum` | 宝箱交互次数 |
| cs | int | `boxDropSn` | 宝箱奖励展示 |

**入侵刷怪|InvadeRefresh**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int | `invadeActivitySn` | 所属入侵活动sn |
| cs | int | `level` | 帮派等级 |
| c | Text | `goalDesc` | 目标描述文本 |
| cs | int[] | `actorGroupSNs` | 普通怪刷怪组 |
| cs | int[] | `powerfulActorGroupSNs` | 精英怪刷怪组 |
| cs | int | `nextThreshold` | 触发下一组刷新的阈值 怪物存活数量小于等于此值，触发下一组刷新 |

**工会答题库|GuildQuizQuestionBank**（176条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | Text | `question` | 题目 |
| cs | boolean | `answer` | 答案 |

**工会答题|GuildActivityQuizParams**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `questionNum` | 题目数 |
| cs | int | `gameArea` | 答题区域AreaSn |
| cs | int | `yesArea` | 确认AreaSn |
| cs | int | `noArea` | 否认AreaSn |
| cs | int | `yesBirthSn` | 确认BirthSn |
| cs | int | `noBirthSn` | 否认BirthSn |
| cs | int | `prepareStepTime` | 准备阶段时长 |
| cs | int | `prepareIntervalRewardTime` | 准备阶段发放奖励时间间隔 |
| cs | int | `prepareIntervalReward` | 准备阶段发放奖励 |
| cs | int | `answeringTime` | 答题时间 |
| cs | int | `resultTime` | 结果展示时间 |
| cs | int | `nextQuestionPrepareTime` | 下一题准备时间 |
| cs | int | `correctReward` | 回答正确奖励 |
| cs | int | `wrongReward` | 回答错误奖励 |
| cs | int[] | `answerTimeRange` | 答题秒数区间 |
| cs | int[] | `answerTimeScoreRange` | 根据秒数答题分数区间 |
| cs | int | `prepareStepMailSn` | 准备阶段奖励邮件 |
| cs | int | `answeringStepMailSn` | 答题阶段奖励邮件 |
| cs | int | `mailSn` | 活动奖励邮件 |

**排行榜奖励|GuildQuizRankingReward**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `rankRangeMin` | 排名左区间 |
| cs | int | `rankRangeMax` | 排名右区间 |
| cs | int | `reward` | 奖励 |

### UnionArea.xlsx

**公会片区|UnionArea**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | Text | `name` | 片区名字 |
| cs | int[] | `manorSns` | 庄园sn |
| cs | int | `unlockParam` | 解锁参数 |
| csi | int | `sceneSn` | 场景sn |

**公会庄园|UnionManor**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `index` | 序号索引 |
| cs | int | `unionAreaSn` | 对应UnionArea页签的sn |
| cs | Text | `name` | 庄园名称 |
| cs | int | `areaSn` | 区域sn |
| cs | int[] | `tabletBirthSn` | 门牌BirthSn(无归属BirthSn，有归属BirthSn） |
| cs | int | `bidInitPrice` | 竞拍初始价 |
| cr | String[] | `sideTipsImgs` | 地图侧边tips三种状态图片 |
| cs | int | `areaBirthSn` | 占领区域刷出边界线 |

### Wanted.xlsx

**通缉触发行为|WantedGoal**（24条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 唯一ID |
| s | int | `type` | 通缉类型 1=击杀NPC(含撞死)通缉系数 2=抢车通缉系数 3=击杀警察通缉系数 4=击杀警车通缉系数 5=接受任务触发通缉（参数任务sn） 6=完成任务结束... |
| s | int | `typeParam` | 类型参数（如果没有就不填） |
| s | int | `groupId` | 通缉组：指引到WantedRefreshActor列 1：大世界玩法组 |
| s | String | `addWantedScore` | 行为触发增加的通缉分数 格式（0.2:3000,0.4:4000,0.5:3000） |
| s | int | `resetScoreTime` | 在触发行为后，如果星级没有达到一星(即没有触发通缉状态),需要重置;填0或空不重置，单位s |

**通缉警队刷新|WantedRefreshActor**（35条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 唯一ID |
| csi | int | `groupId` | 通缉组(用于不同的触发通缉方式分组) 1：大世界玩法组 |
| csi | int | `star` | 星级 |
| cs | int[] | `refreshActors` | 通缉时在警点刷新的载具 注意：这里的sn同行中不可以重复，后面几列的sn都是不可重复填写。例如：122,122 这样是不允许的 |
| s | int[] | `policeBirthSns` | 要刷新的警察 注：要求每行内的sn不重复 |
| s | int[] | `droneBirthSns` | 要刷新的无人机 注：要求每行内的sn不重复 |
| s | float | `tickTime` | 刷新单位的tick间隔(s) |
| s | float | `wantedAreaRadius` | 通缉区域半径(m |
| s | float | `updateAreaTick` | 每隔x秒更新通缉区域位置 |
| cs | float | `outWantedDelay` | 离开通缉区域后延迟x秒脱离通缉 |
| cs | int | `gold` | 通缉时触发的罚金数量 |
| cs | float | `needScore` | 升到此星级需要的分数 |
| cs | boolean | `showView` | 是否要显示通缉界面（这个字段有点冗余，取的时候，只取了1星的数据） |
| cs | float | `mapLevel` | 通缉区域 小地图显示半径 |

**警点（废弃）|WantedPoliceOffice**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 警点birthsn |
| cs | String[] | `actorBirthPosInfo` | 警点刷新出来的警车位置的birthsn |
| csi | int | `groupId` | 通缉组(用于不同的触发通缉方式分组) 1：大世界玩法组 |

**通缉刷新区域|WantedSpawnArea**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 星级 |
| s | int | `circleRadiusMin` | 行走-刷新环-内圆半径(m |
| s | int | `circleRadiusMax` | 行走-刷新环-外圆半径(m |
| s | int | `deleteRadius` | 行走-删除半径(m |
| s | int | `policeCircleMin` | 警察-刷新环-内圆半径(m 只有行走状态下才刷警察 |
| s | int | `policeCircleMax` | 警察-刷新环-外圆半径(m |
| s | int | `driverCircleRadiusMin` | 驾驶-刷新环-内圆半径(m |
| s | int | `driverCircleRadiusMax` | 驾驶-刷新环-外圆半径(m |
| s | int | `driverDeleteRadius` | 驾驶-删除半径(m |
| s | float | `vehicleSpeed` | 载具速度超过此值认为在驾驶cm/s |
| s | float | `forbidRadius` | 每个载具附近x米内禁止刷新其他单位 |

- **警力设计**（45行×11列）— 辅助sheet，首行: