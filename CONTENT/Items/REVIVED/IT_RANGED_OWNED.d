//****************************************************************************
//			BOWS
//****************************************************************************

INSTANCE ITRW_REVIVED_BOW_DIEGO (C_Item)
{
	name 				= "Diego's Bow";

	mainflag 			= ITEM_KAT_FF;
	flags 				= ITEM_BOW;
	material 			= MAT_WOOD;

	value 				= 390;

	damageTotal 		= 70;
	damagetype			= DAM_POINT;
	munition			= ITRW_ARROW;

	cond_atr[2]   		= ATR_DEXTERITY;
	cond_value[2]  		= 45;

	//owner 				= PC_THIEF;
	visual 				= "ItRwLongbow.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_BOW_WOLF (C_Item)
{
	name 				=	"Wolf's Bow";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	200;

	damageTotal			=	35;
	damagetype			=	DAM_POINT;
	munition			=	ITRW_ARROW;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	35;

	//owner 				=   ORG_855_WOLF;
	visual 				=	"ItRwLongbow.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

//****************************************************************************
//			CROSSBOWS
//****************************************************************************


