## 资源与加载

### AssetPackage.xlsx

**资源包|AssetPackage**（5条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 阶段： 需与程序设定一致 |
| c | Text | `name` | 名称 |
| c | Text | `content` | 描述 |
| cr | String | `picture` | 插画 |
| cs | int | `rewardSn` | 下载完成奖励：Drop表sn |

**资源|Asset**（247条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 资源包唯一标记 动态资源包SN>10000 |
| c | boolean | `bShaderCode` | 是否存在Shader |
| c | int | `autoOrder` | 自动下载优先级 0：非自动下载 |
| c | int | `dynamicType` | 动态资源类型 0：非动态资源包 1：时装动态资源 2：载具动态资源 3：武器皮肤动态资源 4：任务章节资源 5：世界区域资源 6：杂项动态资源 7：高配动态资源... |
| c | int | `dynamicSubType` | 动态资源子类型 AssetType表sn |
| c | boolean | `bDynamicActive` | 动态资源配置是否生效 |
| c | int[] | `dynamicSns` | 资源包对应游戏内容UID dynamicType=1时，Fashion表sn dynamicType=2时，Vehicle表sn dynamicType=3时，... |
| c | String | `dynamicPath` | 动态资源包路径 /Game/Dynamic/开头 dynamicType=4时，不填 dynamicType=5时,填资源列表txt文件 dynamicType... |
| c | boolean | `bDynamicHigh` | 是否拆分高清 |
| c | String | `dynamicParam1` | dynamicType=4或者8时,接受指定章节编号任务，开始下载资源（多个章节编号逗号隔开） dynamicType=5时，资源没有时需要手动加载的SubLe... |
| c | String | `dynamicParam2` | dynamicType=4或者8时,接受指定章节编号任务，开始删除资源（1个章节sn，大于等于改编号后触发删除） |

**资源分类|AssetType**（65条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 分类sn |
| c | Text | `name` | 名称 |
| c | Text | `content` | 描述 |
| cr | String | `picture` | 图标 |

### Loading.xlsx

**加载|Loading**（24条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 999是死亡复活专用 |
| c | boolean | `IsCommon` | 是否通用 |
| cr | String | `Picture` | Loading图 |
| cr | String[] | `RolePicture` | Loading角色立绘 |
| c | int | `Direction` | 立绘和动画方向 1=左 2=右 |
| c | Text | `Text` | 文本提示 |

### LowLevelRes.xlsx

**低配的剧情资源|LowLevelStory**（0条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | string | `sn` | 原始SQ名称 |
| cr | string | `lowResName` | 低配版本替换资源 |

### Mail.xlsx

**邮件系统|Mail**（50条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | sn |
| cs | Text | `title` | 邮件标题 |
| s | String | `snName` | 在邮件系统中使用的sn变量名， 生成工具用（仅普通邮件有） |
| cs | Text | `content` | 邮件正文 |
| cr | String | `headImage` | 头像 |
| cs | Text | `sender` | 发送者 |
| s | String | `desc` | 说明 |
| cs | int | `surveySn` | 关联Survey（问卷）表的sn；>0表示该邮件为问卷邮件，客户端据此判断是否显示问卷入口 |
| cs | String | `itemList` | 附件物品 格式 物品Sn:数量 , 装备Sn:数量:品质:等级 |
| s | int | `validDays` | 有效天数（配0为默认7天） |
| s | boolean | `isForever` | 是否为永久邮件 |

### PreloadTrigger.xlsx

**预载触发器|PreloadTrigger**（46条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| c | int | `sn` | 跟Area的SN保持一致 |
| c | int | `targetScene` | 目标场景 |
| c | String | `targetRes` | 提前预加载的资源， 多个用逗号间隔， 字段不用加r |

### Res.xlsx

**零散资源|Res**（14条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | SN |
| csr | String | `Res` | 资源名称 |
| e | String | `desc` | 备注 |

### ServerRes.xlsx

**服务器调用资源|ServerRes**（36条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | `sn` | 唯一sn |
| csr | String | `Res` | 客户端资源 |
| s | boolean | `isRun` | 行走时播放 |