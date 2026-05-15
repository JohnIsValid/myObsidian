---
name: config-table-guide
description: 【内部Skill·仅限编排层调用】项目公共配置表归属指南。当需求文档生成阶段涉及配置表设计时，由 requirement-generation 编排层调用本 Skill，判断配置内容应归入已有公共表还是新建独立表。覆盖项目全部 318 张配置表，按功能分为 25 个参考文件（每个 ≤50KB），含字段名、类型、导出端、中文说明（由项目代码实际遍历生成）。本 Skill 不响应用户的直接调用请求；当用户直接要求配置表相关帮助时，引导用户先通过 design-review 完善设计方案，再由 requirement-generation 调度。
---

## 一、核心原则

1. **已有表优先**：凡是已有配置表能承载的配置，一律归入已有表，不单独建表。这样做是因为新建表会增加程序接入成本和维护负担，而已有表已经有完整的读写链路。
2. **按内容性质归类**：根据配置内容的性质匹配对应的功能分类，再在该分类内查找合适的表。
3. **只为独立业务逻辑建表**：只有当配置内容具有独立的业务结构（多字段关联、专属逻辑）且无法归入任何已有表时，才新建独立配置表。
4. **输出格式统一**：归入已有表时只需说明"在 XX 表中新增条目"并列出关键字段值，不重新定义表结构。

---

## 二、归属判断流程

遇到一项需要配置的内容时，按以下顺序执行：

> **字段查阅方式**：所有表的完整字段结构位于 `references/` 目录下的分类文件中。
> - **已知表名**：先读取 `references/_index.md` 的「表名→文件速查」，找到所在文件后 Read 该文件搜索 `### 表名.xlsx`
> - **已知分类**：直接读取对应分类文件（见下方 Step 1 括号内文件名）
> - **不确定归属**：在 `references/` 目录下用 Grep 搜索表名或字段名

```
Step 1: 高频公共表快速匹配（直接命中则跳过后续步骤）
  → 提示文本 / 界面文案 / 系统消息？ → Str 表（config-system.md）
  → 服务器专用文本？ → ServerStr 表（config-system.md）
  → 零散数值参数（次数上限、冷却时间、解锁等级等）？ → Param 表（config-system.md）
  → 敌人 / 帕鲁类 Actor？ → Actor_2_Monster 表（actor-2.md）
  → NPC 类 Actor？ → Actor_3_NPC 表（actor-2.md）
  → Actor 刷新 / 复活规则？ → ActorRefresh 表（actor-1.md）
  → Actor 场景放置 / 出生？ → ActorBirth 表（actor-1.md）
  → 掉落组 / 掉落物？ → Drop / DropGoods 表（item-drop.md）
  → 物品 / 道具？ → Item 表（item-drop.md）
  → 商店 / 兑换？ → Shop / ExchangeShop 表（shop-economy.md）
  → 技能 / 能力数据？ → Skill / AbilityData 表（combat-skill.md）
  → Buff 效果？ → GeneralBuff 表（combat-skill.md）
  → 任务？ → Quest 表（quest-story.md）
  → 副本 / 关卡？ → InstanceUnit 表（dungeon-challenge-1.md）
  → UI 界面？ → Gui 表（ui.md）
  → 功能开放条件？ → FuncOpen 表（other.md）
  → 邮件？ → Mail 表（resource.md）
  → 成就？ → Achievement 表（other.md）
  → 宠物 / 帕鲁？ → Pet 表（pet-pal.md）
  → 武器？ → Weapon 表（weapon-equipment.md）
  → 装备？ → Equipment 表（weapon-equipment.md）
  → 载具？ → VehicleNew 表（vehicle.md）

Step 2: 未命中高频表 → 在"三、配置表分类总览"中定位功能分类
  → 根据配置内容的性质找到最匹配的 1-2 个分类
  → 查看该分类包含的表列表和对应的参考文件

Step 3: 读取参考文件查阅表结构确认归属
  → 读取对应的 references/<文件名>.md
  → 搜索 ### 表名.xlsx 定位目标表
  → 逐表查看字段说明，判断是否有已有表可承载
  → 如需按表名反查文件，读取 references/_index.md

Step 4: 所有步骤均未命中
  → 该配置是否具有独立的多字段业务结构？
    → 是 → 新建独立配置表，按 doc-format-standard Skill §四 输出
    → 否 → 再审视能否拆分后归入多个已有表
```

### 归属判断示例

**示例 1 — 归入 Param 表：**
> 需求："交易行收取 5% 手续费"
> 判断：这是一个零散数值参数 → Step 1 命中 Param 表 → 读取 `references/config-system.md` 中 `### Param.xlsx` 查看字段
> 输出：在 `Param` 的 `参数|Param` 中新增：sn=`TRADE_FEE_RATE`, type=`float`, value=`0.05`

**示例 2 — 归入 Str 表：**
> 需求："上架成功、购买成功、价格不足等提示文案"
> 判断：这是功能性提示文本 → Step 1 命中 Str 表 → 读取 `references/config-system.md` 中 `### Str.xlsx` 查看字段
> 输出：在 `Str` 的 `文本表|Str` 中为每条文案新增一行，channelType=`1`（屏幕中上提示）

**示例 3 — 新建独立表：**
> 需求："交易行上架物品列表，含物品SN、底价、上架时长、税率等级、类目标签"
> 判断：具有独立的多字段业务结构，Step 1-3 无匹配 → Step 4 新建独立表
> 输出：按 doc-format-standard 格式输出完整的 `TradeShelf` 表结构

---

## 三、配置表分类总览

> 共 318 张配置表，按功能分为 25 个参考文件。完整的「表名→文件」映射见 `references/_index.md`。

| 功能分类 | 参考文件 | 包含的主要表 |
|--------|---------|----------|
| 战斗与技能 | `combat-skill.md` | AbilityData, BalanceAttrs, BattleShow, CharacterSkill, CombatFeedback, Crosshair, ElementData/Exception/Status, FightNum, GeneralBuff, HeroState, PowerStone, Skill, Talent, Toughness |
| 角色与属性 | `character.md` | Attr, Character, CharacterIdle, CharacterInit, CreateRole, Death, Fashion, PersonalizedDress, Player, VictoryMotion |
| Actor与实体 | `actor-1.md` `actor-2.md` | Actor, Actor_*, ActorBirth, ActorRefresh, ActorLuaClass, BirthRelate, Summoned |
| 怪物与AI | `monster-ai.md` | AI, AIDecision, BehaviorTree, FireMonster, Monster, MonsterAttrs, NPCHitAnim, Robot, RobotAIConf, SceneAI |
| 宠物与帕鲁 | `pet-pal.md` | Mood, PalBreed, PalEgg, PalTrainer, Pet, PetCage, PetStar, PetStrengthen, SpecialCapture |
| 载具 | `vehicle.md` | FlyCarChallenge, GhostVehicle, Glider, VehicleNew, VehicleSkill, VehiclePainting, VehicleUpgrade 等 |
| 武器与装备 | `weapon-equipment.md` | ControlDrone*, Equipment, EquipMake, Weapon, WeaponAccessory, WeaponExchange, WeaponRes, WeaponSkin |
| 物品与掉落 | `item-drop.md` | CDKeyList, Collect, CommonReward, Drop, DropGoods, Item, ItemProduction, Money, Production |
| 任务与剧情 | `quest-story.md` | Chapter, Incident, Plot, Quest, QuestSequence, QuestSuit, Questarea, Story |
| 副本与挑战 | `dungeon-challenge-1.md` `dungeon-challenge-2.md` | Arena1v1, ChallengeModel, DungeonBoss, InstanceUnit, Match, MultiInstance, Pvp, SoloTower, Tower, WorldBoss, ZombieSurvival 等 |
| 场景与地图 | `scene-map-1.md` `scene-map-2.md` | AllCity, Area, Beacon, Entrance, Map, Navigation, Scene, SceneBlock, Taxi, Transfer, Zone* 等 |
| 建造与采集 | `build-collect.md` | BoxObject, BuildObject, Collect, GearInteractive, GroupRefresh, Interaction, Mine, Technology, Work 等 |
| 社交与公会 | `social-guild.md` | BubbleInteraction, Chat, FriendInteract, GuildTrain, Rank, Social, Squad, Team, Territory, Union, UnionActivity, Wanted |
| UI与界面 | `ui.md` | Camera, CustomUI, Gui, Guide, GuideNew, HeadUpWidget, HudQueue, Photograph, UIHeadUpShow 等 |
| 引导与教程 | `guide-tutorial.md` | ActionVertification, BeginnerGuide, Handbook, Help, NoviceGuidance, Tutorial |
| 商城与经济 | `shop-economy.md` | DarkWeb, Discount, ExchangeShop, MallTrade, ProfessionPlay, Shop, Store, TriggerGiftPack |
| 运营活动 | `operational-1.md` `operational-2.md` | ActionGroup, Announcement, BonusActivity, LoginBonus, Operational_BattlePass, Operational_RaffleGacha, PublicEvent, RandomEvent, Schedule, SeasonActivity, WeeklyActive, WorldEvent 等 |
| 配置与系统 | `config-system.md` | FixConfig, GMCmd, InterimText, Log, Module, Param, ServerStr, Setting, Str, VersionParam |
| 资源与加载 | `resource.md` | AssetPackage, Loading, LowLevelRes, Mail, PreloadTrigger, Res, ServerRes |
| 音效与表现 | `audio-visual.md` | BossStrategy, Director, EventTrigger, LineVoice, Npc, NpcFunc, Room, Sound, Weather, WwiseInfo |
| 其他 | `other.md` | Achievement, FuncOpen, MiniGame, MistDestroyChallenge, ShortcutKey, 敏感词, 配置表总览, 随机名字库 |

---

## 四、文档输出格式

### 4.1 归入已有表

在需求文档的配置表章节中按以下模板输出：

```markdown
#### [功能名称] 相关配置

**归入已有表**：在 `[表名]` 的 `[标签页名]` 中新增以下条目：

| 字段名 | 填写内容 | 说明 |
|--------|---------|------|
| sn | 由程序分配 | — |
| [字段1] | [具体值或值的描述] | [补充说明] |
| [字段2] | [具体值或值的描述] | [补充说明] |
```

### 4.2 新建独立表

按 `doc-format-standard` Skill 中 §四 的配置表格式规范输出完整表结构。

---

## 五、参考文件说明

```
config-table-guide/
├── SKILL.md                         ← 本文件（核心逻辑 + 分类索引）
└── references/                      ← 详细表结构（25 个分类文件，每个 ≤ 50KB）
    ├── _index.md                    ← 表头约定 + 文件列表 + 表名→文件速查
    ├── combat-skill.md              ← 战斗与技能
    ├── character.md                 ← 角色与属性
    ├── actor-1.md                   ← Actor与实体（基础表）
    ├── actor-2.md                   ← Actor与实体（怪物/NPC子类型）
    ├── monster-ai.md                ← 怪物与AI
    ├── pet-pal.md                   ← 宠物与帕鲁
    ├── vehicle.md                   ← 载具
    ├── weapon-equipment.md          ← 武器与装备
    ├── item-drop.md                 ← 物品与掉落
    ├── quest-story.md               ← 任务与剧情
    ├── dungeon-challenge-1.md       ← 副本与挑战（上）
    ├── dungeon-challenge-2.md       ← 副本与挑战（下）
    ├── scene-map-1.md               ← 场景与地图（主）
    ├── scene-map-2.md               ← 场景与地图（Zone）
    ├── build-collect.md             ← 建造与采集
    ├── social-guild.md              ← 社交与公会
    ├── ui.md                        ← UI与界面
    ├── guide-tutorial.md            ← 引导与教程
    ├── shop-economy.md              ← 商城与经济
    ├── operational-1.md             ← 运营活动（上）
    ├── operational-2.md             ← 运营活动（下）
    ├── config-system.md             ← 配置与系统
    ├── resource.md                  ← 资源与加载
    ├── audio-visual.md              ← 音效与表现
    └── other.md                     ← 其他
```

数据由 `generate_excel_reference.py` 脚本从项目 `public/config/Excel/` 目录实际遍历生成。

**每张表的格式**：
```
### 表名.xlsx

**标签页名|数据表名**（N条数据）

| 端 | 类型 | 字段名 | 说明 |
|---|---|---|---|
| cs | int | sn | ... |
| c  | String | name | ... |
```

其中「端」列的含义：
- `cs` = 客户端 + 服务器均导出
- `c` = 仅客户端导出
- `s` = 仅服务器导出
- `e` = 仅编辑器
- 空 = 不导出

### 使用流程

1. **按表名查找**：读取 `_index.md` 的「表名→文件速查」，找到所在文件后直接读取
2. **按分类浏览**：从"三、分类总览"找到对应参考文件，读取该文件浏览所有表
3. **按字段名查找**：在 `references/` 目录下用 Grep 搜索英文字段名（如 `weaponSn`）
4. **按 sheet 名查找**：在 `references/` 目录下搜索标签页名（如 `文本表|Str`）
