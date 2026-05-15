## Actor与实体

### Actor.xlsx

**演员表总表（自动生成）|Actor**（3466条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn 1+主类(2位)+子类(2位)+ID(5位) 大类关联子表 添加数据需要在对应大类和子类下进入插入  |
| cs | Text | `name` | 名称 |
| csr | String | `bpAssetName` | 蓝图资源名称 |
| cs | int | `type` | 演员主类型 详见 ActorLuaClass表 |
| cs | int | `subType` | 演员子类型 |
| c | float | `lifebarlength` | 血条长度 缩放比例 |
| cs | float | `modelScale` | 模型尺寸缩放 0表示使用蓝图中的默认值 |
| cs | int | `AIAttr` | AI属性 会被ActorBirth表覆盖 |
| cs | int[] | `behaviorTrees` | 使用的所有行为树 |
| cs | int | `attrGroupId` | 属性组Id |
| cs | int | `level` | 等级 |
| cs | int | `deathDropSn` | 死亡掉落 |
| s | int | `greenBulletDropSn` | 绿色子弹掉落 |
| s | int | `purpleBulletDropSn` | 紫色子弹掉落 |
| cs | int | `attackDropSn` | 攻击掉落 对怪物造成伤害 |
| cr | String | `interactiveIcon` | 交互图标 |
| cs | float | `interactiveDistance` | 交互距离 米 |
| c | Text | `actionName` | 交互按钮名称 |
| cs | int | `interactiveAngle` | 交互角度限制 （NPC)  |
| cs | boolean | `interactiveNotCheckLineTrace` | 交互遮挡物提检测 默认False是打开 |
| cs | boolean | `InteractServerCheck` | 交互物体客户端检测默认 False客户端检测显示Icon True服务器检测才显示Icon |
| cs | int[] | `interactiveAuthority` | 交互权限 参数1：0不限制交互，1资产主人可交互 |
| csr | String[] | `interactiveMTG` | 交互MTG （站立动作,下蹲动作） 不配则交互无通用动作 |
| c | boolean | `isOverlayMat` | 交互范围内 是否显示描边 |
| csr | String[] | `defaultAbilities` | 默认挂载技能 |
| cs | int | `campId` | 阵营ID |
| cs | int[] | `elementException` | 元素异常 |
| cs | String[] | `Tags` | Tags |

### ActorBirth.xlsx

**演员出生表总表（自动生成）|ActorBirth**（26872条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| csi | int | `sceneSn` | 场景sn |
| e | String | `desc` | 描述信息 |
| e | String | `fileName` | 所属文件名 |
| e | String | `staff` | 负责人 |
| cs | int[] | `monsterSns` | 演员SN 对应Actor表 |
| e | String[] | `bpAssets` | 演员蓝图名称 |
| cs | int[] | `monsterWeights` | 随机权重 |
| cs | int | `monsterNum` | 演员数量 |
| cs | Location | `monsterPos` | 出生坐标 单位：米 |
| cs | float | `radius` | 出生范围 单位：米 |
| cs | boolean | `keepHeight` | 是否保持高度 TRUE: 保持配置高度 FALSE: 出生后贴到地面 |
| e | String | `heightHistory` | 高度历史记录 用于校验距地面的高度 |
| cs | int | `collisionHandleOverride` | 出生如果产生碰撞覆盖处理方法 0:默认(使用蓝图中的配置) 1:固定生成，忽略碰撞 2:尝试调整位置，但固定生成 3:尝试调整位置，如仍然碰撞则不生成 4:不生... |
| cs | int | `dirMode` | 出生朝向模式 0: 使用指定角度 1: 水平面内完全随机 2: 水平面夹角内随机 |
| cs | float[] | `monsterDir` | 出生朝向 |
| cs | float | `dirRange` | 出生朝向随机范围 单位：夹角角度 |
| csr | String | `birthMontage` | 出生动作蒙太奇 |
| cr | String | `birthEffect` | 出生特效 |
| c | boolean | `fadeInSpawn` | 出生是否 使用渐变效果 |
| cs | boolean | `immediatelySpawn` | 是否立即创建 false：受管理器控制，分帧创建演员 true: 立即创建演员，忽略其它限制 |
| cs | String | `customParams` | 自定义参数 用于配置特殊功能 |
| cs | int | `patrolSn` | 巡逻路径SN 对应PatrolPath表 |
| s | boolean | `autoResumePatrol` | 脱战后是否 自动继续巡逻 |
| cs | int | `levelMode` | 覆盖等级模式 0: 不覆盖，使用Actor表中的值 1: 使用指定值覆盖 2: 使用玩家等级浮动值覆盖，最低不低于覆盖等级数值下限 |
| cs | int | `levelValue` | 覆盖等级数值 |
| cs | int | `levelMinValue` | 覆盖等级数值下限 levelMode=2时使用 |
| cs | int | `levelMaxValue` | 覆盖等级数值上限_x000D_ levelMode=2时使用 |
| cs | int | `refreshSn` | 刷新SN |
| s | int | `existTimeSec` | 存活时长 演员存活超过该时间后会自动删除 仅在刷新SN对应 triggerType为2时启用 |
| cs | int | `groupSn` | 分组SN |
| cs | int | `groupWeight` | 分组权重 |
| e | boolean | `isLeader` | 是否为队长 |
| cs | int | `refreshMaskSceneSn` | 场景SN(用于性能优化) 如果场景创建时不需要刷新则为0 否则为对应场景的SN |
| s | boolean | `eternalShow` | 是否永久显示 TRUE: 创建后始终留在场景 FALSE: 由九宫管理创建 |
| cs | int | `AIAttrSn` | AI属性 读取AIAttr表 |
| s | boolean | `isSquadBehavior` | 是否参与队伍行为 响应队长逃跑、起床等行为 |
| s | boolean | `isSquadHate` | 是否队伍内部仇恨联动 |
| cs | int | `overrideCampId` | 覆盖阵营ID 如果为0则使用 Actor表中的ID |

### ActorCharacteristicTags.xlsx

**演员特征tag|ActorCharacteristicTags**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| c | Text | `name` | 显示名称 |

### ActorGroupRefreshRule.xlsx

**组刷新规则|ActorGroupRefreshRule**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | refreshGroupSn |
|  | Text | `desc` | 备注 |
| s | int | `type` | 刷新规则类型 1,固定每年：年月日时分秒 格式：yyyy-MM-dd HH:mm:ss 2,固定每月：每年的几月几日几点几分几秒 格式：5-10 14:52:3... |
| s | String[] | `time` | 时间(支持数组，切时间按照从小到大顺序) |

### ActorInteractCD.xlsx

**群组交互CD|ActorInteractCD**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | ActorBirthSn |
| cs | int | `interactGroupSn` | 交互分组  |
| e | String | `desc` | 描述信息 |
| cs | float | `interactCD` | 群组交互CD (大于0) |

### ActorLuaClass.xlsx

**演员Lua类定义|ActorLuaClass**（162条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN !!添加新类型时 要按主副类型排序 |
| cs | int | `mainType` | 主类型 |
| cs | int | `subType` | 副类型 |
| cs | String | `luaClass` | Lua中的类名 |
| c | boolean | `clientEnablePool` | 客户端的蓝图对象是否开启对象池 |
| s | boolean | `serverEnablePool` | 服务器的蓝图对象是否开启对象池 |
|  | String | `desc` | 备注 |
|  | String | `todo` | 待办 |
| s | int | `aoiCellLevel` | AOI格子层级（程序配置优化） |

### ActorRefresh.xlsx

**演员刷新表|ActorRefresh**（28条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` |  刷新Sn |
| e | String | `desc` | 备注 |
| cs | int | `triggerType` | 触发类型 0: 服务器－场景创建后刷新 1: 客户端－场景创建后刷新 2: 服务器－功能自行控制刷新 3: 客户端－功能自行控制刷新  |
| s | float | `sceneCreateRefreshDelay` | 场景创建后刷新 延迟时间（秒） |
| s | int | `refreshorder` | 刷新顺序 0：立即刷新全部 1：间隔刷新 |
| s | float | `refreshTime` | 刷新间隔时间（秒），仅当refreshorder为间隔刷新时生效 |
| s | int | `refreshCountPer` | 间隔刷新数量 |
| s | boolean | `ifRelieve` | 死亡后 是否可以复活 |
| s | float[] | `reliveTime` | 复活间隔时间 配成数组表示在两个数值间随机复活时间，闭区间 （秒） |
| s | String | `reliveDate` | 消失后再次刷新出来时间点 （HH:MM） |
| s | int | `reliveType` | 复活类型 1=通过间隔时间复活（reliveTime列） 2=通过时间点复活（使用reliveDate列，HH:MM格式） |
| s | int | `refreshEventType` | 再次刷新出Actor 事件类型 0，Actor被击杀死亡时开始计时刷新 1，Actor销毁时开始计时刷新 |
| s | int[] | `showHourRange` | Actor在指定小时闭区间内显示 范围[0,23]，支持跨天（Start>End时为OR逻辑），未配或非法长度均不限制 |

**场景刷怪继承表|ActorSceneInherit**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` |  场景sn |
| s | int | `inheritSn` | 继承的源birth数据场景Sn |

### Actor_0_Default.xlsx

**Actor_Default**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn 1+大类(2位)+子类(2位)+ID(5位) 大类关联子表 添加数据需要在对应大类和子类下进入插入  |
| cs | Text | `name` | 名称 |
|  | Text | `desc` | 描述信息 |
| csr | String | `bpAssetName` | 蓝图资源名称 |
| cs | int | `type` | 演员类型 点击查看具体分类     0,默认演员类型2,怪物（可战斗的角色）3,NPC 4,宝箱5,采集物（派生自Actor，静态采集物）6,采集物（派生自Ch... |
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
| cs | int | `interactiveAngle` | 交互角度限制（NPC)  |
| cs | boolean | `interactiveNotCheckLineTrace` | 交互遮挡物提检测 默认（false）是打开的打开的 |
| csr | String[] | `defaultAbilities` | 默认挂载技能 |
| cs | int | `campId` | 阵营ID |
| cs | String[] | `Tags` | 摆放建筑重叠检测tag（配置了tag，则走tag机制，不配，则走自己原来的机制。） PreventBuildOverlap（不允许建筑重叠摆放） Distanc... |

### Actor_11_Vehicle.xlsx

**Actor_Vehicle**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn 载具sn：111 + 功能分类（1位） + 子类（2位）+ id（4位） 功能分类：0 玩家载具；1 npc载具，交通、氛围用；2 玩法载具；3 战斗、任... |
| cs | Text | `name` | 名称 |
|  | Text | `desc` | 描述信息 |
| csr | String | `bpAssetName` | 蓝图资源名称 |
| cr | String | `VehicleNew_VehicleUIBPAssetName` | 载具UI蓝图资源名 |
| cs | int | `type` | 演员类型 点击查看具体分类     0,默认演员类型2,怪物（可战斗的角色）3,NPC 4,宝箱5,采集物（派生自Actor，静态采集物）6,采集物（派生自Ch... |
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
| cs | int | `interactiveAngle` | 交互角度限制（NPC)  |
| csr | String[] | `defaultAbilities` | 默认挂载技能 |
| cs | int | `campId` | 阵营ID |
| cs | String[] | `Tags` | 摆放建筑重叠检测tag（配置了tag，则走tag机制，不配，则走自己原来的机制。） PreventBuildOverlap（不允许建筑重叠摆放） Distanc... |
| cs | int | `VehicleNew_type` | 载具类型 参考载具类型表 |
| cs | int | `VehicleNew_repairTime` | 修理时间（秒） |
| cr | String | `VehicleNew_Icon` | 载具图标 |
| c | Text | `VehicleNew_Name` | 载具名称 |
| cs | int | `VehicleNew_AttrSN` | 属性SN |
| c | String | `VehicleNew_DescribeParam` | 描述参数 ,逗号隔开,上限为10 |
| c | Text | `VehicleNew_DescribeText` | 属性描述 |
| c | float | `VehicleNew_MultipleSph` | 表显倍数 |
| c | int | `VehicleNew_MaxSph` | 表显时速上限 |
| c | float[] | `VehicleNew_uiModelLookRotation` | 载具收集相机角度 |
| c | float | `VehicleNew_uiModelLookDistance` | 载具收集摄像机与目标距离 |
| c | float[] | `VehicleNew_uiModelLookOffset` | 载具收集相机偏移（X？？，Y目标左+右-，Z上-下+） |
| c | float[] | `VehicleNew_uiModelLookPitchRange` | 该点位上下转动范围 [1]:min [2]:max |
| c | String | `VehicleNew_uiModelPos` | 载具收集模型位置 |
| c | float[] | `VehicleNew_uiModelRotation` | 载具收集模型旋转 |
| c | float[] | `VehicleNew_uiModelScale` | 载具收集模型缩放 |
| c | float[] | `VehicleNew_vehicleGetLookRotation` | 载具获得相机角度 |
| c | float | `VehicleNew_vehicleGetLookDistance` | 载具获得摄像机与目标距离 |
| c | float[] | `VehicleNew_vehicleGetLookLookOffset` | 载具获得相机偏移（X？？，Y目标左+右-，Z目标上-下+） |
| c | float[] | `VehicleNew_vehicleGetLookLookPitchRange` | 该点位上下转动范围 [1]:min [2]:max |
| c | float[] | `VehicleNew_vehicleGetUIModelPos` | 载具获得模型位置 （X左-右+，0.1就很大 ） |
| c | float[] | `VehicleNew_vehicleGetUIModelRotation` | 载具获得模型旋转 |
| c | float[] | `VehicleNew_vehicleGetUIModelScale` | 载具获得模型缩放 |
| cs | boolean | `VehicleNew_Collection` | 是否可以收集（True 可收集会显示在收集界面中 False 不可收集  默认不配是False） |
| c | float | `VehicleNew_SceneTraceIconZOffset` | 【通用追踪】主角召唤载具追踪图标高度偏移 厘米 |
| cs | float | `VehicleNew_SpawnDistanceFromHero` | 召唤时与玩家距离，cm |
| cs | float | `VehicleNew_SpawnCheckHeight` | 召唤检查点高度，cm |
| cs | float[] | `VehicleNew_SpawnCheckCollisionBox` | 召唤碰撞检查大小 |
| cs | boolean | `VehicleNew_ShowInGarage` | 是否可以显示在车库（True 可， False 不可，  默认不配是False） |
| c | Text | `VehicleNew_DetailDescribeText` | 文字描述 |
| cs | String | `VehicleNew_ExchangeCost` | 兑换所需道具，个数 |
| cs | int | `VehicleNew_color` | 品质【1】绿C【2】蓝B【3】紫A【4】橙S【5】红s+ |
| cs | boolean | `VehicleNew_vehicleUseCampId` | 载具是否使用阵营（不使用阵营时载具默认为中立单位） |
| c | int | `VehicleNew_CollectViewSortId` | 收集界面排序Id |
| c | boolean | `VehicleNew_bShowInModifyFactoryView` | 是否在载具涂装列表中显示 |
| c | float[] | `VehicleNew_uiFakeShadowScale` | 载具收集界面假影缩放 |
| cs | int[] | `VehicleNew_limitopenSn` | 限时开启活动配置 |
| cs | String | `VehicleNew_WantedOdds` | 抢车时加的通缉值 通缉值1:权重1,通缉值2:权重2 |
| cs | String | `VehicleNew_VehicleFix` | 载具维修消耗 |
| cs | boolean | `VehicleNew_AutoDriving` | 是否允许自动驾驶 |
| c | String | `VehicleNew_RankUIModelPos` | 排行榜偏移位置 |
| cs | int[] | `VehicleNew_VehicleSkillSns` | 载具技能sn |
| cr | String | `VehicleNew_IconSpecialTag` | 特色标签图标 |
| c | boolean | `VehicleNew_ShowName` | 上车是否显示名字 |
| cs | boolean | `VehicleNew_CanBeStolen` | 能否放入赃车库 |
| cs | int | `VehicleNew_PaintingSN` | 载具涂装表SN |

### Actor_13_Destructible.xlsx

**Actor_Destructible**（152条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn 1+大类(2位)+子类(2位)+ID(5位) 大类关联子表 添加数据需要在对应大类和子类下进入插入  |
| cs | Text | `name` | 名称 |
|  | Text | `desc` | 描述信息 |
| csr | String | `bpAssetName` | 蓝图资源名称 |
| cs | int | `type` | 演员类型 点击查看具体分类     0,默认演员类型2,怪物（可战斗的角色）3,NPC 4,宝箱5,采集物（派生自Actor，静态采集物）6,采集物（派生自Ch... |
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
| cs | int | `interactiveAngle` | 交互角度限制（NPC)  |
| csr | String[] | `defaultAbilities` | 默认挂载技能 |
| cs | int | `campId` | 阵营ID |
| cs | String[] | `Tags` | 摆放建筑重叠检测tag（配置了tag，则走tag机制，不配，则走自己原来的机制。） PreventBuildOverlap（不允许建筑重叠摆放） Distanc... |
| cs | int[] | `PetDestructible_elements` | 破坏属性 （无指定属性则全部填写） |
| cs | int | `PetDestructible_hitTimes` | 可破坏次数 |
| cs | boolean | `PetDestructible_isSingleTime` | 是否一次性 |
| cs | int | `PetDestructible_hitMtgTriggerTime` | 受到几次攻击触发受击蒙太奇，填0不触发 |

### Actor_14_BaseActor.xlsx

**Actor_Default**（35条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn 1+大类(2位)+子类(2位)+ID(5位) 大类关联子表 添加数据需要在对应大类和子类下进入插入  |
|  | Text | `desc` | 描述信息 |
| cs | Text | `name` | 名称 |
| csr | String | `bpAssetName` | 蓝图资源名称 |
| cs | int | `type` | 演员类型 点击查看具体分类     0,默认演员类型2,怪物（可战斗的角色）3,NPC 4,宝箱5,采集物（派生自Actor，静态采集物）6,采集物（派生自Ch... |
| c | float | `lifebarlength` | 血条长度缩放比例 |
| cs | float | `modelScale` | 模型尺寸缩放 0表示使用蓝图中的默认值 |
| cs | int | `attrGroupId` | 属性组Id |
| cs | int | `level` | 等级 |
| cr | String | `interactiveIcon` | 交互图标 图标1是螺丝 图标2是宝箱 图标5是对话 |
| cs | float | `interactiveDistance` | 交互距离（m） |
| cs | int | `interactiveAngle` | 交互角度限制（NPC)  |
| cs | boolean | `interactiveNotCheckLineTrace` | 交互遮挡物提检测 默认（false）是打开的打开的 |
| cs | int | `campId` | 阵营ID |
| cs | String[] | `Tags` | 摆放建筑重叠检测tag（配置了tag，则走tag机制，不配，则走自己原来的机制。） PreventBuildOverlap（不允许建筑重叠摆放） Distanc... |

### Actor_15_Element.xlsx

**Actor_Element**（130条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn 1+主类(2位)+子类(2位)+ID(5位) 大类关联子表 添加数据需要在对应大类和子类下进入插入  |
| cs | Text | `name` | 名称 |
| csr | String | `bpAssetName` | 蓝图资源名称 |
| cs | int | `type` | 演员主类型，详见 ActorLuaClass 表 此表填15 |
| cs | int | `subType` | 子类型 |
|  | int | `editorType` | 编辑器类型 1:门 2:交互机关 3:抢劫箱子 4:风扇 5:移动平台 6：平移激光 7：旋转激光 10: 弹跳板 |
| c | float | `lifebarlength` | 血条长度缩放比例 |
| cs | float | `modelScale` | 模型尺寸缩放 0表示使用蓝图中的默认值 |
| cs | int | `AIAttr` | AI属性 （会被ActorBirth表的属性覆盖 |
| cs | int[] | `behaviorTrees` | 使用的所有行为树 对应 BehaviorTree 表sn （模板请勿更改，如果新的需求联系吴狄） |
| cr | String | `interactiveIcon` | 交互图标 图标1是螺丝 图标2是宝箱 图标5是对话 |
| cs | float | `interactiveDistance` | 交互距离（m） |
| cs | int | `interactiveAngle` | 交互角度限制 （NPC)  |
| cs | int | `interactiveType` | 交互的触发类型(0默认瞄准 1距离) |
| cs | boolean | `interactiveNotCheckLineTrace` | 是否关闭遮挡物检测（TRUE关闭/不填默认状态） |
| cs | boolean | `InteractServerCheck` | 交互物体客户端检测默认 False客户端检测显示Icon True服务器检测才显示Icon |
| cs | int[] | `interactiveAuthority` | 交互权限 参数1：0不限制交互，1资产主人可交互 |
| cs | String[] | `Tags` | 摆放建筑重叠检测tag（配置了tag，则走tag机制，不配，则走自己原来的机制。） PreventBuildOverlap（不允许建筑重叠摆放） Distanc... |

### Actor_16_Summoned.xlsx

**Actor_Summoned**（11条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn 1+主类(2位)+子类(2位)+ID(5位) 大类关联子表 添加数据需要在对应大类和子类下进入插入  |
| cs | Text | `name` | 名称 |
| csr | String | `bpAssetName` | 蓝图资源名称 |
| cs | int | `type` | 演员主类型，详见 ActorLuaClass 表 0,默认演员类型2,怪物（可战斗的角色）3,NPC 4,宝箱5,采集物（派生自Actor，静态采集物）6,采集... |
| cs | int | `subType` | 子类型 |
| c | float | `lifebarlength` | 血条长度缩放比例 |
| cs | float | `modelScale` | 模型尺寸缩放 0表示使用蓝图中的默认值 |
| c | boolean | `Summoned_showHeadup` | 是否显示头顶UI |
| cs | int | `campId` | 阵营ID （召唤物默认不填） |
| cs | int | `AIAttr` | AI属性 （会被ActorBirth表的属性覆盖 |
| cs | int[] | `behaviorTrees` | 使用的所有行为树 对应 BehaviorTree 表sn （模板请勿更改，如果新的需求联系吴狄） |
| cr | String | `interactiveIcon` | 交互图标 图标1是螺丝 图标2是宝箱 图标5是对话 |
| cs | float | `interactiveDistance` | 交互距离（m） |
| cs | int | `interactiveAngle` | 交互角度限制 （NPC)  |
| cs | int | `interactiveType` | 交互的触发类型(0默认瞄准 1距离) |
| cs | String[] | `Tags` | 摆放建筑重叠检测tag（配置了tag，则走tag机制，不配，则走自己原来的机制。） PreventBuildOverlap（不允许建筑重叠摆放） Distanc... |
| c | int | `Summoned_traceDist` | 追踪提示距离（米，不填则无追踪） |
| cr | String | `Summoned_traceIcon` | 追踪图标 |
| c | float | `Summoned_traceOffset` | 追踪图标Z偏移（米） |
| cs | int[] | `Summoned_characteristicTags` | 特征tag列表 引至ActorCharacteristicTags |
| cs | int | `Summoned_element1` | 元素1 |
| cs | int | `Summoned_element2` | 元素2 |

### Actor_20_Director.xlsx

**Actor_Director**（16条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn 1+大类(2位)+子类(2位)+ID(5位) 大类关联子表 添加数据需要在对应大类和子类下进入插入  |
|  | Text | `desc` | 描述信息 |
| cs | Text | `name` | 名称 |
| csr | String | `bpAssetName` | 蓝图资源名称 |
| cs | int | `type` | 演员类型 点击查看具体分类     0,默认演员类型2,怪物（可战斗的角色）3,NPC 4,宝箱5,采集物（派生自Actor，静态采集物）6,采集物（派生自Ch... |
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
| cs | int | `interactiveAngle` | 交互角度限制（NPC)  |
| csr | String[] | `defaultAbilities` | 默认挂载技能 |
| cs | int | `campId` | 阵营ID |
| cs | String[] | `Tags` | 摆放建筑重叠检测tag（配置了tag，则走tag机制，不配，则走自己原来的机制。） PreventBuildOverlap（不允许建筑重叠摆放） Distanc... |
| cs | int | `Director_ShowHeadUpDistance` | 特殊导演要显示的头顶距离控制 |

### Actor_21_Mine.xlsx

**Actor_Mine**（18条数据）

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
| cs | int | `attackDropSn` | 攻击掉落 (单次掉落) |
| cr | String | `interactiveIcon` | 交互图标 图标1是螺丝 图标2是宝箱 图标5是对话 |
| cs | float | `interactiveDistance` | 交互距离 （m） |
| cs | int | `interactiveAngle` | 交互角度限制（NPC)  |
| cs | int[] | `interactiveAuthority` | 交互权限 参数1 0=不限制交互 1=产主人可交互 |
| csr | String[] | `interactiveMTG` | 交互MTG 站立动作,下蹲动作 不配则交互无通用动作 |
| c | boolean | `isOverlayMat` | 交互范围内 是否显示描边 |
| csr | String[] | `defaultAbilities` | 默认挂载技能 |
| cs | int | `campId` | 阵营ID |
| cs | String[] | `Tags` | 摆放建筑重叠检测tag（配置了tag，则走tag机制，不配，则走自己原来的机制。） PreventBuildOverlap（不允许建筑重叠摆放） Distanc... |
| cs | int | `Mine_type` | 类别组         1=植物 2=石头 |
| cs | int[] | `Mine_mineType` | 采集类型 1.基础采集 2.受击采集 |
| cr | String | `Mine_tipEffect` | 提示特效 |
| cr | float[] | `Mine_tipEffectPosOffset` | 提示特效偏移 米 |
| cs | int | `Mine_dropTimes` | 掉落次数 |
| cs | String | `Mine_scales` | 缩放倍率 (血量:缩放倍率) |
| cr | String | `Mine_scalesEffect` | 缩放特效 |
| cr | String | `Mine_scalesAudio` | 缩放音效 |
| cr | String | `Mine_dropEffect` | 掉落时特效 |
| cr | String | `Mine_dropAudio` | 掉落时音效 |
| cr | String | `Mine_destoryEffect` | 销毁特效 |
| cr | String | `Mine_destoryAudio` | 销毁音效 |
| cs | boolean | `Mine_affectByTalent` | 采集效果 可被天赋影响 |
| cr | String | `Mine_SearrchMapIcon` |  |

### Actor_22_BuildObject.xlsx

**Actor_BuildObject**（549条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 建筑物的Sn （1220090001~1220099999）为玩法任务用特殊建筑id段） |
| cs | Text | `name` | 名称 |
| c | Text | `BuildObject_desc` | 描述 |
| cr | String | `BuildObject_icon` | 图标 |
| csr | String | `bpAssetName` | 蓝图资源名称 |
| cs | int | `type` | 演员主类型，详见ActorLuaClass表 |
| cs | int | `subType` | 演员子类型 |
| cs | int | `BuildObject_typeA` | 类型A |
| c | int | `BuildObject_orderPriority` | 建造列表排序优先级（数字越小越靠前，数字相同按照sn排序） |
| cs | int | `BuildObject_typeB` | 类型B（建筑替换组） |
| cs | int | `BuildObject_formulaSn` | 建造材料Sn，建造此建造物所需的材料，找不到则无需材料建造 |
| cs | float | `BuildObject_requiredBuildWorkAmount` | 建造所需的工作量，<=0则直接建造完成 |
| cs | boolean | `BuildObject_autoBuild` | 是否开启自动建造 |
| cs | int | `BuildObject_score` | 建筑分数 |
| c | boolean | `BuildObject_unselectable` | 是否不可选中 |
| c | boolean | `BuildObject_cannotDeleted` | 是否不可拆除 |
| cs | boolean | `BuildObject_isNotHit` | 是否不可受击 |
| cs | boolean | `BuildObject_isNotDeteriorate` | 是否不可劣化 |
| cs | float | `BuildObject_installNeighborThreshold` | 接近相邻建筑物的阈值 |
| cs | boolean | `BuildObject_isInstallOnlyOnBase` | 只能在地基上建造吗？ |
| cs | boolean | `BuildObject_isInstallOnlyInDoor` | 只能在室内建造吗？ |
| cs | boolean | `BuildObject_isInstallOnlyHubAround` | 只能安装在据点附近吗？ |
| cs | boolean | `BuildObject_installableNoObstacleFromCamera` | 当摄像头和建筑物之间存在障碍物时无法建造 |
| cs | boolean | `BuildObject_installAtReticle` | 是否按照网格建造 |
| cs | int | `BuildObject_installMaxNumInBaseCamp` | 当前字段涵义是：常规摆放完是否立即关闭建造界面（原本是：在据点内可安装的最大数量 |
| cs | boolean | `BuildObject_bBelongToBaseCamp` | 是否归属据点 |
| cs | int[] | `BuildObject_productions` | 制造配方sn，表格为Production |
| cs | boolean | `BuildObject_playerCanProduct` | 玩家是否能参与制造 |
| cs | int[] | `BuildObject_workerAssign` | 工作属性 |
| cs | int | `BuildObject_workerMaxNum` | 参与工作的宠物数量上限 |
| cs | boolean | `BuildObject_canFixedPet` | 是否可以固定指定帕鲁工作 |
| cr | String | `interactiveIcon` | 交互图标 图标1是螺丝 图标2是宝箱 图标5是对话 |
| cs | float | `interactiveDistance` | 交互距离（m） |
| cs | int | `interactiveAngle` | 交互角度限制 （NPC) |
| cs | boolean | `interactiveNotCheckLineTrace` | 交互遮挡物提检测默认（false）是打开的打开的 |
| cs | boolean | `InteractServerCheck` | 交互物体客户端检测默认False客户端检测显示IconTrue服务器检测才显示Icon |
| cs | int[] | `interactiveAuthority` | 交互权限 参数1：0不限制交互，1资产主人可交互 |
| csr | String[] | `interactiveMTG` | 交互MTG （站立动作,下蹲动作） 不配则交互无通用动作 |
| c | boolean | `isOverlayMat` | 交互范围内 是否显示描边 |
| cs | int | `attrGroupId` | 属性组Id |
| cs | String[] | `Tags` | Tags |
| cr | String | `BuildObject_buildStartEffect` | 建筑物建造工作开始的特效 |
| cr | String | `BuildObject_buildStartAudio` | 建筑物建造工作开始的音频（配在前面的特效上了） |
| cr | String | `BuildObject_buildCompleteEffect` | 建筑物建造工作结束的特效 |
| cr | String | `BuildObject_buildCompleteAudio` | 建筑物建造工作结束的音频 |
| c | float | `BuildObject_playerDestroyFXPlayerRange` | 建筑物销毁时，玩家在范围内才会播放 为0一定播放 |
| cr | String | `BuildObject_destroyEffect` | 建筑物销毁的特效 |
| cr | String | `BuildObject_destroyAudio` | 建筑物销毁的音频 后续不使用这字段，音频都配置在特效上 |
| c | int | `BuildObject_headUpShowDis` | 头顶显示距离（米） |
| c | float | `BuildObject_headUpSwitchFar` | 头顶切换距离（米） |
| cs | int | `BuildObject_electricConsume` | 工作电量消耗数/s |
| cs | float | `BuildObject_deteriorateRate` | 劣化速度 掉1点血的秒数 |
| cs | int | `BuildObject_materialType` | 建筑材质 1=木头 2=石头 |
| cs | int | `BuildObject_fireExtinguishingWorkAmount` | 灭火需要工作量 |
| cs | float | `BuildObject_fireAddRate` | 获得火元素异常值修正                                 *（1+此值） |
| cs | float | `BuildObject_fireResistanceGrowFactor` | 耐性增加系数                  *（1+此值） |
| cs | boolean | `BuildObject_bCluster` | 建筑物是否能加入建筑群中（用于存储优化，默认false，是否配置true请联系zhangyan确认） |
| cs | int | `BuildObject_ClusterType` | 能加入集群的类型  // 地基 1,  // 墙 2,  // 三角形墙 3,  // 斜坡屋顶或斜坡楼梯 4,  // 立柱 5,              ... |
| cs | boolean | `BuildObject_bHeadUp` | 是否有头顶信息UI 默认True |
| c | boolean | `BuildObject_canSnapInstall` | 是否可以轴对齐摆放 |
| cs | boolean | `BuildObject_canPreBuild` | 是否可以预建造 |
| cs | boolean | `BuildObject_canSingleMove` | 是否可以单个进行移动，不影响搬家 |
| cs | boolean | `BuildObject_bDevelop` | 是否是开发专用建筑物 |
| cs | int | `BuildObject_dropSn` | 以下类型的建筑物被打爆后的掉落物 1：大世界建筑物 2：怪物据点内建筑物 |
| cs | boolean | `BuildObject_isStore` | 获取渠道 是否通过物品解锁 |
| cs | int | `campId` | 阵营ID |
| cs | int | `BuildObject_buildExp` | 建造完成给予经验数 |

**建筑蓝图|BuildingBlueprint**（16条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 蓝图sn |
| c | Text | `name` | 名称 |
| cs | int | `sceneSn` | 所属场景Sn |
| cs | boolean | `ignoredBuild` | 是否忽略建造过程？ |
| cs | int | `type` | 蓝图类型 1：新手房子，归属于玩家，自动刷新 2：怪物据点，没有归属，自动刷新 3：场景建筑，归属场景所有者，不存盘，自动刷新 4：自定义刷新逻辑，归属于场景所... |
| cs | int | `visionDistance` | 怪物据点用， 性能优化 玩家在该范围内才会加载 单位是平方厘米 默认是100米 |
| cs | String | `version` | 版本号，怪物据点用 |
| cs | String | `data` | 蓝图信息，由工具自动生成，非必要不要直接修改 |
| cs | String | `data1` | 蓝图信息1（接data） |
| cs | String | `data2` | 蓝图信息2（接data1） |
| cs | String | `data3` | 蓝图信息3（接data2） |

**预设蓝图|PresetBlueprint**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 预设蓝图的sn |
| c | Text | `name` | 预设蓝图的名称 |
| c | Text | `description` | 预设蓝图的描述 |
| cr | String | `icon` | 预设蓝图的封面图 |
| c | String | `data` | 预设蓝图的数据 |
| c | int | `cameraDistance` | 相机距离 |
| c | String | `cameraCenter` | 相机盯着的中心点 |
| c | int[] | `BuildRot` | 蓝图默认旋转 |

**建造材料|FormulaData**（308条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 配方Sn |
| cs | int[] | `materialSns` | 所需的材料Sn |
| cs | int[] | `materialCounts` | 所需的材料数量，跟materialSns一一对应 |
| cs | int[] | `productSns` | 产物的Sn |
| cs | int[] | `productCounts` | 产物的数量，跟productSns一一对应 |

**操作提示|OperationTip**（63条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 错误码类型 |
| c | int | `strSn` | 错误码Sn |

**据点等级|BaseCampLevel**（44条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 等级 |
| cr | string | `icon` | 图标 |
| cs | int[] | `needInstallBuildObjectSns` | 升级到当前等级需要建造的建筑物 |
| cs | int[] | `needInstallBuildObjectCounts` | 升级到当前等级需要建造的建筑物数量 |
| cs | int | `needPalNumInBaseCamp` | 升级到当前等级据点内需要放置的帕鲁数量 |
| cs | int | `canInstallBaseCampNum` | 可以建造的据点数量 |
| cs | int | `canPutInPalNum` | 可以放置的帕鲁数量 |
| cs | int | `canInstallExpeditionCampNum` | 可以建造的远征据点数量 |
| cs | int | `canPutInExpeditionPalNum` | 可以放置的远征据点帕鲁数量 |
| cs | int | `canInstallPlantationNum` | 可以建造的种植园数量 |
| cs | int | `canInstallIncubatorNum` | 可以建造的孵化器数量 |

**据点镜头|CampCamera**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | int | `radius` | 半径 |
| c | int | `angle` | 角度 |
| c | int[] | `rotationOffset` | 视角偏移 yaw,pitch,roll |

**筛选|BuildObjectFilter**（44条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 页签 |
| cr | String[] | `icon` | 图标，依次对应未选中，选中，未解锁状态 |
| c | Text | `displayName` | 显示名称 |
| c | int[] | `secondaryTabs` | 筛选的二级页签 |

**建筑物收纳|BuildingStorage**（35条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 建筑物Sn |
| cs | int | `maxSize` | 容器容量 |
| cs | int | `transportPriority` | 搬运优先级0=最低 1=公会箱子 2=据点箱子 3=据点箱子高优先级 4=搬运要求 5=饲料箱 6=冷藏饲料箱 7=最高优先级 |
| cs | int[] | `whitelist` | 该收纳箱子默认可以放入道具的白名单，不配置则走ItemTypeName表的canUseBuildingStorage配置 两两一组，代表道具的类型和子类型 |
| cs | boolean | `isFirdage` | 是否是冰箱 |
| c | String[] | `openSFX` | 开启界面音效 |

**防御设施|BuildObjectDefense**（10条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | buildSn |
| cs | int | `ammoSn` | 弹药itemsn |
| cs | int | `magazineSize` | 弹夹容量 |
| cs | int | `defenseType ` | 类型 1= 沙袋 2 = 炮台 |
| cs | int | `waitActionType` | 待机动作类型 |
| cs | int | `shootCostPower` | 射击消耗电力 |
| cs | int | `minWorkLevel` | 所需最低的工作适应性等级 |
| cs | int | `chargeType` | 充能方式 0:不充能 1:按时间 2:按攻击次数 3:按击杀敌人数 |
| cs | int | `chargeNeedCount` | 充能需求量 |
| cs | int | `BurstMode` | 爆发模式类型 1:持续时间 2:攻击次数 |
| cs | int | `BurstQuta` | 爆发模式持续的时间(秒)或者攻击次数 |

**床|BuildingBed**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 建筑物Sn |
| cs | float | `AdditionalHealingRate` | 睡眠 HP 恢复倍数 |
| cs | float | `AffectSanityRate` | 睡眠 SAN 恢复（每秒） |

**娱乐设施(温泉)|BuildingAmusement**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 建筑物Sn |
| cs | float | `AffectSanityRate` | 使用时 SAN 恢复（每秒） |

**种植园|BuildingPlantation**（7条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 建筑物Sn |
| cs | int | `product` | 建筑预期产物 索引Item sn |
| cs | int | `drop` | 建筑实际产物 索引Item sn |
| cs | int | `plantingWork` | 播种阶段工作量 |
| cs | int | `wateringWork` | 浇水阶段工作量 |
| cs | int | `growthTime` | 成长阶段基础时长（秒） |
| cs | int | `gatheringWork` | 收割阶段工作量 |
| cs | int | `productCounts` | 基础产量个数 |
| cs | int | `productAdditionalCounts` | 每等级奖励产量个数 |
| cr | String | `cropRes` | 农作物资源 |

**发电机|BuildingPowerGenerator**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 建筑物Sn |
| cs | int | `type` | 类型(1 发电机 2 蓄电器) |
| cs | float | `efficiencyParam` | 参数(发电效率系数X) |
| cs | int | `capacity` | 容量(发电机=缓存池容量Y 蓄电池=蓄电池容量Z) |

**照明|BuildLight**（16条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 建筑物Sn |
| cs | int | `maxSize` | 单个点光源范围 |
| cs | float[] | `ColorRGBA` | 颜色RGBA(0-1） 四个0-1之间的float值 |
| cs | int | `ColorK` | 颜色冷暖度(K值） |
| cs | int | `ExtinguishMethod` | 熄灭方式 1.无电熄灭 2.清晨熄灭 3.经过Y秒熄灭 |
| cs | float | `ExtinguishParam` | 熄灭相关参数 |

**制造台|BuildProduct**（17条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 建筑物Sn |
| cs | float | `Efficiency` | 建筑物工作效率  将按照实际速度*配置速度进行工作 |

**原油提炼机|BuildOliPump**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 建筑物Sn |
| cs | int | `productSpeed` | 建筑单次产出速度(x工作量/秒) |
| cs | int | `capacity` | 容量上限 |

**怪物防御塔|BuildMonsterDefense**（24条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | buildSn |
| s | int | `monsterBirthSn` | 操控防御塔的宠物BirthSn |
| s | boolean | `beginPlaySpawn` | 种怪专用，是否在防御塔beginplay时刷新,编辑时配置FALSE |