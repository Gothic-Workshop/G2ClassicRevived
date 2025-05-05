INSTANCE ITAT_REVIVED_DAMLURKER (C_Item)
{
	name 				=	"Dam Lurker's Claws";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Lurkerklaue;

	visual 				=	"ItAt_Lurker_01.3DS";
	material 			=	MAT_LEATHER;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= Value_Lurkerklaue*2;
};

INSTANCE ITAT_REVIVED_ORCDOG (C_Item)
{
	name 				=	"Skin of an Orc Dog";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Orkhundfell;

	visual 				=	"ItAt_Wolf_02.3DS";
	material 			=	MAT_LEATHER;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= Value_Orkhundfell;
};

INSTANCE ITAT_REVIVED_ICEGOLEM (C_Item)
{
	name 				=	"Piece of an Ice Golem";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	spell				= 	SPL_IceCube;

	value 				=	Value_Eistueck;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	500;

	visual 				=	"ItAt_IceGolem_01.3DS";
	material 			=	MAT_STONE;

	description			= name;
	TEXT[0]				= "This is a fragment of";
	TEXT[1]				= "a defeated ice golem.";
	TEXT[4]				= NAME_Value;					COUNT[4]	= Value_Eistueck;
};

INSTANCE ITAT_REVIVED_CRAWLEREGG(C_Item)
{	
	name 					=	"Minecrawler's Egg";
	
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MISSION|ITEM_MULTI;	

	value 					=	100;

	visual 					=	"ItAt_Crawlerqueen.3ds"; 
	material 				=	MAT_LEATHER;

	description				=	name;
	TEXT[0]					=	"These eggs were laid by a minecrawler";
	TEXT[1]					=	"queen.";
	TEXT[2]					=	"They contain a far stronger secretion than ";
	TEXT[3]					=	"a normal minecrawler's mandibles.";
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITAT_REVIVED_SCAVENGEREGG(C_Item)
{	
	name 					=	"Scavenger's Egg";
	
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MISSION|ITEM_MULTI;	

	value 					=	40;

	visual 					=	"ItAt_Crawlerqueen.3ds"; 
	material 				=	MAT_LEATHER;

	description				=	name;
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;
};