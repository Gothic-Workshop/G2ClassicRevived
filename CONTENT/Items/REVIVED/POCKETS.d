/* //****************************************************************************
//			GOTHIC 1
//****************************************************************************

INSTANCE REVIVED_POCKET_GOTHIC(C_Item)
{
	name = "Melee Weapons";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 10;
	visual = "REV_IT_POCKET_RED.3ds";
	scemeName = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = use_REVIVED_POCKET_GOTHIC;
	description = "REVIVED_POCKET_GOTHIC";
	text[5] = "All Melee Weapons";
};

func void use_REVIVED_POCKET_GOTHIC()
{
	CreateInvItems(hero, ITMW_REVIVED_SICKLE, 1);	
	CreateInvItems(hero, ITMW_REVIVED_RUSTYSWORD, 1);
	CreateInvItems(hero, ITMW_REVIVED_SHORTSWORD, 1);
	CreateInvItems(hero, ITMW_REVIVED_FARMERDEFENSE, 1);
	CreateInvItems(hero, ITMW_REVIVED_LURKERBITE, 1);
	CreateInvItems(hero, ITMW_REVIVED_THORNOFWOUNDS, 1);
	CreateInvItems(hero, ITMW_REVIVED_DIGGERDISCIPLINE, 1);
	CreateInvItems(hero, ITMW_REVIVED_LIGHTGUARDSWORD, 1);
	CreateInvItems(hero, ITMW_REVIVED_CRUDESWORD, 1);
	CreateInvItems(hero, ITMW_REVIVED_JUDGMENTSWORD, 1);
	CreateInvItems(hero, ITMW_REVIVED_GUARDSWORD, 1);
	CreateInvItems(hero, ITMW_REVIVED_BATTLESWORD, 1);
	CreateInvItems(hero, ITMW_REVIVED_WARSWORD, 1);
	CreateInvItems(hero, ITMW_REVIVED_LONGSWORD, 1);
	CreateInvItems(hero, ITMW_REVIVED_SWORDOFFEAR, 1);
	CreateInvItems(hero, ITMW_REVIVED_SWORDOFHATE, 1);
	CreateInvItems(hero, ITMW_REVIVED_SWORDOFVICTORY, 1);
	CreateInvItems(hero, ITMW_REVIVED_SWORDOFDEATH, 1);
	CreateInvItems(hero, ITMW_REVIVED_BROADSWORD, 1); 
	CreateInvItems(hero, ITMW_REVIVED_WARRIORVERDICT, 1); 
	CreateInvItems(hero, ITMW_REVIVED_STORMWHISPER, 1); 
	CreateInvItems(hero, ITMW_REVIVED_GUARDHAND, 1); 
	CreateInvItems(hero, ITMW_REVIVED_RUSTYBASTARDSWORD, 1); 
	CreateInvItems(hero, ITMW_REVIVED_BUTCHER, 1); 
	CreateInvItems(hero, ITMW_REVIVED_EXECUTOR, 1); 
	CreateInvItems(hero, ITMW_REVIVED_BERSERKERWORD, 1); 
	CreateInvItems(hero, ITMW_REVIVED_CLUB, 1);
	CreateInvItems(hero, ITMW_REVIVED_POKER, 1);
	CreateInvItems(hero, ITMW_REVIVED_SMITHHAMER, 1);
	CreateInvItems(hero, ITMW_REVIVED_LIGHTCLUB, 1);
	CreateInvItems(hero, ITMW_REVIVED_NAILCLUB, 1);
	CreateInvItems(hero, ITMW_REVIVED_MACE, 1);
	CreateInvItems(hero, ITMW_REVIVED_STINGMACE, 1);
	CreateInvItems(hero, ITMW_REVIVED_BLOODFLYSTING, 1);
	CreateInvItems(hero, ITMW_REVIVED_STEELTONGUE, 1);
	CreateInvItems(hero, ITMW_REVIVED_MORNINGSTAR, 1);
	CreateInvItems(hero, ITMW_REVIVED_STEELMACE, 1);
	CreateInvItems(hero, ITMW_REVIVED_STONECRUSHER, 1);
	CreateInvItems(hero, ITMW_REVIVED_HEARTBREAKER, 1);
	CreateInvItems(hero, ITMW_REVIVED_ORCHAMMER, 1);
	CreateInvItems(hero, ITMW_REVIVED_WARHAMMER, 1);
	CreateInvItems(hero, ITMW_REVIVED_GODHAMMER, 1);
	CreateInvItems(hero, ITMW_REVIVED_HANDAXE, 1); 
	CreateInvItems(hero, ITMW_REVIVED_WITHEREDAXE, 1);
	CreateInvItems(hero, ITMW_REVIVED_CUTTER, 1);	
	CreateInvItems(hero, ITMW_REVIVED_AXE, 1);
	CreateInvItems(hero, ITMW_REVIVED_SCULLCLEFTER, 1);
	CreateInvItems(hero, ITMW_REVIVED_BONEBREAKER, 1);
	CreateInvItems(hero, ITMW_REVIVED_RUSTYTWOHANDER, 1); 
	CreateInvItems(hero, ITMW_REVIVED_LIGHTTWOHANDER, 1); 
	CreateInvItems(hero, ITMW_REVIVED_CUSTODIANBLADE, 1); 
	CreateInvItems(hero, ITMW_REVIVED_MERCENARYBLADE, 1); 
	CreateInvItems(hero, ITMW_REVIVED_KINGBLADE, 1); 
	CreateInvItems(hero, ITMW_REVIVED_DEMONICBLADE, 1); 
	CreateInvItems(hero, ITMW_REVIVED_TWOHANDER, 1); 
	CreateInvItems(hero, ITMW_REVIVED_HEROBLADE, 1); 
	CreateInvItems(hero, ITMW_REVIVED_BLOODBLADE, 1); 
	CreateInvItems(hero, ITMW_REVIVED_HEAVYTWOHANDER, 1); 
	CreateInvItems(hero, ITMW_REVIVED_RAGESTEEL, 1); 
	CreateInvItems(hero, ITMW_REVIVED_WRATHSTEEL, 1); 
	CreateInvItems(hero, ITMW_REVIVED_REVENGESTEEL, 1); 
	CreateInvItems(hero, ITMW_REVIVED_PICKAXE, 1);
	CreateInvItems(hero, ITMW_REVIVED_OLDBATTLEAXE, 1);
	CreateInvItems(hero, ITMW_REVIVED_BLOODHARVESTER, 1);
	CreateInvItems(hero, ITMW_REVIVED_OLDJUDGE, 1);
	CreateInvItems(hero, ITMW_REVIVED_LIGHTBATTLEAXE, 1);
	CreateInvItems(hero, ITMW_REVIVED_THUNDERSTRIKE, 1);
	CreateInvItems(hero, ITMW_REVIVED_SMASH, 1);
	CreateInvItems(hero, ITMW_REVIVED_WARAXE, 1);
	CreateInvItems(hero, ITMW_REVIVED_WARRIORVOICE, 1);
	CreateInvItems(hero, ITMW_REVIVED_BARBARIANFIST, 1);
	CreateInvItems(hero, ITMW_REVIVED_TROLLFIST, 1);
	CreateInvItems(hero, ITMW_REVIVED_BATTLESTAFF, 1);
	CreateInvItems(hero, ITMW_REVIVED_JUDGMENTSTAFF, 1);
	CreateInvItems(hero, ITMW_REVIVED_PRIESTSTAFF, 1);
	CreateInvItems(hero, ITMW_REVIVED_KRUSHVARROK, 1);
	CreateInvItems(hero, ITMW_REVIVED_KRUSHPACH, 1);
	CreateInvItems(hero, ITMW_REVIVED_KRUSHURROK, 1);
	CreateInvItems(hero, ITMW_REVIVED_KRUSHAGASH, 1);
	CreateInvItems(hero, ITMW_REVIVED_KRUSHBROKDAR, 1);
	CreateInvItems(hero, ITMW_REVIVED_KRUSHKARROK, 1);
	CreateInvItems(hero, ITMW_REVIVED_GRACHTNAKK, 1);
	CreateInvItems(hero, ITMW_REVIVED_SHABANAKK, 1);
	CreateInvItems(hero, ITMW_REVIVED_URIZIEL_2H, 1); 
	CreateInvItems(hero, ITMW_REVIVED_URIZIEL_2H_CHARGED, 1); 
	CreateInvItems(hero, ITMW_REVIVED_ULUMULU, 1);
	CreateInvItems(hero, ITMW_REVIVED_CLEFTEROFWORLDS, 1); 
	CreateInvItems(hero, ITMW_REVIVED_LIGHTBRINGER, 1); 
	CreateInvItems(hero, ITMW_REVIVED_BLADEOFTIME, 1); 
	CreateInvItems(hero, ITMW_REVIVED_DEMONSTRIKE, 1); 
	CreateInvItems(hero, ITMW_REVIVED_BANISHINGBLADE, 1); 
	CreateInvItems(hero, ITMW_REVIVED_SWORD_SCAR, 1);
	CreateInvItems(hero, ITMW_REVIVED_SWORD_ARTO, 1);
	CreateInvItems(hero, ITMW_REVIVED_SWORD_RAVEN, 1);
	CreateInvItems(hero, ITMW_REVIVED_SWORD_BARTHOLO, 1);
	CreateInvItems(hero, ITMW_REVIVED_SWORD_WHISTLER, 1);
	CreateInvItems(hero, ITMW_REVIVED_SWORD_KALOM, 1);
	CreateInvItems(hero, ITMW_REVIVED_MACE_LESTER, 1);
	CreateInvItems(hero, ITMW_REVIVED_MACE_NAMIB, 1);
	CreateInvItems(hero, ITMW_REVIVED_MACE_ORUN, 1);
	CreateInvItems(hero, ITMW_REVIVED_MACE_FORTUNO, 1);
	CreateInvItems(hero, ITMW_REVIVED_AXE_CORD, 1);
	CreateInvItems(hero, ITMW_REVIVED_AXE_LARES, 1);
	CreateInvItems(hero, ITMW_REVIVED_AXE_SILAS, 1);
	CreateInvItems(hero, ITMW_REVIVED_SWORD_THORUS, 1);
	CreateInvItems(hero, ITMW_REVIVED_SWORD_GOMEZ, 1);
	CreateInvItems(hero, ITMW_REVIVED_SWORD_ANGAR, 1);
	CreateInvItems(hero, ITMW_REVIVED_AXE_LEE, 1);
	CreateInvItems(hero, ITMW_REVIVED_AXE_ORIC, 1);
	CreateInvItems(hero, ITMW_REVIVED_AXE_TORLOF, 1);
	CreateInvItems(hero, ITMW_REVIVED_AXE_GORN, 1);
	CreateInvItems(hero, ITMW_REVIVED_STAFF_YBERION, 1);
	CreateInvItems(hero, ITMW_REVIVED_STAFF_RICELORD, 1);

	CreateInvItems(hero, ITRW_REVIVED_BOW_SMALL_01, 1);
	CreateInvItems(hero, ITRW_REVIVED_BOW_SMALL_02, 1);
	CreateInvItems(hero, ITRW_REVIVED_BOW_SMALL_03, 1);
	CreateInvItems(hero, ITRW_REVIVED_BOW_SMALL_04, 1);
	CreateInvItems(hero, ITRW_REVIVED_BOW_SMALL_05, 1);
	CreateInvItems(hero, ITRW_REVIVED_BOW_LONG_01, 1);
	CreateInvItems(hero, ITRW_REVIVED_BOW_LONG_02, 1);
	CreateInvItems(hero, ITRW_REVIVED_BOW_LONG_03, 1);
	CreateInvItems(hero, ITRW_REVIVED_BOW_LONG_04, 1);
	CreateInvItems(hero, ITRW_REVIVED_BOW_LONG_05, 1);
	CreateInvItems(hero, ITRW_REVIVED_BOW_LONG_06, 1);
	CreateInvItems(hero, ITRW_REVIVED_BOW_LONG_07, 1);
	CreateInvItems(hero, ITRW_REVIVED_BOW_LONG_08, 1);
	CreateInvItems(hero, ITRW_REVIVED_BOW_LONG_09, 1);
	CreateInvItems(hero, ITRW_REVIVED_BOW_WAR_01, 1);
	CreateInvItems(hero, ITRW_REVIVED_BOW_WAR_02, 1);
	CreateInvItems(hero, ITRW_REVIVED_BOW_WAR_03, 1);
	CreateInvItems(hero, ITRW_REVIVED_BOW_WAR_04, 1);
	CreateInvItems(hero, ITRW_REVIVED_BOW_WAR_05, 1);
	CreateInvItems(hero, ITRW_REVIVED_CROSSBOW_01, 1);
	CreateInvItems(hero, ITRW_REVIVED_CROSSBOW_02, 1);
	CreateInvItems(hero, ITRW_REVIVED_CROSSBOW_03, 1);
	CreateInvItems(hero, ITRW_REVIVED_CROSSBOW_04, 1);

	CreateInvItems(hero, ITRW_REVIVED_BOW_DIEGO, 1);
	CreateInvItems(hero, ITRW_REVIVED_BOW_WOLF, 1);

	CreateInvItems(hero, ITAM_REVIVED_PROT_ARROW_01, 1);
	CreateInvItems(hero, ITAM_REVIVED_PROT_MELEE_01, 1);
	CreateInvItems(hero, ITAM_REVIVED_PROT_WEAPON_01, 1);
	CreateInvItems(hero, ITAM_REVIVED_PROT_MAGIC_01, 1);
	CreateInvItems(hero, ITAM_REVIVED_PROT_FIRE_01, 1);
	CreateInvItems(hero, ITAM_REVIVED_PROT_FIRE_02, 1);
	CreateInvItems(hero, ITAM_REVIVED_PROT_MAGIC_FIRE, 1);
	CreateInvItems(hero, ITAM_REVIVED_PROT_TOTAL_01, 1);
	CreateInvItems(hero, ITAM_REVIVED_DEX_01, 1);
	CreateInvItems(hero, ITAM_REVIVED_DEX_02, 1);
	CreateInvItems(hero, ITAM_REVIVED_STR_01, 1);
	CreateInvItems(hero, ITAM_REVIVED_STR_02, 1);
	CreateInvItems(hero, ITAM_REVIVED_STR_DEX_01, 1);
	CreateInvItems(hero, ITAM_REVIVED_HP_01, 1);
	CreateInvItems(hero, ITAM_REVIVED_MP_01, 1);
	CreateInvItems(hero, ITAM_REVIVED_HP_MP_01, 1);
	CreateInvItems(hero, ITAM_REVIVED_PSI, 1);
	CreateInvItems(hero, ITAM_REVIVED_KDW, 1);
	
	CreateInvItems(hero, ITRI_REVIVED_PROT_ARROW_01, 1);
	CreateInvItems(hero, ITRI_REVIVED_PROT_ARROW_02, 1);
	CreateInvItems(hero, ITRI_REVIVED_PROT_MELEE_01, 1);
	CreateInvItems(hero, ITRI_REVIVED_PROT_MELEE_02, 1);
	CreateInvItems(hero, ITRI_REVIVED_PROT_WEAPON_01, 1);
	CreateInvItems(hero, ITRI_REVIVED_PROT_WEAPON_02, 1);
	CreateInvItems(hero, ITRI_REVIVED_PROT_MAGIC_01, 1);
	CreateInvItems(hero, ITRI_REVIVED_PROT_FIRE_01, 1);
	CreateInvItems(hero, ITRI_REVIVED_PROT_FIRE_02, 1);
	CreateInvItems(hero, ITRI_REVIVED_PROT_MAGIC_FIRE_01, 1);
	CreateInvItems(hero, ITRI_REVIVED_PROT_MAGIC_FIRE_02, 1);
	CreateInvItems(hero, ITRI_REVIVED_PROT_TOTAL_01, 1);
	CreateInvItems(hero, ITRI_REVIVED_PROT_TOTAL_02, 1);
	CreateInvItems(hero, ITRI_REVIVED_DEX_01, 1);
	CreateInvItems(hero, ITRI_REVIVED_DEX_02, 1);
	CreateInvItems(hero, ITRI_REVIVED_STR_01, 1);
	CreateInvItems(hero, ITRI_REVIVED_STR_02, 1);
	CreateInvItems(hero, ITRI_REVIVED_STR_DEX_01, 1);
	CreateInvItems(hero, ITRI_REVIVED_HP_01, 1);
	CreateInvItems(hero, ITRI_REVIVED_HP_02, 1);
	CreateInvItems(hero, ITRI_REVIVED_MP_01, 1);
	CreateInvItems(hero, ITRI_REVIVED_HP_MP_01, 1);

	CreateInvItems(hero, ITPO_REVIVED_HEALTH_01, 10);
	CreateInvItems(hero, ITPO_REVIVED_HEALTH_02, 10);
	CreateInvItems(hero, ITPO_REVIVED_HEALTH_03, 10);
	CreateInvItems(hero, ITPO_REVIVED_MANA_01, 10);
	CreateInvItems(hero, ITPO_REVIVED_MANA_02, 10);
	CreateInvItems(hero, ITPO_REVIVED_MANA_03, 10);
	CreateInvItems(hero, ITPO_REVIVED_BOOST_HEALTH_01, 10);
	CreateInvItems(hero, ITPO_REVIVED_BOOST_HEALTH_02, 10);
	CreateInvItems(hero, ITPO_REVIVED_BOOST_HEALTH_03, 10);
	CreateInvItems(hero, ITPO_REVIVED_BOOST_MANA_01, 10);
	CreateInvItems(hero, ITPO_REVIVED_BOOST_MANA_02, 10);
	CreateInvItems(hero, ITPO_REVIVED_BOOST_MANA_03, 10);
	CreateInvItems(hero, ITPO_REVIVED_BOOST_STR_01, 10);
	CreateInvItems(hero, ITPO_REVIVED_BOOST_STR_02, 10);
	CreateInvItems(hero, ITPO_REVIVED_BOOST_STR_03, 10);
	CreateInvItems(hero, ITPO_REVIVED_BOOST_DEX_01, 10);
	CreateInvItems(hero, ITPO_REVIVED_BOOST_DEX_02, 10);
	CreateInvItems(hero, ITPO_REVIVED_BOOST_DEX_03, 10);
	CreateInvItems(hero, ITPO_REVIVED_BOOST_MASTER_01, 10);
	CreateInvItems(hero, ITPO_REVIVED_BOOST_MASTER_02, 10);
	CreateInvItems(hero, ITPO_REVIVED_BOOST_MASTER_03, 10);
	CreateInvItems(hero, ITPO_REVIVED_SPEED_01, 10);
	CreateInvItems(hero, ITPO_REVIVED_SPEED_02, 10);
	CreateInvItems(hero, ITPO_REVIVED_SPEED_03, 10);
	CreateInvItems(hero, ITPO_REVIVED_SPECIAL_MANA_01, 10);
	CreateInvItems(hero, ITPO_REVIVED_SPECIAL_MANA_02, 10);

	CreateInvItems(hero, ITFO_REVIVED_MEATBUG, 20);
	CreateInvItems(hero, ITFO_REVIVED_APPLE, 20);
	CreateInvItems(hero, ITFO_REVIVED_GRAPES_BLACK, 20);
	CreateInvItems(hero, ITFO_REVIVED_GRAPES_BLUE, 20);
	CreateInvItems(hero, ITFO_REVIVED_GRAPES_RED, 20);
	CreateInvItems(hero, ITFO_REVIVED_GRAPES_GREEN, 20);
	CreateInvItems(hero, ITFO_REVIVED_GRAPES_PURPLE, 20);
	CreateInvItems(hero, ITFO_REVIVED_GRAPES_YELLOW, 20);
	CreateInvItems(hero, ITFO_REVIVED_BREAD, 20);
	CreateInvItems(hero, ITFO_REVIVED_CHEESE, 20);
	CreateInvItems(hero, ITFO_REVIVED_RICE, 20);
	CreateInvItems(hero, ITFO_REVIVED_PLANTSOUP, 20);
	CreateInvItems(hero, ITFO_REVIVED_BUGSOUP, 20);
	CreateInvItems(hero, ITFO_REVIVED_CRAWLERSOUP, 20);
	CreateInvItems(hero, ITFO_REVIVED_WATER, 20);
	CreateInvItems(hero, ITFO_REVIVED_BEER, 20);
	CreateInvItems(hero, ITFO_REVIVED_WINE, 20);
	CreateInvItems(hero, ITFO_REVIVED_BOOZE, 20);

	CreateInvItems(hero, ITRU_REVIVED_TELEPORT_OC, 1); 
	CreateInvItems(hero, ITRU_REVIVED_TELEPORT_NC, 1); 
	CreateInvItems(hero, ITRU_REVIVED_TELEPORT_PSI, 1); 
	CreateInvItems(hero, ITRU_REVIVED_TELEPORT_DT, 1); 

	CreateInvItems(hero, ITSC_REVIVED_TRANSFORM_MEATBUG, 1);

	CreateInvItems(hero, ITAT_REVIVED_DAMLURKER, 1);
	CreateInvItems(hero, ITAT_REVIVED_CRAWLEREGG, 10);
	CreateInvItems(hero, ITAT_REVIVED_SCAVENGEREGG, 10);

	CreateInvItems(hero, ITAT_REVIVED_FUR_ORCDOG, 5);
	CreateInvItems(hero, ITAT_REVIVED_FUR_ICEWOLF, 5);
	CreateInvItems(hero, ITAT_REVIVED_FUR_PANTHER, 5);
	CreateInvItems(hero, ITAT_REVIVED_SKIN_SNAPPER, 5);
	CreateInvItems(hero, ITAT_REVIVED_SKIN_DRAGONSNAPPER, 5);
	CreateInvItems(hero, ITAT_REVIVED_SKIN_RAZOR, 5);
	CreateInvItems(hero, ITAT_REVIVED_SKIN_BITER, 5);
	CreateInvItems(hero, ITAT_REVIVED_SKIN_WARAN, 5);
	CreateInvItems(hero, ITAT_REVIVED_SKIN_FIREWARAN, 5);
	CreateInvItems(hero, ITAT_REVIVED_SKIN_ALLIGATOR, 5);
	
	CreateInvItems(hero, ITAT_REVIVED_DEMONHEART, 10);
	CreateInvItems(hero, ITAT_REVIVED_DEMONLORDHEART, 10);
	
	CreateInvItems(hero, ITAT_REVIVED_GOLEMHEART_FIRE, 1);
	CreateInvItems(hero, ITAT_REVIVED_GOLEMHEART_ICE, 1);
	CreateInvItems(hero, ITAT_REVIVED_GOLEMHEART_ROCK, 1);
	CreateInvItems(hero, ITAT_REVIVED_GOLEMHEART_SWAMP, 1);
	
	CreateInvItems(hero, ITAT_REVIVED_DRAGONHEART_UNDEAD, 1);
	CreateInvItems(hero, ITAT_REVIVED_DRAGONHEART_FIRE, 1);
	CreateInvItems(hero, ITAT_REVIVED_DRAGONHEART_ICE, 1);
	CreateInvItems(hero, ITAT_REVIVED_DRAGONHEART_ROCK, 1);
	CreateInvItems(hero, ITAT_REVIVED_DRAGONHEART_SWAMP, 1);

	CreateInvItems(hero, ITWR_REVIVED_CIRCLE_KDF_01, 1);
	CreateInvItems(hero, ITWR_REVIVED_CIRCLE_KDF_02, 1);
	CreateInvItems(hero, ITWR_REVIVED_CIRCLE_KDF_03, 1);
	CreateInvItems(hero, ITWR_REVIVED_CIRCLE_KDF_04, 1);
	CreateInvItems(hero, ITWR_REVIVED_CIRCLE_KDF_05, 1);
	CreateInvItems(hero, ITWR_REVIVED_CIRCLE_KDF_06, 1);
	CreateInvItems(hero, ITWR_REVIVED_GIFTFROMTHEGODS, 1);
	CreateInvItems(hero, ITWR_REVIVED_SECRETSOFMAGIC, 1);
	CreateInvItems(hero, ITWR_REVIVED_POWERFULART, 1);
	CreateInvItems(hero, ITWR_REVIVED_ELEMENTARYARCANUM, 1);
	CreateInvItems(hero, ITWR_REVIVED_TRUEPOWER, 1);
	CreateInvItems(hero, ITWR_REVIVED_MAGICORE, 1);
	CreateInvItems(hero, ITWR_REVIVED_ASTRONOMY, 1);
	CreateInvItems(hero, ITWR_REVIVED_ARCANUMGOLUM_01, 1);
	CreateInvItems(hero, ITWR_REVIVED_ARCANUMGOLUM_02, 1);
	CreateInvItems(hero, ITWR_REVIVED_WORDSOFGODS_01, 1);
	CreateInvItems(hero, ITWR_REVIVED_WORDSOFGODS_02, 1);
	CreateInvItems(hero, ITWR_REVIVED_WORDSOFGODS_03, 1);
	CreateInvItems(hero, ITWR_REVIVED_VARANT_01, 1);
	CreateInvItems(hero, ITWR_REVIVED_VARANT_02, 1);
	CreateInvItems(hero, ITWR_REVIVED_MYRTANAPOETRY, 1);
	CreateInvItems(hero, ITWR_REVIVED_HUNTANDPREY, 1);
	CreateInvItems(hero, ITWR_REVIVED_BLOODFLIES, 1);
	CreateInvItems(hero, ITWR_REVIVED_ARTOFFIGHTING, 1);
	CreateInvItems(hero, ITWR_REVIVED_RECIPES_01, 1);
	CreateInvItems(hero, ITWR_REVIVED_RECIPES_02, 1);
	CreateInvItems(hero, ITWR_REVIVED_KALOMSRECIPE, 1);
	CreateInvItems(hero, ITWR_REVIVED_ALMANAC, 1);
	CreateInvItems(hero, ITWR_REVIVED_CRYPT, 1);

	CreateInvItems(hero, ITWR_REVIVED_CERTIFICATE, 1);

	CreateInvItems(hero, ITWR_REVIVED_MAP_FOCUS, 1);
	
	CreateInvItems(hero, ITMI_REVIVED_JOINT_GREENNOVICE, 5);
	CreateInvItems(hero, ITMI_REVIVED_JOINT_NORTHDARK, 5);
	CreateInvItems(hero, ITMI_REVIVED_JOINT_DREAMCALL, 5);
	CreateInvItems(hero, ITMI_REVIVED_JOINT_DREAMCALL_02, 5);
	CreateInvItems(hero, ITMI_REVIVED_SALT, 1);
	CreateInvItems(hero, ITMI_REVIVED_SUGAR, 1);
	CreateInvItems(hero, ITMI_REVIVED_SYRIANOIL, 1);
	CreateInvItems(hero, ITMI_REVIVED_STONEOIL, 1);
	CreateInvItems(hero, ITMI_REVIVED_PUREALCOHOL, 1);
	CreateInvItems(hero, ITMI_REVIVED_VINEGAR, 1);
	CreateInvItems(hero, ITMI_REVIVED_MAGICWATER, 1);
	CreateInvItems(hero, ITMI_REVIVED_WARHORN, 1);
	CreateInvItems(hero, ITMI_REVIVED_OLDCOIN, 1);

	CreateInvItems(hero, ITMI_REVIVED_STUFF_CUP_01, 1);
	CreateInvItems(hero, ITMI_REVIVED_STUFF_CUP_02, 1);
	CreateInvItems(hero, ITMI_REVIVED_STUFF_AMPHORE, 1);
	CreateInvItems(hero, ITMI_REVIVED_STUFF_MUG, 1);
	CreateInvItems(hero, ITMI_REVIVED_STUFF_PLATE, 1);
	CreateInvItems(hero, ITMI_REVIVED_STUFF_SILVERWARE, 1);
	CreateInvItems(hero, ITMI_REVIVED_STUFF_PIPE, 1);
	CreateInvItems(hero, ITMI_REVIVED_STUFF_IDOL_01, 1);
	CreateInvItems(hero, ITMI_REVIVED_STUFF_IDOL_02, 1);

	CreateInvItems(hero, ITKE_REVIVED_STONEFORTRESS, 1);
};

//****************************************************************************
//			GOTHIC 2 BUT MORE IDK
//****************************************************************************

INSTANCE REVIVED_POCKET_GOTHIC2(C_Item)
{
	name = "Gothic 2 Items";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 10;
	visual = "REV_IT_POCKET_BLUE.3ds";
	scemeName = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = use_REVIVED_POCKET_GOTHIC2;
	description = "REVIVED_POCKET_GOTHIC2";
	text[4] = "All 'Gothic 2' Items";
	text[5] = "Inspired by pre-existing items, as well as replaced and modified for the mod.";
};

func void use_REVIVED_POCKET_GOTHIC2()
{
	CreateInvItems(hero, ITHE_REVIVED_JUDGE, 1);
	CreateInvItems(hero, ITHE_REVIVED_KNIGHT, 1);
	CreateInvItems(hero, ITHE_REVIVED_DJG_M, 1);
	CreateInvItems(hero, ITHE_REVIVED_DJG_H, 1);
	CreateInvItems(hero, ITHE_REVIVED_PIR_M, 1);
	CreateInvItems(hero, ITHE_REVIVED_PIR_H, 1);

	CreateInvItems(hero, ITSC_REVIVED_TELEPORT_CITY, 3);
	CreateInvItems(hero, ITSC_REVIVED_TELEPORT_MONASTERY, 3);
	CreateInvItems(hero, ITSC_REVIVED_TELEPORT_BIGFARM, 3);
	CreateInvItems(hero, ITSC_REVIVED_TELEPORT_XARDAS, 3);
	CreateInvItems(hero, ITSC_REVIVED_TELEPORT_TAVERNE, 3);
	CreateInvItems(hero, ITSC_REVIVED_TELEPORT_ORC, 3);

	CreateInvItems(hero, ITWR_REVIVED_MAP_VALLEY, 1);
	CreateInvItems(hero, ITWR_REVIVED_MAP_VALLEY_GAROND, 1);
	CreateInvItems(hero, ITWR_REVIVED_MAP_VALLEY_DRAGONS, 1);
	CreateInvItems(hero, ITWR_REVIVED_MAP_VALLEY_CAVES, 1);

	CreateInvItems(hero, ITMI_REVIVED_MAGICORE, 1);

	CreateInvItems(hero, ITMI_REVIVED_JOINT_REGULAR, 5);
	CreateInvItems(hero, ITMI_REVIVED_JOINT_APPLE, 5);
	CreateInvItems(hero, ITMI_REVIVED_JOINT_APPLEDOUBLE, 5);
	CreateInvItems(hero, ITMI_REVIVED_JOINT_HONEY, 5);
	CreateInvItems(hero, ITMI_REVIVED_JOINT_MUSHROOM, 5);
};

//****************************************************************************
//			GOTHIC LEFTOVERS
//****************************************************************************

INSTANCE REVIVED_POCKET_GOTHICLEFTOVER(C_Item)
{
	name = "Unused Gothic Items";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 10;
	visual = "REV_IT_POCKET_PURPLE.3ds";
	scemeName = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = use_REVIVED_POCKET_GOTHICLEFTOVER;
	description = "REVIVED_POCKET_GOTHICLEFTOVER";
	text[4] = "All unused 'Gothic' Items";
	text[5] = "Modified or fixed items that were left unused in the files.";
};

func void use_REVIVED_POCKET_GOTHICLEFTOVER()
{
	CreateInvItems(hero, ITAM_REVIVED_DEMON, 1);
};

//****************************************************************************
//			FROM WORLD OF GOTHIC
//****************************************************************************

INSTANCE REVIVED_POCKET_WOG(C_Item)
{
	name = "WorldOfGothic Items";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 10;
	visual = "REV_IT_POCKET_YELLOW.3ds";
	scemeName = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = use_REVIVED_POCKET_WOG;
	description = "REVIVED_POCKET_WOG";
	text[4] = "All WorldOfGothic Items";
	text[5] = "Few hand-picked entries, obviously not the entire catalogue.";
};

func void use_REVIVED_POCKET_WOG()
{
	CreateInvItems(hero, ITBE_REVIVED_ARCHER, 1);

	CreateInvItems(hero, ITMW_REVIVED_URIZIEL_1H, 1);
	CreateInvItems(hero, ITMW_REVIVED_URIZIEL_1H_CHARGED, 1);
	CreateInvItems(hero, ITMW_REVIVED_URIZIEL_2H, 1);
	CreateInvItems(hero, ITMW_REVIVED_URIZIEL_2H_CHARGED, 1);
	CreateInvItems(hero, ITMW_REVIVED_DEMONSLAYER_1H, 1);
	CreateInvItems(hero, ITMW_REVIVED_DEMONSLAYER_2H, 1);

	CreateInvItems(hero, ITHE_REVIVED_SPECTACLES_01, 1);
	CreateInvItems(hero, ITHE_REVIVED_SPECTACLES_02, 1);
	CreateInvItems(hero, ITHE_REVIVED_SPECTACLES_03, 1);
	CreateInvItems(hero, ITHE_REVIVED_SPECTACLES_04, 1);
};

//****************************************************************************
//			MY STUFF
//****************************************************************************

INSTANCE REVIVED_POCKET_NEUE(C_Item)
{
	name = "All Revived Items";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 10;
	visual = "REV_IT_POCKET_CYAN.3ds";
	scemeName = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = use_REVIVED_POCKET_NEUE;
	description = "REVIVED_POCKET_NEUE";
	text[4] = "All new additions from myself or my friends";
	text[5] = "Including changes for existing items.";
};

func void use_REVIVED_POCKET_NEUE()
{
	CreateInvItems(hero, ITAR_REVIVED_SFB_L, 1);
	CreateInvItems(hero, ITAR_REVIVED_SFB_M, 1);
	CreateInvItems(hero, ITAR_REVIVED_STT_M, 1);
	CreateInvItems(hero, ITAR_REVIVED_STT_H, 1);
	CreateInvItems(hero, ITAR_REVIVED_GRD_L, 1);
	CreateInvItems(hero, ITAR_REVIVED_GRD_M, 1);
	CreateInvItems(hero, ITAR_REVIVED_GRD_S, 1);
	CreateInvItems(hero, ITAR_REVIVED_GRD_H, 1);
	CreateInvItems(hero, ITAR_REVIVED_EBR_L, 1);
	CreateInvItems(hero, ITAR_REVIVED_EBR_M, 1);
	CreateInvItems(hero, ITAR_REVIVED_EBR_H, 1);
	CreateInvItems(hero, ITAR_REVIVED_SFB_L, 1);
	CreateInvItems(hero, ITAR_REVIVED_ORG_L, 1);
	CreateInvItems(hero, ITAR_REVIVED_ORG_M, 1);
	CreateInvItems(hero, ITAR_REVIVED_ORG_H, 1);
	CreateInvItems(hero, ITAR_REVIVED_SLD_L, 1);
	CreateInvItems(hero, ITAR_REVIVED_SLD_M, 1);
	CreateInvItems(hero, ITAR_REVIVED_SLD_H, 1);
	CreateInvItems(hero, ITAR_REVIVED_PSI_NOV, 1);
	CreateInvItems(hero, ITAR_REVIVED_PSI_TPL, 1);
	CreateInvItems(hero, ITAR_REVIVED_KDF_L, 1);
	CreateInvItems(hero, ITAR_REVIVED_KDF_M, 1);
	CreateInvItems(hero, ITAR_REVIVED_KDF_H, 1);
	CreateInvItems(hero, ITAR_REVIVED_KDW_L, 1);
	CreateInvItems(hero, ITAR_REVIVED_KDW_M, 1);
	CreateInvItems(hero, ITAR_REVIVED_KDW_H, 1);
	CreateInvItems(hero, ITAR_REVIVED_DMT_L, 1);
	CreateInvItems(hero, ITAR_REVIVED_DMT_M, 1);
	CreateInvItems(hero, ITAR_REVIVED_DMT_S, 1);
	CreateInvItems(hero, ITAR_REVIVED_DMT_H, 1);
	CreateInvItems(hero, ITAR_REVIVED_BDT_L, 1);
	CreateInvItems(hero, ITAR_REVIVED_BDT_M, 1);
	CreateInvItems(hero, ITAR_REVIVED_BDT_H, 1);
	CreateInvItems(hero, ITAR_REVIVED_PAL_L, 1);
	CreateInvItems(hero, ITAR_REVIVED_PAL_M, 1);
	CreateInvItems(hero, ITAR_REVIVED_PAL_H, 1);
	CreateInvItems(hero, ITAR_REVIVED_PAL_S, 1);
	CreateInvItems(hero, ITAR_REVIVED_DEMONHUNTER, 1);
	CreateInvItems(hero, ITAR_REVIVED_DEMONHUNTER_02, 1);
	CreateInvItems(hero, ITAR_REVIVED_PSI_TPL_02, 1);
	CreateInvItems(hero, ITAR_REVIVED_ARCHER, 1);
	CreateInvItems(hero, ITAR_REVIVED_BEGGAR, 1);
	CreateInvItems(hero, ITAR_REVIVED_KNIGHT, 1);
	CreateInvItems(hero, ITAR_REVIVED_KNIGHT_02, 1);
	CreateInvItems(hero, ITAR_REVIVED_DJG_M, 1);
	CreateInvItems(hero, ITAR_REVIVED_DJG_H, 1);
	CreateInvItems(hero, ITAR_REVIVED_GORDONRAMSAY, 1);

	CreateInvItems(hero, ITPL_REVIVED_BERRY_BLACK, 1);
	CreateInvItems(hero, ITPL_REVIVED_BERRY_BLUE, 1);
	CreateInvItems(hero, ITPL_REVIVED_BERRY_GREEN, 1);
	CreateInvItems(hero, ITPL_REVIVED_BERRY_PURPLE, 1);
	CreateInvItems(hero, ITPL_REVIVED_BERRY_RED, 1);
	CreateInvItems(hero, ITPL_REVIVED_BERRY_YELLOW, 1);
	CreateInvItems(hero, ITPL_REVIVED_SEED_BLUE, 1);
	CreateInvItems(hero, ITPL_REVIVED_SEED_GREEN, 1);
	CreateInvItems(hero, ITPL_REVIVED_SEED_RED, 1);
	CreateInvItems(hero, ITPL_REVIVED_SEED_YELLOW, 1);
	CreateInvItems(hero, ITPL_REVIVED_MUSHROOM_RED, 1);

	CreateInvItems(hero, ITHE_REVIVED_PAL, 1);

	CreateInvItems(hero, ITKE_REVIVED_GORDONRAMSAY, 1);
};

//****************************************************************************
//			OTHER STUFF
//****************************************************************************

INSTANCE REVIVED_POCKET_DEBUG(C_Item)
{
	name = "All Debug Items";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 10;
	visual = "REV_IT_POCKET_BLACK.3ds";
	scemeName = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = use_REVIVED_POCKET_DEBUG;
	description = "REVIVED_POCKET_DEBUG";
	text[4] = "All Debug items from this mod";
	text[5] = "Feel free to play around.";
};

func void use_REVIVED_POCKET_DEBUG()
{
	CreateInvItems(hero, REVIVED_LEARN_ALCHEMY_ALL, 1);
	CreateInvItems(hero, REVIVED_LEARN_SMITHING_ALL, 1);
	CreateInvItems(hero, REVIVED_LEARN_BOWMAKING_ALL, 1);
	CreateInvItems(hero, REVIVED_LEARN_TROPHIES_ALL, 1);
	CreateInvItems(hero, REVIVED_LEARN_RUNES_ALL, 1);
	CreateInvItems(hero, REVIVED_LEARN_TALENTS_ALL, 1);
};

//****************************************************************************

INSTANCE REVIVED_POCKET_ALLES(C_Item)
{
	name = "All Item Pockets";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 10;
	visual = "REV_IT_POCKET_WHITE.3ds";
	scemeName = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = use_REVIVED_POCKET_ALLES;
	description = "REVIVED_POCKET_ALLES";
	text[4] = "All Pockets from this mod";
	text[5] = "So you don't have to insert all of them individually.";
};

func void use_REVIVED_POCKET_ALLES()
{
	CreateInvItems(hero, REVIVED_POCKET_GOTHIC, 1);
	CreateInvItems(hero, REVIVED_POCKET_GOTHIC2, 1);
	CreateInvItems(hero, REVIVED_POCKET_GOTHICLEFTOVER, 1);
	CreateInvItems(hero, REVIVED_POCKET_WOG, 1);
	CreateInvItems(hero, REVIVED_POCKET_NEUE, 1);
	CreateInvItems(hero, REVIVED_POCKET_DEBUG, 1);
};

 */