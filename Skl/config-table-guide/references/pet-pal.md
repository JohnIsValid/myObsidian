## 宠物与帕鲁

### Mood.xlsx

**角色心情|Mood**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `GroupId` | 所属分组 1情感状态 2心情状态 |
| csr | String | `MoodIcon` | 心情图片 |
| csr | String | `MoodIconSelect` | 心情选中图片 |
| cs | Text | `MoodDes` | 心情默认描述 |
| cs | boolean | `MoodHide` | 是否临时隐藏 |

**角色心情分组|MoodGroup**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | int | `GroupId` | 所属分组 |
| c | Text | `GroupName` | 分组名字 |

### PalBreed.xlsx

**帕鲁配种|PalBreed**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| cs | int | `petSn1` | 帕鲁1 |
| cs | int | `petSn2` | 帕鲁2 |
| cs | int | `petSnResult` | 合成帕鲁3 |

**帕鲁配种个体值|PalBreedIndividual**（100条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| cs | int | `individual` | 个体值 |
| cs | int | `high` | 上限 |
| cs | int | `low` | 下限 |

**帕鲁配种被动|PalBreedPassiveSkill**（9条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| cs | int | `skillNum` | 被动数量 |
| cs | String | `prob` | 概率 |

### PalEgg.xlsx

**帕鲁蛋|PalEgg**（49条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 帕鲁蛋Sn（与ItemSn相同） |
| c | Text | `name` | 物品容器名字 |
| cr | String | `mesh` | 模型 |
| cs | int | `fitTemperature` | 环境适应温度 |
| cs | int | `birthLinkSn` | 孵化关联 |
| cs | int | `PalEggIncubationTime` | 孵化时间（秒） |

**孵化关联|PalEggBirthLink**（31条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| cs | String | `birthGroups` | 孵化组 |

**孵化组|PalEggBirthGroup**（31条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| cs | String | `birthPals` | 孵化帕鲁 |

### PalTrainer.xlsx

**帕鲁训练家|PalTrainer**（28条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `Type` | 训练家类型 1 是常规训练家 2 是训练家联赛 3 是晋升 |
| cs | int | `TrainerBirth` | 野外训练家birth |
| cs | int | `FlagBirth` | 旗帜birth |
| cr | String | `TrainerHead` | 训练家头像 |
| cs | int | `DescSN` | 描述Str 大地图侧边栏用 |
| cs | int | `PreLevel` | 解锁条件1 玩家等级 |
| cs | int[] | `PreSN` | 解锁条件2 已挑战训练家sn |
| cs | int[] | `PreQuest` | 解锁条件3 需要完成的 前置任务 |
| cs | int | `SceneSN` | 战斗位面 |
| cs | int | `ChallengeTime` | 挑战时长(秒) |
| cs | int | `BeginStorySn` | 开场动画 |
| cs | String | `LeaveLoc` | 回到原场景的坐标 |
| cs | String | `LeaveRot` | 回到原场景的朝向 |
| cs | int | `BirthPointSN` | 新增的，映射PalTrainerBirthPoint的sn，如果启用，战斗场景里会重算玩家、NPC、帕鲁的出生点 |
| cs | int | `PlayerBirthPoint` | 玩家出生点  用BirthSN |
| cs | String | `PlayerPalBirthPoint` | 我方帕鲁出生点，用ActorBirth表的出生点位置来替换 （顺序无所谓） |
| cs | int | `NPCTrainerBirth` | 敌方训练家birth |
| cs | String | `NPCPalBirth` | 敌方帕鲁birth （与元件同面向视角,1主战位置在中,2在左,3在右） |
| c | String | `NPCPalCombat` | 敌方帕鲁战力 |
| cs | int | `EndStorySn` | 结束动画 |
| cs | int | `Reward` | 奖励 |

**训练家出生点|PalTrainerBirthPoint**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | String | `OriginBirthPoint` | 中心点 |
| cs | int | `PlayerBirthPoint` | 玩家出生点  用BirthSN |
| cs | String | `PlayerPalBirthPoint` | 我方帕鲁出生点，用ActorBirth表的出生点位置来替换 （前排左起123） |
| cs | int | `NPCTrainerBirth` | 敌方训练家birth |
| cs | String | `NPCPalBirth` | 敌方帕鲁birth （与元件同面向视角,1主战位置在中,2在左,3在右） |

### Pet.xlsx

**物品容器|PetContainer**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 物品容器类型 |
| c | Text | `name` | 物品容器名字 |
| cs | int | `initSize` | 容器初始容量 |

**宠物图鉴|PetBook**（211条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| c | Text | `name` | 名字 |
| c | String | `serialNum` | 图鉴编号 |
| csr | String | `headIconMini` | 头像Icon(用texture类型) |
| cr | String | `picture` | 立绘图片(用texture类型) |
| cr | String | `FirstPicture` | 首次捕捉背景图 |
| cr | String | `backgroundPicture` | 立绘背景图 |
| cr | String | `unCapturePicture` | 未捕获背景图 |
| cr | String | `showActorHouse` | 图鉴详情场景 |
| c | boolean | `notShowInPetBook` | 默认不显示在图鉴 |
| c | Text | `Desc` | 简介 |
| c | Text | `shortDesc` | 简介 |
| cs | int | `coopAbility` | 伙伴技能SN |
| csi | int | `coopUnluckItemSn` | 伙伴技能解锁道具  不填就是默认解锁 |
| cs | String | `passiveSkillCountRandom` | 被动技能个数随机：个数：权重，个数：权重 |
| cs | int[] | `fixedPassiveSkill` | 固定被动技能 |
| cs | int[] | `passiveSkillRandomPool` | 被动技能随机池 |
| cs | int[] | `passiveSkillRandomWeight` | 被动技能随机概率 |
| cs | int | `maleRandomWeight` | 男性随机概率(百分比) |
| cs | int[] | `workSuitability` | 工作适应性 |
| cs | int[] | `workSuitabilityLv` | 工作适应性初始等级 |
| cs | int[] | `spawnDropSns` | 牧场掉落sn，对应伙伴技能等级 （DropGroup表） |
| cs | boolean | `forbidManualPowerGenerator` | 禁止参与手动发电机工作 |
| c | float[] | `uiModelLookRotation` | 相机角度 |
| c | float | `uiModelLookDistance` | 摄像机与目标距离 |
| c | float[] | `uiModelLookOffset` | 相机偏移（X？？，Y左+右-，Z上-下+） |
| c | float[] | `uiModelLookPitchRange` | 该点位上下转动范围 [1]:min [2]:max |
| c | float[] | `uiModelPos` | 模型位置 |
| c | float[] | `uiModelRotation` | 模型旋转 |
| c | float[] | `uiModelScale` | 缩放比例x,y,z |
| cr | String | `uiModeAnimation` | ui播放动画 |
| c | String | `uiModeSoundName` | ui播放声音 |
| c | float | `appetite` | 食量 |
| cs | int[] | `growUpTaskGroupSn` | 成长任务 |
| cs | int | `firstCaptureDropSn` | 首次捕获掉落 |
| cs | float | `bossPetMeshScale` | boss帕鲁缩放 |
| cs | float | `bossPetCapsuleHalfRadiusScale` | boss帕鲁胶囊提半径缩放 |
| cs | float | `bossPetCapsuleHalfHeightScale` | boss帕鲁胶囊提半高 |
| cs | float | `rarePetMeshScale` | 闪光帕鲁缩放 |
| cs | float | `rarePetCapsuleHalfRadiusScale` | 闪光帕鲁胶囊提半径缩放 |
| cs | float | `rarePetCapsuleHalfHeightScale` | 闪光帕鲁胶囊提半高 |
| c | boolean | `bShow` | 是否显示在图鉴中 |
| s | float | `staminaMultiplier` | 继承主人耐力系数 |
| cs | int | `spawnTime` | 刷新时间 1-白天 2-夜晚 3-白天+夜晚 |
| cs | int[] | `refinePassiveSkillCost` | 洗炼被动技能消耗 |
| cs | int[] | `refinePassiveSkillRandomPool` | 洗炼被动技能随机池 |
| cs | int[] | `refinePassiveSkillRandomWeight` | 洗炼被动技能随机概率 |
| cs | int[] | `refinePassiveSkillGuaranteeRandomPool` | 洗炼被动技能保底随机池 |
| cs | int[] | `refinePassiveSkillGuaranteeRandomWeight` | 洗炼被动技能保底随机概率 |
| cs | int | `refinePassiveSkillGuaranteeTimes` | 洗炼被动技能保底触发次数 |
| cs | int | `minBreedingCount` | 配种次数随机下限 |
| cs | int | `maxBreedingCount` | 配种次数随机上线 |
| cs | int | `breedingRank` | 配种值 |
| cs | int[] | `breedPassiveSkillRandomPool` | 配种被动技能随机池 |
| cs | int[] | `breedPassiveSkillRandomWeight` | 配种被动技能随机概率 |
| cs | int[] | `positions` | 定位列表 |
| cs | int | `breedEggSn` | 配种生出来的蛋 |

**Sheet2**（188条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| c | Text | `name` | 名字 |
| c | float[] | `uiModelPos` | 模型位置 |
| c | float[] | `uiModelRotation` | 模型旋转 |
| c | float[] | `uiModelScale` | 缩放比例x,y,z |
| cr | String | `showActorHouse` | 图鉴详情场景 |
| c | float[] | `uiModelLookRotation` | 相机角度 |
| c | float | `uiModelLookDistance` | 相机与目标距离 |
| c | float[] | `uiModelLookOffset` | 相机偏移 |
| c | float[] | `uiModelLookPitchRange` | 该点位上下转动范围 |

**宠物定位|PetPosition**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | SN |
| c | Text | `name` | 名称 |
| cr | String | `icon` | 图标 |
| cr | String | `icon_Row` | 行结构图标 |

**首次捕捉帕鲁展示|FirstPetShow**（91条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| c | Text | `name` | 名字 |
| c | float[] | `uiModelPos` | 模型位置 |
| c | float[] | `uiModelRotation` | 模型旋转 |
| c | float[] | `uiModelScale` | 缩放比例x,y,z |
| cr | String | `showActorHouse` | 图鉴详情场景 |
| c | int | `ActorHouseColor` | 对应底图品质0-蓝，1-橙 |
| c | float[] | `uiModelLookRotation` | 相机角度 |
| c | float | `uiModelLookDistance` | 相机与目标距离 |
| c | float[] | `uiModelLookOffset` | 相机偏移 |
| c | float[] | `uiModelLookPitchRange` | 该点位上下转动范围 |

**帕鲁品质|PalColor**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| cs | int | `value` | 超过潜力总值 |
| c | Text | `name` | 名称 |
| cr | String | `qualityIconBig` | 品质大图标 |
| cr | String | `qualityIconSmall` | 品质小图标 |
| cr | String | `qualitypicture` | 品质图 |
| c | String | `ani` | 动画名 |

**队伍帕鲁展示|PalTeam**（206条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| c | Text | `name` | 名字 |
| c | float[] | `uiModelPos` | 模型位置 |
| c | float[] | `uiModelRotation` | 模型旋转 |
| c | float[] | `uiModelScale` | 缩放比例x,y,z |
| cr | String | `showActorHouse` | 图鉴详情场景 |
| c | float[] | `uiModelLookRotation` | 相机角度 |
| c | float | `uiModelLookDistance` | 相机与目标距离 |
| c | float[] | `uiModelLookOffset` | 相机偏移 |
| c | float[] | `uiModelLookPitchRange` | 该点位上下转动范围 |
| c | float[] | `palSwitchSuccessEffectScale` | 上阵成功特效缩放比例x,y,z |
| c | int | `bodyType` | 帕鲁体型(1,2,3)对应小中大 |
| cr | String | `TeamShowAnim` |  |
| cr | String | `MvpShowAnim` |  |
| c | float | `MvpShowAnimDelay` |  |

**宠物成长任务|PetGrowUpTask**（100条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int | `goalType` | 触发类型 |
| cs | int[] | `goalParam` | 触发参数 1：宠物捕捉：次数，品质（可空） 2：宠物升级：等级 3：宠物交互：次数,类型，类型… 4：宠物释放技能：次数 5：宠物星级：星级 6:宠物被动技能：... |
| cs | int | `addpoint` | 完成后加点 |
| c | Text | `desc` | 备注1 |
| cs | int | `dropSn` | DropGroup SN（服务端完成任务时真实发奖+客户端预览展示） |

**宠物成长任务组|PetGrowUpTaskGroup**（17条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int[] | `growUpTaskSn` | 成长任务sn |

**成长任务等阶|PetGrowUpTaskRank**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| c | Text | `name` | 等阶名称 |
| cr | String | `icon` |  |
| cs | int | `needPoint` | 所需点数 |
| cs | int | `dropSn` | 奖励 |

**研究等级|PetResearchLevel**（50条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int | `needPoint` | 所需点数 |
| cs | int | `dropSn` | 奖励 |

**被动随机|PetPassiveSkillRandom**（13条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | petbook表passiveSkillRandomPool |
| cs | int[] | `randomAbility` | 随机列表 |
| cs | int[] | `randomWeight` | 随机权重 |

**被动技能分组|PetPassiveSkillViewGroup**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| c | Text | `name` | 名称 |
| c | int | `minLevel` | 等级下限 |
| c | int | `maxLevel` | 等级上限 |

**宠物生病|PetBaseCampWorkerSick**（9条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 生病类型:from:DT_BaseCampWorkerSickDataTable |
| c | Text | `name` |  |
| c | Text | `instruction` | 描述 |
| cr | String | `icon` | 图标 |
| c | int | `petFacialEyeType` | 宠物眼部表情 |
| cs | int | `workSpeed` | 以作业速度%加入变化量 |
| cs | int | `moveSpeed` | 以移动速度%加入变化量 |
| cs | int | `satietyDecrease` | 以满腹度减少量%加入变化量 |
| cs | int | `buffSn` | 获得buff |
| cs | int | `recoveryProbabilityPercentageInPalBox` | PalBox时恢复的概率（%） |
| c | int | `severityIndex` | 生病的严重性 |

**据点作业事件|PetBaseCampWorkerEvent**（11条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 据点作业者事件种类： DT_BaseCampWorkerEventDataTable |
| c | Text | `name` |  |
| c | Text | `displayName` | 状态名 |
| cr | String | `icon` | 状态图标(可以是序列帧) |
| cs | int | `priority` |  |
| cs | int | `triggerSanity` |  |
| cs | boolean | `bAllowInterruptRecoverHungry` |  |
| cs | boolean | `bAllowInterruptSleep` |  |
| cs | boolean | `bAssignableWork` |  |
| cs | boolean | `bAssignableFixedWork` |  |
| cs | int | `triggerSkipCount` |  |
| cs | boolean | `invalid` |  |

**宠物状态信息|CampPetStateInfo**（16条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 宠物的所有状态 |
| cr | String | `icon` | 图标 |
| cr | String | `da` | 帧动画DA |
| c | int | `pos` | 显示的位置 1：中心 2：右上角 3：右下角 |
| cs | int | `priority` | 优先级,数字越大越严重 |

**Sheet1**（206条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| c | Text | `name` | 名字 |
| c | String | `serialNum` | 图鉴编号 |
| csr | String | `headIconMini` | 头像Icon(用texture类型) |
| cr | String | `picture` | 立绘图片(用texture类型) |
| cr | String | `FirstPicture` | 首次捕捉背景图 |
| cr | String | `backgroundPicture` | 立绘背景图 |
| cr | String | `unCapturePicture` | 未捕获背景图 |
| cr | String | `showActorHouse` | 图鉴详情场景 |
| c | boolean | `notShowInPetBook` | 默认不显示在图鉴 |
| c | Text | `Desc` | 简介 |
| c | Text | `shortDesc` | 简介 |
| cs | int | `element1` | 元素1 |
| cs | int | `element2` | 元素2 |
| cs | int | `coopAbility` | 伙伴技能SN |
| cs | int | `coopUnluckItemSn` | 伙伴技能解锁道具  不填就是默认解锁 |
| cs | String | `passiveSkillCountRandom` | 被动技能个数随机：个数：权重，个数：权重 |
| cs | int[] | `fixedPassiveSkill` | 固定被动技能 |
| cs | int[] | `passiveSkillRandomPool` | 被动技能随机池 |
| cs | int[] | `passiveSkillRandomWeight` | 被动技能随机概率 |
| cs | int | `maleRandomWeight` | 男性随机概率(百分比) |
| cs | int[] | `workSuitability` | 工作适应性 |
| cs | int[] | `workSuitabilityLv` | 工作适应性初始等级 |
| cs | int[] | `spawnDropSns` | 牧场掉落sn，对应伙伴技能等级 （DropGroup表） |
| cs | boolean | `forbidManualPowerGenerator` | 禁止参与手动发电机工作 |
| c | float[] | `uiModelLookRotation` | 相机角度 |
| c | float | `uiModelLookDistance` | 摄像机与目标距离 |
| c | float[] | `uiModelLookOffset` | 相机偏移（X？？，Y左+右-，Z上-下+） |
| c | float[] | `uiModelLookPitchRange` | 该点位上下转动范围 [1]:min [2]:max |
| c | float[] | `uiModelPos` | 模型位置 |
| c | float[] | `uiModelRotation` | 模型旋转 |
| c | float[] | `uiModelScale` | 缩放比例x,y,z |
| cr | String | `uiModeAnimation` | ui播放动画 |
| c | String | `uiModeSoundName` | ui播放声音 |
| c | float | `appetite` | 食量 |
| cs | int[] | `growUpTask` | 成长任务 |
| cs | int | `firstCaptureDropSn` | 首次捕获掉落 |
| cs | float | `bossPetMeshScale` | boss帕鲁缩放 |
| cs | float | `rarePetMeshScale` | 闪光帕鲁缩放 |

**捕获等级差系数|CaptureLevelDiffMod**（51条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int | `levelDiff` | 等级差档位（运行时允许最近邻匹配，非精确匹配） |
| cs | float | `playerLevelDiffMod` | 角色等级系数（目标等级−角色等级对应的倍率） |
| cs | float | `captureLevelDiffMod` | 捕获球等级系数（目标等级−球等级对应的倍率） |

### PetCage.xlsx

**宠物牢笼|PetCage**（24条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| e | String | `desc` | 描述信息 （如果不显示笼子需要将scene表中subType改为2） |
| cs | int | `cageBirthSn` | 帕鲁牢笼出生sn |
| cs | int | `sceneSn` | 场景SN |
| cs | int | `sourceType` | 来源类型 |
| cs | int[] | `cageBuffs` | 牢笼里帕鲁添加的buff数组 |
| cs | String | `petList` | 帕鲁随机池 actorId:等级:权重 |
| cs | int[] | `monsterGroupList` | 刷怪组列表 （需要在grouprefresh中同步配置） |
| cs | int | `closeResetTime` | 未开启&&非战斗状态重置时间 |
| cs | int | `reCloseTime` | 打开后重新关闭并重置奖励的时间（s） |
| cs | int | `waitOpenTime` | 击杀敌人后等待打开并领取帕鲁时间（s），超出后重置奖励 |
| cs | float | `monsterGroupDieStr` | 刷怪组清空后的提示半径（单位米，×100转UE距离），范围内玩家触发固定消息码（代码写死） |
| c | int | `smokeBirthSn` | 烟雾出生sn |

### PetDestructible.xlsx

**帕鲁可破坏物|PetDestructible**（147条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn  |
| cs | int[] | `elements` | 破坏属性 （无指定属性则全部填写） |
| cs | int | `hitTimes` | 可破坏次数 |
| cs | boolean | `isSingleTime` | 是否一次性 |
| cs | int | `hitMtgTriggerTime` | 受到几次攻击触发受击蒙太奇，填0不触发 |

### PetPotentialGrowth.xlsx

**潜力成长|PetPotentialGrowth**（24条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn值 |
| cs | int | `Position` | 六维图位置 |
| cs | int | `Attribute` | 属性 |
| cs | int[] | `AttributeNum` | 强化区间 |
| cs | int | `itemSn` | 物品sn |
| cs | int | `itemNum` | 消耗数目 |

### PetSkin.xlsx

**宠物皮肤|PetSkin**（9条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| c | Text | `name` | 皮肤名字 |
| csi | int | `petSn` | 所属宠物sn |
| c | int | `order` | 显示顺序，值越小越靠前 |
| csr | String | `icon` | 头像 |
| cr | String | `image` | 皮肤图标 |
| cr | String | `outfitDataAsset` | 皮肤DA |
| cs | int | `unlockItemSn` | 解锁道具 此物品为自动使用，使用脚本是解锁皮肤 |
| c | Text | `desc` | 皮肤描述 |
| c | Text | `obtainDesc` | 不可获得文本，如果没配openUI则显示这个 |
| c | int | `openUISn` | 获取跳转UI |
| c | Text | `openUIDesc` | 跳转UI描述 |
| cr | String | `showAnimation` | 展示动作,注意配动画名 不是蒙太奇名 |

**皮肤品质|PetSkinQuality**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 品质sn |
| cr | String | `bg` | 品质背景图 |
| c | String | `color` | DT_CommonTextColor中的颜色名 |

### PetStar.xlsx

**帕鲁升星|PetStarUp**（748条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| csi | int | `petSn` | PetSn |
| cs | int | `starLv` | 星级 |
| cs | int | `costNum` | 消耗量 |
| cs | String | `attrValue` | 属性提升万分比 |
| cs | int | `workSuitability` | 工作适应性 |
| cs | int | `workSuitabilityLevel` | 工作适应性提升等级 |
| cs | int | `activeSkill` | 主动技能解锁 |

### PetStrengthen.xlsx

**帕鲁强化|PetStrengthen**（10300条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| csi | int | `MonsterPetSn` | 帕鲁sn |
| cs | int | `Level` | 强化等级 |
| cs | int | `NeedStar` | 所需星级 |
| cs | String | `ItemCost` | 强化消耗道具 |
| cs | String | `CurrencyCost` | 强化消耗货币 |
| cs | String | `AttrUpgrade` | 六维属性提升 |

**帕鲁升星|PetBreakStar**（824条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| csi | int | `MonsterPetSn` | 帕鲁sn |
| cs | int | `StarUpgrade` | 强化星级 |
| cs | int | `UnlockSkill` | 解锁主动技能 |
| cs | String | `CoopSkill` | 伙伴技能等级提升 |
| cs | String | `WorkupGrade` | 工作适应性等级提升 |
| cs | String | `AttrUpgrade` | 六维属性提升 |
| cs | String | `ItemCost` | 强化消耗道具 |
| cs | String | `CurrencyCost` | 强化消耗货币 |

**Sheet1**（400条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| csi | int | `MonsterPetSn` | 帕鲁sn |

### SpecialCapture.xlsx

**特殊捕捉|SpecialCapture**（40条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 洞穴boss的birthSn |
| cs | int | `sceneSn` | 位面sn |
| cs | int | `mappingMonsterBirthSn` | 对应的虚弱怪物birthSn |
| cs | int | `playerEnterBirthSn` | 玩家进入位面的birthSn |
| cs | int | `playerExitBirthSn` | 玩家退出位面的birthSn |
| cs | int | `captureCount` | 捕捉限制次数 |
| c | int | `storySn` | 进入虚弱的storySn |
| c | int | `escapeStorySn` | 逃跑storySn |
| cs | int | `dailyInstanceSn` | 日常副本sn |