const int	REV_Value_TELEPORT_SCROLL				=	100;
//******************************************************************//

//****************************************************************************
//			TELEPORT
//****************************************************************************

INSTANCE ITSC_REVIVED_TELEPORT_CITY (C_Item) 
{
	name 				=	NAME_SPL_TeleportSeaport;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;
	
	value 				=	REV_Value_TELEPORT_SCROLL;
	
	visual				=	"ITSC_REV_TELEPORT_CITY.3ds";
	spell				= 	SPL_TeleportSeaport;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= SPL_COST_TELEPORT;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_TELEPORT_MONASTERY (C_Item) 
{
	name 				=	NAME_SPL_TeleportMonastery;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;
	
	value 				=	REV_Value_TELEPORT_SCROLL;
	
	visual				=	"ITSC_REV_TELEPORT_MONASTERY.3ds";	
	spell				= 	SPL_TeleportMonastery;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= SPL_COST_TELEPORT;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_TELEPORT_BIGFARM (C_Item) 
{
	name 				=	NAME_SPL_TeleportFarm;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;
	
	value 				=	REV_Value_TELEPORT_SCROLL;
	
	visual				=	"ITSC_REV_TELEPORT_BIGFARM.3ds";	
	spell				= 	SPL_TeleportFarm;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= SPL_COST_TELEPORT;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_TELEPORT_XARDAS (C_Item) 
{
	name 				=	NAME_SPL_TeleportXardas;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;
	
	value 				=	REV_Value_TELEPORT_SCROLL;
	
	visual				=	"ITSC_REV_TELEPORT_XARDAS.3ds";	
	spell				= 	SPL_TeleportXardas;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= SPL_COST_TELEPORT;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_TELEPORT_TAVERNE (C_Item) 
{
	name 				=	NAME_SPL_TeleportTaverne;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;
	
	value 				=	REV_Value_TELEPORT_SCROLL;
	
	visual				=	"ITSC_REV_TELEPORT_EMPTY.3ds";	
	spell				= 	SPL_TeleportTaverne;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= SPL_COST_TELEPORT;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_TELEPORT_ORC (C_Item) 
{
	name 				=	NAME_SPL_TeleportOrc;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;
	
	value 				=	REV_Value_TELEPORT_SCROLL;
	
	visual				=	"ITSC_REV_TELEPORT_EMPTY.3ds";	
	spell				= 	SPL_TeleportOrc;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= SPL_COST_TELEPORT;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

//****************************************************************************
//			SPELLS
//****************************************************************************



//****************************************************************************
//			TRANSFORM
//****************************************************************************

INSTANCE ITSC_REVIVED_TRANSFORM_MEATBUG (C_Item)
{
	name 				=	NAME_SPL_TrfMeatbug;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	Value_Sc_TrfSheep;

	visual				=	"ITSC_TRANSFORM_MEATBUG.3DS";

	spell			    = 	SPL_TrfMeatbug;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};