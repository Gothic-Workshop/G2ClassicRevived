//****************************************************************************
//			...
//****************************************************************************



//****************************************************************************
//			SWAMPWEED
//****************************************************************************

INSTANCE ITMI_REVIVED_JOINT_01 (C_Item)
{
	name 				=	"Green Novice";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Joint3;

	visual 				=	"ItMi_Joint_01.3ds";
	material 			=	MAT_WOOD;

	scemeName			=	"JOINT";
	on_state[0]			= Use_ITMI_REVIVED_JOINT_01;
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
func void Use_ITMI_REVIVED_JOINT_01()
{
	if (Npc_IsPlayer (self))
	{
		if (FirstJoint_01 == FALSE)
		{
			B_GivePlayerXP (5);
			FirstJoint_01 = TRUE;
		};
		Wld_PlayEffect ("SLOW_TIME", self, self, 0, 0, 0, FALSE);
	};
};

/******************************************************************************************/
INSTANCE ITMI_REVIVED_JOINT_02 (C_Item)
{
	name 				=	"Northern Dark";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Joint3;

	visual 				=	"ItMi_Joint_01.3ds";
	material 			=	MAT_WOOD;

	scemeName			=	"JOINT";
	on_state[0]			= Use_ITMI_REVIVED_JOINT_02;
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
func void Use_ITMI_REVIVED_JOINT_02()
{
	if (Npc_IsPlayer (self))
	{
		if (FirstJoint_02 == FALSE)
		{
			B_GivePlayerXP (15);
			FirstJoint_02 = TRUE;
		};
		Wld_PlayEffect ("SLOW_TIME", self, self, 0, 0, 0, FALSE);
	};
};

/******************************************************************************************/
INSTANCE ITMI_REVIVED_JOINT_03 (C_Item)
{
	name 				=	"Dreamcall";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Joint3;

	visual 				=	"ItMi_Joint_01.3ds";
	material 			=	MAT_WOOD;

	scemeName			=	"JOINT";
	on_state[0]			= Use_ITMI_REVIVED_JOINT_03;
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
func void Use_ITMI_REVIVED_JOINT_03()
{
	if (Npc_IsPlayer (self))
	{
		if (FirstJoint_03 == FALSE)
		{
			B_GivePlayerXP (15);
			Npc_ChangeAttribute(self, ATR_MANA_MAX, 2);
			PrintScreen	("Mana +2", -1,-1,"FONT_OLD_20_WHITE.TGA",3);
			FirstJoint_03 = TRUE;
		};
		Wld_PlayEffect ("SLOW_TIME", self, self, 0, 0, 0, FALSE);
	};
};

/******************************************************************************************/

INSTANCE ITMI_REVIVED_JOINT_04 (C_Item)
{
	name 				=	"Prepared Dreamcall";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Joint3*10;

	visual 				=	"ItMi_Joint_01.3ds";
	material 			=	MAT_WOOD;

	scemeName			=	"JOINT";
	on_state[0]			=	UseSpecialJoint;

	TEXT[0]		    	= "Swampweed with a stronger";
	TEXT[1]             = "effect than normal weed.";
	//TEXT[3]             = "For the Guru Baal-Tyon!";
	TEXT[5]				= NAME_Value;					COUNT[4]	= Value_Joint3*10;
};

func void UseSpecialJoint()
{
	AI_StartState	(self,ZS_MagicSleep,1,"");
};

//****************************************************************************
//			COMPONENTS
//****************************************************************************

const int	Value_Schwefel			=	20;
const int	Value_Quecksilber		=	25;
const int	Value_Salz				=	10;
const int	Value_Öl				=	15;
const int	Value_Moleratfett		=	5;
const int	Value_Alcohol			=	18;

INSTANCE ITMI_REVIVED_ALCHEMY_SULFUR (C_Item)
{
	name 				=	"Sulfur";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Schwefel;

	visual 				=	"ItMi_Alchemy_Sulphur_01.3DS";
	material 			=	MAT_GLAS;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
/******************************************************************************************/
INSTANCE ITMI_REVIVED_ALCHEMY_MERCURY (C_Item)
{
	name 				=	"Mercury";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Quecksilber;

	visual 				=	"ItMi_Alchemy_Quicksilver_01.3DS";
	material 			=	MAT_GLAS;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
/******************************************************************************************/
INSTANCE ITMI_REVIVED_ALCHEMY_SALT (C_Item)
{
	name 				=	"Salt";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Salz;

	visual 				=	"ItMi_Alchemy_Salt_01.3DS";
	material 			=	MAT_GLAS;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
/******************************************************************************************/
INSTANCE ITMI_REVIVED_ALCHEMY_SYRIANOIL (C_Item)
{
	name 				=	"Syrianic Oil";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Öl;

	visual 				=	"ItMi_Alchemy_Syrianoil_01.3DS";
	material 			=	MAT_GLAS;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
/******************************************************************************************/
INSTANCE ITMI_REVIVED_ALCHEMY_MOLERATGREASE (C_Item)
{
	name 				=	"Molerat Grease";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Moleratfett;

	visual 				=	"ItMi_Alchemy_Moleratlubric_01.3DS";
	material 			=	MAT_GLAS;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
/******************************************************************************************/
INSTANCE ITMI_REVIVED_ALCHEMY_ALCOHOL (C_Item)
{
	name 				=	"Pure Alcohol";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Alcohol;

	visual 				=	"ItMi_Alchemy_Alcohol_01.3DS";
	material 			=	MAT_GLAS;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
/******************************************************************************************/
INSTANCE ITMI_REVIVED_MAGIC_WATER (C_Item)
{
	name 					=	"Magic Water";

	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MISSION;

	value 					=	10;

	visual 					=	"ITMI_FLASKHEALTH.3ds";
	material 				=	MAT_GLAS;
	scemeName				=	"POTION";

	description				= name;
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
};

//****************************************************************************
//			MISSION
//****************************************************************************

INSTANCE ITMI_REVIVED_MAGICORE(C_Item)
{
	name 				=	"Lump of Ore";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Nugget;

	visual 				=	"ItMi_Nugget_NoMagic.3ds";
	material 			=	MAT_STONE;

	//wear				= 	WEAR_EFFECT;
	//effect				=	"SPELLFX_MANAPOTION";

	description			= 	name;

	TEXT[0]				=	"The ore is faded and does not shine.";
	
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			=	value;
	
	INV_ZBIAS				= INVCAM_ENTF_MISC2_STANDARD;
	
};

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