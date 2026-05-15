## 物品与掉落

### CDKeyList.xlsx

**兑换码|CDKeyList**（8条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | 批次 |
| s | int | `batch` | 真实批次，新的兑换码不在支持直接修改数量扩展，要扩展需要配新的sn。batch和之前的相同，服务器读batch进行判断 |
| s | String | `reward` | 物品sn:物品数量,物品sn:物品数量 |
| s | int[] | `bind` | 是否绑定  0=否 1=是 |
| s | int | `type` | 类型  1:私有 0:公有 |
| s | int | `count` | 数量 |
| s | String | `effectivetime` | 有效时间（截止时间 |
| s | int | `useNum` | 私有码 不填代表 只能用一次，填了表示这个批次这个角色最多用x次           公有码 不填表示所有人都能用一次  填了表示前x名玩家可用 |

**特殊兑换码|CDKeyListSpecial**（29条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | String | `sn` | 特殊兑换码 |
| s | int | `batch` | 兑换码批次 |

### Collect.xlsx

**采集物|Collect**（75条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 采集物ID |
| c | Text | `name` | 采集物名称 |
| cs | int | `type` | 类别组        1=通用采集物 2=植株采集物  3=元素采集物 4=矿石采集物 5=生物采集物  |
| cs | int[] | `collectType` | 采集类型 1.基础采集 2.受击采集 |
| cr | String | `destoryEffect` | 销毁特效 |
| cr | string | `tipEffect` | 提示特效 |
| c | float[] | `tipEffectPosOffset` | 提示特效 坐标偏移（米） |
| c | string | `audioEvent` | 采集音效 |
| cs | boolean | `affectByTalent` | 采集效果可被天赋影响 |
| cs | float | `collectTime` | 读条采集时间 （s） |
| c | int | `tipsStr` | 采集提示 |
| cs | boolean | `CanTransportByPet` | 是否能被宠物搬运 需要将蓝图上KSGCapsule的AroundINfoCollect改成重叠 |
| cs | int | `PetTransportItemSn` | 宠物搬运物品sn |
| cs | int | `PetTransportItemNum` | 宠物搬运物品数量 注意宠物只会搬运一次，数量会被宠物的搬运等级限制 |

### Collectors.xlsx

**收集物|Collectors**（443条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 收集物Birth |
| cs | int | `Type` | 收集物类型 1磁带 2信纸 3 废弃物桶（无子表）4杂志 5 翠叶鼠雕像（无子表) ..etc |
| cs | int | `TypeIdx` | 对应类型内部的Sn/Id |
| cs | int | `VisibleCondition` | 显示/可交互条件类型： 1 完成任务 2 限时挑战完成 3 可破坏物 |
| cs | int[] | `VisibleConditionParam` | 显示/可交互条件参数： 1 任务sn 2 限时挑战sn 3 可破坏物BirthSn |
| cs | int | `UnlockType` | 未满足条件时样式 0：不可见 1：不可交互 |
| s | int | `DropSn` | 收集完成获得道具 |
| cr | String | `SimpleEffect` | 超远距离时替代特效 |

**磁带|TapeCollector**（20条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 对应主表Idx |
| c | Text | `tapeName` | 磁带名 |
| c | Text | `speakerName` | 说话者名称 |
| cr | String | `headIcon` | 说话者头像 |
| c | String | `sound` | 语音Wwise资源 |
| c | Text[] | `subtitle` | 字幕文本 |
| c | float[] | `subtitleTime` | 每行字幕的显示时间 |

**信纸|LetterCollector**（55条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 信纸Sn（无意义） |
| cs | int | `idx` | 对应主表TypeIdx |
| c | int | `page` | 页数 |
| c | Text | `content` | 此页文本 |
| cr | String | `imgRes` | 内容配图资源（可没有） |
| c | Text | `title` | 此页标题（可没有） |

**杂志|MagazineCollector**（20条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| c | Text | `pageTitle` | 页标题 （不用可以不填） |
| c | String | `pageNum` | 页码文本 |
| cr | String | `pageImg` | 图片 |

### CommonReward.xlsx

**通用奖励|CommonReward**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
|  | String | `Des` | 备注 |
| c | int | `RewardTitleStr` | 奖励标题 |
| c | int | `RewardInfoStr` | 奖励内容描述 |
| c | String | `RewardIconName` | 大图标 （如首次讨伐BOSS） |
| c | int | `RewardAnimType` | 动画类型（品质颜色） 1=默认（蓝色） 2=紫色 3=灰色 |
| c | String | `RewardSpeImgName` | 小图标 |

### Drop.xlsx

- **掉落组sn管理**（20行×5列）— 辅助sheet，首行: 掉落组模块, sn, 掉落数据

**掉落组|DropGroup**（2304条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 掉落组id-6位 具体参照掉落组sn管理 |
|  | Text | `name1` | 模块名称 |
|  | Text | `name2` | 备注 |
| cs | int | `dropIdType` | dropId的类型 (0:组队归属，1:个人归属 注:世界采集的一般均为个人归属） |
| cs | String | `dropId` | 不受VIP影响的掉落项（个人掉落）  |
| cs | String | `dropId_Free` | 不受VIP影响的掉落项（公共掉落） （目前只支持 怪物击杀掉落 宝箱场景掉落） |
| s | int | `equipGenType` | 装备生成方式 1：根据玩家装等 2：根据玩家穿戴等级 |
| s | int[] | `equipLevelLimit` | 装备等级上下限 |
| s | int[] | `apparelLevelLimit` | 穿戴等级上下限 |
| s | boolean | `showRwardView` | 是否弹出奖励界面（默认false，由gamesrv服务端读取并下发展示，客户端Conf虽含该列但当前不参与客户端逻辑） |

**采集数量|CollectMax**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 道具SN |
| cs | int | `maxNum` | 每日限制数量 |

**掉落数据|DropData**（5596条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 索引ID |
| csi | int | `groupId` | 掉落组(关联DropGroup表的sn) |
|  | Text | `auto_column_name_1` | 掉落组备注 |
|  | Text | `auto_column_name_2` | 物品备注 |
| cs | int[] | `num` | 掉落物品数量区间min，max |
| cs | int[] | `itemId` | 物品列表 |
| s | int | `itemGroupSn` | 道具组Sn 对应后面的sheet 主要用于装备组 |
| s | int[] | `droptype` | 掉落物表现， 0.是悄悄进背包  1.（创建场景OBJ）是走近吸附无需拾取列表 2.（创建场景OBJ）根据弹出列表进行拾取 3.是追随主角，掉落后自动飞向玩家 ... |
| s | boolean[] | `needItemTrack` | 是否需要开启追踪掉落物 TRUE：场景掉落物上显示追踪图标 FALSE：场景掉落物上不显示追踪图标 （配置为空则视为都不追踪） |
| s | int[] | `dropActorId` | 随掉落产生的怪物id |
| s | boolean | `isBind` | 是否绑定 |
| s | int | `weight` | 权重值 |
| s | int | `exclusionSn` | 是否为排重掉落（已激活即不会再掉落）是的话配置为sn |
| s | int[] | `monsterLv` | 怪物等级限制[min，max](不填表示无限制) |
| s | int[] | `roleLv` | 玩家等级限制[min，max](不填表示无限制) |
| s | int | `strid` | 消息ID |
| s | int | `equipGrade` | 装备品质 |
| s | int[] | `equipLevel` | 装备等级范围(闭区间) (只在装备生成方式为1时生效) (与equipLevelLimit做交集) |
| s | boolean | `roleInSpecial` | 玩家是否在某种特殊状态 |

**掉落排除表|DropExclusion**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | 索引ID |
|  | Text | `text` | 备注 |
|  | Text1 | `text1` | 备注1 |
| s | int | `itemSn` | 道具Sn |
| s | int | `systemParam` | 系统参数 1：枪械配件 |
| s | int | `extraParam` | 系统内参数：便于校验是否已激活 枪械配件:【WeaponAccessory】Sn |

**道具组|ItemGroup**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 索引Sn |
| si | int | `itemGroupId` | DropData里的道具组 |
|  | Text1 | `text1` | 备注1 |
|  | Text2 | `text2` | 备注2 |
|  | Text3 | `text3` | 备注3 |
| s | int[] | `num` | 掉落数量区间min,max |
| s | int[] | `itemId` | 物品列表 |
| s | int | `weight` | 权重值 |
| s | int | `exclusionSn` | 是否为排重掉落（已激活即不会再掉落）是的话配置为sn |
|  | Text4 | `text4` | 备注4 |

**奖励预览|RewardPreview**（1504条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | DropGroup表sn |
| c | String | `itemList` | 奖励预览列表 格式 物品Sn:数量 , 物品Sn:数量  |
| c | String | `randomList` | 随机掉落的  奖励预览列表 格式 物品Sn:数量 , 物品Sn:数量  |

**掉落生成装等区间|EquipmentLevel**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | sn |
| s | int[] | `levelRange` | 装备等级范围（闭区间） |
| s | int[] | `fixRange` | 掉落浮动区间（左闭右开） |

**穿戴等级区间|ApparelLevel**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | sn |
| s | int[] | `levelRange` | 穿戴等级范围（闭区间） |
| s | int[] | `fixRange` | 掉落浮动区间（左闭右开） |

**装备对照|EquipmentComparison**（801条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 装等 |
| cs | int | `grade1` | 灰【穿戴等级】 |
| cs | int | `grade2` | 绿【穿戴等级】 |
| cs | int | `grade3` | 蓝【穿戴等级】 |
| cs | int | `grade4` | 紫【穿戴等级】 |
| cs | int | `grade5` | 橙【穿戴等级】 |

- **说明备注**（24行×4列）— 辅助sheet，首行: 装备对照表中用穿戴等级取值规则

### DropActorInfo.xlsx

**死亡掉落偏移|DropActorInfo**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | actor的Sn  |
| cs | float[] | `DropOffset` | 掉落物的偏移 cm厘米 |

### DropGoods.xlsx

**掉落可交互物|DropGoods**（36条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 同Actorsn |
| cs | int | `Weight` | 负重 |
| cs | int | `Value` | 价值 |
| cs | int | `DropGroupSn` | 掉落组Sn（获得道具） |
| c | int | `color` | 品质颜色（吸附特效用） |
| cs | float[] | `angleRange` | 角度区间 |
| cs | float[] | `speedRange` | 速度区间 |
| cs | boolean | `CanActiveDirectly` | 是否可以直接交互 |
| cr | String | `CollectMTG` | 采集动作 |

### Item.xlsx

- **物品sn管理**（30行×13列）— 辅助sheet，首行: 物品唯一id, 装备

**物品|Item**（2023条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 物品唯一id 货币：1-99 道具： 1+AA+BB+CCCC AA=大类 BB=子类 CCCC=实例ID 装备： 2+AA+BB+CCCC AA=部位 BB=... |
| cs | Text | `name` | 道具名称 |
| cs | Text | `Funcdescription` | 物品功能描述（普通物品tips描述） 货币栏中道具描述会读取此列 2 |
| cs | Text | `description` | 物品包装描述（枪械、装备tips描述） 货币栏中道具描述会读取此列 1 |
| c | Text | `briefDes` | 简要描述（目前给掉落物用） |
| csi | int | `type` | 道具大类 货币=0 武器=1 防具=2 消耗品=3 任务品=4 奖励预览=5 时装=6 动作=7 建筑=8 配件=9 个性装扮=12 |
| cs | int | `stype` | 道具小类 |
| cs | int | `levelLimit` | 等级限制 （不填则默认为1） |
| cs | float | `ItemWeight` | 物品重量 |
| cs | int | `Expiration` | 物品保质期 （单位：秒） |
| cs | int | `color` | 品质【1】灰【2】绿【3】蓝【4】紫【5】金 |
| cs | int | `grade` | 物品在背包中的排序权重（同时作为抓捕相关等级/强度参数使用） |
| cs | int | `overlap` | 每一堆的数量，1为不堆叠，超过1为按数量堆叠 |
| csr | String | `iconImageId` | 在物品列表中显示的图片 |
| cr | String | `iconSamllImageId` | 物品小图标（一般配置货币图标用） |
| cr | String | `iconSpecialTag` | 特色标签图标（不填，隐藏） |
| cs | int | `backpackType` | 显示分类 ContainerType表SN |
| cs | boolean | `Newmark` | 是否显示新获得 |
| cs | boolean | `HighLevelUI` | 是否显示高品质获得提示ui true=显示 false=不显示 仅支持紫色和金色品质的 道具 |
| cs | boolean | `autoUse` | 【true】直接使用【false】存入背包 |
| cs | boolean | `autouseShow` | 自动使用道具是否需要展示在聊天栏 |
| cs | boolean | `volumeUse` | 能否批量使用 |
| c | boolean | `quickUse` | 能否快捷使用 |
| c | boolean | `quickUseFirst` | 快捷使用前置 |
| c | boolean | `easyUse` | 是否弹窗使用 |
| c | int | `preUseType` | 使用前置类型 |
| c | String | `preUseParameter` | 使用前置参数 |
| cr | String | `progressbarIcon` | 读条显示图标 |
| cs | int[] | `useLogic` | 使用逻辑 |
| cs | String | `useProcess` | 逻辑参数 |
| cs | int[] | `useActor` | 使用对象 |
| c | String | `useSound` | 使用音效 |
| cr | String | `animation` | 使用道具时播放的动作 （填写蒙太奇） |
| cs | int | `useCD` | 冷却组ID 多个物品使用同一个ItemUseCD表sn则共用一个冷却时间 |
| cs | int | `TimesLimit` | 每日使用上限 |
| cs | int | `reward` | 使用获得物品 |
| cs | boolean | `canDecompose` | 是否可分解 |
| cs | String | `decomposeItem` | 分解获得的道具 sn1:num1,sn2:num2 武器和防具类别分解结果从EquipmentResolve读取 |
| cs | boolean | `canDrop` | 是否可丢下 |
| cs | boolean | `canDelete` | 是否可销毁 |
| cs | boolean | `canLock` | 是否可锁定 |
| c | int[] | `output` | 道具获取链接sn |
| c | int[] | `output_recommend` | 推荐的道具获取链接sn output字段值必须包含当前值 |
| c | int[] | `consume` | 道具消耗途径 索引ItemOutPutFrom |
| c | int | `sequence` | 排序规则 |
| s | int | `needBagSpace` | 自动使用物品占背包格子 |
| cs | int | `dropObjSn` | 掉落模型sn |
| cr | String | `ShowModelSn` | 装备界面显示模型的蓝图名字 |
| s | boolean | `offlineDel` | 离线删除物品 |
| cs | String | `showOwnIco` | 显示已经拥有的图标 默认空不显示 非空根据类型判断（示例：3，10） 类型1：只判断背包中拥有 类型2：枪械配件 类型3：枪械配件组件参数，配件sn（例：3，配... |
| cs | int | `showType` | 展示类型 1=道具图片 showRes 图片资源 2=载具模型 showParam载具sn 3=武器模型 showParam=WeaponSn 4=时装模型 s... |
| cs | int | `showParam` | 展示参数 |
| c | String | `showParam2` | 展示参数2 |
| cr | String | `showRes` | 图片资源 |
| s | boolean | `squadListen` |  |

**掉落物|DropObject**（92条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 1:掉落物唯一id |
| csr | String | `dropModId` | 在场景中掉落时显示的模型id |
| csr | String | `dropModelAssetName` | 掉落物蓝图资源名称 |
|  | Text | `desc` | 备注 |
| cs | float | `scale` | 场景模型缩放 |
| c | float[] | `lightEffectOffset` | 光锥特效偏移 (单位米) |
| cs | int | `phyMaterialIndex` | 物理材质索引 |
| cs | float | `gravityScale` | 重力加速度倍数 |
| cs | int[] | `offsetAngleRange` | 偏移角度随机范围 (水平方向） |
| cs | float[] | `angleRange` | 角度区间 （垂直方向） |
| cs | float[] | `speedRange` | 速度区间 |
| cs | boolean | `autoPick` | 如果是弹框拾取那是否为自动拾取 |
| cs | float | `delayToPick` | 延迟多久可以拾取掉落物（秒） |
| cs | float | `pickDistance` | 拾取距离（cm） |
| cs | float | `liveTime` | 存活时间（秒） |
| c | boolean | `isOverlayMat` | 拾取范围内 是否显示描边 |
| cs | boolean | `dropObjCanOverlay` | 掉落物模型 是否叠加 |
| c | boolean | `dropItemShowEffect` | 是否限时掉落物特效 True 显示 False 不显示 |
| cr | String | `dropIconMaterial` | 掉落物2d图标材质 |
| cr | String | `dropSound` | 掉落物落地音效 |
| cr | String | `pickSound` | 掉落物拾取音效 |
| cr | String | `snapSound` | 掉落物吸附完毕音效(弃用字段） |
| c | int | `snapSoundSort` | 掉落物吸附完毕音效优先级(弃用字段） |

**道具获取链接|ItemOutPutFrom**（194条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 索引 |
| cr | String | `icon` | 图标 |
| c | Text | `desc` | 途径描述 |
| c | int | `type` | 0:无点击 1:打开ui 2:寻路npc 3:显示STR 4:跳转功能建筑 5:跳转世界地图追踪 6:直接追踪 |
| c | string | `externalParam` | 参数 type为1时:OpenUI表sn（Gui.xlsx） type为2时：actorbirthSN,MapIconTypeSN |
| c | boolean | `bNeedSn` | type = 1时打开ui是否需要带物品sn作为参数 |
| c | int | `limitType` | 默认不填是限时活动 不影响原有逻辑 1汪汪商店逻辑   |
| c | int[] | `limitopenParam` | 限时活动参数_x000D_ 格式：_x000D_ limitopen_sn,控制类型 |
| c | int[] | `limitSceneTypes` | 受限的场景类型 |
| c | int[] | `allowSceneSns` | 允许场景sn |

**道具操作|ItemOperate**（17条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 操作类型sn |
| c | Text | `name` | 按钮文字 |
| c | int | `buttonPic` | 底图类型 |
| c | int | `sequence` | 排序 |
| c | boolean | `recommend` | 是否推荐 |

**道具使用效果图标|ItemUseLogic**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 索引 |
| c | int | `useLogic` | 物品使用逻辑类型 |
| cr | String | `icon` | 使用效果图标 |

**物品容器|ItemContainer**（8条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 物品容器类型 |
| cs | Text | `name` | 物品容器名字 |
| cs | int | `initSize` | 容器初始容量 |
| cs | int | `maxSize` | 容器最大容量 |
| cs | boolean | `autoOpen` | 是否自动开启 |
| cs | boolean | `logoutStopExpiration` | 下线是否停止过期计时 |

**物品分类名称|ItemTypeName**（50条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` |  |
| csi | int | `type` | 物品主类型 |
| csi | int | `subType` | 子类型 |
| c | Text | `name` | 分类名称 |
| cs | Text | `showname` | 广播获得稀有道具时的品类名 |
| cs | boolean | `canUseBuildingStorage` | 是否可以用作建筑收纳的类别，进行黑名单处理 |
| c | int | `sequence` | 背包分页中的排序 |
| cs | boolean | `storageIntel` | 智能收纳 |

**物品栏分类|ContainerType**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` |  |
| c | int[] | `types` | Item表backpackType组合 不填：所有 |
| c | Text | `name` | 分类名称 |
| cr | String | `icon` | 页签图标 |
| cs | int | `containerSn` | ItemContainer表sn |
| c | int[] | `sorts` | 排序组： 1:按默认顺序 2:按负重 3:按品质 |
| c | boolean | `destroy` | 是否可分解 |

**合成表|ItemCompose**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `type` | 合成类型 |
| s | int | `composeMax` | 最大合成数量 |
| c | int | `family` | 显示分类 |
| c | int | `sortWeight` | 排序权重 |
| cs | int[] | `item` | 生成道具 |
| cs | int[] | `num` | 数量 |
| cs | int[] | `itemNeed` | 固定道具类型 |
| cs | int[] | `needNum` | 固定道具数量 |
| cs | int | `costType` | 消耗货币类型 |
| cs | int | `costNum` | 消耗货币数量 |
| s | int | `composeLevel` | 合成等级限制 |

**道具使用CD|ItemUseCD**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | cd组标识 |
| cs | float | `coolTime` | 冷却时间，单位(秒) |

**道具获取上限|ObtainMaxNum**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int[] | `itemSns` | 获取道具itemSN |
| cs | int | `maxNum` | 获取数量上限 |
| cs | int | `type` | 上限计数重置类型 1=每周一05:00 2=每天05:00 |
| cs | boolean | `showTips` | 是否在tips界面显示获得上限 |
| cs | Text | `desc` | tips界面获得上限文本 {0}是当前数量 {1}是maxNum上限数量 |
| cs | boolean | `inUse` | 本条数据是否生效 |

- **道具使用逻辑类型-策划用**（64行×15列）— 辅助sheet，首行: 

**道具外显表|ItemAppearance**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 对应item表的sn |
| cs | int | `fashionSn` | 对应fashion表的sn |

**流水线工厂道具|ItemFactory**（32条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 对应Item表的Sn |
| csr | String | `ItemAssetName` | 在流水线工厂上的蓝图名称 |

### ItemProduction.xlsx

**物品产出|ItemProduction**（2020条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 物品sn |
| c | Text | `name` | 物品名 |
| c | int | `type` | 产出类型 |
| c | int[] | `buildingSn` | 产出建筑sn |
| c | int[] | `productionSn` | 产出配方sn |
| c | int[] | `petSn` | 产出宠物 |
| c | int | `technologySn` | 需要解锁的科技sn |

### Money.xlsx

**商品列表|Money**（103条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 唯一sn，手机端充值从100开启，直充礼包从10000开始配置 |
| cs | int | `money` | 默认价格(单位美分) |
| cs | String | `moneyType` | 默认货币符号 |
| cs | int | `groupId` | 分组id |
| cs | String | `productid1` | 商品唯一标识（其它PC） |
| cs | String | `productid2` | 商品唯一标识（安卓） |
| cs | String | `productid3` | 商品唯一标识（苹果） |
| cs | int | `bonus` | 普通加赠钻石百分比 |
| cs | String | `bonusItem` | 普通加赠货币（sn:数量） |
| cs | int | `diamondNum` | 钻石数量（mshop会根据这列来找到相应的moneysn） |
| cs | int | `firstBonus` | 首充加赠百分比 |
| cs | String | `firstBonusItem` | 首充加赠物品 |
| s | boolean | `moneyfirst` | 是否触发首充(0,不触发，1触发） |
| s | boolean | `moneyAccumulation` | 是否触发累充(0,不触发，1触发） |
| cs | int | `equalDiamondNum` | 这笔充值折算成的钻石数量（玩家身上累积充的钻石数量用这列来加） |

**国家显示商品项目信息|CountryShowMoney**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | String | `sn` | 国家名称 |
| cs | int[] | `showMoneySn` | 需要显示的商品sn |

**商品图标|MoneyIcon**（12条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 商品顺序 |
| cr | String | `icon` | 图标 |

**首充重置|FirstRechargeReset**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | String | `resetTime` | 结束时间 自然时间              yyyy-MM-dd HH:mm:ss 注意： 1.玩家登录时间和此时间比较，登录时间比这个晚就重置首充，因此填写... |

**商品列表|Money_chntishen**（37条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 唯一sn，手机端充值从100开启，直充礼包从10000开始配置 |
| cs | int | `money` | 默认价格(单位美分) |
| cs | String | `moneyType` | 默认货币符号 |
| cs | int | `groupId` | 分组id |
| cs | String | `productid1` | 商品唯一标识（其它PC） |
| cs | String | `productid2` | 商品唯一标识（安卓） |
| cs | String | `productid3` | 商品唯一标识（苹果） |
| cs | int | `bonus` | 普通加赠钻石百分比 |
| cs | String | `bonusItem` | 普通加赠货币（sn:数量） |
| cs | int | `diamondNum` | 钻石数量（mshop会根据这列来找到相应的moneysn） |
| cs | int | `firstBonus` | 首充加赠百分比 |
| cs | String | `firstBonusItem` | 首充加赠物品 |
| s | boolean | `moneyfirst` | 是否触发首充(0,不触发，1触发） |
| s | boolean | `moneyAccumulation` | 是否触发累充(0,不触发，1触发） |
| cs | int | `equalDiamondNum` | 这笔充值折算成的钻石数量（玩家身上累积充的钻石数量用这列来加） |

**充值合规|Compliance**（7条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 索引 |
| cs | String | `CountriesandRegions` | 合规国家和地区 对应的国家代码（iso_code）（数据来源于GeoIP2-City.mmdb数据库），此国家代码IP分到此战区 |
| cs | int | `minAge` | 年龄下限(闭区间) |
| cs | int | `maxAge` | 年龄上限（开区间） |
| cs | int | `rechargePerMonth` | 每月充值上限，包含此数值 |
| c | Text | `moneyName` | 货币名称 |

### Production.xlsx

**生产配方表|ProductionFormula**（1045条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 配方ID |
| c | String | `desc` | 配方简述 如果不配置走道具描述，显示在生产界面 |
| cs | int | `category` | 配方的分类    6:附魔 5:其他道具 |
| cs | int | `secCategory` | 二级分类 附魔部位 其他道具的分类 |
| cs | String | `consume` | 消耗道具 |
| cs | String | `get` | 单次生产获得道具及数量 |
| c | int | `massProduction` | 是否可以批量生产 0:单次 >0 可以多次 |
| cs | int | `unlocklv` | 等级解锁（随等级解锁配方用，如不配置默认解锁） |
| c | String | `activityDes` | 标题的描述 |
| cs | int | `workLoad` | 生产一次所需的工作量 |
| cs | String | `designParam` | 设计图参数 “:”隔开 参数1：设计图ItemSn 参数2：所需数量 |
| cs | int | `byproductProb` | 好友便当产出概率，万分比值 |
| cs | int | `CraftExp` | 制造该道具的基准经验 |
| cs | int | `orderPriority` | 配方列表排序优先级（数字越小越靠前，数字相同按照sn排序) |

**生产配方标题|ProductionFormulaTab**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 配方ID |
| cs | Text | `tabDesc` | 生产系统右边的大标签的名字  |
| cs | int | `tab` | 生产系统右边的大标签1：附魔 2：配件（附魔以外的其他） |
| cs | int | `mainType` | 对应Item中的type |
| cs | String | `subType` | 对应Item中的stype 对应生产系统中的小标签 空为大类型中的所有 |
| cs | Text | `subTypeDesc` | 小标签的名字 |
| cs | int | `priority` | 小标签的优先级 越小越在前 |