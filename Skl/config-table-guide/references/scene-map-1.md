## 场景与地图

### AllCity.xlsx

**战区分类|BattleZone**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 战区分类sn，策划定义，指定国家IP的玩家必进此类战区 |
| si | int | `zoneId` | 所属大区Zonelist Sn，程序定义 |
| s | int | `idcId` | 所属数据中心 |
| s | String | `name` | 所属服务器名字(给平台显示用) |
| s | int | `defaultOpenCount` | 默认开服数量，至少是1 |
| cs | boolean | `isDefault` | 是否为默认分类 |
| cs | boolean | `isOpen` | 是否开放（同大区的可能开放时间不一样，需要热更新开启） |

**战区服务器信息|BattleZoneServer**（20条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 唯一id |
| csi | int | `battleZoneSn` | 所属战区 |
| cs | Text | `name` | 服务器名字 |
| cs | int | `maxAllocNum` | 创角人数上限，只在客户端限制 |
| cs | int | `maxOnline` | 最高在线(不限制登录，只是用来显示繁忙信息) |

**国家映射战区分类|CountryToBattleZone**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| csi | String | `sn` | 战区分类对应的国家代码（iso_code）（数据来源于GeoIP2-City.mmdb数据库），此国家代码IP分到此战区 |
| cs | int | `battleZoneSn` | 战区分类sn，策划定义 |

**IP映射战区表|IPCastBattleArea**（1463条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| csi | int | `serverID` | 服务器ID |
| csi | String | `countryCode` | 世界代码（iso_code）（数据来源于GeoIP2-City.mmdb数据库） |
| csi | String | `provincialCode` | 省区代码（iso_code）（数据来源于GeoIP2-City.mmdb数据库） |
| cs | String | `cityCode` | 城市代码（geoname_id）（数据来源于GeoIP2-City.mmdb数据库） |
| cs | int | `battleAreaSn` | 战斗区域sn |

**战区表|BattleAreas**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | Text | `BattleAreaName` | 战区名字 |

**省区对外展示表|ProvinceExternalDisplay**（24条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| ci | String | `countryCode` | sn表示国家的iso_code代码 |
| ci | String | `provincialCode` | sn表示省区的iso_code代码 |
| c | Text | `provinceName` | 省区名（names-en）（数据来源于GeoIP2-City.mmdb数据库） |

**国家对外展示表|CountryExternalDisplay**（250条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | String | `sn` | sn表示国家的iso_code代码 |
| c | Text | `countryName` | 国家名字（names-en） （数据来源于GeoIP2-City.mmdb数据库） |
| c | int | `displayOrder` | ip归属地在ui上对外展示的顺序（ 1：国家-省份-城市 2：城市-省份-国家 ） |
| c | int | `characterCreateSn` | 优先显示创角sn |

**城市对外展示表|CityExternalDisplay**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | String | `sn` | 城市代码（geoname_id）（数据来源于GeoIP2-City.mmdb数据库） |
| c | String | `cityEn` | 城市英文名(name-en)（数据来源于GeoIP2-City.mmdb数据库） |
| c | String | `cityCN` | 城市中文名(names-zh-CN)（数据来源于GeoIP2-City.mmdb数据库） |

### Area.xlsx

**区域表总表（自动生成）|Area**（632条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 区域SN |
| csi | int | `scene` | 所在场景SN |
| cs | boolean | `sharedBySceneRes` | 允许在资源相同的 场景之间通用 |
| cs | String | `name` | 区域名称 |
| e | String | `fileName` | 所属文件名 |
| cs | Location | `pos` | 中心点坐标 单位：米 |
| cs | int | `areaType` | 区域类型 0=圆形 1=矩形 2=多边形 |
| cs | float[] | `param` | 区域参数 类型0：圆的半径 类型1：矩形的X轴长度，Y轴长度，旋转的角度 类型2：每个顶点相对于中心的水平二维向量 |
| cs | float | `height` | 高度 单位：米 |
| cs | boolean | `delayCreate` | 是否延迟创建 FALSE: 场景加载时自动创建 TRUE: 外部模块自行管理创建时机 |
| c | boolean | `showOnMap` | 是否 在小地图上显示 |
| e | boolean | `enableAABB` | 是否 启用包围框 |
| e | float | `AABBBorderWidth` | 包围框边缘宽度 单位：米 |
| cs | float[] | `areaAABB` | 包围框坐标 格式为：MinX,MaxX,MinY,MaxY 留空表示不启用包围框 单位：米 |

### AreaToScene.xlsx

**区域场景切换|AreaToScene**（18条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 区域SN |
| s | int | `type` | 切换类型 1=进入 2=离开 |
| s | int | `srcSceneSn` | 源场景sn |
| cs | int | `dstSceneSn` | 目标场景sn |
| s | float[] | `pos` | 坐标点，不配置用当前坐标点 |
| s | float[] | `dir` | 朝向，不配置用当前朝向 |

### Beacon.xlsx

**官方信标|OfficalBeacon**（73条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 官方信标ID 管理ActorBirthSn |
|  | desc | `` | 备注 |
| c | Text | `name` | 留言者名称 |
| cr | String | `HeadIcon` | 留言者头像 |
| cr | String | `HeadFrameIcon` | 留言者头像框 |
| c | Text | `MessageContents` | 留言内容 |

**禁止布设区域|BeaconProhibitedArea**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | area列表 |
|  | int | `SceneSn` | 场景 |

### DSPool.xlsx

**DS池化配置|DSPool**（28条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 场景资源SN 后面会改成独立SN |
| e | String | `desc` | 备注 |
| e | String | `staff` | 负责策划 |
| cs | int[] | `allSceneBlockSn` | 所有场景地块SN |
| e | String | `generateToolKey` | 生成工具用来比较数据的键： 资源路径|导航|高低配|单人大世界|子关卡加载|SceneBlock |
| s | int[] | `linuxSeedDSPooData` | linux下种子ds池化数量 |
| s | int | `linuxWorkSeedDSNum` | linux下并发工作种子ds数量，单种子ds fork每秒最多执行8次，8*linuxWorkSeedDSNum就是每秒fork的并发数 |
| cs | int | `configuration` | 资源配置，用于实现高低配ds 0=不区分低中高配置 1=低， 2=中 3=高 |
| s | boolean | `winLoadAllSubLevel` | 是否加载所有子Level |
| s | boolean | `linuxLoadAllSubLevel` | 是否加载所有子Level |
| s | boolean | `ignoreInLinux` | linux下是否忽略池化 |
| s | boolean | `isSingleCommon` | 是否单人大世界，默认false |

**场景资源映射表|SceneResToDSPool**（77条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 场景资源SN |
| csi | int | `poolSn` | 对应的DSPool的SN |
| s | int[] | `winDSPoolData` | windows下DS池化数据 第一个参数是启服创建DSWorld数 第二个参数是保持有多少个本sn空闲DSWorld |
| s | int[] | `linuxDSPoolData` | linux下DS池化数据 第一个参数是启服创建DSWorld数 第二个参数是保持有多少个本sn空闲DSWorld |

**场景地块使用情况**（108条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| e | int | `sn` | 场景SN |
| e | String | `name` | 场景名称 |
| e | String | `desc` | 备注 |
| e | int | `sceneResSN` | 场景资源SN |
| e | int | `areaSN` | 区域SN |
| e | int[] | `sceneBlockSNs` | 场景地块SN |

### Entrance.xlsx

**入口|Entrance**（39条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | Int | `sn` | 页数*1000 + 槽位 (页数目前1-3，1页12个槽位，2页最多16个槽位，扩展需要找UI和程序。1001和2001-2004特殊处理) |
| c | Text | `Name` |  手机内app名称 |
| c | Text | `HudName` | 主界面上入口的名称 默认不配不显示 |
| cr | String | `Logo` | 图标 用在主界面上 |
| cr | String | `Picture` | 平板上的图标 |
| cr | String | `GUISN` | 跳转打开GuiSN关联界面逻辑名 |
| cr | String | `UIParam` | 显示UI带入的参数 |
| c | int[] | `RedPoint` | 红点 (ERedPoint…枚举) |
| c | int | `HudOrder` | 不配置时，不显示； （值=行数*10+索引 同行里面是降序） |
| c | boolean | `HideInPhone` | 在手机界面隐藏，需要隐藏的务必配置到所在页末端，防止排版问题 |
| c | int | `FuncSn` | 功能开启Sn |
| c | String | `LockTips` | 解锁条件提示（不填走通用） |
| c | boolean | `FirstShowDownloadAnim` | 首次出现播放下载动画（纯表现） |

**App槽位|EntranceAppSlot**（20条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | Int | `sn` | sn |
| c | int | `entranceSn` | 入口Sn |
| c | int | `slotType` | 槽位显示类型 |
| c | int | `slotGroup` | 槽位显示组 |
| cr | String | `bgIcon` | 槽位背景图 |

**转换|EntranceExchange**（16条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | Int | `sn` | sn |
| c | String | `slotName` | UI中Slot名字 |
| c | String | `luaWidgetName` | LuaWidget名字 |
| c | boolean | `showTransferEntrance` | 是否显示转换 |
| c | boolean | `bEnableCity` | 是否允许大世界显示 |

### GameplayNavigation.xlsx

**玩法指引|GameplayNavigation**（9条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | int | `Type` | 参数类型  0 忽略 1 限时挑战类型 2 引导翠叶鼠 3 宝箱怪 4 宝箱 |
| c | String | `Param` | 1 限时挑战就传sn 2 引导翠叶鼠传sn 3 宝箱怪传sn 4 宝箱传ActorSn，到时候会用ActorSn去查找所有BirthSn |
| c | int | `Radius` | 半径（单位是m，帕鲁诺斯带路到目标这个距离就停下） |

**指引参数|NavigationParam**（17条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | String | `Key` |  |
| c | int | `Value` | 距离的单位是米 |

### Map.xlsx

**地图|Map**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 大地图ID |
| c | Text | `name` | 地图名 |
| c | int | `sceneSn` | 所属场景SN （仅用于切换地图页签使用，不是必填项） |
| c | Location | `firstPos` | 初始位置（X,Y,Z） 单位：米 |
| c | int | `funcOpenSn` | 解锁ID (不填，默认解锁) |
| c | String | `switchCondition` | 解锁后切换地图的条件参数 每一个特殊处理 不填：没有条件，解锁后就可以切换地图 1：是否已加入公会，未加入时地图上选中公会驻地图标 |
| cr | String | `icon` | 地图标识 |
| cs | float[] | `rect` | 地图范围（X1min,X2max,Y1min,Y2max） 单位：米 |
| c | float | `radius` | 小地图半径 |
| c | float[] | `zoomRange` | 大地图放大倍数范围 |
| c | float | `zoom` | 大地图首次打开倍数 |
| c | boolean | `openFog` | 是否开启迷雾 True 是 False 否 |
| cr | String | `miniMapImg` | 小地图图片资源 |
| cr | String | `bigMapImg` | 大地图图原画资源  |
| cr | String | `areaFrameMaskImg` | 大地图一级区域边界线 |
| cr | String | `subAreaFrameMaskImg` | 二级区域内部边界线 |
| cr | String | `mainAreaMaskImg` | 一级区域的Mask图 一级区域灰度图 |
| cr | String | `areaMaskImg` | 大地图区域的Mask图 二级区域灰度图 |
| cs | String | `subAreaAlphaMask` | 大地图区域的Mask缩略图 注意跟其他的资源配置格式不一样 缩成128*128效果是OK的 |
| c | int | `mainAreaLayer` | 一级区域线层级 MapLayers表sn |
| c | int | `subAreaLayer` | 二级区域线层级 MapLayers表sn |
| c | int | `highSubAreaLayer` | 高亮的二级区域线层级 MapLayers表sn |
| c | int | `subAreaProgressLayer` | 二级区域进度层级 MapLayers表sn |
| c | int | `subAreaNameLayer` | 二级区域名称层级 MapLayers表sn |
| c | float | `multiZoomFactor` | 地图比例尺大于等于此值时，才显示多人区域边界线图 |

**地图图标类型|MapIconType**（36条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | SN (与枚举EMapIconType对应) |
| c | Text | `Name` | 父类名字 筛选标题上和探索界面中显示 |
| c | int | `Parentclass` | 父类筛选归属 默认不配为0 归一类 |
| c | int | `edgeDistance` | 玩家与图标的距离小于此距离时显示在边缘 |
| c | int | `NodeType` | 大地图图标节点类型 0：Slot_Marker_Default 1：Slot_Marker_Head 2：Slot_Marker_Custom 3：Slot_M... |
| cr | String[] | `Picture` | 当前类型的图片合集 单状态：一个图标 多状态：多个图标(每行自定义规则) |
| c | int[] | `PictureSmallMapSize` | 图标在小地图上的大小 |
| c | int[] | `PictureBigMapSize` | 图标在大地图上的大小 |
| c | int[] | `MapLogoScale` | 图标最小、最大比例下缩放 |
| c | Boolean | `VisibleUnknown` | 地图有迷雾是否显示 |
| c | int | `MapLayer` | 图标在地图哪个缩放层级显示 世界地图要统一规划 |
| c | Boolean | `KeepTracking` | 切换场景时是否保留追踪状态（false时取消追踪） |
| c | int | `TrackingFlagSort` | 追踪中是否显示标记在地图列表位置，值越大优先级越高（0=不显示标记） |
| c | int | `Subclass` | 子类排序 默认不配为0 归一类 |
| c | Text | `SubName` | 子类名字 筛选按钮上显示 |

**地图图标黑名单|MapIconBlacklist**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 唯一标识 |
| c | int[] | `iconSns` | 需要屏蔽的MapIconType表Sn集合 |

**地图筛选类型|MapFilterClass**（10条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 父类筛选归属类 |
| c | Text | `Name` | 分类名称 |
| cr | String | `Icon` | 分类图标 |
| c | int | `length` | 长度（像素） |

**地图比例尺层级|MapLayers**（13条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 层数Sn |
| c | float | `minZoomFactor` | 最小缩放系数 |
| c | float | `maxZoomFactor` | 最大缩放系数 |

**地图常见图标点|MapIconCommon**（55条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` |  |
| c | int | `ExplorationSn` |  |
| c | int | `sceneSn` | 场景sn |
| c | int | `mapType` | 地图类型 索引MapIconType页签 |
| c | int | `BlockSn` | 所在区域Blocksn 索引Territory表 （读取区域名字） |
| c | int | `posType` | 位置类型 1=指定位置 2=birthsn |
| c | String | `pos` | 1=所在场景位置 2=birthsn |
| c | Text | `Title` | 详情介绍的标题 |
| c | Text | `Describe` | 详情介绍的内容 |
| c | String | `ShowRewards` | 奖励展示 |
| c | int | `JumpType` | 点击静态图标跳转方式 1=弹窗 2=跳转 |
| c | String | `GUI` | 跳转的界面Lua文件名 索引GUI表 |
| c | int | `GUIParams` | 跳转的界面附带的参数 |
| c | int | `LevelShowBigMap` | 玩家多少级图标在大地图上显示 |

**地图资源|ResourceMapping**（57条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 物品sn |
| cs | int | `unlockCount` | 解锁追踪所需数量 |
| c | int | `sort` | 排序 越大越靠前 |
| c | int | `Type` | 采集分类页签 param表ResourceMappingTypeTab |
| c | int | `BirthTime` | 出现的时间： 0-全天 1-白天 2-夜间 |
| c | int[] | `Output` | 产地来源 SubSceneBlock表sn集合 |
| c | int[] | `TreeActorSns` | 树木中查找Actor表sn集合 |
| c | int[] | `ActorSns` | Actor表sn集合 |
| c | boolean | `notShowOnMap` | 不在大地图资源列表显示 |

**地图初始复活点|MapIconRevive**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `mapIconCommon` | 地图Icon 索引MapIconCommon页签 |
| cs | int | `BlockSn` | 所在区域Blocksn 索引Territory表 （读取区域名字） |
| cs | float[] | `revivePos` | 复活点位置 |
| cs | float[] | `reviveDir` | 复活点朝向 |

**地图传送点|MapIconTeleport**（48条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `mapIconCommon` | 地图Icon 索引MapIconCommon页签 |
| cs | int | `BlockSn` | 坐标所属区域 SceneBlock表sn GM查询getsubsceneblocksnbypos 坐标 |
| cs | int | `BirthActorSn` | 对应传送点Actor BirthSn |
| cs | float[] | `targetPos` | 传送目标位置 |
| cs | float[] | `targetDir` | 传送目标朝向 |
| cs | int | `dropGroupSn` | 解锁传送成功获取奖励 |
| c | int | `RewardViewSn` | 显示获得奖励 Rewardview表Sn |

**帕鲁训练家地图标点|MapPalTrainer**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` |  |
| c | int | `sceneSn` | 场景sn |
| c | int | `mapType` | 地图类型 索引MapIconType页签 |
| c | int | `BlockSn` | 所在区域Blocksn 索引Territory表（读取区域名字） |
| c | Text | `Title` | 详情介绍的标题 |
| cr | String | `HeadIcon` | 展示图标 |
| c | int | `TrainerSN` | 映射PalTrainerSN |

**地图村落|MapCampsite**（21条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `areaSn` | 区域sn |
| c | int | `mapType` | 地图类型 索引|MapIconType页签 |
| c | Text | `campName` | 村落名称 |
| cr | String | `picture` | 图片 |
| cr | String | `areaImg` | 大地图上显示的区域范围图 |
| c | Location | `areaPosition` | 范围图显示的位置 |
| c | Text | `desc` | 描述 |

**地图村落点位|MapCampsitePoint**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `campSn` | 村落sn |
| c | Text | `name` | 点位名称 |
| c | int | `Parentclass` | 父类筛选归属 默认不配为0 归一类 |
| cs | int | `posType` | 追踪位置类型 1=birthsn 2=坐标 |
| cs | String | `posParams` | 追踪位置参数 |
| c | int | `mapType` | 地图类型 索引|MapIconType页签 |
| cr | String | `icon` | 点位图标 |
| cr | String | `picture` | 背景图 |
| c | Text | `desc` | 点位描述 |
| c | int | `showItem` | 展示道具 |
| c | Text | `showTitle` | 展示标题 |
| c | int | `weight` | 排序权重 |

**地图星级战图标点|MapIconStartChalleng**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` |  |
| c | int | `ExplorationSn` |  |
| c | int | `sceneSn` | 场景sn |
| c | int | `mapType` | 地图类型 索引MapIconType页签 |
| c | int | `BlockSn` | 所在区域Blocksn 索引Territory表（读取区域名字） |
| c | Text | `Title` | 详情介绍的标题 |
| c | Text | `Describe` | 详情介绍的内容 |
| c | String | `ShowRewards` | 奖励展示 |
| c | int | `JumpType` | 点击静态图标跳转方式 1=弹窗 2=跳转 |
| c | String | `GUI` | 跳转的界面Lua文件名，索引GUI表 |
| c | int | `GUIParams` | 跳转的界面附带的参数 |

**地图载具俱乐部|MapIconVehicleClub**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` |  |
| c | int | `sceneSn` | 场景sn |
| c | int | `mapType` | 地图类型 索引MapIconType页签 |
| c | int | `BlockSn` | 所在区域Blocksn 索引Territory表（读取区域名字） |
| c | Text | `Title` | 详情介绍的标题 |
| c | Text | `Describe` | 详情介绍的内容 |
| c | String | `ShowRewards` | 奖励展示 |

**地图机关图标点|MapIconGear**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 索引机关类型（机关的birthSn） |
| c | int | `ExplorationSn` | 探索Sn（索引Exploration表ID） |
| ci | int | `sceneSn` | 场景sn |
| c | int | `BlockSn` | 所在区域Blocksn 索引Territory表（读取区域名字） |
| c | int | `mapType` | 地图类型 索引MapIconType页签 |
| c | int | `posType` | 位置类型（1=指定位置：需要配置pos，2=birthsn位置，这里二就直接用sn就行，不用填写pos） |
| c | String | `pos` | 所在场景位置 |
| c | Text | `Title` | 详情介绍的标题 |
| c | Text | `Describe` | 详情介绍的内容 |
| c | String | `ShowRewards` | 奖励展示 |
| c | int | `JumpType` | 点击静态图标跳转方式 1=弹窗 2=跳转 |
| c | String | `GUI` | 跳转的界面Lua文件名，索引GUI表 |
| c | int | `GUIParams` | 跳转的界面附带的参数 |
| c | Boolean | `Visible` | 是否受可见性影响，不填默认不受影响  TRUE：对应的birth的actor不可见，地图不显示 FALSE：不受bitrth的actor状态影响地图都显示 |

**地图区域图标|MapAreaIcon**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| ci | int | `sceneSn` | 场景sn |
| c | int | `areaSn` | 区域表sn(所有需要在小地图上显示的区域sn) |

### Navigation.xlsx

**跨场景导航|Navigation**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 场景sn |
| c | int | `enterBirthSN` | 从216进入该场景的传送门Birthsn 216是起始点 NPCfunc类型请使用带传送功能的15或16 |
| c | int | `exitBirthSN` | 从该场景离开回到216的Birthsn 216是终点或中转点 NPCfunc类型请使用带传送功能的15或16 |
| c | int[] | `goToOtherSceneSN` | 其他场景sn 目的地 |
| c | int[] | `goToOtherSceneBirthSN` | 从该场景前往其他场景的birthsn NPCfunc类型请使用带传送功能的15或16 目的地 |

### PatrolPath.xlsx

**巡逻路径总表（自动生成）|PatrolPath**（112条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| s | int | `sceneSn` | 场景sn |
| e | String | `desc` | 备注 |
| e | String | `fileName` | 所属文件名 |
| s | int | `patrolType` | 巡逻类型 1: 往返 2: 环形 3: 车道入口 |
| cs | String | `nodes` | 路径节点位置 每个节点格式为x,y,z 节点之间以|分隔 |
| s | float | `speed` | 移动速度 单位: 米/秒 |
| s | boolean | `fly` | 是否飞行寻路 |
| s | int | `times` | 循环次数 0=无限次 |
| s | int[] | `nodesAttr` | 节点属性 |

**巡逻节点总表（自动生成）|PatrolNode**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| e | String | `fileName` | 所属文件名 |
| s | int[] | `actionSN` | 动作链sn |
| s | float | `waitTime` | 前往下个节点前动作执行完等待时间 单位：秒 |
| S | float | `overrideSpeed` | 覆盖移动速度 单位：米/秒 |
| s | boolean | `pickupWeapon` | 走到该节点时 是否拿起武器 |
| s | boolean | `leaveRoad` | 是否离开车道 |

**巡逻动作总表（自动生成）|PatrolAction**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | sn |
| e | String | `fileName` | 所属文件名 |
| s | boolean | `isWaitForFinish` | 是否等待动作执行完毕 TRUE: 执行完毕执行下个动作 FALSE: 直接执行下个动作 |
| s | float | `waitTime` | 执行下个动作前 等待时间 单位：秒 |
| s | int | `actionType` | 动作类型 1：播放音频 2：转身 3：播放蒙太奇 4：找到椅子坐下 |
| sr | String | `assetName` | 相关资源名称 类型1：音频文件名 类型3：蒙太奇资源名 |
| s | float | `turnAngle` | 转身的角度 （-180，180） |
| s | float | `turnRate` | 转身速率 |
| s | int | `playTimes` | 最多执行次数 （默认无限制次数） |
| s | int | `findChairDistance` | 寻找椅子的范围 单位：米 |

### PolygonArea.xlsx

**多边形区域|PolygonArea**（11条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 区域SN |
| cs | int | `priority` | 区域重叠时，重叠部分归属于优先级高的区域,数值越大则优先级越高,最小值为0 |
| cs | int | `order` | 情报功能中的排序 值越小越靠前 |

### Scene.xlsx

**场景|Scene**（108条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 场景ID |
| cs | int | `sceneRes` | 场景资源SN |
| cs | Text | `name` | 场景名称 |
| cs | String | `desc` | 备注信息 |
| cs | int | `mapSn` | 大地图ID |
| cs | int | `worldSn` | 所属world 非必要勿配置 |
| cs | int[] | `cell_size` | 二十五宫格单元大小 |
| s | int | `replicate_culldist` | 地图ACTOR 同步剔除距离 缩放比例 -1:不剔除(慎重!!) |
| cs | boolean | `battle_ownership` | 分线是否优先进入自己战区分线 （默认不分战区） |
| cs | int | `scene_type` | 场景类型 0=主城【默认】 1=野外【无意义】 2=位面 3=副本 |
| cs | int | `subType` | 场景子类型 scene_type=3时，1=多人副本场景 2 = PvP场景 scene_type=0时 1=帮派类场景 2=家园场景 3=据点 |
| cs | int[] | `multiLineData` | 玩家分线数据，普通场景都生效，副本场景前两个字段不生效 （最低分线数 分线删除平均人数 分线新增平均人数 分线人数上线） |
| cs | int[] | `multiLineDataLogicLowConfig` | 玩家分线数据（逻辑低配，并不是DS本身高低配），普通场景都生效，副本场景前两个字段不生效 （最低分线数 分线删除平均人数 分线新增平均人数 分线人数上线） |
| cs | int | `enterTimeLimitSec` | 场景进入时间限制（单位秒），超出时间不能再次被新玩家进入，0表示不限制 （组队进入不受到该限制） |
| cs | int[] | `scene_func` | 场景中对各个功能的限制（标红确认可以生效，其他使用前先自测） 参数1：0不可骑乘，1可以骑乘 参数2：0不可聊天，1可以聊天 参数3：0组队功能受限，1允许组队... |
| cs | float[] | `enter_point` | 场景入口1   场景出生点1【默认】  如果场景类型是2，则必须跟大世界进入位置的坐标保持一致 |
| cs | int | `trans_type` | 切换场景 表现类型  |
| cs | float | `enter_point_range` | 随机范围1  【默认】 场景出生点 |
| cs | float | `enter_point_direction` | 出生后人物朝向1   (0-359) |
| c | float | `enter_point_camere_distance` | 镜头距离1   规则调整 |
| c | float[] | `enter_point_camera_rotation` | 入口点相对于玩家的旋转  规则调整 |
| cs | float[] | `enter_point2` | 副本入口点位置2 （场景出生点） |
| cs | float | `enter_point_range2` | 随机出生范围2 （场景出生点） |
| cs | float | `enter_point_direction2` | 出生后人物朝向2 (0-359) |
| cs | int | `areaId` | 区域，配合后边的warningType |
| cs | int | `warningType` | 离开区域警告类型 |
| cs | int | `warningStr` | 离开区域警告str 如果不配，走默认str 注意：str的格式需要与默认str相同 |
| cs | float[] | `warningParam` | 离开区域警告参数 |
| c | float | `enter_point_camere_distance2` | 入口点镜头的距离 |
| c | float[] | `enter_point_camera_rotation2` | 入口点旋转 |
| c | boolean | `showLoading` | 是否显示Loading界面，如果配成true，会强制显示，false会走位面、副本、区域场景的显隐逻辑 |
| c | int[] | `loadingSNs` | 进入场景定制loading，不配走通用   loading表SN，逗号隔开 |
| c | int[] | `ExitloadingSNs` | 退出场景定制loading，不配走通用   loading表SN，逗号隔开 （进入优先级＞退出） |
| c | int[] | `Loadingtype` | 进场景loadingtype，出场景loadingtype 0=在数组中随机，点击屏幕支持切换文字 1=固定，背景，人物，文字都固定，不支持点击切换文字 |
| c | int | `loadingDOF` | 切场后景深效果   DOFParam表SN |
| s | boolean | `enterResetHumanState` | 是否要在进入场景时重置玩家状态（清除绝技CD，自身血量回满，宠物全部复活，血量回满） |
| s | boolean | `leaveResetHumanState` | 是否要在离开场景时重置玩家状态（清除绝技CD，自身血量回满，宠物全部复活，血量回满） |
| s | int | `dropExistTime` | 掉落物存在时间 |
| s | String | `extName` | 场景扩展显示名称 1、红装掉落广播，此部分有数据替换默认name显示 |
| c | int[] | `headScaleDistance` | 用于头顶缩放的最大最小距离配置 |
| s | boolean | `teamFollowCaptainLeave` | 队伍跟随队长离开场景 |
| s | boolean | `canSummonPet` | 是否可以召唤宠物（字段已进表，业务侧暂无有效分支） |
| s | int[] | `teamRobotSns` | 本场景中的组队机器人sn列表(引至Monster表） |
| s | int | `version` | 版本标识 0=debug版本； 1=realse正式版本； |
| cs | float | `width` | 地图边界参数x |
| cs | float | `height` | 地图边界参数y |
| s | boolean | `canNotBeWanted` | 是否不能被触发通缉（false是可以被通缉，true是不能被通缉） |
| s | boolean | `canFollowWanted` | 进入该场景是否清除已有通缉状态（true清除，false不清除） |
| s | boolean | `canClearWanted` | 离开场景时是否清除已有通缉状态（true清除，flase不清除） |
| cs | int | `pvpType` | 默认pvp类型 优先级低于玩法 0=禁止PVP 1=允许PVP |
| cs | boolean | `canVehicleShow` | 是否可以显示车流 |
| cs | boolean | `canPasserShow` | 是否可以显示人流 |
| cs | int[] | `fightReset` | 【进入】此场景时，是否重置战斗相关数据 参数1：0不重置CD，1重置CD 参数2：0不重置耐力，1重置耐力 参数3：0不重置血量，1重置血量 参数4：0不恢复绿... |
| cs | float[] | `fallDamageArgs` | 此场景中坠落伤害计算参数(玩家) 参数1：落地翻滚速度阈值（第一档,cm/s） 参数2：落地轻伤速度阈值（第二档,cm/s） 参数3：落地重伤速度阈值（第三档,... |
| cs | float[] | `fallDamageArgsMonster` | 此场景中坠落伤害计算参数(怪物) 参数1：落地轻伤速度阈值（第二档,cm/s） 参数2：落地重伤速度阈值（第三档,cm/s） 参数3：坠落伤害系数 |
| cs | int | `DyingSn` | 濒死配置Sn |
| cs | int | `revivePkTime` | 复活后增加守护时间（单位秒） |
| cs | boolean | `useSmoothSync` | 载具移动是否以本地客户端为主 |
| cs | int | `weatherControlSN` | 天气控制配置 索引Weather|WeatherControl 所有时间&天气配置都在这里 |
| cs | int | `dayNightStartTimeSlot` | 昼夜系统起始时间段，可配置SN:1-8， 具体见weather表。不填则为不指定 1:Dawn  2:Morning 3:Noon  4:AfterNoon 5... |
| cs | boolean | `dayNightTickClose` | 关闭时间流逝 |
| cs | float | `dayNightChangeTime` | 昼夜效果过渡时间（s |
| c | float[] | `showPlayerHeadUpNameDis` | 不同场景玩家的名称的显示距离 单位M 第一个敌方的 第二个其他（中立和友方） |
| c | float[] | `showPlayerBloodDis` | 不同场景玩家的血条的显示距离 单位M 第一个敌方的 第二个其他（中立和友方） |
| c | boolean | `isShowPKIcon` | 不同场景玩家的头顶的PK模式Icon 是否显示 默认true |
| s | boolean | `showPVPHint` | 该场景是否显示PVP提示信息，默认为false |
| cs | int | `ShowPlayerType` | 在地图上显示玩家的类型（ 1=全员分阵容显示（友善、敌方、倒地玩家） 2=只显示友善玩家（含倒地玩家标识） 3=玩法自由控制 |
| cs | int | `reviveSn` | 复活表sn |
| cs | int | `SpectatorType` | 观战类型0=默认1=碰碰车2=多人PVP 3=夺金玩法 4=通用组队 5=团队赛车  6=个人死斗 |
| cs | int | `balanceAttrSn` | 公平属性SN （0表示不使用公平属性） |
| cs | int | `activityBagSn` | 活动背包 ActivityBag表sn |
| s | boolean | `noSavePosition` | 玩家主动离开场景时存储位置， true：不存储  false：存储 |
| c | boolean | `disableJump` | 禁止跳跃 |
| c | boolean | `disableSprint` | 禁止疾跑 |
| cs | boolean | `openWorldSpeak` | 是否开启世界语音聊天 |
| cs | boolean | `notInterruptMtachSceneBefore` | 进入场景不会中断当前的匹配，True不会中断当前匹配，不填默认False会中断当前的匹配 （规划主城野外、据点、家园不打断匹配） |
| cs | boolean | `showMatchUISceneAfter` | 进入场景后，是否显示正在匹配的UI，需要显示填True，默认为隐藏False |
| c | boolean | `Changeworld` | 是否显示216大世界地图按钮 |
| c | Text | `IndoorsName` | 室内地图切换名字 |
| cr | String | `IndoorsIcon` | 室内地图切换图标 |
| cs | int[] | `SmoothSwitch` | 长度4的int数组，下标0=主城→主城 1=主城→副本 2=副本→主城 3=副本→副本；0=不平滑（不继承坐标）>0=平滑（继承坐标） |
| cs | int | `PictureQuality` | 切换画质类型 0=不变化（当前Lua仅作二值语义：0/非0） 1=提高帧率降低后效 2=提高帧率降低后效 3=不提高帧率，降低画质和使用减模 |
| csr | String[] | `SceneElementDTs` | 场景内元件的数据表格 （新的列，老列先不删除，防止报错） |
| cs | int | `teamDynamicAttrId` | 组队副本动态难度属性groupID 引至MonsterAttrs表的TeamDynamicAttrs页签 |
| c | Text | `enterOtherQuilityTips` | 被邀请键入其他玩家资产时，确认进入时提示信息 |
| c | boolean | `HideSmallMap` | 隐藏小地图 |
| c | boolean | `CareLevelLoadOnVehicle` | 开始时关心地块加载 |
| c | String | `PVPSoundModeState` | 场景脚步声预设方案（弃用） 用于PVP场景调整脚步声 |
| CS | int | `scene_use_type` | 场景使用类型 1=大世界 2=PVE 3=PVP 4=派对 |
| c | boolean | `showWaterRipple` | 是否显示水波纹，当短距离切场景时，如果配置成true，会显示水波纹， |
| cs | boolean | `StopPalSaveData` | 是否关闭帕鲁数据存盘 |
| cs | boolean | `DisablePalSummon` | 禁止召唤队伍帕鲁 |
| cs | boolean | `SafeFromEnv` | 不受环境影响 |
| cs | int[] | `HeadupShow` | 是否显示血条（当前客户端头顶规则以HeadupShowSn+UIHeadUpShow为准，此字段未被引用） |
| cr | String | `CoverCameraDT` | 覆盖默认镜头DT |
| c | int | `HeadupShowSn` | 头顶血条规则 索引UIHeadUpShow |
| c | float[] | `Weather` | 固定天气，当此字段生效时时间流转会停止 [天气id,过渡时间] |
| c | int | `rainModelSn` | 下雨模板（临时版本） |
| c | boolean | `showDeadIcon` | 是否显示死亡标记 |

**场景资源|SceneRes**（77条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 场景资源SN |
| cs | String | `mapRes` | 场景资源名 |
| cs | boolean | `ignoreInLinux` | linux下忽略池化（只在Windows下测试用填true） |
| cs | int | `configuration` | 资源配置1=低；2=中；3=高；0=不区分低中高配置，用于实现高低配ds |
| cs | int[] | `resConfigList` | 低配资源sn 只有不配、配3个、配6个三种配法 配置时，必须按照低、中、高的顺序配置； |
| cs | boolean | `standalone` | 是否允许单机优先场景 用于mapRes相同是 启动单机设置resSN |
| c | boolean | `useTile` | 场景资源是否是分块加载 |
| cs | int[] | `blockSn` | 包含的所有地块的SN 也会按Block加载Level(block有值忽略areaid) |
| cs | int | `areaId` | 区域 地块会按区域加载Level |
|  | float | `agentrRadius` | 位面导航代理半径 |
|  | float | `maxStep` | 位面导航台阶高度 |
| s | float[] | `xRange` | 坐标x的范围 注意和MAP表配置相同，这里服务器在用 |
| s | float[] | `yRange` | 坐标y的范围 注意和MAP表配置相同，这里服务器在用 |
| c | float[] | `minimap_param` | 小地图参数 地图对应的xy坐标范围与小地图的显示半径和上车后的显示半径 （X1min,X2max,Y1min,Y2max） 注意和MAP表配置相同，这里c++在... |
| cr | String | `bigMapImg` | 大地图图片资源 注意和MAP表配置相同，这里c++在用 |
| cr | String | `AreaFrameMaskImg` | 大地图一级区域边界线 注意和MAP表配置相同，这里c++在用  |
| cs | float[] | `bigmap_param` | 大地图参数 xy的范围及放大倍数的范围 和初始放大倍数 （X1min,X2max,Y1min,Y2max） 注意和MAP表配置相同，这里c++在用 |
| s | String[] | `lineVehicleNumMax` | 载具数量上线 (数组：星级，人均载具上限) |
| cs | String[] | `HideActorTags` | 需要隐藏Actor的Tag |
| cs | int | `SubLevelLoadOptimize` | 0：正常加载和卸载 1：停止刷新大世界（用于快速进出副本） 2：卸载大世界场景（用于10min以上时间较长的副本，且不需要大世界当背景） 3：只加载大世界低模(... |
| cs | boolean | `DisableLoadLevel` | 当玩家只在Muanl的场景里活动并且看不到外面的大世界时设置成true，卸载大世界里的切块 |
| s | boolean | `DisableGlobalLevel` | 当玩家只在Muanl的场景里活动 卸载Spline、Road等全局地块 |
| cs | String | `unloadLevels` | 卸载场景的Level (不带扩展名，多个用逗号间隔) |
| cs | String | `additionalLevels` | 额外附加的Level (不带扩展名，多个用逗号间隔) |
| s | int | `dsMaxTickRate` | DS帧率 不配默认20 |
| cs | int[] | `tempBlock` | 温度分区 |
| cs | String[] | `preloadRes` | 本场景逻辑上需要预加载的资源 |
| cs | boolean | `lowConfiguration` | 是否是低配资源 用于实现高低配ds |
| cs | int | `lowConfigResSn` | 低配资源SN |

**世界|World**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 世界ID |
| cs | String | `name` | 世界名称 |
| s | float[] | `xRange` | 坐标x的范围 注意和MAP表配置相同，这里服务器在用 |
| s | float[] | `yRange` | 坐标y的范围 注意和MAP表配置相同，这里服务器在用 |
| c | float[] | `minimap_param` | 小地图参数 地图对应的xy坐标范围，小地图的显示半径，上车后的显示半径 （X1min,X2max,Y1min,Y2max,半径1,半径2） 注意和MAP表配置相... |
| c | float[] | `bigmap_param` | 大地图参数 xy的范围，放大倍数的范围， ，初始放大倍数 （X1min,X2max,Y1min,Y2max,倍数min,倍数max,倍数首次） 注意和MAP表配... |

**濒死配置|Dying**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `DyingCount` | 濒死次数（0无濒死） |
| cs | int | `LoseHp` | 基础掉血万分比 |
| cs | int | `ContinuousDyingTime` | 连续濒死时间（s） |
| cs | int | `ContinuousDyingMultiply` | 连续濒死惩罚万分比(1+nx) |
| cs | int | `DyingHpPercent` | 倒地继承血量万分比 |
| cs | int | `RescueTime` | 救援时间（s） |
| cs | int | `RescueDistance` | 救援距离（米） |
| cs | int | `RescueRecoverHpPercent` | 救援复活血量万分比 |
| cs | boolean | `TeamRescueMode` | 是否为队伍救援 |

**场景复活表|SceneRevive**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 复活sn |
| cs | int | `viewType` | 界面类型 1=通用复活界面 2=观战界面 3=表示直接复活 |
| c | int | `reviveType` | 复活类型 1=打开大地图选复活点 2=直接就近复活 |
| cs | int | `reviveCount` | 可复活次数 -1表示无复活次数限制 |
| cs | int | `reviveCD` | 死亡后多少秒内 不能复活 |
| cs | int | `autoReviveTime` | 自动复活时间 单位秒 -1=不能自动复活 0=立即自动复活 |
| s | int | `forceReviveTime` | 服务器死亡后强制复活时间 （从死亡的时候算起，最小等于autoReviveTime+三个镜头的时间），防止客户端界面出现问题 -1表示不复活 (单位秒) |
| cs | int[] | `revivePointType` | 复活位置类型 1=初始位置 2=已解锁传送点 3=据点终端 |
| cs | boolean | `showGoBack` | 是否显示回城复活 |
| c | Text | `dontReviveShowText` | 无法复活显示文本 |
| cs | boolean | `showKillShot` | 是否显示击杀者 镜头 |
| cs | boolean | `showKillInfo` | 是否显示击杀者 信息 |
| c | float[] | `showKillTime` | 击杀者镜头时间 第一镜头持续时间，镜头切换时间，切回主角时间 |
| cs | int | `showLoadingDis` | 显示Loading界面距离 单位厘米 |
| cs | boolean | `doubleClickRevive` | 双击全屏界面复活 |

**场景复活配置|SceneRevivePos**（19条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| csi | int | `sceneSn` | 场景SN |
| e | String | `desc` | 备注 |
| cs | int | `areaSn` | 区域sn(如果玩家在此区域内，优先选择此条) 不填表示没有区域的点后选择这些 |
| cs | float[] | `revivePos` | 复活坐标（单位：米） |
| cs | float | `reviveDir` | 复活方向 |

**场景时间|SceneTime**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| s | String | `startTime` | 起始时间（yyyy-MM-dd HH:mm:ss） |
| s | int | `timeSpeed` | 倍速 |
| s | String | `timePoint` | 时间点（小时,过渡时长秒数;小时,过渡时长秒数） |
| s | String | `skybox` | 天空盒（1001,1002） |

**场景任务安排表|SceneSchedule**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 唯一标识 |
| si | int | `sceneSn` | 场景sn |
| s | String | `beginTime` | 开始时间 TimeType=1：则填入时分(二十四小时制）(HH:mm) TimeType=2：则填入毫秒 |
| s | String | `endTime` | 同开始时间 |
| s | int | `beginTypeFunc` | 开始功能类型 1=刷怪 2=新增场景AI 3=删除怪物 4=改变怪物单元AI 5=移除场景AI |
| s | String | `beginParam` | 功能参数String 1=birthSn（需要刷出怪的birthSn） 2= aiSn（场景AISn） 3=birthSn（需要删除怪的birthSn） 4=b... |
| s | int | `endTypeFun` | 同开始功能类型 |
| s | String | `endParam` | 同结束功能类型 |

### SceneBlock.xlsx

**声音地块|SoundBlock**（8条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 地块SN |
| c | String | `blockName` | 地块备注名称 |
| cs | int | `sceneRes` | 场景资源SN |
| cs | float[] | `border` | 边界 |

**温度地块|TempBlock**（8条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 地块SN |
| c | String | `blockName` | 地块备注名称 |
| cs | int | `sceneRes` | 场景资源SN |
| cs | float[] | `border` | 边界 |
| cs | int | `basicDayTemp` | 白天基础挡位 |
| cs | int | `basicNightTemp` | 夜晚基础挡位 |

**一级区域|SceneBlock**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 地块SN |
| c | Text | `blockName` | 地块备注名称 |
| cs | int | `sceneRes` | 场景资源SN |
| cs | float[] | `border` | 边界 此列必须是D列 |
| c | float[] | `mapContent` | 名称地图坐标 |
| cs | int | `mapSn` | 地图ID |
| cr | String | `displayPic` | 解锁展示图片 |
| cs | int | `unlockRequiredLevel` | 解锁等级 边界999 |
| cs | int | `unlockRequiredTowerBoss` | 解锁需要通关高塔副本 |
| cs | float | `areaMaskValue` | 区域灰度值 边界0.999 |
| cs | int | `StatueActorSn` | 收集类雕像SN |
| cs | int | `shopSn` | 解锁汪汪商店sn |

**二级区域|SubSceneBlock**（20条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 子区域sn |
| csi | int | `subordinate` | 一级区域 从属 |
| c | Text | `subBlockName` | 子区域名称 |
| c | Text | `subBlockDesc` | 区域描述 |
| c | int | `minLevel` | 最小推荐等级 |
| c | int | `maxLevel` | 最大推荐等级 |
| cr | String | `displayPic` | 区域展示图片 |
| cs | int[] | `palCollectionList` | 帕鲁收集列表 (Pet表sn) |
| cs | int[] | `palCollectionProgress` | 帕鲁收集进度 |
| cs | int[] | `palCollectionReward` | 帕鲁收集奖励 |
| c | Location | `areaMapCtenter` | 区域名字显示坐标 地图选中准星坐标 |
| cs | float | `areaMaskValue` | 区域灰度值 |
| cr | String | `OutlineTexture` |  区域的边框图 |
| c | float[] | `coordinate` | 区域边框图坐标 (左上角) |
| c | float[] | `OutlineTextureScale` | 区域边框图的缩放 |
| c | float[] | `OutlineTextureOffset` | 区域边框图的偏移 |
| c | boolean | `bCannotArrive` | 是否不可到达 |

**禁空区域|NoFlyZone**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 禁空区域SN |
| cs | int | `unlockType` | 解锁途径 |
| cs | int[] | `unlockParam` | 解锁参数 |
| cs | int[] | `areaSns` | 包含区域SNs(关联Area表) |
| cs | int[] | `flyRestrictedLevel` | 禁空等级 |
| c | Location | `mapIconPos` | 地图图标显示位置 |

### SceneLayerMapping.xlsx

**地形层映射|SceneLayerMapping**（11条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 地形层意义sn |
| c | String | `desc` | 地形层意义描述 |
| c | int | `Map_03_LaLuna_main` | 03地形对应的层序号 |
| c | int | `Map_04_XXX` | 04地形对应的层序号 |

### SceneOpt.xlsx

**场景优化选项|SceneOpt**（34条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 场景ID （旧ID<1000)旧场景ID保持不变 800-1000测试场景，仍可使用 (新ID=ABCDE) AB=功能分类   CDE=地图实例ID AB=1... |
| c | boolean | `bShowDynamicShadow` | 当前场景是否显示动态阴影 |
| c | int | `MinLodOffset` | 当前场景玩家和机器人的Lod偏移 |

### Taxi.xlsx

**出租车乘客|TaxiPassager**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int | `professionPlaySN` | 对应的环任务配置SN |
| cs | int | `difficulty` | 难度： 1：普通 2：中等 3：困难 |
| cs | int | `type` | 类型： 1.普通（无） 2.酒鬼（逆行奖励） 3.记者（通过区域奖励） 4.乘机人（速度奖励） 5.老人(漂移惩罚) |
| s | int | `dropSn` | 乘客掉落组 |
| cs | String | `param` | 1.无 2.逆行秒数 3.通过指定areasn，逗号分割 4.保持速度和秒数 5.无 |
| cs | int | `tipAdd` | 触发特殊操作时，处理的满意度 |
| cs | int | `actorBirthSN` | 乘客出生配置 |
| cs | int | `getOnAreaSN` | 上车区域 |
| cs | int | `destPosBirthSN` | 目的地配置 |
| cs | int | `getOffAreaSN` | 下车区域 |
| cr | String | `traceNia` | 场景指引点特效 |
| cr | String | `traceIcon` | 场景指引点Icon |
| s | int | `basicCost` | 基础运费 |
| s | int | `extraCost` | 小费 |
| s | int | `exp` | 获得经验 |
| c | Text | `description` | 描述 |
| c | int | `triggerSn` | 特殊乘客上车时的VisualCommunication |

**出租车等级配置|TaxiLevel**（20条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | 等级 |
| s | int | `weight1` | 普通乘客随机权重 |
| s | int | `weight2` | 酒鬼随机权重 |
| s | int | `weight3` | 记者随机权重 |
| s | int | `weight4` | 乘机人随机权重 |
| s | int | `weight5` | 老人随机权重 |

**出租车评价提示|TaxiReasonTip**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 评价改变原因 1.低速行驶 2.撞击 3.老人漂移 101.高速平稳驾驶 102.进入记者要求区域 103.乘机人高速行驶 104.酒鬼逆行 |
| c | boolean | `good` | true：好评价 false：坏评价 |
| c | int[] | `strIds` | 酒鬼随机权重 |
| c | String | `eventName` | 音效 |

**乘客类型|TaxiPassagerType**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 类型： 1.普通（无） 2.酒鬼（逆行奖励） 3.记者（通过区域奖励） 4.乘机人（速度奖励） 5.老人(漂移惩罚) |
| c | int[] | `impactTrigger` | 碰撞语音，随机播放 |

### Transfer.xlsx

**传送功能|Transfer**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 传送点sn |
| cs | int | `sceneSn` | 目标场景sn |
| c | int | `areaSn` | 所在区域sn |
| c | Text | `name` | 传送点的名字 |
| c | Text | `des` | 传送点的描述信息 |
| cs | int | `type` | 传送点类型  1=传送锚点 2=七天神像 3=据点 |
| cs | int | `mapType` | 对应世界地图类型  2=传送锚点 3=七天神像 |
| cr | String | `sceneTraceIcon` | 场景追踪对应的图标 |
| c | String | `modelSn` | 模型sn |
| cs | float[] | `pos` | 所在场景位置 |
| cs | float | `direction` | 所在场景中的朝向 |
| cs | float[] | `targetPos` | 传送的目标位置 |
| cs | float | `targetDir` | 传送到目标的朝向 |
| cs | float[] | `regionSn` | 传送点关联的区域sn |
| c | int | `storySn` | 传送点激活播放的剧情Sn |
| cs | boolean | `open` | 是否默认开启开放 |
| s | int | `lockVehicleStation` | 锁定载具召唤装置是否可用状态 （填载具召唤装置的BirthSn） |

### TransferOpen.xlsx

**传送功能开启|TransferOpen**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 传送点sn |
| cs | int | `openType` | 开启传送点的类型 1.完成任务 2.达到等级 |
| cs | int | `openTypeValue` | 开启传送点的值 |
| cs | int | `showTips` | 是否显示传送开启的提示 |