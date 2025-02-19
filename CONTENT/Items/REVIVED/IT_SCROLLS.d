//****************************************************************************
//			TELEPORT
//****************************************************************************

INSTANCE ITSC_REVIVED_TELEPORT_CITY (C_Item) 
{
	name 				=	NAME_Spruchrolle;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	
	value 				=	Value_Ru_TeleportSeaport;
	
	visual				=	"ITSC_TELEPORT.3ds";	
	material			=	MAT_LEATHER;

	spell				= 	SPL_TeleportSeaport;


	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_TeleportSeaport;
	
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_TELEPORT;
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

INSTANCE ITSC_REVIVED_TELEPORT_MONASTERY (C_Item) 
{
	name 				=	NAME_Spruchrolle;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	
	value 				=	Value_Ru_TeleportMonastery;

	
	visual				=	"ITSC_TELEPORT.3ds";	
	material			=	MAT_LEATHER;

	spell				= 	SPL_TeleportMonastery;


	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_TeleportMonastery;
	
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_TELEPORT;
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

INSTANCE ITSC_REVIVED_TELEPORT_BIGFARM (C_Item) 
{
	name 				=	NAME_Spruchrolle;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	
	value 				=	Value_Ru_TeleportFarm;
	
	visual				=	"ITSC_TELEPORT.3ds";	
	material			=	MAT_LEATHER;

	spell				= 	SPL_TeleportFarm;


	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_TeleportFarm;
	
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_TELEPORT;
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

INSTANCE ITSC_REVIVED_TELEPORT_XARDAS (C_Item) 
{
	name 				=	NAME_Spruchrolle;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	
	value 				=	Value_Ru_TeleportXardas;
	
	visual				=	"ITSC_TELEPORT.3ds";	
	material			=	MAT_LEATHER;

	spell				= 	SPL_TeleportXardas;


	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_TeleportXardas;
	

	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_TELEPORT;
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

INSTANCE ITSC_REVIVED_TELEPORT_TAVERNE (C_Item) 
{
	name 				=	NAME_Spruchrolle;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	
	value				=	Value_Ru_TeleportTaverne;
	
	visual				=	"ITSC_TELEPORT.3ds";	
	material			=	MAT_LEATHER;

	spell				= 	SPL_TeleportTaverne;


	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_TeleportTaverne;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_TELEPORT;
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

INSTANCE ITSC_REVIVED_TELEPORT_ORC (C_Item) 
{
	name 				=	NAME_Spruchrolle;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	
	value				=	Value_Ru_TeleportTaverne;
	
	visual				=	"ITSC_TELEPORT.3ds";	
	material			=	MAT_LEATHER;

	spell				= 	SPL_TeleportOrc;


	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_TeleportOrc;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_TELEPORT;
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

//****************************************************************************
//			TRANSFORM
//****************************************************************************

INSTANCE ITSC_REVIVED_TRANSFORM_MEATBUG (C_Item)
{
	name 				=	NAME_Spruchrolle;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_TrfSheep;

	visual				=	"ITSC_TRANSFORM_MEATBUG.3DS";
	material			=	MAT_LEATHER;

	spell			    = 	SPL_TrfMeatbug;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_TrfMeatbug;

	TEXT	[0]			=	Name_MageScroll	;

	TEXT	[1]			=	NAME_Mana_needed;			
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};