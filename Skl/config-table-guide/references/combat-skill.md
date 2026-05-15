## 战斗与技能

### AbilityData.xlsx

- **groupId字段规则**（14行×3列）— 辅助sheet，首行: groupId范围, 页签, 说明

**伤害|AbilityDamageData**（521条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `groupId` | 伤害配置分组ID（由技能/效果侧引用，同一groupId下按level、stackLevel分档） |
| cs | int | `level` | 等级 |
| cs | int | `stackLevel` | 叠层 |
| cs | float | `baseDamage` | PVE基础伤害值 |
| cs | float | `baseDamagePVP` | PVP基础伤害值 |
| cs | int | `damageAffinity` | 伤害物理/魔法类型 1或者不填=物理 2=魔法 |
| cs | int | `element` | 伤害元素类型 0=None 1=无属性 2=火 3=水 4=雷 5=草 6=冰 7=地 8=暗 9=龙（对应EKSGAbilityElementType枚举） |
| cs | int | `elementStatusType` | 造成元素异常类型 0=无异常 1=火 2=草 3=地 4=雷 5=水 6=冰 7=暗 8=毒（对应EKSGElementExceptionType枚举） |
| cs | int | `elementException` | 造成的元素异常值 |
| cs | float | `treeDmgBonus` | 对树木伤害加成 无加成填0，加成20%填0.2 |
| c | float | `toughnessBreakBase` | 削韧基础值 |
| cs | float | `rockDmgBonus` | 对石头伤害加成 无加成填0，加成20%填0.2 |
| cs | float | `hatredMultiplier` | 仇恨值系数 |
| cs | float | `hatredMultiplierTank` | 施法者为坦克时的仇恨值系数 |

**等级压制|AbilityDamageLevelSuppress**（201条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `levelDelta` | 等级差 攻方-守方 |
| cs | float | `damageRatio_PVE` | 玩家作为施法者时的等级差伤害倍率（PVE方向） |
| cs | float | `damageRatio_EVP` | 非玩家施法者（如怪物）攻击玩家时的等级差伤害倍率（EVP方向） |

**治疗|AbilityHealingData**（24条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `groupId` | 技能id |
| cs | int | `level` | 等级 |
| cs | float | `percent` | 治疗系数（治疗量 = GetAttr(source指定方, attr) * percent + value） |
| cs | float | `value` | 治疗固定值（治疗量 = GetAttr(source指定方, attr) * percent + value） |
| cs | int | `formula` | 公式类型（客户端C++已废弃不读取此列，实际治疗由attr+source决定） |
| cs | int | `source` | 属性来源 1=从目标取attr指定属性 2=从施法者取attr指定属性 |
| cs | int | `attr` | 治疗基数使用的属性枚举（索引Attr表），治疗量 = GetAttr(attr) * percent + value |

**一般技能效果|AbilityEffectData**（535条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 配置主键（被Buff/技能引用时不可随意修改） |
| cs | int | `groupId` | 效果分组ID（与level、stackLevel一起定位具体效果行） |
| cs | int | `level` | 等级 |
| cs | int | `stackLevel` | 叠层 |
| cs | String | `arg1` | 效果参数1（无统一含义，语义由具体EffectExecution/Buff类型决定） |
| cs | String | `arg2` | 效果参数2（同上） |
| cs | String | `arg3` | 效果参数3（同上） |
| cs | String | `arg4` | 效果参数4（同上） |
| cs | String | `arg5` | 效果参数5（同上） |
| cs | String | `arg6` | 效果参数6（同上） |

**临时武器|BuffTempWeaponData**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn(buffid) |
| cs | int | `weaponSn` | 武器表sn |
| cs | int | `ammoPerSec` | 每秒损失子弹数 |
| cs | int | `ammoPerShoot` | 每发消耗子弹数 |
| cs | int | `ammoBackup` | 备弹数 - 不需要备弹功能填0（不能换弹） - 无限备弹填-1（能换弹，无限换） - 有限备弹填大于0的数(实际可用子弹=弹夹容量+备弹容量) |
| cs | int | `canManualUnEquip` | 能否手动卸下武器（仅客户端Lua使用） 0=不能卸下 1=能卸下，需要弹框确认 2=能卸下，无需确认 |
| cs | boolean | `playEquipMTG` | 是否播放拔枪动画 1=播放 0=不播放 |

- **一般技能效果参数说明**（14行×10列）— 辅助sheet，首行: 功能, 对应EE(or其他蓝图), 是否需要叠层数配置, 参数1

- **Sheet1**（160行×3列）— 辅助sheet，首行: 伏特喵1, 3011, 921:1000

### BalanceAttrs.xlsx

**公平属性|BalanceAttrs**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `groupId` | 属性组ID |
| cs | int | `level` | 等级 |
| cs | int | `weaponLevel` | 武器装等 |
| cs | int | `skillLevelType` | 技能栏模式 |
| cs | int | `skillSlotSn1` | 技能槽位1 SN (部署槽位)  |
| cs | int | `skillSlotLevel1` | 技能槽位1 等级 |
| cs | int | `skillSlotStar1` | 技能槽位1 星级 |
| cs | int | `skillSlotSn2` | 技能槽位2 SN (终极槽位)  |
| cs | int | `skillSlotLevel2` | 技能槽位2 等级 |
| cs | int | `skillSlotStar2` | 技能槽位2 星级 |
| cs | int | `skillSlotSn3` | 技能槽位3 SN (投掷槽位)  |
| cs | int | `skillSlotLevel3` | 技能槽位3 等级 |
| cs | int | `skillSlotStar3` | 技能槽位3 星级 |
| cs | int | `passiveSkillLevel` | 被动技能槽 等级 |
| cs | int | `passiveSkillStar` | 被动技能槽 星级 |
| cs | boolean | `otherPassiveEnabled` | 其他被动技能是否可用 |
| cs | int | `cdGroup` | 主动技能cd组（关联GA里的配置） |
| cs | boolean | `reviveDrawWeapon` | 复活自动掏枪 |
| cs | int | `usePvpWeaponDmg` | 使用pvp武器伤害 1=使用 0或者不填=不使用 |
| cs | int | `usePvpAbilityDmg` | 使用pvp技能伤害 1=使用 0或者不填=不使用 |
| cs | boolean | `damageFloat` | 启用伤害浮动 |

### BattleShow.xlsx

**玩法展示|BattleShow**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 不同玩法的sn*10 + 0:玩法开场 1:结算成功 2:结算失败 3:放弃  |
| c | int[] | `partData` | 具体的展示数据 关联展示数据页签sn |
| cr | String | `bgm` | BGM（注意：代码中使用bgmName访问，需确认导出字段名一致性） |
| c | String[] | `playerInfoEx` | 玩家额外展示内容 |
| cs | float | `duration` | 播放时间（当前客户端Lua未使用，仅策划备注或引擎侧用） |
| c | float | `skipTime` | 可以提前跳过的时间（当前主表skipTime逻辑已注释，提前跳过以BattleShowData.skipTime为准） |
| c | float[] | `playLocation` | 播放坐标： 不填默认在(0,0,0)的地方播放 填得选项单位M  需要注意播放的SQ中是否已有坐标信息，两边会叠加 |
| c | float[] | `playRotation` | 播放旋转 |
| c | int | `settlementSn` | SQ之后衔接的UI界面  关联本表结算界面页签sn |
| c | int | `likeSource` | 点赞来源,不配则不显示 |

**玩法展示的数据|BattleShowData**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | float | `skipTime` | 提前显示继续按钮,0则不使用（0=sequence结束后显示，大于0则表示sequence开始后x.x秒显示） |
| cr | String[] | `sequence` | SQ文件名(可能多个根据特殊条件选) |
| c | int | `sqSelectType` | sq选择规则 0:选第一个 1:显示角色帕鲁体型(小,中,大) |
| c | boolean | `bShowWeapon` | 是否显示武器 |
| c | int | `playerSortType` | 1:根据副本伤害(陈琨的统计功能) |
| c | int[] | `showPlayerList` | 主角和帕鲁的站位排序 对应SQ标签中1、2、3、4的站位站输出排序第几的角色 |
| c | int[] | `defaultActionSn` | 默认播放动作(按人数配置如果少了则使用最后一个) |
| c | boolean | `bActionWaitEvent` | 是否需要等待sq中的通知节点  对人物和帕鲁同时生效 比如需要等待sequence的动作 |
| c | int | `actionPlayType` | 玩家播放动作类型 0:正常播放(先读玩家自定义的,没有就用表配的) 1:强制使用表配的 |
| c | int | `showPalType` | 显示帕鲁的规则 0:不显示 1:不额外处理 2:进行缩放等处理(类似组队界面) |
| c | int | `palActionPlayType` | 帕鲁播放动作类型 0:使用队伍结算动画 1:使用MVP动画  |
| c | int | `widgetPosSn` | 不同玩家对应的UI信息的位置数据SN,不填则不显示玩家名片ui |
| c | boolean | `bHold` | 是否在播放完停留等待玩家继续 |
| c | String[] | `slotParam1` | 自定义的ui最底层 (第一个参数填ui名,后面填参数,ui自己处理string的转换,如果不方便代码设置不配表) |
| c | String[] | `slotParam2` | 自定义的ui中间层可以盖住名片,但是操作按钮和点赞信息不会被盖住 (参数同上) |
| c | String[] | `slotParam3` | 自定义ui子上层,可以盖住一切 |

**玩家UI位置|BattleShowPlayerInfoPos**（9条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` |  |
| c | boolean | `bFollow` | 是否根据玩家位置推算屏幕相对位置 |
| c | float | `delayShowTime` | 显示玩家名片的延时时间 |
| c | float[] | `screenPos1` | 如果bFollow为true这里是相对玩家屏幕位置的偏移,anchor无效 ,false的话则是widget相对坐标,anchor是对应的锚点(不填按照中心点算... |
| c | float[] | `screenPos2` |  |
| c | float[] | `screenPos3` |  |
| c | float[] | `screenPos4` |  |
| c | float[] | `anchor1` | 可以在编辑器预览,是anchors对应的Minimum和Maximum的值,一共4个 比如 左中是0,0.5,0,0.5,中心点是0.5,0.5,0.5,0.5... |
| c | float[] | `anchor2` |  |
| c | float[] | `anchor3` |  |
| c | float[] | `anchor4` |  |

**结算界面|BattleSettlement**（7条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` |  |
| cr | String | `titleBgBP` | Title的lua文件名 |
| c | String | `titleCustomWidget` | 自定义的标题数据 |
| cr | String | `contentLayoutBP` | 内容布局的蓝图名称 (用于控制多个slot的相对位置) |
| c | String | `contentWidget1` | 内容slot组合,目前预留三个位置,具体位置看contentLayoutBP 对应蓝图如何布局的 |
| c | String | `contentWidget2` |  |
| c | String | `contentWidget3` |  |
| c | int | `operationType` | 0:倒计时无其他按钮 -1:自定义底部按钮,右侧字段 |
| c | string | `bottomWidgetName` |  |

### CharacterSkill.xlsx

**角色技能等级|CharacterSkill**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 技能SN= groupId*1000 + 等级 |
|  | Text | `` | 备注 |
| cs | int | `belongCharacter` | 角色SN |
| csi | int | `groupId` | 组 |
| csi | int | `level` | 等级 |
| cs | String | `upgradeConsumeItems` | 升级到本级消耗物品 用":"隔开物品和数量 ","分割多个物品消耗 |
| cs | float | `coolDown` | 冷却 |
| cs | String[] | `castConsumeItems` | 释放消耗 物品名,数量 |
| c | float | `effectAttribute1` | 技能效果属性值1 |
| c | float | `effectAttribute2` | 技能效果属性值2 |
| c | float | `effectAttribute3` | 技能效果属性值3 |
| c | float | `effectAttribute4` | 技能效果属性值4 |
| cs | int | `needHumanLevel` | 需要的玩家等级 |
| cs | int | `score` | 对应的评分 |

### CombatFeedback.xlsx

**战斗奖励提示|CombatFeedback**（18条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | int | `eventType` | 事件类型枚举（对应CombatFeedbackGoalClassNameTb中注册的Goal类） |
| c | int[] | `eventParam` | 触发条件参数 |
| c | int | `sceneType` | 生效场景类型 0：所有场景 1：仅pvp场景生效 2：仅pve场景生效 |
| c | Text | `hintTxt` | 附加提示文本（不配就没有） |
| cr | String | `hintMedal` | 徽章icon （不配就没有） |
| c | Text | `hintMedalTxt` | 徽章文本（不配就没有） |
| c | String | `hintMedalSound` | 徽章提示音效（不配就没有） |
| c | int | `priority` | 同时触发时显示排序权重 越大显示越靠前 |

- **战斗奖励目标枚举**（16行×3列）— 辅助sheet，首行: 目标枚举, 功能, 参数

### Crosshair.xlsx

**准星初始坐标|CrosshairBaseValue**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | int | `GunType` | 武器类型（1是突击步枪，2是手枪） |
| c | int | `AimType` | 瞄准类型 (1为未瞄准，2为瞄准） |
| c | int | `DefautDis` | 初始离屏幕中心点的距离 |
| c | int | `MaxDis` | 最大离屏幕中心点的距离 |

**准星缩放|CrosshairShootScale**（16条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | int | `GunType` | 武器类型（1是突击步枪，2是手枪） |
| c | int | `AimType` | 瞄准类型 （1为未瞄准，2为瞄准状态） |
| c | int | `StartNum` | 开始连发子弹数 |
| c | int | `EndNum` | 结束连发子弹数 |
| c | int | `AimSpeed` | 准星扩张速度 |

**准星缩放对应行为|CrosshairScaleRatio**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 主角行为 （1为站立，2为移动，3为跳跃） |
| c | float | `ratio` | 系数 （系数会影响准星的扩张速度，最大扩张坐标，以及默认常规准星坐标） |

### ElementData.xlsx

**出生点元件|ElementStartPoint**（280条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| e | int | `sceneSN` | 场景SN 仅供编辑器使用 |
| cs | Location | `position` | 出生位置 |
| cs | float[] | `rotation` | 出生朝向 |

**安全区元件|ElementSafeArea**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN 也是birthsn |
| e | int | `sceneSN` | 场景SN 仅供编辑器使用 |
| cs | float | `radius` | 半径 单位米 |

**赛车检查点元件|ElementCheckPoint**（478条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| e | int | `sceneSN` | 场景SN 仅供编辑器使用 |
| cs | int | `actorSN` | 演员SN |
| cs | Location | `position` | 出生位置 |
| cs | float[] | `rotation` | 出生朝向 |
| cs | int | `direction` | 检查点方向枚举 1：直行 SP_RoadTips_Straight 2：左转 SP_RoadTips_AngleLeft 3：右转 SP_RoadTips_An... |

**赛车机关元件|ElementVehicleGear**（154条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| e | int | `sceneSN` | 场景SN 仅供编辑器使用 |
| cs | int | `actorSN` | 演员SN |
| cs | Location | `position` | 出生位置 |
| cs | float[] | `rotation` | 出生朝向 |

### ElementException.xlsx

**元素异常表|ElementException**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 异常类型（以EKSGElementExceptionType枚举为准，当前C++运行时不读此表，仅Lua/工具使用） |
| c | float | `totalElementThreshold` | 元素总阈值 |
| c | float | `recoverPercent` | 单次回复百分比 |
| c | float | `recoverSeconds` | 回复冷却时间，单位秒 |
| c | float | `recoverRate` | 恢复频率 |
| c | float | `protectedSeconds` | 击破冷却时间，单位秒 |

### ElementStatus.xlsx

**元素异常|ElementStatus**（8条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 与ElementExceptionType枚举值一致的类型ID |
| cs | int | `buffSn` | 对应异常状态 generalBuff sn |
| cr | String | `icon` | 图标 |
| cs | boolean | `isIndependent` | 是否独立（当前逻辑未使用，可能预留） |
| c | Text | `name` | 显示名称 |

### ElementStrConvert.xlsx

**元件字符串转换|ElementStrConvert**（11条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | String | `sn` | 元件事件名（字符串主键，与C++ ElementMgr事件名一致） |
| s | int | `instanceUnitFinish` | 副本目标完成 |
| s | int | `instanceUnitAddCount` | 副本目标计数+1 |
| s | int | `questGoalAddCount` | 非0时对指定任务sn触发INSTANCE_COUNTER类型目标事件（增量为1） |

### FightNum.xlsx

**伤害冒字|FightNum**（7条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| c | String | `hitflag` | 效果命中情况 普通=Normal  暴击=Crit, 弱点=Weakpoint,             免疫 = Immune 效果拔群=VeryEffect... |
| c | int | `priority` | 优先级 越大优先级越高（当前冒字选配置逻辑未读此字段） |
| c | int | `widgetInfo` | 关联FightNumWidgetInfo表的sn |

**伤害冒字动画|FightNumWidgetInfo**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| c | String | `widgetName` | UI蓝图 |
| cr | String | `widgetBPName` | UI_Main_FightNum蓝图中伤害类型UI名称 |

### GeneralBuff.xlsx

**通用Buff|GeneralBuff**（83条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | buff sn（表行主键须>0；运行时sn≤0表示非配置buff） |
| csr | String | `template` | buff资源 |
| cs | float | `duration` | 默认持续时间（秒），调用方传入持续时间为0时使用此值；调用方传入非0则优先使用传入值 |
| c | int | `buffShow` | buff显示 索引BuffShow sn |

**Buff显示|BuffShow**（35条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 主键sn（与GeneralBuff.buffShow对应） |
| c | Text | `name` | buff名称 |
| c | Text | `desc` | buff描述 |
| cr | String | `icon` | buff图标 |
| cr | String | `effect` | ui特效（当前客户端Buff UI流程未引用，可能预留或蓝图使用） |
| c | boolean | `isShow` | 在HUD&背包状态栏显示（当前客户端HUD列表逻辑未读此字段） |
| c | boolean | `showAnim` | 是否显示进入动画 |

### HeroState.xlsx

**玩家状态|HeroState**（201条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | String | `keyName` | 关键字 |
| c | Text | `stateName` | 用于互斥/阻挡提示等UI文案的状态显示名 |
| c | Text | `showStr` | 当不可进入时的飘字提示 |
| c | int | `mainType` | 归属状态大类 |
| c | int | `subType` | 归属状态子类（当前客户端状态机未使用，可能仅策划分层或预留） |
| c | int | `EntryBtnUnavailableType` | 入口按钮不可用时处理方式 0不处理 1置灰 2隐藏 |
| c | boolean | `NoticeWhenBlocked` | 被阻止时弹提示 |
| c | boolean | `NoticeWhenBlockOthers` | 阻止其他时弹提示 |
| c | String | `unableEnterState` | 处于以下状态无法进入 |
| c | String | `interruptState` | 进入时打断以下状态 |
| c | String | `resumeState` | 被打断后尝试恢复 |

### PowerStone.xlsx

**力量石像|PowerStone**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 力量石像关联区域sn  强制要求与SceneBlock表sn一致 |
| cr | String | `icon` | 区域图标 |
| cr | String | `bg` | 区域背景图 |
| cr | String | `captureIcon` | 捕获力图标 |
| cr | String | `levelUpEffect1` | 升级特效1（角色中心挂点播放） |
| cr | String | `levelUpEffect2` | 升级特效2（脚底位置播放） |

**力量石像等级|PowerStoneLevel**（30条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 组合区域Sn+等级 |
| csi | int | `powerStoneSn` | 所属区域Sn  powerStone表Sn =SceneBlock表Sn |
| csi | int | `level` | 等级 初始是0级 要求连续 |
| cs | String | `consumeItem` | 升到本级所需道具数量 |
| cs | String | `captureAttrs` | 升到本级提升的补获力总属性 |
| cs | String | `attrs` | 升到本级提升的总属性 |
| cs | String | `reward` | 升到本级奖励的道具 |

**强化帕鲁|PowerPal**（28条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int | `captureLevel` | 升级等级 |
| cs | String | `attrLevelUp` | 可增加的数值 |
| cs | int | `attrBelong` | 属性归属 |
| cs | String | `consumeItemSum` | 需要消耗道具数量 |
| cs | String | `resetItemSum` | 重置消耗的货币及数量 |

### Skill.xlsx

- **技能sn规则**（9行×9列）— 辅助sheet，首行: sn区间, 描述

**技能|Skill**（692条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 技能组sn |
| csr | String | `template` | 技能模板 对应UE数据蓝图 |
| cs | boolean | `isPassive` | 是否是被动技能 |
| c | Text | `name` | 技能名称 |
| c | Text | `desc` | 技能描述 |
| c | String[] | `descParams` | 技能描述参数 格式为 Lv1Param1:Lv1Param2:Lv1Param3,Lv2Param1:Lv2Param2:Lv2Param3 |
| c | Text | `buffdesc` | buff描述模板（可含占位符，与动态数值拼接使用） |
| c | int | `desValueType` | buff读表类型 0=不需要取 1=CharacterSkill表取值 2=TowerBuff表 3=Talent表 4=VRSecretAreaBuffLevel表（sn*1000+level） |
| cs | int | `subType` | 技能子分类 1=装置类 2=终极类 3=投掷类 4=被动类（主动技能该值参与角色技能槽位/自动装配逻辑） |
| c | int[] | `typeName` | 技能类型标签数组（可配多个） 1=攻击 2=团队 3=增益 4=控制 5=生存 6=信息 7=防御 8=机动 |
| cs | int | `level` | 品质 1=橙 2=紫 3=蓝 4=绿 |
| cs | int | `passiveSkillLevel` | 被动技能等级 |
| cr | String | `icon` | 技能图标 |
| cr | String | `iconDisabled` | 技能图标(不可用时) 当前客户端Lua未使用，可能仅C++/UMG侧使用 |
| c | Text[] | `effectAttributeNames` | 技能效果属性名列表 |
| c | int[] | `effectAttributeValueType` | 技能效果属性值类型 1是数值，2是百分比 |
| cs | int[] | `activateParam` | 激活参数(任务sn为0，表示不判断任务，两者是与的关系) 任务sn,等级 |
| cs | boolean | `isRoleSkill` | 是否角色技能 |
| cs | int | `skillMaxLevel` | 技能最大等级，如果是0，就用param表中的SKILL_MAX_LEVEL字段 |
| cr | String | `skillShow` | 技能视频 |
| c | int | `roleSkillRank` | 角色技能排序（主被动分开排序，数越大排序越靠后） |
| cs | boolean | `coop` | 是伙伴技能 |
| csr | String | `coopAction` | 伙伴技能action |
| cr | String | `tipsElementIcon` | 元素属性 |
| cs | int | `tipsElement` | 元素显示 对应Attr->ElementIcon |
| cr | int | `tipsDamage` | 伤害显示 |
| cs | int | `damageType` | 伤害类型 1-物理 2-魔法 |
| cs | float | `skillScore` | 评分基数（与养成档位数相乘后汇总为战力） |
| cs | float[] | `skillScorePercentage` | 按技能等级分档的评分比例数组（下标对应等级） |
| cs | int | `abilityGroupId` | 关联AbilityEffectData.groupId（GE/能力效果数据） |
| cs | float | `cd` | CD时间(秒） 0或者不填=GA原值 -1=无CD |
| cs | float[] | `aiCastRange` | 主动技能AI施法范围（cm） 最小值,最大值 |
| cs | int | `aiTargetType` | AI选目标策略 |
| cs | String | `aiTargetParams` | AI选目标策略：参数 |
| c | int | `skillCastType` | 技能释放方式 0：按下释放 1：拖拽抬起释放 |
| c | int[] | `activeSkillType` | 显示准星类型数组（可多选） 1=弹道类（EPetActiveSkillType.Projectile） |
| c | int | `predictionType` | 显示指示器类型 10：冲锋类技能 |
| c | String | `hitShakeType` | 玩家受击震屏类型 |
| c | boolean | `isShowHUD` | 是否显示伙伴技能HUD提示 |

**伙伴技能参数|PartnerSkillParam**（98条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 参数sn |
| cs | float | `effectTime` | 最大时长（s）/弹药量 |
| cs | float | `coolDownTime` | CD(s) |
| cs | float | `idleCost` | 非激活帕鲁伙伴技能过热后的清理判定阈值（>0时触发CleanupTempCoopSkill） |
| cs | String | `heroStateKeyName` | 对应HeroState的keyName |

- **技能表备注**（19行×18列）— 辅助sheet，首行: 被动技能蓝图命名：

### Talent.xlsx

**天赋分类|TalentClass**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 分类标识 |
| cs | int | `unlockLv` | 解锁等级 |
| c | boolean | `isopen` | 是否开放 |
| c | Text | `name` | 分类名称 |
| cr | String | `icon` | 分类图标 |
| cs | String | `consume` | 重置消耗 |
| c | int | `unlockTalentLv` | 解锁需要天赋等级 |
| c | String | `iconColor` | 图标染色颜色值 |
| cr | String | `iconUnChecked` | 分类图标(未选中) |
| cr | String | `iconChecked` | 分类图标(已选中) |

**天赋页|Talent**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 天赋id |
| csi | int | `tabs` | TalentClass表sn |
| cs | int | `area` | 区域 |
| c | int | `row` | 第几行 |
| c | int | `num` | 第row行第几个 |
| c | int[] | `lines` | 普通线集合 |
| c | int[] | `specLines` | 特殊线集合 |
| c | Text | `name` | 天赋名称 |
| cs | int | `preTalent` | 前置天赋 |
| cs | int | `maxLv` | 天赋最大等级 |
| cr | String | `icon` | 天赋图标 |
| cr | String | `bgImage` | 背景图 |
| c | float[] | `scale` | 背景图缩放比例 |

**旧天赋等级页|OldVersionTalentLevel**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 天赋等级id |
| cs | int | `id` | 天赋id |
| cs | int | `lv` | 天赋等级 |
| cs | int | `lvLimit` | 角色等级限制 |
| cs | String | `clsLimit` | TalentClass表sn限制 例如： 1:10,2:2 肉体需要10级 载具需要2级 |
| cs | String | `pointLimit` | 天赋点限制 例如： 1:10,2:2 肉体需要投入10天赋点 载具需要投入2天赋点 |
| cs | String | `areaLimit` | Talent表area限制 例如： 1:1,2:1 区域1达到1级 区域2达到1级 |
| cs | int | `pointNum` | 升级消耗的天赋点数量（校验使用货币类型5的当前数量） |
| cs | String | `consume` | 升级时其他消耗 |
| cs | int | `effectType` | 天赋效果类型 参考天赋效果类型注释表 |
| cs | String | `effectParam` | 天赋效果参数 |
| c | Text | `funDesc` | 效果描述 |
| c | String[] | `funValue` | 效果数值 |

**天赋等级页|TalentLevel**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 天赋等级id |
| cs | int | `id` | 天赋id |
| cs | int | `lv` | 天赋等级 |
| cs | int | `lvLimit` | 角色等级限制 |
| cs | String | `clsLimit` | TalentClass表sn限制 例如： 1:10,2:2 肉体需要10级 载具需要2级 |
| cs | String | `questLimit` | 任务限制 例如： 1000,10001 完成任务1000和10001 |
| cs | String | `exploreLimit` | 探索度限制 区域地块Sn1:百分百参数 例如： 4003:5000,4006:10000  |
| cs | String | `pointLimit` | 天赋点限制 例如： 1:10,2:2 肉体需要投入10天赋点 载具需要投入2天赋点 |
| cs | String | `areaLimit` | Talent表area限制 例如： 1:1,2:1 区域1达到1级 区域2达到1级 |
| cs | int | `pointNum` | 升级消耗的天赋点数量（校验使用货币类型5的当前数量） |
| cs | String | `consume` | 升级时其他消耗 |
| cs | int | `effectType` | 天赋效果类型 参考天赋效果类型注释表 |
| cs | String | `effectParam` | 天赋效果参数 |
| c | Text | `funDesc` | 效果描述 |
| c | String[] | `funValue` | 效果数值 |
| c | int | `score` | 天赋评分 |

- **天赋效果类型注释**（17行×7列）— 辅助sheet，首行: 

### Toughness.xlsx

**怪物韧性|Toughness**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | Sn |
| s | int | `normalBuff` | 常态阶段Buff（当前C++实现中阶段Buff自动挂载已注释，配置项暂不生效） |
| cs | float | `normalToughnessMax` | 常态韧性上限 |
| cs | float | `paralyzeDuration` | 瘫痪阶段持续时间(秒)，用于时间戳计算与UI展示 |
| s | int | `paralyzeDebuff` | 瘫痪阶段Debuff（当前C++自动挂载已注释，暂不生效） |
| cs | float | `recoveryDuration` | 回韧阶段持续时间(秒)，用于时间戳计算与UI展示 |
| s | int | `enrageRule` | 狂暴触发规则:0永不,N前N次,-1每次（当前C++阶段转移逻辑未启用） |
| cs | float | `enrageToughnessValue` | 狂暴阶段韧性值 |
| s | int | `enrageBuff` | 狂暴阶段Buff（当前C++自动挂载已注释，暂不生效） |
| s | String | `abilityNormal` | 正常阶段技能sn:cd |
| s | String | `abilityRecovery` | 回韧阶段技能sn:cd |
| s | String | `abilityEnrage` | 狂暴阶段技能sn:cd |