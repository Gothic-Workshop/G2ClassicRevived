INSTANCE PC_REVIVED(NPC_DEFAULT)
{
	//-------- primary data --------
	name 			= "Mr. Revived";
	Npctype			= NPCTYPE_MAIN;
	guild			= GIL_NONE;
	level			= 30;
	voice			= 15;
	id				= 0;

	self.aivar[AIV_INVINCIBLE] = true;
	
	//--------- abilities --------
	attribute[ATR_STRENGTH] =		300;
	attribute[ATR_DEXTERITY] =		300;
	attribute[ATR_MANA_MAX] =		1000;
	attribute[ATR_MANA] =			1000;
	attribute[ATR_HITPOINTS_MAX] =	1000;
	attribute[ATR_HITPOINTS] =		1000;
	
	exp				= (500*((level+1)/2)*(level+1));
	exp_next		= (500*((level+2)/2)*(level+1));
	
	B_SetFightSkills (self, 100);

	//-------- visuals --------
	// 						animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	//							Body-Mesh			Body-Tex		Skin-Color	Head-MMS    		Head-Tex		Teeth-Tex 	Armor-Tex
	Mdl_SetVisualBody (self,	"hum_body_Naked0", 	BodyTex_Player,	0,			"Hum_Head_Pony", 	FACE_N_Player,	0, 			ITAR_REVIVED_DEMONHUNTER_02);
	
	Npc_SetTalentSkill	(self, NPC_TALENT_MAGE, 			6);
	Npc_SetTalentSkill	(self, NPC_TALENT_PICKLOCK, 		1); //hängt ab von DEX (auf Programmebene)
	Npc_SetTalentSkill	(self, NPC_TALENT_SNEAK, 			1);
	Npc_SetTalentSkill	(self, NPC_TALENT_ACROBAT, 			1);
	
	Npc_SetTalentSkill	(self, NPC_TALENT_PICKPOCKET, 		1);	//hängt ab von DEX (auf Scriptebene)
	Npc_SetTalentSkill	(self, NPC_TALENT_SMITH, 			1);
	Npc_SetTalentSkill	(self, NPC_TALENT_RUNES, 			1);
	Npc_SetTalentSkill	(self, NPC_TALENT_ALCHEMY, 			1);
	Npc_SetTalentSkill	(self, NPC_TALENT_TAKEANIMALTROPHY,	1);

	Npc_SetTalentSkill	(self, NPC_TALENT_BOWMAKING,		1);
	Npc_SetTalentSkill	(self, NPC_TALENT_COOKING,			1);
	Npc_SetTalentSkill	(self, NPC_TALENT_BOOZE,			1);
	Npc_SetTalentSkill	(self, NPC_TALENT_TOBACCO,			1);

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

	PLAYER_TALENT_ALCHEMY[CHARGE_Innoseye] = TRUE;

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

	PLAYER_TALENT_ALCHEMY[POTION_Special_Experience] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Special_DragonDrink] = TRUE;

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

	PLAYER_TALENT_BOOZE[BOOZE_LouHammer] = TRUE;
	PLAYER_TALENT_BOOZE[BOOZE_LouHammerDouble] = TRUE;
	PLAYER_TALENT_BOOZE[BOOZE_FastHerring] = TRUE;
	PLAYER_TALENT_BOOZE[BOOZE_TurnipBooze] = TRUE;
	PLAYER_TALENT_BOOZE[BOOZE_VinoBooze] = TRUE;
	PLAYER_TALENT_BOOZE[BOOZE_WhiteRum] = TRUE;
	PLAYER_TALENT_BOOZE[BOOZE_MageWine] = TRUE;
	PLAYER_TALENT_BOOZE[BOOZE_RiceSchnaps] = TRUE;

	PLAYER_TALENT_TOBACCO[TOBACCO_Weed_Regular] = TRUE;
	PLAYER_TALENT_TOBACCO[TOBACCO_Weed_Apple] = TRUE;
	PLAYER_TALENT_TOBACCO[TOBACCO_Weed_Honey] = TRUE;
	PLAYER_TALENT_TOBACCO[TOBACCO_Weed_Mushroom] = TRUE;
	PLAYER_TALENT_TOBACCO[TOBACCO_Weed_GreenNovice] = TRUE;
	PLAYER_TALENT_TOBACCO[TOBACCO_Weed_NorthernDark] = TRUE;
	PLAYER_TALENT_TOBACCO[TOBACCO_Weed_Dreamcall] = TRUE;
	PLAYER_TALENT_TOBACCO[TOBACCO_Weed_DreamcallStrong] = TRUE;

//---------------------------------------------------------------------

	PLAYER_TALENT_SMITH[WEAPON_Common] 				= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_Special_01] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_Special_01] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_Special_02] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_Special_02]		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_Special_03] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_Special_03] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_Special_04] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_Special_04] 		= TRUE;

	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_01] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_02] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_03] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_04] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_01] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_02] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_03] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_04] 		= TRUE;

	PLAYER_TALENT_BOWYER[WEAPON_BOW_REVIVED_01] 	= TRUE;
	PLAYER_TALENT_BOWYER[WEAPON_BOW_REVIVED_02] 	= TRUE;
	PLAYER_TALENT_BOWYER[WEAPON_BOW_REVIVED_03] 	= TRUE;
	PLAYER_TALENT_BOWYER[WEAPON_BOW_REVIVED_04] 	= TRUE;
	PLAYER_TALENT_BOWYER[WEAPON_CBOW_REVIVED_01] 	= TRUE;
	PLAYER_TALENT_BOWYER[WEAPON_CBOW_REVIVED_02] 	= TRUE;
	PLAYER_TALENT_BOWYER[WEAPON_CBOW_REVIVED_03] 	= TRUE;
	PLAYER_TALENT_BOWYER[WEAPON_CBOW_REVIVED_04] 	= TRUE;

//---------------------------------------------------------------------

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

//---------------------------------------------------------------------

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


		//########################################
		//########################################
		//###								   ###
		//###			Alle Items			   ###
		//###								   ###	
		//########################################
		//########################################
	
	EquipItem (self, ITMW_REVIVED_DEMONSLAYER_2H);

//---------------------------------------------------------------------

	
	CreateInvItems(self, ITAM_REVIVED_PROT_ARROW_01, 1);
	CreateInvItems(self, ITAM_REVIVED_PROT_MELEE_01, 1);
	CreateInvItems(self, ITAM_REVIVED_PROT_MELEE_02, 1);
	CreateInvItems(self, ITAM_REVIVED_PROT_WEAPON_01, 1);
	CreateInvItems(self, ITAM_REVIVED_PROT_MAGIC_01, 1);
	CreateInvItems(self, ITAM_REVIVED_PROT_FIRE_01, 1);
	CreateInvItems(self, ITAM_REVIVED_PROT_FIRE_02, 1);
	CreateInvItems(self, ITAM_REVIVED_PROT_MAGIC_FIRE, 1);
	CreateInvItems(self, ITAM_REVIVED_PROT_TOTAL_01, 1);
	CreateInvItems(self, ITAM_REVIVED_HP_01, 1);
	CreateInvItems(self, ITAM_REVIVED_MP_01, 1);
	CreateInvItems(self, ITAM_REVIVED_HP_MP_01, 1);
	CreateInvItems(self, ITAM_REVIVED_DEX_01, 1);
	CreateInvItems(self, ITAM_REVIVED_DEX_02, 1);
	CreateInvItems(self, ITAM_REVIVED_STR_01, 1);
	CreateInvItems(self, ITAM_REVIVED_STR_02, 1);
	CreateInvItems(self, ITAM_REVIVED_STR_DEX_01, 1);
	CreateInvItems(self, ITAM_REVIVED_PSI, 1);
	CreateInvItems(self, ITAM_REVIVED_KDW, 1);
	CreateInvItems(self, ITAM_REVIVED_DEMON, 1);

	CreateInvItems(self, ITAR_REVIVED_VLK_L, 1);
	CreateInvItems(self, ITAR_REVIVED_VLK_M, 1);
	CreateInvItems(self, ITAR_REVIVED_STT_M, 1);
	CreateInvItems(self, ITAR_REVIVED_STT_H, 1);
	CreateInvItems(self, ITAR_REVIVED_GRD_L, 1);
	CreateInvItems(self, ITAR_REVIVED_GRD_M, 1);
	CreateInvItems(self, ITAR_REVIVED_GRD_H, 1);
	CreateInvItems(self, ITAR_REVIVED_GRD_S, 1);
	CreateInvItems(self, ITAR_REVIVED_EBR_L, 1);
	CreateInvItems(self, ITAR_REVIVED_EBR_M, 1);
	CreateInvItems(self, ITAR_REVIVED_EBR_H, 1);
	CreateInvItems(self, ITAR_REVIVED_SFB_L, 1);
	CreateInvItems(self, ITAR_REVIVED_ORG_L, 1);
	CreateInvItems(self, ITAR_REVIVED_ORG_M, 1);
	CreateInvItems(self, ITAR_REVIVED_ORG_H, 1);
	CreateInvItems(self, ITAR_REVIVED_SLD_L, 1);
	CreateInvItems(self, ITAR_REVIVED_SLD_M, 1);
	CreateInvItems(self, ITAR_REVIVED_SLD_H, 1);
	CreateInvItems(self, ITAR_REVIVED_NOV_M, 1);
	CreateInvItems(self, ITAR_REVIVED_TPL_H, 1);
	CreateInvItems(self, ITAR_REVIVED_KDF_L, 1);
	CreateInvItems(self, ITAR_REVIVED_KDF_M, 1);
	CreateInvItems(self, ITAR_REVIVED_KDF_H, 1);
	CreateInvItems(self, ITAR_REVIVED_KDW_L, 1);
	CreateInvItems(self, ITAR_REVIVED_KDW_M, 1);
	CreateInvItems(self, ITAR_REVIVED_KDW_H, 1);
	CreateInvItems(self, ITAR_REVIVED_DMT_L, 1);
	CreateInvItems(self, ITAR_REVIVED_DMT_M, 1);
	CreateInvItems(self, ITAR_REVIVED_DMT_H, 1);
	CreateInvItems(self, ITAR_REVIVED_DMT_S, 1);
	CreateInvItems(self, ITAR_REVIVED_BDT_L, 1);
	CreateInvItems(self, ITAR_REVIVED_BDT_M, 1);
	CreateInvItems(self, ITAR_REVIVED_BDT_H, 1);
	CreateInvItems(self, ITAR_REVIVED_PAL_L, 1);
	CreateInvItems(self, ITAR_REVIVED_PAL_M, 1);
	CreateInvItems(self, ITAR_REVIVED_PAL_H, 1);
	CreateInvItems(self, ITAR_REVIVED_PAL_S, 1);
	CreateInvItems(self, ITAR_REVIVED_DEMONHUNTER, 1);
	//CreateInvItems(self, ITAR_REVIVED_DEMONHUNTER_02, 1);
	CreateInvItems(self, ITAR_REVIVED_TPL_SKE, 1);
	CreateInvItems(self, ITAR_REVIVED_ARCHER, 1);
	CreateInvItems(self, ITAR_REVIVED_BEGGAR, 1);
	CreateInvItems(self, ITAR_REVIVED_KNIGHT, 1);
	CreateInvItems(self, ITAR_REVIVED_KNIGHT_02, 1);
	CreateInvItems(self, ITAR_REVIVED_DJG_M, 1);
	CreateInvItems(self, ITAR_REVIVED_DJG_H, 1);
	CreateInvItems(self, ITAR_REVIVED_PIR_H, 1);
	CreateInvItems(self, ITAR_REVIVED_GORDONRAMSAY, 1);

	CreateInvItems(self, ITBE_REVIVED_ARCHER, 1);

	CreateInvItems(self, ITFO_REVIVED_MEATBUG, 1);
	CreateInvItems(self, ITFO_REVIVED_APPLE, 1);
	CreateInvItems(self, ITFO_REVIVED_HONEY, 1);
	CreateInvItems(self, ITFO_REVIVED_GRAPES_BLACK, 20);
	CreateInvItems(self, ITFO_REVIVED_GRAPES_BLUE, 20);
	CreateInvItems(self, ITFO_REVIVED_GRAPES_RED, 20);
	CreateInvItems(self, ITFO_REVIVED_GRAPES_GREEN, 20);
	CreateInvItems(self, ITFO_REVIVED_GRAPES_PURPLE, 20);
	CreateInvItems(self, ITFO_REVIVED_GRAPES_YELLOW, 20);
	CreateInvItems(self, ITFO_REVIVED_BREAD, 1);
	CreateInvItems(self, ITFO_REVIVED_CHEESE, 1);
	CreateInvItems(self, ITFO_REVIVED_RICE, 1);
	CreateInvItems(self, ITFO_REVIVED_PLANTSOUP, 1);
	CreateInvItems(self, ITFO_REVIVED_BUGSOUP, 1);
	CreateInvItems(self, ITFO_REVIVED_CRAWLERSOUP, 1);                                          
	CreateInvItems(self, ITFO_REVIVED_WATER, 1);
	CreateInvItems(self, ITFO_REVIVED_BEER, 1);
	CreateInvItems(self, ITFO_REVIVED_WINE, 1);
	CreateInvItems(self, ITFO_REVIVED_BOOZE, 1);

	CreateInvItems(self, ITHE_REVIVED_SPECTACLES_01, 1);
	CreateInvItems(self, ITHE_REVIVED_SPECTACLES_02, 1);
	CreateInvItems(self, ITHE_REVIVED_SPECTACLES_03, 1);
	CreateInvItems(self, ITHE_REVIVED_SPECTACLES_04, 1);
	CreateInvItems(self, ITHE_REVIVED_JUDGE, 1);
	CreateInvItems(self, ITHE_REVIVED_PAL, 1);
	CreateInvItems(self, ITHE_REVIVED_KNIGHT, 1);
	CreateInvItems(self, ITHE_REVIVED_DJG_M, 1);
	CreateInvItems(self, ITHE_REVIVED_DJG_H, 1);
	CreateInvItems(self, ITHE_REVIVED_PIR_M, 1);
	CreateInvItems(self, ITHE_REVIVED_PIR_H, 1);

	CreateInvItems(self, ITKE_REVIVED_STONEFORTRESS, 1);
	CreateInvItems(self, ITKE_REVIVED_GORDONRAMSAY, 1);

	CreateInvItems(self, ITMW_REVIVED_SICKLE, 1);	
	CreateInvItems(self, ITMW_REVIVED_RUSTYSWORD, 1);
	CreateInvItems(self, ITMW_REVIVED_OLDSWORD, 1);
	CreateInvItems(self, ITMW_REVIVED_SHORTSWORD, 1);
	CreateInvItems(self, ITMW_REVIVED_FARMERDEFENSE, 1);
	CreateInvItems(self, ITMW_REVIVED_LURKERBITE, 1);
	CreateInvItems(self, ITMW_REVIVED_THORNOFWOUNDS, 1);
	CreateInvItems(self, ITMW_REVIVED_DIGGERDISCIPLINE, 1);
	CreateInvItems(self, ITMW_REVIVED_LIGHTGUARDSWORD, 1);
	CreateInvItems(self, ITMW_REVIVED_CRUDESWORD, 1);
	CreateInvItems(self, ITMW_REVIVED_JUDGMENTSWORD, 1);
	CreateInvItems(self, ITMW_REVIVED_GUARDSWORD, 1);
	CreateInvItems(self, ITMW_REVIVED_BATTLESWORD, 1);
	CreateInvItems(self, ITMW_REVIVED_WARSWORD, 1);
	CreateInvItems(self, ITMW_REVIVED_LONGSWORD, 1);
	CreateInvItems(self, ITMW_REVIVED_SWORDOFFEAR, 1);
	CreateInvItems(self, ITMW_REVIVED_SWORDOFHATE, 1);
	CreateInvItems(self, ITMW_REVIVED_SWORDOFVICTORY, 1);
	CreateInvItems(self, ITMW_REVIVED_SWORDOFDEATH, 1);
	CreateInvItems(self, ITMW_REVIVED_BROADSWORD, 1); 
	CreateInvItems(self, ITMW_REVIVED_WARRIORVERDICT, 1); 
	CreateInvItems(self, ITMW_REVIVED_STORMWHISPER, 1); 
	CreateInvItems(self, ITMW_REVIVED_GUARDHAND, 1); 
	CreateInvItems(self, ITMW_REVIVED_RUSTYBASTARDSWORD, 1); 
	CreateInvItems(self, ITMW_REVIVED_BUTCHER, 1); 
	CreateInvItems(self, ITMW_REVIVED_EXECUTOR, 1); 
	CreateInvItems(self, ITMW_REVIVED_BERSERKERWORD, 1); 
	CreateInvItems(self, ITMW_REVIVED_CLUB, 1);
	CreateInvItems(self, ITMW_REVIVED_POKER, 1);
	CreateInvItems(self, ITMW_REVIVED_SMITHHAMER, 1);
	CreateInvItems(self, ITMW_REVIVED_LIGHTCLUB, 1);
	CreateInvItems(self, ITMW_REVIVED_NAILCLUB, 1);
	CreateInvItems(self, ITMW_REVIVED_MACE, 1);
	CreateInvItems(self, ITMW_REVIVED_STINGMACE, 1);
	CreateInvItems(self, ITMW_REVIVED_BLOODFLYSTING, 1);
	CreateInvItems(self, ITMW_REVIVED_STEELTONGUE, 1);
	CreateInvItems(self, ITMW_REVIVED_MORNINGSTAR, 1);
	CreateInvItems(self, ITMW_REVIVED_STEELMACE, 1);
	CreateInvItems(self, ITMW_REVIVED_STONECRUSHER, 1);
	CreateInvItems(self, ITMW_REVIVED_HEARTBREAKER, 1);
	CreateInvItems(self, ITMW_REVIVED_ORCHAMMER, 1);
	CreateInvItems(self, ITMW_REVIVED_WARHAMMER, 1);
	CreateInvItems(self, ITMW_REVIVED_GODHAMMER, 1);
	CreateInvItems(self, ITMW_REVIVED_HANDAXE, 1); 
	CreateInvItems(self, ITMW_REVIVED_WITHEREDAXE, 1);
	CreateInvItems(self, ITMW_REVIVED_CUTTER, 1);	
	CreateInvItems(self, ITMW_REVIVED_AXE, 1);
	CreateInvItems(self, ITMW_REVIVED_SCULLCLEFTER, 1);
	CreateInvItems(self, ITMW_REVIVED_BONEBREAKER, 1);
	CreateInvItems(self, ITMW_REVIVED_RUSTYTWOHANDER, 1); 
	CreateInvItems(self, ITMW_REVIVED_LIGHTTWOHANDER, 1); 
	CreateInvItems(self, ITMW_REVIVED_CUSTODIANBLADE, 1); 
	CreateInvItems(self, ITMW_REVIVED_MERCENARYBLADE, 1); 
	CreateInvItems(self, ITMW_REVIVED_KINGBLADE, 1); 
	CreateInvItems(self, ITMW_REVIVED_DEMONICBLADE, 1); 
	CreateInvItems(self, ITMW_REVIVED_TWOHANDER, 1); 
	CreateInvItems(self, ITMW_REVIVED_HEROBLADE, 1); 
	CreateInvItems(self, ITMW_REVIVED_BLOODBLADE, 1); 
	CreateInvItems(self, ITMW_REVIVED_HEAVYTWOHANDER, 1); 
	CreateInvItems(self, ITMW_REVIVED_RAGESTEEL, 1); 
	CreateInvItems(self, ITMW_REVIVED_WRATHSTEEL, 1); 
	CreateInvItems(self, ITMW_REVIVED_REVENGESTEEL, 1); 
	CreateInvItems(self, ITMW_REVIVED_PICKAXE, 1);
	CreateInvItems(self, ITMW_REVIVED_OLDBATTLEAXE, 1);
	CreateInvItems(self, ITMW_REVIVED_BLOODHARVESTER, 1);
	CreateInvItems(self, ITMW_REVIVED_OLDJUDGE, 1);
	CreateInvItems(self, ITMW_REVIVED_LIGHTBATTLEAXE, 1);
	CreateInvItems(self, ITMW_REVIVED_THUNDERSTRIKE, 1);
	CreateInvItems(self, ITMW_REVIVED_SMASH, 1);
	CreateInvItems(self, ITMW_REVIVED_WARAXE, 1);
	CreateInvItems(self, ITMW_REVIVED_WARRIORVOICE, 1);
	CreateInvItems(self, ITMW_REVIVED_BARBARIANFIST, 1);
	CreateInvItems(self, ITMW_REVIVED_TROLLFIST, 1);
	CreateInvItems(self, ITMW_REVIVED_BATTLESTAFF, 1);
	CreateInvItems(self, ITMW_REVIVED_JUDGMENTSTAFF, 1);
	CreateInvItems(self, ITMW_REVIVED_PRIESTSTAFF, 1);
	CreateInvItems(self, ITMW_REVIVED_KRUSHVARROK, 1);
	CreateInvItems(self, ITMW_REVIVED_KRUSHPACH, 1);
	CreateInvItems(self, ITMW_REVIVED_KRUSHURROK, 1);
	CreateInvItems(self, ITMW_REVIVED_KRUSHAGASH, 1);
	CreateInvItems(self, ITMW_REVIVED_KRUSHBROKDAR, 1);
	CreateInvItems(self, ITMW_REVIVED_KRUSHKARROK, 1);
	CreateInvItems(self, ITMW_REVIVED_GRACHTNAKK, 1);
	CreateInvItems(self, ITMW_REVIVED_SHABANAKK, 1);
	CreateInvItems(self, ITMW_REVIVED_URIZIEL_1H, 1); 
	CreateInvItems(self, ITMW_REVIVED_URIZIEL_1H_CHARGED, 1); 
	CreateInvItems(self, ITMW_REVIVED_URIZIEL_2H, 1); 
	CreateInvItems(self, ITMW_REVIVED_URIZIEL_2H_CHARGED, 1); 
	CreateInvItems(self, ITMW_REVIVED_DEMONSLAYER_1H, 1); 
	//CreateInvItems(self, ITMW_REVIVED_DEMONSLAYER_2H, 1); 
	CreateInvItems(self, ITMW_REVIVED_ULUMULU, 1);
	CreateInvItems(self, ITMW_REVIVED_CLEFTEROFWORLDS, 1); 
	CreateInvItems(self, ITMW_REVIVED_LIGHTBRINGER, 1); 
	CreateInvItems(self, ITMW_REVIVED_BLADEOFTIME, 1); 
	CreateInvItems(self, ITMW_REVIVED_DEMONSTRIKE, 1); 
	CreateInvItems(self, ITMW_REVIVED_BANISHINGBLADE, 1); 

	CreateInvItems(self, ITMW_REVIVED_SWORD_JACKAL, 1);
	CreateInvItems(self, ITMW_REVIVED_SWORD_SCAR, 1);
	CreateInvItems(self, ITMW_REVIVED_SWORD_ARTO, 1);
	CreateInvItems(self, ITMW_REVIVED_SWORD_RAVEN, 1);
	CreateInvItems(self, ITMW_REVIVED_SWORD_BARTHOLO, 1);
	CreateInvItems(self, ITMW_REVIVED_SWORD_WHISTLER, 1);
	CreateInvItems(self, ITMW_REVIVED_SWORD_KALOM, 1);
	CreateInvItems(self, ITMW_REVIVED_MACE_LESTER, 1);
	CreateInvItems(self, ITMW_REVIVED_MACE_NAMIB, 1);
	CreateInvItems(self, ITMW_REVIVED_MACE_ORUN, 1);
	CreateInvItems(self, ITMW_REVIVED_MACE_FORTUNO, 1);
	CreateInvItems(self, ITMW_REVIVED_AXE_CORD, 1);
	CreateInvItems(self, ITMW_REVIVED_AXE_LARES, 1);
	CreateInvItems(self, ITMW_REVIVED_AXE_SILAS, 1);
	CreateInvItems(self, ITMW_REVIVED_SWORD_THORUS, 1);
	CreateInvItems(self, ITMW_REVIVED_SWORD_GOMEZ, 1);
	CreateInvItems(self, ITMW_REVIVED_SWORD_ANGAR, 1);
	CreateInvItems(self, ITMW_REVIVED_AXE_LEE, 1);
	CreateInvItems(self, ITMW_REVIVED_AXE_ORIC, 1);
	CreateInvItems(self, ITMW_REVIVED_AXE_TORLOF, 1);
	CreateInvItems(self, ITMW_REVIVED_AXE_GORN, 1);
	CreateInvItems(self, ITMW_REVIVED_STAFF_YBERION, 1);
	CreateInvItems(self, ITMW_REVIVED_STAFF_RICELORD, 1);

	CreateInvItems(self, ITMI_REVIVED_JOINT_GREENNOVICE, 1);
	CreateInvItems(self, ITMI_REVIVED_JOINT_NORTHDARK, 1);
	CreateInvItems(self, ITMI_REVIVED_JOINT_DREAMCALL, 1);
	CreateInvItems(self, ITMI_REVIVED_JOINT_DREAMCALL_02, 1);
	CreateInvItems(self, ITMI_REVIVED_JOINT_REGULAR, 1);
	CreateInvItems(self, ITMI_REVIVED_JOINT_APPLE, 1);
	CreateInvItems(self, ITMI_REVIVED_JOINT_APPLEDOUBLE, 1);
	CreateInvItems(self, ITMI_REVIVED_JOINT_HONEY, 1);
	CreateInvItems(self, ITMI_REVIVED_JOINT_MUSHROOM, 1);
	CreateInvItems(self, ITMI_REVIVED_SALT, 1);
	CreateInvItems(self, ITMI_REVIVED_SUGAR, 1);
	CreateInvItems(self, ITMI_REVIVED_SYRIANOIL, 1);
	CreateInvItems(self, ITMI_REVIVED_STONEOIL, 1);
	CreateInvItems(self, ITMI_REVIVED_PUREALCOHOL, 1);
	CreateInvItems(self, ITMI_REVIVED_VINEGAR, 1);
	CreateInvItems(self, ITMI_REVIVED_MAGICWATER, 1);
	CreateInvItems(self, ITMI_REVIVED_FIGURINE, 1);
	CreateInvItems(self, ITMI_REVIVED_WARHORN, 1);
	CreateInvItems(self, ITMI_REVIVED_OLDCOIN, 1);
	CreateInvItems(self, ITMI_REVIVED_MAGICORE, 1);

	CreateInvItems(self, ITPL_REVIVED_BERRY_BLACK, 1);
	CreateInvItems(self, ITPL_REVIVED_BERRY_BLUE, 1);
	CreateInvItems(self, ITPL_REVIVED_BERRY_GREEN, 1);
	CreateInvItems(self, ITPL_REVIVED_BERRY_PURPLE, 1);
	CreateInvItems(self, ITPL_REVIVED_BERRY_RED, 1);
	CreateInvItems(self, ITPL_REVIVED_BERRY_YELLOW, 1);
	CreateInvItems(self, ITPL_REVIVED_SEED_BLUE, 1);
	CreateInvItems(self, ITPL_REVIVED_SEED_GREEN, 1);
	CreateInvItems(self, ITPL_REVIVED_SEED_RED, 1);
	CreateInvItems(self, ITPL_REVIVED_SEED_YELLOW, 1);
	CreateInvItems(self, ITPL_REVIVED_MUSHROOM_RED, 1);

	CreateInvItems(self, ITPO_REVIVED_HEALTH_01, 1);
	CreateInvItems(self, ITPO_REVIVED_HEALTH_02, 1);
	CreateInvItems(self, ITPO_REVIVED_HEALTH_03, 1);
	CreateInvItems(self, ITPO_REVIVED_MANA_01, 1);
	CreateInvItems(self, ITPO_REVIVED_MANA_02, 1);
	CreateInvItems(self, ITPO_REVIVED_MANA_03, 1);
	CreateInvItems(self, ITPO_REVIVED_BOOST_HEALTH_01, 1);
	CreateInvItems(self, ITPO_REVIVED_BOOST_HEALTH_02, 1);
	CreateInvItems(self, ITPO_REVIVED_BOOST_HEALTH_03, 1);
	CreateInvItems(self, ITPO_REVIVED_BOOST_MANA_01, 1);
	CreateInvItems(self, ITPO_REVIVED_BOOST_MANA_02, 1);
	CreateInvItems(self, ITPO_REVIVED_BOOST_MANA_03, 1);
	CreateInvItems(self, ITPO_REVIVED_BOOST_STR_01, 1);
	CreateInvItems(self, ITPO_REVIVED_BOOST_STR_02, 1);
	CreateInvItems(self, ITPO_REVIVED_BOOST_STR_03, 1);
	CreateInvItems(self, ITPO_REVIVED_BOOST_DEX_01, 1);
	CreateInvItems(self, ITPO_REVIVED_BOOST_DEX_02, 1);
	CreateInvItems(self, ITPO_REVIVED_BOOST_DEX_03, 1);
	CreateInvItems(self, ITPO_REVIVED_BOOST_MASTER_01, 1);
	CreateInvItems(self, ITPO_REVIVED_BOOST_MASTER_02, 1);
	CreateInvItems(self, ITPO_REVIVED_BOOST_MASTER_03, 1);
	CreateInvItems(self, ITPO_REVIVED_SPEED_01, 1);
	CreateInvItems(self, ITPO_REVIVED_SPEED_02, 1);
	CreateInvItems(self, ITPO_REVIVED_SPEED_03, 1);
	CreateInvItems(self, ITPO_REVIVED_SPECIAL_MANA_01, 1);
	CreateInvItems(self, ITPO_REVIVED_SPECIAL_MANA_02, 1);

	CreateInvItems(self, ITRW_REVIVED_BOW_SMALL_01, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_SMALL_02, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_SMALL_03, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_SMALL_04, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_SMALL_05, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_LONG_01, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_LONG_02, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_LONG_03, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_LONG_04, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_LONG_05, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_LONG_06, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_LONG_07, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_LONG_08, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_LONG_09, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_WAR_01, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_WAR_02, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_WAR_03, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_WAR_04, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_WAR_05, 1);
	CreateInvItems(self, ITRW_REVIVED_CROSSBOW_01, 1);
	CreateInvItems(self, ITRW_REVIVED_CROSSBOW_02, 1);
	CreateInvItems(self, ITRW_REVIVED_CROSSBOW_03, 1);
	CreateInvItems(self, ITRW_REVIVED_CROSSBOW_04, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_DIEGO, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_WOLF, 1);

	CreateInvItems(self, ITRI_REVIVED_PROT_ARROW_01, 1);
	CreateInvItems(self, ITRI_REVIVED_PROT_ARROW_02, 1);
	CreateInvItems(self, ITRI_REVIVED_PROT_MELEE_01, 1);
	CreateInvItems(self, ITRI_REVIVED_PROT_MELEE_02, 1);
	CreateInvItems(self, ITRI_REVIVED_PROT_WEAPON_01, 1);
	CreateInvItems(self, ITRI_REVIVED_PROT_WEAPON_02, 1);
	CreateInvItems(self, ITRI_REVIVED_PROT_MAGIC_01, 1);
	CreateInvItems(self, ITRI_REVIVED_PROT_FIRE_01, 1);
	CreateInvItems(self, ITRI_REVIVED_PROT_FIRE_02, 1);
	CreateInvItems(self, ITRI_REVIVED_PROT_MAGIC_FIRE_01, 1);
	CreateInvItems(self, ITRI_REVIVED_PROT_MAGIC_FIRE_02, 1);
	CreateInvItems(self, ITRI_REVIVED_PROT_TOTAL_01, 1);
	CreateInvItems(self, ITRI_REVIVED_PROT_TOTAL_02, 1);
	CreateInvItems(self, ITRI_REVIVED_HP_01, 1);
	CreateInvItems(self, ITRI_REVIVED_HP_02, 1);
	CreateInvItems(self, ITRI_REVIVED_MP_01, 1);
	CreateInvItems(self, ITRI_REVIVED_HP_MP_01, 1);
	CreateInvItems(self, ITRI_REVIVED_DEX_01, 1);
	CreateInvItems(self, ITRI_REVIVED_DEX_02, 1);
	CreateInvItems(self, ITRI_REVIVED_STR_01, 1);
	CreateInvItems(self, ITRI_REVIVED_STR_02, 1);
	CreateInvItems(self, ITRI_REVIVED_STR_DEX_01, 1);

	CreateInvItems(self, ITRU_REVIVED_TELEPORT_OC, 1); 
	CreateInvItems(self, ITRU_REVIVED_TELEPORT_NC, 1); 
	CreateInvItems(self, ITRU_REVIVED_TELEPORT_PSI, 1); 
	CreateInvItems(self, ITRU_REVIVED_TELEPORT_DT, 1); 

	CreateInvItems(self, ITSC_REVIVED_TELEPORT_CITY, 1); 
	CreateInvItems(self, ITSC_REVIVED_TELEPORT_MONASTERY, 1); 
	CreateInvItems(self, ITSC_REVIVED_TELEPORT_BIGFARM, 1); 
	CreateInvItems(self, ITSC_REVIVED_TELEPORT_XARDAS, 1); 
	CreateInvItems(self, ITSC_REVIVED_TELEPORT_TAVERNE, 1); 
	CreateInvItems(self, ITSC_REVIVED_TELEPORT_ORC, 1); 
	CreateInvItems(self, ITSC_REVIVED_TRANSFORM_MEATBUG, 1);

	CreateInvItems(self, ITAT_REVIVED_DAMLURKER, 1);
	CreateInvItems(self, ITAT_REVIVED_ORCDOG, 1);
	CreateInvItems(self, ITAT_REVIVED_ICEGOLEM, 1);
	CreateInvItems(self, ITAT_REVIVED_CRAWLEREGG, 1);

	CreateInvItems(self, ITWR_REVIVED_CIRCLE_KDF_01, 1);
	CreateInvItems(self, ITWR_REVIVED_CIRCLE_KDF_02, 1);
	CreateInvItems(self, ITWR_REVIVED_CIRCLE_KDF_03, 1);
	CreateInvItems(self, ITWR_REVIVED_CIRCLE_KDF_04, 1);
	CreateInvItems(self, ITWR_REVIVED_CIRCLE_KDF_05, 1);
	CreateInvItems(self, ITWR_REVIVED_CIRCLE_KDF_06, 1);
	CreateInvItems(self, ITWR_REVIVED_GIFTFROMTHEGODS, 1);
	CreateInvItems(self, ITWR_REVIVED_SECRETSOFMAGIC, 1);
	CreateInvItems(self, ITWR_REVIVED_POWERFULART, 1);
	CreateInvItems(self, ITWR_REVIVED_ELEMENTARYARCANUM, 1);
	CreateInvItems(self, ITWR_REVIVED_TRUEPOWER, 1);
	CreateInvItems(self, ITWR_REVIVED_MAGICORE, 1);
	CreateInvItems(self, ITWR_REVIVED_ASTRONOMY, 1);
	CreateInvItems(self, ITWR_REVIVED_ARCANUMGOLUM_01, 1);
	CreateInvItems(self, ITWR_REVIVED_ARCANUMGOLUM_02, 1);
	CreateInvItems(self, ITWR_REVIVED_WORDSOFGODS_01, 1);
	CreateInvItems(self, ITWR_REVIVED_WORDSOFGODS_02, 1);
	CreateInvItems(self, ITWR_REVIVED_WORDSOFGODS_03, 1);
	CreateInvItems(self, ITWR_REVIVED_VARANT_01, 1);
	CreateInvItems(self, ITWR_REVIVED_VARANT_02, 1);
	CreateInvItems(self, ITWR_REVIVED_MYRTANAPOETRY, 1);
	CreateInvItems(self, ITWR_REVIVED_HUNTANDPREY, 1);
	CreateInvItems(self, ITWR_REVIVED_BLOODFLIES, 1);
	CreateInvItems(self, ITWR_REVIVED_ARTOFFIGHTING, 1);
	CreateInvItems(self, ITWR_REVIVED_RECIPES_01, 1);
	CreateInvItems(self, ITWR_REVIVED_RECIPES_02, 1);
	CreateInvItems(self, ITWR_REVIVED_KALOMSRECIPE, 1);
	CreateInvItems(self, ITWR_REVIVED_MAP_VALLEY, 1);
	CreateInvItems(self, ITWR_REVIVED_MAP_VALLEY_GAROND, 1);
	CreateInvItems(self, ITWR_REVIVED_MAP_VALLEY_DRAGONS, 1);
	CreateInvItems(self, ITWR_REVIVED_MAP_VALLEY_CAVES, 1);
	CreateInvItems(self, ITWR_REVIVED_MAP_FOCUS, 1);
	CreateInvItems(self, ITWR_REVIVED_ALMANAC, 1);
	CreateInvItems(self, ITWR_REVIVED_CRYPT, 1);
	CreateInvItems(self, ITWR_REVIVED_CERTIFICATE, 1);
	
	CreateInvItems(self, REVIVED_LEARN_ALCHEMY_ALL, 1);
	CreateInvItems(self, REVIVED_LEARN_SMITHING_ALL, 1);
	CreateInvItems(self, REVIVED_LEARN_BOWMAKING_ALL, 1);
	CreateInvItems(self, REVIVED_LEARN_RUNES_ALL, 1);
	CreateInvItems(self, REVIVED_LEARN_TROPHIES_ALL, 1);
	CreateInvItems(self, REVIVED_LEARN_TALENTS_ALL, 1);

	CreateInvItems(self, REVIVED_POCKET_GOTHIC, 1);
	CreateInvItems(self, REVIVED_POCKET_GOTHIC2, 1);
	CreateInvItems(self, REVIVED_POCKET_GOTHICLEFTOVER, 1);
	CreateInvItems(self, REVIVED_POCKET_WOG, 1);
	CreateInvItems(self, REVIVED_POCKET_NEUE, 1);
	CreateInvItems(self, REVIVED_POCKET_DEBUG, 1);
	CreateInvItems(self, REVIVED_POCKET_ALLES, 1);
};