// ************************************************************************************************
// Heilwirkung und Kosten von Nahrung
// ************************************************************************************************
// Mana_:	Gibt an wieviel Manapunkte das Kraut beim Essen wiedergibt
// HP_:		Gibt an wieviel Lebenspunkte das Kraut beim Essen wiedergibt
// ************************************************************************************************

const int   Value_Weed				= 	0;		
const int	Value_Beet				=	3;		const int	HP_Beet				=	2;
const int	Value_SwampHerb			=	10;
 const int	Value_Mana_Herb_01		=	10;		const int	Mana_Mana_Herb_01	=	10;
 const int	Value_Mana_Herb_02		=	20;		const int	Mana_Mana_Herb_02	=	20;
 const int	Value_Mana_Herb_03		=	40;		const int	Mana_Mana_Herb_03	=	30;
 const int	Value_Health_Herb_01	=	20;		const int	HP_Health_Herb_01	=	10;
 const int	Value_Health_Herb_02	=	40;		const int	HP_Health_Herb_02	=	20;
 const int	Value_Health_Herb_03	=	60;		const int	HP_Health_Herb_03	=	30;
 const int	Value_Dex_Herb_01		=	250;
 const int	Value_Strength_Herb_01	=	500;
 const int	Value_Speed_Herb_01		=	100;	const int  Speed_Boost			= 15000; //15 Sekunden

const int	Value_Mushroom_01		=	10;		const int	MP_Mushroom_01		=	5;
const int	Value_Mushroom_02		=	30;		const int	HP_Mushroom_02		=	10;

const int	Value_Forestberry		=	10;		const int	HP_Forestberry		=	5;
const int	Value_Blueplant			=	10;		const int	HP_Blueplant		=	5;
												const int	Mana_Blueplant		=	5;
const int	Value_Planeberry		=	10;		const int	HP_Planeberry		=	5;

 const int	Value_Temp_Herb			=	100;		const int	HP_Temp_Herb		=	5;
 const int	Value_Perm_Herb			=	500;		const int	HP_Perm_Herb		=	5;

/******************************************************************************************/

INSTANCE ItPl_Weed(C_Item)
{	
	name 				=	"Weeds";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Weed;

	visual 				=	"ItPl_Weed.3ds";
	material 			=	MAT_LEATHER;

	on_state[0]			=	Use_Beet;
	scemeName			=	"FOOD";

	description			= 	name;
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	Value_Weed;
};

/******************************************************************************************/

INSTANCE ItPl_Beet (C_Item)
{	
	name 				=	"Turnip";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Beet;

	visual 				=	"ItPl_Beet.3ds";
	material 			=	MAT_LEATHER;
	on_state[0]			=	Use_Beet;
	scemeName			=	"FOOD";

	description			= 	name;
	
	TEXT[1]				= 	NAME_Bonus_HP;	
	COUNT[1]			= 	HP_Beet;

	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	Value_Beet;
};

func void Use_Beet ()
	{			
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Beet);
	};
/******************************************************************************************/	
INSTANCE ItPl_SwampHerb(C_Item)
{	
	name 				=	"Swampweed";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_SwampHerb;

	visual 				=	"ItPl_SwampHerb.3ds";
	material 			=	MAT_LEATHER;
	on_state[0]			=	Use_SwampHerb;
	scemeName			=	"FOOD";

	description			= 	name;
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	Value_SwampHerb;
};
	
	func void Use_SwampHerb ()
	{
		if (Npc_IsPlayer (self))
		{
			Wld_PlayEffect ("SLOW_TIME", self, self, 0, 0, 0, FALSE);
		};
	};

/******************************************************************************************/
INSTANCE ItPl_Mana_Herb_01(C_Item)
{	
	name 				=	"Fire Nettle";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Mana_Herb_01;

	visual 				=	"REV_ITPL_MANAPLANT_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=	Use_Mana_Herb_01;
	scemeName			=	"FOOD";

	description			= 	name;
	
	TEXT[1]				= 	NAME_Bonus_Mana;	
	COUNT[1]			= 	Mana_Mana_Herb_01;
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	Value_Mana_Herb_01;
};

	func void Use_Mana_Herb_01 ()
	{			
		Npc_ChangeAttribute	(self,	ATR_MANA,	Mana_Mana_Herb_01);
	};
/******************************************************************************************/
INSTANCE ItPl_Mana_Herb_02(C_Item)
{	
	name 				=	"Fireweed";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Mana_Herb_02;

	visual 				=	"REV_ITPL_MANAPLANT_02.3ds";
	material 			=	MAT_LEATHER;
	on_state[0]			=	Use_Mana_Herb_02;
	scemeName			=	"FOOD";

	description			= 	name;
	
	TEXT[1]				= 	NAME_Bonus_Mana;	
	COUNT[1]			= 	Mana_Mana_Herb_02;
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	Value_Mana_Herb_02;
};

	func void Use_Mana_Herb_02 ()
	{			
		Npc_ChangeAttribute	(self,	ATR_MANA,	Mana_Mana_Herb_02);
	};
/******************************************************************************************/
INSTANCE ItPl_Mana_Herb_03(C_Item)
{	
	name 				=	"Fire Root";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Mana_Herb_03;

	visual 				=	"REV_ITPL_MANAPLANT_03.3ds";
	material 			=	MAT_LEATHER;
	on_state[0]			=	Use_Mana_Herb_03;
	scemeName			=	"FOOD";

	description			= 	name;
	
	TEXT[1]				= 	NAME_Bonus_Mana;	
	COUNT[1]			= 	Mana_Mana_Herb_03;
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	Value_Mana_Herb_03;
};

	func void Use_Mana_Herb_03 ()
	{			
		Npc_ChangeAttribute	(self,	ATR_MANA,	Mana_Mana_Herb_03);
	};
/******************************************************************************************/
INSTANCE ItPl_Health_Herb_01(C_Item)
{	
	name 				=	"Healing Plant";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Health_Herb_01;

	visual 				=	"REV_ITPL_HEALTHPLANT_01.3DS";

	material 			=	MAT_LEATHER;
	on_state[0]			=	Use_Health_Herb_01;
	scemeName			=	"FOOD";

	description			= 	name;
	
	TEXT[1]				= 	NAME_Bonus_HP;		
	COUNT[1]			= 	HP_Health_Herb_01;
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	Value_Health_Herb_01;
};

	func void Use_Health_Herb_01 ()
	{			
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Health_Herb_01);
	};
/******************************************************************************************/
INSTANCE ItPl_Health_Herb_02(C_Item)
{	
	name 				=	"Healing Herb";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Health_Herb_02;

	visual 				=	"REV_ITPL_HEALTHPLANT_02.3DS";

	material 			=	MAT_LEATHER;
	on_state[0]			=	Use_Health_Herb_02;
	scemeName			=	"FOOD";

	description			= 	name;
	TEXT[1]				= 	NAME_Bonus_HP;		
	COUNT[1]			=	HP_Health_Herb_02;
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	Value_Health_Herb_02;
};

	func void Use_Health_Herb_02 ()
	{			
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Health_Herb_02);
	};

/******************************************************************************************/
INSTANCE ItPl_Health_Herb_03(C_Item)
{	
	name 				=	"Healing Root";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Health_Herb_03;

	visual 				=	"REV_ITPL_HEALTHPLANT_03.3DS";

	material 			=	MAT_LEATHER;
	on_state[0]			=	Use_Health_Herb_03;
	scemeName			=	"FOOD";

	description			= 	name;
	TEXT[1]				= 	NAME_Bonus_HP;		COUNT[1]	= HP_Health_Herb_03;
	TEXT[5]				= 	NAME_Value;		COUNT[5]	= Value_Health_Herb_03;
};

	func void Use_Health_Herb_03 ()
	{			
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Health_Herb_03);
	};

/******************************************************************************************/
INSTANCE ItPl_Dex_Herb_01(C_Item)
{	
	name 				=	"Goblin Berries";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Dex_Herb_01;

	visual 				=	"ItPl_Dex_Herb_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=	Use_Dex_Herb_01;
	scemeName			=	"FOOD";

	description			= 	name;
	
	TEXT[1]				= 	NAME_Bonus_Dex;
	COUNT[1]			= 	1;	
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	Value_Dex_Herb_01;
};
	FUNC VOID USE_Dex_Herb_01 ()
	{
		B_RaiseAttribute	(self, ATR_DEXTERITY ,1);
	};

/******************************************************************************************/
INSTANCE ItPl_Strength_Herb_01(C_Item)
{	
	name 				=	"Dragonroot";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Strength_Herb_01;

	visual 				=	"ItPl_Strength_Herb_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=	Use_Strength_Herb_01;
	scemeName			=	"FOOD";

	description			= 	name;

	TEXT[1]				= 	NAME_Bonus_Str;				
	COUNT[1]			= 	1;

	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	Value_Strength_Herb_01;
};


	FUNC VOID USE_Strength_Herb_01 ()
	{
		B_RaiseAttribute	(self, ATR_STRENGTH,1);
	};
	
/******************************************************************************************/
INSTANCE ItPl_Speed_Herb_01(C_Item)
{	
	name 				=	"Snapperweed";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Speed_Herb_01;

	visual 				=	"REV_ITPL_SPEEDPLANT.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=	Use_Speed_Herb_01;      
	scemeName			=	"FOOD";

	TEXT[3]				= 	NAME_Sec_Duration;		
    COUNT[3]			= 	Speed_Boost /1000;   
	
	description			= 	name;
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	Value_Speed_Herb_01;
 
	   
};  

	func void Use_Speed_Herb_01 ()                                               
	{			                                                                                                                                             
		Mdl_ApplyOverlayMDSTimed	(self, "HUMANS_SPRINT.MDS", Speed_Boost);   
	};	
  	
  	
  	  
/******************************************************************************************/
INSTANCE ItPl_Mushroom_01(C_Item)
{	
	name 				=	"Dark Mushroom";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Mushroom_01;

	visual 				=	"ItPl_Mushroom_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=	Use_Mushroom_01;
	scemeName			=	"FOOD";

	description			= 	name;
	
	TEXT[1]				= 	NAME_Bonus_Mana;		
	COUNT[1]			= 	MP_Mushroom_01;
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	Value_Mushroom_01;
};

	func void Use_Mushroom_01 ()
	{			
		Npc_ChangeAttribute	(self,	ATR_MANA,	MP_Mushroom_01);
		
		if (Npc_IsPlayer (self))
		{
			Dunkelpilz_Bonus = Dunkelpilz_Bonus + 1;
			
			if (Dunkelpilz_Bonus == 20)  
			{
				Print (PRINT_Eat_MPMushroom1);
			};
			if (Dunkelpilz_Bonus == 30)  
			{
				Print (PRINT_Eat_MPMushroom2);
			};
			if (Dunkelpilz_Bonus == 40)  
			{
				B_RaiseAttribute	(self, ATR_MANA_MAX, 5);
				Npc_ChangeAttribute	(self, ATR_MANA, 5);
				Print (PRINT_Eat_MPMushroom3);
				Snd_Play	("LevelUp");
				Dunkelpilz_Bonus = 0;
			};
		};
	};
/******************************************************************************************/
INSTANCE ItPl_Mushroom_02(C_Item)
{	
	name 				=	"Digger Meat";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Mushroom_02;

	visual 				=	"ItPl_Mushroom_02.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=	Use_Mushroom_02;
	scemeName			=	"FOOD";

	description			= 	name;
	TEXT[1]				= 	NAME_Bonus_HP;		
	COUNT[1]			= 	HP_Mushroom_02;
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			=	Value_Mushroom_02;
};

	func void Use_Mushroom_02 ()
	{			
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Mushroom_02);
		
		if (Npc_IsPlayer (self))
		{
			DiggerMushroom_Bonus = DiggerMushroom_Bonus + 1;
				
			if (DiggerMushroom_Bonus == 20)  
			{
				Print (PRINT_Eat_HPMushroom1);
			};
			if (DiggerMushroom_Bonus == 30)  
			{
				Print (PRINT_Eat_HPMushroom2);
			};
			if (DiggerMushroom_Bonus == 40)  
			{
				B_RaiseAttribute	(self, ATR_HITPOINTS_MAX, 5);
				Npc_ChangeAttribute	(self, ATR_HITPOINTS, 5);
				Print (PRINT_Eat_HPMushroom3);
				Snd_Play	("LevelUp");
				DiggerMushroom_Bonus = 0;
			};
		};
	};
/******************************************************************************************/
INSTANCE ItPl_Blueplant(C_Item)
{	
	name 				=	"Blue Elder";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Blueplant;

	visual 				=	"ItPl_Blueplant.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=	Use_Blueplant;
	scemeName			=	"FOOD";

	description			= 	name;
	TEXT[1]				= 	NAME_Bonus_HP;		
	COUNT[1]			= 	HP_Blueplant;
	TEXT[2]				= 	NAME_Bonus_Mana;		
	COUNT[2]			= 	Mana_Blueplant;
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	Value_Blueplant;
};

	func void Use_Blueplant ()
	{			
		Npc_ChangeAttribute	(self,	ATR_MANA,	    Mana_Blueplant);
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Blueplant);
	};
/******************************************************************************************/
INSTANCE ItPl_Forestberry (C_Item)
{	
	name 				=	"Woodland Berry";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;
	
	value 				=	Value_Forestberry;
	
	visual 				=	"ItPl_Forestberry.3DS";
	material 			=	MAT_LEATHER;
	scemeName			=	"FOOD";
	on_state[0]			=	Use_Forestberry;

	description			= 	name;
	
	TEXT[1]				= 	NAME_Bonus_HP;		
	COUNT[1]			= 	HP_Forestberry;
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	Value_Forestberry;

};

	FUNC VOID Use_Forestberry()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Forestberry);
	};
/******************************************************************************************/
INSTANCE ItPl_Planeberry (C_Item)
{	
	name 				=	"Meadow Berry";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;
	
	value 				=	Value_Planeberry;
	
	visual 				=	"ItPl_Planeberry.3DS";
	material 			=	MAT_LEATHER;
	scemeName			=	"FOOD";
	on_state[0]			=	Use_Planeberry;

	description			= 	name;
	
	TEXT[1]				= 	NAME_Bonus_HP;		
	COUNT[1]			= 	HP_Planeberry;
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	Value_Planeberry;

};

	FUNC VOID Use_Planeberry()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Planeberry);
	};
/******************************************************************************************/


//******************************************************************************************
//		Pflanze zum brauen von tempor�ren und permanten Tr�nken
//******************************************************************************************


INSTANCE ItPl_Temp_Herb(C_Item)
{	
	name 				=	"Meadow Knotweed";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI|ITEM_MISSION;	

	value 				=	Value_Temp_Herb;

	visual 				=	"REV_ITPL_TEMPPLANT.3ds";
	material 			=	MAT_LEATHER;
	scemeName			=	"FOOD";
	on_state[0]			=	Use_Temp_Herb;

	description			= 	name;
	
	TEXT[1]				= 	NAME_Bonus_HP;		
	COUNT[1]			= 	HP_Temp_Herb;
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	Value_Temp_Herb;
};
	FUNC VOID Use_Temp_Herb()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Temp_Herb);
	};


INSTANCE ItPl_Perm_Herb(C_Item)
{	
	name 				=	"King's Sorrel";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI|ITEM_MISSION;	

	value 				=	Value_Perm_Herb;

	visual 				=	"REV_ITPL_PERMPLANT.3ds";
	material 			=	MAT_LEATHER;
	scemeName			=	"FOOD";
	on_state[0]			=	Use_Perm_Herb;

	description			= 	name;
	
	TEXT[1]				= 	NAME_Bonus_HP;		
	COUNT[1]			= 	HP_Perm_Herb;
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	Value_Perm_Herb;
};
	FUNC VOID Use_Perm_Herb()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Perm_Herb);
	};

