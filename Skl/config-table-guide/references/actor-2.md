## Actor与实体（续）

### Actor_2_Monster.xlsx

**Actor_Monster**（1902条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | Text | `name` | 游戏中名称 |
| csr | String | `bpAssetName` | 蓝图资源名称 |
|  | Text | `desc` | 显示备注 |
| cs | int | `type` | 演员类型 点击查看具体分类 |
| cs | int | `subType` | 子类型 |
| c | float | `lifebarlength` | 血条长度 缩放比例 |
| cs | float | `modelScale` | 模型尺寸缩放 0=蓝图默认值 |
| cs | int | `AIAttr` | AI属性 读取AIAttr表 会被ActorBirth覆盖 |
| cs | int[] | `behaviorTrees` | 使用的所有行为树 |
| cs | int | `attrGroupId` | 属性组Id |
| cs | int | `level` | 等级 |
| cs | int | `deathDropSn` | 死亡掉落 |
| s | int | `greenBulletDropSn` | 绿色子弹掉落 |
| s | int | `purpleBulletDropSn` | 紫色子弹掉落 |
| cs | int | `attackDropSn` | 攻击掉落 (对怪物造成伤害) |
| cr | String | `interactiveIcon` | 交互图标 |
| cs | float | `interactiveDistance` | 交互距离 （m） |
| cs | boolean | `InteractServerCheck` | 交互物体客户端检测默认  False客户端检测显示Icon  True服务器检测显示Icon |
| cs | int | `interactiveAngle` | 交互角度限制  （NPC)  |
| c | boolean | `isOverlayMat` | 交互范围内 是否显示描边 |
| csr | String[] | `defaultAbilities` | 默认挂载技能 |
| cs | int | `campId` | 阵营ID |
| cs | int | `Monster_SlowWalkSpeed` | 基础移动速度 巡逻 |
| cs | int | `Monster_WalkSpeed` | 基础移动速度 环绕 |
| cs | int | `Monster_TransportSpeed` | 基础移动速度 搬运 |
| cs | int | `Monster_RunSpeed` | 基础移动速度 跑步 |
| cs | int | `Monster_EscapeSpeed` | 基础移动速度 逃跑 |
| cs | int | `Monster_RideSprintSpeed` | 基础移动速度 加速 |
| cs | int | `Monster_SwimSpeed` | 游泳速度 |
| cs | int | `Monster_SwimDashSpeed` | 游泳疾速 |
| cs | boolean | `Monster_isSleep` | 是否夜晚睡觉 |
| cs | int | `Monster_actorSize` | 怪物尺寸 0=XS  1=S  2=M  3=L  4=XL |
| cs | int | `Monster_biologicalGrade` | 生物等级 影响AIResponse判定 |
| cs | int | `Monster_Role` | 职业定位 0=默认 1=坦克 2=输出 3=辅助 |
| cs | String | `Monster_BattleBGM` | 战斗BGM |
| cs | int | `Monster_soldierType` | 兵种类型血条显示 |
| cr | String[] | `Monster_TraceEnemyArrowRes` | 敌人指引箭头资源 |
| cs | int | `Monster_addiAttrGroupId` | 怪物动态等级 附加属性组 |
| c | int | `Monster_ArrowShowDis` | 入战箭头显示距离 不填读Param表默认 |
| c | int | `Monster_HeadUpWidgetType` | 特殊血条类型 |
| cs | int | `Monster_element1` | 元素1 0=无效 1=无属性 2=火 3=水 4=雷 5=草 6=冰 7=地 8=暗 9=龙 |
| cs | int | `Monster_element2` | 元素2 0=无效 1=无属性 2=火 3=水 4=雷 5=草 6=冰 7=地 8=暗 9=龙 |
| cs | boolean | `Monster_canNooseTrap` | 能否套索陷阱捕获 XS和S才会触发套索 |
| s | String | `Monster_levelAbilities` | 等级解锁的技能SN 冒号逗号分隔 |
| s | int | `Monster_normalAbility` | 普攻技能SN |
| cs | int | `Monster_captureAbility` | 捕捉时带下来的技能 |
| c | int | `Monster_DieDisslove` | 是否需要死亡溶解 |
| cs | int[] | `Monster_elementImmune` | 元素异常免疫类型 1=火，2=草 3=地，4=雷 5=水，6=冰 7=暗，8=毒 |
| cs | float | `Monster_elementStatus_ResistanceGrowFactor` | 耐性增加系数 |
| cs | float | `Monster_elementStatusDamageRate` | 元素异常伤害系数 |
| cs | Text | `Monster_title` | BOSS称号 |
| cs | boolean | `Monster_canBeCaptured` | 是否能被捕捉 |
| cs | boolean | `Monster_canBeDeadCaptured` | 死亡后是否能被捕捉 |
| cs | int | `Monster_petSN` | 捕捉后宠物SN |
| cs | float | `Monster_capturedHpPercent` | 捕捉后血量百分比 |
| cs | float | `Monster_captureMultiRate` | 捕获加成概率（乘算） |
| cs | float | `Monster_paidCaptureMultiRate` | 付费球捕获加成概率（乘算） |
| s | float | `Monster_captureServerMultiRate` | 服务器隐藏捕获加成概率（乘算） |
| s | String | `Monster_captureServerFixedRatioWithHP` | 服务器隐藏捕获固定概率和血量关联 |
| cs | int | `Monster_npc_kill_drop` | NPC击杀能否触发掉落 需要配合公用掉落组 |
| c | boolean | `Monster_bHeadupHideLevelText` | 是否隐藏头顶 等级文字 |
| cs | int[] | `Monster_characteristicTags` | 特征Tag列表 引至ActorCharacteristicTags |
| cs | int | `Monster_hpTribeValue` | 血量种族值 |
| cs | int | `Monster_atkTribeValue` | 物攻种族值 |
| cs | int | `Monster_defTribeValue` | 物防种族值 |
| cs | int | `Monster_mgcTribeValue` | 魔攻种族值 |
| cs | int | `Monster_macTribeValue` | 魔防种族值 |
| cs | String | `Monster_hpIndividualRandom` | 血量个体值随机 (值：概率，值：概率) |
| cs | String | `Monster_defIndividualRandom` | 物防个体值随机 (值：概率，值：概率) |
| cs | String | `Monster_atkIndividualRandom` | 物攻个体值随机 (值：概率，值：概率) |
| cs | String | `Monster_macIndividualRandom` | 魔防个体值随机 (值：概率，值：概率) |
| cs | String | `Monster_mgcIndividualRandom` | 魔攻个体值随机 (值：概率，值：概率) |
| cs | String | `Monster_wspIndividualRandom` | 工作速度个体值随机 (值：概率，值：概率) |
| cs | int | `Monster_maleProbability` | 男性随机概率 百分比值 |
| cs | float | `Monster_hpValueAttrMultiply` | 血量倍率 |
| cs | float | `Monster_atkValueAttrMultiply` | 物攻倍率 |
| cs | float | `Monster_defValueAttrMultiply` | 物防倍率 |
| cs | float | `Monster_mgcValueAttrMultiply` | 魔攻倍率 |
| cs | float | `Monster_macValueAttrMultiply` | 魔防倍率 |
| cs | String | `Monster_param` | 类型参数 |
| cs | int[] | `Monster_SpecialTags` | 特殊Tag 怪物生成时添加 1:免疫击飞 |
| cs | int | `Monster_angerTimes` | 激怒状态触发次数 （捕捉失败） |
| cs | int | `Monster_angerDuringTime` | 激怒状态多久 进入撤离状态 <=0不会撤离 |
| cs | int | `Monster_destroyTime` | 死亡尸体存留时间 |
| cs | int[] | `Monster_isDissolve` | 是否使用溶解效果 （出生,销毁） 0=不溶解 1=溶解 |
| c | int | `Monster_hideBossHeadupDis` | BOSS血条隐藏距离 OverrideParam配置 |
| c | boolean | `Monster_showHeadup` | 是否显示头顶UI |
| c | int | `Monster_ShowHeadUpDistance` | 显示头顶距离 |
| s | int | `Monster_toughnessSn` | 韧性配置Sn，仅当有值时启用韧性系统 |
| cs | String[] | `Tags` | 摆放建筑重叠检测Tag （配置则走Tag机制，否则走自己原来的机制） |
| cr | String | `Sound` | 首次捕捉弹窗音效 |

**Temp_Monster**（206条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs |  | `intensity` | 强度 |
| cs | Text | `name` | 游戏中名称 |
| csr | String | `bpAssetName` | 蓝图资源名称 |
| cs | int | `type` | 演员类型 点击查看具体分类 |
| cs | int | `subType` | 子类型 1=宠物 2=普通帕鲁 3=稀有帕鲁 4=野外BOSS 5=随机地下城BOSS 6=秘域BOSS 7=塔主 8=突袭BOSS 9=突袭仆从 10=捕食者... |
| c | float | `lifebarlength` | 血条长度缩放比例 |
| cs | float | `modelScale` | 模型尺寸缩放 0=蓝图中的默认值 |
| cs | int | `AIAttr` | AI属性 会被ActorBirth 属性覆盖 |
| cs | int[] | `behaviorTrees` | 使用所有行为树 |
| cs | int | `attrGroupId` | 属性组Id |
| cs | int | `level` | 等级 |
| s | int | `deathDropSn` | 死亡掉落 |
| s | int | `greenBulletDropSn` | 绿色子弹掉落 |
| s | int | `purpleBulletDropSn` | 紫色子弹掉落 |
| s | int | `attackDropSn` | 攻击掉落 (对怪物造成伤害) |
| cr | String | `interactiveIcon` | 交互图标 |
| cs | float | `interactiveDistance` | 交互距离 （m） |
| cs | boolean | `InteractServerCheck` | 交互物体客户端检测默认 False客户端检测显示Icon True服务器检测显示Icon |
| cs | int | `interactiveAngle` | 交互角度限制（NPC)  |
| c | boolean | `isOverlayMat` | 交互范围内 是否显示描边 |
| csr | String[] | `defaultAbilities` | 默认挂载技能 |
| cs | int | `campId` | 阵营ID |
| cs | int | `Monster_SlowWalkSpeed` | 基础移动速度 慢速 |
| cs | int | `Monster_WalkSpeed` | 基础移动速度 巡逻 |
| cs | int | `Monster_TransportSpeed` | 基础移动速度 搬运 |
| cs | int | `Monster_RunSpeed` | 基础移动速度 跑步 |
| cs | int | `Monster_EscapeSpeed` | 基础移动速度 逃跑 |
| cs | int | `Monster_RideSprintSpeed` | 基础移动速度 加速 |
| cs | int | `Monster_SwimSpeed` | 游泳速度 |
| cs | int | `Monster_SwimDashSpeed` | 游泳疾速 |
| cs | boolean | `Monster_isSleep` | 是否夜晚睡觉 |
| cs | int | `Monster_actorSize` | 怪物尺寸 0=XS  1=S  2=M  3=L  4=XL |
| cs | int | `Monster_biologicalGrade` | 生物等级 影响AIResponse判定 |
| cs | int | `Monster_Role` | 职业定位 0=默认 1=坦克 2=输出 3=辅助 |
| cs | String | `Monster_BattleBGM` | 战斗BGM |
| cs | int | `Monster_soldierType` | 兵种类型血条显示 |
| cr | String[] | `Monster_TraceEnemyArrowRes` | 敌人指引箭头资源 |
| cs | int | `Monster_addiAttrGroupId` | 怪物动态等级 附加属性组 |
| c | int | `Monster_ArrowShowDis` | 入战箭头显示距离 不填读Param表默认 |
| c | int | `Monster_HeadUpWidgetType` | 特殊血条类型 |
| cs | int | `Monster_element1` | 元素1 0=无效 1=无属性 2=火 3=水 4=雷 5=草 6=冰 7=地 8=暗 9=龙 |
| cs | int | `Monster_element2` | 元素2 0=无效 1=无属性 2=火 3=水 4=雷 5=草 6=冰 7=地 8=暗 9=龙 |
| cs | boolean | `Monster_canNooseTrap` | 能否套索陷阱捕获 XS和S才会触发套索 |
| s | String | `Monster_levelAbilities` | 等级解锁的技能SN 冒号逗号分隔 |

- **Mapping**（187行×5列）— 辅助sheet，首行: 棉悠悠, 1, 1, BP_SheepBall

- **Rules**（15行×3列）— 辅助sheet，首行: ID下限, ID上限, 应用领域

- **ElementImmune**（28行×13列）— 辅助sheet，首行: 

### Actor_2_Monster_NPC.xlsx

**Actor_Monster**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn 1+大类(2位)+子类(2位)+ID(5位) 大类关联子表 添加数据需要在对应大类和子类下进入插入  |
| cs | Text | `name` | 名称 |
|  | Text | `desc` | 描述信息 |
| csr | String | `bpAssetName` | 蓝图资源名称 |
| cs | int | `type` | 演员类型 点击查看具体分类     0,默认演员类型2,怪物（可战斗的角色）3,NPC 4,宝箱5,采集物（派生自Actor，静态采集物）6,采集物（派生自Ch... |
| cs | int | `subType` | 子类型 （怪物-1 BOSS：1（橙色 精英：2（黄色 普通小怪：3（红色 加强小怪：4（紫色 小100小动物200路人300友军400机关物件） |
| c | float | `lifebarlength` | 血条长度缩放比例 |
| cs | float | `modelScale` | 模型尺寸缩放 0表示使用蓝图中的默认值 |
| cs | int | `AIAttr` | AI属性 （会被ActorBirth表的属性覆盖 |
| cs | int[] | `behaviorTrees` | 使用的所有行为树 对应 BehaviorTree 表sn （模板请勿更改，如果新的需求联系吴狄） |
| cs | int | `attrGroupId` | 属性组Id |
| cs | int | `level` | 等级 |
| cs | int | `deathDropSn` | 死亡掉落 |
| s | int | `greenBulletDropSn` | 绿色子弹掉落 |
| s | int | `purpleBulletDropSn` | 紫色子弹掉落 |
| cs | int | `attackDropSn` | 攻击掉落 (对怪物造成伤害) |
| cr | String | `interactiveIcon` | 交互图标 图标1是螺丝 图标2是宝箱 图标5是对话 |
| cs | float | `interactiveDistance` | 交互距离（m） |
| cs | boolean | `InteractServerCheck` | 交互物体客户端检测默认 False客户端检测显示Icon True服务器检测才显示Icon |
| cs | int | `interactiveAngle` | 交互角度限制（NPC)  |
| csr | String[] | `interactiveMTG` | 交互MTG （站立动作,下蹲动作） 不配则交互无通用动作 |
| c | boolean | `isOverlayMat` | 交互范围内 是否显示描边 |
| csr | String[] | `defaultAbilities` | 默认挂载技能 |
| cs | int | `campId` | 阵营ID |
| cs | String[] | `Tags` | 摆放建筑重叠检测tag（配置了tag，则走tag机制，不配，则走自己原来的机制。） PreventBuildOverlap（不允许建筑重叠摆放） Distanc... |
| cs | int | `Monster_SlowWalkSpeed` | 基础移动速度 巡逻 |
| cs | int | `Monster_WalkSpeed` | 基础移动速度 环绕 |
| cs | int | `Monster_TransportSpeed` | 基础移动速度 搬运 |
| cs | int | `Monster_RunSpeed` | 基础移动速度 搬运 |
| cs | int | `Monster_RideSprintSpeed` | 基础移动速度 加速 |
| cs | int | `Monster_soldierType` | 兵种： 1.军官2.冲锋兵3.突击兵4.狙击兵5.重装兵6.坦克7.近战 |
| cr | String[] | `Monster_TraceEnemyArrowRes` | 敌人指引箭头资源 |
| cs | int | `Monster_addiAttrGroupId` | 怪物动态等级：附加属性组ID |
| c | int | `Monster_ArrowShowDis` | 入战箭头显示距离（不填读Param表默认） |
| c | float | `Monster_ShowHeadUpDistance` | 头顶显示距离 会覆盖通用的头顶显示距离（米） |
| c | int[] | `Monster_BubbleInteractData` | 准星瞄准后头顶显示的文本的数据 HeadUpPaoPao 中的Sn  |
| cs | int | `Monster_npc_kill_drop` | npc击杀能否触发掉落 需要配合公用掉落组 |
| cs | int | `Monster_InteractDistance` | 交互动作距离的 |
| cs | int[] | `elementException` | 元素异常 |
| c | boolean | `Monster_bHeadupHideLevelText` |  是否隐藏头顶等级文字 |
| cs | int[] | `Monster_characteristicTags` | 特征tag列表 引至ActorCharacteristicTags |

- **Sheet1**（89行×8列）— 辅助sheet，首行: 50040011, 小怪药和装备（普通）

### Actor_3_NPC.xlsx

**Actor_NPC**（492条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn 1+大类(2位)+子类(2位)+ID(5位) 10300xxxxx  |
| cs | Text | `name` | 交互对象名称 |
| c | Text | `actionName` | 交互按钮文本 |
| csr | String | `bpAssetName` | 蓝图资源名称 |
| cs | int | `type` | 演员类型 3=NPC  |
| cs | int | `subType` | 子类型 |
| c | float | `lifebarlength` | 血条长度缩放比例 |
| cs | float | `modelScale` | 模型尺寸缩放 0表示使用蓝图中的默认值 |
| cs | int | `AI` | 怪物AI |
| cs | int | `AIAttr` | AI属性 （会被ActorBirth表的属性覆盖 |
| cs | int[] | `behaviorTrees` | 使用的所有行为树 对应 BehaviorTree 表sn （模板请勿更改，如果新的需求联系吴狄） |
| cs | int | `attrGroupId` | 属性组Id |
| cs | int | `level` | 等级 |
| cs | int | `deathDropSn` | 死亡掉落 |
| s | int | `greenBulletDropSn` | 绿色子弹掉落 |
| s | int | `purpleBulletDropSn` | 紫色子弹掉落 |
| cs | int | `attackDropSn` | 攻击掉落 (对怪物造成伤害) |
| cr | String | `interactiveIcon` | 交互图标 图标1是螺丝 图标2是宝箱 图标5是对话 |
| cs | float | `interactiveDistance` | 交互距离（m） |
| cs | int | `interactiveAngle` | 交互角度限制 (NPC)  |
| cs | boolean | `interactiveNotCheckLineTrace` | 是否关闭遮挡物检测（TRUE关闭/不填默认状态） |
| cs | int[] | `interactiveAuthority` | 交互权限 参数1：0不限制交互，1资产主人可交互 |
| csr | String[] | `interactiveMTG` | 交互MTG （站立动作,下蹲动作） 不配则交互无通用动作 |
| c | boolean | `isOverlayMat` | 交互范围内 是否显示描边 |
| csr | String[] | `defaultAbilities` | 默认挂载技能 |
| cs | int | `campId` | 阵营ID |
| cs | String[] | `Tags` | 摆放建筑重叠检测tag（配置了tag，则走tag机制，不配，则走自己原来的机制。） PreventBuildOverlap（不允许建筑重叠摆放） Distanc... |
| c | float | `Npc_ShowHeadUpDistance` | 头顶显示距离 会覆盖通用的头顶显示距离（米） |
| c | String | `Npc_nameColour` | NPC名称颜色 |
| c | boolean | `Npc_showName` | 是否显示名字 |
| c | Text | `Npc_headTitle` | 称号文本 |
| cr | String | `Npc_imageTitle` | 图片称号 |
| c | int | `Npc_plotSN` | 交互基础对话 PlotNew表sn |
| cs | String | `Npc_appearType` | 显隐条件类型 看注释  |
| cs | String | `Npc_appearParam` | 显隐条件参数 （填写任务sn和目标sn，必须与appearType里的出现/消失条件一一对应。）  |
| cs | boolean | `Npc_disappearDelay` | 延迟隐藏 达成条件后不会立即隐藏，等待下次进入视野后再隐藏。 （注意：永久显示的npc不会出视野） |
| cs | boolean | `Npc_ignoreColliders` | NPC忽略和玩家之间的碰撞（玩家走过去不会被挡住） |
| cs | boolean | `Npc_turnAround` | 与NPC交互时是否转身面向玩家 |
| cs | int[] | `Npc_showLevelLimit` | 玩家处于等级区间内，NPC显示 注：NPCActorBirth的刷新sn是10 |
| cs | int[] | `Npc_funcId` | NPC功能 NpcFunc表的sn 注：功能NPCActorBirth的刷新sn是10 |
| c | int | `Npc_animationType` | 交互对话时播放的动画类型 1=播放一次ANTM 2=循环播放ANTM 3=播放一次MTG后，循环播放末端 |
| cr | String | `Npc_animationParam` | ANIM/MTG资源名 |
| cs | int[] | `Npc_showtime` | 服务器时间达到后显示（待开发） |
| cs | int[] | `Npc_hidetime` | 服务器时间达到后隐藏 （待开发） |
| cs | int | `Npc_npcType` | NPC类型 （待开发） |
| cs | boolean | `Npc_Open` | NPC是否生效 |
| c | int | `Npc_movementDelayTime` | 移动延迟时间 |
| cs | float[] | `Npc_endMoveToPos` | 移动到某坐标后消失  |
| c | int | `Npc_hideEffect` | 死亡溶解效果 （这里的死亡指的是npc因为任务状态或其他因素导致npc隐藏的情况） 索引Death表的销毁表现sn |
| c | int | `Npc_playMonstageDistance` | 播放蒙太奇的距离 |
| cr | String | `Npc_disMontageName` | 到达一定距离播放蒙太奇动画的名称 |
| cr | String | `Npc_disVoiceName` | 到达一定距离播放声音的名称 |
| c | int[] | `Npc_BubbleInteractData` | 准星瞄准后头顶显示的文本的数据 HeadUpPaoPao 中的Sn  |
| cs | boolean | `Npc_InteractShowFuncName` | 交互列表显示NpcFunc功能名 |
| cs | int | `Npc_InteractDistance` | 交互动作距离的 |
| c | boolean | `Npc_autoInteract` | 是否自动交互 |
| c | boolean | `Npc_InVehicleCanInteract` | 玩家在车中是否能交互 |
| c | int | `Npc_communicationTriggerSn` | 播旁白sn |
| c | float | `Npc_communicationTriggerRadius` | 触发旁白距离（米） |
| c | float | `Npc_communicationTriggerInterval` | 播旁白间隔时间 |
| c | float | `Npc_lookatPlayerRadius` | 看向玩家距离（米） |

### Actor_4_TreasureBox.xlsx

**Actor_TreasureBox**（67条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | Text | `name` | 名称 |
| csr | String | `bpAssetName` | 蓝图资源名称 |
| cs | int | `type` | 演员类型 点击查看具体分类 |
| cs | int | `subType` | 子类型 |
| c | float | `lifebarlength` | 血条长度 缩放比例 |
| cs | float | `modelScale` | 模型尺寸缩放 0=蓝图中默认值 |
| cs | int | `AI` | 怪物AI |
| cs | int | `AIAttr` | AI属性 |
| cs | int[] | `behaviorTrees` | 废弃 |
| cs | int | `attrGroupId` | 属性组Id |
| cs | int | `level` | 等级 |
| cs | int | `deathDropSn` | 死亡掉落 |
| s | int | `greenBulletDropSn` | 绿色子弹掉落 |
| s | int | `purpleBulletDropSn` | 紫色子弹掉落 |
| cs | int | `attackDropSn` | 攻击掉落 (对怪物造成伤害) |
| cr | String | `interactiveIcon` | 交互图标 |
| cs | float | `interactiveDistance` | 交互距离 （m） |
| cs | int | `interactiveAngle` | 交互角度限制（NPC)  |
| cs | int[] | `interactiveAuthority` | 交互权限 参数1 0不限制交互 1资产主人可交互 |
| csr | String[] | `interactiveMTG` | 交互MTG （站立动作,下蹲动作） 不配则交互无通用动作 |
| c | boolean | `isOverlayMat` | 交互范围内 是否显示描边 |
| csr | String[] | `defaultAbilities` | 默认挂载技能 |
| cs | int | `campId` | 阵营ID |
| c | Text | `actionName` | 交互按钮名称 |
| cs | String[] | `Tags` | 摆放建筑重叠检测tag（配置了tag，则走tag机制，不配，则走自己原来的机制。） PreventBuildOverlap（不允许建筑重叠摆放） Distanc... |
| cs | int | `BoxObject_type` | 宝箱类型 【0】无需解锁宝箱 【1】默认锁定宝箱 |
| cs | int | `BoxObject_exploreType` | 是否为读条宝箱 【0】否 【1】是 |
| cs | int | `BoxObject_exploreTime` | 读条时间 单位秒 |
| cs | int | `BoxObject_storySn` | 开箱动画sn |
| cs | int[] | `BoxObject_typeParam` | 出现类型参数 |
| cs | boolean | `BoxObject_canForceOpen` | 开启类型，是否可以强制开启 |
| c | boolean | `BoxObject_haveFocusSeq` | 有无解锁动画 只对【默认锁定宝箱】有效 默认FALSE |
| c | boolean | `BoxObject_haveLockEffect` | 【锁定状态】的特效 |
| c | boolean | `BoxObject_haveNotOpenEffect` | 【解锁后特效】还没开启时特效 |
| cs | int | `BoxObject_lock_outDist` | 【锁定状态】提示距离外环单位米 |
| cs | int | `BoxObject_lock_inDist` | 【锁定状态】提示距离内环单位米 |
| cs | int | `BoxObject_outDist` | 提示距离外环 单位米 |
| cs | int | `BoxObject_inDist` | 提示距离内环 单位米 |
| cs | int[] | `BoxObject_cost` | 开启宝箱需要道具 |
| cs | boolean | `BoxObject_personal` | 是否私人宝箱 |
| cs | int | `BoxObject_costOpenDrop` | 消耗道具掉落 正常掉落只填这列 |
| cs | int | `BoxObject_forceOpenDrop` | 强制开启掉落 不消耗道具 |
| cr | String | `BoxObject_lockTraceIcon` | 锁定时的追踪图标 |
| cr | String | `BoxObject_unLockTraceIcon` | 未锁定时的追踪图标 |
| cs | boolean | `BoxObject_isShow` | 是否需要显示 在地图状态上 |
| cr | float | `BoxObject_traceOffset` | 追踪图标偏移 单位米 |
| cs | boolean | `BoxObject_isShowRewardView` | 是否要弹获奖界面 普通奖励获得弹板 |
| cs | boolean | `BoxObject_isShowRandomRewardView` | 是否要弹随机获奖界面 如果希望开宝箱有抽奖体验可以配置这个，用于展示一段抽奖表现，和通用奖励获得弹板显示互斥 |
| csr | String | `BoxObject_interactAnim` | 交互前动作 |
| cs | boolean | `BoxObject_isHideMesh` | 是否要隐藏mesh |
| cs | int | `BoxObject_delayDropTime` | 开启后掉落延迟时间 单位毫秒 |
| cs | int | `BoxObject_playSourceType` | 宝箱玩法类型（特殊玩法） 1=公共事件 2=单人爬塔 3=多人爬塔 4=随机事件 5=大世界探索地面宝箱 6=大世界探索气球宝箱 |
| cs | boolean | `BoxObject_ShowHeadUp` | 是否显示头顶图标 |
| cs | int[] | `BoxObject_interactLevelLimit` | 玩家处于等级区间内可交互 显示倒计时（如有） 不填默认一直可以交互 |
| cs | boolean | `BoxObject_canInteractiveInLock` | 锁住状态是否交互 |
| cs | Text | `BoxObject_lockHint` | 锁住提示文本 |
| csr | String | `BoxObject_lockInteractiveIcon` | 锁定时的交互图标 |
| cs | boolean | `BoxObject_balloon` | 是否是气球宝箱 |
| cs | int | `BoxObject_existenceTime` | 宝箱存在时间(单位秒) |
| c | int | `BoxObject_countDownDistance` | 倒计时UI显示距离(单位米) |
| cs | boolean | `BoxObject_isOpenPermanently` | 打开宝箱后是否消失永久保持 |
| cs | String | `BoxObject_TreasureBoxIcon` | 小地图中显示的宝箱Icon |

- **策划使用宝箱功能必读！！！**（14行×1列）— 辅助sheet，首行: 再次同步个宝箱的事，在很久之前做爬塔功能时说过因为很多同学没来所以不知道

### Actor_5_Collection.xlsx

**Actor_Collection**（76条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | Text | `name` | 名称 |
|  | Text | `desc` | 描述信息 |
| csr | String | `bpAssetName` | 蓝图资源名称 |
| cs | int | `type` | 演员类型 点击查看具体分类  |
| cs | int | `subType` | 子类型 |
| c | float | `lifebarlength` | 血条长度 缩放比例 |
| cs | float | `modelScale` | 模型尺寸缩放 0=使用蓝图中的默认值 |
| cs | int | `AI` | 怪物AI |
| cs | int | `AIAttr` | AI属性 |
| cs | int[] | `behaviorTrees` | 废弃 |
| cs | int | `attrGroupId` | 属性组Id |
| cs | int | `level` | 等级 |
| cs | int | `deathDropSn` | 死亡掉落 |
| s | int | `greenBulletDropSn` | 绿色子弹掉落 |
| s | int | `purpleBulletDropSn` | 紫色子弹掉落 |
| cs | int | `attackDropSn` | 攻击掉落 (对怪物造成伤害) |
| cr | String | `interactiveIcon` | 交互图标 图标1是螺丝 图标2是宝箱 图标5是对话 |
| cs | float | `interactiveDistance` | 交互距离 （m） |
| cs | int | `interactiveAngle` | 交互角度限制（NPC)  |
| cs | int[] | `interactiveAuthority` | 交互权限 参数1 0=不限制交互 1=产主人可交互 |
| csr | String[] | `interactiveMTG` | 交互MTG （站立动作,下蹲动作） 不配则交互无通用动作 |
| c | boolean | `isOverlayMat` | 交互范围内 是否显示描边 |
| csr | String[] | `defaultAbilities` | 默认挂载技能 |
| cs | int | `campId` | 阵营ID |
| c | Text | `actionName` | 交互按钮名称 |
| cs | String[] | `Tags` | 摆放建筑重叠检测tag（配置了tag，则走tag机制，不配，则走自己原来的机制。） PreventBuildOverlap（不允许建筑重叠摆放） Distanc... |
| cs | int | `Collect_type` | 类别组         1=通用采集物 2=植株采集物  3=元素采集物  4=矿石采集物  5=生物采集物  |
| cs | int[] | `Collect_collectType` | 采集类型 1.基础采集 2.受击采集 3.读条采集 |
| cs | float | `Collect_collectTime` | 读条采集时间 （s） |
| cr | String | `Collect_destoryEffect` | 销毁特效 |
| cr | string | `Collect_tipEffect` | 提示特效 |
| c | float[] | `Collect_tipEffectPosOffset` | 提示特效坐标偏移 （米） |
| c | string | `Collect_audioEvent` | 采集音效 |
| c | int | `Collect_tipsStr` | 采集提示 |
| cs | boolean | `Collect_affectByTalent` | 采集效果 可被天赋影响 |
| cs | boolean | `interactiveNotCheckLineTrace` | 交互遮挡物提检测 默认False是打开 |
| cs | boolean | `Collect_CanTransportByPet` | 是否能被宠物搬运 需要将蓝图上KSGCapsule的AroundINfoCollect改成重叠 |
| cs | int | `Collect_PetTransportItemSn` | 宠物搬运物品sn |
| cs | int | `Collect_PetTransportItemNum` | 宠物搬运物品数量 注意宠物只会搬运一次，数量会被宠物的搬运等级限制 |

### Actor_6_Robot.xlsx

**Actor_Robot**（47条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn 1+大类(2位)+子类(2位)+ID(5位) 大类关联子表 添加数据需要在对应大类和子类下进入插入  |
| cs | Text | `name` | 名称 |
|  | Text | `desc` | 描述信息 |
| csr | String | `bpAssetName` | 蓝图资源名称 |
| cs | int | `type` | 演员类型 6 |
| cs | int | `subType` | 子类型 |
| c | float | `lifebarlength` | 血条长度缩放比例 |
| cs | int | `AIAttr` | AI属性 （会被ActorBirth表的属性覆盖 |
| cs | int[] | `behaviorTrees` | 使用的所有行为树 对应 BehaviorTree 表sn **Robot表的行为树，只有战中树有用，配置的话会直接完整替换默认树 |
| cs | int | `attrGroupId` | 属性组Id |
| cs | int | `level` | 等级 |
| cr | String | `interactiveIcon` | 交互图标 图标1是螺丝 图标2是宝箱 图标5是对话 |
| cs | float | `interactiveDistance` | 交互距离（m） |
| cs | int | `interactiveAngle` | 交互角度限制（NPC)  |
| c | boolean | `isOverlayMat` | 交互范围内 是否显示描边 |
| csr | String[] | `defaultAbilities` | 默认挂载技能 |
| cs | int | `campId` | 阵营ID |
| cs | String[] | `Tags` | 摆放建筑重叠检测tag（配置了tag，则走tag机制，不配，则走自己原来的机制。） PreventBuildOverlap（不允许建筑重叠摆放） Distanc... |
| s | boolean | `Robot_usePlayerData` | 是否使用玩家数据 |
| s | float | `Robot_scatterData` | 散射数据（枪法准度修正） 暂时废弃：属性表对应字段已丢失，如需启用这两列需战斗系统先找回对应属性 |
| s | float | `Robot_firingRateData` | 射速修正 暂时废弃：同左列 |
| s | int | `Robot_weaponHitRateModify` | 枪械能力命中率修正万分比（仅用于枪械能力） |
| s | int | `Robot_weaponHeadshotRateModify` | 枪械能力爆头率修正万分比（仅用于枪械能力） |
| s | int[] | `Robot_defaultGun` | 默认枪（123号位） （Weapon表Sn） |
| s | boolean | `Robot_forceDefaultGun` | 是否强制使用默认枪 |
| cs | int | `Robot_CharacterSn` | 使用的Character模板 |
| cs | int[] | `Robot_defaultFashion` | 默认时装（可不配，配置替换Character模板里的对应时装） |
| cs | boolean | `Robot_forceDefaultFashion` | 是否强制默认时装 |
| cs | int | `Robot_nameType` | 名称类型：0 用玩家名称 1 用Actor名称 2 随机名字库 |
| cs | int | `Robot_weaponLevel` | 机器人装备等级 |
| cs | int[] | `Robot_defaultPets` | 默认持有帕鲁（可不配） |
| cs | boolean | `Robot_supportVehicle` | 是否支持载具功能 |
| sr | String | `Robot_overrideController` | 覆盖的Controller（不填使用蓝图默认） |
| cs | int | `Robot_Avatar` | 机器人头像 |
| cs | int | `Robot_AvatarFrame` | 机器人头像框 |
| cs | int | `Robot_Card` | 机器人名片 |
| s | int | `Robot_decisionSn` | 使用AIDecision表的sn |
| s | int[] | `Robot_SkillSns` | 持有技能列表 |
| s | int[] | `Robot_SkillLevels` | 持有技能对应等级 |
| s | int[] | `Robot_SkillStars` | 持有技能对应星级 |
| cs | int | `Robot_SkillStrength` | 技能强度等级（技能等级和星级取强度等级表，为0不启用） |
| s | int[] | `Robot_WeaponAccuracyPool` | 机器人枪械能力列表 （索引RobotWeaponAccuracy表） |
| cs | int | `Robot_autoDrivingSn` | 自动驾驶sn |

### Actor_7_Transfer.xlsx

**Actor_Transfer**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn  |
| cs | Text | `name` | 名称 |
|  | Text | `desc` | 描述信息 |
| csr | String | `bpAssetName` | 蓝图资源名称 |
| cs | int | `type` | 演员类型 点击查看具体分类 |
| cs | int | `subType` | 子类型 |
| c | float | `lifebarlength` | 血条长度缩放比例 |
| cs | float | `modelScale` | 模型尺寸缩放 0表示使用蓝图中的默认值 |
| cs | int | `AI` | 怪物AI |
| cs | int | `AIAttr` | AI属性 |
| cs | int[] | `behaviorTrees` | 废弃 |
| cs | int | `attrGroupId` | 属性组Id |
| cs | int | `level` | 等级 |
| cs | int | `deathDropSn` | 死亡掉落 |
| s | int | `greenBulletDropSn` | 绿色子弹掉落 |
| s | int | `purpleBulletDropSn` | 紫色子弹掉落 |
| cs | int | `attackDropSn` | 攻击掉落 (对怪物造成伤害) |
| cr | String | `interactiveIcon` | 交互图标 |
| cs | float | `interactiveDistance` | 交互距离 米 |
| cs | int | `interactiveAngle` | 交互角度限制 (NPC)  |
| c | boolean | `isOverlayMat` | 交互范围内 是否显示描边 |
| csr | String[] | `defaultAbilities` | 默认挂载技能 |
| cs | int | `campId` | 阵营ID |
| cs | String[] | `Tags` | 摆放建筑重叠检测tag（配置了tag，则走tag机制，不配，则走自己原来的机制） PreventBuildOverlap（不允许建筑重叠摆放） Distance... |

### Actor_8_Gear.xlsx

**Actor_Gear**（91条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn 1+大类(2位)+子类(2位)+ID(5位) 大类关联子表 添加数据需要在对应大类和子类下插入 |
| cs | Text | `name` | 名称 |
| c | Text | `actionName` | 交互按钮名称 |
| csr | String | `bpAssetName` | 蓝图资源名称 |
| cs | int | `type` | 演员类型 8=可交互机关 |
| cs | int | `subType` | 子类型 |
| c | float | `lifebarlength` | 血条长度缩放比例 |
| cs | float | `modelScale` | 模型尺寸缩放 0表示使用蓝图中的默认值 |
| cs | int | `AI` | 怪物AI |
| cs | int | `AIAttr` | AI属性 会被ActorBirth表的属性覆盖 |
| cs | int[] | `behaviorTrees` | 使用的所有行为树 对应 BehaviorTree |
| cs | int | `attrGroupId` | 属性组Id |
| cs | int | `level` | 等级 |
| cs | int | `deathDropSn` | 死亡掉落 |
| s | int | `greenBulletDropSn` | 绿色子弹掉落 |
| s | int | `purpleBulletDropSn` | 紫色子弹掉落 |
| cs | int | `attackDropSn` | 攻击掉落 (对怪物造成伤害) |
| cr | String | `interactiveIcon` | 交互图标 图标1是螺丝 图标2是宝箱 图标5是对话 |
| cs | float | `interactiveDistance` | 交互距离（m） |
| cs | int | `interactiveAngle` | 交互角度限制（NPC)  |
| cs | boolean | `interactiveNotCheckLineTrace` | 是否关闭遮挡物检测（TRUE关闭/不填默认状态） |
| cs | boolean | `InteractServerCheck` | 交互物体客户端检测默认 False客户端检测显示Icon True服务器检测才显示Icon |
| cs | int[] | `interactiveAuthority` | 交互权限 参数1：0不限制交互，1资产主人可交互 |
| csr | String[] | `interactiveMTG` | 交互MTG （站立动作,下蹲动作） 不配则交互无通用动作 |
| c | boolean | `isOverlayMat` | 交互范围内 是否显示描边 |
| csr | String[] | `defaultAbilities` | 默认挂载技能 |
| cs | int | `campId` | 阵营ID |
| cs | String[] | `Tags` | 摆放建筑重叠检测tag（配置了tag，则走tag机制，不配，则走自己原来的机制。） PreventBuildOverlap（不允许建筑重叠摆放） Distanc... |
| cs | int | `GearInteractive_subData` | 是否进子表（填空不进） |
| cs | String | `GearInteractive_typeParam` | buffsn |
| cr | String | `GearInteractive_effect` | 特效 |
| cs | int | `GearInteractive_dist` | 提示距离 单位米 |
| cr | String | `GearInteractive_traceIcon` | 追踪图标 |
| c | float | `GearInteractive_traceOffset` | 追踪图标偏移 单位米 |
| cs | int | `GearInteractive_liveingTime` | 道具存在时间 单位秒 |
| cs | boolean | `GearInteractive_isShow` | 是否需要显示在小地图上 |
| cs | int | `GearInteractive_LaserTrapLength` | 激光陷阱长度 |
| cs | int | `GearInteractive_UAVDropSn` | UAV掉落奖励DropSn |
| cs | String | `GearInteractive_dropItem` | 掉落物实例配置 |
| cs | boolean | `GearInteractive_pickNeedListView` | 掉落物 是否需要弹框拾取 |
| cs | Text | `GearInteractive_DescForFirstGot` | 获取时的提示文本 |
| cs | int | `GearInteractive_PicForFirstGot` | 关联的item表sn |

### BirthRelate.xlsx

**Birth关联|BirthRelate**（217条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | 索引BirthSn |
| s | int[] | `RelateSn` | 关联的BirthSn（数组） |
| s | int | `RelatType` | 关联类型 仅1=双向关联索引类型在BirthRelateMod中生效，其他值未接入 |

- **Sheet1**（1行×1列）— 非标准表头，可能是说明/辅助sheet

### Summoned.xlsx

**召唤物|Summoned**（10条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| c | boolean | `showHeadup` | 是否显示头顶UI |
| c | int | `traceDist` | 追踪提示距离（米，不填则无追踪） |
| cr | String | `traceIcon` | 追踪图标 |
| c | float | `traceOffset` | 追踪图标Z偏移（米） |
| cs | int[] | `characteristicTags` | 特征tag列表 引至ActorCharacteristicTags |
| cs | int | `element1` | 元素1 |
| cs | int | `element2` | 元素2 |