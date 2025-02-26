//****************************************************************************
//			...
//****************************************************************************




//****************************************************************************
//			DEBUG
//****************************************************************************

instance REVIVED_LEARN_ALCHEMY_ALL(C_Item)
{
	name = "DEBUG (Potion Learn)";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 10;
	visual = "ItMi_HolyWater.3ds";
	scemeName = "POTIONFAST";
	material = MAT_LEATHER;
	on_state[0] = use_REVIVED_LEARN_ALCHEMY_ALL;
	description = "REVIVED_LEARN_ALCHEMY_ALL";
	text[4] = "DEBUG ITEM";
	text[5] = "Allowing you to learn all potions in the game.";
};


func void use_REVIVED_LEARN_ALCHEMY_ALL()
{
	PLAYER_TALENT_ALCHEMY[POTION_Health_01] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Health_02] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Health_03] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Health_04] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Mana_01] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Mana_02] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Mana_03] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Mana_04] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Speed] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_STR] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_Mana] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_Health] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_MegaDrink] = TRUE;
	PLAYER_TALENT_ALCHEMY[CHARGE_Innoseye] = TRUE;

	PLAYER_TALENT_ALCHEMY[POTION_Perm_HEALTH_01] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_HEALTH_02] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_HEALTH_03] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_MANA_01] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_MANA_02] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_MANA_03] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_STR_01] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_STR_02] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_STR_03] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX_01] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX_02] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX_03] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_MASTER_01] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_MASTER_02] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_MASTER_03] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_SPEED_01] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_SPEED_02] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_SPEED_03] = TRUE;

	PLAYER_TALENT_ALCHEMY[POTION_Booze_LouHammer] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Booze_LouHammerDouble] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Booze_FastHerring] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Booze_TurnipBooze] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Booze_VinoBooze] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Booze_WhiteRum] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Booze_MageWine] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Booze_RiceSchnaps] = TRUE;

	PLAYER_TALENT_ALCHEMY[POTION_Weed_Regular] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Weed_GreenNovice] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Weed_NorthernDark] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Weed_Dreamcall] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Weed_DreamcallStrong] = TRUE;
};

//****************************************************************************

instance REVIVED_LEARN_SMITHING_ALL(C_Item)
{
	name = "DEBUG (Smithing Learn)";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 10;
	visual = "ItMi_HolyWater.3ds";
	scemeName = "POTIONFAST";
	material = MAT_LEATHER;
	on_state[0] = use_REVIVED_LEARN_SMITHING_ALL;
	description = "REVIVED_LEARN_SMITHING_ALL";
	text[4] = "DEBUG ITEM";
	text[5] = "Allowing you to learn all smith recipes in the game.";
};


func void use_REVIVED_LEARN_SMITHING_ALL()
{
	PLAYER_TALENT_SMITH[WEAPON_Common] 			= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_Special_01] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_Special_01] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_Special_02] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_Special_02]	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_Special_03] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_Special_03] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_Special_04] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_Special_04] 	= TRUE;

	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_01] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_01] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_02] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_02] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_03] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_03] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_04] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_04] 	= TRUE;
};

//****************************************************************************

instance REVIVED_LEARN_RUNES_ALL(C_Item)
{
	name = "DEBUG (Runes Learn)";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 10;
	visual = "ItMi_HolyWater.3ds";
	scemeName = "POTIONFAST";
	material = MAT_LEATHER;
	on_state[0] = use_REVIVED_LEARN_RUNES_ALL;
	description = "REVIVED_LEARN_RUNES_ALL";
	text[4] = "DEBUG ITEM";
	text[5] = "Allowing you to learn all rune recipes in the game.";
};


func void use_REVIVED_LEARN_RUNES_ALL()
{
	PLAYER_TALENT_RUNES[SPL_LIGHT] 					= TRUE;
	PLAYER_TALENT_RUNES[SPL_Firebolt] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_Icebolt] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_LightHeal] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_SummonGoblinSkeleton] 	= TRUE;
	PLAYER_TALENT_RUNES[SPL_InstantFireball] 		= TRUE;
	PLAYER_TALENT_RUNES[SPL_Zap] 					= TRUE;
	PLAYER_TALENT_RUNES[SPL_SummonWolf] 			= TRUE;
	PLAYER_TALENT_RUNES[SPL_WINDFIST] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_Sleep] 					= TRUE;
	PLAYER_TALENT_RUNES[SPL_MediumHeal] 			= TRUE;
	PLAYER_TALENT_RUNES[SPL_LightningFlash] 		= TRUE;
	PLAYER_TALENT_RUNES[SPL_ChargeFireball] 		= TRUE;
	PLAYER_TALENT_RUNES[SPL_SummonSkeleton] 		= TRUE;
	PLAYER_TALENT_RUNES[SPL_Fear] 					= TRUE;
	PLAYER_TALENT_RUNES[SPL_IceCube] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_ChargeZap] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_SummonGolem] 			= TRUE;
	PLAYER_TALENT_RUNES[SPL_DestroyUndead] 			= TRUE;
	PLAYER_TALENT_RUNES[SPL_Pyrokinesis] 			= TRUE;
	PLAYER_TALENT_RUNES[SPL_Firestorm] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_IceWave] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_SummonDemon] 			= TRUE;
	PLAYER_TALENT_RUNES[SPL_FullHeal] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_Firerain] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_BreathOfDeath] 			= TRUE;
	PLAYER_TALENT_RUNES[SPL_MassDeath] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_ArmyOfDarkness] 		= TRUE;
	PLAYER_TALENT_RUNES[SPL_Shrink] 				= TRUE;
};

//****************************************************************************

instance REVIVED_LEARN_TROPHIES_ALL(C_Item)
{
	name = "DEBUG (Trophies Learn)";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 10;
	visual = "ItMi_HolyWater.3ds";
	scemeName = "POTIONFAST";
	material = MAT_LEATHER;
	on_state[0] = use_REVIVED_LEARN_TROPHIES_ALL;
	description = "REVIVED_LEARN_TROPHIES_ALL";
	text[4] = "DEBUG ITEM";
	text[5] = "Allowing you to learn all trophies in the game.";
};


func void use_REVIVED_LEARN_TROPHIES_ALL()
{
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] 			= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws]			= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] 				= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Heart] 			= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_ShadowHorn] 		= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_FireTongue] 		= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFWing] 			= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] 			= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Mandibles] 		= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_CrawlerPlate] 	= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_DrgSnapperHorn] 	= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_DragonScale] 		= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_DragonBlood] 		= TRUE;
};

//****************************************************************************

instance REVIVED_LEARN_TALENTS_ALL(C_Item)
{
	name = "DEBUG (Talent Learn)";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 10;
	visual = "ItMi_HolyWater.3ds";
	scemeName = "POTIONFAST";
	material = MAT_LEATHER;
	on_state[0] = use_REVIVED_LEARN_TALENTS_ALL;
	description = "REVIVED_LEARN_TALENTS_ALL";
	text[4] = "DEBUG ITEM";
	text[5] = "Allowing you to learn all talents and components in the game.";
};


func void use_REVIVED_LEARN_TALENTS_ALL()
{
	Npc_SetTalentSkill	(self, NPC_TALENT_MAGE, 			6);
	Npc_SetTalentSkill	(self, NPC_TALENT_PICKLOCK, 		1);
	Npc_SetTalentSkill	(self, NPC_TALENT_SNEAK, 			1);
	Npc_SetTalentSkill	(self, NPC_TALENT_ACROBAT, 			1);
	
	Npc_SetTalentSkill	(self, NPC_TALENT_PICKPOCKET, 		1);
	Npc_SetTalentSkill	(self, NPC_TALENT_SMITH, 			1);
	Npc_SetTalentSkill	(self, NPC_TALENT_RUNES, 			1);
	Npc_SetTalentSkill	(self, NPC_TALENT_ALCHEMY, 			1);
	Npc_SetTalentSkill	(self, NPC_TALENT_TAKEANIMALTROPHY,	1);
	
	B_SetFightSkills (self, 100);

	use_REVIVED_LEARN_ALCHEMY_ALL();
	use_REVIVED_LEARN_SMITHING_ALL();
	use_REVIVED_LEARN_RUNES_ALL();
	use_REVIVED_LEARN_TROPHIES_ALL();
};