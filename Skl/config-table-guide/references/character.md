## 角色与属性

### Attr.xlsx

**属性表|Attr**（130条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | Text | `desc` | 名称 |
| cs | String | `name` | 变量名 |
| cr | String | `icon` | 属性图标 |
| cr | String | `itemIcon` | 属性Icon |
| cs | Text | `desc2` | 属性描述 |
| cs | boolean | `generateBPEnum` | 生成到蓝图枚举中（导表/代码生成阶段使用，非运行时逻辑字段） |
| cs | int | `type` | 属性类型 0=假属性 1=真实属性 2=仅显示用的属性 |
| cs | int | `format` | 属性格式 |
| cs | int | `bonusFormat` | 属性正向/负向显示格式 0=未指定倾向（运行时等价于非负向） 1=正向 2=负向（仅2会触发负向展示） |
| cs | int | `min` | 最小值 |
| cs | int | `max` | 最大值 |
| cs | float | `attrScore` | 属性评分 |
| cs | float | `percentAttrScore` | 百分比属性评分 （用于装备，表示100%的评分） |

**显示属性表|AttrShow**（43条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 排序sn |
| c | int | `attrSn` | 属性 |
| c | int | `attrType` | 属性类型 0.不显示，1.主属性，2.更多属性 |
| c | int | `attrTabName` | 页签分组索引（1-based，对应Param「AttrTabName」数组顺序） 1=基础属性 2=进阶属性 3=元素属性 |
| c | int | `showType` | 显示方式 1.数值型 2.百分比型（当前客户端未消费此字段） |

**元素属性图标|ElementIcon**（9条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 序号 |
| c | Text | `name` | 名称 |
| cr | String | `smallIcon` | 小图标 |
| cr | String | `bigIcon` | 大图标 |

**属性来源|AttrSource**（7条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号必须在1~254之间 |
| c | String | `name` | 名称 |

### Character.xlsx

**角色|Character**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | String | `name` | 角色名称 |
| cs | int | `gender` | 1：男 2：女 |
| cs | int | `skinColor` | 肤色 1=白 2=拉美 3=黑 4=黄 |
| cr | String | `chatIcon` | 聊天头像 |
| csr | String | `bpAssetName` | 蓝图资源名称 |
| csr | String | `bpAssetNameCreateRole` | 在创角界面使用的 蓝图资源名称 |
| csr | String | `bpAssetNameInUI` | 在UI中使用的 蓝图资源名称 |
| cr | String | `substitutioneffect` | 换人特效 |
| c | float[] | `basetintcolor` | 换人材质效果：底色 |
| c | float | `intensity` | 换人材质效果：强度 （控制变身进度） |
| c | float[] | `rimecolor` | 换人材质效果： Rime颜色 |
| c | float | `rimepower` | 换人材质效果： Rime强度 |
| c | boolean | `enableCameraAlpha` | 开启相机半透其他角色效果 |
| c | float | `cameraAlphaStartDis` | 相机半透开始半透距离主角的距离（m） |
| c | float | `cameraAlphaActorHideDis` | 相机半透怪物全透距离（m） |
| c | float | `cameraAlphaActorTransDis` | 相机半透怪物半透到全透过渡距离（m） |
| c | float | `cameraAlphaMinValue` | 相机半透效果最小值 |
| c | float | `cameraAlphaMaxValue` | 相机半透效果最大值 |
| c | float | `cameraAlphaActorMaxCount` | 相机半透效果最大值角色数量 |
| c | int | `CreateRoleSetSn` | 捏脸用到的数据(对应预设的数据)预设方案|CreateRoleSet |
| cs | int[] | `initFashionSnList` | 初始时装列表 |
| cs | int[] | `previewFashionSnList` | 创角预览时装 |
| c | float[] | `fashionViewTargetOffset` | 时装界面角色偏移 |
| c | float[] | `fashionViewActorRotator` | 时装界面角色旋转 |
| cr | String | `nudeModel` | 裸模资源 |
| c | String | `voiceEnd` | 语音资源后缀 |
| c | String | `voiceSwitch` | 语音音色分组 |
| cs | int | `oppositeGenderCharacterSn` | 对应异性charactersn |

**角色等级经验|CharacterLvExp**（50条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN(等级) |
| cs | String | `attrs` | 角色属性 |
| cs | int | `lvExp` | 升到下级所需经验(废弃，正常的去player表) |

**属性加点|AttributePoint**（500条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | Sn |
| csi | int | `AttributeCount` | 加点 |
| csi | int | `AttributeSn` | 属性 |
| cs | int | `Attribute` | 增加属性值 |

**属性名称|AttributeName**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | Sn |
| csi | int | `attrSn` | 属性ID |
| c | Text | `name` | 属性名称 |
| cr | String | `Picture` | 图标资源 |
| c | Text | `Describe` | 属性描述 |
| cs | String | `AttrMax` | 属性上限 |

**等级奖励表|LevelReward**（50条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | Sn |
| csi | int | `Level` | 等级 |
| cs | int | `AddPoint` | 属性点增加 |
| cs | String | `Reward` | 等级奖励 |
| cs | int | `DropReward` | 等级奖励GroupSn |
| cs | String | `PowerLock` | 权限解锁 1：帕鲁等级上限 等级参数 2：地图开启 读关联表参数(SceneBlock) |

**头衔进阶|Title**（24条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | Sn |
| c | Text | `titleName` | 头衔名称 |
| cr | String | `icon` | 图标资源 |
| c | Text | `tinyTitleName` | 头衔小阶段Name |
| cs | int | `unlockServerOpenDays` | 距离服务器开启时间 |
| cs | int | `unlockPlayerLevel` | 佩戴该头衔时的角色等级上限（cap），>0时服务器等级上限会裁到不超过该值 |
| cs | int[] | `upgradeGoal` | 晋升资格  关联晋升头衔配置|AdvanceAim |
| cs | int | `challengeQuest` | 晋升挑战 关联Quest SN |
| c | Text | `challengeDes` | 挑战描述 |
| cs | String | `upgradeRewardItems` | 晋升奖励 |

**晋升头衔配置|TitleUpgradeGoal**（112条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | Sn |
| cs | int | `goalType` | 触发类型： 1 完成任务 2 捕捉宠物 3 高塔boss 4 玩家等级 5 据点等级 6 前置头衔 7 抓捕N种帕鲁 8 拥有X只指定等级的帕鲁 9 拥有X只指... |
| cs | int[] | `goalParam` | 触发参数 1：任务sn 2：宠物sn,个数 3：高塔bossSn 4：玩家等级 5：据点等级 6：前置头衔 7：1,种类个数 8：帕鲁数量，帕鲁等级。 9：帕鲁... |
| c | Text | `goalDes` | 文本 |
| cs | int | `Progress` | 进度 |
| c | int | `OpenUI` | 跳转OpenUI |
| cs | boolean | `RememberOrNot` | 是否需要提前记录 |

### CharacterIdle.xlsx

**休闲动作|CharacterIdle**（24条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 索引sn |
| cr | String | `bpAssetName` | 蓝图资源名 |
|  | Text | `descName` | 名称 |
| c | int | `actionType` | 休闲动作类型 (空手=0；持枪=1) |
| c | float[] | `beginTime` | 开始播放时间区间(秒) |
| c | float[] | `randomWeight` | 动作组随机权重 (总权重1) |
| cr | String[] | `idleMontageGroup1` | 休闲动作组1 |
| c | float[] | `randomWeight1` | 组内动作随机权重 (总权重1) |
| c | float[] | `cdTime1` | 休闲动作的CD时间1 |
| cr | String[] | `idleMontageGroup2` | 休闲动作组2 |
| c | float[] | `randomWeight2` | 组内动作随机权重 (总权重1) |
| c | float[] | `cdTime2` | 休闲动作的CD时间2 |

### CharacterInit.xlsx

**创角列表|CharacterCreate**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
|  | String | `desc` | 备注 |
| csi | int | `characterSn` | 对应角色SN |
| c | int | `order` | 展示顺序 |
| c | float[] | `posOccupation` | 创角界面模型位置 |
| c | float[] | `rotOccupation` | 创角界面模型旋转(注意YZX) |
| c | int | `weight` | 第一次进入创角时随机权重 |
| cs | boolean | `open` | 是否开放角色 True，进入捏脸 False，按钮置灰，上方显示暂未开放 |

### CreateRole.xlsx

- **备注**（37行×3列）— 辅助sheet，首行: 

**创角页签分组|CreateRoleGroup**（200条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 唯一标识 |
| c | int | `skinColor` | 肤色 |
| c | int | `gender` | 性别 1 男性 2 女性 |
| c | int | `firstTabName` | 一级页签名称 |
| c | int | `secondTabName` | 二级页签名称 |
| c | int | `thirdTabName` | 三级页签名称 |
| c | string[] | `valueArray` | 参数组（ 根据类型找对应分页中的SN数组） |
| c | string[] | `IgnoreArray` | 针对不同的预设不显示的列表 |
| c | boolean | `isDisabled` | 是否禁用 -> 不会显示按钮 |
| c | boolean | `isDisabledScene` | 是否禁用 -> 不会显示按钮 场景中的 |

**标签名称|CreateRoleTabName**（43条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 唯一标识 |
| c | Text | `tabName` | 标签名称 |
| cr | string[] | `tabIcon` | 选中图标和未选中图标 |
| c | boolean | `IsNaked` | 是否显示裸模的 |
| c | int | `weight` | 权重 上>下 or 左>右 |
| c | string[] | `EntryCameraTag` | 进入的镜头（男，女） |
| cr | string[] | `Montage` | 切页签时播放的蒙太奇动作（男，女） |
| c | float | `FaceMaskValue` | 捏脸遮罩区域值 |
| c | int | `UICameraType` | Fashion表中的 |

**预设方案|CreateRoleSet**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 唯一标识 |
| c | boolean | `bDefaultHead` | 默认头资源 |
| cr | string | `icon` | 图标资源 |
| cr | string | `headRes` | 预设模型资源 |
| c | string | `skinHeadMaterial` | 默认皮肤头部的材质 |
| cr | string[] | `replaceSkinMaterialHead` | 皮肤材质头部的 1.默认的 2 替换 |
| cr | string[] | `replaceSkinMaterialBody` | 皮肤材质身体的1.默认的 2 替换 |
| c | int | `DefaultHairStyleSn` | 默认的发型参数的sn |
| c | int | `DefaultEyebrowSn` | 默认眉毛参数sn |
| c | int | `DefaultEyeMakeUpSn` | 默认眼妆参数sn |
| c | int | `DefaultPupilcolorSn` | 默认瞳孔参数sn |
| c | int | `DefaultCheekColorSn` | 默认腮红参数sn |
| c | int | `DefaultLipMakeupSn` | 默认唇妆参数sn |
| c | int | `DefaultAppliqueSn` | 默认贴花参数sn |
| c | int | `DefaultMoustacheSn` | 默认胡子参数sn |
| c | int | `DefaultSkinColorSn` | 默认肤色 |
| c | float | `DefaultSkinGlossiness` | 默认的肤色光泽度 |
| cr | string | `DefaultPose` | 默认的脸部动画pose |

**发型参数|CreateRoleHair**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 唯一标识 |
| cr | string | `icon` | 图片 |
| cr | string | `SkeletalMesh` | 发型资源(PT_) |
| c | string[] | `HairMaterials` | 发型资源中发型的材质 |
| c | string | `RootColor` | 发型默认颜色 |
| c | string | `TipColor` | 发梢默认颜色（渐变第二端，与RootColor成对使用） |
| c | boolean | `gradient` | 渐变开关 |
| c | float | `fadeCoe` | 渐变系数 |
| c | int | `fashionSn` | 对应fashion 表中的sn |
| c | boolean | `closeColor` | 是否关闭染色 True 关闭染色 不显示滑杆 False 不关闭染色 |

**妆容参数|CreateRoleMakeup**（106条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 唯一标识 |
| c | int | `type` | 类型 |
| cr | string | `icon` | 图片 |
| cr | string | `modelRes` | 模型资源 |
| c | int[] | `Params` | 资源的参数 |
| c | int | `ExtraParams` | 额外的参数 |
| c | boolean | `IsAllFace` |  |

**妆容参数信息|CreateRoleMakeupParam**（91条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 唯一标识 |
| c | string | `datades` | 备注说明 |
| c | string | `TintColor` | 换色sRGB |
| c | float[] | `UVOffset` | UV偏移(FVector2D) |
| c | float[] | `UVScale` | UV缩放(FVector2D) |
| c | float[] | `UVCenter` | UV(FVector2D) |
| c | float | `UVRotation` | UV旋转角度(默认为0) |
| c | float | `ColorMaskThreold` | 基础颜色 |
| c | float | `ColorMaskScale` | 基础颜色权重 |
| c | float | `NormalMaskThreold` | 法线 |
| c | string | `NormalMaskScale` | 法线权重 |
| cr | string | `BaseColorResName` | 配置的资源路径 |
| cr | string | `BaseNormalResName` | 配置的法线的资源路径 |
| c | string | `BaseColorMask` | 颜色(LinearColor)值 |
| c | string | `NormalMask` | 法线(LinearColor)值 |

**色板参数|CreateRoleColor**（137条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 唯一标识 |
| c | String | `type` | 1=皮肤 2=瞳孔 3=眉毛 4=头发 5=胡子 6=眼影 7=嘴唇 8=贴花 |
| cr | String | `icon` | 图标（预留） |
| c | String | `color` | 颜色色值 |
| c | string[] | `pupilcolor` | 修改瞳孔用到的数据 |

**滑块参数|CreateRoleSlider**（59条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 唯一标识 |
| c | Text | `slidername` | 滑动条内容 |
| c | int[] | `sliderValue` | 客户端展示的数值 |

- **Sheet1**（37行×5列）— 辅助sheet，首行: UV偏移(FVector2D), UV偏移终点(FVector2D)

### Death.xlsx

**死亡过程配置|DeathProcess**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn  |
| c | boolean | `bluePrintDeal` | 是否由蓝图自己处理 蓝图处理 将不走通用逻辑 true/false |
| c | int | `deathEffectSn` | 死亡表现sn（关联DeathEffect表，当前运行时未接入） |
| c | float | `delayTime` | 可以定制死亡到销毁的延迟时间  |
| c | int | `DestoryEffectSn` | 销毁表现sn |

**死亡表现效果|DeathEffect**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn（当前运行时未接入，表已导出但无业务引用） |
| c | int | `type` | 死亡表现类型 0.无 1.sequence 2.动画特效组合 3.纸娃娃组合（当前未按类型分支） |
| c | string | `MTGName` | 动画MTG名称（当前未接入） |
| c | string | `niagaraName` | 特效名称（当前未接入） |

**销毁表现效果|DestroyEffect**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn  |
| c | int | `type` | 销毁表现类型 0.无表现 1.溶解 2.破碎 3.特效（当前实现仅走溶解，未按type分支） |
| c | string | `effectName` | 对应效果的名字（当前未读取，固定走溶解效果） |
| c | float | `durationTime` | 溶解效果持续时间（当前唯一生效字段） |

### Fashion.xlsx

**时装|Fashion**（96条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 时装ID规则： [类型2][性别1][品质2][索引3] 即每品质、性别最多投放1000件 |
| cs | Text | `name` | 名称 |
| cs | int | `type` | 类型 2-头发   3-面饰   4-妆容 5-身体（上半身）6-身体（下半身） 7-身体（全身） 8-鞋子  9-前腰饰 10-纹身  11-背包   12-... |
| cs | int | `gender` | 性别 男性=1 女性=2 通用=0 |
| cs | int | `itemType` | 时装=0 装备=1 重要物品=2 默认模型=3（3不参与时装衣柜列表） |
| cs | int[] | `limitFuncOpenSn` | 限时功能开启Sn |
| c | int[] | `modelType` | 部件类型 部件配置多个时用 |
| csr | String[] | `model` | 部件蓝图名称 |
| cr | String | `showModelActor` | 脱离演员纯展示的Actor 目前用作滑翔伞 |
| cs | int | `ItemSn` | Item表ItemSn |
| cs | int | `color` | 品质 |
| cr | String | `icon` | 图标 |
| cs | String | `getCostItem` | 购买或兑换所需物品 |
| c | Text | `desc` | 时装介绍 |
| c | boolean | `isWholeBodyNotHasHair` | 套装情况下，是否不含头发 |
| c | boolean | `HideHead` | 是否隐藏头模型 |
| cs | int[] | `mutexFashionType` | 穿戴时互斥的时装类型 |
| cs | int[] | `mutexFashionSn` | 互斥的时装Sn |
| cs | String[] | `hideFashionType` | 隐藏的时装类型 当此时装穿戴时，要穿戴的时装与此时装的隐藏关系,示例：2:1,3:0 1代表优先显示要穿戴，隐藏当前时装，0代表要穿的隐藏，显示正在装备的 |
| cs | String[] | `hideFashionSn` | 隐藏的时装Sn 格式为「时装Sn:标志」（0=当前隐藏目标Sn 1=目标Sn存在时隐藏当前槽位），与hideFashionType平行 |
| c | Text | `source` | 时装来源 |
| cs | int | `baseCharmValue` | 基础魅力值 |
| cs | String[] | `tag` | 特定标记，用于互斥规则（被对方mutexFashionTag匹配时触发互斥） |
| cs | String[] | `mutexFashionTag` | 互斥特定标记（本行任一字符串若出现在对方tag中则互斥） |
| cs | int[] | `dyeingArea` | 染色 一个sn是一个染色区域 |
| cr | String[] | `materialInstances` | 染色需要修改的材质 |
| cr | String[] | `textures` | 染色需要修改材质的贴图 |
| cr | string | `iconSpecialTag` | 特色标签图标 |

**时装展示|FashionViewLabel**（24条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 唯一标识 |
| c | Text | `tabName` | 标签名称 |
| cr | string[] | `tabIcon` | 选中图标和未选中图标 |
| c | int | `weight` | 排序 |
| c | int | `type` | 部位类型 |
| c | int | `parentLabel` | 父级页签 |
| c | int[] | `childLabelList` | 子页签列表 |
| c | int[] | `redPoint` | 红点 |
| c | boolean | `bShow` | 是否显示 |

**时装类型|FashionType**（15条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 类型sn |
| c | Text | `name` | 时装类型 |
| c | float[] | `cameraRotation` | 切换到改时装类型时摄像机旋转 |
| c | String | `lookAtBoneName` | 摄像机关注的骨骼点 |
| c | float[] | `cameraLocalOffset` | 时装界面摄像机偏移 （Y左+右-，Z上-下+） |
| c | float[] | `cameraMinLocalOffset` | 时装界面摄像机偏移 （Y左+右-，Z上-下+） |
| c | float[] | `cameraMaxLocalOffset` | 时装界面摄像机偏移 （Y左+右-，Z上-下+） |
| c | float | `cameraSpringArmChangeRate` | 摄像机摇杆拉伸距离倍数，调整拉近拉远速度 |
| c | float[] | `cameraSpringArmLengthRange` | 摄像机与目标距离 [1]默认 [2]min 最近 [3]max 最远 |
| cr | String | `uiDisplayAnimation` | 时装界面展示动作 |
| c | float | `displayAnimTime` | 展示动作间隔时间 |
| cs | boolean | `takeOff` | 是否支持脱下 True，支持，列表第一个显示卸下图标 False，不支持 默认不支持 |
| c | boolean | `tempOpen` | 配置临时开启或关闭， 正式之后全部为true |
| c | int | `tempOpenTips` | 关闭时才有提示 |

**基础相机参数|FashionCameraParam**（15条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 类型sn |
| c | Text | `name` | 时装类型 |
| c | float[] | `cameraMinRotation` | 切换到改时装类型时摄像机旋转 |
| c | float[] | `cameraMaxRotation` | 切换到改时装类型时摄像机旋转 |
| c | float[] | `cameraMinLookAtOffset` | 时装界面最近点主视的的位置偏移 (一般是对应部位) |
| c | float[] | `cameraMaxLookAtOffset` | 时装界面最远点主视的的位置偏移 (一般是角色正中) |
| c | float[] | `uimodelRotation` | 模型相对于socket的旋转 |
| c | float | `wheelRatio` | 摄像机摇杆拉伸距离倍数，对鼠标滚轮的倍率 |
| c | float[] | `cameraSpringArmLengthRange` | 摄像机与目标距离 [1]默认 [2]min 最近 [3]max 最远 |
| cr | String | `uiDisplayAnimation` | 时装界面展示动作 |
| c | float | `displayAnimTime` | 展示动作间隔时间 |
| c | Boolean | `takeOff` | 是否支持脱下 True，支持，列表第一个显示卸下图标 False，不支持 默认不支持 |
| c | Boolean | `tempOpen` | 配置临时开启或关闭， 正式之后全部为true |
| c | int | `tempOpenTips` | 关闭时才有提示 |

**时装染色区域|FashionDyeingArea**（67条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| e | String | `desc` | 描述信息 |
| c | String | `layer` | 染色通道 |
| cs | int[] | `dyeingColors` | 可染色块 |

**染色色块|FashionAreaColors**（574条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn 对应BitSet中的每一位索引 只可递增，不可删除修改插入 |
| e | String | `desc` | 描述信息 |
| c | String | `uiParam` | 界面上的参数，颜色值或者图片  换色类的涂装，在此处配置RGBA色值 |
| cs | String[] | `dyeingCostItem` | 购买或兑换所需物品 注意：颜色参数相同，消耗道具不同的情况下认为这是不一样的色块，请重新再起一行，不要用一个sn |
| c | int | `weight` | 权重 仅作客户端颜色显示排序用 大端优先显示 |
| c | Boolean | `isRare` | 是否显示稀有 |
| cs | int | `charmValue` | 魅力值 |

**时装保存栏位|FashionPreset**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 时装保存栏位sn |
| cs | int | `presetField` | 保存栏位 |
| cs | int | `unlockType` | 解锁类型 1.自动解锁 2.等级 3.货币 |
| cs | String | `unlockParams` | 解锁参数 等级：1 货币类型：货币数量 |

**场景时装|SceneFashionCameraParam**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 衣柜birthsn |
| c | Location | `actorPos` | 玩家展示位置 |
| c | float[] | `actorRot` | 玩家旋转 |
| c | float | `cameraEnterTime` | 摄像机进入时间 |
| c | float  | `cameraExitTime` | 摄像机退出时间 |
| c | float | `wheelScale` | 滚轮滑动的系数 |
| c | Location | `cameraPos_Hair` | 头发摄像机位置 |
| c | float[] | `cameraRot_Hair` | 头发摄像机旋转 |
| c | float | `cameraFOV_Hair` | 头发摄像机FOV |
| c | Location | `cameraPos_FaceGear` | 面饰摄像机位置 |
| c | float[] | `cameraRot_FaceGear` | 面饰摄像机旋转 |
| c | float | `cameraFOV_FaceGear` | 面饰摄像机FOV |
| c | Location | `cameraPos_Makeup` | 妆容摄像机位置 |
| c | float[] | `cameraRot_Makeup` | 妆容摄像机旋转 |
| c | float | `cameraFOV_Makeup` | 妆容摄像机FOV |
| c | Location | `cameraPos_BodyUpper` | 身体（上半身）摄像机位置 |
| c | float[] | `cameraRot_BodyUpper` | 身体（上半身）摄像机旋转 |
| c | float | `cameraFOV_BodyUpper` | 身体（上半身）摄像机FOV |
| c | Location | `cameraPos_BodyLower` | 身体（下半身）摄像机位置 |
| c | float[] | `cameraRot_BodyLower` | 身体（下半身）摄像机旋转 |
| c | float | `cameraFOV_BodyLower` | 身体（下半身）摄像机FOV |
| c | Location | `cameraPos_BodyWhole` | 身体（全身）摄像机位置 |
| c | float[] | `cameraRot_BodyWhole` | 身体（全身）摄像机旋转 |
| c | float | `cameraFOV_BodyWhole` | 身体（全身）摄像机FOV |
| c | Location | `cameraPos_Shoes` | 鞋子摄像机位置 |
| c | float[] | `cameraRot_Shoes` | 鞋子摄像机旋转 |
| c | float | `cameraFOV_Shoes` | 鞋子摄像机FOV |

### PersonalizedDress.xlsx

**头像|PDAvatar**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 头像Sn |
| c | int[] | `filter` | 筛选类别 0：无类别 1：荣誉 2：社交 3：运营活动 |
| cr | String | `picture` | 展示资源 |
| cr | String | `effect` | 展示特效 |
| c | Text | `name` | 名称 |
| c | Text | `desc` | 描述 |
| cs | int | `expirationType` | 使用期限类型  |
| cs | String | `expiration` | 使用时间 |
| cs | int | `unlockType` | 解锁途径 |
| cs | int[] | `unlockParam` | 解锁参数 |
| c | int | `displayOrder` | 显示顺序 （排序优先级 displayOrder>sn） |
| cs | int[] | `limitFuncOpenSn` | 限时功能开启Sn |
| cs | int | `relockable` | 是否可再次获取 （0：不可再次获取， 1：可再次获取） |

**名片|PDCard**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 名片Sn |
| c | int[] | `filter` | 筛选类别 0：无类别 11：荣誉 12：社交 13：运营活动 |
| cr | String | `picture` | 展示资源 |
| cr | String | `effect` | 展示特效 |
| c | Text | `name` | 名称 |
| c | Text | `desc` | 描述 |
| cs | int | `expirationType` | 使用期限类型 |
| cs | String | `expiration` | 使用时间 |
| cs | int | `unlockType` | 解锁途径 |
| cs | int[] | `unlockParam` | 解锁参数 |
| c | int | `displayOrder` | 显示顺序 （排序优先级 displayOrder>sn） |
| cs | int[] | `limitFuncOpenSn` | 限时功能开启Sn |
| cs | int | `relockable` | 是否可再次获取 （0：不可再次获取， 1：可再次获取） |

**头像框|PDAvatarFrame**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 头像框Sn |
| c | int[] | `filter` | 筛选类别 0：无类别 21：荣誉 22：社交 23：运营活动 |
| cr | String | `picture` | 展示资源 |
| cr | String | `effect` | 展示特效 |
| c | Text | `name` | 名称 |
| c | Text | `desc` | 描述 |
| cs | int | `expirationType` | 使用期限类型 |
| cs | String | `expiration` | 使用时间 |
| cs | int | `unlockType` | 解锁途径 |
| cs | int[] | `unlockParam` | 解锁参数 |
| c | int | `displayOrder` | 显示顺序 （排序优先级 displayOrder>sn） |
| cs | int[] | `limitFuncOpenSn` | 限时功能开启Sn |
| cs | int | `relockable` | 是否可再次获取 （0：不可再次获取， 1：可再次获取） |

**称号|PDTitle**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 称号Sn |
| c | int[] | `filter` | 筛选类别 0：无类别 31：荣誉 32：社交 33：运营活动 |
| cr | String | `picture` | 展示资源 |
| c | Text | `name` | 名称 |
| c | Text | `desc` | 描述 |
| cs | int | `expirationType` | 使用期限类型 |
| cs | String | `expiration` | 使用时间 |
| cs | int | `unlockType` | 解锁途径 |
| cs | int[] | `unlockParam` | 解锁参数 |
| cs | int | `quality` | 品质 |
| c | int | `rarity` | 稀有度 |
| c | int | `displayOrder` | 显示顺序 （排序优先级默认 quality>rarity>displayOrder>sn） |
| cs | int | `level` | 等级 |
| cs | int | `groupSn` | 系列编号 （同一系列只显示最高等级） |
| cs | int[] | `limitFuncOpenSn` | 限时功能开启Sn |
| cs | int | `relockable` | 是否可再次获取 （0：不可再次获取， 1：可再次获取） |

**聊天气泡|PDChatBubbles**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 聊天气泡Sn |
| c | int[] | `filter` | 筛选类别 0：无类别 41：荣誉 42：社交 43：运营活动 |
| cr | String | `picture` | 展示资源 |
| c | Text | `name` | 名称 |
| c | Text | `desc` | 描述 |
| cs | int | `expirationType` | 使用期限类型 |
| cs | String | `expiration` | 使用时间 |
| cs | int | `unlockType` | 解锁途径 |
| cs | int[] | `unlockParam` | 解锁参数 |
| c | int | `displayOrder` | 显示顺序 （排序优先级 displayOrder>sn） |
| cs | int[] | `limitFuncOpenSn` | 限时功能开启Sn |
| cs | int | `relockable` | 是否可再次获取 （0：不可再次获取， 1：可再次获取） |

**筛选类别|PDFilterTypes**（18条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 筛选类别Sn |
| c | int | `type` | 所属分类 1：头像 2：名片 3：头像框 4：称号 5：聊天气泡 |
| c | Text | `name` | 显示名称 |

**个人装扮显示信息|PDTypeShowInfo**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 个人装扮分类sn |
| c | Text | `name` | 名称 |
| c | int | `showOrder` | 显示顺序 |
| cs | int | `defaultSn` | 默认Sn |
| cs | String | `defaultParams` | 特殊类型的DefaultSn，目前只有头像使用 characterSn1:pdSn1,characterSn2:pdSn2… |

**装扮排序|PDOrder**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 类别Sn公式生成 |
| c | int | `type` | 所属分类 1：头像 2：名片 3：头像框 4：称号 5：聊天气泡 |
| c | Text | `name` | 显示名称 |
| c | int | `inTypeSn` | 组内序号（当前Tab顺序按PDOrder的sn排序，此字段未参与排序逻辑） |
| c | String[] | `orderOp` | 排序操作 （数组长度需要与orderField严格相等，">"代表降序排列，"<"代表升序排列） |
| c | String[] | `orderField` | 排序字段 (数组顺序代表排序优先级，如"quality,displayOrder"，代表先按照quality字段排序，当quality相等时再按照display... |

### Player.xlsx

**冒险等级经验|PlayerLvExp**（56条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 角色等级 |
| cs | long | `LvExp` | 升至下级所需经验 |
| cs | float | `LvExpAddRateMax` | 最高加成系数 |
| cs | int | `combat` | 下一级提升的战力（当前服务端逻辑未消费此字段，仅配置/校验器使用） |
| cs | int[] | `LvTechPoint` | 升到本级获得科技/古代科技点 |
| cs | int | `ExpLimit` | 等级达到上限后，是否可以继续获得经验及存储的经验上限： <0：可以继续获得经验且无存储上限 0：不可继续获得经验 >0：可以继续获得经验且该值即存储上限 暂定最... |
| cs | float | `ExpMulPerLevel` | 角色等级系数（当前未参与升级/经验计算逻辑） |

**经验值获取衰减|ExpDecay**（61条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | 等级差（怪物等级-我的等级 |
| s | int | `Rate` | 衰减率（单位百分比，即13代表0.13或13%） 减少填负值，增加填正值 |

**服务器等级上限|ServerLvLimit**（60条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `OpenDays` | 开服天数（可配置不连续）CBT3改为按角色进服天数 |
| cs | int | `LevelLimit` | 等级上限 |
| cs | int | `LvExpAddLimitMin` | 当角色等级大于此值开启经验加成 |
| cs | int | `LvExpAddLimitMax` | 当角色等级小于此值开启经验加成 |
| cs | float | `LevelExpAddE` | 开服天数参数 |
| cs | float | `LevelExpAddG` | 开服天数比较参数 |

**服务器等级上限|ServerLvLimit_tishen**（60条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `OpenDays` | 开服天数（可配置不连续）CBT3改为按角色进服天数 |
| cs | int | `LevelLimit` | 等级上限 |
| cs | int | `LvExpAddLimitMin` | 当角色等级大于此值开启经验加成 |
| cs | int | `LvExpAddLimitMax` | 当角色等级小于此值开启经验加成 |
| cs | float | `LevelExpAddE` | 开服天数参数 |
| cs | float | `LevelExpAddG` | 开服天数比较参数 |
| cs | int | `ExpLimit` | 等级达到上限后，是否可以继续获得经验及存储的经验上限： <0：可以继续获得经验且无存储上限 0：不可继续获得经验 >0：可以继续获得经验且该值即存储上限 暂定最... |

**服务器经验加成|ServerExpAdd**（297条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 主键 |
| cs | int | `LevelDiff` | 低于服务器日期对应等级的等级数值 |
| cs | int | `AddRate` | 经验加成系数（万分比） |

**宠物等级|PetExpLv**（50条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 角色等级 |
| cs | long | `LvExp` | 升至下级所需经验 |

**宠物经验折算|PetExpAddRate**（23条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | 等级差（宠物等级-我的等级 |
| s | float | `rate` | 经验折算率(>=0) |

**宠物捕获经验|PetCaptureExp**（3999条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 玩家累计捕捉总次数档位（主键） |
| cs | int | `exp` | 角色（玩家）经验（非宠物经验） |

### VictoryMotion.xlsx

**胜利动作|VictoryMotion**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | SN（当前表已导出但未接入战斗/结算表现逻辑） |
| cr | String | `Icon` | Icon |
| cr | String | `Montage` | Montage |