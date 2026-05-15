## 配置与系统

### CleanVersion.xlsx

**和谐版本|CleanVersion**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 版本ID |
| csi | int | `Zone` | 大区 |
| cs | String | `Language` | 设备语言 |
| cs | String | `Country` | 国家(IP) |
|  | String | `纯备注` | 对应和谐版本 |

**功能配置|VersionFunction**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 编号 SN=C列*10000+D列 |
| cs | int | `CleanVersionSn` | 和谐版本号 （CleanVersion分页中版本ID） |
| cs | int | `FunctionType` | 实现功能编号 （新增功能时顺加） |
| cs | boolean | `Open` | 是否开启合规 |
| cs | String | `Param1` | 参数 |
| csr | String[] | `ResParam1` | 资源 |

**合规替换剧情|CleanVersionStory**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | String | `sn` | 原始SQ名称 |
| csr | String | `ID` | ID版本替换资源 |
| csr | String | `TH` | TH版本替换资源 |
| csr | String | `VN` | VN版本替换资源 |
| csr | String | `MENA` | MENA版本替换资源 |

**合规替换掉落|CleanVersionDrop**（8条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | 原始DropSn |
| s | int | `ID` | ID版本替换Sn 印尼 |
| s | int | `TH` | TH版本替换Sn 泰国 |
| s | int | `VN` | VN版本替换Sn 越南 |
| s | int | `MENA` | MENA版本替换Sn 中东北非 |

**多语言屏蔽语音|VoiceBlock**（121条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | id |
| c | String | `voiceChat` | 语音文件 |
| c | String[] | `LangBlock` | 对应和谐版本 |

**登录语言选择|MultiLanguageSelectTip**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 流水ID |
| cs | String | `Country` | 国家(IP) |
| cs | String | `DefaultLanguage` | 默认语言 |

- **功能编码解释**（19行×3列）— 辅助sheet，首行: 功能描述, 实现功能编号
（新增功能时顺加）, 功能负责策划

### CodeBox.xlsx

**密码箱配置|CodeBox**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn(birthSn) 填写保险箱SN |
| cs | String | `password` | 开启保险箱密码 |
| cs | int[] | `dropItems` | 密码箱中的物品 |
| c | boolean | `enableCameraTransform` | 是否启用交互相机Transform 默认False |
| c | float[] | `cameraPos` | 交互相机位置 默认配置一样 |
| c | float[] | `cameraRot` | 交互相机旋转角度 默认配置一样 |

**密码箱小纸条配置|CodeBoxLetter**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | sn(birthSn) 纸条BirthSN |
| c | Text | `content` | 纸条上的文本 |

- **配置说明**（2行×1列）— 非标准表头，可能是说明/辅助sheet

### DeviceProfiles.xlsx

**设备适配|DeviceProfiles**（18条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | String | `sn` | 设备型号 |
| c | String | `cpuchipset` | cpu簇信息 |
| c | int | `targetquality` | 目标的修改品质 |

### FixConfig.xlsx

**单值替换|FixConfig**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | sn 往下拉 |
| s | String | `confName` | 目标表名 这个要填 |
| s | String | `modSn` | 目标sn 这个要填 |
| s | String | `colName` | 目标列名 这个要填 |
| s | boolean | `broadcastImmediately` | 是否在热更时立刻推送一次 true=是 false=不是 这个要填 |
| s | String | `json` | json 这个不要填 |

**整行替换|FixConfigLine**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | sn 往下拉 |
| s | String | `confName` | 目标表名 这个要填 |
| s | String | `modSn` | 目标sn 这个要填 |
| s | boolean | `broadcastImmediately` | 是否在热更时 立刻推送一次 true=是 false=不是 这个要填 |
| s | String | `json` | 行json 这个不要填 |

**整行替换|FixDataTableLine**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | sn 往下拉 |
| s | String | `AssetPath` | 目标资源路径，选中DataTable->鼠标右键->Copy Package Name->粘贴，有问题@谢英杰 这个要填 |
| s | String | `RowName` | 打开DataTable选中行->右键->CopyRowName->粘贴，有问题@谢英杰 这个要填 |
| s | boolean | `broadcastImmediately` | 是否在热更时 立刻推送一次 true=是 false=不是 这个要填 |
| s | String | `json` | 行json 这个不要填 |

### FixLocalization.xlsx

**多语言文本替换|FixLocalization**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | String | `sn` | 文本的Key |
| cs | String | `en` | 英语译文 |
| cs | String | `enIN` | 和谐版英语译文 |
| cs | String | `id` | 印尼语译文 |
| cs | String | `pt` | 葡萄牙语译文 |
| cs | String | `es` | 西班牙语译文 |
| cs | String | `zhHans` | 简中译文 |
| cs | String | `zhHant` | 繁中译文 |
| cs | String | `th` | 泰语译文 |
| cs | String | `ja` | 日语译文 |
| cs | String | `ko` | 韩语译文 |
| cs | String | `vi` | 越南语译文 |
| cs | String | `fr` | 法语译文 |
| cs | String | `tr` | 土耳其语译文 |
| cs | String | `ar` | 阿拉伯语译文 |
| cs | String | `ms` | 马来西亚语译文 |

### GMCmd.xlsx

**分组类别|GroupType**（9条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn索引 |
| cs | String | `GroupName` | 主分组 |
| cs | String[] | `SubGroupName` | 子分组 |

**GM命令自动|GMCmdAuto**（197条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | String | `sn` | gm命令 |
| c | String | `name` | 名称 |
| c | int | `group` | 所属分类组 |
| c | int | `subgroup` | 所属子类组 |
| c | String | `desc` | 指令描述 |
| c | String | `format` | 指令格式 |
| c | String | `example` | 指令示例 |
| c | int | `isShow` | 是否显示 |
| c | int | `type` | 命令类型 0=客户端类型 1=服务器类型 |

- **Sheet2**（99行×7列）— 辅助sheet，首行: 序号, 版本归属, 帕鲁sn, 帕鲁名称

- **Sheet1**（71行×3列）— 辅助sheet，首行: 1021000008, 伏特喵, /addpet 1021000008 1 15 1 1

**GM命令生成|GMCmdGen**（480条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | String | `sn` | gm命令 |
| c | String | `name` | 名称 |
| c | int | `group` | 所属分类组 |
| c | int | `subgroup` | 所属子类组 |
| c | String | `desc` | 指令描述 |
| c | string | `format` | 指令格式 |
| c | string | `example` | 指令示例 |
| c | int | `isShow` | 是否显隐:1表示显示 |
| c | int | `type` | 命令类型（ 0=客户端类型 1=服务器类型 ） |

### InterimText.xlsx

**NPC对话|InterimNpcDialog**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 序号 |
| c | Text | `npcName` | NPC名称 |
| c | Text | `dialogText` | 对话内容 |

**成就系统|InterimAchievement**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 序号 |
| c | Text | `name` | 成就名称 |
| c | Text | `content` | 内容文本 |

**随机事件|InterimRandomEvent**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 序号 |
| c | Text | `eventName` | 事件名称 |
| c | Text | `npcName` | NPC名称 |
| c | Text | `content` | 对话/提示文本 |

### Log.xlsx

**玩家日志|LogPlayer**（42条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | sn |
| s | String | `logname` | 日志名称 |
| s | String | `lognameDesc` | 日志名称说明 |
| s | boolean | `logType` | 日志类型： 是否是kpi类型 除了kpi就是另一种类型了，其他别无选择 |
| s | String | `param1` | 参数 |
| s | String | `paramDesc1` | 参数 |
| s | String | `param2` | 参数 |
| s | String | `paramDesc2` | 参数 |
| s | String | `param3` | 参数 |
| s | String | `paramDesc3` | 参数 |
| s | String | `param4` | 参数 |
| s | String | `paramDesc4` | 参数 |
| s | String | `param5` | 参数 |
| s | String | `paramDesc5` | 参数 |
| s | String | `param6` | 参数 |
| s | String | `paramDesc6` | 参数 |
| s | String | `param7` | 参数 |
| s | String | `paramDesc7` | 参数 |
| s | String | `param8` | 参数 |
| s | String | `paramDesc8` | 参数 |
| s | String | `param9` | 参数 |
| s | String | `paramDesc9` | 参数 |
| s | String | `param10` | 参数 |
| s | String | `paramDesc10` | 参数 |
| s | String | `param11` | 参数 |
| s | String | `paramDesc11` | 参数 |
| s | String | `param12` | 参数 |
| s | String | `paramDesc12` | 参数 |
| s | String | `param13` | 参数 |
| s | String | `paramDesc13` | 参数 |
| s | String | `param14` | 参数 |
| s | String | `paramDesc14` | 参数 |
| s | String | `param15` | 参数 |
| s | String | `paramDesc15` | 参数 |
| s | String | `param16` | 参数 |
| s | String | `paramDesc16` | 参数 |
| s | String | `param17` | 参数 |
| s | String | `paramDesc17` | 参数 |
| s | String | `param18` | 参数 |
| s | String | `paramDesc18` | 参数 |
| s | String | `param19` | 参数 |
| s | String | `paramDesc19` | 参数 |
| s | String | `param20` | 参数 |
| s | String | `paramDesc20` | 参数 |
| s | String | `param21` | 参数 |
| s | String | `paramDesc21` | 参数 |
| s | String | `param22` | 参数 |
| s | String | `paramDesc22` | 参数 |
| s | String | `param23` | 参数 |
| s | String | `paramDesc23` | 参数 |
| s | String | `param24` | 参数 |
| s | String | `paramDesc24` | 参数 |
| s | String | `param25` | 参数 |
| s | String | `paramDesc25` | 参数 |
| s | String | `param26` | 参数 |
| s | String | `paramDesc26` | 参数 |
| s | String | `param27` | 参数 |
| s | String | `paramDesc27` | 参数 |
| s | String | `param28` | 参数 |
| s | String | `paramDesc28` | 参数 |
| s | String | `param29` | 参数 |
| s | String | `paramDesc29` | 参数 |
| s | String | `param30` | 参数 |
| s | String | `paramDesc30` | 参数 |
| s | String | `param31` | 参数 |
| s | String | `paramDesc31` | 参数 |
| s | String | `param32` | 参数 |
| s | String | `paramDesc32` | 参数 |
| s | String | `param33` | 参数 |
| s | String | `paramDesc33` | 参数 |
| s | String | `param34` | 参数 |
| s | String | `paramDesc34` | 参数 |
| s | String | `param35` | 参数 |
| s | String | `paramDesc35` | 参数 |
| s | String | `param36` | 参数 |
| s | String | `paramDesc36` | 参数 |
| s | String | `param37` | 参数 |
| s | String | `paramDesc37` | 参数 |
| s | String | `param38` | 参数 |
| s | String | `paramDesc38` | 参数 |
| s | String | `param39` | 参数 |
| s | String | `paramDesc39` | 参数 |
| s | String | `param40` | 参数 |
| s | String | `paramDesc40` | 参数 |
| s | String | `param41` | 参数 |
| s | String | `paramDesc41` | 参数 |
| s | String | `param42` |  |
| s | String | `paramDesc42` |  |
| s | String | `param43` |  |
| s | String | `paramDesc43` |  |
| s | String | `param44` |  |
| s | String | `paramDesc44` |  |
| s | String | `param45` |  |
| s | String | `paramDesc45` |  |
| s | String | `param46` |  |
| s | String | `paramDesc46` |  |
| s | String | `param47` |  |
| s | String | `paramDesc47` |  |
| s | String | `param48` |  |
| s | String | `paramDesc48` |  |
| s | String | `param49` |  |
| s | String | `paramDesc49` |  |
| s | String | `param50` |  |
| s | String | `paramDesc50` |  |
| s | String | `param51` |  |
| s | String | `paramDesc51` |  |
| s | String | `param52` |  |
| s | String | `paramDesc52` |  |
| s | String | `param53` |  |
| s | String | `paramDesc53` |  |
| s | String | `param54` |  |
| s | String | `paramDesc54` |  |
| s | String | `param55` |  |
| s | String | `paramDesc55` |  |
| s | String | `param56` |  |
| s | String | `paramDesc56` |  |
| s | String | `param57` |  |
| s | String | `paramDesc57` |  |
| s | String | `param58` |  |
| s | String | `paramDesc58` |  |
| s | String | `param59` |  |
| s | String | `paramDesc59` |  |
| s | String | `param60` |  |
| s | String | `paramDesc60` |  |
| s | String | `param61` |  |
| s | String | `paramDesc61` |  |
| s | String | `param62` |  |
| s | String | `paramDesc62` |  |
| s | String | `param63` |  |
| s | String | `paramDesc63` |  |
| s | String | `param64` |  |
| s | String | `paramDesc64` |  |
| s | String | `param65` |  |
| s | String | `paramDesc65` |  |
| s | String | `param66` |  |
| s | String | `paramDesc66` |  |
| s | String | `param67` |  |
| s | String | `paramDesc67` |  |
| s | String | `param68` |  |
| s | String | `paramDesc68` |  |
| s | String | `param69` |  |
| s | String | `paramDesc69` |  |
| s | String | `param70` |  |
| s | String | `paramDesc70` |  |
| s | String | `param71` |  |
| s | String | `paramDesc71` |  |
| s | String | `param72` |  |
| s | String | `paramDesc72` |  |
| s | String | `param73` |  |
| s | String | `paramDesc73` |  |
| s | String | `param74` |  |
| s | String | `paramDesc74` |  |
| s | String | `param75` |  |
| s | String | `paramDesc75` |  |
| s | String | `param76` |  |
| s | String | `paramDesc76` |  |
| s | String | `param77` |  |
| s | String | `paramDesc77` |  |
| s | String | `param78` |  |
| s | String | `paramDesc78` |  |
| s | String | `param79` |  |
| s | String | `paramDesc79` |  |
| s | String | `param80` |  |
| s | String | `paramDesc80` |  |
| s | String | `param81` |  |
| s | String | `paramDesc81` |  |
| s | String | `param82` |  |
| s | String | `paramDesc82` |  |
| s | String | `param83` |  |
| s | String | `paramDesc83` |  |

**服务器日志|LogServer**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | sn |
| s | String | `logname` | 日志名称 |
| s | String | `lognameDesc` | 日志名称说明 |
| s | boolean | `logType` | 日志类型： 是否是kpi类型 除了kpi就是另一种类型了，其他别无选择 |
| s | String | `param1` | 参数1 |
| s | String | `paramDesc1` | 参数2 |
| s | String | `param2` | 参数1 |
| s | String | `paramDesc2` | 参数2 |
| s | String | `param3` | 参数1 |
| s | String | `paramDesc3` | 参数2 |
| s | String | `param4` | 参数1 |
| s | String | `paramDesc4` | 参数2 |
| s | String | `param5` | 参数1 |
| s | String | `paramDesc5` | 参数2 |
| s | String | `param6` | 参数1 |
| s | String | `paramDesc6` | 参数2 |
| s | String | `param7` | 参数1 |
| s | String | `paramDesc7` | 参数2 |
| s | String | `param8` | 参数1 |
| s | String | `paramDesc8` | 参数2 |
| s | String | `param9` | 参数1 |
| s | String | `paramDesc9` | 参数2 |
| s | String | `param10` | 参数1 |
| s | String | `paramDesc10` | 参数2 |
| s | String | `param11` | 参数1 |
| s | String | `paramDesc11` | 参数2 |
| s | String | `param12` | 参数1 |
| s | String | `paramDesc12` | 参数2 |
| s | String | `param13` | 参数1 |
| s | String | `paramDesc13` | 参数2 |
| s | String | `param14` | 参数1 |
| s | String | `paramDesc14` | 参数2 |
| s | String | `param15` | 参数1 |
| s | String | `paramDesc15` | 参数2 |
| s | String | `param16` | 参数1 |
| s | String | `paramDesc16` | 参数2 |
| s | String | `param17` | 参数1 |
| s | String | `paramDesc17` | 参数2 |
| s | String | `param18` | 参数1 |
| s | String | `paramDesc18` | 参数2 |
| s | String | `param19` | 参数1 |
| s | String | `paramDesc19` | 参数2 |
| s | String | `param20` | 参数1 |
| s | String | `paramDesc20` | 参数2 |
| s | String | `param21` | 参数1 |
| s | String | `paramDesc21` | 参数2 |
| s | String | `param22` | 参数1 |
| s | String | `paramDesc22` | 参数2 |
| s | String | `param23` | 参数1 |
| s | String | `paramDesc23` | 参数2 |
| s | String | `param24` | 参数1 |
| s | String | `paramDesc24` | 参数2 |
| s | String | `param25` | 参数1 |
| s | String | `paramDesc25` | 参数2 |
| s | String | `param26` | 参数1 |
| s | String | `paramDesc26` | 参数2 |
| s | String | `param27` | 参数1 |
| s | String | `paramDesc27` | 参数2 |
|  | int | `sync_flag_default` | 行同步标记 |

- **子渠道分组**（1行×1列）— 非标准表头，可能是说明/辅助sheet

- **日志实例**（1行×1列）— 非标准表头，可能是说明/辅助sheet

**定时任务|LogSchedule**（6条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | String | `sn` | SN |
| s | String | `value` | 值 |
| s | String | `desc` | 说明 |
|  | int | `sync_flag_default` | 行同步标记 |

- **职业对照表**（1行×1列）— 非标准表头，可能是说明/辅助sheet

- **货币类型**（1行×1列）— 非标准表头，可能是说明/辅助sheet

- **物品获取途径**（472行×9列）— 辅助sheet，首行: 

- **物品消耗途径**（1行×1列）— 非标准表头，可能是说明/辅助sheet

### Module.xlsx

**模组|Module**（48条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 模组sn |
| cs | int | `position` | 模组的部位（1：头盔 2：护手 3：护盾 4：衣服 5：裤子 6：鞋子） |
| cs | String | `baseAttr` | 基础属性 |
| cs | String | `fixedAddAttr` | 固定附加属性 |
| cs | String | `previewAddAttr` | 预览附加属性 |
| cs | int | `skill` | 附加技能 sn |
| cs | int | `intensifyType` | 模组强化分类 |

**强化|ModuleIntensify**（31条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `intensifyType` | 模组强化分类 |
| cs | int | `intensifyLevel` | 强化等级 |
| cs | int | `sucRate` | 成功率(万分比) |
| cs | String | `expendProp` | 消耗道具 |
| cs | int | `interval` | 百分比提升（主属性）(万分比) |

**洗练部位|ModuleWashPart**（128条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `position` | 模组部位 |
| cs | int | `AttrType` | 属性类型 |
| cs | int | `attrweight` | 属性权重 |

**随机属性库|ModuleAttrData**（50条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 属性sn |
| cs | int[] | `attrvalue1` | 白色随机数值 |
| cs | int | `valueweight1` | 白区间权重 |
| cs | int[] | `attrvalue2` | 绿色随机数值 |
| cs | int | `valueweight2` | 绿区间权重 |
| cs | int[] | `attrvalue3` | 蓝色随机数值 |
| cs | int | `valueweight3` | 蓝区间权重 |
| cs | int[] | `attrvalue4` | 紫色随机数值 |
| cs | int | `valueweight4` | 紫区间权重 |
| cs | int[] | `attrvalue5` | 橙色随机数值 |
| cs | int | `valueweight5` | 橙区间权重 |
| cs | float | `score` | 每1单位属性评分 |

**随机条目|ModuleRandomAttr**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 随机上限 |
| cs | String | `weight` | 随机权重 |

**模组杂项|ModuleMisc**（22条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `type` | 类型 |
| cs | int | `intValue` | 类型 |
| cs | String | `value` | 数据 |
| cr | String | `res` | 资源 |
| c | Text | `str` | Str |

### Param.xlsx

**参数|Param**（1934条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | String | `sn` | SN |
| cs | String | `type` | 数据类型 现在数据类型必须配，支持String,int,float,long,boolean,intArray,floatArray,StringArray（Lua侧long与int/float一样走tonumber） |
| e | boolean | `res` | 是否是 资源配置 |
| cs | String | `value` | 值 |

### PlatformCommand.xlsx

**Sheet1**（59条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| 命令名称（key） | addexp | `` | additem |
| 描述 | addexp give human | `` | give human item |
| 类型 | request | `response` | request |
| name1 | expNum | `success` | itemSn |
| type1 | int | `bool` | int |

### Quility.xlsx

**资产商品|QuilityGoods**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 商品sn |
| c | int | `sortWeight` | 排序 |
| c | int | `quilityType` | 资产类别 |
| c | int | `hood` | 街区 |
| cs | int | `moneyType` | 货币类型 |
| cs | int | `price` | 价格 |
| cs | int | `score` | 资产价值 |
| cs | boolean | `bFuncOpenGrant` | 功能开发自动获得 |
| cs | boolean | `bOpen` | 是否开放 |
| c | Text | `detailInfo` | 详细信息 |
| c | Text | `info` | 房屋信息 |
| c | Text | `address` | 房屋地址 |
| cs | int | `levelLimit` | 可购买最低等级 |
| cr | String | `picture` | 商品在列表中展示的图片 |
| c | int[] | `quilityFunc` | 资产功能 |
| c | int[] | `quilityAdvanceFunc` | 资产功能 |
| c | Location | `navigationPos` | 导航位置 |
| c | int | `mapIconTypeSn` | 地图图标 |
| cs | boolean | `bBirthpoint` | 可否作为出生点 |
| c | String | `birthSequence` | 出生播放的动画 |
| cs | int | `maxVisitorCapacity` | 资产最大访客数 |
| cs | int | `initParkingSlot` | 初始停车位个数 |
| cs | int | `maxParkingSlot` | 最大停车位个数 |
| cs | String | `addedBaseAttr` | 添加属性 |
| cs | float | `hpRecoverSpeed` | 回血速度提升xx% |
| cs | float | `deadRepairSpeed` | 毁损后恢复时间降低xx% |
| cs | int[] | `addedBuffSn` | 获得buff |
| c | Text | `parkingSlotDesc` | 车位效果描述 |
| cs | int | `firstEnterAcceptQuest` | 首次进入自己资产获得任务 |
| cs | int | `partySn` | 资产派对 |
| c | int | `homeFurnitureInteractSn` | 资产内交互物sn |
| cs | int | `initStolenParkingSlot` | 初始赃车停车位个数 |
| cs | int | `maxStolenParkingSlot` | 最大赃车停车位个数 |
| c | Text | `stolenParkingSlotDesc` | 车位效果描述 |

**资产附属车位|QuilityParkingSlot**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `quilitySn` | 资产sn |
| cs | int | `slot` | 停车位(预留100) |
| cs | String | `parkingSlotCost` | 购买车位消耗 |
| cs | int | `score` | 后续新增车位价值 |

**赃车库入口|QuilityStolenCarEntrance**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 传送点birthsn |
| cs | int | `quilityGoodsSn` | 资产商品表sn |

**资产赃车位|QuilityStolenParkingSlot**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | int | `quilitySn` | 资产sn |
| cs | int | `slot` | 停车位(预留100) |
| cs | String | `parkingSlotCost` | 购买车位消耗 |

**赃车洗白|StolenVehicleWhiteWash**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 载具sn |
| cs | String | `whiteWashCost` | 赃车洗白消耗 |

**资产传送|QuilityTransfer**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 商品sn |
| cs | int | `transferToSceneSn` | 传送场景ID |
| c | int[] | `enterStoryId` | 传入在216播放的动画 |
| cs | Location | `enterPoint` | 传入坐标 |
| cs | float | `enterRotation` | 传入时朝向 |
| cs | Location | `birthPoint` | 离线后出生坐标 |
| cs | float | `birthRotation` | 离线后出生朝向 |
| c | int[] | `birthStoryId` | 出生播放的动画 |

**资产传出NPC|QuilitySceneNPCTransfer**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | NPCbirthSn |
| cs | int | `sceneSn` | NPCbirth所在场景sn |
| cs | int | `exitSceneSn` | 传出场景ID |
| c | int[] | `exitStoryId` | 传出在资产内播放的动画 |
| cs | Location | `exitPoint` | 传出坐标 |
| cs | float | `exitRotation` | 传出后朝向 |

**资产传送点|QuilityTransferPoint**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 传送点birthsn |
| c | int | `sceneSn` | NPCbirth所在场景sn |
| cs | int | `quilityTransferSn` | 资产传送表sn |
| cs | int | `visibleLevel` | 可见等级 |

**街区配置|QuilityHood**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 街区sn |
| c | Text | `hoodName` | 街区名 |
| c | int | `hoodWeight` | 街区排序 |

**资产类别|QuilityType**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 资产类别 |
| c | Text | `quilityTypeName` | 资产名称 |

**资产功能|QuilityFunc**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 功能sn |
| cs | int | `funcType` | 功能类别 |
| c | Text | `funcName` | 功能名称 |
| cr | String | `funcIcon` | 功能图标 |
| c | Text | `funcinfo` | 功能说明 |

**资产派对|QuilityParty**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| c | Text | `desc` | 派对描述 |
| cr | String | `img` | 玩法图片 |
| c | int[] | `previewReward` | 奖励预览 |
| c | int | `interactCD` | 交互CD |
| cs | String | `costItem` | 开启玩法消耗道具 |
| cs | int | `prepareTime` | 准备时长 |
| cs | int | `gameTime` | 玩法时长 |
| cs | int | `raffleTime` | 抽奖时长 |
| cs | int[] | `heatStep` | 热度阶段 |
| cs | int[] | `birthActors` | 需要生成的BrithSn,默认第一个为抽奖 |
| cs | int[] | `dropSn` | 奖励 |
| cs | int[] | `interactions` | 交互动作 |
| cs | int | `interactionHeatValue` | 交互动作添加的热度值 |
| cs | int | `interactionLimit` | 交互动作次数上限 |
| cs | int | `prepareTask` | 准备任务 |
| cs | int | `heatTask` | 热度任务 |
| cs | int | `heatCompletedTask` | 热度最小目标完成任务 |
| cs | int | `raffleTask` | 抽奖任务 |
| cs | int | `guestPrepareTask` | 客人准备任务 |
| cs | int | `guestHeatTask` | 客人热度任务 |
| cs | int | `guestHeatCompletedTask` | 客人热度最小目标完成任务 |
| cs | int | `guestRaffleTask` | 客人抽奖任务 |

### ServerStr.xlsx

**服务器文本表|ServerStr**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| cs | Text | `origin` | 原文 |
| cs | String | `en` | 英语译文 |
| cs | String | `enIN` | 和谐版英语译文 |
| cs | String | `enTO` | 和谐版英语译文 |
| cs | String | `id` | 印尼语译文 |
| cs | String | `pt` | 葡萄牙语译文 |
| cs | String | `es` | 西班牙语译文 |
| cs | String | `zhHans` | 简中译文 |
| cs | String | `zhHant` | 繁中译文 |
| cs | String | `th` | 泰语译文 |
| cs | String | `ja` | 日语译文 |
| cs | String | `ko` | 韩语译文 |
| cs | String | `vi` | 越南语译文 |
| cs | String | `fr` | 法语译文 |
| cs | String | `tr` | 土耳其语译文 |
| cs | String | `ar` | 阿拉伯语译文 |
| cs | String | `ms` | 马来西亚语译文 |
| cs | String | `tl` | 塔加洛语译文 |

### Setting.xlsx

**语言设置|LanguageSetting**（17条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | String | `sn` | SN 使用国际标准 区域文化标记 |
| c | String | `displayName` | 显示名称 |
|  | String | `desc` | 备注 |
| c | int | `priority` | 在界面中的 显示顺序 |
| c | boolean | `includeVoice` | 是否包含语音 |
| c | String | `defVoiceLang` | 文本对应的 默认音频字段 （Wwise、分包用） |
| c | String | `surveyLang` | 调查问卷对应的语言 |
| c | String | `languageCode` | 语音转文字 BCP-47 |
| c | String | `languageAnnouncement` | 公告后台对应语言 |
| c | boolean | `showInSelectView` | 是否在选择语言界面显示 |

**设置界面的模板|SettingItemTemplate**（16条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 模板SN |
| c | String | `TemplateName` | 模板名字 |
| cr | String | `TemplateRes` | 对应的UI资源 |
| c | String | `TempalteLuaRes` | 模板对应的Lua文件 |

**设置界面按钮和对应的页签|SettingSubView**（8条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 页签按钮SN |
| c | Text | `RadioName` | 按钮名字 |
| c | int | `MainType` | 对应程序的主类型 |
| c | String | `WidgetSlotName` | 按钮对应的UI资源 |
| c | String | `WidgetLuaName` | 对应UI的Lua文件 |
| c | String | `ConfName` | 对应的组件配置表名字 |
| c | int | `ResetTipsSN` | 重置界面的提示语SN |
| c | int[] | `TempHide` | 临时隐藏 对应平台PC 安卓 IOS |

**设置界面基础设置|SettingBase**（4条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | SN |
| c | int | `platform` | 平台 0、所有平台 1、PC 2、Android 3、iOS |
| c | int | `sort` | 排序 |
| c | int | `TemplateSn` | 模板SN |
| c | Text[] | `TemplateName` | 实例对应的名字 |
| c | Text | `TemplateDesc` | 实例对应详细描述（问号形式点开） |
| c | float[] | `TemplateParams` | 模板静态参数 如果是开关两个选项的，1对应首个参数 0对应第二个参数 如果是枚举多个选项，1,2,3 一一对应 |
| c | String[] | `ExtParams` | 扩展参数 |
| c | Text | `ExtData` | 扩展数据  用于一些list的特殊组件 |
| c | int | `MainType` | 设置主类型 |
| c | int | `SubType` | 设置子类型 |
| c | int | `TempHide` | 临时隐藏 |

**设置界面画质设置|SettingImgQuality**（30条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | SN |
| c | int | `platform` | 平台 0、所有平台 1、PC 2、Android 3、iOS |
| c | int | `sort` | 排序 |
| c | int | `TemplateSn` | 模板SN |
| c | Text[] | `TemplateName` | 实例对应的名字 |
| c | Text | `TemplateDesc` | 实例对应详细描述（问号形式点开） |
| c | float[] | `TemplateParams` | 模板静态参数(不同挡位对应的值,极低,低,中低,中,中高,高,极高) |
| c | String | `CommandHead` | 设置界面影响指令头 |
| c | String[] | `ExtParams` | 扩展参数 |
| c | int | `MainType` | 设置主类型 |
| c | int | `SubType` | 设置子类型 |
| c | int | `TempHide` | 临时隐藏 |
| c | int | `SceneType` | 影响的场景类型（0默认 1大世界  2多人PVP） |

**设置界面灵敏度设置|SettingSensitivity**（26条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | SN |
| c | int | `platform` | 平台 0、所有平台 1、PC 2、Android 3、iOS 4、移动平台 |
| c | int | `sort` | 排序 |
| c | int | `TemplateSn` | 模板SN |
| c | Text[] | `TemplateName` | 实例对应的名字 |
| c | Text | `TemplateDesc` | 实例对应详细描述（问号形式点开） |
| c | float[] | `TemplateParams` | 模板静态参数 |
| c | String[] | `ExtParams` | 扩展参数 |
| c | int | `MainType` | 1.基础设置 2.手机画质 3.灵敏度 4.载具设置 5.操作设置 6.声音设置 7.语言设置 8.资源下载 9.隐私设置 10.暂无 11.PVP射击 12.... |
| c | int | `SubType` | 设置子类型 |
| c | int | `TempHide` | 临时隐藏 |
| c | int | `ControllerGroup` | 影响的组SN |
| c | int | `GroupSn` | 所在的组SN |

**设置界面操控设置|SettingCombatOperation**（80条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | SN |
| c | int | `platform` | 平台 0、所有平台 1、PC 2、Android 3、iOS 4、移动平台 |
| c | int | `sort` | 排序 |
| c | int | `TemplateSn` | 模板SN |
| c | Text[] | `TemplateName` | 实例对应的名字 |
| c | Text | `TemplateDesc` | 实例对应详细描述（问号形式点开） |
| c | float[] | `TemplateParams` | 模板静态参数 |
| c | String[] | `ExtParams` | 扩展参数 |
| c | int | `MainType` | 1.基础设置 2.手机画质 3.灵敏度 4.载具设置 5.操作设置 6.声音设置 7.语言设置 8.资源下载 9.隐私设置 10.暂无 11.PVE射击 12.... |
| c | int | `SubType` | 设置子类型 |
| c | int | `TempHide` | 临时隐藏 |
| c | int | `GroupSn` | 组容器sn |
| c | int | `ParentGroupSn` | 所如组容器sn |

**设置界面声音设置|SettingAudio**（11条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | SN |
| c | int | `platform` | 平台 0、所有平台 1、PC 2、Android 3、iOS |
| c | int | `sort` | 排序 |
| c | int | `TemplateSn` | 模板SN |
| c | Text[] | `TemplateName` | 实例对应的名字 |
| c | float[] | `TemplateParams` | 模板静态参数 |
| c | String[] | `ExtParams` | 扩展参数 |
| c | int | `MainType` | 设置主类型 |
| c | int | `SubType` | 设置子类型 |
| c | int | `TempHide` | 临时隐藏 |

**设置界面语言设置|SettingLanguage**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | SN |
| c | int | `platform` | 平台 0、所有平台 1、PC 2、Android 3、iOS |
| c | int | `sort` | 排序 |
| c | int | `TemplateSn` | 模板SN |
| c | Text[] | `TemplateName` | 实例对应的名字 |
| c | float[] | `TemplateParams` | 模板静态参数 |
| c | String[] | `ExtParams` | 扩展参数 |
| c | int | `MainType` | 设置主类型 |
| c | int | `SubType` | 设置子类型 |
| c | int | `TempHide` | 临时隐藏 |

**设置界面隐私设置|SettingPrivacy**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | SN |
| c | int | `platform` | 平台 0、所有平台 1、PC 2、Android 3、iOS |
| c | int | `sort` | 排序 |
| c | int | `TemplateSn` | 模板SN |
| c | Text[] | `TemplateName` | 实例对应的名字 |
| c | Text | `TemplateDesc` | 实例对应详细描述（问号形式点开） |
| c | float[] | `TemplateParams` | 模板静态参数 |
| c | String[] | `ExtParams` | 扩展参数 |
| c | int | `MainType` | 设置主类型 |
| c | int | `SubType` | 设置子类型 |
| c | int | `TempHide` | 临时隐藏 |

**设置界面灵活配置|SettingParam**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 条目id |
| c | string | `params` | 具体参数 参数没做类型区分 自己解析 |

**设置更新重置参数|SettingReset**（3条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | SN |
| c | int | `platform` | 平台 1、PC 2、Android 3、iOS |
| c | string | `version` | 对应的大版本号 |
| c | int[] | `resetPageType` | 需要重置的大页签类型 |

### Str.xlsx

**文本表|Str**（4961条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | id规则： 5位数的保留为服务器错误提示(对应到服务器的ErrorCode)，每100为一个段，不要跳跃过大，6位数全给任务，7位数开始给各个系统 |
| cs | int[] | `channelType` | 对应EStrChannelType枚举：1=SYSTEM系统提示（HintMod走中下方） 2=LED跑马灯 3=系统聊天频道 4=战区聊天频道 5=帮派聊天频道 6=队伍聊天频道 7=小队聊天频道 8=当前聊天频道 9=招募聊天频道 10=HINTBOX通用MessageBox提示框 |
| cs | Text | `strContent` | 文本内容  |

**文本表备份**（3955条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | id规则： 5位数的保留为服务器错误提示(对应到服务器的ErrorCode)，每100为一个段，不要跳跃过大，6位数全给任务，7位数开始给各个系统 |
| cs | int[] | `channelType` | 1=SYSTEM(系统提示-中上方UI_MainTips) 2=HINT(暂定：GM指令执行成功-中上方UI_Com_FlyTips） 3=TEAM(在组队聊天... |
| cs | Text | `strContent` | 文本内容  |

- **Sheet1**（1行×1列）— 非标准表头，可能是说明/辅助sheet

### VersionParam.xlsx

**版本信息|VersionParam**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | String | `key` | 属性 |
| cs | String | `value` | 值 |
| s | boolean | `forceUpdate` | 是否强制更新 |