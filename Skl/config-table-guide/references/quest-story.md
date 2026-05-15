## 任务与剧情

### Chapter.xlsx

**章节开始|ChapterBegin**（8条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 唯一标识 |
| c | Text | `chapterNumbering` | 章节编号 |
| c | Text | `chapterName` | 章节名称 |
| c | boolean | `needDelay` | 延迟后播放 （3s） |

**章节结束|ChapterEnd**（8条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 唯一标识 |
| c | Text | `chapterNumbering` | 章节编号 |
| c | Text | `chapterEndName` | 章节名称 |
| c | boolean | `needDelay` | 延迟后播放 （3s） |
| c | int | `reward` | 任务完成奖励客户端展示 和任务的rewardPreviewSn 一致 |
| c | int[] | `functionName` | 解锁功能名 读取Str 表中的sn   |
| c | int[] | `functionDescription` | 解锁功能描述 读取Str 表中的sn  |
| cr | String[] | `functionPic` | 解锁功能的图片展示格式 aaaa,aaaa |
| c | float[] | `heroPos` | 结束后主角坐标 0不做处理 单位m |
| cr | float[] | `heroDir` | 结束后主角朝向 -1不做处理  |

### Incident.xlsx

**事件位置|IncidentLocation**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| cs | Location | `location` | 事件开始位置 |

**事件|Incident**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| cs | int | `incidentType` | 事件类型 |
| cs | int | `incidentGradeLvMin` | 事件等级Min |
| cs | int | `incidentGradeLvMax` | 事件等级Max |
| cs | float | `weight` | 权重 |
| cs | int[] | `birthSns` | 事件怪物组 |
| cs | int | `questSn` | 事件触发时身上需要携带此任务 |
| cs | int | `monsterBirthSn` | 指定怪BirthSn |
| cs | int | `monsterHpPercent` | 指定怪血量百分比 |
| cs | boolean | `close` | 关闭此事件 |

**事件类型|IncidentType**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| sr | String | `BPName` | 事件蓝图 |
| s | boolean | `useFindPaths` | 确保出生点到据点之间可达 |

### Plot.xlsx

**对话|NPCPlot**（2055条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | id sn规则： 任务：1+任务id+XX 功能：2+xxxx自定义+XX顺序（2000101） NPC基础：3+xxxx自定义+XX（3009901） |
| c | int | `order` | 下一对话 |
| c | Text | `content` | 对话 突出色<QuestYellow>主线黄</> |
| c | int | `replaceSn` | 女主替代对话 |
| c | int | `npcId` | npc表id （0或空：主角 -1：？？？） |
| cr | String | `iconImageId` | 图片 |
| cr | String | `speakerAvatar` | 说话人头像  默认不显示头像 |
| c | int | `chooseButtonSn` | 调用按钮组Sn |
| c | boolean | `showChooseButton` | 是否显示 选择按钮组 |
| c | boolean | `bForbidSkip` | 按钮组禁止跳过 true=禁止 false=不禁止 默认FALSE |
| c | String | `voiceChat` | 语音 |
| c | int | `plotCameraSn` | 播放对话的镜头sn |
| c | boolean | `bLoop` | 动画类型 |
| cr | String[] | `MTGName` | 蒙太奇动画（ANIM和MTG都可以） |
| c | String | `actionParams` | 角色动作参数。  BirthSN1:动作1,动作2| BirthSN2:动作3,动作4  BirthSN为0表示玩家，1表示对话对象 |
| c | String | `faceParams` | 覆盖表情参数。 需要与actionParams格式对应，表示播放该动作时要使用此列配置的表情 BirthSN1:表情1,表情2| BirthSN2:表情3,表情... |
| c | String | `emojiParams` | 气泡表情参数。 需要与actionParams格式对应，表示播放该动作时要显示此列配置气泡表情 BirthSN1:气泡1,气泡2| BirthSN2:气泡3,气... |
| c | String | `palknowsAction` | 帕鲁诺斯动作参数  |
| c | int | `waitActionEnd` | 点击下一句 时动作处理 |
| c | String | `mouthPiece` | 口型 |
| c | boolean | `canAutoplay` | 默认进行自动播放 |
| c | Text | `displayName` | 临时名字 |
| c | int | `backgroundType` | 特殊背景类型 空 or 0：无底框 1：底框1 2：底框2 3：底框3 |
| c | boolean | `bFadeIn` | 进入时黑屏过渡  （一段对话中的第一句配置有效） |
| c | boolean | `bFadeOut` | 退出时黑屏过渡  （一段对话中的最后一句配置有效） |
| c | String | `PlotLight` | 对话打灯 |
| c | int | `hudBlackListSn` | 消息队列黑名单Sn |

**对话动作|PlotAction**（226条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 动作SN 表情动作：10000~19999 |
| e | String | `desc` | 备注说明 在这里简要描述一下是什么动作 表情动作要写明所属角色 |
| cr | String | `bodyAnim` | 肢体动作资源名，可以填： ANIM_XXX: 普通动作 MTG_XXX: 蒙太奇 SQ_XXX: Sequence |
| c | int | `playMode` | 肢体动作的播放模式 0: 单次播放 1: 循环播放 停在末尾需用蒙太奇实现 |
| c | int | `emoji` | 表情符号 说明可以参考“对话气泡表情”标签页 |
| c | bool | `enableSpeak` | 是否启用说话 |

**对话镜头|StartPlotCamera**（178条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | id |
| e | string | `desc` | 备注 |
| cr | string[] | `sqCamera` | SQ资源名 |
| c | int | `targetType` | 聚焦的目标 0：无 1：目标NPC 2：玩家 3：指定Birth的演员 |
| c | int | `targetBirthSn` | 聚焦的目标为3时 使用的ActorBirthSN |
| c | float | `playRate` | 播放速率 不填表示默认速度 |
| c | string | `targetBone` | 聚焦骨骼名称 |
| c | float | `heightOffset` | 高度偏移 单位：米 |
| c | float | `focusDistance` | 聚焦距离 单位：厘米 景深，单人聚焦镜头要配置 |
| c | float | `focusRegion` | 聚焦范围 单位：厘米 0/空: 自适应聚焦范围 |
| c | string | `sqBind` | SQ绑定关系 BirthSN:Tag|BirthSN:Tag |
| c | int[] | `hideActorBirthSn` | 隐藏Actor的BirthSn |
| c | boolean | `bHideOtherPlayer` | 隐藏其他玩家 true=隐藏 false=不隐藏 |
| c | boolean | `hideOwnPal` | 隐藏玩家的帕鲁 ture=隐藏 false=不隐藏 |
| c | boolean | `hidePal` | 隐藏野生帕鲁 |
| c | int[] | `dissolveType` | 渐隐对象 (逗号分隔，详情在批注) |
| c | int | `easingFuncType` | 缓动曲线 仔细看批注 |
| c | float | `changeTime` | 镜头变化时间 |
| c | float[] | `targetRotator` | 镜头旋转 x,x,z |
| c | float[] | `localPos` | 相对目标位置x,y,z 单位CM |
| c | int | `fov` | fov |

**对话气泡表情**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 气泡表情SN |
| e | String | `desc` | 备注说明 在这里简要描述一下是什么表情 |

**选择按钮|ChooseButton**（148条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | id |
| c | int | `chooseButtonSn` | 所属按钮组 |
| c | int | `buttonOrder` | 选择按钮的下一句 |
| cr | String | `icon` | 按钮图标 |
| c | Text | `buttonContent` | 对话按钮文本 |
| cs | int | `tpye` | 按钮类型（列名为Excel历史拼写tpye，程序统一使用该键） |
| cs | String[] | `param` | 按钮参数 |
| c | int | `canClickType` | 按钮可选限制类型 |
| c | int[] | `canClickparam` | 按钮可选限制参数 |
| c | int | `priority` | 按钮排序（数字越小越靠上） |
| c | boolean | `canRepeat` | 一次对话中按钮是否可重复出现 |

- **按钮类型备注**（7行×5列）— 辅助sheet，首行: 按钮类型, 名称, 配置参数, 参数说明

- **按钮可选限制类型备注**（5行×5列）— 辅助sheet，首行: 按钮类型, 名称, 配置参数, 参数说明

### Quest.xlsx

**任务组|QuestGroup**（144条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 任务组SN 2位类型+3位组编号 主线：10+XXX 剧情支线：20+XXX 玩法支线：30+XXX 10000之前为测试用 |
| cs | int | `groupType` | 任务组类型 参看任务组类型页签  |
| c | int | `subGroupType` | 二级任务组类型 |
| c | Text | `questGroupName` | 任务组名 |
| c | Text | `questGroup` | 任务组描述 |
| cs | int[] | `questList` | 组内任务SN列表 sn之间以“，”分隔 |
| cs | int[] | `preQuestGroupSn` | 前置任务组 分支时，以“，”分隔SN |
| cs | int[] | `postQuestGroupSn` | 后置任务组 分支时，以“，”分隔SN |
| cs | boolean | `preGroupMustCompleted` | 是否需完成所有前置任务组才能接取 |
| s | int[] | `unlockSn` | 解锁条件  |
| s | int | `unlockAndOr` | 解锁条件关系 0是空关系（只判断第一个条件） 1是and关系 2是or关系  |
| c | String | `chapterbeginShowSn` | 章节配置 1:sn指任务接受时播指定sn的章节开始 2:sn指任务接受时播指定sn的章节完成 3:sn指任务完成时播指定sn的章节开始 4:sn指任务完成时播指... |
| c | int | `chapterSn` | 章节编号 资源动态下载功能 新手本配-1 |

**任务|Quest**（878条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 标识序号 2位类型+3位组编号+3位任务序号 主线：1X+XXX+XXX 剧情支线：2X+XXX+XXX 玩法支线：3X+XXX+XXX 10000000之前为... |
| cs | int | `groupSn` | 任务组sn |
| cs | Text | `questName` | 任务名称 |
| c | Text | `questDescription` | 任务描述 文本在手机-任务系统界面，任务详情中显示 文本在地图上查看显示 |
| cs | int[] | `goalSns` | 任务目标组 多个目标，顺序执行 |
| cs | boolean | `isGoalAnd` | 必做目标逻辑类型是否是与的关系，false为or |
| cs | int | `acceptTiggerSn` | 任务触发接取Sn（列名为历史拼写Tigger，关联QuestAcceptTrigger；填0或空为自动接取） |
| cs | int[] | `doActionList` | 任务触发事件 (questaction) |
| cs | int[] | `actionListOnEnterScene` | 进入场景时要触发的事件  （在切场景的时候，玩家身上正在进行的任务中如果这列填了actionsn，就无脑执行） |
| cs | boolean | `canTaskTracking` | 可以开启场景目标追踪和地图导航 |
| cs | boolean | `canAutoTaskTracking` | 任务接取后，若无正在追踪的任务自动追踪本任务 优先级同任务类型中的配置 |
| cs | int | `triggerAreaSn` | 触发目标追踪的区域sn 不填=没有区域触发 |
| cs | boolean | `canAutoDeliver` | 是否自动提交任务 |
| cs | int | `deliverNpcSn` | 不自动提交，需提交给NPC |
| cs | int | `acceptDropGroupSn` | 任务接受时获得掉落 任务重复接受时，会重复获取 |
| cs | int | `dropGroupSn` | 任务完成奖励 |
| cs | int | `extraDropGroupSn` | 额外奖励掉落组SN（按已完成的非必做目标数对掉落数量做乘法叠加） |
| c | boolean | `needRewardUI` | 任务完成弹出奖励结算UI dropGroupSn需有配置 |
| c | boolean | `needAcceptEffect` | 任务接取播放效果 |
| c | boolean | `needFinishedEffect` | 任务完成播放效果 |
| c | boolean | `refreshQuestName` | 任务标题刷新 默认False true=刷 false=不刷 |
| c | boolean | `bShowQuestTitle` | 是否显示任务标题 默认False true=显示 false=不显示 |
| c | String[] | `storyData` | 播放剧情动画 播放时机:storySn 时机： 1=任务接受（重登后会再播） 2=任务完成  示例：2:31  |
| cs | String | `spawnActorInfo` | 刷出actor信息 ● 参数：时机:birth表groupSn:是否跟随NPC； 同一组怪之间冒号隔开，可同时刷多组怪，多组之间用逗号隔开     ○ 参数1刷... |
| cs | String | `removeActorInfo` | 删除actor信息 ● 参数：时机:birth表groupSn；是否延迟消失 同一组怪之间冒号隔开，可同时刷多组怪，多组之间用逗号隔开     ○ 参数1删除时... |
| cs | String | `addBuffInfo` | 添加buff信息 参数： 1:buffsn,2:buffsn,3:buffsn ● 1是任务接受时， ● 2是任务完成时， ● 3是任务提交时， ● 4进入场景... |
| cs | String | `removeBuffInfo` | 删除buff信息 1:buffsn,2:buffsn,3:buffsn ● 1是任务接受时， ● 2是任务完成时， ● 3是任务提交时， ● 6是任务失败时。 ... |
| cs | int[] | `accessMirrorInfo` | 切场景 参数：类型,场景sn,AreaSn      ○ 类型：1接到任务进入，5提交任务离开     ○ 场景sn：即场景SN     ○ AreaSn：指的... |
| cs | String | `loadSubLevelInfo` | 加载sublevel时机 参数之间冒号隔开，时机:sublevel名字  参数1时机：1是任务接受时，2是任务完成时，3是任务提交时，4是任务进行中时 参数2：... |
| cs | String | `unLoadSubLevelInfo` | 卸载载sublevel时机 参数之间冒号隔开，时机:sublevel名字  参数1时机：2是任务完成时， 参数2：sublevel名字  不配置（即为空时）不卸... |
| cs | int[] | `petBuffInfo` | 任务期间给宠物添加buff,任务结束后自动移除 petSn,petBuff |
| cr | String[] | `questPic` | 接取任务时长期挂有可点击图片资源 参数之间逗号隔开 参数1：按钮图片资源名称 参数2：点击展开后的图片资源名称 参数3：提示文本StrSn |
| c | int[] | `continueCall` | 继续主线的召回来电 参数：冷却时间,停留时间,VCsns  只在主城生效 |
| c | String | `chapterbeginShowSn` | 章节配置 1:sn指任务接受时播指定sn的章节开始 2:sn指任务接受时播指定sn的章节完成 3:sn指任务完成时播指定sn的章节开始 4:sn指任务完成时播指... |
| c | int | `chapterSn` | 章节编号 资源动态下载功能 新手本配-1 |
| cs | int | `eventDirectorSN` | 随机事件SN 只有配置了才会在任务完成时，给随机事件增加次数 随机事件专属 |
| s | boolean | `needThrowBag` | 接取任务时丢掉身上抢劫所得 |
| cs | int | `weatherControlSN` | 天气控制配置 索引Weather|WeatherControl 所有时间&天气配置都在这里 |
| c | int | `weatherId` | 天气循环系统id 默认是2 |
| c | int | `timeSlot` | 时间段id， weather表weathertimeslot页sn |
| c | boolean | `timeSlotTick` | 开启时间流逝 |
| c | float | `timeSlotRestDelay` | 长时间不完成任务，x分钟后回退到主城时间，副本不会 |
| c | float | `weatherFadeTime` | 天气切换过度时间(s |
| cr | String | `questPicture` | 任务描述界面配图 |
| cs | int | `duringTime` | 过X秒后自动完成(单位秒) |
| s | String | `grantItemInfo` | 物品发送和销毁信息 参数1任务接取时/任务完成时:填1，表示任务接取时，填2表示任务完成时 参数2发放道具/销毁道具:填1:获得道具;填2，销毁道具 参数3道具... |
| cs | int | `playerWorldType` | 填1表示单人大世界，接取任务时，如果玩家在多人大世界，则切入单人大世界，如果玩家在单人大世界，则不处理； 填2表示多人大世界，接取任务时，如果玩家在单人大世界，... |
| cs | boolean | `mushFinishInSingleWorld` | 是否限制在单人大世界中完成（为true时在场景Sn=216且非单人大世界时拦截目标事件，其它场景存在例外） |
| cs | boolean | `isRecommend` | 是否推荐追踪  默认FALSE |
| c | int | `recommendDuration` | 推荐追踪时长 |
| c | int | `recommendArea` | 进入该区域进行推荐追踪 |
| c | int | `firstAcceptRecommend` | 首次接取推荐  0或者不配置代表没有首次推荐 大于0 代表追踪面板显示时间 |
| c | boolean | `bAutoNav` | 已接任务是否自动寻路 【需要有可寻路目标】 |
| c | boolean | `bAcceptableAutoNav` | 可接任务是否自动寻路 【配置了推荐追踪的可接任务】 |
| c | boolean | `bTraceSingleGoal` | 只追踪一个目标 |
| c | String | `guideBtnParam` | 引导按钮参数：类型,strSn,参数 类型1：openUI 【不能配置多目标】 类型2：传送；例：2,2040167 【可以配置多目标，无目标点/无追踪/不寻路... |

**任务目标|QuestGoal**（918条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 目标sn 建议和任务sn一致 多目标任务末尾多加1位 |
| cs | int | `questSn` | 所属任务sn 1个任务最多2个目标 |
| cs | Text | `goalName` | 目标名称 文本在主界面常显 <Style Color="Color_Accent">主线黄</> <Style Color="Color_TaskType">支... |
| cs | boolean | `isMust` | 是否为必做目标  |
| cs | int | `goalType` | 目标类型 看【目标类型备注】 |
| cs | int[] | `goalData` | 目标参数 配置说明看【目标类型备注】 |
| c | int[] | `traceRangeParam` | 追踪范围参数 追踪范围（米）,追踪最大个数 一定范围内，显示的最多追踪目标数量 |
| c | int[] | `areaParamShowInMap` | 地图上显示范围参数 区域sn,范围大小 |
| c | int | `automaticBrakeTime` | 如果目标是区域追踪，乘骑帕鲁到达时自动刹停几秒 |
| c | boolean | `notGetOff` | 自动刹停后，是否触发自动下坐骑 配TRUE，不自动下坐骑 配空或FALSE，玩家自动下坐骑 【自动下坐骑的区域必须配置高度，PW有飞行坐骑，防止从空中掉下来】 |
| c | boolean | `autoDestory` | 坐骑收回 true即收回坐骑； false或空即不收回坐骑，保持宠物释放状态 |
| cr | String | `areaTrackingEffectName` | 如果目标是区域追踪，场景中显示的指示特效名称 不配不显示特效 坐骑NS_Tracking_ArrowGate 地面NS_Tracking_Pal_IconBea... |
| c | String | `extraActions` | 额外actor动作 类型1,birthSN1,birthSN2（惊吓任务车和人） |
| c | boolean | `useNavEffect` | 使用特效导航线 |
| cr | String | `navEffectName` | 导航特效资源 |
| cs | float | `heroDir` | 目标完成后主角朝向 -1为不做处理， 有效范围 0-360， 0度朝向X轴正方向、 90度朝向Y轴正方向 |

- **目标类型备注 **（147行×5列）— 辅助sheet，首行: 目标类型, 名称, 配置参数, 参数说明

**任务失败|QuestFailure**（22条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 触发任务sn |
| cs | int | `questSceneSN` | 任务所属场景 任务接取后进入该场景（的时刻）不触发失败，在场景里面还是改触发就触发 |
| cs | int[] | `failedConditionSn` | 失败条件sn  |
| cs | int | `exitQuestSn` | 选退出的重接任务sn   |
| cs | int | `exitAreaSn` | 退出后传送区域  |
| c | boolean | `hideExitButton` | 失败界面是否隐藏退出按钮  |
| cs | int | `rechallengeQuestSn` | 选重新挑战的重接任务sn  |
| cs | int | `rechallengeAreaSn` | 重新挑战后传送区域 |
| c | boolean | `hideRechallengeButton` | 失败界面是否隐藏重新挑战按钮 |
| cs | int | `failureNum` | 失败次数 达到次数后，失败界面上显示快速跳过按钮 |
| cs | int | `skipAreaSn` | 失败跳过后的传送区域 |
| cs | int | `dropFailedType` | 断线失败类型 空或0：断线不处理 1：立即触发失败 |

**任务事件|QuestAction**（95条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 事件sn |
| cs | int | `triggerType` | 触发时机类型 任务接取：1 任务完成(目标已经达成，但还没提交)：2 任务放弃：3 任务失败：4 任务提交：5 |
| cs | int | `actionType` | 事件类型 切场景：1 参数场景sn, 刷怪：2 参数 birthSn, 删除怪物：3 参数birthSn 添加buff: 4, 参数buffsn 扣减任意据点帕... |
| cs | String[] | `paramData` | 触发参数 |

**地点交互|QuestInteractive**（33条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| cs | int | `interactiveAreaSN` | 交互AreaSn |
| cr | String | `effectName` | 特效名字 |
| cr | String | `buttonIcon` | 按钮图标 |
| c | Text | `buttonText` | 按钮文本 |
| cs | int | `type` | 交互类型 1=读条：参数1读条时间，参数2读条文字 2=主角播放动作：参数2蒙太奇名称 3=打开ui：参数1打开界面名称，参数2图片名称、strSN 4=进入副... |
| cs | String[] | `interactionParam` | 交互参数 |
| c | Text | `textParam` | 文本参数 |
| csr | String[] | `interactionParam2` | 交互参数2 |
| c | float | `maxAnimTime` | 配合交互参数2，按这个时间判断任务是否完成，如果填0就是按动作播放时间完成任务 |

**任务组解锁|QuestGroupUnLock**（57条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| s | int | `type` | 解锁类型 1：达到等级 参数：等级 2：完成任一任务 参数：questsn1,questsn2… 3：拥有任一帕鲁 参数：Monster_petSn1,Mons... |
| cs | int[] | `paramData` | 参数 |

**失败类型|FailedCondition**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 失败sn 4位数字起：类型+XXX |
| cs | int | `failureType` | 失败类型 1=玩家本人死亡 2=某个actor死亡（必须在位面） 3=超时 4=超出区域N秒（秒数，areasn1,areasn2） 5=任务调用 6=怪物没死... |
| cs | int[] | `typeParam` | 类型参数 |

**任务组类型|QuestType**（11条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 任务类型 SN定义 1-9就是一级类型， 11-19就是一级类型【1】的二级类型，21-29 就是一级类型【2】的二级类型…… |
| c | Text | `name` | 类型名称 1=主线 2=支线 3=其他 4=差事 5=事件 6=引导 7=小队 8=触发式任务 |
| cr | String | `icon` | 任务栏图标 |
| cr | String | `goalIcon` | 任务栏目标图标 |
| cr | String | `trackIcon` | 场景追踪图标 |
| c | String | `fontColor` | 任务名称字色 ffba00橙 d17ffc紫 19ccff蓝 3FB02C绿  |
| c | int | `showPriority` | 展示优先级  越大越靠上 |
| cr | String | `acceptIcon` | 可接取图标 |
| cr | String | `deliverIcon` | 可提交图标 |
| cr | String | `picture` | 类型界面配图 |
| c | String | `fontColor1` | 任务手册追踪字色   |
| c | String | `fontColor2` | 任务手册字色   |
| c | boolean | `buttonLock` | 界面中类型按钮是否可点击 FALSE则任务界面分页按钮锁定不可点击 废弃，代码写了 |

**接取触发条件|QuestAcceptTrigger**（48条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 触发sn |
| cs | int | `triggerType` | 触发类型 1=地点触发：areaSn 2=对话触发：追踪actorBirth，PlotSn 3=外部系统调用接口触发：无参数 |
| cs | int[] | `paramData` | 触发参数 |

### QuestSequence.xlsx

**任务剧情|QuestSequence**（10条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| csr | String[] | `sequenceName` | 资源文件名称  数组的第2个位置表示 玩家使用女主角时的替换动画  |
| cs | boolean | `needPlayOnServer` | 需要客户端服务器同步播放 true或false |
| e | String | `description` | 备注 |

### QuestSuit.xlsx

**任务换装|QuestSuit**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` |  |
| csr | String | `DAName` | 对应的OutFit的DataAsset的资源名字 |
| c | int | `Sex` | 套装的性别 |
| c | Text | `SuitName` | 套装的名字 |
| c | Text | `SuitDesc` | 套装的描述 |
| cr | String | `SuitPic` | 对应的图标 |
| cs | int | `Color` | 对应的品质 |

### Questarea.xlsx

**任务区域|QuestArea**（2条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 任务区域编号 任务SN+x |
| cs | int | `areaSn` | 关联area |
| cs | int | `boundaryInterval` | 区域边缘范围（m） |
| c | int[] | `areaEventType` | 区域事件类型 |

**任务区域事件|QuestAreaEvent**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 事件sn |
| cs | int | `actionType` | 事件类型 限制摇杆只能在内部行动：1 无参数 进入边缘范围触发暗角效果：2 无参数 进入边缘范围触发VC对话：3 VC表内 RadioCommunication... |
| cs | int[] | `paramData` | 触发参数 |

### Story.xlsx

**剧情|Story**（92条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| cs | int | `next` | 下一个 剧情SN |
| csi | int | `sceneSn` | 场景SN 为0时表示不做限制 |
| cr | String[] | `storyName` | 资源文件名称  数组的第2个位置表示 玩家使用女主角时的替换动画  |
|  | String | `description` | 备注 |
| c | Text | `summary` | 点击跳过时显示的故事摘要 |
| cs | Location | `playPos` | 播放位置偏移 单位:米 |
| cs | float[] | `playDir` | 播放旋转偏移 Roll,Pitch,Yaw |
| c | String | `preloadLocations` | 场景预加载位置 格式：x1,y1,z1|x2,y2,z2… 单位：米  只在第一个镜头离动画触发时位置很远的时候把第一个镜头的区域中心填在这儿 |
| csi | int | `trigger` | 触发类型 1=客户端自行控制 2=AI控制 3=进入场景 4=进入区域 5=离开区域 8=副本目标完成 9=进入场景客户端控制播放，与Loading无缝衔接 1... |
| cs | String[] | `triggerParam` | 触发参数 1=无 2=? 3=场景SN 4=Area表sn 5=Area表sn 8=InstanceStepGoal表sn 9=场景SN 10=场景SN，任务s... |
| s | boolean | `triggerOnce` | 是否只能 触发一次 |
| c | boolean | `canSkip` | 是否可被 跳过 |
| c | boolean | `canSpeedUp` | 是否可以 加速播放 |
| c | boolean | `teamLeaderControl` | 有队伍时，跳过和加速由队长控制，队员无法操作 |
| c | boolean | `isFadeIn` | 开始时是否 黑屏淡入 |
| c | boolean | `isFadeOut` | 结束时是否 黑屏淡出 |
| c | boolean | `holdAtEnd` | 是否在结尾暂停 |
| c | boolean | `keepBlackWhenFinished` | 结束后是否保持黑屏  启用后须由外部模块 控制关闭黑屏界面 |
| c | boolean | `smoothTransition` | 是否平滑过渡 表示该剧情是否要和运行时游戏无缝衔接 |
| cs | boolean | `enableInput` | 是否允许玩家在播放剧情的过程中操作 |
| c | boolean | `keepSyncPos` | 是否保留 位置的网络同步 |
| c | boolean | `enableCommonUI` | 是否显示常规UI TRUE: 显示常规UI FALSE: 隐藏所有常规UI |
| c | boolean | `stayOnVehicle` | 是否留在载具上 TRUE: 无额外处理 FALSE: 播放前先下载具 |
| c | boolean | `hideHero` | 是否隐藏主角 |
| c | boolean | `hideOthers` | 是否隐藏其他玩家 |
| c | int[] | `hideActorTypes` | 要隐藏的演员类型 对应 Actor 表 type 字段 |
| c | int[] | `hideActorSN` | 需要隐藏的演员 对应Actor表SN |
| c | int[] | `hideActorBirthSN` | 要隐藏的演员 对应ActorBirth表SN |
| c | int[] | `hidePalFilterSN` | 要隐藏的帕鲁 对应StoryPalFilter表 |
| c | boolean | `ensureEnvironment` | 确保周边环境 屏蔽无关事物 具体包括： 1.屏蔽剧情无关特效 2.屏蔽剧情无关音效 |
| c | int | `bgmMode` | 背景音乐模式 0:不做额外处理 1:Wwise侧进行动态细节处理 2:BGM会静音 |
| c | int | `teleportSceneSN` |  剧情结束时要传送的场景SN 留空表示不切换场景 |
| cs | float[] | `heroPos` | 动画结束后主角坐标 单位:米 填0表示不做处理 |
| cs | float[] | `heroDir` | 动画结束后主角朝向 (-1为不做处理， 有效范围 0-360， 0度朝向X轴正方向、 90度朝向Y轴正方向） |
| cs | int[] | `carBirthSn` | 载具的SN 对应ActorBirth表 如果有值表示剧情结束后会创建载具，并让主角上车 |
| cs | int[] | `carSeatIndex` | 载具座位索引 0：主驾驶 1：副驾驶 2：左后座 3：右后座 |
| cs | boolean | `hideRidingOperate` | 隐藏坐骑操作 |
| s | boolean | `autoFinishWhenReconnect` | 重连接管时是否自动完成 |
| cs | int | `buffDurningStory` | 剧情播放期间给主角添加的Buff （换装也算一种Buff,对应GeneralBuff表SN） |
| s | int | `endSpawnGroupSn` | 剧情播放后 服务器刷怪的GroupSn |

**剧情帕鲁筛选|StoryPalFilter**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | SN |
| e | String | `desc` | 备注 右面各条件是“且”的关系 |
| c | int | `wild` | 野怪检测 0：不限制 1：是野怪 2：不是野怪 |
| c | int | `palMaster` | 帕鲁主人检测 0：不限制 1：是我的帕鲁 2：是别人的帕鲁 |
| c | int | `inTeam` | 队伍检测 0：不限制 1：在队伍中 2：不在队伍中 |
| c | int | `inBasement` | 帕鲁据点检测 0：不限制 1：在据点中 2：不在据点中 |