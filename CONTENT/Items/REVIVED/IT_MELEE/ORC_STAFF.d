const int	REV_Damage_Orc_Staff_01				=	75;
const int	REV_Condition_Orc_Staff_01			=	200;
const int	REV_Range_Orc_Staff_01				=	140;
const int	REV_Value_Orc_Staff_01				=	200;
//******************************************************************//
const int	REV_Damage_Orc_Staff_02				=	95;
const int	REV_Condition_Orc_Staff_02			=	250;
const int	REV_Range_Orc_Staff_02				=	140;
const int	REV_Value_Orc_Staff_02				=	250;



//****************************************************************************
//			ORC WEAPONS - STAFF
//****************************************************************************
INSTANCE ITMW_REVIVED_ORC_STAFF_01 (C_Item)
{	
	name 				=	"Grachtnakk";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Orc_Staff_01;

	damageTotal			= 	REV_Damage_Orc_Staff_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_Orc_Staff_01;		

	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_Condition_Orc_Staff_01;
	visual 				=	"ItRw_2H_Orcstaff_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Mana_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OrcWeapon;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_ORC_STAFF_02 (C_Item)
{	
	name 				=	"ShaBaNakk";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Orc_Staff_02;

	damageTotal			= 	REV_Damage_Orc_Staff_02;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_Orc_Staff_02;		

	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_Condition_Orc_Staff_02;
	visual 				=	"REV_2H_ORC_STAFF_02.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Mana_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OrcWeapon;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};