//****************************************************************************
//			MISCELLANEOUS
//****************************************************************************

INSTANCE ITMI_REVIVED_FIGURINE (C_Item)
{
	name 				=	"Figurine";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_Stuff_Idol_Sleeper_01.3DS";
	material 			=	MAT_CLAY;

	description			=	name;
	TEXT[0]				= "This figure is a misshapen";
	TEXT[1]				= "being with a mask.";
	TEXT[2]				= "The mask is surrounded by six big stings.";
};

INSTANCE ITMI_REVIVED_OLDCOIN (C_Item)
{
	name 				=	"Old Coin";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_Stuff_OldCoin_01.3DS";
	material 			=	MAT_METAL;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};