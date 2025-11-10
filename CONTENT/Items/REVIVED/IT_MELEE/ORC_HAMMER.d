const int	REV_Damage_Orc_Mace_01				=	75;
const int	REV_Condition_Orc_Mace_01			=	90;
const int	REV_Range_Orc_Mace_01				=	100;
const int	REV_Value_Orc_Mace_01				=	100;
//******************************************************************//
//******************************************************************//
const int	REV_Damage_Orc_Ulumulu				=	35;
const int	REV_Condition_Orc_Ulumulu			=	30;
const int	REV_Range_Orc_Ulumulu				=	130;
const int	REV_Value_Orc_Ulumulu				=	130;


//****************************************************************************
//			ORC WEAPONS - MACE
//****************************************************************************
INSTANCE ITMW_REVIVED_ORC_MACE_01 (C_Item)
{	
	name 				=	"Krush Karrok";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Orc_Mace_01;

	damageTotal			= 	REV_Damage_Orc_Mace_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_Orc_Mace_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Orc_Mace_01;
	visual 				=	"ItMw_2H_OrcMace_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OrcWeapon;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

//****************************************************************************
//			SPECIAL
//****************************************************************************
INSTANCE ITMW_REVIVED_ORC_ULUMULU (C_Item)
{	
	name 				=	"Ulu-Mulu";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE|ITEM_MISSION;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Orc_UluMulu;

	damageTotal			= 	REV_Damage_Orc_UluMulu;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_Orc_UluMulu;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Orc_UluMulu;
	visual 				=	"ItMi_Amulet_Ulumulu_02.3ds";
	visual_skin 		=	0;
	
	description			=	name;
	TEXT[0]				=	"Ulu-Mulu is a sign of great respect.";
	TEXT[2]				=	NAME_Damage_Blunt;				COUNT[3]	= damageTotal;
	TEXT[3] 			=	NAME_Str_needed;				COUNT[4]	= cond_value[2];
	TEXT[4] 			= 	NAME_OrcWeapon;
	TEXT[5]				=	NAME_Value; 					COUNT[5]	= value;
};