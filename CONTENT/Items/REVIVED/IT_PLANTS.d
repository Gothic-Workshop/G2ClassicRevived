const int	Value_Waldbeeren	=	5;		const int	HP_Waldbeeren		=	10;
const int	Value_Flammendorn	=	6;		const int	HP_Flammendorn		=	12;
const int	Value_Seraphis		=	7;		const int	HP_Seraphis			=	14;
const int	Value_Velayis		=	8;		const int	HP_Velayis			=	16;
const int	Value_Bergmoos		=	9;		const int	HP_Bergmoos			=	18;
const int	Value_Grabmoos		=	10;		const int	HP_Grabmoos			=	20;
const int	Value_Nachtschatten	=	11;		const int	HP_Nachtschatten	=	22;
const int	Value_Mondschatten	=	12;		const int	HP_Mondschatten		=	24;
const int	Value_Orkblatt		=	13;		const int	HP_Orkblatt			=	26;
const int	Value_Eichenblatt	=	14;		const int	HP_Eichenblatt		=	28;

const int	Value_Hollenpilz	=	 3;		const int	HP_Hollenpilz		=	 6;
const int	Value_Sklavenbrot	=	 9;		const int	HP_Sklavenbrot		=	15;

const int	Value_Heilkrauter1	=	14;		const int	HP_Heilkrauter1		=	30;
const int	Value_Heilkrauter2	=	19;		const int	HP_Heilkrauter2		=	39;
const int	Value_Heilkrauter3	=	24;		const int	HP_Heilkrauter3		=	49;

const int	Value_Trollkirsche	=	15;		const int	HP_Trollkirsche		=	20;

const int	Value_Blutbuche		=	3;		const int	Mana_Blutbuche		=	5;
const int	Value_Turmeiche		=	8;		const int	Mana_Turmeiche		=	10;
const int	Value_Rabenkraut	=	12;		const int	Mana_Rabenkraut		=	15;
const int	Value_Dunkelkraut	=	17;		const int	Mana_Dunkelkraut	=	20;
const int	Value_Steimwurzel	=	20;		const int	Mana_Steinwurzel	=	25;
const int	Value_Drachenwurzel	=	23;		const int	Mana_Drachenwurzel	=	30;


//****************************************************************************
//			HEALTH PLANTS
//****************************************************************************

INSTANCE ITPL_REVIVED_BLUEBERRY (C_Item)
{	
	name 				=	"Blueberries";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Waldbeeren;

	visual 				=	"ItFo_Plants_Berrys_01.3ds";
	material 			=	MAT_WOOD;
	on_state [0]		=   UseBerrys;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Waldbeeren;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Waldbeeren;
};

		func void UseBerrys ()
		{
			Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Waldbeeren);
		};

/******************************************************************************************/

INSTANCE ITPL_REVIVED_FLAMEBERRY (C_Item)
{	
	name 				=	"Flame Thorn";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Flammendorn;

	visual 				=	"ItFo_Plants_Flameberry_01.3ds";
	material 			=	MAT_WOOD;
	on_state [0]		=   Useflame;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Flammendorn;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Flammendorn;
};

		func void Useflame ()
		{
			Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Flammendorn);
		};

/******************************************************************************************/

INSTANCE ITPL_REVIVED_SERAPHIS (C_Item)
{	
	name 				=	"Seraphis";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Seraphis;

	visual 				=	"ItFo_Plants_Seraphis_01.3ds";
	material 			=	MAT_WOOD;
	on_state[0]			= Useseraphis;	
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Seraphis;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Seraphis;
};

		func void Useseraphis ()
		{			
			Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Seraphis);
		};
		
/******************************************************************************************/

INSTANCE ITPL_REVIVED_VELAYIS (C_Item)
{	
	name 				=	"Velayis";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Velayis;

	visual 				=	"ItFo_Plants_Seraphis_01.3ds";
	material 			=	MAT_WOOD;
	on_state[0]			= UseVelayis;	
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Velayis;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Velayis;
};

		func void UseVelayis ()
		{			
			Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Velayis);
		};
		
/******************************************************************************************/

INSTANCE ITPL_REVIVED_MOUNTAINMOSS (C_Item)
{	
	name 				=	"Mountain Moss";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Bergmoos;

	visual 				=	"ItFo_Plants_mountainmoos_01.3ds";
	material 			=	MAT_WOOD;
	on_state [0]		=   Usemoos;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Bergmoos;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Bergmoos;
};

		func void Usemoos ()
		{
			Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Bergmoos);
		};
		
/******************************************************************************************/

INSTANCE ITPL_REVIVED_GRAVEMOSS (C_Item)
{	
	name 				=	"Grave Moss";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Grabmoos;

	visual 				=	"ItFo_Plants_mountainmoos_01.3ds";
	material 			=	MAT_WOOD;
	on_state [0]		=   Usemoos2;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Grabmoos;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Grabmoos;
};

		func void Usemoos2 ()
		{
			Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Grabmoos);
		};

/******************************************************************************************/

INSTANCE ITPL_REVIVED_NIGHTSHADE (C_Item)
{	
	name 				=	"Solanaceae";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Nachtschatten;

	visual 				=	"ItFo_Plants_Nightshadow_01.3ds";
	material 			=	MAT_WOOD;
	on_state[0]         = Usenight;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Nachtschatten;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Nachtschatten;
};

		func void Usenight ()
		{
			Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Nachtschatten);
		};
		
/******************************************************************************************/

INSTANCE ITPL_REVIVED_LINUM (C_Item)
{	
	name 				=	"Lunanaceae";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Mondschatten;

	visual 				=	"ItFo_Plants_Nightshadow_01.3ds";
	material 			=	MAT_WOOD;
	on_state[0]         = Usemoon;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Mondschatten;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Mondschatten;
};

		func void Usemoon ()
		{
			Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Mondschatten);
		};
		
/******************************************************************************************/

INSTANCE ITPL_REVIVED_ORCLEAF (C_Item)
{	
	name 				=	"Orc Leaf";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Orkblatt;

	visual 				=	"ItFo_Plants_OrcHerb_01.3ds";
	material 			=	MAT_WOOD;
	on_state[0]			= 	Useorc;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Orkblatt;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Orkblatt;
};

		func void Useorc ()
		{	
			Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Orkblatt);
		};
		
/******************************************************************************************/

INSTANCE ITPL_REVIVED_OAKLEAF (C_Item)
{	
	name 				=	"Oak Leaf";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Eichenblatt;

	visual 				=	"ItFo_Plants_OrcHerb_01.3ds";
	material 			=	MAT_WOOD;
	on_state[0]			= Useorc2;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Eichenblatt;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Eichenblatt;
};

		func void Useorc2 ()
		{
			Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Eichenblatt);
		};

//****************************************************************************

INSTANCE ITPL_REVIVED_HEALING_01 (C_Item)
{	
	name 				=	"Healing Herbs";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Heilkrauter1;

	visual 				=	"ItFo_Plants_Herb_01.3ds";
	material 			=	MAT_WOOD;
	on_state[0]			=	UsePlants1;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Heilkrauter1;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Heilkrauter1;
};

	func void UsePlants1 ()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Heilkrauter1);
	};

/******************************************************************************************/

INSTANCE ITPL_REVIVED_HEALING_02 (C_Item)
{	
	name 				=	"Healing Herbs";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Heilkrauter2;

	visual 				=	"ItFo_Plants_Herb_02.3ds";
	material 			=	MAT_WOOD;
	on_state[0]			=	UsePlants2;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Heilkrauter2;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Heilkrauter2;
};

		func void UsePlants2 ()
		{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Heilkrauter2);
	};

/******************************************************************************************/

INSTANCE ITPL_REVIVED_HEALING_03 (C_Item)
{	
	name 				=	"Healing Herbs";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Heilkrauter3;

	visual 				=	"ItFo_Plants_Herb_03.3ds";
	material 			=	MAT_WOOD;
	on_state[0]			=	UsePlants3;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Heilkrauter3;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Heilkrauter3;
};

	func void UsePlants3 ()
	{			
			Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Heilkrauter3);
	};

//****************************************************************************
//			MANA PLANTS
//****************************************************************************

instance ITPL_REVIVED_BLOODWOOD (C_ITEM)
{	
	name 					=	"Copper Beech Seed";

	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;	

	value 					=	Value_Blutbuche;

	visual 					=	"ItFo_Plants_Bloodwood_01.3ds";
	material 				=	MAT_WOOD;
	on_state[0]				=  Useblood;
	scemeName				=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_Mana;				COUNT[1]	= Mana_Blutbuche;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Blutbuche;                          	
};
                                       
		func void Useblood ()
		{
			Npc_ChangeAttribute	(self,	ATR_MANA,	Mana_Blutbuche);
		};   
		                                  
/******************************************************************************************/

instance ITPL_REVIVED_TOWERWOOD (C_ITEM)
{	
	name 					=	"Tower Oak Seed";

	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;	

	value 					=	Value_Turmeiche;

	visual 					=	"ItFo_Plants_Bloodwood_01.3ds";
	material 				=	MAT_WOOD;
	on_state[0]				=  Useblood2;
	scemeName				=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_Mana;				COUNT[1]	= Mana_Turmeiche;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Turmeiche;                    	
};                                        

		func void Useblood2 ()
		{
			Npc_ChangeAttribute	(self,	ATR_MANA,	Mana_Turmeiche);
		};
		                 
/******************************************************************************************/

INSTANCE ITPL_REVIVED_RAVENHERB (C_Item)
{	
	name 				=	"Raven Herbs";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Rabenkraut;

	visual 				=	"ItFo_Plants_RavenHerb_01.3ds";
	material 			=	MAT_WOOD;
	on_state[0]			= Useraven;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_Mana;				COUNT[1]	= Mana_Rabenkraut;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Rabenkraut;
};

		func void Useraven ()
		{
			Npc_ChangeAttribute	(self,	ATR_MANA,	Mana_Rabenkraut);
		}; 
		  
/******************************************************************************************/

INSTANCE ITPL_REVIVED_DARKHERB (C_Item)
{	
	name 				=	"Dark Herbs";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Dunkelkraut;

	visual 				=	"ItFo_Plants_RavenHerb_01.3ds";
	material 			=	MAT_WOOD;
	on_state[0]			=   Useraven2;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_Mana;				COUNT[1]	= Mana_Dunkelkraut;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Dunkelkraut;
};

		func void Useraven2 ()
		{
			Npc_ChangeAttribute	(self,	ATR_MANA,	Mana_Dunkelkraut);
		}; 
		 
/******************************************************************************************/ 

INSTANCE ITPL_REVIVED_STONEROOT (C_Item)
{	
	name 				=	"Stoneroot";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Steimwurzel;

	visual 				=	"ItFo_Plants_Stoneroot_01.3ds";
	material 			=	MAT_WOOD;
	on_state[0]			=   Useroot;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_Mana;				COUNT[1]	= Mana_Steinwurzel;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Steimwurzel;
};

		func void Useroot ()
		{
			Npc_ChangeAttribute	(self,	ATR_MANA,	Mana_Steinwurzel);
		}; 
		
/******************************************************************************************/  

INSTANCE ITPL_REVIVED_DRAGONROOT (C_Item)
{	
	name 				=	"Dragonroot";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Drachenwurzel;

	visual 				=	"ItFo_Plants_Stoneroot_01.3ds";
	material 			=	MAT_WOOD;
	on_state[0]			=   Useroot2;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_Mana;				COUNT[1]	= Mana_Drachenwurzel;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Drachenwurzel;
};

		func void Useroot2 ()
		{
			Npc_ChangeAttribute	(self,	ATR_MANA,	Mana_Drachenwurzel);
		}; 

//****************************************************************************
//			MUSHROOMS 
//****************************************************************************

INSTANCE ITPL_REVIVED_HELLMUSHROOM (C_Item)
{	
	name 				=	"Hell Mushrooms";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Hollenpilz;

	visual 				=	"ItFo_Plants_mushroom_01.3ds";
	material 			=	MAT_WOOD;
	on_state[0]			= Usemush;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_Mana;				COUNT[1]	= HP_Hollenpilz;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Hollenpilz;
};

		func void Usemush ()
		{
			Npc_ChangeAttribute	(self,	ATR_MANA,	HP_Hollenpilz);
		};

/*****************************************************************************************/

INSTANCE ITPL_REVIVED_SLAVEBREAD (C_Item)
{	
	name 				=	"Slave's Bread";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Sklavenbrot;

	visual 				=	"ItFo_Plants_mushroom_01.3ds";
	material 			=	MAT_WOOD;
	on_state[0]			= 	Usemush2;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_Mana;				COUNT[1]	= HP_Sklavenbrot;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Sklavenbrot;
};

		func void Usemush2 ()
		{
			Npc_ChangeAttribute	(self,	ATR_MANA,	HP_Sklavenbrot);
		};

//****************************************************************************
//			OTHER
//****************************************************************************

INSTANCE ITPL_REVIVED_TROLLBERRY (C_Item)
{	
	name 					=	"Troll Nightshade";

	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;	

	value 					=	Value_Trollkirsche;

	visual 					=	"ItFo_Plants_Trollberrys_01.3ds";
	material 				=	MAT_WOOD;
	on_state [0]			=   UseTrollberrys;
	scemeName				=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Trollkirsche;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Trollkirsche;
};

		func void UseTrollberrys ()
		{
			Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	-HP_Trollkirsche);
		};