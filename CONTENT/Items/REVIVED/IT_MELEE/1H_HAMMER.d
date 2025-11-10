const int	REV_Damage_1H_Warhammer_01			=	55;
const int	REV_Condition_1H_Warhammer_01		=	55;
const int	REV_Range_1H_Warhammer_01			=	90;
const int	REV_Value_1H_Warhammer_01			=	800;
//******************************************************************//
const int	REV_Damage_1H_Warhammer_02			=	110;
const int	REV_Condition_1H_Warhammer_02		=	110;
const int	REV_Range_1H_Warhammer_02			=	90;
const int	REV_Value_1H_Warhammer_02			=	1500;
//******************************************************************//
const int	REV_Damage_1H_Warhammer_03			=	120;
const int	REV_Condition_1H_Warhammer_03		=	120;
const int	REV_Range_1H_Warhammer_03			=	90;
const int	REV_Value_1H_Warhammer_03			=	3800;



//****************************************************************************
//			ONE-HANDED HAMMER
//****************************************************************************
INSTANCE ITMW_REVIVED_1H_WARHAMMER_01 (C_Item)
{	
	name 				=	"Orc Hammer";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Warhammer_01;

	damageTotal			= 	REV_Damage_1H_Warhammer_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_1H_Warhammer_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Warhammer_01;
	visual 				=	"ItMw_1H_Warhammer_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_WARHAMMER_02 (C_Item)
{	
	name 				=	"War Hammer";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Warhammer_02;

	damageTotal			= 	REV_Damage_1H_Warhammer_02;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Warhammer_02;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Warhammer_02;
	visual 				=	"ItMw_1H_Warhammer_02.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_WARHAMMER_03 (C_Item)
{	
	name 				=	"God's Hammer";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Warhammer_03;

	damageTotal			= 	REV_Damage_1H_Warhammer_03;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Warhammer_03;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Warhammer_03;
	visual 				=	"ItMw_1H_Warhammer_03.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};