const int	REV_Value_Berry			=	5;		const int	REV_Bonus_Berry			=	1;
const int	REV_Value_Seeds			=	5;		const int	REV_Bonus_Seeds			=	1;
const int	REV_Value_Mushroom		=	5;		const int	REV_Bonus_Mushroom		=	1;
const int	REV_Value_Riceplant		=	5;		const int	REV_Bonus_Riceplant		=	1;


//****************************************************************************
//			FUNCTIONS
//****************************************************************************

func void UseBerrys ()
{
	Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	REV_Bonus_Berry);
};

func void UseSeeds ()
{
	Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	REV_Bonus_Seeds);
};

func void UseMushrooms ()
{
	Npc_ChangeAttribute	(self,	ATR_MANA,	REV_Bonus_Mushroom);
};

func void UseRiceplant ()
{
	Npc_ChangeAttribute	(self,	ATR_Hitpoints,	REV_Bonus_Riceplant);
};

//****************************************************************************
//			BERRIES
//****************************************************************************

INSTANCE ITPL_REVIVED_BERRY_BLACK (C_Item)
{	
	name 				=	"Black berries";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	REV_Value_Berry;

	visual 				=	"REV_ITPL_BERRY_BLACK.3ds";
	material 			=	MAT_LEATHER;
	on_state [0]		=   UseBerrys;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= REV_Bonus_Berry;
	TEXT[5]				= NAME_Value;					COUNT[5]	= REV_Value_Berry;
};

/******************************************************************************************/

INSTANCE ITPL_REVIVED_BERRY_BLUE (C_Item)
{	
	name 				=	"Blue berries";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	REV_Value_Berry;

	visual 				=	"REV_ITPL_BERRY_BLUE.3ds";
	material 			=	MAT_LEATHER;
	on_state [0]		=   UseBerrys;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= REV_Bonus_Berry;
	TEXT[5]				= NAME_Value;					COUNT[5]	= REV_Value_Berry;
};

/******************************************************************************************/

INSTANCE ITPL_REVIVED_BERRY_GREEN (C_Item)
{	
	name 				=	"Green berries";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	REV_Value_Berry;

	visual 				=	"REV_ITPL_BERRY_GREEN.3ds";
	material 			=	MAT_LEATHER;
	on_state [0]		=   UseBerrys;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= REV_Bonus_Berry;
	TEXT[5]				= NAME_Value;					COUNT[5]	= REV_Value_Berry;
};

/******************************************************************************************/

INSTANCE ITPL_REVIVED_BERRY_PURPLE (C_Item)
{	
	name 				=	"Purple berries";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	REV_Value_Berry;

	visual 				=	"REV_ITPL_BERRY_PURPLE.3ds";
	material 			=	MAT_LEATHER;
	on_state [0]		=   UseBerrys;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= REV_Bonus_Berry;
	TEXT[5]				= NAME_Value;					COUNT[5]	= REV_Value_Berry;
};

/******************************************************************************************/

INSTANCE ITPL_REVIVED_BERRY_RED (C_Item)
{	
	name 				=	"Red berries";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	REV_Value_Berry;

	visual 				=	"REV_ITPL_BERRY_RED.3ds";
	material 			=	MAT_LEATHER;
	on_state [0]		=   UseBerrys;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= REV_Bonus_Berry;
	TEXT[5]				= NAME_Value;					COUNT[5]	= REV_Value_Berry;
};

/******************************************************************************************/

INSTANCE ITPL_REVIVED_BERRY_YELLOW (C_Item)
{	
	name 				=	"Yellow berries";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	REV_Value_Berry;

	visual 				=	"REV_ITPL_BERRY_YELLOW.3ds";
	material 			=	MAT_LEATHER;
	on_state [0]		=   UseBerrys;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= REV_Bonus_Berry;
	TEXT[5]				= NAME_Value;					COUNT[5]	= REV_Value_Berry;
};

//****************************************************************************
//			SEEDS
//****************************************************************************

INSTANCE ITPL_REVIVED_SEED_BLUE (C_Item)
{	
	name 				=	"Blue seeds";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	REV_Value_Seeds;

	visual 				=	"REV_ITPL_SEEDS_BLUE.3ds";
	material 			=	MAT_LEATHER;
	on_state [0]		=   UseSeeds;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= REV_Bonus_Seeds;
	TEXT[5]				= NAME_Value;					COUNT[5]	= REV_Value_Seeds;
};

/******************************************************************************************/

INSTANCE ITPL_REVIVED_SEED_GREEN (C_Item)
{	
	name 				=	"Green seeds";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	REV_Value_Seeds;

	visual 				=	"REV_ITPL_SEEDS_GREEN.3ds";
	material 			=	MAT_LEATHER;
	on_state [0]		=   UseSeeds;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= REV_Bonus_Seeds;
	TEXT[5]				= NAME_Value;					COUNT[5]	= REV_Value_Seeds;
};

/******************************************************************************************/

INSTANCE ITPL_REVIVED_SEED_RED (C_Item)
{	
	name 				=	"Red seeds";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	REV_Value_Seeds;

	visual 				=	"REV_ITPL_SEEDS_RED.3ds";
	material 			=	MAT_LEATHER;
	on_state [0]		=   UseSeeds;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= REV_Bonus_Seeds;
	TEXT[5]				= NAME_Value;					COUNT[5]	= REV_Value_Seeds;
};

/******************************************************************************************/

INSTANCE ITPL_REVIVED_SEED_YELLOW (C_Item)
{	
	name 				=	"Yellow seeds";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	REV_Value_Seeds;

	visual 				=	"REV_ITPL_SEEDS_YELLOW.3ds";
	material 			=	MAT_LEATHER;
	on_state [0]		=   UseSeeds;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= REV_Bonus_Seeds;
	TEXT[5]				= NAME_Value;					COUNT[5]	= REV_Value_Seeds;
};

//****************************************************************************
//			MUSHROOMS 
//****************************************************************************

INSTANCE ITPL_REVIVED_MUSHROOM_RED (C_Item)
{	
	name 				=	"Red mushroom";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	REV_Value_Mushroom;

	visual 				=	"REV_ITPL_MUSHROOM_RED.3ds";
	material 			=	MAT_LEATHER;
	on_state [0]		=   UseMushrooms;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= REV_Bonus_Mushroom;
	TEXT[5]				= NAME_Value;					COUNT[5]	= REV_Value_Mushroom;
};

//****************************************************************************
//			RICE
//****************************************************************************

INSTANCE ITPL_REVIVED_RICEPLANT (C_Item)
{	
	name 				=	"Rice plant";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	REV_Value_Riceplant;

	visual 				=	"ItPl_Weed.3ds";
	material 			=	MAT_LEATHER;
	on_state [0]		=   UseRiceplant;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= REV_Bonus_Riceplant;
	TEXT[5]				= NAME_Value;					COUNT[5]	= REV_Value_Riceplant;
};
