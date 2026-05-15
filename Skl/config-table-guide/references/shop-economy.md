## 商城与经济

### DarkWeb.xlsx

**暗网|DarkWeb**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 暗网sn |
| c | int | `showLoading` | >0则 打开界面前先播放一个转场 1=只播一次 2=每次都播 |
| c | int | `chatRoomSn` | 首次打开时需要弹出聊天室（0不弹） |

**聊天室|ChatRoom**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | int | `Order` | 组内顺序（从1开始，连号不能断，最大是5，扩最大值需要修改UI） |
| c | int | `ChatGroupID` | 聊天组ID（每个功能索引1组） |
| c | Text | `Title` | 聊天室名称（只用配Order=1的） |
| c | Text | `FirstLineText` | 首行提示文本（只有配Order=1的） |
| c | Text | `ChatContent` | 聊天内容（文本和图片互斥，只能播放1个） |
| cr | String | `ChatPicture` | 图标（配了图片就不配文本） |

### Discount.xlsx

**折扣|ShopDiscount**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| s | int[] | `serverAppoint` | 指定服务器id |
| s | int[] | `serverExcept` | 排除服务器id |
| s | int[] | `countryAppoint` | 指定国家sn |
| s | int[] | `countryExcept` | 排除国家sn |
| s | int | `timeType` | 活动时间类型： 1、开服时间 2、自然时间 |
| s | int[] | `startTime0` | 开始时间 开服时间              天,小时,分钟,秒        |
| s | int[] | `finishTime0` | 结束时间 开服时间              天,小时,分钟,秒     |
| s | String | `startTime` | 上架开始时间 自然时间            yyyy-MM-dd HH:mm:ss |
| s | String | `endTime` | 结束时间 自然时间             yyyy-MM-dd HH:mm:ss |
| c | int | `sort` | 次级页签 |
| cr | String | `tabPicture` | 次级页签图片 |
| c | Text | `name` | 活动名称 |
| c | String | `showUI` | 该页签拆分子UI |
| c | int[] | `params` | 传递的参数 |

**周期卡|PeriodicCard**（9条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| cs | Text | `name` | 周期卡名称 |
| cs | int | `type` | 类型 1为周卡 2为月卡，3为返利礼包 4黑卡 |
| s | int[] | `serverAppoint` | 指定服务器id |
| s | int[] | `serverExcept` | 排除服务器id |
| s | int[] | `countryAppoint` | 指定国家sn |
| s | int[] | `countryExcept` | 排除国家sn |
| s | int | `timeType` | 活动时间类型： 1、开服时间 2、自然时间 |
| s | int[] | `startTime0` | 开始时间 开服时间              天,小时,分钟,秒        |
| s | int[] | `finishTime0` | 结束时间 开服时间              天,小时,分钟,秒     |
| s | String | `startTime` | 上架开始时间 自然时间            yyyy-MM-dd HH:mm:ss |
| s | String | `endTime` | 结束时间 自然时间             yyyy-MM-dd HH:mm:ss |
| cr | String | `dealPicture` | 主打图片 |
| cs | int | `showSlot` | 展示的槽位(优先级) |
| cs | int | `validTime` | 可领取奖励天数 |
| cs | String | `InstantReward` | 开卡即时奖励item sn:Num,itemsn:Num |
| cs | String | `RecurringReward` | 循环领取奖励item sn:Num,itemsn:Num |
| cs | int | `maxValidTime` | 最长有效期天数 |
| cs | int | `InstantEquivalentWorth` | 立即获得奖励价值钻石数量 |
| cs | int | `RecurringEquivalentWorth` | 循环奖励等效价值 |
| cs | int | `ExpirationReminderTime` | 到期提醒时间 |
| cs | String | `maxSubscriptionDay` | 最长有效日期(同左列，但用日期控制，填日期格式。二选一，不用此行则留空。) |
| cs | int | `PayType` | 购买类型：0是用货币类型，1是直购 |
| cs | int | `moneyItemSn` | 货币类型 |
| cs | int | `OriginalPrice` | 原价(USD) |
| cs | int | `DiscountPrice` | 折扣价(USD) |
| cs | int | `MoneySN` | 直购时的Money表SN |
| cs | int | `DiscountMoneySN` | 续购时的Money表SN |
| cs | String | `Profit` | 利润率 (展示规则xNvalue，需四舍五入取整） |
| s | int | `bagFullMailSn` | 包满邮件sn |
| s | int | `unclaimMailSn` | 未领取补发邮件sn |
| s | int | `closeMailSn` | 结束时补发邮件sn |
| cs | int | `PrivilegesDescription` | 特权说明SN |
| cs | int[] | `PrivilegesList` | 开通后拥有的特权（暂时只有周月卡拥有） |
| c | int | `helpSn` | 帮助sn |
| c | int | `strId` | 特权说明SN |

**周月卡特权表|CardPrivilegeList**（16条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 特权SN |
| cs | int | `Type` | 特权类型  1是自动驾驶加速  2是增加体力上限 3每日免费黑市刷新次数 4商店会员专属打折商品 5好友数量上限增加 6世界频道聊天cd减少 7每小时采集的物品... |
| cs | float[] | `param` | 参数列表 （类型4的折扣在别的表，这里填一个非0数） |
| c | Text | `Description` | 特权描述 |
| c | String | `DescriptionNum` | 特权描述参数解析数值，仅作为文本描述参数使用 |
| cr | String | `IconName` | 特权图标 |
| c | Text | `DetailDescription` | 特权详细解释 |

**充值奖励|PayReward**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| cs | int | `payAmount` | 充值金额 |
| cs | String | `reward` | 奖励的物品(Item)sn |
| cr | String[] | `rewardPics` | 奖励显示的背景图 |
| cr | String[] | `qualityBgs` | 奖励品质的背景图 |
| cr | String | `bigBgPic` | 背景大图 |
| c | int[] | `flagStr` | Flag文本 |
| cs | boolean | `open` | 是否开启 |
| cr | String | `rechargePic` | 领奖分类大图 |

**终身累充|LifetimeRechargeActivity**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 活动编号 |
| cs | int | `sumType` | 累充:0 累消:1 |
| c | Text | `name` | 活动名字 |
| c | Text | `desc` | 活动文本 |
| c | int | `helpSn` | 帮助按钮 |
| cs | boolean | `open` | 是否开启 |

**终身累充档位|LifetimeRechargeStage**（10条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int | `stage` | 阶段数值 |
| cs | String | `itemSn` | 奖励 |
| c | String | `displayItemSn` | 大奖展示 |
| cs | int | `activity` | 归属活动 |
| c | Text | `desc` | 描述 |
| c | int | `openUI` | 跳转界面 |
| c | int | `unlockStage` | 前置解锁阶段 |

**返利礼包|RebateGift**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| cs | Text | `name` | 周期卡名称 |
| s | boolean | `open` | 是否开启，总开关 |
| s | int[] | `serverAppoint` | 指定服务器id |
| s | int[] | `serverExcept` | 排除服务器id |
| s | int[] | `countryAppoint` | 指定国家sn |
| s | int[] | `countryExcept` | 排除国家sn |
| s | int | `timeType` | 活动时间类型： 1、开服时间 2、自然时间 |
| s | int[] | `startTime0` | 开始时间 开服时间              天,小时,分钟,秒        |
| s | int[] | `finishTime0` | 结束时间 开服时间              天,小时,分钟,秒     |
| s | String | `startTime` | 上架开始时间 自然时间            yyyy-MM-dd HH:mm:ss |
| s | String | `endTime` | 结束时间 自然时间             yyyy-MM-dd HH:mm:ss |
| cr | String | `dealPicture` | 主打图片 |
| cs | int | `showSlot` | 展示的槽位(优先级) |
| cs | int | `validTime` | 可领取奖励天数 |
| cs | String | `InstantReward` | 开卡即时奖励item sn:Num,itemsn:Num |
| cs | String | `RecurringReward` | 循环领取奖励item sn:Num,itemsn:Num |
| cs | int | `maxValidTime` | 最长有效期天数 |
| cs | int | `InstantEquivalentWorth` | 立即获得奖励价值钻石数量 |
| cs | int | `RecurringEquivalentWorth` | 循环奖励等效价值 |
| cs | String | `maxSubscriptionDay` | 最长有效日期(同左列，但用日期控制，填日期格式。二选一，不用此行则留空。) |
| cs | int | `PayType` | 购买类型：0是用货币类型，1是直购 |
| cs | int | `moneyItemSn` | 货币类型 |
| cs | int | `OriginalPrice` | 原价(USD) |
| cs | int | `DiscountPrice` | 折扣价(USD) |
| cs | int | `MoneySN` | 直购时的Money表SN |
| cs | String | `Profit` | 利润率 (展示规则xNvalue，需四舍五入取整） |
| s | int | `bagFullMailSn` | 包满邮件sn |
| s | int | `unclaimMailSn` | 未领取补发邮件sn |
| s | int | `closeMailSn` | 结束时补发邮件sn |
| cs | int | `PrivilegesDescription` | 特权说明SN |

### ExchangeShop.xlsx

**兑换商店类型|ExchangeShopType**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | SN |
| c | Text | `name` | 商店名称 |
| c | int | `currencyModelSn` | 货币栏Sn |
| c | int | `shopDes` | 商店说明页（Help表中的sn） 不配不显示问号按钮 |

**兑换商店物品|ExchangeItems**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int | `exchangeShopType` | 兑换商店类型 |
| cs | String | `itemSn` | 道具SN （如是装备，需用Sn：数量：品质：装等的格式进行配置） |
| cs | int | `moneyType` | 消耗的货币类型 |
| cs | int | `price` | 价格 |
| cs | int | `minimumLevel` | 可购买的最低等级 |
| c | int | `tagType` | 商品标签类型 1:限定 2:返场 3:推荐 |
| c | Text | `tagDesc` | 标签描述 描述一定配底图 标签=描述+底图 |
| cr | String | `tagIcon` | 标签底图 SP_Mark_Limit蓝色 SP_Mark_Return紫色 SP_Mark_Free绿色 SP_Mark_Discount橙色 SP_Mark_... |
| c | Text | `description` | 商品文本描述 配置为空，显示item描述 |
| cs | int | `singleMax` | 单次购买最大上限 |
| cs | int | `limitType` | 限购类型（1:日限购 2:永久限购） |
| cs | int | `limitParam` | 限购数量 |
| c | boolean | `redPoint` | UI红点提示 (该道具可购买，且玩家有足够的货币购买该道具) |

**兑换商店镜头参数|ExchangeShopCamera**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 物品的showType 同item表的配置 |
| c | float[] | `cameraLocation` | 镜头位置(不填则不生效,需要同时填写) (位置单位是m) |
| c | float[] | `cameraRotation` |  |
| c | boolean | `bUseCameraSmooth` | 是否使用相机效果 |
| c | float[] | `actorPos` | 共用一个锚点,不同的类型的物品额外加偏移(位置单位是m)(不填为0,0,0) |
| c | float[] | `CameraPixelOffset` | 资源展示_子页签中心点的额外偏移  摇臂额外长度: X 左: y负 右: y正 上: Z正 下: Z负 |

### MallTrade.xlsx

**可交易物品表|TradeItem**（67条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 物品sn |
| cs | int | `mtype` | 主页签sn |
| cs | int | `stype` | 子页签sn |
| c | int | `sort` | 排序(数越小越靠前，数字相同就按道具sn排） |
| cs | int | `tradeCurrency` | 购买商品时消耗货币类型 |
| cs | int | `saleCurrency` | 出售商品后获得货币类型 |
| cs | int | `chillDown` | 交易冷却时间（小时） |
| cs | boolean | `enterPublicity` | true:进入公示期 false:不进入公示期 |
| cs | int | `publicityTime` | 公示时间（分钟） |
| cs | boolean | `enterHidden` | true:进入隐藏期 false：不进入隐藏期 |
| s | int | `hiddenTime` | 隐藏时间，会在1-x之间随机一个数，单位分钟 |
| cs | int | `commonTime` | 常规出售时间（分钟） |
| cs | int | `priceType` | 价格类型（1.自由定价 2.设置上涨下降百分比） |
| cs | int | `minPrice` | 道具最低价 |
| cs | int | `maxPrice` | 道具最高价 |
| cs | int | `price` | 推荐价格 |
| c | float | `floatRate` | 单次点击上涨下降百分比 |
| cs | float[] | `floatRateRange` | 上涨和下降百分比上限下限 |
| s | int | `systemBuyRemainTime` | 系统回收时间（距离下架还剩多少分钟） |
| s | int | `systemBuyRate` | 系统回收概率 |
| s | boolean | `tradebroadcast` | 上架广播 |
| c | boolean | `oldData` | 是否为老数据 |

**交易目录|TradeCatalogue**（9条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 子页签列表sn |
| c | int | `funcSn` | 解锁的funcSn |
| c | Text | `name` | 子页签名字 |
| c | int | `catalogue` | 所属一级页签 |
| c | Text | `catalogueName` | 一级页签名字 |
| c | int | `sort` | 排序（数越小越靠前） |
| c | boolean | `showOnPublicity` | 是否在公示期页签显示 |

**交易行摊位|TradeStallUnlock**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn，代表摊位数，没有配置的默认开启 |
| cs | int | `price` | 价格 |
| cs | int | `currencySn` | 货币sn |

**摊位费|TradePutOnFee**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | tradeCurrency货币sn |
| cs | int | `fee` | 收取货币1的数量 |

### ProfessionPlay.xlsx

**职业扮演总表|ProfessionPlay**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 任务sn |
| cs | int | `sceneSn` | 场景Sn |
| cs | int | `type` | 类型（1消防2出租） |
| cs | int | `loopCount` | 总环数 |
| c | int | `entryRewardPreview` | 入口奖励预览 |
| cs | int | `difficulty` | 难度等级 |
| c | Text | `difficultyName` | 难度名称 |
| cs | int | `openLevel` | 开启职业等级 |
| cs | int | `strengthCost` | 每环体力消耗 |
| cr | String | `enterViewPic` | 入口界面图片 |
| c | Text | `enterViewDesc` | 入口界面描述 |
| c | Text | `enterViewTitle` | 入口界面标题 |
| c | Text | `enterViewRule` | 入口界面规则 |
| c | Text | `successTitle` | 成功界面标题 |
| c | Text | `successDesc` | 成功界面文本 |
| c | Text | `failedDesc` | 失败界面文本 |

**职业等级|ProfessionPlayLevel**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn公式生成 |
| csi | int | `type` | 职业大类 |
| csi | int | `level` | 职业等级 |
| cs | int | `expNeed` | 每级经验需求 |
| c | Text | `name` | 等级称谓 |
| cr | String | `icon` | 等级图片 |
| cs | float | `rewardMultiply` | 收益倍率 |
| c | Text | `buffDesc` | 增益效果描述 |
| s | int | `levelReward` | 等级奖励(掉落)Sn |
| c | Text | `levelRewardName` | 等级奖励名称 |
| cr | String | `levelRewardPic` | 等级奖励图片 |
| c | int | `rewardPreview` | 奖励预览（只展示第一个） |
| c | Boolean | `showMultiply` | 职业等级是否显示倍率 |
| c | Boolean | `IsBigReward` | 职业等级奖励是否为大奖 |
|  | float | `ParttimeMultiply` | 打工奖励加成（新增） |
|  | int | `ParttimeReward` | 打工奖励Dropsn（新增） |
|  | int | `ParttimeCost` | 打工体力消耗（新增） |

**职业类型|ProfessionPlayType**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| csi | int | `expItemSn` | 经验代币ItemSn |
| c | Text | `name` | 职业名称 |
| c | Text | `fullName` | 职业全称 |
| cr | String | `picture` | 职业立绘 |
| cr | String | `bigIcon` | 单职业界面大图 |
| c | Text | `desc` | 职业描述 |
| cs | int | `funcopen` | 解锁FuncOpen |
| c | Text | `openDesc` | 开启条件描述 |
| c | int | `mapIconSn` | 跳转地图sn |
| c | int | `finalRewardPreview` | 大奖奖励预览 |
| s | int | `finalReward` | 大奖实际奖励 |
| cr | String | `mainQuestLeftIcon` | 任务栏名称的标识 （Icon_Goal2_3） |
| c | Text | `mainQuestLeftTitle` | 任务栏名称 （Txt_Title） |
| c | Text | `startGreenText` | 开启大绿提示文本 |
| cr | String | `startGreenIcon` | 开启大绿提示图标 |
|  | int | `TypeSort` | 职业页签排序 |
|  | int[] | `parttimeFuncOpen` | 打工开启条件 等级要求,职业等级要求 （无要求，数值填0） |
|  | String | `parttimeIcon` | 打工界面图片 |

### RobActivity.xlsx

**抢劫玩法|RobActivity**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 活动的副本场景sn |
| cs | int | `openType` | 开启类型 1=周常 |
| cs | String | `resetTime` | 重置时间 |
| c | Text | `name` | 玩法名称 |
| c | Text | `desc` | 玩法简介 |
| cs | int | `achievementSN` | 跳转到成就子页签 |
| cs | int | `mailSN` | 补发奖励邮件 |
| c | String | `startEffect` | 副本开始效果 |
| cs | int | `dropTimes` | 基础奖励次数 |
| cs | int | `dropAdd` | 奖励累计增加值 |
| cs | int | `dropTimesLimit` | 奖励最大值 |
| cs | int | `randomDropTimes` | 随机奖励次数 |
| cs | int | `randomDropAdd` | 随机任务奖励累计增加值 |
| cs | int | `randomDropTimesLimit` | 随机任务奖励累计最大值 |

**难度|ModeType**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| csi | int | `robActivitySN` | 所属副本sn |
| cs | int | `matchSN` | 对应匹配SN |
| cs | int | `instanceUnitSN` | 关联副本单元Sn |
| csi | int | `modeType` | 难度 |
| cs | Text | `modeName` | 难度名字 |
| c | int | `showIndex` | 列表中显示索引 |
| c | Text | `desc` | 关卡简介 |
| c | Text | `modeDesc` | 难度说明文本 |
| c | Text | `typeName` | 类型名字 |
| cs | int | `type` | 1，团队。2，单人 |
| cs | int | `singleSceneSn` | 单人场景sn |
| cs | int | `levelLimit` | 等级大于等于 |
| cs | int | `scoreLimit` | 装备评分大于等于 |
| cs | int | `dropSN` | 通关奖励 |
| cs | int[] | `randomDropSNs` | 随机任务奖励及展示（特别注意！） |
| cs | int | `dropStorySN` | 结算动画 |
| cs | int | `carBirthSn` | 离开的车的BirthSn |
| cs | int | `finishAreaSn` | 等待离开的AreaSn |
| cs | int | `drillBirthSn` | 开金库的电钻BirthSn |
| cs | int | `giveMoneyGoalSn` | 运送战利品至赃车sn |
| cs | int | `leaveGoalSn` | 撤离目标sn |
| cs | int | `OpenDoorGroupSn` | 撤离时自动开哪些门sn |
| cs | int | `CameraGroupSn` | 设置所有相机阵营sn |
| cs | int | `DrillBackDoorBirthSn` | 开后门的电钻BirthSn |

### Shop.xlsx

**商店列表|ShopList**（8条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 商店SN 已有sn不要动 |
| c | Text | `name` | 商店名称 |
| cr | String | `icon` | 商店标题图标 |
| cs | int | `shopType` | 商店类型 1：通用商店 |
| c | int[] | `shopTagList` | 商店分类页签 |
| c | Text[] | `tagNameList` | 分类页签名称 |
| c | int[] | `topForeverSnList` | 货币栏类型列表 |
| c | String | `shopDes` | 商店说明 与Help表GUISN一致，序号可以自定义 |

**货品表|ShopCommodity**（124条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 商品sn 商店页签sn+001  |
| c | int | `sortWeight` | 显示排序 |
| csi | int | `shopSn` | 商店SN |
| cs | int | `shopTagList` | 所属商店页签 没有不配 |
| cs | String | `itemSn` | 道具SN 装备是Sn：数量：品质：装等 普通道具Sn：数量 |
| cs | int | `moneyType` | 货币类型 |
| cs | int | `price` | 价格数量 |
| c | int | `originalPrice` | 划线价格 纯显示 |
| cs | int | `singleMax` | 单次购买最大上限 |
| cs | int | `limitType` | 限购类型 1:日限购  2:周限购  3:永久限购 |
| cs | int | `limitParam` | 限制参数 |
| cs | int | `levelMin` | 可购买的最低角色等级 |
| cs | int | `pecialLimit` | 特殊可购买条件 6：帮派等级限制 |
| cs | String | `pecialLimitValue` | 特殊可购买条件数据 帮派等级；  |
| c | Text | `limitTag` | 特殊限购在商品标签的描述 简单些 |
| c | Text | `limitDescrib` | 不可购买的详细描述 |
| c | int | `tagDescType` | 0普通的 1带%类型 |
| c | Text | `tagDesc` | 标签描述 描述一定配底图 |
| cr | String | `tagIcon` | 标签底图 标签=描述+底图 不配底图有默认 |
| c | boolean | `newTag` | 是否显示new |
| c | int | `useBagCapacity` | 占用最大的背包容量 |
| c | Text | `description` | 商品文本描述 填了就读本表，不填就读对应的item描述 |

### Store.xlsx

**商城页签|StoreMainType**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 除了道具和礼包，其他需要和TYPE一样 |
| c | int | `mainOrder` | 主页签显示排序 |
| c | Text | `name` | 页签名称 |
| c | int | `mainType` | 主页签类型 1=推荐 2=道具礼包（替换10） 3=外观礼包 4=道具 8=折扣 9=充值 |
| c | int[] | `params` | 可能用到的参数 外观礼包道具自动展示切换时间，点击后切换时间 |
| c | float[] | `CameraPixelOffset` | 资源展示_子页签中心点的额外偏移 摇臂额外长度: X 左: y负 右: y正 上: Z正 下: Z负 |
| c | boolean | `bNoneView` | 没有模型展示 |
| cr | String | `noneActorBg` | 无模型展示时的背景图 |
| cr | String | `mainTypeIcon` | 主页签图标 |
| cs | int[] | `subTypes` | 次级页签类型 次级页签只有1个时，界面中不显示 |
| cr | String[] | `subTypeIcons` | 次级页签图标 全部SP_Store_Page_Black_14 |
| cs | int | `funcopenSN` | 功能开启 满足后页签才显示 |
| c | int | `currencyModelSn` | 货币栏Sn 310金币钻石 305现金金币钻 |

**推荐商品|StoreRecommend**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| c | int[] | `serverAppoint` | 指定服务器id |
| c | int[] | `serverExcept` | 排除服务器id |
| c | int[] | `countryAppoint` | 指定国家sn |
| c | int[] | `countryExcept` | 排除国家sn |
| c | int[] | `battleZoneStartTime` | 战区开启时间 大于配置上架 天，时，分，秒 |
| c | int[] | `battleZoneEndTime` | 战区开启时间  小于配置上架 天，时，分，秒 |
| cs | String | `startTime` | 推荐开始时间 |
| cs | String | `endTime` | 推荐结束时间 |
| c | int | `position` | 展示位置 |
| c | Text | `name` | 推荐名称 |
| cr | String | `picture` | 页签图片 影子银行02 |
| cr | String | `cover` | 封面 点的时候如果有封面则替换背景,且不自动选择子物品 |
| c | int | `tagSn` | 商品标签的sn |
| cs | int | `limitOpenSN` | 限时功能开放 |
| c | int | `defaultDisplayTime` | 自动展示时间 |
| c | int | `clickDisplayTime` | 玩家主动查看本页，展示时间 |
| c | int[] | `itemSNs` | 本页展示道具 （不超过4个，不然界面不好看） |
| c | int | `itemShowTime` | 有多个道具，展示切换时间 |
| c | Text | `buttonText` | 跳转按钮文本 |
| c | int | `gotoSn` | 跳转类型的OpenUISn |
| c | String[] | `gotoParam` | openUI的 额外参数 |
| c | int | `thirdRedType` | 关联的红点类型 (第三级红点) |

**道具礼包|StoreGoods**（17条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | String | `startTime` | 上架开始时间 |
| cs | String | `endTime` | 上架结束时间 |
| cs | String[] | `versionFunctionSn` | 在该版本不上架 CleanVersion表【功能配置|VersionFunction】 ID版本不上架 TH版本不上架 VN版本不上架 MENA版本不上架 |
| cs | int[] | `serverAppoint` | 指定服务器id |
| cs | int[] | `serverExcept` | 排除服务器id |
| cs | int[] | `countryAppoint` | 指定国家sn |
| cs | int[] | `countryExcept` | 排除国家sn |
| cs | int[] | `battleZoneStartTime` | 战区开启时间 大于配置上架 天，时，分，秒 |
| cs | int[] | `battleZoneEndTime` | 战区开启时间  小于配置上架 天，时，分，秒 |
| cs | int | `goodsType` | 物品类型 1:道具 2:礼包 3.触发包 4.载具 |
| cs | int | `belongTab` | 所属页签 三级或者二级 2=道具礼包 3=外观礼包 4=道具 |
| c | int | `order` | 列表排序 |
| cs | String | `itemParam` | 道具及展示 装备配置格式：ItemSn：数量：品质：装等 |
| cs | int | `limitType` | 数量限购类型 0，不限购； 1，每日； 2，每周； 3，每月； 4，赛季： 5，永久； 6，载具数量 |
| cs | int | `limitParam` | 限购数量 |
| c | int | `buyMax` | 单次购买最大数量 |
| cs | int | `moneyType` | 游戏货币ItemSN 1金币 6帕鲁币 7构梦晶珀  |
| cs | int | `price` | 价格 |
| cs | int | `originalPrice` | 划线原价 不论支付类型都生效 |
| cs | int | `vipPrice` | 会员优惠价格(0,表示没有会员价) |
| cs | int | `payType` | 支付类型 0=游戏货币 1=直购 |
| csi | int | `moneySN` | 直购时的价格 Money表sn |
| c | int | `soldOutType` | 售罄显示类型           1：不再显示 2：显示已获得 3：显示售罄 4：显示售罄，位置移到最后 |
| cs | int[] | `limitFuncOpenSn` | 限时功能开启Sn funcopen表【限时功能开放|LimitOpen】  |
| cs | boolean | `bHideWhenLocked` | 解锁购买后显示出来 空=false，显示未解锁的  ture，不显示未解锁的 |
| cs | int | `unlockType` | 解锁购买类型 1=玩家等级 |
| cs | int[] | `unlockParam` | 解锁购买参数 |
| c | Text | `unlockDesc` | 解锁购买提示文本 |
| c | int | `tagSn` | 商品标签的sn |
| c | boolean | `bShowNew` | 是否显示NEW |
| c | Text | `name` | 礼包名称 只礼包配置 |
| cr | String | `icon` | 礼包页签图片 只外观礼包配置 道具礼包底图T_Store_Discount_Gift_Bg |
| cr | String | `cover` | 封面  点的时候如果有封面则替换背景,且不自动选择子物品 只外观礼包配置 |
| c | Text | `goodsDesc` | 礼包描述 只外观礼包配置 |
| cs | int | `mailSN` | 背包已满的邮件 |

**商品标签|StoreTag**（11条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` |  |
| c | int | `leftTagType` | 需要特殊显示的标签 1:折扣样式(需要资源和文本) 2:超值样式(需要文本)  |
| c | Text | `tagDesc` | 标签描述 描述一定配底图 |
| cr | String | `tagIcon` | 标签底图 标签=描述+底图  绿SP_Discount_Gift_1_2 蓝SP_Discount_Gift_1_3 紫SP_Discount_Gift_1_4... |
| c | int | `rightTagType` | 1:返场 2:hot 3:限定 |

**三级页签|StoreThirdTab**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 二级页签Sn |
| cs | int[] | `children` | 包含的子页签 |
| cr | String[] | `icon` | 选中图标 |
| cr | String[] | `unCheckIcon` | 未选中图标 |

**时装|StoreFashion**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 时装表的Sn |
| cs | int | `belongTab` | 所属页签 (可以是三级或者二级) |
| c | int | `order` | 列表排序 |
| cr | String | `tagIcon` | 标签底图 标签=描述+底图 |
| c | Text | `tagDesc` | 标签描述 描述一定配底图 |
| cs | int | `originalPrice` | 划线原价 |
| cs | int[] | `serverAppoint` | 指定服务器id |
| cs | int[] | `serverExcept` | 排除服务器id |
| cs | int[] | `countryAppoint` | 指定国家sn |
| cs | int[] | `countryExcept` | 排除国家sn |
| cs | int[] | `battleZoneStartTime` | 战区开启时间 大于配置上架 天，时，分，秒 |
| cs | int[] | `battleZoneEndTime` | 战区开启时间  小于配置上架 天，时，分，秒 |

### TriggerGiftPack.xlsx

**触发式礼包|TriggerGift**（12条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 礼包sn |
| c | String | `giftPackName` | 礼包名称 |
| cs | int | `giftType` | 礼包类型 1.消耗品 2.外观 3.装备 |
| c | String | `showTips` | 礼包推荐语 |
| cs | float | `existTime` | 礼包存在时间(h) |
| cs | int | `triggerInterval` | 礼包触发间隔(min) |
| cs | int[] | `preConditions` | 前置条件(允许多个) |
| cs | int[] | `triggerConditions` | 触发条件(允许多个) |
| cs | int | `paymentType1` | 付费类型1sn(空=无需考虑付费类型，符合条件大家推一样的 |
| cs | int | `costType` | 使用货币类型 |
| cs | int | `price` | 价格 |
| cs | int | `originalPrice` | 划线原价（折扣的显示由此价格/价格自动换取) |
| c | String | `discount` | 显示的折扣倍数 |
| cs | String[] | `gifts` | 礼包内容(1:500,内容物sn:数量) |

**前置条件|PreCondition**（14条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 前置条件等级或战力sn 建议六位数id  示例1-preType01-后缀-001 |
| c | String | `desc` | 说明 |
| cs | int | `preType` | 前置条件类型 1.等级（位于a,b） 2.战力（位于a,b） 3.任务初次完成 4.任务失败n次 5.死亡(x分钟内连续死亡) 6.道具消耗(道具Idx分钟内大... |
| cs | int[] | `value` | 前置条件值 （多个值用逗号隔开） 1.玩家等级在a,b之间 2.玩家装备评分在a,b之间 3.任务sn完成 4.任务sn失败n次 5.玩家在x分钟内死亡n次 6... |

**触发条件|TriggerCondition**（30条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 触发条件sn （建议格式六位数 2-触发类型两位数-后缀三位数xxx） 示例：201001 |
| c | String | `desc` | 说明 |
| cs | int | `triggerType` | 触发类型 1.玩家等级提升 2.玩家战力提升 3.任务完成 4.任务失败 5.玩家死亡 6.玩家使用道具 7.回归后连续在线nmin |
| cs | int[] | `value` | 触发值 1.玩家达到x等级 2.玩家装备的等级达到x 3.任务sn完成 4.任务sn失败 5.玩家死亡 6.玩家使用道具sn，个数n |

**触发式礼包镜头参数|TriggerGiftViewCamera**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 物品的showType 同item表的配置 |
| c | float[] | `cameraLocation` | 镜头位置(不填则不生效,需要同时填写) (位置单位是m) |
| c | float[] | `cameraRotation` |  |
| c | boolean | `bUseCameraSmooth` | 是否使用相机效果 |
| c | float[] | `actorPos` | 共用一个锚点,不同的类型的物品额外加偏移(位置单位是m)(不填为0,0,0) |
| c | float[] | `CameraPixelOffset` | 资源展示_子页签中心点的额外偏移  摇臂额外长度: X 左: y负 右: y正 上: Z正 下: Z负 |