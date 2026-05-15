## 载具

### FlyCarChallenge.xlsx

**飞车挑战|FlyCar**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn从1开始顺序编号，要用来入库。 |
| cs | int | `sceneSn` | 场景sn |
| cs | int | `type` | 1:极速挑战 km/h 2:广告收集 3.云霄飞车 m |
| c | Location | `location` | 坐标 |
| c | float[] | `checkRange` | 速度检测的检测盒大小 X是宽度,Y是长度,Z是高度 |
| c | int | `conditionMin` | 最小要求 |
| cs | int[] | `starConditions` | 不同星级成功要求 大于等于此值则认为成功 |
| c | float | `speedMin` | 云霄飞车的车速大于此值才会切镜头km/h |
| c | Text | `textTitle` | 成功文本 |
| c | Location | `cameraLocation` | 镜头起始位置 |
| c | float[] | `cameraRotator` | 镜头起始朝向 |
| c | float | `fov` | 镜头fov |
| cs | int[] | `rewardDropSn` | 奖励道具按星级发放 |
| cs | int | `mailSn` | 背包满时的邮件 |

### GhostVehicle.xlsx

**预录制幽灵车数据|GhostRecordData**（351条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| csr | String | `fileName` | 录制文件名 文件格最好是 场景sn_赛道序号 |
| csr | String | `bodyMesh` | 车身模型 |
| csr | String | `wheelMesh` | 车轮模型 |
| cs | int | `robotSn` | 司机机器人sn |
| cs | int | `vehicleSn` | 载具sn，用于显示 |
| cs | float | `playSpeed` | 播放速度 |

- **录制说明**（212行×42列）— 辅助sheet，首行: 

- **幽灵车数据**（67行×21列）— 辅助sheet，首行: 

- **20241127录制**（99行×16列）— 辅助sheet，首行: 

- **20241209录制**（9行×25列）— 辅助sheet，首行: 默认, 推荐评分, 关卡, 俱乐部

### Glider.xlsx

**滑翔伞|Glider**（20条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| csr | String | `BPRes` | 部件资产 |
| csr | String | `BPDA` | DA资产 |
| cr | String | `fashionmodel` | 展示模型 （KSGBodyPart不能脱离宿主存在，创建一批用来展示的模型） |
| cs | int | `petSn` | 帕鲁sn |
| cs | int | `petSkillLevel` | 伙伴技能等级 |
| cs | int | `petItemSn` | 伙伴鞍具 |
| cs | int | `ItemSn` | 物品SN |
| cs | int | `ItemPriority` | 重要物品优先级 |
| c | boolean | `useTwoHand` | 是否双手 |

### MatchIFFMaterial.xlsx

**玩法敌我识别材质|MatchIFFMaterial**（58条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 玩法类型 |
| c | boolean | `bEnable` | 是否启用，TRUE为启用，用于暂时关闭该玩法的描边效果 |
| c | float | `intensity` | 强度 |
| c | String | `color` | 颜色，由四个浮点数组成RGBA，用'，'隔开 |
| c | float | `exponent` | 指数 |
| c | float | `reflFraction` | 反射系数 |

### MatchVehicle.xlsx

**匹配赛车|MatchVehicle**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 玩法SN 也对应场景SN |
| c | Text | `name` | 玩法名称 |
| cr | String | `preview` | 玩法预览图 |
| cr | string | `boardViewIcon` | 面板图标 |
| cs | int | `beginStorySn` | 开始剧情动画sn |
| c | int | `beginStoryPlayType` | 0：默认story播放 1：sequence播放 |
| cs | int | `endStorySn` | 比赛结束动画 |
| c | int | `endStoryPlayType` | 0：默认story播放 1：sequence播放 |
| cs | boolean | `nextRoundPlayStory` | 后续回合是否播放Story （只影响story，不影响321） |
| cs | int | `locateBirthSn` | 结束动画定位birth 用于播放story |
| s | int[] | `startPosSn` | 出生点元件sn |
| cs | int | `gameplayType` | 玩法类型  1=团队匹配碰碰车 2=单人匹配赛车 3=单人匹配接盘侠 |
| cs | int[] | `vehicleTypes` | 类型限制 |
| cs | int | `vehicleLevel` | 车辆品质限制 |
| cs | int | `vehicleScore` | 评分限制 |
| cs | int | `directorSn` | 导演ActorSn |
| cs | int | `roundCount` | 回合数 |
| cs | int | `roundTime` | 回合时间(秒) |
| cs | Text[] | `teamName` | 队伍名 |
| cs | int | `startGuideSn` | 开场提示 GuideSn |
| cs | Text | `targetStr` | 局内常驻UI提示信息 |
| cs | Text | `helpStr` | 帮助文本 （玩法内有问号帮助按钮时， 点击后显示的帮助信息） |
| c | boolean | `itemRace` | 是否是道具赛 仅用来控制道具按钮显示 |
| s | int | `seasonActivityType` | 赛季活动类型，根据此类型获取剩余奖励次数 |
| cs | int[] | `dropSeason` | 奖励配置 个人赛按排名 从1-x名 团队赛按胜利，失败 |
| cs | int[] | `dropgroups` | 前N次奖励配置 n=赛季的统一逻辑 |
| cr | String | `actorHouseBpName` | 结算界面actorhouse 蓝图名 |
| cs | String[] | `roadTags` | 道路标签 第一个标签对应的道路 会被用于计算排名 |
| c | String | `systemVehiclePool` | 提供的系统载具池 (来源为 1 时的Actor， 分号为多队玩法时区分队伍) |
| c | int[] | `playerVehicleType` | 允许的玩家载具类型 （索引VehicleType表) |
| s | int | `robotVehicleType` | 机器人载具分配方式 1：随机 2：随机排他 3：顺序排他 |
| s | String | `robotVehiclePool` | 机器人载具池 (分号为多队玩法时区分队伍) |
| cs | int | `aiType` | 0:幽灵车 1:AI车 |
| cs | int[] | `recordPool` | 预录制幽灵车随机池 （GhostRecordData表SN） |
| cs | int[] | `elementCheckPointSn` | 检查点元件sn（多人赛车用） |
| cs | int | `directorBirthSn` | 导演birth |
| s | int | `waitTime` | 等待时间(超时后人不齐也开始比赛) |
| c | int | `weatherType` | 天气类型（0默认 1雨  2雪） |
| cr | string | `weatherTypeRes` | 特殊天气对应的资源 |
| c | float | `Intensity` | 天气强度（0到1） |

### MultiVehicleRace.xlsx

**团队匹配主表|MultiVehicleRace**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 玩法sn 碰碰车的sn是场景sn |
| cs | String | `name` | 玩法名称 |
| cs | int | `type` | 玩法类型 1=碰碰车 2=单人匹配多人赛车 |
| cs | int | `sceneSN` | 场景sn |
| cs | int | `directorSN` | 导演birthsn |
| cs | int | `tures` | 轮数（列名为历史拼写，含义为比赛圈数） |
| cs | int | `trueIntervalTime` | 大轮间隔时间 |
| cs | int | `beginStorySn` | 开始动画sn |
| c | boolean | `itemRace` | 是否是道具赛 仅用来显示道具按钮 |

**团队碰碰车|PengPeng**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 玩法sn |
| cs | int | `gameplaySize` | 玩法规模 一方人数 例如4v4配4 |
| cs | int[] | `startPoint1` | 团队1起始点位（birth） |
| cs | int[] | `startPoint2` | 团队2起始点位（birth） |
| cs | String[] | `safeArea` | 安全区点位(birth)和半径,冒号分割 (安全点位的数量既是回合数） |
| cs | int | `roundTime` | 回合时间(秒) |
| cs | int | `startWaitTime` | 开始等待时间，超过这个时间直接开始 |
| cs | int | `SettlementTime` | 结算界面时间 |
| c | float[] | `Vehicle_1_pos` | 结算界面 1号玩家载具位置 |
| c | float[] | `Vehicle_1_rot` | 结算界面 1号玩家载具旋转 |
| c | float[] | `Vehicle_2_pos` | 结算界面 2号玩家载具位置 |
| c | float[] | `Vehicle_2_rot` | 结算界面 2号玩家载具旋转 |
| c | float[] | `Vehicle_3_pos` | 结算界面 3号玩家载具位置 |
| c | float[] | `Vehicle_3_rot` | 结算界面 3号玩家载具旋转 |
| c | float[] | `Vehicle_4_pos` | 结算界面 4号玩家载具位置 |
| c | float[] | `Vehicle_4_rot` | 结算界面 4号玩家载具旋转 |
| c | float[] | `player1_pos` | 结算界面 1号玩家坐标 |
| c | float[] | `player1_rot` | 结算界面 1号玩家旋转 |
| c | float[] | `player2_pos` | 结算界面 2号玩家坐标 |
| c | float[] | `player2_rot` | 结算界面 2号玩家旋转 |
| c | float[] | `player3_pos` | 结算界面 3号玩家坐标 |
| c | float[] | `player3_rot` | 结算界面 3号玩家旋转 |
| c | float[] | `player4_pos` | 结算界面 4号玩家坐标 |
| c | float[] | `player4_rot` | 结算界面 4号玩家旋转 |
| c | float[] | `initial_camera_pos` | 结算界面 初始摄像机位置 |
| c | float[] | `initial_camera_rot` | 结算界面 初始摄像机旋转 |

**个人匹配主表|SingleMatchVehicle**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 场景sn |
| c | Text | `raceName` | 玩法名称 |
| cs | int | `type` | 玩法类型： 1.赛车 2.接盘侠 |
| cs | int | `directorSN` | 关联的玩法导演SN |
| cs | float[] | `startLoc` | 起点坐标 |
| cs | float[] | `startDir` | 起点朝向 |
| cs | int | `beginStory` | 比赛开始动画 |
| cs | int[] | `endStorys` | 比赛结束动画 |
| cs | int | `SettlementTime` | 结算界面时间 |
| cs | int[] | `dropgroups` | 排名奖励 |
| c | boolean | `itemRace` | 是否是道具赛，仅用来显示道具按钮 |
| cr | string | `boardViewIcon` | 面板图标 |
| c | float[] | `Vehicle_1_pos` | 结算界面1号玩家载具位置 |
| c | float[] | `Vehicle_1_rot` | 结算界面1号玩家载具旋转 |
| c | float[] | `Vehicle_2_pos` | 结算界面2号玩家载具位置 |
| c | float[] | `Vehicle_2_rot` | 结算界面2号玩家载具旋转 |
| c | float[] | `Vehicle_3_pos` | 结算界面3号玩家载具位置 |
| c | float[] | `Vehicle_3_rot` | 结算界面3号玩家载具旋转 |
| c | float[] | `Vehicle_4_pos` | 结算界面4号玩家载具位置 |
| c | float[] | `Vehicle_4_rot` | 结算界面4号玩家载具旋转 |
| c | float[] | `player1_pos` | 结算界面1号玩家坐标 |
| c | float[] | `player1_rot` | 结算界面1号玩家旋转 |
| c | float[] | `player2_pos` | 结算界面2号玩家坐标 |
| c | float[] | `player2_rot` | 结算界面2号玩家旋转 |
| c | float[] | `player3_pos` | 结算界面3号玩家坐标 |
| c | float[] | `player3_rot` | 结算界面3号玩家旋转 |
| c | float[] | `player4_pos` | 结算界面4号玩家坐标 |
| c | float[] | `player4_rot` | 结算界面4号玩家旋转 |
| c | float[] | `initial_camera_pos` | 结算界面初始摄像机位置 |
| c | float[] | `initial_camera_rot` | 结算界面初始摄像机旋转 |

**个人竞速|SingleMatch**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 场景sn |
| c | boolean | `itemRace` | 是否是道具赛，仅用来显示道具按钮 |
| cr | string | `traceIcon` | 导航图标 |
| c | float | `traceZAdd` | 导航图标提升高度 |
| cs | String[] | `roadTags` | 道路标签，用第一个标签做排名 |

- **Sheet1**（22行×5列）— 辅助sheet，首行: 

### NPCVehicleSpawn.xlsx

**随机刷车|RandomVehicleNum**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| s | int | `sceneSn` | 场景sn |
| s | int | `timeStart` | s |
| s | int | `timeEnd` | s |
| s | int[] | `spawnNum` | 单人普通数量 (数组下标对应通缉星级) |
| s | int[] | `spawnSpecialNum` | 单人特殊车辆 |
| s | float[] | `limitByDeviceLv` | 不同等级机型的载具上限  None = 0,  VeryLow = 1,  Low = 2,  MediumLow = 3,  Medium = 4,  Med... |
| s | float[] | `limitByClientFPS` | 客户端帧率 1良好 2普通 3有压力 |
| sr | String | `baseLibDAName` | 基础随机库 |
| sr | String | `specialLibDAName` | 特殊随机库 |
| s | int | `SceneMaxNum` | 本场景 最大刷车数（普通车 |
| s | int | `SceneMaxSpecialNum` | 本场景 最大刷车数（特殊车 |
| s | boolean | `ForbidLaneLibDA` | 禁止使用车道随机库 |
| s | int | `PlayerLimitActionNum` | 对单个玩家的产生反应的载具数量上限(射击、瞄准会让载具对玩家产生反应) |
| s | int | `SceneLimitActionNum` | 全场景产生反应的载具上限 |

**刷新静态车|StaticVehicleBirth**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| s | int | `sceneSn` | 场景sn |
| s | Location | `location` | 坐标 |
| e | String | `desc` | 备注（不导表） |
| e | String | `preview` | 预览车（不导表） |
| s | float[] | `dir` | 朝向 |
| sr | String | `vehicleLibMorning` | 载具随机库-早 |
| sr | String | `vehicleLibNoon` | 载具随机库-中 |
| sr | String | `vehicleLibNight` | 载具随机库-晚 |

**静态车场景配置|StaticVehicleSpawnScene**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| s | int | `sceneSn` | 场景sn |
| s | int | `sceneNumMax` | 载具上限-场景 |
| s | int | `playerNumMax` | 载具上限-单人 |
| s | float | `lowDevice` | 低端机单人数量 是基准数量的60% |
| s | float | `rangeMin` | 刷车-内径（cm） |
| s | float | `rangeMax` | 刷车-外径（cm） |
| s | float | `rangeFix` | 刷车-防抖容差（米） 当载具距离玩家超过外径+容差就删车 |
| s | float | `rangeMinDrive` | 开车-刷车-内径（cm） |
| s | float | `rangeMaxDrive` | 开车-刷车-外径（cm） |
| s | float | `sectorAngleDrive` | 开车-刷车-扇形张角（度），半径由rangeMaxDrive承担 |
| s | float | `vehicleChangeTime` | 车辆更新间隔 每隔3秒，车位的车类型就可以变更 |

### VehicleClub.xlsx

**赛车俱乐部|VehicleClub**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| c | Text | `title` | 俱乐部界面title |
| c | Text | `name` | 俱乐部名称 |
| c | Text | `description` | 俱乐部描述 |
| cs | int | `showFuncOpenSn` | 俱乐部展示功能开启sn |
| cs | int | `playFuncOpenSn` | 俱乐部玩法功能开启sn |
| c | int | `birthSn` | npc位置 |
| cs | int[] | `vehicleTypes` | 类型限制 |
| cs | int | `vehicleLevel` | 车辆品质限制 |
| cs | int | `vehicleScore` | 评分限制 |
| c | Text | `title1` | 大奖标题1 |
| c | Text | `title2` | 大奖标题2 |
| c | Text | `title3` | 大奖标题3 |
| cr | String | `bigRewardImage` | 大奖预览图 |
| c | int | `bigRewardItemSn` | 大奖物品sn，用于获取品质 |
| c | int | `previewDropSn` | 通关奖励预览 |
| s | int | `dropSn` | 通关奖励 |
| c | int | `mapIconVehicleClubSn` | 地图数据索引sn（MapIconVehicleClub表的sn） |
| c | int | `helpSn` | Help表的sn提示用 |

**俱乐部比赛|VehicleClubRace**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| csi | int | `clubSn` | 俱乐部sn （0时为特殊比赛，用于任务等不显示在俱乐部里） |
| csi | int | `raceIndex` | 比赛下标 |
| c | Text | `raceIndexUI` | 比赛序号 |
| cs | int | `sceneSn` | 场景 |
| cs | int | `directorBirthSn` | 导演birth |
| c | Text | `name` | 比赛名称 |
| c | Text | `target` | 目标描述 |
| cs | int | `type` | 比赛类型 1：计时赛 2：排名赛 3：逃脱赛 |
| cs | int | `param` | 比赛类型参数 1计时赛：限制时间（秒） 2排名赛：最低名次 3逃脱赛：最低名次 |
| s | int | `maxTime` | 保底时间 |
| cs | int | `startType` | 起步方式 1：原地起步 2：动态起步 |
| cs | int | `beginStorySn` | 开场动画 |
| cs | int | `endStorySn` | 结束动画  |
| cs | int | `failStorySn` | 失败动画 |
| c | int | `playType` | 0:默认按照sequence 1:按照story播放 |
| cs | int | `locateBirthSn` | 结束动画定位birth 用于播放story |
| c | int | `failLocateBirthSn` | 失败动画定位birth 用于播放story |
| s | int | `playerPosIndex` | 玩家出生点下标，用于解决自动驾驶开始阶段需要拐弯的问题 注意：历史原因从0开始，所以不使用时需要配置-1 |
| s | int[] | `birthSns` | 出生点BirthSn |
| s | int[] | `elementCheckPointSn` | 关联ElementCheckPoint表SN（非BirthSn） |
| c | int | `previewDropSn` | 奖励预览 |
| s | int | `dropSn` | 奖励发放 |
| c | int | `triggerSn` | VisualCommunication视讯通话sn |
| c | String | `actorHouseSelectVehicle` | 选车ActorHouse |
| cs | String[] | `roadTags` | 道路标签 用于导航和做排名 |
| cs | int[] | `vehicles` | 指定载具 |
| cs | int | `aiType` | 0:幽灵车 1:AI车 |
| cs | int | `aiNumber` | 幽灵车数量 |
| csr | int[] | `recordLocal` | 幽灵车数据 （当玩家车辆评分大于等于推荐评分时有效，索引GhostVehicle） |
| csr | int[] | `recordLocal2` | 高难幽灵车数据 （当玩家车辆评分低于推荐评分时有效，索引GhostVehicle） |
| c | boolean | `skipSettlement` | 跳过结算，不展示结算界面了 |
| cs | boolean | `bCloseTCS` | 关闭车流 true:关闭 false:不关闭 |
| cs | int[] | `raceGearElement` | 比赛机关元件 |
| cs | int | `dayNightTime` | 昼夜时间,具体见weather表 1	Dawn 2	Morning 3	Noon 4	AfterNoon 5	SunSet 6	Evening 7	MidNig... |
| cs | int | `suggestionPoint` | 推荐评分 |
| c | int | `weatherType` | 天气类型（0默认 1雨  2雪） |
| cr | string | `weatherTypeRes` | 特殊天气对应的资源 |
| c | float | `Intensity` | 天气强度（0到1） |
| c | int | `assetSn` | 包体sn |
| c | boolean | `bHideExit` | 默认都显示出口， 任务副本不显示出口 |

- **比赛公式表（策划公式用）**（87行×47列）— 辅助sheet，首行: sn, 备注, 俱乐部sn
（0时为特殊比赛，用于任务等不显示在俱乐部里）, 比赛下标

- **比赛对话（策划公式用）**（39行×7列）— 辅助sheet，首行: 

### VehicleDrivingInfo.xlsx

**驾驶信息|VehicleDrivingInfo**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn 险象环生，云霄飞车，飘移sn不要改 |
| c | int | `type` | 类型 |
| c | Text | `name` | 名称 |
| c | Text | `content` | 内容 |
| c | Text | `content2` | 内容2 |
| c | int | `speed` | 速度 |
| c | int | `time` | 时间 |
| c | int | `cd` | 触发cd仅险象环生使用 |

**驾驶挑战车辆接取任务信息|DrivingChallenge**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | vehicleActorSn |
| cs | int[] | `questSNs` | 可以接取的任务 |
| cs | int[] | `weight` | 任务权重 万分比 |
| csi | int | `type` | 驾驶挑战类型 |
| csr | String | `ico` | 图标 |
| c | Text | `content2` | 单位 |

### VehicleGarage.xlsx

**载具车库|VehicleGarage**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 类型sn（车库id） |
| cs | int | `sceneSn` | 车库对应场景SN |
| cs | int | `exitSceneSn` | 退出车库后回到场景Sn |
| cs | Location | `vehicleExitGarageLocation1` | 车辆退出后场景位置1 |
| cs | float[] | `vehicleExitGarageRotation1` | 车辆退出后场景朝向1 |
| cs | Location | `vehicleExitGarageLocation2` | 车辆退出后场景位置2 |
| cs | float[] | `vehicleExitGarageRotation2` | 车辆退出后场景朝向2 |
| cs | Location | `humanEnterGarageLocation1` | 玩家进入车库位置 |
| cs | float[] | `humanEnterGarageRotation1` | 玩家进入车库朝向 |
| cs | Location | `humanExitGarageLocation1` | 玩家退出后场景位置 |
| cs | float[] | `humanExitGarageRotation1` | 玩家退出后场景朝向 |
| cs | int | `parkingPlaceCount` | 车位数量 |
| cs | Location | `parkingPlaceLocation1` | 车位1位置 |
| cs | float[] | `parkingPlaceRotation1` | 车位1朝向 |
| cs | Location | `parkingPlaceLocation2` | 车位2位置 |
| cs | float[] | `parkingPlaceRotation2` | 车位2朝向 |
| cs | Location | `parkingPlaceLocation3` | 车位3位置 |
| cs | float[] | `parkingPlaceRotation3` | 车位3朝向 |
| cs | Location | `parkingPlaceLocation4` | 车位4位置 |
| cs | float[] | `parkingPlaceRotation4` | 车位4朝向 |
| cs | Location | `tempParkingPlaceLocation1` | 临时车位位置1 |
| cs | float[] | `tempParkingPlaceRotation1` | 临时车位朝向1 |
| cs | Location | `tempParkingPlaceLocation2` | 临时车位位置2 |
| cs | float[] | `tempParkingPlaceRotation2` | 临时车位朝向2 |
| cs | String | `initTempParkingVehicle` | 临时车位初始车辆 |

### VehicleItemSkill.xlsx

**载具技能|VehicleItemSkill**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn与技能一一对应 没事勿改 |
| cr | String | `Icon` | 技能图标 |
| c | String | `Name` | 技能名称 |

### VehicleNew.xlsx

**载具|VehicleNew**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | Actor表sn |
| cs | int | `type` | 载具类型 参考载具类型表 |
| cs | int | `repairTime` | 修理时间（秒） |
| cr | String | `Icon` | 载具图标 |
| c | Text | `Name` | 载具名称 |
| c | String | `DescribeParam` | 描述参数 ,逗号隔开,上限为10 |
| c | Text | `DescribeText` | 属性描述 |
| c | float | `MultipleSph` | 表显倍数 |
| c | int | `MaxSph` | 表显时速上限 |
| c | String | `uiModelPos` | 载具收集模型位置 |
| c | float[] | `uiModelRotation` | 载具收集模型旋转 |
| c | float[] | `uiModelScale` | 载具收集模型缩放 |
| c | float[] | `vehicleGetUIModelPos` | 载具获得模型位置 |
| c | float[] | `vehicleGetUIModelRotation` | 载具获得模型旋转 |
| c | float[] | `vehicleGetUIModelScale` | 载具获得模型缩放 |
| cs | boolean | `Collection` | 是否可以收集（True 可收集会显示在收集界面中 False 不可收集  默认不配是False） |
| c | Text | `DetailDescribeText` | 文字描述 |
| cs | String | `ExchangeCost` | 兑换所需道具，个数 |
| cs | int | `color` | 品质 【1】灰 【2】绿 【3】蓝 【4】紫 【5】金 |
| c | float[] | `uiModelLookRotation` | 载具收集相机角度 |
| c | float | `uiModelLookDistance` | 载具收集摄像机与目标距离 |
| c | float[] | `uiModelLookOffset` | 载具收集相机偏移（X？？，Y左+右-，Z上-下+） |
| c | float[] | `uiModelLookPitchRange` | 该点位上下转动范围 [1]:min [2]:max |
| c | float[] | `vehicleGetLookRotation` | 载具获得相机角度 |
| c | float | `vehicleGetLookDistance` | 载具获得摄像机与目标距离 |
| c | float[] | `vehicleGetLookLookOffset` | 载具获得相机偏移（X？？，Y左+右-，Z上-下+） |
| c | float[] | `vehicleGetLookLookPitchRange` | 该点位上下转动范围 [1]:min [2]:max |
| cs | boolean | `ShowInGarage` | 是否可以显示在车库（True 可， False 不可，  默认不配是False） |
| cs | boolean | `vehicleUseCampId` | 载具是否使用阵营（不使用阵营时载具默认为中立单位） |
| cr | String | `VehicleUIBPAssetName` | 载具UI蓝图资源名 |
| cs | int | `AttrSN` | 属性SN |
| c | float | `SceneTraceIconZOffset` | 【通用追踪】主角召唤载具追踪图标高度偏移 厘米 |
| cs | float | `SpawnDistanceFromHero` | 召唤时与玩家距离，cm |
| cs | float | `SpawnCheckHeight` | 召唤检查点高度，cm |
| cs | float[] | `SpawnCheckCollisionBox` | 召唤碰撞检查大小 |
| c | int | `CollectViewSortId` | 收集界面排序Id |
| c | boolean | `bShowInModifyFactoryView` | 是否在载具涂装列表中显示 |
| c | float[] | `uiFakeShadowScale` | 载具收集界面假影缩放 |
| cs | int[] | `limitopenSn` | 限时开启活动配置 |
| cs | String | `WantedOdds` | 抢车时加的通缉值 通缉值1:权重1,通缉值2:权重2 |
| cs | String | `VehicleFix` | 载具维修消耗 |
| cs | boolean | `AutoDriving` | 是否允许自动驾驶 |
| c | String | `RankUIModelPos` | 排行榜偏移位置 |
| cs | int[] | `VehicleSkillSns` | 载具技能sn |
| cr | String | `IconSpecialTag` | 特色标签图标 |
| c | boolean | `ShowName` | 上车是否显示名字 |
| cs | boolean | `CanBeStolen` | 能否放入赃车库 |
| cs | int | `PaintingSN` | 载具涂装表SN |

- **Sheet1**（7行×23列）— 辅助sheet，首行: 

### VehiclePainting.xlsx

**可涂装载具|PaintingVehicle**（36条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 载具表sn |
| c | int | `paintingDefPosition` | 载具涂装默认位置 |
| cs | int[] | `paintingPosition` | 载具涂装位置 |
| cs | String | `initPainting` | 车辆初始涂装数据 |
| c | String | `makeUp` | 载具贴花位置，关联贴花位置表 1:全身,2:车顶,3:引擎盖,4:车左侧,5:车右侧 |
| c | String | `chassisLightTransform` | 载具底盘灯默认配置 |
| c | float[] | `chassisLightOffsetBySuspension` | 不同悬挂载具底盘灯上下偏移 |

**载具涂装|VehiclePaintingPosition**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 类型sn（对应到载具上的每个改装位置） |
| cs | int | `paintingPosition` | 涂改位置： 1 整体喷涂 2 轮毂、卡钳 3 玻璃 4 底盘灯 5 引擎盖贴纸 6 烧胎 7 整车贴纸 |
| c | Text | `name` | 索引名字 |
| cs | int[] | `paintingTypeList` | 对应VehiclePaintingType中每一行(逻辑不用列，后续再删) |
| c | String | `paintingSocketName` | 模型上面UI挂点以及lookat点 |
| c | float | `cameraFOV` | 摄像机FOV |
| c | float | `cameraChangeTime` | 摄像机切换时间 |
| c | float[] | `cameraLocalRotation` | 涂装界面摄像机旋转 |
| c | float[] | `cameraLocalOffset` | 涂装界面摄像机偏移 （X？？，Y左+右-，Z上-下+） |
| c | float[] | `cameraSpringArmLengthRange` | 摄像机与目标距离 [1]默认 [2]min [3]max |
| c | float[] | `yawRange` | 该点位左右旋转范围 [1]:min [2]:max |
| c | float[] | `pitchRange` | 该点位上下转动范围 [1]:min [2]:max |
| cr | String | `uiIcon` | 浮动界面图标 |
| cs | int[] | `paintingMaterialList` | 对应VehiclePaintingMaterial中每一行 |

**涂装材质|VehiclePaintingMaterial**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| c | Text | `name` | 材质名称 |
| cs | int | `paintingPosition` | 涂改位置： 1 整体喷涂 2 轮毂、卡钳 3 玻璃 4 底盘灯 5 引擎盖贴纸 6 烧胎 7 整车贴纸 |
| cs | int | `subtype` | 不同类型可以并存，同类型的只能一个生效，替代原来的paintingtype功能，不要重复 |
| cs | int[] | `paintingColorList` | 对应VehiclePaintingColor中每一行 |
| c | String | `paintingSocketName` | 模型上面UI挂点以及lookat点 |
| c | float | `cameraFOV` | 摄像机FOV |
| c | float | `cameraChangeTime` | 摄像机切换时间 |
| c | float[] | `cameraLocalRotation` | 涂装界面摄像机旋转 |
| c | float[] | `cameraLocalOffset` | 涂装界面摄像机偏移 （X？？，Y左+右-，Z上-下+） |
| c | float[] | `cameraSpringArmLengthRange` | 摄像机与目标距离 [1]默认 [2]min [3]max |
| c | float[] | `yawRange` | 该点位左右旋转范围 [1]:min [2]:max |
| c | float[] | `pitchRange` | 该点位上下转动范围 [1]:min [2]:max |

**涂装位置ui摄像机|VPPositionUICamera**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 类型sn（对应到载具上的每个改装位置） |
| c | Text | `name` | 索引名字 |
| c | String | `paintingSocketName` | 模型上面UI挂点以及lookat点 |
| c | float | `cameraFOV` | 摄像机FOV |
| c | float | `cameraChangeTime` | 摄像机切换时间 |
| c | float[] | `cameraLocalRotation` | 涂装界面摄像机旋转 |
| c | float[] | `cameraLocalOffset` | 涂装界面摄像机偏移 （X？？，Y左+右-，Z上-下+） |
| c | float[] | `cameraSpringArmLengthRange` | 摄像机与目标距离 [1]默认 [2]min [3]max |
| c | float[] | `yawRange` | 该点位左右旋转范围 [1]:min [2]:max |
| c | float[] | `pitchRange` | 该点位上下转动范围 [1]:min [2]:max |
| c | float | `wheelRatio` | 摄像机摇杆拉伸距离倍数，对鼠标滚轮的倍率 |

**涂装材质ui摄像机|VPMaterialUICamera**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| c | Text | `name` | 材质名称 |
| c | String | `paintingSocketName` | 模型上面UI挂点以及lookat点 |
| c | float | `cameraFOV` | 摄像机FOV |
| c | float | `cameraChangeTime` | 摄像机切换时间 |
| c | float[] | `cameraLocalRotation` | 涂装界面摄像机旋转 |
| c | float[] | `cameraLocalOffset` | 涂装界面摄像机偏移 （X？？，Y左+右-，Z上-下+） |
| c | float[] | `cameraSpringArmLengthRange` | 摄像机与目标距离 [1]默认 [2]min [3]max |
| c | float[] | `yawRange` | 该点位左右旋转范围 [1]:min [2]:max |
| c | float[] | `pitchRange` | 该点位上下转动范围 [1]:min [2]:max |
| c | float | `wheelRatio` | 摄像机摇杆拉伸距离倍数，对鼠标滚轮的倍率 |

**涂装颜色|VehiclePaintingColor**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `type` | 类型 1 颜色 2 贴花 |
| c | Text | `name` | 名字 |
| c | String | `materialParam` | 材质参数  1.修改材质格式（暂未使用）：changematerial,materialkeyword,materialAssetName 2.修改颜色格式：c... |
| cr | String | `uiParam` | 界面上的参数，颜色值或者图片  换色类的涂装，在此处配置RGBA色值 |
| cs | boolean | `bUnionPaintingColor` |  |
| c | int | `sortid` | 排序id |
| cs | String | `costItem` | 兑换获得参数:5倍 |
| cr | String[] | `Res` | 单纯为了标识，让资源自动加载 |

**贴花位置|VehicleMakeUpTransform**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | int | `position` | 位置 |
| c | float[] | `anchorPosition` | 部位锚点(美术提供UV坐标) |
| c | float[] | `scale` | 该部位贴花默认的缩放 |
| c | float | `rotation` | 该部位默认的贴花旋转 |
| c | int | `positionLRSliderSn` | 位置左右滑杆sn |
| c | float[] | `positionLRRange` | 位置左右调节范围 |
| c | int | `positionTBSliderSn` | 位置上下滑杆sn |
| c | float[] | `positionTBRange` | 位置上下调节范围 |
| c | int | `scaleSliderSn` | 缩放滑杆sn |
| c | float | `defaultScaleValue` | 默认的缩放范围 |
| c | float[] | `scaleRange` | 缩放范围 |
| c | int | `rotationSliderSn` | 旋转滑杆sn |
| c | float[] | `rotationRange` | 旋转范围 |
| c | float | `maskValue` | 该改装部位对应的Mask值 |
| cr | string | `maskResName` | 该改装部位对应的Mask图资源路径 |

**涂装贴花|VehiclePaintingMakeupParam**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 唯一标识 |
|  | string | `datades` | 备注说明 |
| c | boolean | `canEditColor` | 允许改色 |
| c | boolean | `canEditTransform` | 允许编辑位置 |
| c | float[] | `UVCenter` | UV(FVector2D) |
| c | float[] | `UVOffset` | UV偏移(FVector2D) |
| c | string | `TintColor` | 换色 |
| c | float | `ColorMaskThreold` | 基础颜色 |
| c | float | `ColorMaskScale` | 基础颜色权重 |
| c | float | `NormalMaskThreold` | 法线 |
| c | string | `NormalMaskScale` | 法线权重 |
| cr | string | `BaseColorResName` | 配置的资源路径 |
| cr | string | `BaseNormalResName` | 配置的法线的资源路径 |
| c | string | `BaseColorMask` | 颜色(LinearColor)值 |
| c | string | `NormalMask` | 法线(LinearColor)值 |
| c | int[] | `decalColorEditSliderSn` | 贴花颜色编辑Sn |

**贴花滑块|VehicleDecalEditSlider**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 唯一标识 |
| c | Text | `slidername` | 滑动条内容 |
| c | int[] | `sliderValue` | 客户端展示的数值 |

- **Sheet1**（519行×4列）— 辅助sheet，首行: 亮面车漆-云光白, 1, 喷漆, 11000

- **材质参数备忘**（72行×21列）— 辅助sheet，首行: 材质所有参数名

- **公式计算**（37行×8列）— 辅助sheet，首行: 亮面, 5101

### VehicleRobotAutoDriving.xlsx

**载具机器人AI驾驶|VehicleRobotDriving**（334条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | float | `tickRate` | 心跳频率，如果配0则每帧tick |
| cs | float | `steeringDisTimes` | 转向向前检测距离                       当前速度*steeringDisTims + steeringDisFixedValue     ... |
| cs | float | `steeringDisFixedValue` | 转向向前检测距离                       当前速度*steeringDisTims + steeringDisFixedValue     ... |
| cs | float | `steeringInRangeA` | 转向输入映射输入A   将载具夹角 从InA-InB 映射到 OutA-OutB          初始值参考：-15 |
| cs | float | `steeringInRangeB` | 转向输入映射输入B  将载具夹角 从InA-InB 映射到 OutA-OutB   初始值参考：15 |
| cs | float | `steeringOutRangeA` | 转向输入映射输出A  将载具夹角 从InA-InB 映射到 OutA-OutB           初始值参考：-1 |
| cs | float | `steeringOutRangeB` | 转向输入映射输出B  将载具夹角 从InA-InB 映射到 OutA-OutB       初始值参考：1 |
| cs | float | `throttleDisTims` | 前进输入向前检测距离                       当前速度*steeringDisTims + steeringDisFixedValue   ... |
| cs | float | `throttleDisFixedValue` | 前进输入向前检测距离                       当前速度*steeringDisTims + steeringDisFixedValue   ... |
| cs | float | `throttleInRangeA` | 前进输入映射输入A   将载具夹角 从InA-InB 映射到 OutA-OutB                           初始值参考：35 |
| cs | float | `throttleInRangeB` | 前进输入映射输入B  将载具夹角 从InA-InB 映射到 OutA-OutB                          初始值参考：5 |
| cs | float | `throttleOutRangeA` | 前进输入映射输出A  将载具夹角 从InA-InB 映射到 OutA-OutB                                         ... |
| cs | float | `throttleOutRangeB` | 前进输入映射输出B  将载具夹角 从InA-InB 映射到 OutA-OutB                                        也... |
| cs | float | `throttleMax` | 最大油门               初始值参考0.5-1 |
| cs | float | `usePosDis` | 使用切线平行线最大距离                           初始参考值：600 |
| cs | String | `painting` | 涂装数据 |
| cs | String | `upgrade` | 升级数据      属性sn:星级,属性sn:星级… |
| cs | int | `vehicleSn` | 载具SN |
| cs | int | `robotBirthSn` | 司机birthSN |
| cs | int[] | `boostRate` | 弹射起步概率分布（1-100） 超级完美,完美,普通 |
| cs | int | `robotSn` | 司机机器人sn，用于头顶显示 |

- **俱乐部工具**（293行×46列）— 辅助sheet，首行: 俱乐部, 关卡, 车号, 推荐评分

- **耐力赛和多人工具**（78行×46列）— 辅助sheet，首行: 俱乐部, 关卡, 车号, 推荐评分

- **配置工具2**（61行×49列）— 辅助sheet，首行: 车漆, 轮毂

### VehicleSkill.xlsx

**载具技能|VehicleSkill**（9条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| c | Text | `name` | 技能名称 |
| cs | int[] | `conditionSn` | 触发条件sn 注意多个条件直接是 或（or） 同类型条件无法配置多个 |
| cs | int[] | `effectSn` | 技能效果sn 注意多个技能效果是且（and）条件达成时会同时产生效果 |
| cr | String | `icon` | 技能图标 |
| c | Text | `desc` | 技能描述 |

**载具技能条件|VehicleSkillCondition**（18条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `type` | 条件类型 |
| cs | float | `param1` | 条件参数1 |
| cs | float | `param2` | 条件参数2 |
| cs | float | `param3` | 条件参数3 |
| cs | int[] | `param4` | 条件参数4 |

**载具技能效果|VehicleSkillEffect**（37条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `type` | 类型 |
| cs | float | `cd` | 触发内置cd，注意Param表 VEHICLE_SKILL_CD 配置的最小值 |
| cs | float | `param1` | 效果参数1 |
| cs | float | `param2` | 效果参数2 |
| cs | float | `param3` | 效果参数3 |
| cs | String | `param4` | 效果参数4 |

- **Sheet1**（37行×3列）— 辅助sheet，首行: 条件类型, 效果类型

### VehicleSpawn.xlsx

**载具刷怪|VehicleSpawn**（239条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 载具的BirthSn |
| cs | int[] | `passengerList` | 乘客的BirthSn，数组顺序对应座位顺序 （乘客的birthSn不可重复） （需载具添加VehicleSpawnByConfigComp组件） 可配置-1跳过... |
| cs | boolean | `bPatrolEndThenGetOff` | 是否达到路点后所有乘客下车 |
| cs | boolean | `bDestoryPassenger` | 载具销毁时是否销毁乘客 |

### VehicleTransaction.xlsx

**交易入口|VehicleTransactionEntrance**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `entranceNPCBirthSn` | 入口NPCbirthsn |
| cs | int | `difficulty` | 难度等级 |
| cs | int | `professionLevel` | 职业等级 |
| s | int[] | `randomGameplaySn` | 随机玩法sn，为主导演birthsn |
| s | int[] | `randomWeight` | 随机权重 |
| c | int | `AcceptSuccessVCSn` | 接取成功对话 |
| c | int | `AllGameplayStartedVCSn` | 所有玩法都被随机后对话 |

**载具交易|VehicleTransactionGameplay**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 主导演BirthSn |
| c | Text | `title` | 玩法标题 |
| c | Text | `desc` | 玩法描述 |
| cs | int | `entranceSn` | 入口sn |
| cs | int[] | `vehicleBirthSn` | 目标车辆Sn 刷载具的birth |
| cs | int | `vehicleSn` | 载具sn 车辆actor的SN |
| cs | int[] | `vehicleAttrSn` | 不同难度载具属性 |
| cs | float[] | `addedProfessionExp` | 增加的职业熟练度 |
| cs | int | `vehicleAddUndeadBuffDirector` | 在某个导演时添加buff， 需要在控制载具刷新的导演后面，否则加不上 到达区域 |
| cs | int | `vehicleRemoveUndeadBuffDirector` | 在某个导演时移除buff， 需要在控制载具刷新的导演后面，否则移除不了 进入载具 |
| s | int | `spawnVehicleDirector` | 某个导演出生时刷新载具，如果配置的话，检查添加移除buff的导演sn是否正确。 如果不配置为空的话，会在主导演生成时刷新载具 |
| c | int | `vehicleMapTypeSn` | 地图图标 |
| cs | int | `startVisualCommunication` | 开始电话sn |
| cs | float[] | `gameplayTotalTime` | 玩法总时间 |
| cs | int[] | `subDirectors` | 玩法子导演 到达区域接电话→刷怪→到达偷车区域→进入载具→回家 |
| cs | int[] | `DropGroup` | 奖励组 |

**交易载具信息|TransactionVehicleInfo**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn跟载具表相同 |
| c | Text | `vehicleName` | name |
| cs | int | `quality` | 评级 |
| csi | int | `series` | 所属系列 |
| c | Text | `seriesName` | 系列名称 |
| cr | String | `picture` | 图鉴展示 |
| cs | float | `vehicleMaxSpeed` | 载具最大速度，km/h |

**交易载具属性|TransactionVehicleAttr**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `vehicleValue` | 载具价值 |
| cs | float | `repairRate` | 修理费系数 |
| cs | int | `maxRepairCost` | 总修理费上限 |
| cs | int | `maxRepairCostPerHit` | 单次伤害修理费上限 |

**子导演|VehicleTransactionSubDirect**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 子导演BirthSn |
| cs | int | `uiType` | 当前步骤使用的UI类型 0:仅显示上方提示，不显示下方 1：修理费 2：跟踪 3：炸弹车 |
| c | Text | `tipsText` | 当前阶段提示文字 |
| c | int | `traceType` | 0:追踪导演生成的载具actor，动态，小点 1:区域追踪，带特效显示 2:birthsn 3:蓝色区域圆圈，areaid |
| c | String | `traceParam` |  |
| cr | String | `traceNia` | 带特效的区域追踪 |

**启动玩法|VehicleTransactionLauncher**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 辅助actorsn |
| s | int | `vehicleTransactionGameplayDirector` | 载具交易中导演sn |
| s | int | `difficulty` | 导演玩法难度 |
| c | String | `repairWarnningCall` | 载具被伤害后警告电话 |

### VehicleType.xlsx

**载具类型|VehicleType**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 类型sn |
| c | Text | `name` | 载具类型 |
| cr | String | `selectTypeImage` | 类型选中图片 |
| cr | String | `unSelectTypeImage` | 未选中图片 |
| c | boolean | `bOpen` | 是否开放 |

**载具屏幕后效|VehicleMoveEffect**（11条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| c | float | `VelocitySectionMin` | 速度区间 左  大于等于  表显速度 |
| c | float | `VelocitySectionMax` | 速度区间 右 小于等于 表显速度 |
| c | float | `EffectIntensity` | 后效强度 0-1 |
| cr | String | `CameraShake` | 震屏名称 |
| c | float | `InnerRadius` | 震屏内环半径 |
| c | float | `OuterRadius` | 震屏外环半径 |
| c | float | `CameraShakeCD` | 震屏间隔 |

**载具漂移震屏|VehicleDriftShake**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| c | float | `VehicleDriftProgressMin` | 漂移进度区间左值（与UI漂移进度一致，非表显速度） |
| c | float | `VehicleDriftProgressMax` | 进度区间 右 小于等于 表显速度 |
| cr | String | `CameraShake` | 震屏名称 |
| c | float | `InnerRadius` | 震屏内环半径 |
| c | float | `OuterRadius` | 震屏外环半径 |
| c | float | `CameraShakeCD` | 震屏间隔 |

**载具弹射起步|VehicleEjectionBoost**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | int[] | `Normal` | 普通起步区间  左闭右开 |
| c | int[] | `Perfect1` | 完美区间1 左闭右开 |
| c | int[] | `SuperPerfect` | 超级完美区间 左闭右开 |
| c | int[] | `Perfect2` | 完美区间2 左闭右开 |
| c | int[] | `High` | 转速过高区间 左闭右闭 |
| c | int | `StartShake` | 开始抖动蓄力值 |
| c | float | `NormalRpm` | 普通起步Rpm比例 |
| c | float | `PerfectRpm` | 完美起步Rpm比例 |
| c | float | `SuperPerfectRpm` | 超级完美起步Rpm比例 |
| c | float | `HighRpm` | 转速过高Rpm比例 |
| c | String | `NormalColor` | 普通起步颜色 |
| c | String | `PerfectColor` | 完美起步颜色 |
| c | String | `SuperPerfectColor` | 超级完美起步颜色 |
| c | String | `HighColor` | 转速过高颜色 |

- **Sheet1**（7行×22列）— 辅助sheet，首行: 

### VehicleUpgrade.xlsx

**载具属性|VehicleAttr**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 载具属性SN |
| cs | int[] | `initAttrValue` | 初始属性 |
| cs | int[] | `maxAttrValue` | 全满属性 |
| c | int[] | `attrLimitValue` | 属性展示用除数/上限刻度（雷达条数值比例=当前值/attrLimitValue） |
| c | int[] | `attrShow` | 界面五位图展示属性 |
| cs | int | `initScore` | 初始评分 |
| cs | int[] | `initStarLevel` | 初始星级 |
| cs | int | `attrGroupId` | 属性升级组 |
| c | int | `upgradeUIDefaultCameraSn` | 升级界面默认镜头 |
| cs | int[] | `canUpgradeAttr` | 可升级属性 |

**属性升级|VehicleAttrUpgrade**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 载具升级SN |
| cs | int | `attrSn` | 属性SN |
| cs | int | `attrGroup` | 升级属性组 |
| cs | int | `starLevel` | 升星后的等级 |
| cs | String | `upgradeCost` | 消耗 |
| cs | int[] | `addedAttr` | 属性提升值 |
| cs | int | `addedScore` | 评分提升值 |
| cs | String | `addedBaseAttr` | attr表格属性 |
| cs | String | `addedEngineAttr` | 引擎增加属性 |

**升级展示UI|VehicleUpgradeUICamera**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 属性SN |
| c | String | `socketName` | 模型上面UI挂点以及lookat点 |
| c | float | `cameraChangeTime` | 摄像机切换时间 |
| c | float[] | `cameraLocalRotation` | 涂装界面摄像机旋转 |
| c | float[] | `cameraLocalOffset` | 涂装界面摄像机偏移 （X？？，Y左+右-，Z上-下+） |
| c | float[] | `cameraSpringArmLengthRange` | 摄像机与目标距离 [1]默认 [2]min [3]max |
| c | float[] | `yawRange` | 该点位左右旋转范围 [1]:min [2]:max |
| c | float[] | `pitchRange` | 该点位上下转动范围 [1]:min [2]:max |
| c | float | `wheelRatio` | 摄像机摇杆拉伸距离倍数，对鼠标滚轮的倍率 |

**属性展示|VehicleAttrShow**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 属性SN |
| c | Text | `attrName` | 属性名称 |
| c | int | `sortId` | 排序 |
| c | Text | `PartName` | 升级部件名称 |
| cs | int | `type` | 1:星级 2：急速 3：加速 4：操控 5：耐久 6：重量 |
| cr | String | `uiImage` | 界面底图 |
| cr | String | `uiIcon` | 升级图片 |
| c | String | `socketName` | 模型上面UI挂点以及lookat点 |
| c | float | `cameraFOV` | 摄像机FOV |
| c | float | `cameraChangeTime` | 摄像机切换时间 |
| c | float[] | `cameraLocalRotation` | 涂装界面摄像机旋转 |
| c | float[] | `cameraLocalOffset` | 涂装界面摄像机偏移 （X？？，Y左+右-，Z上-下+） |
| c | float[] | `cameraSpringArmLengthRange` | 摄像机与目标距离 [1]默认 [2]min [3]max |
| c | float[] | `yawRange` | 该点位左右旋转范围 [1]:min [2]:max |
| c | float[] | `pitchRange` | 该点位上下转动范围 [1]:min [2]:max |

- **属性备注**（19行×3列）— 辅助sheet，首行: 

- **消耗索引**（79行×28列）— 辅助sheet，首行: