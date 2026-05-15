## 其他

### Achievement.xlsx

**成就系统类型|AchievementType**（7条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN  |
| cs | int | `groupId` | 功能组 |
| c | Text | `mainTypeName` | 父类名字 |
| c | Text | `subTypeName` | 子类名字 |
| cs | int | `redPonitNum` | 红点枚举 |
| c | int | `Fatheroder` | 父类页签排序 |
| cs | int | `Subroder` | 子类页签排序 |
| cr | string | `SubLogo` | 子类页签图标 |
| cr | string | `SubSiftLogo` | 子类筛选图标 |
| cr | string | `PosterIcon` | 海报图 |

**成就统计|AchievementStatistics**（16条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| csi | int | `typeSn` | 成就系统类型sn |
| cs | Text | `desc` | 统计项目名称 |
| cs | String | `genKey` | 代码生成用(策划不用) |

**成就（图鉴）目标|Achievement**（111条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN  |
| csi | int | `typeSn` | 成就系统类型sn |
| cs | int | `goalType` | 目标类型 1.计次类型(每次触发增加1)   goalParam:目标次数 2.值比较类型(触发值与策划goalParam配置进行比较，>=会完成)  goal... |
| cs | int | `goalGroup` | 成就分组，同一类数值相同，不同类型玩法成就就是一个子类型  (当分组和子分组都一样的时候才会显示到同一个组)  注意看注释！ |
| cs | int | `subGoalGroup` | 子成就分组(子类型，任意数字，同一组不能重复，可以是其他表sn) (当分组和子分组都一样的时候才会显示到同一个组，如果不配置或者配置为1，只会判断父分组是否一致... |
| c | int | `UIGroupID` | UI上的组分类id 策划自己定义，同分组的会强制显示到一个分组，适合不同类型goalGroup但是想放在一起的 例如：每个高塔副本是一类，完成全部高塔是一类，同... |
| cs | int[] | `goalParam` | 触发参数(成就的计数) 副本次数最后一个数字为次数  goalType类型6时，参数格式：num,itemsn1,itemsn2……填了道具必须是指定道具才计数 |
| cs | int | `point` | 成就点数 1000以后是图鉴点数 |
| cs | int | `dropSn` | 成就奖励 |
| cs | int[] | `RewardExp` | 成就奖励经验 sn,数量 自动发放 |
| cr | String | `logo` | 成就图标 |
| c | Text | `name` | 成就名字 |
| c | Text | `desc` | 成就达成条件 |
| cs | boolean | `ShowProgress` | 是否显示进度提示 |
| cs | int | `ProgressType` | 进度提示类型 0=每1次增长都提示 1=固定数值节点提示 |
| cs | int[] | `TypeValue` | 类型=1的固定数值 |
| c | int | `MaxValueType` | 0.最大值为1 1.读取goalParam的第一个参数 2.读取goalParam的第二个参数 3.读取goalPamram的最后一个参数 （默认读取goalP... |
| c | int | `PrgressValueType` | 进度条进度显示类型 1.当前值/当前任务最大值 2.当前完成子成就数/总成就数 |
| c | boolean | `IsDungeonShowDelay` | 成就进度提示UI显示延迟类型 (默认不填写直接显示) 1.副本中进度显示延迟到大世界 |

**成就点奖励|AchievementPointReward**（18条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN  |
| cs | int | `point` | 成就点数 |
| cs | int | `dropSn` | 成就奖励 |

**图鉴点奖励|HandBookPointReward**（15条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN  |
| cs | int | `point` | 图鉴点数 |
| cs | int | `dropSn` | 图鉴奖励 |

### FuncOpen.xlsx

**功能开放|FuncOpen**（58条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 功能序号 （从1开始连续编号，不要瞎填，更改ID需告知程序）+4:8 |
| cs | String | `func_Name` | 功能名称 |
| s | String | `snName` | 在邮件系统中使用的sn变量名， 生成工具用（仅普通邮件有） |
| c | Text | `desc` | 功能描述 |
| cr | String | `icon` | 功能图标（先走Entrance表） |
| cs | int | `type` | 开启方式 0-等级控制（参数1=等级） 1-提交任务（参数1=任务sn）(新增规则，会检测玩家的任务完成状态解锁功能) 5-洞窟功能开启，开启任一副本后可开启，... |
| cs | int | `param` | 参数1 |
| cs | int | `param2` | 参数2 |
| cs | int | `level` | 开启等级 （如果这列先满足会忽略前面得开启方式，达到等级强制开启功能） |
| c | int | `controlType` | 控制规则/（一部分走Entrance表，不用配置） 1/未开始时，UI隐藏 2/未开始时，UI显示，点击提示功能未开启（未实现） |
| c | String | `widgetUIName` | 隐藏节点所在界面资源名 |
| c | String | `widgetName_PC` | 隐藏节点名称（PC） |
| c | String | `widgetName_Mobile` | 隐藏节点名称（手机） |
| c | int | `remindTips` | 是否弹出功能开启提示（0不弹，1弹普通，2弹暗网）  |
| c | int | `remindOpenUI` | 弹出开启通知后点击跳转界面 关联gui表Openuisn |
| c | Text | `remindJumpTips` | 开启通知上的跳转描述（如：在手机上查看） |
| c | Text | `lockHintStr` | 未开启时提示文本（不填走通用） |
| cr | String | `remindIcon` | 开启提示图标 |
| c | Text | `remindContent` | 开启提示文本 |

**功能开放备份**（214条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 功能序号 （更改ID需告知程序） |
| cs | String | `func_Name` | 功能名称 |
| s | String | `snName` | 在邮件系统中使用的sn变量名， 生成工具用（仅普通邮件有） |
| c | Text | `desc` | 功能描述 |
| cr | String | `icon` | 功能图标（先走Entrance表） |
| cs | int | `type` | 开启方式 0-等级控制（参数1=等级） 1-提交任务（参数1=任务sn）(新增规则，会检测玩家的任务完成状态解锁功能) 2-载具俱乐部开启(参数1=俱乐部sn)... |
| cs | int | `param` | 参数1 |
| cs | int | `param2` | 参数2 |
| cs | int | `level` | 开启等级 （如果这列先满足会忽略前面得开启方式，达到等级强制开启功能） |
| c | int | `controlType` | 控制规则/（一部分走Entrance表，不用配置） 1/未开始时，UI隐藏 2/未开始时，UI显示，点击提示功能未开启（未实现） |
| c | String | `widgetUIName` | 隐藏节点所在界面资源名 |
| c | String | `widgetName_PC` | 隐藏节点名称（PC） |
| c | String | `widgetName_Mobile` | 隐藏节点名称（手机） |
| c | int | `remindTips` | 是否弹出功能开启提示（0不弹，1弹普通，2弹暗网）  |
| c | int | `remindOpenUI` | 弹出开启通知后点击跳转界面 关联gui表Openuisn |
| c | Text | `remindJumpTips` | 开启通知上的跳转描述（如：在手机上查看） |
| c | Text | `lockHintStr` | 未开启时提示文本（不填走通用） |
| cr | String | `remindIcon` | 开启提示图标 |
| c | Text | `remindContent` | 开启提示文本 |

**限时功能开放|LimitOpen**（30条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 功能序号 |
| cs | int | `type` | 判断类型 类型=1：七日活跃，类型参数=活动SN 类型=2：等级礼包，类型参数=活动SN 类型=3：每日登录，类型参数=活动SN 类型=4：战令，类型参数=活动... |
| cs | int | `param` | 参数1 |

**功能预告|FunctionPreview**（8条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 序号 |
| c | int | `order` | 显示顺序 |
| c | Text | `name` | 功能名字 |
| c | Text | `desc` | 功能描述 |
| cr | String | `pic` | 背景图片 |
| cr | String | `icon` | 替换入口图标 |
| cs | int | `funcOpenSN` | 解锁条件 |
| c | Text | `text` | 解锁文本 |
| c | int | `openUIsn` | 跳转界面 |
| c | int | `guideSn` | 触发一次guide 有openUIsn配置，不会触发 |
| cs | String | `reward` | 解锁奖励 物品1sn:物品1数量,物品2sn:物品2数量… |
| cs | boolean | `isEffective` | 配置是否生效 |

### MiniGame.xlsx

**小游戏类型|MiniGameType**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | Text | `name` | 小游戏类型名 |

**小游戏|MiniGame**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| c | int | `type` | 小游戏类型： MiniGameType表Sn |
| c | int[] | `levelList` | 包含的关卡 对应各小游戏Level表SN |
| cs | int | `dropSn` | 完成奖励 |
| cs | boolean | `canTriggerAchievement` | 是否可以触发成就 |
| c | boolean | `ForcedGuidance` | 是否强制弹出引导 |

**小游戏分组|MiniGameGroup**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | int[] | `gameList` | 小游戏列表 同组内的会按完成次数顺序进行  |

**电路破解关卡|CircuitCrackLevel**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | int | `countDown` | 倒计时秒数 |
| c | String | `levelData` | 关卡数据 |

**电路破解块数据|CircuitCrackPiece**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn 100~199是起点 200~299是终点 |
| c | int[] | `dirArr` | 连接方向 1=左，2=上， 3=右，4=下， |
| c | int | `next` | 点击顺时针旋转90°后 变成的SN |
| cr | String | `iconNormal` | 图片资源 |
| cr | String | `iconHighlight` | 图片高亮资源 |
| c | int | `angle` | 基于图片资源的初始角度 [0°，90°，180°，270°]四种 |
| c | int[] | `lineArr` | 基于图片资源初始线 [0°]时的初始线 |

**破解指纹关卡|FingerprintCrackLevel**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | int | `countDown` | 倒计时秒数 |
| cr | String | `FingerprintImage` | 关卡目标图片 |
| c | String | `FingerprintSlice1` | 第一条指纹资源 |
| c | String | `FingerprintSlice2` | 第二条指纹资源 |
| c | String | `FingerprintSlice3` | 第三条指纹资源 |
| c | String | `FingerprintSlice4` | 第四条指纹资源 |

**小游戏随机池|MiniGameRandomPool**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `weight` | 权重 |
| cs | int | `birthSn` | 保险箱的birthsn,同一个birthsn的游戏池会随机选取一个 |

### MistDestroyChallenge.xlsx

**摧毁异常体|MistDestroyChallenge**（9条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 导演的BirthSn |
| cs | String | `spawnBirthSn` | 异常体与引导线Sn,异常体在前 |
| cs | int[] | `dirtBirthSn` | 污染物BirthSn |

### ShortcutKey.xlsx

**默认快捷键|ShortcutKey**（34条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | int | `type` | 类型 1：打开界面 2：释放技能 3：独立按键 4：数字键盘 |
| c | String | `param` | 参数影响具体逻辑方法名字，不能随意更改 |
| c | int | `funcSn` | 功能开放标识 FuncOpen表Sn |
| c | String | `supportKey` | 支持的快捷键 (策划不要修改，只是提供参考，参考UE4通用键位一览) |
| c | String | `customKey` | 自定义快捷键 (策划修改的，参考UE4通用键位一览) |
| c | String | `displayText` | 在UI上显示时的文本 (不是必须，和UI相关，因为是纯显示用，所以想填成啥都行) |
| c | String | `functionType` | 功能枚举对应lua中的EFunctionShortcut 方便根据功能查询列customKey的值 |
| c | bool | `modControl` | 是否由特定模块控制是否可以操作，而不是快捷键屏蔽 注意：打开界面类型全部默认为TRUE，填false不好使 例如：sn=1的数据，虽然填了false，但是按照t... |
|  | Text | `description` | 描述 |

**默认轴设置|AxisKey**（7条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn |
| c | String | `axisName` | 游戏默认的轴名字 |
| c | String | `supportKey` | 支持的轴(参考UE4通用键位一览) |
| c | String | `customKey` | 自定义轴（参考UE4通用键位一览） |
|  | float | `scale` | 以后有需要再加c |
|  | Text | `description` | 描述 |

- **UE4通用键位名称一览**（143行×1列）— 辅助sheet，首行: const FKey EKeys::MouseX("MouseX");

### 开发者敏感词白名单.xlsx

- **白名单-大陆简体{zh-CN}**（377行×2列）— 辅助sheet，首行: forbiddenWordWhiteList

### 敏感词.xlsx

- **敏感词-大陆简体{zh-CN}**（56762行×2列）— 辅助sheet，首行: forbiddenWord

### 配置表总览.xlsx

- **配置表总览**（843行×6列）— 辅助sheet，首行: 表名, 中文名, 所在文件, 负责人

### 随机名字库.xlsx

- **随机名字库-英语{EN}**（542行×4列）— 辅助sheet，首行: maleNameWord1, maleNameWord2, femaleNameWord1, femaleNameWord2

- **随机名字库-拉美西班牙语{LT}**（204行×4列）— 辅助sheet，首行: maleNameWord1, maleNameWord2, femaleNameWord1, femaleNameWord2

- **随机名字库-巴西{BR}**（238行×4列）— 辅助sheet，首行: maleNameWord1, maleNameWord2, femaleNameWord1, femaleNameWord2

- **随机名字库-印尼{ID}**（208行×4列）— 辅助sheet，首行: maleNameWord1, maleNameWord2, femaleNameWord1, femaleNameWord2

- **随机名字库-泰国{TH}**（150行×4列）— 辅助sheet，首行: maleNameWord1, maleNameWord2, femaleNameWord1, femaleNameWord2

- **随机名字库-越南{VN}**（102行×4列）— 辅助sheet，首行: maleNameWord1, maleNameWord2, femaleNameWord1, femaleNameWord2

- **随机名字库-韩国{KR}**（152行×4列）— 辅助sheet，首行: maleNameWord1, maleNameWord2, femaleNameWord1, femaleNameWord2

- **随机名字库-日本{JP}**（130行×4列）— 辅助sheet，首行: maleNameWord1, maleNameWord2, femaleNameWord1, femaleNameWord2

- **随机名字库-中国台湾{TW}**（152行×4列）— 辅助sheet，首行: maleNameWord1, maleNameWord2, femaleNameWord1, femaleNameWord2

- **随机名字库-中国{CN}**（148行×4列）— 辅助sheet，首行: maleNameWord1, maleNameWord2, femaleNameWord1, femaleNameWord2