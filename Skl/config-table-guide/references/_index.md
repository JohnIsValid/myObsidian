# 配置表参考文件索引

## 表头格式约定

每个数据 sheet 的前 4 行为固定表头：

| 行号 | 含义 | 示例值 |
|---|---|---|
| 第1行 | 导出端标记 | `cs`=客户端+服务器, `c`=仅客户端, `s`=仅服务器, 空=不导出 |
| 第2行 | 数据类型 | `int`, `float`, `String`, `boolean`, `int[]`, `String[]` 等 |
| 第3行 | 字段名(英文key) | 程序使用的字段名，如 `sn`, `groupId`, `level` |
| 第4行 | 字段中文说明 | 策划填写的中文描述 |

空列（第1行为空）表示该列不导出，通常用作备注列。

---

---

## 文件列表

| 文件 | 分类 | 大小 |
|------|------|------|
| `combat-skill.md` | 战斗与技能 | 27.9 KB |
| `character.md` | 角色与属性 | 31.7 KB |
| `actor-1.md` | Actor与实体 (Part 1) | 40.6 KB |
| `actor-2.md` | Actor与实体 (Part 2) | 34.8 KB |
| `monster-ai.md` | 怪物与AI | 27.2 KB |
| `pet-pal.md` | 宠物与帕鲁 | 21.9 KB |
| `vehicle.md` | 载具 | 44.8 KB |
| `weapon-equipment.md` | 武器与装备 | 18.9 KB |
| `item-drop.md` | 物品与掉落 | 26.0 KB |
| `quest-story.md` | 任务与剧情 | 27.8 KB |
| `dungeon-challenge-1.md` | 副本与挑战 (Part 1) | 48.8 KB |
| `dungeon-challenge-2.md` | 副本与挑战 (Part 2) | 46.5 KB |
| `scene-map-1.md` | 场景与地图 (Part 1) | 48.1 KB |
| `scene-map-2.md` | 场景与地图 (Part 2) | 2.1 KB |
| `build-collect.md` | 建造与采集 | 27.3 KB |
| `social-guild.md` | 社交与公会 | 40.7 KB |
| `ui.md` | UI与界面 | 24.8 KB |
| `guide-tutorial.md` | 引导与教程 | 9.6 KB |
| `shop-economy.md` | 商城与经济 | 29.5 KB |
| `operational-1.md` | 运营活动 (Part 1) | 45.8 KB |
| `operational-2.md` | 运营活动 (Part 2) | 21.5 KB |
| `config-system.md` | 配置与系统 | 35.1 KB |
| `resource.md` | 资源与加载 | 4.1 KB |
| `audio-visual.md` | 音效与表现 | 25.5 KB |
| `other.md` | 其他 | 14.0 KB |

## 表名 → 文件速查

| 表名 | 所在文件 |
|------|---------|
| AbilityData | `combat-skill.md` |
| BalanceAttrs | `combat-skill.md` |
| BattleShow | `combat-skill.md` |
| CharacterSkill | `combat-skill.md` |
| CombatFeedback | `combat-skill.md` |
| Crosshair | `combat-skill.md` |
| ElementData | `combat-skill.md` |
| ElementException | `combat-skill.md` |
| ElementStatus | `combat-skill.md` |
| ElementStrConvert | `combat-skill.md` |
| FightNum | `combat-skill.md` |
| GeneralBuff | `combat-skill.md` |
| HeroState | `combat-skill.md` |
| PowerStone | `combat-skill.md` |
| Skill | `combat-skill.md` |
| Talent | `combat-skill.md` |
| Toughness | `combat-skill.md` |
| Attr | `character.md` |
| Character | `character.md` |
| CharacterIdle | `character.md` |
| CharacterInit | `character.md` |
| CreateRole | `character.md` |
| Death | `character.md` |
| Fashion | `character.md` |
| PersonalizedDress | `character.md` |
| Player | `character.md` |
| VictoryMotion | `character.md` |
| Actor | `actor-1.md` |
| ActorBirth | `actor-1.md` |
| ActorCharacteristicTags | `actor-1.md` |
| ActorGroupRefreshRule | `actor-1.md` |
| ActorInteractCD | `actor-1.md` |
| ActorLuaClass | `actor-1.md` |
| ActorRefresh | `actor-1.md` |
| Actor_0_Default | `actor-1.md` |
| Actor_11_Vehicle | `actor-1.md` |
| Actor_13_Destructible | `actor-1.md` |
| Actor_14_BaseActor | `actor-1.md` |
| Actor_15_Element | `actor-1.md` |
| Actor_16_Summoned | `actor-1.md` |
| Actor_20_Director | `actor-1.md` |
| Actor_21_Mine | `actor-1.md` |
| Actor_22_BuildObject | `actor-1.md` |
| Actor_2_Monster | `actor-2.md` |
| Actor_2_Monster_NPC | `actor-2.md` |
| Actor_3_NPC | `actor-2.md` |
| Actor_4_TreasureBox | `actor-2.md` |
| Actor_5_Collection | `actor-2.md` |
| Actor_6_Robot | `actor-2.md` |
| Actor_7_Transfer | `actor-2.md` |
| Actor_8_Gear | `actor-2.md` |
| BirthRelate | `actor-2.md` |
| Summoned | `actor-2.md` |
| AI | `monster-ai.md` |
| AIDecision | `monster-ai.md` |
| BehaviorTree | `monster-ai.md` |
| FireMonster | `monster-ai.md` |
| Monster | `monster-ai.md` |
| MonsterAttrs | `monster-ai.md` |
| MonsterCampOccupy | `monster-ai.md` |
| MonsterGroup | `monster-ai.md` |
| NPCHitAnim | `monster-ai.md` |
| Robot | `monster-ai.md` |
| RobotAIConf | `monster-ai.md` |
| SceneAI | `monster-ai.md` |
| Mood | `pet-pal.md` |
| PalBreed | `pet-pal.md` |
| PalEgg | `pet-pal.md` |
| PalTrainer | `pet-pal.md` |
| Pet | `pet-pal.md` |
| PetCage | `pet-pal.md` |
| PetDestructible | `pet-pal.md` |
| PetPotentialGrowth | `pet-pal.md` |
| PetSkin | `pet-pal.md` |
| PetStar | `pet-pal.md` |
| PetStrengthen | `pet-pal.md` |
| SpecialCapture | `pet-pal.md` |
| FlyCarChallenge | `vehicle.md` |
| GhostVehicle | `vehicle.md` |
| Glider | `vehicle.md` |
| MatchIFFMaterial | `vehicle.md` |
| MatchVehicle | `vehicle.md` |
| MultiVehicleRace | `vehicle.md` |
| NPCVehicleSpawn | `vehicle.md` |
| VehicleClub | `vehicle.md` |
| VehicleDrivingInfo | `vehicle.md` |
| VehicleGarage | `vehicle.md` |
| VehicleItemSkill | `vehicle.md` |
| VehicleNew | `vehicle.md` |
| VehiclePainting | `vehicle.md` |
| VehicleRobotAutoDriving | `vehicle.md` |
| VehicleSkill | `vehicle.md` |
| VehicleSpawn | `vehicle.md` |
| VehicleTransaction | `vehicle.md` |
| VehicleType | `vehicle.md` |
| VehicleUpgrade | `vehicle.md` |
| ControlDroneAttribute | `weapon-equipment.md` |
| ControlDroneInteractActor | `weapon-equipment.md` |
| EquipMake | `weapon-equipment.md` |
| Equipment | `weapon-equipment.md` |
| EquipmentRes | `weapon-equipment.md` |
| Weapon | `weapon-equipment.md` |
| WeaponAccessory | `weapon-equipment.md` |
| WeaponExchange | `weapon-equipment.md` |
| WeaponRes | `weapon-equipment.md` |
| WeaponSkin | `weapon-equipment.md` |
| CDKeyList | `item-drop.md` |
| Collect | `item-drop.md` |
| Collectors | `item-drop.md` |
| CommonReward | `item-drop.md` |
| Drop | `item-drop.md` |
| DropActorInfo | `item-drop.md` |
| DropGoods | `item-drop.md` |
| Item | `item-drop.md` |
| ItemProduction | `item-drop.md` |
| Money | `item-drop.md` |
| Production | `item-drop.md` |
| Chapter | `quest-story.md` |
| Incident | `quest-story.md` |
| Plot | `quest-story.md` |
| Quest | `quest-story.md` |
| QuestSequence | `quest-story.md` |
| QuestSuit | `quest-story.md` |
| Questarea | `quest-story.md` |
| Story | `quest-story.md` |
| Arena1v1 | `dungeon-challenge-1.md` |
| CampInvade | `dungeon-challenge-1.md` |
| CampRelation | `dungeon-challenge-1.md` |
| ChallengeModel | `dungeon-challenge-1.md` |
| DailyInstance | `dungeon-challenge-1.md` |
| DungeonBoss | `dungeon-challenge-1.md` |
| Exploration | `dungeon-challenge-1.md` |
| ExplorationChallenge | `dungeon-challenge-1.md` |
| FlyExplorationChallenge | `dungeon-challenge-1.md` |
| FootballHole | `dungeon-challenge-1.md` |
| InstanceUnit | `dungeon-challenge-1.md` |
| Match | `dungeon-challenge-1.md` |
| Mirror | `dungeon-challenge-2.md` |
| MoleSeizeStatue | `dungeon-challenge-2.md` |
| MultiInstance | `dungeon-challenge-2.md` |
| Pvp | `dungeon-challenge-2.md` |
| SavageBoss | `dungeon-challenge-2.md` |
| SniperElite | `dungeon-challenge-2.md` |
| SoloTower | `dungeon-challenge-2.md` |
| StrongHoldBattle | `dungeon-challenge-2.md` |
| Tower | `dungeon-challenge-2.md` |
| TowerBoss | `dungeon-challenge-2.md` |
| VRSecretArea | `dungeon-challenge-2.md` |
| WarRoom | `dungeon-challenge-2.md` |
| WineFightGame | `dungeon-challenge-2.md` |
| WorldBoss | `dungeon-challenge-2.md` |
| WorldChallengeDodgeTrial | `dungeon-challenge-2.md` |
| WorldChallengeRiding | `dungeon-challenge-2.md` |
| ZombieSurvival | `dungeon-challenge-2.md` |
| AllCity | `scene-map-1.md` |
| Area | `scene-map-1.md` |
| AreaToScene | `scene-map-1.md` |
| Beacon | `scene-map-1.md` |
| DSPool | `scene-map-1.md` |
| Entrance | `scene-map-1.md` |
| GameplayNavigation | `scene-map-1.md` |
| Map | `scene-map-1.md` |
| Navigation | `scene-map-1.md` |
| PatrolPath | `scene-map-1.md` |
| PolygonArea | `scene-map-1.md` |
| Scene | `scene-map-1.md` |
| SceneBlock | `scene-map-1.md` |
| SceneLayerMapping | `scene-map-1.md` |
| SceneOpt | `scene-map-1.md` |
| Taxi | `scene-map-1.md` |
| Transfer | `scene-map-1.md` |
| TransferOpen | `scene-map-1.md` |
| ZoneList | `scene-map-2.md` |
| ZoneNotifier | `scene-map-2.md` |
| BoxObject | `build-collect.md` |
| BoxRefresh | `build-collect.md` |
| BuildObject | `build-collect.md` |
| CommonInteractLimit | `build-collect.md` |
| GearInteractive | `build-collect.md` |
| GroupRefresh | `build-collect.md` |
| InteractTurnTable | `build-collect.md` |
| Interaction | `build-collect.md` |
| Mine | `build-collect.md` |
| OutFire | `build-collect.md` |
| RealEstate | `build-collect.md` |
| Technology | `build-collect.md` |
| Temperature | `build-collect.md` |
| Work | `build-collect.md` |
| WorkLab | `build-collect.md` |
| WorldGamePlayBuild | `build-collect.md` |
| BubbleInteraction | `social-guild.md` |
| Chat | `social-guild.md` |
| FriendInteract | `social-guild.md` |
| FriendIntimacy | `social-guild.md` |
| GuildTrain | `social-guild.md` |
| Hearsay | `social-guild.md` |
| Intelligence | `social-guild.md` |
| InviteCode | `social-guild.md` |
| MessageBoard | `social-guild.md` |
| Radio | `social-guild.md` |
| Rank | `social-guild.md` |
| Social | `social-guild.md` |
| Squad | `social-guild.md` |
| Team | `social-guild.md` |
| Territory | `social-guild.md` |
| Union | `social-guild.md` |
| UnionActivity | `social-guild.md` |
| UnionArea | `social-guild.md` |
| Wanted | `social-guild.md` |
| Camera | `ui.md` |
| CustomUI | `ui.md` |
| FaceSlappingUI | `ui.md` |
| FunctionLocation | `ui.md` |
| Gui | `ui.md` |
| Guide | `ui.md` |
| GuideBook | `ui.md` |
| GuideLifmunk | `ui.md` |
| GuideNew | `ui.md` |
| HeadUpPaoPao | `ui.md` |
| HeadUpWidget | `ui.md` |
| HudQueue | `ui.md` |
| LimitLogo | `ui.md` |
| MutexManagement | `ui.md` |
| PhotoSpot | `ui.md` |
| Photograph | `ui.md` |
| UICameraAdapter | `ui.md` |
| UIHeadUpShow | `ui.md` |
| ActionVertification | `guide-tutorial.md` |
| BeginnerGuide | `guide-tutorial.md` |
| Handbook | `guide-tutorial.md` |
| Help | `guide-tutorial.md` |
| NoviceGuidance | `guide-tutorial.md` |
| Tutorial | `guide-tutorial.md` |
| DarkWeb | `shop-economy.md` |
| Discount | `shop-economy.md` |
| ExchangeShop | `shop-economy.md` |
| MallTrade | `shop-economy.md` |
| ProfessionPlay | `shop-economy.md` |
| RobActivity | `shop-economy.md` |
| Shop | `shop-economy.md` |
| Store | `shop-economy.md` |
| TriggerGiftPack | `shop-economy.md` |
| ActionGroup | `operational-1.md` |
| ActivityBag | `operational-1.md` |
| Announcement | `operational-1.md` |
| AssignmentPeriphery | `operational-1.md` |
| BonusActivity | `operational-1.md` |
| HomePage | `operational-1.md` |
| LoginBonus | `operational-1.md` |
| Opeartional_LoginEvent | `operational-1.md` |
| Operational_BattlePass | `operational-1.md` |
| Operational_Christmas | `operational-1.md` |
| Operational_GrowthReward | `operational-1.md` |
| Operational_HintEvent | `operational-1.md` |
| Operational_LevelEvent | `operational-1.md` |
| Operational_MysteryShop | `operational-1.md` |
| Operational_OpenWorldPVP | `operational-1.md` |
| Operational_RaffleGacha | `operational-1.md` |
| Operational_SevenDay | `operational-1.md` |
| Operational_SumTopUp | `operational-1.md` |
| Operational_Web | `operational-1.md` |
| PublicEvent | `operational-1.md` |
| PushMessage | `operational-1.md` |
| RandNameConfig | `operational-1.md` |
| RandomEvent | `operational-2.md` |
| Schedule | `operational-2.md` |
| SeasonActivity | `operational-2.md` |
| Survey | `operational-2.md` |
| TraceType | `operational-2.md` |
| TreasureHunter | `operational-2.md` |
| TriggerQuest | `operational-2.md` |
| WeeklyActive | `operational-2.md` |
| WorldEvent | `operational-2.md` |
| CleanVersion | `config-system.md` |
| CodeBox | `config-system.md` |
| DeviceProfiles | `config-system.md` |
| FixConfig | `config-system.md` |
| FixLocalization | `config-system.md` |
| GMCmd | `config-system.md` |
| InterimText | `config-system.md` |
| Log | `config-system.md` |
| Module | `config-system.md` |
| Param | `config-system.md` |
| PlatformCommand | `config-system.md` |
| Quility | `config-system.md` |
| ServerStr | `config-system.md` |
| Setting | `config-system.md` |
| Str | `config-system.md` |
| VersionParam | `config-system.md` |
| AssetPackage | `resource.md` |
| Loading | `resource.md` |
| LowLevelRes | `resource.md` |
| Mail | `resource.md` |
| PreloadTrigger | `resource.md` |
| Res | `resource.md` |
| ServerRes | `resource.md` |
| BossStrategy | `audio-visual.md` |
| Director | `audio-visual.md` |
| EventTrigger | `audio-visual.md` |
| LineVoice | `audio-visual.md` |
| ModelActionTestHelper | `audio-visual.md` |
| Npc | `audio-visual.md` |
| NpcFunc | `audio-visual.md` |
| PasserReaction | `audio-visual.md` |
| Room | `audio-visual.md` |
| Sound | `audio-visual.md` |
| VisualCommunication | `audio-visual.md` |
| Weather | `audio-visual.md` |
| WebGame | `audio-visual.md` |
| WwiseInfo | `audio-visual.md` |
| Achievement | `other.md` |
| FuncOpen | `other.md` |
| MiniGame | `other.md` |
| MistDestroyChallenge | `other.md` |
| ShortcutKey | `other.md` |
| 开发者敏感词白名单 | `other.md` |
| 敏感词 | `other.md` |
| 配置表总览 | `other.md` |
| 随机名字库 | `other.md` |