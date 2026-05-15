## 运营活动

### ActionGroup.xlsx

**受击动作|HitMontage**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 唯一SN |
| csr | String[] | `montageName` | 受击动作montage名 |
| cs | int | `time` | 持续时间 |

**受击声音蓝图|HitAudio**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 唯一SN |
| csr | String[] | `AudioName` | 受击音效蓝图名（1肉体；2金属；3轻甲） |

### ActivityBag.xlsx

**活动背包|ActivityBag**（11条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 背包ID |
| cs | int | `type` | 背包类型 |
| cs | int | `containerSn` | ItemContainer表sn |
| s | boolean | `bUsePlayerWeapon` | 是否使用玩家武器 true时，weapon1-3只需填写等级和品质，不填或者玩家该槽没有武器则不发武器 |
| s | String | `weapon1` | 武器1 |
| s | String | `weapon2` | 武器2 |
| s | String | `weapon3` | 武器3 |

**背包物品内容|ActivityBagItem**（34条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 唯一标识 |
| csi | int | `id` | ActivityBag表sn |
| cs | int | `itemSn` | Item表sn |
| cs | int | `initNum` | 初始数量 |
| cs | int | `maxNum` | 最大数量 |

### Announcement.xlsx

**社群门户链接|AnnouncementLanguageMap**（25条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | String | `Language` | 主语言地区，比如公告的本地化语言文本内容只有10种语言 |
| c | String | `MappedLanguage` |  |

### AssignmentPeriphery.xlsx

**差事外围总表|AssignmentPeriphery**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 差事任务组sn |
| c | String | `helpGuiSn` | 玩法介绍名称 |
| c | Text | `name` | 差事任务名称 |
| c | int | `showRank` | 差事委托界面的显示排序 |
| s | int | `firstQuest` | 第一环任务sn |
| s | int | `endQuest` | 最后一环任务sn |
| cs | int | `unlockLevel` | 解锁等级 |
| cs | int | `unlockQuest` | 解锁任务 QuestID |
| cs | int | `limitTime` | 限制时间（s，0代表不限制） |
| c | int | `timeShowType` | 计时显示方式： 0：倒计时 1：正计时 |
| c | int | `rewardShowId` | 客户端展示 RewardPreview表ID |
| s | int | `dropId` | 真实发放奖励 DropGroup表ID |
| s | boolean | `hasChangeCloth` | 是否有临时换装 True：是 False：否 |
| cs | int | `actorBirth` | 大地图指引Actor的BirthSn |
| c | int | `mapIconType` | Map表 MapIconType索引SN |
| c | int | `mapIconUnlockLevel` | 地图图标显示等级 |
| c | boolean | `showInTheList` | 手机软件界面显示 |
| c | Text | `title` | 地图标题 |
| c | Text | `desc` | 地图描述 |
| c | int | `areaSn` | 区域Sn |
| cs | int | `failReturnArea` | 失败时返回的AreaSn |

- **配置说明**（9行×2列）— 辅助sheet，首行: 

### BonusActivity.xlsx

**活动类型|ActivityType**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 活动大类SN |
| c | Text | `baseTypename` | 父类页签名称 |
| cr | String | `icon` | 图标 |
| cr | String | `selectIcon` | 图标 |
| c | int | `sort` | 排序 |
| c | boolean | `isShowSubType` | 是否显示子页签 |
| c | boolean | `isShow` | 是否显示 |

**活动列表|ActivityList**（16条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 活动SN （新增或改变顺序都需要同步程序） |
| cs | int | `typeSn` | 所属活动大类sn （新增和修改顺序需同步程序） |
| c | Text | `subTypename` | 子类页签名称 |
| c | int | `sort` | 排序 |
| cr | String | `TemplateRes` | 对应的UI资源 |
| c | String | `TempalteSlot` | 模版对应的插槽 |
| cr | String | `CheckedTexture` | 活动页面选中状态底图 |
| cr | String | `UnCheckedTexture` | 活动页面非选中状态图 |
| c | int | `EventType` | 本列无意义了，留在此处单纯为了后续迁移其他活动时涉及到枚举相关的不要再以本列作为信息 后续枚举全部根据活动Sn作为Key //模版对应的插槽索引，从0开始 |
| c | int | `FunctionID` | 功能开启ID，不配置默认开 |
| c | String | `ModName` | 功能对应的模块名称 |
| cr | String | `BgName` | 功能对应的背景图 |
| c | boolean | `ShowMask` | 是否显示遮罩 |
| c | int | `CurrencyModelSn` | GUI表里的货币样式 |

### HomePage.xlsx

**点赞来源|LikeSource**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn  |
| cs | Text | `Name` | 名字 |

**个性标签|PersonalLabel**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn  |
| cs | Text | `lableName` | 标签名字 |

**点赞奖励|LikeReward**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `likeCount` | 点赞数量 |
| cs | String | `reward` | 阶段奖励物品Sn:Num,Sn:Num… |

### LoginBonus.xlsx

**登录奖励|LoginBonus**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 开服第几天 |
| cs | String | `reward` | 登录奖励 物品sn:物品数量 |
| cs | String | `consume` | 补签消耗 物品sn:物品数量 |

**活动预告|ActivityNotice**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 唯一标识（越小越靠前） |
| c | int | `levelLimit` | 等级限制（小于此等级看不见） |
| c | Text | `name` | 活动名称 |
| c | boolean | `open` | 是否展示 |
| c | int | `textType` | 文字模板序号 |
| cr | String | `bgName` | 活动背景图 |
| c | Text | `desc` | 活动描述 |

### Opeartional_LoginEvent.xlsx

**活动时间|LoginEventTime**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 活动编号 |
| s | int[] | `serverAppoint` | 指定服务器id |
| s | int[] | `serverExcept` | 排除服务器id |
| s | int[] | `countryAppoint` | 指定国家sn |
| s | int[] | `countryExcept` | 排除国家sn |
| s | int | `timeType` | 活动时间类型： 1、开服时间 2、自然时间                  3、创角时间 |
| s | int[] | `startTime0` | 开始时间 开服时间              天,小时,分钟,秒        |
| s | int[] | `finishTime0` | 结束时间 开服时间              天,小时,分钟,秒     |
| s | String | `startTime1` | 开始时间 自然时间            yyyy-MM-dd HH:mm:ss |
| s | String | `finishTime1` | 结束时间 自然时间             yyyy-MM-dd HH:mm:ss |
| s | int[] | `startTime2` | 开始时间 创角时间              天,小时,分钟,秒        |
| s | int[] | `finishTime2` | 结束时间 创角时间              天,小时,分钟,秒     |
| s | boolean | `open` | 是否开启 |
| s | int | `bagFullMailSn` | 包满邮件sn |
| s | int | `reissueMailSn` | 补发邮件sn |
| cs | Text | `name` | 页签名称 |
| c | Text | `timeStr` | 时间文本，如果没配则用真实时间 |

**活动内容|LoginEventContent**（112条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn必须连续 |
| csi | int | `timeSn` | 时间表sn |
| csi | int | `day` | 第几天 |
| c | int | `clientDay` | 客户端显示天数，注意必须连续 |
| cs | String | `reward` | 物品sn:物品数量,物品sn:物品数量 |
| cs | String | `consume` | 补签消耗 物品sn:物品数量 |

### Operational_BattlePass.xlsx

**战令总表（时间开启）|BattlePass**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 活动编号 |
| s | int[] | `serverAppoint` | 指定服务器id |
| s | int[] | `serverExcept` | 排除服务器id |
| s | int[] | `countryAppoint` | 指定国家sn |
| s | int[] | `countryExcept` | 排除国家sn |
| s | int | `timeType` | 活动时间类型： 1、开服时间 2、自然时间                  3、创角时间 |
| s | int[] | `startTime0` | 开始时间 开服时间              天,小时,分钟,秒        |
| s | int[] | `finishTime0` | 结束时间 开服时间              天,小时,分钟,秒     |
| s | String | `startTime1` | 开始时间 自然时间            yyyy-MM-dd HH:mm:ss |
| s | String | `finishTime1` | 结束时间 自然时间             yyyy-MM-dd HH:mm:ss |
| s | int[] | `startTime2` | 开始时间 创角时间              天,小时,分钟,秒        |
| s | int[] | `finishTime2` | 结束时间 创角时间              天,小时,分钟,秒     |
| s | boolean | `open` | 是否开启 |
| cs | int | `payType` | 购买消耗货币类型(1只能直购,2:只能钻石购买) |
| cs | int | `baseMoneySn` | 对应money表sn |
| cs | int | `plusMoneySn` | 对应money表sn |
| s | int | `bagFullMailSn` | 包满邮件sn |
| s | int | `closeMailSn` | 结束时补发邮件sn |
| cs | int | `baseGiftSn` | 基础礼包sn |
| cs | int | `plusGiftSn` | plus礼包sn |
| c | Text | `title` | 活动名称 |
| cr | String | `actorhouse` | 背景资源 |
| cr | String | `baseIcon` | 基础图标 |
| cr | String | `commonIcon` | 普通奖励图标 |
| cr | String | `plusIcon` | 升级图标 |
| C | int | `bigRewardShow` | 打开界面默认展示大奖 |
| c | int | `helpSn` | 帮助界面 |
| cr | String | `video` | mp4文件名 |
| cr | String | `remindLeftPicture` | 剩余提醒资源 |
| cs | int | `remindLeftDay` | 剩余多少天开始提醒 |
| cr | String | `BuyWindowsPic1` | BP购买弹窗角色展示性别男 |
| cr | String | `BuyWindowsPic2` | BP购买弹窗角色展示性别女 |
| cr | String | `bigRewardPic` | 购买弹窗大奖图标 |
| cr | String | `bigRewardPreviewPic` | 奖励预览大奖图标 |
| cs | int | `costCurrencyType` | 消耗的钱类型 |
| c | int | `ExchangeShopSn` | 兑换商店编号 |
| c | int[] | `vipShowItems` | 购买vip界面显示的物品 |
| cs | int[] | `weekQuestSns` | 周任务列表 |
| cs | int[] | `seasonQuestSns` | 赛季任务列表 |
| cs | int | `weekMaxRewardExpNum` | 每周奖励经验上限 |
| c | int | `taskPromptNum` | 完成任务红点提示 |

**阶段奖励|BattlePassExpReward**（100条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| csi | int | `bpSn` | BattlePassSn |
| csi | int | `level` | 等级 |
| cs | int | `needExp` | 从上级升到次级需要的战令经验 |
| cs | int | `cost` | 从上级到本级需要消耗的元宝数 |
| c | boolean | `bBig` | 是否是大奖 |
| cs | String | `itemFreeReward` | 阶段奖励物品Sn:Num:grade:Lv |
| c | int | `itemVipRewardShow` | 免费战令购买排序 |
| cs | String | `itemVipReward` | 阶段奖励物品Sn:Num:grade:Lv |

**道具对应展示|BattlePassItemShow**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| C | int | `sn` | 道具SN |
| C | int[] | `ItemShow` | 对应展示道具SN |

**礼包|BattlePassGift**（10条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| csi | int | `bpSn` | BattlePassSn |
| c | Text | `name` | 礼包名称 |
| cr | String | `Icon` | 图标 |
| c | Text | `desc0` | 头顶文字 |
| c | Text | `desc1` | 文字1 |
| c | Text | `desc2` | 文字2 |
| c | Text | `desc3` | 文字2 |
| C | String | `unlockUpgrade` | 解锁价值提升百分比 |
| C | String[] | `freeUnlockShow` |  |
| C | String[] | `vipUnlockShow` |  |
| cs | int | `costNum` | 需要消耗的元宝数量 |
| c | int | `beforeNum` | 折扣前显示元宝数量 |
| cs | int | `limit` | 限制购买次数 |
| cs | int | `dropSn` | 买即得礼包 |
| cs | int | `upLevel` | 等级礼包才会用到 |

**溢出奖励|BattlePassOverflowReward**（10条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| csi | int | `bpSn` | BattlePassSn |
| csi | int | `level` | 等级 |
| cs | int | `needExp` | 从上级升到此级需要的战令经验 |
| cs | int | `vipRewardNum` | vip战令币奖励数量 |
| cs | int | `freeRewardNum` | 免费战令币奖励数量 |
| cs | int | `costNum` | 从上级到本级需要消耗的钱sn7 |

**战令任务|BattlePassQuest**（439条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN  |
| cs | int | `mainType` | 战令任务主类型（对应EBpQuestMainType：1=LoopQuest循环任务，2=FinishOnce一次性任务，3=StageQuest阶段任务） |
| cs | int | `groupId` | 分组groupid如果是单一的条目，就填sn（分组和奖励进度判断） |
| cs | int | `goalType` | 1,消耗物品 参数 itemsn,itemNum 2,获得物品 参数itemsn,itemNum 3,在X模式达到X段位 参数 1 = 模式（1=PVP,2=赛... |
| cs | int[] | `goalParam` | 触发参数 |
| c | Text | `desc` | 达成描述 |
| c | Text | `title` | 标题描述 |
| cs | int | `bpExpNum` | 给经验点数量 |
| s | int | `resetType` | 重置类型（1：日重置，2：周重置 3：月重置，4：赛季重置）  |
| c | int | `openUI` | 跳转openuisn |

**个性化UI配置|BattlePassUi**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| C | int | `sn` | 1 |
| C | String | `customizeUi_1` |  |
| C | String | `customizeUi_2` |  |
| C | String | `customizeUi_3` |  |
| C | String | `customizeUi_4` |  |
| C | String | `customizeUi_5` |  |
| C | String | `customizeUi_6` |  |
| C | String | `customizeUi_7` |  |
| C | String | `customizeUi_8` |  |
| C | String | `customizeUi_9` |  |

- **Sheet1**（1行×1列）— 非标准表头，可能是说明/辅助sheet

### Operational_Christmas.xlsx

**圣诞活动|Christmas**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 活动SN |
| s | int[] | `serverAppoint` | 指定服务器id |
| s | int[] | `serverExcept` | 排除服务器id |
| s | int[] | `countryAppoint` | 指定国家sn |
| s | int[] | `countryExcept` | 排除国家sn |
| s | int | `timeType` | 活动时间类型： 1、开服时间 2、自然时间                  3、创角时间 |
| s | int[] | `startTime0` | 开始时间 开服时间              天,小时,分钟,秒        |
| s | int[] | `finishTime0` | 结束时间 开服时间              天,小时,分钟,秒     |
| s | String | `startTime1` | 开始时间 自然时间            yyyy-MM-dd HH:mm:ss |
| s | String | `finishTime1` | 结束时间 自然时间             yyyy-MM-dd HH:mm:ss |
| s | int[] | `startTime2` | 开始时间 创角时间              天,小时,分钟,秒        |
| s | int[] | `finishTime2` | 结束时间 创角时间              天,小时,分钟,秒     |
| s | boolean | `open` | 是否开启 |
| s | int | `openLv` | 开启等级 |
| c | Text | `name` | 活动名称 |
| c | Text | `desc` | 活动说明 |
| c | int | `helpSn` | 帮助说明sn |
| cr | String | `dealPicture` | 主打图片 |
| cs | int | `contributionCurrencySn` | 捐助货币SN （涂鸦喷漆） |
| cs | int | `shopCurrencySn` | 商店货币SN （圣诞糖果） |
| s | String | `shopCurrencyConvert` | 每1商店币转换 (活动结束时转) SN:数量 |
| c | Text | `shopTitle` | 兑换商店标题 |
| c | int | `shopHelpSn` | 商店界面帮助 |
| c | int | `questHelpSn` | 任务界面帮助 |
| s | int | `bagFullMailSn` | 活动领奖 包满邮件sn |
| s | int | `closeMailSn` | 活动结束 补发未领奖 邮件sn |
| s | int | `questResetMailSn` | 每日任务重置 补发邮件sn |

**圣诞捐助|ChristmasContribution**（11条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `eventSn` | 所属活动Sn Christmas表Sn |
| cs | int | `stage` | 捐助阶段值 从小往大写 |
| cs | String | `reward` | 阶段奖励  |
| cr | String | `icon` | 阶段图标 |
| cr | String | `graffitiLock` | 涂鸦图未解锁 |
| cr | String | `graffitiUnlock` | 涂鸦图可解锁 |
| cr | String | `graffitiFinish` | 涂鸦图完成 |

**圣诞任务|ChristmasQuest**（13条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `eventSn` | 所属活动Sn Christmas表Sn |
| c | int | `sort` | 显示排序 sort相同按sn排 |
| c | Text | `name` | 任务名字 |
| c | Text | `desc` | 任务描述 |
| cs | int | `preFuncOpenSn` | 前置 功能开启sn |
| cs | int | `goalType` | 目标类型 复用TutorialQuest目标 详见Tutorial.xlsx |
| cs | int[] | `goalParam` | 目标参数 |
| cs | String | `reward` | 任务完成奖励 |
| c | int | `clickType` | 点击功能类型 1=地图图标吸附 2=播放guideSN 3=追踪导航某个actor 4=追踪导航某个Area 5=打开界面OpenUI |
| c | int[] | `clickParam` | 点击参数 Type1=MapIconType表SN Type2=Guide表SN Type3=ActorBirth表SN，追踪时长 Type4=Area表SN，... |
| c | int | `mapIconTypeSn` | 地图上指引任务图标 点击功能是3、4，此字段生效 |
| cr | String | `traceEffect` | 场景指引点特效 点击功能是4，此字段生效  基础白色光柱 NS_Tracking_IconBeam01 集合圈提示特效NS_PublicEvent_Gather... |
| cr | String | `traceIcon` | 场景指引图标Icon 点击功能是3、4，此字段生效 |

**圣诞商店|ChristmasShop**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `eventSn` | 所属活动Sn Christmas表Sn |
| c | int | `sort` | 显示排序 sort相同按sn排 |
| cs | String | `itemStr` | 道具SN （如是装备，需用Sn：数量：品质：装等的格式进行配置） |
| cs | int | `price` | 价格 货币类型在Christmas表里配 |
| cs | int | `limitType` | 限购类型 0或不填：不限 1：每日限购 2：本次活动限购 |
| cs | int | `limitNum` | 限购数量 0或不填：不限 |

- **任务目标类型说明**（31行×6列）— 辅助sheet，首行: 类型, 参数配置说明, 其他, 备注

### Operational_GrowthReward.xlsx

**成长奖励|GrowthReward**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 活动SN |
| s | int[] | `serverAppoint` | 指定服务器id |
| s | int[] | `serverExcept` | 排除服务器id |
| s | int[] | `countryAppoint` | 指定国家sn |
| s | int[] | `countryExcept` | 排除国家sn |
| s | int | `timeType` | 活动时间类型： 1、开服时间 2、自然时间                  3、创角时间 |
| s | int[] | `startTime0` | 开始时间 开服时间              天,小时,分钟,秒        |
| s | int[] | `finishTime0` | 结束时间 开服时间              天,小时,分钟,秒     |
| s | String | `startTime1` | 开始时间 自然时间            yyyy-MM-dd HH:mm:ss |
| s | String | `finishTime1` | 结束时间 自然时间             yyyy-MM-dd HH:mm:ss |
| s | int[] | `startTime2` | 开始时间 创角时间              天,小时,分钟,秒        |
| s | int[] | `finishTime2` | 结束时间 创角时间              天,小时,分钟,秒     |
| s | boolean | `open` | 是否开启 |
| s | int | `openSort` | 开启排序 相同按SN排 |
| s | int | `openLv` | 开启等级 |
| c | Text | `name` | 活动名称 |
| c | Text | `overValue` | 超值文字 |
| cr | String | `dealPicture` | 主打图片 |
| cs | int | `goalType` | 目标类型 1=角色等级 2=累积登录天数 |
| cs | int | `payType` | 解锁付费类型 0=游戏货币 1=真实货币 |
| cs | int | `currencySn` | 解锁货币Sn payType=0时填Item表Sn payType=1时填Money表Sn |
| cs | int | `currencyNum` | 解锁货币数量 payType=0时填数量 payType=1时不填 |
| cs | String | `InstantReward` | 解锁一次性奖励 |
| s | int | `bagFullMailSn` | 包满邮件sn |
| s | int | `closeMailSn` | 结束补发邮件sn |

**成长奖励条目|GrowthRewardItem**（27条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| cs | int | `parentSn` | 所属活动Sn GrowthReward表Sn |
| cs | int | `goalParam` | 目标参数 类型在GrowthReward表里配 |
| cs | String | `freeReward` | 免费奖励 |
| cs | String | `advReward` | 进阶奖励 |

**成长奖励目标类型|GrowthRewardGoalType**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | SN |
| c | Text | `header` | 标题显示字 |
| c | Text | `name` | 条目显示字 |

### Operational_HintEvent.xlsx

**活动时间|HintEventTime**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 活动编号 |
| s | int[] | `serverAppoint` | 指定服务器id |
| s | int[] | `serverExcept` | 排除服务器id |
| s | int[] | `countryAppoint` | 指定国家sn |
| s | int[] | `countryExcept` | 排除国家sn |
| s | int | `timeType` | 活动时间类型： 1、开服时间 2、自然时间                  3、创角时间 |
| s | int[] | `startTime0` | 开始时间 开服时间              天,小时,分钟,秒        |
| s | int[] | `finishTime0` | 结束时间 开服时间              天,小时,分钟,秒     |
| s | String | `startTime1` | 开始时间 自然时间            yyyy-MM-dd HH:mm:ss |
| s | String | `finishTime1` | 结束时间 自然时间             yyyy-MM-dd HH:mm:ss |
| s | int[] | `startTime2` | 开始时间 创角时间              天,小时,分钟,秒        |
| s | int[] | `finishTime2` | 结束时间 创角时间              天,小时,分钟,秒     |
| s | boolean | `open` | 是否开启 |

**活动内容|HintEventContent**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn同时间表sn |
| c | Text | `name` | 活动名称 |
| c | int | `funcopen` | 功能开启sn |
| cr | String | `bgImg` | 背景图片 |
| cr | String | `checkedTexture` | 活动页面选中状态底图 |
| cr | String | `unCheckedTexture` | 活动页面非选中状态图 |
| c | int | `dropPreview` | 奖励预览sn |
| c | Text | `desc` | 活动描述 |
| c | String | `redPoint` | 红点配置，可以配多个|分隔，first, second, third, fourth |
| c | int | `openUI` | 跳转OpenUISn |

### Operational_LevelEvent.xlsx

**活动时间|LevelEventTime**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 活动编号 |
| s | int[] | `serverAppoint` | 指定服务器id |
| s | int[] | `serverExcept` | 排除服务器id |
| s | int[] | `countryAppoint` | 指定国家sn |
| s | int[] | `countryExcept` | 排除国家sn |
| s | int | `timeType` | 活动时间类型： 1、开服时间 2、自然时间                  3、创角时间 |
| s | int[] | `startTime0` | 开始时间 开服时间              天,小时,分钟,秒        |
| s | int[] | `finishTime0` | 结束时间 开服时间              天,小时,分钟,秒     |
| s | String | `startTime1` | 开始时间 自然时间            yyyy-MM-dd HH:mm:ss |
| s | String | `finishTime1` | 结束时间 自然时间             yyyy-MM-dd HH:mm:ss |
| s | int[] | `startTime2` | 开始时间 创角时间              天,小时,分钟,秒        |
| s | int[] | `finishTime2` | 结束时间 创角时间              天,小时,分钟,秒     |
| s | boolean | `open` | 是否开启 |
| cs | Text | `name` | 页签名称 |
| cs | int | `level` | 显示等级 |
| c | int | `view` | 使用哪个界面 0=新界面 1=老界面 |
| s | int | `mailSn` | 每天任务奖励补发邮件Sn |
| s | int | `bagFullMailSn` | 包满邮件sn |

**活动内容|LevelEventContent**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| csi | int | `timeSn` | 活动时间sn |
| cs | int | ` level` | 等级条件 |
| cs | String | `reward` | 物品1sn:物品1数量,物品2sn:物品2数量… |
| c | int | `type` | 类型 1=新玩法 2=新功能 |
| cr | String | `tabIcon` | 背景图片 |
| c | Text | `name` | 活动标题 |
| c | Text | `subName` | 活动描述 |

### Operational_MysteryShop.xlsx

**活动时间|MysteryShopTime**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 活动编号 |
| s | int[] | `serverAppoint` | 指定服务器id |
| s | int[] | `serverExcept` | 排除服务器id |
| s | int[] | `countryAppoint` | 指定国家sn |
| s | int[] | `countryExcept` | 排除国家sn |
| s | int | `timeType` | 活动时间类型： 1、开服时间 2、自然时间                  3、创角时间 |
| s | int[] | `startTime0` | 开始时间 开服时间              天,小时,分钟,秒        |
| s | int[] | `finishTime0` | 结束时间 开服时间              天,小时,分钟,秒     |
| s | String | `startTime1` | 开始时间 自然时间            yyyy-MM-dd HH:mm:ss |
| s | String | `finishTime1` | 结束时间 自然时间             yyyy-MM-dd HH:mm:ss |
| s | int[] | `startTime2` | 开始时间 创角时间              天,小时,分钟,秒        |
| s | int[] | `finishTime2` | 结束时间 创角时间              天,小时,分钟,秒     |
| s | boolean | `open` | 是否开启 |
| cs | String | `closeTime` | 黑市商人刷新结束时间 |
| c | Text | `name` | 活动名字 |
| cr | String | `picture` | 展示图片 |
| c | int | `mapIconTypeSN` | 地图图标类型SN |
| cs | int | `npcBirthSN` | 商人BirthSN |
| c | int | `currencyModelSn` | 显示货币栏 |
| cs | int | `exchangeShopType` | 兑换商店类型 |
| cs | String | `refreshPrice` | 刷新价格 (次数|消耗货币sn|消耗货币数量) |
| cs | int | `refreshLimitNum` | 每日货币刷新次数上限 |
| cs | int[] | `priorityRefresh` | 优先刷新货币(sn,num) |
| c | int | `shopDes` | 商店说明页（Help表sn） |
| s | int | `bagFullMailSn` | 包满邮件sn |
| s | int | `closeMailSn` | 结束时补发邮件sn |
| c | String | `posterItems` | 海报上的道具 （从左到右显示） |
| c | Text | `description` | 活动描述 |

**神秘商品|MysteryItems**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int | `mysteryShopSN` | 所属活动SN |
| cs | int | `positionSN` | 商品位置 |
| cs | String | `itemSn` | 道具SN 装备格式，Sn：数量：品质：装等 |
| cs | int | `moneyType` | 消耗的货币类型1:现金，6： |
| cs | int | `price` | 价格 |
| cs | int | `minimumLevel` | 可购买的最低等级 |
| c | Text | `tagDesc` | 标签描述 描述一定配底图 标签=描述+底图 |
| cr | String | `tagIcon` | 标签底图 SP_Mark_Limit蓝色 SP_Mark_Return紫色 SP_Mark_Free绿色 SP_Mark_Discount橙色 SP_Mark_... |
| c | int | `tagType` | 标签类型 1:限定 2:返场 3:推荐 |
| c | Text | `description` | 商品名称描述 配置为空，商品名字显示item名字 |
| cs | int | `baseRefreshWeight` | 基础刷新权值 |
| cs | int | `minimumRefreshTimes` | 至少刷新N次后出现 不配就是第1次可能出现  |
| cs | int | `guaranteedRefreshTimes` | 保底刷新次数 |
| cs | boolean | `notAppearAfterObtaining` | 玩家拥有后不再刷新TRUE/FALSE |
| cs | boolean | `luckyList` | 获得该物品后，玩家昵称将被展示 |
| c | boolean | `showDetail` | 道具UI可跳转细节展示 |

### Operational_OpenWorldPVP.xlsx

**大世界限时PVP|OpenWorldPVPTime**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | 活动编号 |
| s | int[] | `serverAppoint` | 指定服务器id |
| s | int[] | `serverExcept` | 排除服务器id |
| s | int[] | `countryAppoint` | 指定国家sn |
| s | int[] | `countryExcept` | 排除国家sn |
| s | int | `timeType` | 活动时间类型： 1、开服时间 2、自然时间           3、创角时间 临时热更版只支持类型2 |
| s | int[] | `startTime0` | 开始时间 开服时间              天,小时,分钟,秒        |
| s | int[] | `finishTime0` | 结束时间 开服时间              天,小时,分钟,秒     |
| s | String | `startTime1` | 开始时间 自然时间            yyyy-MM-dd HH:mm:ss |
| s | String | `finishTime1` | 结束时间 自然时间             yyyy-MM-dd HH:mm:ss |
| s | int[] | `startTime2` | 开始时间 创角时间              天,小时,分钟,秒        |
| s | int[] | `finishTime2` | 结束时间 创角时间              天,小时,分钟,秒     |
| s | boolean | `open` | 是否开启 |
| s | int[] | `openSceneSNs` | 开启活动的场景SN列表 |

### Operational_RaffleGacha.xlsx

**抽奖活动开启|RaffleGachaOpen**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 活动编号 |
| s | int[] | `serverAppoint` | 指定服务器id |
| s | int[] | `serverExcept` | 排除服务器id |
| s | int[] | `countryAppoint` | 指定国家sn |
| s | int[] | `countryExcept` | 排除国家sn |
| s | int | `timeType` | 活动时间类型： 1、开服时间 2、自然时间                  3、创角时间 |
| s | int[] | `startTime0` | 开始时间 开服时间              天,小时,分钟,秒        |
| s | int[] | `finishTime0` | 结束时间 开服时间              天,小时,分钟,秒     |
| s | String | `startTime1` | 开始时间 自然时间            yyyy-MM-dd HH:mm:ss |
| s | String | `finishTime1` | 结束时间 自然时间             yyyy-MM-dd HH:mm:ss |
| s | int[] | `startTime2` | 开始时间 创角时间              天,小时,分钟,秒        |
| s | int[] | `finishTime2` | 结束时间 创角时间              天,小时,分钟,秒     |
| s | boolean | `open` | 是否开启 |
| cs | int | `raffleType` | 1.扭蛋类 2.抽奖轮盘 |
| cs | int | `order` | 排序值，降序 |
| cs | Text | `ActiveName` | 活动名称 |
| cs | int | `type` | 活动类型 1=普通扭蛋 2=轮盘 3=载具扭蛋 4=代币抽奖 |
| cs | int | `scoreSn` | 积分道具sn |
| cs | int | `ticketSn` | 抽奖券sn |
| cs | int | `ticketFirstNum` | 单抽消耗奖券数量 |
| cs | int | `ticketSecondNum` | 多抽消耗奖券数量 |
| cs | int | `itemSn` | 抽奖使用的货币sn |
| cs | int | `firstNum` | 单抽消耗货币数量 |
| cs | int | `secondNum` | 多抽消耗货币数量 |
| cs | int | `guaranteeTimes` | 抽奖保底次数 |
| cs | int | `firstTimes` | 单抽消耗资源次数 |
| cs | int | `secondTimes` | 多抽消耗资源次数 |
| cs | int | `firstTime` | 首次抽取折扣（firstNum-firstTime） |
| cs | int | `shardItemSn` | 碎片道具sn |
| cs | int | `shardItemPrice` | 每个碎片道具等于多少货币数量 |
| csr | String | `bgImg` | 抽奖背景图 |
| csr | String | `listBgImg` | 抽奖列表项背景图 |
| s | int | `bagFullMailSn` | 邮件sn |
| c | int | `currencyModelSn` | GUI表货币模板sn |
| c | int | `helpSn` | help界面sn |
| c | int | `ExchangeShopSn` | 兑换商店sn |
| c | int | `subHelpSn` | 页签帮助界面 |
| s | int | `littleTimes` | 10抽以内用小池并且不触发1-3个紫色物品的保底 |
| cs | int | `heightColor` | 高价值物品品质- 参照RaffleGacha-showColor |
| s | int | `fixCD` | 当获得超高价值物品后，20抽内超高价值物品的权重降低50%（不包含保底获得 |
| s | int | `superHeightColor` | 超高价值物品品质 |
| s | float | `fixCDWegith` | 超高价值物品修正（载具第二抽大奖降权） |
| s | int | `limitHeightItemTimes` | 限制高价值物品的抽取次数 n次内高价值物品的获取数量保底为右列数字x |
| s | int | `limitHeightItemNumMin` | 左列数字n次内高价值物品的获取数量保底为x |
| s | int | `limitTimes` | n抽保底一个紫色的次数不超过（含）本列数字y次，超过后不再保底 |
| s | int | `tokenItemGetLimit` | 10抽内只能获取一个代币（载具第3抽大奖降权） |
| s | int | `tokenShardTimes` | 10抽最多获得x个碎片（载具第4抽大奖降权） |
| s | int | `tokenShardNumMax` | 10抽最多获得x个碎片（载具第5抽及以后大奖降权） |

**扭蛋|RaffleGacha**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 奖品编号 |
| cs | int | `ActiveSn` | 所属活动id |
| cs | int | `ItemSn` | 奖品信息 |
| cs | int | `ItemNum` |  |
| cs | boolean | `majorPrize` | true=大奖 |
| cs | float | `weight` | 权重 |
| cs | int | `repeatScore` | 重复获得时兑换的积分 大奖没有积分 |
| cs | int | `showColor` | 抽奖系统对道具的品质需要重定义，如果不填就以Item表的color为准 |
| cs | int | `firstWeight` | 前十抽必出道具权重 |
| cs | int | `order` | 代币道具排序（代币抽奖用 |
| c | int | `cameraAdapterSn` | 模型偏移量 参照UICameraAdapter |
| c | int | `cameraAdapterDetailSn` | 模型偏移量-细节展示 参照UICameraAdapter |

**抽奖开屏界面|RaffleBanner**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 左起顺序 |
| cs | int | `ActiveSn` | 跳转活动Sn |
| c | Text | `DescTxt` | 文字标题 |
| cr | String | `BannerBackground` | Banner资源 |
| cr | String | `CoinTexture` | 按钮货币图标 |
| c | Text | `CoinText` | 按钮文字 |
| c | Text | `CoinDesc` | 按钮提示语 |

**扭蛋品质条|RaffleGachaColor**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 与item的color一致 |
| cr | String | `ImgName` | 所属活动id |
| cr | String | `ImgMedia` | 抽奖视频 |

**抽奖数据|LotteryItem**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| csi | int | `lotterySn` | 活动时间表Sn |
| csi | int | `index` | 轮盘位置 |
| cs | String | `reward` | 阶段奖励物品Sn:Num,Sn:Num… |
| cs | boolean | `majorPrize` | true=大奖 |
| cs | int | `weight1` | 第1抽权重 |
| cs | int | `weight2` | 第2抽权重 |
| cs | int | `weight3` | 第3抽权重 |
| cs | int | `weight4` | 第4抽权重 |
| cs | int | `weight5` | 第5抽权重 |
| cs | int | `weight6` | 第6抽权重 |
| cs | int | `weight7` | 第7抽权重 |
| cs | int | `weight8` | 第8抽权重 |
| cs | int | `weight9` | 第9抽权重 |
| c | int | `cameraAdapterSn` | 模型偏移量 参照UICameraAdapter |
| c | int | `cameraAdapterDetailSn` | 模型偏移量-细节展示 参照UICameraAdapter |

**抽奖消耗|LotteryCost**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 活动时间表sn |
| cs | int | `currencySn` | 货币sn |
| cs | int[] | `costs` | 货币消耗数 |
| cs | int | `discountCost` | 首抽折扣后的价格 |
| c | String | `discountDesc` | 折扣描述 |

- **策划用备注页**（31行×21列）— 辅助sheet，首行: #当前动画格子与配置绑定，以下为配置存档#

### Operational_SevenDay.xlsx

**活动时间|SevenDayTime**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 活动编号 |
| s | int[] | `serverAppoint` | 指定服务器id |
| s | int[] | `serverExcept` | 排除服务器id |
| s | int[] | `countryAppoint` | 指定国家sn |
| s | int[] | `countryExcept` | 排除国家sn |
| s | int | `timeType` | 活动时间类型： 1、开服时间 2、自然时间                  3、创角时间 |
| s | int[] | `startTime0` | 开始时间 开服时间              天,小时,分钟,秒        |
| s | int[] | `finishTime0` | 结束时间 开服时间              天,小时,分钟,秒     |
| s | String | `startTime1` | 开始时间 自然时间            yyyy-MM-dd HH:mm:ss |
| s | String | `finishTime1` | 结束时间 自然时间             yyyy-MM-dd HH:mm:ss |
| s | int[] | `startTime2` | 开始时间 创角时间              天,小时,分钟,秒        |
| s | int[] | `finishTime2` | 结束时间 创角时间              天,小时,分钟,秒     |
| s | boolean | `open` | 是否开启 |
| cs | Text | `name` | 页签名称 |
| cs | int | `level` | 显示等级 |
| s | int | `questMailSn` | 每天任务奖励补发邮件Sn |
| s | int | `goalMailSn` | 总进度奖励补发邮件Sn |
| s | int | `bagFullMailSn` | 包满邮件sn |

**阶段奖励|SevenDayProgressReward**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| csi | int | `timeSn` | 活动时间表Sn |
| cs | int | `count` | 领取奖励,需要完成任务的数量 |
| cs | String | `reward` | 阶段奖励物品Sn:Num,Sn:Num… |
| c | int[] | `iconSize` | 奖励图标大小x,y |

**每日任务配置|SevenDayDayQuest**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| csi | int | `timeSn` | 活动编号（对应活动时间sn） |
| csi | int | `day` | 天数 |
| c | String | `titleContent` | 按钮文本 |
| cs | int[] | `targetQuestSn` | 目标任务sn                                       由于服务器数据库预定的字符串长度限制，每天任务总数不要太多，最好不要超... |

**任务目标具体配置|SevenDayQuest**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 任务目标sn |
| cs | Text | `questDescription` | 目标说明 |
| csi | int | `goalType` | 目标类型 |
| cs | int | `goalParam1` | 限制参数1 |
| cs | int | `goalParam2` | 限制参数2 |
| cs | int | `goalParam3` | 限制参数3 |
| cs | String | `item` | 奖励物品 Sn:Num,Sn:Num… |
| cs | int | `canFinishAhead` | 任务目标出现前是否可完成( 1：任务目标出现前可完成 2：任务目标出现前不可完成） |
| cs | int | `level` | 显示等级，等级大于等于次数值才会看到和完成 |
| c | int | `guideType` | 前往类型                                        1:前往寻找NPC params1=Birthsn params2=图标... |
| cr | String | `params1` | 参数 |
| cr | String | `params2` | 参数 |

- **目标类型备注**（42行×9列）— 辅助sheet，首行: 目标类型, 含义, 限制参数1, 限制参数2

### Operational_SumTopUp.xlsx

**活动时间|SumTopUpActivity**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 活动编号 |
| s | int[] | `serverAppoint` | 指定服务器id |
| s | int[] | `serverExcept` | 排除服务器id |
| s | int[] | `countryAppoint` | 指定国家sn |
| s | int[] | `countryExcept` | 排除国家sn |
| s | int | `timeType` | 活动时间类型： 1、开服时间 2、自然时间                  3、创角时间 |
| s | int[] | `startTime0` | 开始时间 开服时间              天,小时,分钟,秒        |
| s | int[] | `finishTime0` | 结束时间 开服时间              天,小时,分钟,秒     |
| s | String | `startTime1` | 开始时间 自然时间            yyyy-MM-dd HH:mm:ss |
| s | String | `finishTime1` | 结束时间 自然时间             yyyy-MM-dd HH:mm:ss |
| s | int[] | `startTime2` | 开始时间 创角时间              天,小时,分钟,秒        |
| s | int[] | `finishTime2` | 结束时间 创角时间              天,小时,分钟,秒     |
| s | boolean | `open` | 是否开启 |
| cs | int | `sumType` | 累充:0 累消:1 |
| cs | boolean | `module` | 是否有期数 |
| cs | int | `exchangeShopType` | 兑换商店类型 |
| c | String | `exchangeDisplayItems` | 兑换奖励展示 |
| c | Text | `name` | 活动名字 |
| c | Text | `desc` | 活动文本 |
| cr | String | `picture` | 资源图配置 |
| c | int | `currencyModelSn` | 显示货币栏 |
| c | int | `helpSn` | 帮助按钮 |
| s | int | `shopCurrency` | 商店币ItemSn |
| s | String | `shopCurrencyConvert` | 每1商店币转换 |
| s | int | `closeMailSn` | 结束时补发邮件sn |

**累充累消阶段|SumTopUpPeriod**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 (自动生成) |
| cs | int | `period` | 阶段（第x期） |
| cs | int | `activity` | 归属活动 |
| s | int | `timeType` | 活动时间类型： 1、开服时间 2、自然时间                  3、创角时间 |
| s | int[] | `finishTime0` | 结束时间 开服时间              天,小时,分钟,秒     |
| s | String | `finishTime1` | 结束时间 自然时间             yyyy-MM-dd HH:mm:ss |
| s | int[] | `finishTime2` | 结束时间 创角时间              天,小时,分钟,秒     |

**累充累消档位|SumTopUpStage**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int | `stage` | 阶段数值 |
| cs | String | `itemSn` | 奖励 |
| cs | int | `period` | 归属阶段（第x期） |
| cs | int | `activity` | 归属活动 |
| c | Text | `desc` | 描述 |
| c | int | `openUI` | 跳转界面 |

**兑换商店|SumTopUpShop**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | SN |
| c | Text | `name` | 商店名称 |
| c | int | `currencyModelSn` | 货币栏Sn |
| c | int | `shopDes` | 商店说明页（Help表中的sn） 不配不显示问号按钮 |

**兑换商店物品|SumTopUpShopItems**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int | `exchangeShopType` | 兑换商店类型 |
| cs | String | `itemSn` | 道具SN （如是装备，需用Sn：数量：品质：装等的格式进行配置） |
| cs | int | `moneyType` | 消耗的货币类型 |
| cs | int | `price` | 价格 |
| cs | int | `minimumLevel` | 可购买的最低等级 |
| c | Text | `tagDesc` | 标签描述 描述一定配底图 标签=描述+底图 |
| cr | String | `tagIcon` | 标签底图 SP_Mark_Limit蓝色 SP_Mark_Return紫色 SP_Mark_Free绿色 SP_Mark_Discount橙色 SP_Mark_... |
| c | Text | `description` | 商品文本描述 配置为空，显示item描述 |
| cs | int | `singleMax` | 单次购买最大上限 |
| cs | int | `limitType` | 限购类型（1:日限购 2:永久限购） |
| cs | int | `limitParam` | 限购数量 |
| c | boolean | `redPoint` | UI红点提示 (该道具可购买，且玩家有足够的货币购买该道具) |

### Operational_Web.xlsx

**网页运营活动|operationalWebOpen**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 活动编号 |
| s | int[] | `serverAppoint` | 指定服务器id |
| s | int[] | `serverExcept` | 排除服务器id |
| s | int[] | `countryAppoint` | 指定国家sn |
| s | int[] | `countryExcept` | 排除国家sn |
| s | int | `timeType` | 活动时间类型： 1、开服时间 2、自然时间                  3、创角时间 |
| s | int[] | `startTime0` | 开始时间 开服时间              天,小时,分钟,秒        |
| s | int[] | `finishTime0` | 结束时间 开服时间              天,小时,分钟,秒     |
| s | String | `startTime1` | 开始时间 自然时间            yyyy-MM-dd HH:mm:ss |
| s | String | `finishTime1` | 结束时间 自然时间             yyyy-MM-dd HH:mm:ss |
| s | int[] | `startTime2` | 开始时间 创角时间              天,小时,分钟,秒        |
| s | int[] | `finishTime2` | 结束时间 创角时间              天,小时,分钟,秒     |
| s | boolean | `open` | 是否开启 |
| cs | Text | `ActiveName` | 活动名称 |
| csr | String | `listBgImg` | 抽奖列表项背景图 |
| cs | int | `currencyModelSn` | GUI表货币模板sn |
| cs | String | `url` | 网页链接 |

**web活动|WebEvent**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| csi | int | `activity` | 活动sn |
| cs | int | `goalType` | 目标类型 |
| cs | int | `goalParam` | 目标参数 |
| cs | int | `dataType` | 累积类型 0=本日 1=本周（自然周 2=月 3=活动期间 |

- **WebEvent类型说明**（6行×3列）— 辅助sheet，首行: type, 说明（每日任务每天5点刷新, 参数说明

### PublicEvent.xlsx

**公共事件|PublicEvent**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | Text | `title` | 事件标题 |
| cs | Text | `desc` | 事件描述 |
| cr | String | `picture` | 图标 |
| cs | float | `maxTime` | 事件总时间s |
| c | Text | `startDesc` | 开始文本提示 |
| c | String | `HelpSn` | Help表GUISn |
| csi | int | `configSN` | 配置sn |
| s | int | `weight` | 随机权重 |
| s | int | `actorBirthSN` | 事件导演birthSN（场景必须和配置一样） |
| c | int | `previewDropGroupSn` | 预览奖励掉落组sn |
| c | int | `mapIconTypeSn` | 小地图图标sn |
| c | int | `minPlayer` | 最小的开启人数，给前端展示的，需要与蓝图一致 |
| s | boolean | `needWanted` | 是否需要被通缉 |
| c | Location | `startPlayEffectLocation` | 开局播放特效位置 |
| cr | String | `startPlayEffectName` | 开局播放特效名称 |
| c | String | `startPlayWwise` | 开局播放声音名称 |

**事件阶段描述|PublicEventStage**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | int | `eventSN` | 事件sn |
| c | int | `stageIndex` | 阶段索引（0 是第一阶段的描述） |
| c | Text[] | `stageBriefing` | 阶段简报 |
| c | int[] | `recordTypes` | 阶段统计类型 0：CurrentCount/MaxCount 1:CurrentCount% 2:CurrentCount |
| c | int | `traceType` | 指引点类型 1.点指引 2.区域指引 3.actor指引  |
| c | Location | `littleMapTracePos` | 小地图指引坐标 |
| c | String | `traceParam` | 场景指引点参数 1.坐标 2.AreaSN 3.ActorBirthSN |
| cr | String | `traceNia` | 场景指引点特效 |
| cr | String | `traceIcon` | 场景指引点Icon |
| c | int | `triggerSN` | 旁白SN（关联VisualCommunication表） |
| c | String | `musicEvent` | 音乐事件 不配切到当前场景默认音乐 配相同事件则一直使用同一个音乐不切换 |

### PushMessage.xlsx

**消息推送|PushMessage**（10条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int[] | `platform` | 2=安卓 3=苹果 |
| cs | int | `type` | 条件类型  1:创角几天后 2:离线几天后 3:funcOpenSN 4:等级大于等于 |
| cs | int | `typeParam` | 条件参数 |
| cs | int[] | `serverDay` | 开服第几天推送  地区大服的时间 |
| cs | int[] | `weekday` | 每周几推送 |
| cs | String | `time` | 时分秒  条件类型是1或2时：每天这个时间点进行推送 |
| cs | int | `title` | 标题(ServerStr表Sn)  ServerStr表 路径:Excel\Localization |
| cs | int | `content` | 消息文本(ServerStr表Sn) |
| cs | String | `notifyTopic` | 订阅主题名  type为 3、4或空着的才需要填写 |

### RandNameConfig.xlsx

**随机名字语言配置|RandNameConfig**（12条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | String | `sn` | sn 填LanguageSetting里的sn DEFAULT是特例，表示默认语言（找不到的都用这个） |
| s | String | `nameID` | 名字库ID，填“随机名字库”表里的ID （花括号里的） |
| s | int | `format` | 随机名字格式 0 = [单词1][一个英文空格][单词2] 1 = [单词1][单词2] 2 = [单词1] |