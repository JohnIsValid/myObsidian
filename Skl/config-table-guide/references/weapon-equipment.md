## 武器与装备

### ControlDroneAttribute.xlsx

**无人机属性|DroneAttribute**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | ActorSn |
| cs | float | `LimitDistance` | 无人机限制距离（水平距离）(米) |
| cs | float | `LimitHeight` | 无人机限制高度 |
| cs | int | `BaseHeight` | 基准高度 |
| cs | boolean | `CanBeDetected` | 是否能被敌人察觉 |
| cs | boolean | `CanBeDamaged` | 是否会受到伤害 |
| cs | int | `campId` | 阵营ID |
| cs | float | `UnControlledDestroyTime` | 无人机断连 销毁时间 |
| cs | int | `attrGroupId` | 无人机属性组ID |
| cs | int | `level` | 无人机等级 |
| cs | float | `MoveMaxSpeed` | 最大移动速度 |
| cs | float[] | `MoveDirSpeedScale` | 移动方向移动速度缩放 前,后,左,右,上,下 |
| cs | int[] | `Skill` | 技能列表 |
| cs | float | `BatteryLevel` | 电量 |
| cs | int | `HintMessage` | 关联DroneHintMessage.sn（int，单条；0表示不需要根据目标位置进行信息提示） |
| cs | int | `WantTarget` | 想要交互的目标，会根据此目标的位置进行信息提示 |
| c | boolean | `BlackLoading` | 黑屏过渡 |

**无人机技能|DroneSkill**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| cs | int | `type` | 类型 |
| cs | float | `CD` | CD |
| cs | String | `Param` | 参数 |
| cs | float | `CostBatteryLevel` | 耗电量 |
| cr | String | `Icon` | 图标 |
| c | int | `InteractFailedShowStr` | 交互失败的提示信息（映射到Str表） |

**无人机提示信息|DroneHintMessage**（17条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN（1开头的是距离-提示信息-在该范围的刷新间隔，2开头的是area-提示信息-待在该区域的刷新间隔） |
| cs | float[] | `Distance` | 距离(米) |
| cs | int[] | `StrID` | 提示消息StrID |
| cs | int | `Interval` | 刷新提示的间隔（在发生跨度变化时会立即更新提示，在未发生跨度变化时，则根据间隔刷新提示） |

### ControlDroneInteractActor.xlsx

**无人机互动Actor|DroneInteract**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | ActorSn |
| cs | int | `Actor` | 追踪显示类型 |
| cs | boolean | `ShowDesc` | 是否显示 Actor描述 |
| cs | Text | `DescContent` | Actor 描述文本 |
| cs | boolean | `CanScanner` | 无人机扫描是否高亮特殊显示 |
| cs | int | `InteractType` | 触发交互类型 |
| cs | float | `InteractDistance` | 触发交互距离 |
| cs | int[] | `InteractEndType` | 交互后执行操作 |
| cs | boolean | `CanTrace` | 无人机扫描是否跟踪 |

### EquipMake.xlsx

**保底配置表|Guarantee**（2075条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 保底sn |
| cs | int | `BluePrintSN` | 图纸SN |
| cs | int | `EquipSN` | 装备SN |
| cs | int | `GuaranteeType` | 保底类型 |
| cs | int | `GuaranteeTime` | 所需打造次数 |
| cs | String | `AdvStatNum` | 进阶属性个数 |
| cs | int[] | `AdvStatID` | 进阶属性ID随机池 |
| cs | int[] | `AdvWeight` | 进阶属性ID权重 |
| cs | String | `AdvStatMinMax` | 进阶属性范围 |
| cs | String | `AdvStatMinMaxWeight` | 进阶属性范围权重 |
| cs | String | `AffixGuaranteeNum` | 词条个数 |
| cs | int[] | `AffixID` | 词条随机池ID |
| cs | int[] | `AffixWeight` | 词条权重 |
| cs | int[] | `AffixLevelMinMax` | 词条等级范围 |
| cs | int[] | `AffixLeveIWeight` | 词条等级权重 |
| cs | int | `PremiumScore` | 极品装备评分 |

### Equipment.xlsx

**防具|Armor**（504条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 装备sn |
| cs | int[] | `position` | 装备的部位（1-头 2-上身 3-下身 4-鞋 5-护盾 6-9饰品 |
| cs | int | `suitSn` | 归属套装Sn ArmorSuit表Sn |
| cs | int | `suitPart` | 套装部件编号 |
| cs | String | `prop` | 装备属性模板属性 |
| cs | String | `gradeUpProp` | 升阶属性 （可升阶的物品如饰品，升阶后加的属性） |
| cs | int | `OrnamentGroup` | 饰品组 |
| cs | int | `skill` | 特性技能sn |
| cs | int | `fashionSn` | fashion表的sn |
| c | int | `resGroup` | 图标资源组别 |
| cs | int | `durability` | 基础耐久度 |
| cs | String | `brokenAttr` | 破损时属性 |
| cs | int | `durabilityDamageDivide` | 消耗耐久度参数 (消耗耐久度=受到伤害值/参数,最小为1) |
| cs | String | `durRepairCost` | 耐久度维修花费 |

**防具套装|ArmorSuit**（15条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| c | text | `suitName` | 套装名称 |
| cr | string | `suitIcon` | 套装图标 |
| cs | int[] | `suitPartArr` | 套装部件组成 |

**防具套装效果|ArmorSuitEffect**（25条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `suitSn` | 归属套装Sn =ArmorSuit表Sn |
| cs | int | `partNum` | 所需部件数量 |
| c | text | `desc` | 效果描述 |
| c | int[] | `descParamArr` | 描述参数 |
| cs | int[] | `skillArr` | 套装技能组 =Skill表Sn |

**饰品升阶|OrnamentDegree**（360条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `LevelUpItem` | 升级的Item |
| cs | int | `StarLevel` | 星阶 |
| cs | int | `ExpendItem` | 指定消耗材料 |
| cs | String | `ExpendCurrency` | 消耗货币 |
| cs | int | `GrowthType` | 增益类型 |
| cs | String | `AttrGrow` | 属性增益 |
| cs | String | `addAttr` | 新增属性 |
| c | String | `AttrGrowText` | 显示文本模板（可str配置） |

**饰品强化|OrnamentInfoce**（801条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `OrnamentGroup` | 饰品组 |
| cs | int | `InforceLevel` | 强化等级 |
| cs | int | `ExperienceConsume` | 所需经验 |
| cs | String | `expendCurrency` | 消耗货币 |
| cs | String | `addAttr` | 增加属性 |

**耗材|InforceItem**（75条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `ExperienceBase` | 提供基础经验（0星） |

**装备随机属性|EquipmentRandomAttribute**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| csi | int | `type` | 装备类型 |
| csi | int | `stype` | 装备部位 |
| cs | int | `attrSn` | 属性SN |
| cs | int | `partWeight` | 部位内权重 |
| cs | int[] | `propInterval` | 标准模板属性区间 |
| cs | String | `qualityCoefficient ` | 品质:系数,品质:系数 |
| cs | String | `levelCoefficient ` | 等级段:系数,等级段:系数 |

**强化|IntensifyNew**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `type` | 类型 |
| cs | int | `stype` | 子类型 |
| cs | int | `intensifyLevel` | 强化等级 |
| cs | int | `characterLevelRequired` | 角色需求等级 |
| cs | String | `expendProp` | 消耗道具 |
| cs | int | `expendCurrency` | 消耗货币 |
| cs | int[] | `interval` | 百分比提升区间（主属性） |
| cs | int[] | `weight10` | 权重10次 |
| cs | int[] | `weight20` | 权重20次 |
| cs | int[] | `weight30` | 权重30次 |
| cs | int[] | `weightMax` | 权重。。。。。。 |

**装备分解|EquipmentResolve**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 1：通用武器 2：通用防具 特定装备sn |
| cs | int | `drop1` | 品质=1，分解后drop表Id |
| cs | int | `drop2` | 品质=2，分解后drop表Id |
| cs | int | `drop3` | 品质=3，分解后drop表Id |
| cs | int | `drop4` | 品质=4，分解后drop表Id |
| cs | int | `drop5` | 品质=5，分解后drop表Id |

**星级突破表|StarBreak**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `type` | 类型 |
| cs | int | `stype` | 子类型 |
| cs | int | `starNum` | 完美度星级 |
| cs | int | `unlockStrengthen` | 星级解锁的强化百分比 |
| cs | String | `prop` | 属性 |

**附魔表|Enchantment**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 附魔道具sn |
| cs | int | `type` | 类型 |
| cs | int | `stype` | 部位 |
| cs | int | `skillSn` | 技能sn |
| cs | int | `skillLevel` | 技能等级 |
| cs | String | `expendProp` | 附魔消耗 |
| cs | int | `equipLevelAdded` | 装等加成 |

**装备展示模型|EquipmentShowModel**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cr | String | `staticMesh` | ST名字 |
| cr | String | `skeletalMesh` | SKT名字 |
| c | String | `centerOffset` | 中心位置的偏移量 |
| c | String | `localPosition` | 位置 |
| c | String | `localRotation` | 旋转角度 |
| c | String | `localScale` | Scale缩放 |
| cr | String | `material1` | materials 中的第一个 |
| cr | String | `material2` | materials 中的第二个 |
| cr | String | `material3` | materials 中的第三个 |
| cr | String | `material4` | materials 中的第四个 |
| cr | String | `material5` | materials 中的第五个 |

### EquipmentRes.xlsx

**装备资源|EquipmentRes**（66条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | int | `resGroup` | 组别 |
| c | int | `quality` | 品质 |
| c | int | `levelMin` | 最小穿戴等级（大于等于） |
| c | int | `levelMax` | 最大穿戴等级（小于） |
| cr | String | `imgIcon` | 资源图标 |

### Weapon.xlsx

- **武器类型**（13行×2列）— 辅助sheet，首行: 0, 弓

**武器|Weapon**（235条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 实例ID 索引道具表id 201+武器类型（AA)+ID(ABCD) |
| cs | int | `modificationSn` | 框架sn |
| c | Text | `frame` | 武器框架 |
| csr | String | `template` | 枪械模板 （对应UE的数据蓝图） |
| csr | String | `partAssetName` | 武器部件资源名称 (UI和场景中实际外显部件使用此字段) |
| cs | int | `ammoSn` | 子弹Sn |
| cs | int[] | `position` | 武器槽位 |
| cs | int | `elementType` | 元素类型 1, --无属性 2, --火 3, --水 4, --雷 5, --草 6, --冰 7, --地 8, --暗 9, --龙 |
| cs | int | `useType` | 手感大类 1.手枪 2.中距离 3.近距离 4.重武器 |
| cs | int | `type` | 武器类型 1：突击步枪 2：手枪 3：狙击枪 4：电击枪 5：单发霰弹枪 6：榴弹枪 7：冲锋枪 8：轻机枪 9：射手步枪 10: 双持枪械 11：喷火器 12... |
| cs | int | `typeLarge` | 所属武器大类（改装功能显示） 1：突击步枪 2：手枪 3：狙击枪 4：霰弹枪 5：冲锋枪 6：射手步枪 7：轻机枪 8：特殊枪械  |
| c | Text | `frameDesc` | 框架描述 |
| cr | String | `icon` | 枪械图标资源 (复制请拉公式) 4手枪 3冲锋枪 5狙击 6榴弹 7霰弹枪 8电击枪 |
| csr | String | `pvpHintImg` | pvp提示显示图片 |
| cr | String | `bigImage` | 枪械大图 |
| cr | String | `smallIcon` | 武器小图标 |
| c | int | `aimBulletProgerssUIType` | 准星界面上弹药剩余量的ui类型 0：圆弧形进度条 1：直线型进度条 8发以下会自动匹配分格子样式（大小和样式ui控制） 8发以上可以选择圆弧或直线型进度条 2:... |
| c | boolean | `bCalcAccessoryScore` | 是否参与计算武器配件显示 |
| c | float | `LowAmmoPercent` | 低弹量数量百分比 |
| cs | String | `weaponAttrs` | 武器属性 （一般应包括伤害，弹匣，射速，换弹时长，射程，精准，稳定这7个数值） （如果存在没配的，战斗结算时伤害默认为5，其余配置结算时默认读蓝图中的原始值） |
| cs | int | `bulletPerShot` | 每次射击打出的子弹数量 |
| cs | int | `perAmmoCost` | 每发弹药消耗数量（标注废弃但C++弹道/伤害流程仍在使用） |
| cs | int | `elementStatusType` | 造成元素异常类型 1-火 / 2-草 / 3-地 / 4-雷 / 5-水 / 6-冰 / 7-暗 / 8-毒 |
| cs | int | `elementException` | 元素异常值 |
| cs | int | `skill` | 枪厂技能 |
| s | String | `perkPool1` | 一号位perk池1【技能sn：权重，技能sn：权重】 |
| s | String | `perkPool2` | 二号位perk池1 【技能sn：权重，技能sn：权重】 |
| cs | String | `desc` | 枪的描述 |
| cr | String | `maleAnimation` | 男主角持枪动作 |
| cr | String | `femaleAnimation` | 女主角持枪动作 |
| cs | int | `resGroup` | 资源组别 |
| cs | int | `balanceWeaponDmg` | 公平属性中覆盖武器伤害 |
| cs | int | `durability` | 基础耐久度 |
| cs | String | `brokenAttr` | 破损时属性 |
| cs | int | `durabilityConsume` | 每次攻击消耗耐久度 |
| cs | String | `durRepairCost` | 耐久度维修花费 |
| cs | float | `toughnessDamage` | 破韧伤害 |
| cs | float | `brokenToughnessDamage` | 破损时破韧伤害 |

**伐木采矿武器|WorkWeapon**（8条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 实例ID 索引道具表id 201+武器类型（AA)+ID(ABCD) |
| cs | int | `priority` | 优先级 |
| cs | int | `usage` | 用途（自动识别切换用） 0 武器 1 斧子 2 稿子 |

**改装|Modification**（25条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 框架sn |
| c | Text | `frameName` | 武器框架名称 |
| cs | int | `typeLarge` | 所属武器大类（改装功能显示） 1：突击步枪 2：手枪 3：狙击枪 4：霰弹枪 5：冲锋枪 6：射手步枪 7：轻机枪 8：特殊枪械  |
| cs | int | `defaultTemplate` | 默认模板（武器sn） |
| cs | int | `defaultSkin` | 默认皮肤 |
| cs | int[] | `configurableParts` | 可配件部位（1：枪口，2：枪管，3：瞄准镜，4：握把，5：弹匣，6：枪托，7：下挂） |
| c | float[] | `modificationWeaponViewOffset` | 改装界面武器偏移 |

**武器框架等级|ModificationLevel**（573条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `frame` | 框架sn |
| cs | int | `level` | 等级 |
| cs | int | `playerLevelLimit` | 玩家等级限制 |
| cs | int | `exp` | 升至该等级需要的经验 |

**武器框架等级|ModificationTotalLevel**（25条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `level` | 熟练等级 |
| cs | String | `attr` | 属性 |
| cs | String | `reward` | 道具奖励 |

**可后台生效的武器技能|WeaponBackendSkill**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN（填Skill表SN） |

- **perk**（40行×10列）— 辅助sheet，首行: sn, 品质, perk数量, 特性数量

### WeaponAccessory.xlsx

**武器配件配置|WeaponAccessory**（823条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn  |
| cs | int | `frame` | 武器框架sn |
| cs | int | `type` | 类型（1：枪口，2：枪管，3：瞄准镜，4：握把，5：弹匣，6：枪托，7：下挂） |
| csr | String | `template` | 模型或配置 |
| cs | String | `attr` | 属性 |
| cs | int[] | `weaponType` | 所属武器大类（改装功能显示） 1：突击步枪 2：手枪 3：狙击枪 4：霰弹枪 5：冲锋枪 6：射手步枪 7：轻机枪 8：特殊枪械 |
| cs | String | `costItems` | 消耗材料 |
| cs | int | `activationType` | 激活方式 1：等级解锁 2：道具解锁 |
| cs | int | `activationParam` | 激活参数 等级解锁时该列为等级 |
| c | float[] | `weaponPos` | 改装界面武器位置 |
| c | float[] | `weaponRot` | 改装界面武器旋转 |
| cs | int[] | `mutex` | 互斥配件类型 |
| c | int[] | `hideType` | 隐藏配件类型 |
| cs | String | `meshAdaptation` | 框架适配：使特定武器框架具有对应的显示模型。 |

**配件评分|AccessoryScore**（100条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 配件评分 |
| cs | int | `WeaponDmg` | 伤害万分比 |
| cs | int | `WeaponPrecise` | 精准万分比 |
| cs | int | `WeaponSteady` | 稳定比万分比 |
| cs | int | `ReloadSpd` | 换弹时长万分比 |
| cs | int | `WeaponSpd` | 射速万分比 |
| cs | int | `WeaponEffRange` | 射程万分比 |
| cs | int | `MaxAmmo` | 弹匣万分比 |

**武器配件资源引用|WeaponAccessoryRes**（42条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn  |
| csr | String | `assetDA` | DA资源  |

### WeaponExchange.xlsx

**武器评分交换|WeaponExchangeScore**（670条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 枪械Level  |
| cs | int | `group` | 组 |
| cs | String | `purple` | 紫色消耗 |
| cs | String | `gold` | 金色消耗 |

### WeaponRes.xlsx

**武器资源|WeaponRes**（133条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `resGroup` | 组别 |
| cs | int | `quality` | 品质 |
| cs | int | `levelMin` | 最小穿戴等级（大于等于） |
| cs | int | `levelMax` | 最大穿戴等级（小于） |
| cr | String | `imgIcon` | 资源图标 |
| cr | String | `bigImage` | 大资源图标 |
| cs | int | `skinSn` | 默认皮肤，getType为-1 |

- **Sheet2**（91行×10列）— 辅助sheet，首行: 10, 1, 镭射, 3

- **Sheet1**（230行×14列）— 辅助sheet，首行: 104201, [不翻译]M4-经典迷彩-沙漠黄, SP_Weapon_1002_S_Classic_Desert

### WeaponSkin.xlsx

**枪械皮肤|WeaponSkin**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 编号 |
| cs | Text | `name` | 枪械皮肤名 |
| cs | Text | `desc` | 描述 |
| cs | int[] | `tags` | 标签组 关联【WeaponSkinTag】表 |
| cs | int | `quality` | 品质 |
| cr | String | `bigImg` | 枪械图 |
| cs | int | `parent` | 框架sn |
| cs | int | `getType` | 获取类型 -1：不显示在列表中 0: 默认 1：美金 2：道具 3：跳转界面，获得道具 |
| cs | int | `openUI` | openui 对应的sn |
| cs | String | `param` | 参数1 道具:数量 SN:道具:数量 |
| c | int | `itemSn` | 关联道具表id |
| cs | String | `serialKillSkin` |  |
| cs | int[] | `module` | 配件材质球和模型是否会替换默认材质球和模型 0：不可替换 1：可替换 顺序为： （1：枪口，2：枪管，3：瞄准镜，4：握把，5：弹匣，6：枪托，7：下挂） |
| csr | String | `assetName` | 蓝图模型 |
| c | int[] | `limitOpen` | 活动存在时显示， 数组，逗号间隔，其中任何一个活动出现则出现 |
| cr | String | `WeaponInspect` | 武器检视DA |
| cr | String | `killSelf` | 击杀播报自身 关联【CombatEvaluation】表【sn】列:【icon】列 |

**枪械皮肤标签|WeaponSkinTag**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 编号 |
| c | int | `quality` | 品质 |
| c | String | `tagImg` | 标签背景图 |
| cs | Text | `tagName` | 标签名 |
| c | Text | `desc` | 描述 |