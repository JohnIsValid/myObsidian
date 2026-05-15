## 建造与采集

### BoxObject.xlsx

**宝箱|BoxObject**（67条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN 对应怪物sn |
| cs | int | `type` | 宝箱类型 【0】无需解锁宝箱 【1】默认锁定宝箱 【3】纳米仓宝箱 |
| cs | int | `exploreTime` | 读条时间单位秒 |
| cs | int | `storySn` | 开箱动画sn |
| cs | int[] | `typeParam` | 出现类型参数 |
| cs | boolean | `canForceOpen` | 开启类型，是否可以强制开启 |
| cr | String | `lock_effect` | 【锁定状态】出生特效 |
| cr | String | `unlock_effect` | 解锁时特效 |
| cr | String | `open_effect` | 开箱子时特效 |
| cs | int | `outDist` | 提示距离外环单位米 |
| cs | int | `inDist` | 提示距离内环单位米 |
| cs | int[] | `cost` | 开启宝箱需要的道具 |
| cs | int | `firstDrop` | 首次开启掉落 |
| cs | int | `costOpenDrop` | 消耗道具时掉落（正常掉落只填这列！） |
| cs | int | `forceOpenDrop` | 强制开启时掉落（不消耗道具） |
| cr | String | `traceIcon` | 追踪图标 |
| cs | boolean | `isShow` | 是否需要显示在地图状态上 |
| cr | float | `traceOffset` | 追踪图标偏移 单位米 |
| cs | boolean | `isShowRewardView` | 是否要弹获奖界面 |
| c | boolean | `haveFocusSeq` | 有无解锁动画 只对【默认锁定宝箱】有效 默认FALSE |
| c | boolean | `haveLockEffect` | 【锁定状态】的特效 |
| c | boolean | `haveNotOpenEffect` | 【解锁后特效】还没开启时特效 |
| cs | int | `lock_outDist` | 【锁定状态】提示距离外环单位米 |
| cs | int | `lock_inDist` | 【锁定状态】提示距离内环单位米 |
| cs | boolean | `personal` | 是否私人宝箱 |
| cr | String | `lockTraceIcon` | 锁定时的追踪图标 |
| cr | String | `unLockTraceIcon` | 未锁定时的追踪图标 |
| cs | boolean | `isShowRandomRewardView` | 是否要弹随机获奖界面 如果希望开宝箱有抽奖体验可以配置这个，用于展示一段抽奖表现，和通用奖励获得弹板显示互斥 |
| csr | String | `interactAnim` | 交互前动作 |
| cs | boolean | `isHideMesh` | 是否要隐藏mesh |
| cs | int | `delayDropTime` | 开启后掉落延迟时间 单位毫秒 |
| cs | int | `playSourceType` | 宝箱玩法类型（特殊玩法） 1=公共事件 2=单人爬塔 3=多人爬塔 4=随机事件 5=大世界探索地面宝箱 6=大世界探索气球宝箱 |
| cs | boolean | `ShowHeadUp` | 是否显示头顶图标 |
| cs | int[] | `interactLevelLimit` | 玩家处于等级区间内可交互 显示倒计时（如有） 不填默认一直可以交互 |
| cs | boolean | `canInteractiveInLock` | 锁住状态是否交互 |
| cs | Text | `lockHint` | 锁住提示文本 |
| csr | String | `lockInteractiveIcon` | 锁定时的交互图标 |
| cs | boolean | `balloon` | 是否是气球宝箱 |
| cs | int | `existenceTime` | 宝箱存在时间(单位秒) |
| c | int | `countDownDistance` | 倒计时UI显示距离(单位米) |
| cs | boolean | `isOpenPermanently` | 打开宝箱后是否消失永久保持（即打开后状态永久保持） |

### BoxRefresh.xlsx

**宝箱开启次数和重置|BoxRestOpenTime**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| csi | int | `sn` | 宝箱birthsn |
| csi | int | `resetType` | 重置类型 1为日重置 2为周重置 |
| cs | int | `openTimes` | 周期内开启次数 |
| cs | int | `liveTime` | 生存时间 单位秒 |
| cs | int | `resetTime` | 重置时间 单位秒 |

**宝箱组刷新上限制|BoxGroupRefresh**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | GroupSN |
| cs | int | `limit` | 怪物组刷新上限 出现在此的宝箱会复活，组内宝箱不能出现在一次性宝箱表内，刷新表宝箱都是功能刷新且不能复活 |
| s | int[] | `reliveTime` | 复活间隔时间 配成数组表示在两个数值间随机复活时间，闭区间，单位秒 |

**宝箱解锁|BoxLockTime**（21条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 怪物组Sn |
| cs | int | `boxBirthSn` | 宝箱birthSn |
| cs | int | `resetLockTime` | 再次锁定时间(单位毫秒) |

**宝箱怪|MonsterBox**（60条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 宝箱怪sn |
| cs | int | `monsterGroupSn` | 怪物组Sn |
| csi | int | `monsterBoxBirthSn` | 宝箱怪birthSn |
| cs | int | `boxBirthSn` | 宝箱birthSn |

- **Sheet1**（17行×5列）— 辅助sheet，首行: 

### BuildObject.xlsx

**建筑物|BuildObject**（534条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 建筑物的Sn |
| c | Text | `desc` | 描述 |
| cr | String | `icon` | 图标 |
| cs | int | `typeA` | 类型A |
| cs | int | `typeB` | 类型B |
| cs | int | `formulaSn` | 配方Sn，建造此建造物所需的材料，找不到配方则无需材料建造 |
| cs | float | `requiredBuildWorkAmount` | 建造所需的工作量，<=0则直接建造完成 |
| cs | float | `installNeighborThreshold` | 接近相邻建筑物的阈值 |
| cs | boolean | `isInstallOnlyOnBase` | 只能在地基上建造吗？ |
| cs | boolean | `isInstallOnlyInDoor` | 只能在室内建造吗？ |
| cs | boolean | `isInstallOnlyHubAround` | 只能安装在据点附近吗？ |
| cs | boolean | `installableNoObstacleFromCamera` | 当摄像头和建筑物之间存在障碍物时无法建造 |
| cs | boolean | `installAtReticle` | 是否按照网格建造 |
| cs | int | `installMaxNumInBaseCamp` | 在据点内可安装的最大数量 |
| cs | boolean | `bBelongToBaseCamp` | 是否在据点内摆放 |
| cr | String | `buildStartEffect` | 建筑物建造工作开始的特效 |
| cr | String | `buildStartAudio` | 建筑物建造工作开始的音频 |
| cr | String | `buildCompleteEffect` | 建筑物建造工作结束的特效 |
| cr | String | `buildCompleteAudio` | 建筑物建造工作结束的音频 |
| c | float | `playerDestroyFXPlayerRange` | 建筑物销毁时，玩家在范围内才会播放 为0一定播放 |
| cr | String | `destroyEffect` | 建筑物销毁的特效 |
| cr | String | `destroyAudio` | 建筑物销毁的音频 |
| c | boolean | `canSnapInstall` | 是否可以轴对齐摆放 |
| c | int | `orderPriority` | 建造列表排序优先级（数字越小越靠前，数字相同按照sn排序） |
| cs | boolean | `autoBuild` | 是否开启自动建造 |
| cs | int | `score` | 建筑分数 |
| c | boolean | `unselectable` | 是否不可选中 |
| c | boolean | `cannotDeleted` | 是否不可拆除 |
| cs | boolean | `isNotHit` | 是否不可受击 |
| cs | boolean | `isNotDeteriorate` | 是否不可劣化 |
| cs | int[] | `productions` | 制造配方sn，表格为Production |
| cs | boolean | `playerCanProduct` | 玩家是否能参与制造 |
| cs | int[] | `workerAssign` | 工作属性 |
| cs | int | `workerMaxNum` | 参与工作的宠物数量上限 |
| cs | boolean | `canFixedPet` | 是否可以固定指定帕鲁工作 |
| c | int | `headUpShowDis` | 头顶显示距离（米） |
| c | float | `headUpSwitchFar` | 头顶切换距离（米） |
| cs | int | `electricConsume` | 工作电量消耗数/s |
| cs | float | `deteriorateRate` | 劣化速度 掉1点血的秒数 |
| cs | int | `materialType` | 建筑材质 1=木头 2=石头 |
| cs | int | `fireExtinguishingWorkAmount` | 灭火需要工作量 |
| cs | float | `fireAddRate` | 获得火元素异常值修正                                 *（1+此值） |
| cs | float | `fireResistanceGrowFactor` | 耐性增加系数                  *（1+此值） |
| cs | boolean | `bCluster` | 建筑物是否能加入建筑群中（用于存储优化，默认false，是否配置true请联系zhangyan确认） |
| cs | int | `ClusterType` | 能加入集群的类型  // 地基 1,  // 墙 2,  // 三角形墙 3,  // 斜坡屋顶或斜坡楼梯 4,  // 立柱 5,  // 平面屋顶 6, |
| cs | boolean | `bHeadUp` | 是否有头顶信息UI 默认True |
| cs | boolean | `canPreBuild` | 是否可以预建造 |
| cs | boolean | `canSingleMove` | 是否可以单个进行移动，不影响搬家 |
| cs | boolean | `bDevelop` | 是否是开发专用建筑物 |
| cs | int | `dropSn` | 以下类型的建筑物被打爆后的掉落物 1：大世界建筑物 2：怪物据点内建筑物 |
| cs | boolean | `isStore` | 获取渠道 是否通过物品解锁 |

### CommonInteractLimit.xlsx

**交互限制表|CommonInteractLimit**（15条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 唯一标识对应Actor表Sn |
| c | String[] | `LimitParam` | 限制参数 (例：7:140750,1:16020) |

### GearInteractive.xlsx

**可交互物|GearInteractive**（27条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 可交互物sn |
| cs | int | `subData` | 是否进子表（填空不进） |
| cs | String | `typeParam` | buffsn |
| cr | String | `effect` | 特效 |
| cs | int | `dist` | 提示距离单位米 |
| cr | String | `traceIcon` | 追踪图标 |
| c | float | `traceOffset` | 追踪图标偏移 单位米 |
| cs | int | `liveingTime` | 道具存在时间(单位秒) |
| cs | boolean | `isShow` | 是否需要显示在小地图上 |
| cs | int | `LaserTrapLength` | 激光陷阱长度 |
| cs | int | `UAVDropSn` | UAV掉落奖励DropSn |
| cs | String | `dropItem` | 掉落物实例配置 |
| cs | boolean | `pickNeedListView` | 掉落物 是否需要弹框拾取 |
| cs | Text | `DescForFirstGot` | 获取时的提示文本 |
| cs | int | `PicForFirstGot` | 关联的item表sn |

### GroupRefresh.xlsx

**组刷新机制|GroupRefresh**（199条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | groupSn |
| s | int | `sceneSn` | 场景sn |
| e | String | `desc` | 策划备注 |
| s | int | `refreshType` | 初始刷新触发类型 1、场景场景刷新（覆盖birth里的refreshType） 2、监听其他GroupSn剩余怪物数量，≤n时，触发刷新本Group 3、其他功... |
| s | int[] | `refreshParam` | 初始刷新触发参数： refreshType为1时，如果配置参数：概率[0,100]，刷新时间(单位秒)，则会根据概率周期补充该组怪；不配置则走场景初始化刷新逻辑... |
| s | int | `refreshDelay` | 初始刷新延迟时间（单位秒），无论是枚举1（默认刷新）还是枚举2（监听其他group），触发后延迟一定时间再刷新 |
| s | int | `spawnPosType` | 刷新位置类型 1.固定点(ActorBirth表) 2.随机点 3.区域 4.样条线 |
| s | String | `posParam` | 刷新位置参数 1，固定点，无参数 2，随机点，无参数 3，区域，AreaSn 4，样条线，Tag |
| s | int | `num` | 初始刷新数量 |
| s | int | `triggerType` | 后续刷新类型 1：循环刷新（需要判断场景类型，主城不允许无限刷） 2：增补刷新 |
| s | int | `loopCount` | 循环次数 （仅对循环刷新类型有效，999时无限） |
| s | int | `loopTimeSec` | 循环间隔 仅对循环刷新类型有效 |
| s | int | `appendTriggerNum` | 增补刷新触发的怪物剩余数量 （仅对增补刷新类型有效，组内数量≤n时开始增补刷新） （注意，判断对象消失是走的销毁接口，如果从死亡到销毁之间的延迟过长，会导致较长... |
| s | int | `appendExistNum` | 增补刷新时允许本组存活的数量上限 （仅对增补刷新类型有效） |
| s | int | `appendEachNum` | 增补刷新时每次补充数量 （仅对增补刷新类型有效） |
| s | int | `appendDelaySec` | 增补刷新时每次补充延迟 （仅对增补刷新类型有效，单位秒） |
| s | int | `appendTimeSec` | 增补关闭时间 （仅对增补刷新类型有效，从初始刷新开始计时）  |
| s | int | `removeTriggerType` | 移除后续刷新类型 1：副本阶段，参数：副本阶段sn 2：特定Birth死亡，参数：BirthSn 3：任务target完成，参数：任务TargetSn |
| s | int | `removeTriggerParam` | 移除后续刷新参数 |
| s | boolean | `fixPlayerDistance` | 是否修正与玩家距离 |

### InteractTurnTable.xlsx

**交互物转盘抽奖|InteractTurnTable**（60条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | Actor的BirthSn |
| c | int[] | `rewards` | 奖品奖励，从转盘最上方开始，顺时针填充奖励 |
| c | float[] | `chargingTime` | 蓄力时间，从小到大填写 |
| c | int[] | `initialSpeed` | 初始速度，跟蓄力时间一一对应 |
| c | float | `minAcceleration` | 加速度约束最小值，单位：度/秒 |
| c | float | `maxAcceleration` | 加速度约束最大值，单位：度/秒 |

**抽奖转盘奖品|InteractTurnTableReward**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 奖品Sn |
| c | Text | `DisplayName` | 显示名字 |
| c | int | `DropSn` | 奖品 |

### Interaction.xlsx

**交互动作|InteractionItem**（19条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 动作SN |
| cs | Text | `name` | 动作名称 |
| c | Text | `des` | 动作描述 |
| cs | boolean | `hideInUI` | True隐藏 |
| cs | int | `condition` | 解锁类型 |
| cs | int[] | `param` | 解锁参数 1: 等级 2: 货币花费 3: 道具sn |
| c | Text | `source` | 时装来源 |
| cs | int | `color` | 品质【1】灰【2】绿【3】蓝【4】紫【5】金 |
| cs | int | `type` | 类型 1: 单人 2: 双人 3: 持续双人 4：相机动作 |
| cs | int[] | `limitFuncOpenSn` | 限时功能开启Sn |
| cs | int | `slotPos` | 在初始预设中的位置 |
| csr | String[] | `montage` | 动作资源 按体型顺序配置1男2女 |
| cs | float[] | `location` | 被动方相对角度 距离 相对朝向（0同向/180面对面） 邀请者在UI上的朝向（可不配） |
| csr | String[] | `montage2` | 被动方动作资源 按体型顺序配置1男2女 |
| csr | String | `icon` | 在物品列表中显示的图片 |
| csr | String[] | `montageTemp` | UI上使用的动作资源 临时列 |
| c | int[] | `skipInvitation` | 跳过邀请环节的场景 |
| cs | int | `mulActionSortType` | 0 不填 顺序  1 倒叙 |
| cs | int | `maxPlayer` | 最多人数 |
| c | int[] | `cameraDistance` | 人数->距离 (从2个人开始) |

**家具交互|HomeFurnitureInteraction**（7条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 类型sn |
| cr | String | `montage` | 动作名称 |
| cr | String | `outfit` | 任务外表 |
| c | int | `isLooping` | 是否循环 |
| cr | String | `operationMontage` | 操作动作名称 |
| cr | String | `sequence` | 镜头动画名称 |
| c | float | `readyDelayTime` | 延迟时间（用于发送UI开启事件） |

**宠物抚摸镜头|PettingCamera**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 类型sn |
| c | float | `distance` | 距离 |
| c | float | `height` | 高度 |
| c | float | `armLength` | 摇臂距离 |

- **Sheet1**（31行×3列）— 辅助sheet，首行: 

**基础镜头|InteractionCamera**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 类型sn |
| c | float[] | `cameraMinRotation` | 切换到改时装类型时摄像机旋转 |
| c | float[] | `cameraMaxRotation` | 切换到改时装类型时摄像机旋转 |
| c | float[] | `cameraMinLookAtOffset` | 时装界面最近点主视的的位置偏移 (一般是对应部位) |
| c | float[] | `cameraMaxLookAtOffset` | 时装界面最远点主视的的位置偏移 (一般是角色正中) |
| c | float | `wheelRatio` | 摄像机摇杆拉伸距离倍数，对鼠标滚轮的倍率 |
| c | float[] | `cameraSpringArmLengthRange` | 摄像机与目标距离 [1]默认 [2]min 最近 [3]max 最远 |

### Mine.xlsx

**持续型采集物|Mine**（13条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 采集物ID |
| cs | int | `type` | 类别组         1=植物 2=石头  |
| cs | int[] | `mineType` | 采集类型 1.基础采集 2.受击采集 |
| cr | String | `destoryEffect` | 销毁特效 |
| cs | boolean | `affectByTalent` | 采集效果 可被天赋影响 |
| cs | int | `dropTimes` | 掉落次数 |
| cs | String | `Mine_scales` | 缩放倍率（血量:缩放比例） |
| cr | String | `Mine_dropEffect` | 掉落时特效 |
| cr | String | `Mine_dropAudio` | 掉落时音效 |
| cr | String | `Mine_tipEffect` | 提示特效 |
| c | float[] | `Mine_tipEffectPosOffset` | 提示特效坐标偏移（米） |
| cr | String | `tipEffect` | 提示特效 |
| cr | float[] | `tipEffectPosOffset` | 提示特效偏移 米 |
| cs | String | `scales` | 缩放倍率 (血量:缩放倍率) |
| cr | String | `scalesEffect` | 缩放特效 |
| cr | String | `scalesAudio` | 缩放音效 |
| cr | String | `dropEffect` | 掉落时特效 |
| cr | String | `dropAudio` | 掉落时音效 |
| cr | String | `destoryAudio` | 销毁音效 |

### OutFire.xlsx

**救火英雄环配置|OutFireLoop**（9条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| csi | int | `professionPlaySn` | 对应的环任务配置SN （等同于取难度和环数） |
| csi | int | `refreshLevel` | 刷新等级 |
| csi | int | `loopId` | 环数 |
| cs | int | `fireCount` | 环内火点数 |
| s | int[] | `fireBirthTable` | 随机库sn列表 （取OutFireBirth表） |
| cs | float | `loopTime` | 环时间（s） |
| cs | int | `addWaterGiveTime` | 环内加水补充时间 |
| cs | int | `houseArea` | 消防局AreaSn |
| cs | int | `fireHydrantArea` | 消防栓AreaSn |
| cs | int | `circleMoney` | 单环奖励 （金钱） |
| cs | int | `circleExp` | 单环奖励 （经验） |
| s | int | `dropGroup` | 物品掉落 |

**救火英雄火点库|OutFireBirth**（264条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 火点Birth |
| cs | float | `addTime` | 救火增加时间 |
| cs | int | `type` | 火场类型 |
| cs | String | `param` | 火点参数 |
| cs | int | `extraMoney` | 特殊火点额外奖励（金钱） |
| cr | String | `Icon` | 火场图标 |
| c | int | `MapPictureIndex` | Map表Picture的索引 |

**救火英雄等级|OutFireLevel**（20条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 等级 |
| cs | int | `waterCount` | 消防车储水量 |
| cs | float | `addWaterTime` | 消防车补水时间（s） |
| s | int | `refreshLevel` | 刷新等级 |
| s | int[] | `fireType` | 火场类型 |
| s | int[] | `fireTypeWeight` | 火场权重 |

- **Sheet1**（62行×14列）— 辅助sheet，首行: 390001, ,, 390001,, #NAME?

### RealEstate.xlsx

**房地产售楼部|RealEstateShop**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
|  c | int | `sn` | 房地产售楼部sn |
| c | int | `sceneSn` | 场景sn |
| c | int | `MapIconCommonSn` | 地图常见图标点Sn（售楼部在地图位置配置） |

**房屋|RealEstateItem**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 商品sn |
| c | int | `sortWeight` | 排序 |
| c | Text | `name` | 名字 |
| csi | int | `RealEstateshopSn` | 商店SN |
| cs | int | `moneyType` | 货币类型 |
| cs | int | `price` | 价格 |
| cs | int | `levelMin` | 可购买的最低等级 |
| c | Text | `description` | 商品文本描述 |
| cr | String | `listPicture` | 商品在列表中展示的图片 |
| cr | String | `detailPicture` | 商品在详细展示中展示的图片 |
| c | boolean | `sellOut` | 是否已经售罄 |

### Technology.xlsx

** 科技|Technology**（422条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 索引 （不允许修改，需要顺延往下） |
| c | Text | `name` | 科技名称 |
| cr | String | `icon` | 图标 |
| c | Text | `desc` | 科技描述 |
| cs | boolean | `isBossTech` | 科技类型 0-普通科技 1-古代科技 |
| cs | int | `unlockType` | 解锁内容类型 1-道具 2-建筑 3-建筑套组 |
| cs | int[] | `unlockFormula` | 对应配方 道具：ProductionFormula表sn 建筑：Actor_22_BuildObject，FormulaData表sn |
| cs | int | `level` | 解锁等级 *每级的科技数量不能超过9个，否则排版会有问题 |
| cs | int[] | `revealedRequirements` | 展示条件 [条件类型,条件参数]  类型：1-捕捉帕鲁 2-攻略高塔 3-前置科技 4-研究项目 参数：1-帕鲁sn  2-TowerBoss sn  3-Te... |
| cs | int[] | `unlockRequirements` | 解锁条件 [条件类型,条件参数]  类型：1-捕捉帕鲁 2-攻略高塔 3-前置科技 4-研究项目 参数：1-帕鲁sn  2-TowerBoss sn  3-Te... |
| cs | int | `cost` | 解锁消耗 |
| cs | boolean | `isOpen` | 初始解锁状态 |
| c | boolean | `isRecommend` | 显示推荐 |
| cs | boolean | `isAvailable` | 是否可用 |

**科技需求|TechRequirement**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 类型 |
| c | int | `grade` | 显示优先级 数小的优先 |
| c | Text | `desc` | 说明文本 |

### Temperature.xlsx

**温度异常伤害|TempBuff**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `tempRank` | 温差挡位 |
| cs | int | `damageBuff` | 伤害Buff （互斥） |
| c | String | `tempAudio` | 音效 |
| c | float | `screenLogicIntensity` | 屏幕后效强度 LogicIntensity |

### Work.xlsx

**工作属性定义|WorkAssignDefine**（59条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 类型(lua枚举 |
| cs | int | `workSuitability` | 工作适应性 |
| cs | int | `workerMaxNum` | 最大工作数（建造实际不限制数量，其他的不要大于5） |
| cs | float | `affectSanityValue` | 每秒扣除san值(废弃) |
| cs | float | `affectFullStomachValue` | 每秒扣除饱食度(废弃) |
| cs | boolean | `playerWorkable` | 玩家可以参与工作(废弃) |
| cs | int | `actionType` | Action (用来播放蒙太奇) |
| csr | String | `workPersonaliyMontageName` | 亲自工作播放的Montage |
| c | Text | `headupWorkName` | 宠物头顶工作中内容显示 |
| c | Text | `petEnterTips` | 已召唤宠物进入提示 |

**工作类型|WorkType**（54条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 类型(lua枚举 |
| cs | int | `priority` | 工作优先级数字越小优先级越高，可以相同 |
| cs | int | `workSuitability` | 工作类型对应工作适应性，加速工作分配，宠物不能参与的工作填-1，任意宠物都可以参与的工作填14，需要根据工作判断填0 |

**工作适应性|WorkSuitability**（14条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 枚举值 |
| cs | Text | `name` | 名称 |
| c | Text | `instruction` | 描述 |
| cs | int | `dispatchPriority` | 一键派遣优先级(数字越小，优先级越高) |
| cr | String | `icon` | icon |
| cr | String | `iconGray` | 未激活时的图标 |
| cr | String | `iconWorkHard` | 监控台图标 |
| cs | float[] | `speed` | 每级的工作速度倍率 |
| cs | float[] | `speedWild` | 野外采伐每级的工作效率 |
| cs | float[] | `expirationTimeRatio` | 冷却每级带来的倍率 |
| cs | float[] | `powerEfficiency` | 发电每级的工作效率 |
| cs | float[] | `defenseEfficiency` | 防御每级的工作效率 |
| c | bool | `bDisplay` | 是否显示在UI中 |

**工作效率监控|WorkEfficiency**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 类型 |
| c | Text | `name` | 状态 |
| c | Text | `selectText` | 选中文本 |
| cr | String | `icon` | 图标 |
| cr | String | `bgIcon` | 背景图标 |
| cs | float | `workSpeedRate` | 工作速度倍率 |
| cs | int | `workSpeedBuffSn` | 工作速度Buff |
| cs | float | `moveSpeedRate` | 移动速度倍率 |
| cs | float | `sanReduceValue` | san值减少量万分比（注意正值是减） |
| cs | float | `satietyReduceRate` | 饱食度下降倍率 |
| c | Text | `workSpeedText` | 工作速度文本 |
| c | Text | `moveText` | 移动速度文本 |
| c | Text | `sanText` | san值文本 |
| c | Text | `satietyText` | 饱食度文本 |

**工作监控台页签|WorkHardLeftButton**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | Text | `name` | 名字 |
| cr | String | `icon` | 图标 |
| cr | String | `iconGray` | 图标灰 |

**监控台工作评级|WorkHardScore**（7条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn 从小到大排序 |
| c | Text | `name` | 名字 |
| cr | String | `icon` | 图标 |
| c | int | `speed` | 需求工作速度 |
| c | int | `nextLevelSn` | 下一级sn -1表示无评级  0表示满级 |

**监控台评级宠物推荐|WorkHardScorePet**（60条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn=评级sn*10000+工作适应性sn |
| c | int[] | `recommendPetSn` | 推荐宠物列表随机一个显示 |

### WorkLab.xlsx

**工作研究|WorkResearch**（537条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 节点sn (代表UI上显示的节点，一个节点可能研究多次，具体的内容在WorkResearchContent中) |
| c | int | `nodeType` | 节点类型 0：根节点 1：大节点 2：小节点 |
| cs | int[] | `subResearchSns` | 节点研究sn，可以有多个 参照WorkResearchContent表 |
| c | int[] | `position` | 位置（一行7列 可以对照UI_E_ResearchBtn填入） |
| cs | int[] | `preNodeSns` | 前置节点sn 用来计算连线  |
| cr | String | `icon` | 图标 |

**研究内容|WorkResearchContent**（2685条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 研究sn （最后一位为0的代表节点只有一个研究）  |
| c | Text | `name` | 研究名称 |
| c | Text | `desc` | 研究内容说明 |
| cs | int | `workSuitability` | 工作适应性 （同Work表） |
| cs | int | `nodeSn` | 节点Sn |
| cs | int | `limitCampLevel` | 据点等级限制 (注意同一行的数据要一样) |
| cs | String | `costItem` | 研究消耗 (A:B,C:D,...) |
| cs | int[] | `preResearchSns` | 前置解锁研究sn （可以多个逗号隔开，仅限于上一级关系） |
| cs | int | `needWorkLoad` | 完成研究所需工作量 |
| cs | String | `effectiveObjectType` | 生效对象类型 1.角色 2.队伍帕鲁 3.据点帕鲁 |
| cs | String | `activeAttrs` | 激活属性（索引Attr表）  |

### WorldGamePlayBuild.xlsx

**建造解密|WorldGamePlayBuild**（22条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `sceneSn` | 所在场景Sn |
| cs | boolean | `needBuildAll` | 是否需要全部建造 |
| cs | int[] | `checkBuildingArray` | 需要检查的建筑数组 （建造点位页签的sn） |
| cs | int[] | `baseArray` | 需要控制的底座数组 底座的birthSn |
| cs | int[] | `unlockTypes` | 解锁类型 不填写就不解锁 1=解锁宝箱 2=接取任务（与unlockParams中任务Sn对应） |
| cs | int[] | `unlockParams` | 解锁类型参数 1=宝箱birthSn 2=任务Sn |
| cs | int | `needQuest` | 前置任务（接取任务时才能完成） |

**建造点位|WorldGamePlayBuildPoint**（37条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `birth` | 检测点蓝图birthSn |
| cs | int | `checkPosType` | 位置检测方式 1=中心距离 2=蓝图碰撞区域 |
| cs | float | `checkPosDis` | 距离中心距离 （单位：cm） |
| cs | boolean | `autoSnap` | 自动吸附 TRUE = 开启 FALSE = 关闭 |
| cs | int | `checkType` | 检测类型 1=建造物sn 2=建造物类型sn |
| cs | int | `checkParam` | 检测参数 |