## 场景与地图（续）

### ZoneList.xlsx

**国家映射大区|ZoneList**（177条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| s | int | `sn` | sn |
| si | String | `countryIsoCode` | 国家地区简写 |
| s | int | `zoneId` | 大区id |

**大区配置|ZoneConfig**（10条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| s | String[] | `loginIpPort` | 登录ip端口信息 |
| s | int | `maxOnline` | 最高在线 |
| s | String | `httpUrl` | 大区的http服ip和端口(global服所在的大区ip+13001端口) |
| c | String | `youmeIMServer` | 大区对应游密区域 |
| c | String | `youmeIMExt` | 游密IM扩展 |
| c | String | `youmeTalkServer` | 大区对应游密区域 |
| c | String | `youmeTalkExt` | 大区对应游密区域 |
| cs | String | `announcementRegion` | 公告后台大区对应的Region |
| s | String | `tmsRegion` | tms对应的地区 |

**大区下属数据中心|ZoneIDC**（14条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn=zoneSn*100+idc |
| s | int | `idcMaxOnline` | IDC最高在线 |

- **大区id参考**（19行×8列）— 辅助sheet，首行: 

### ZoneNotifier.xlsx

**二级区域|SceneBlockNotifier**（19条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 二级区域SN 对应SubSceneBlock表中的SN |
| cs | int | `firstTimeDrop` | 首次发现奖励 |
| c | String | `firstTimeDropNotice` | 首次发现奖励经验提示 此处仅作界面展示拼接 具体数值需要查验Drop，两者确保一致 |

**局部区域|AreaNotifier**（11条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 区域SN （对应Area表中的sn） |
| c | Text | `name` | 区域名称 |

**基础配置|ZoneNotifierConfig**（1条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` |  |
| c | float | `Interval` | 检测间隔(秒) |
| c | float | `SceneLoopTime` | 一级区域动画Loop时长(秒) |
| c | float | `AreaLoopTime` | 二级区域动画Loop时长(秒) |