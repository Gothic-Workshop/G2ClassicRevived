const int	Value_Bugmeat		=	 2;		const int	HP_Bugmeat			=	4;
const int	Value_Apfel			=	 4;		const int	HP_Apfel			=	8;
const int	Value_Weintrauben	=	 6;		const int	HP_Weintrauben		=	8;

const int	Value_Wasser		=	 3;		const int	HP_Wasser			=	5;
const int	Value_Bier			=	10;		const int	HP_Bier				=	3;
const int	Value_Wein			=	13;		const int	HP_Wein				=	3;
const int	Value_Reisschnaps	=	15;		const int	HP_Reisschnaps		=	3;

const int	Value_Reis			=	 5;		const int	HP_Reis				=	10;
const int	Value_Wurzelsuppe	=	 3;		const int	HP_Wurzelsuppe		=	 7;
const int	Value_Ragout		=	 4;		const int	HP_Ragout			=	 9;
const int	Value_CrawlerSuppe	=	10;		const int	HP_CrawlerSuppe		=	15;

const int	Value_Brot			=	 8;		const int	HP_Brot				=	12;
const int	Value_Kase			=	10;		const int	HP_Kase				=	15;
const int	Value_Schinken		=	12;		const int	HP_Schinken			=	18;

//****************************************************************************
//			FOOD
//****************************************************************************

INSTANCE ITFO_REVIVED_MEATBUG (C_Item)
{	
	name 				=	"Bugmeat";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;
	
	value 				=	Value_Bugmeat;
	
	visual 				=	"ITFO_MEATBUG.3DS";
	material 			=	MAT_LEATHER;
	scemeName			=	"FOOD";
	on_state[0]			=	UseBugmeat;

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Bugmeat;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Bugmeat;
};

	FUNC VOID UseBugmeat()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Bugmeat);
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_APPLE (C_Item)
{	
	name 				=	"Sour Apple";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Apfel;

	visual 				=	"ItFo_Apple_01.3ds"; 
	material 			=	MAT_LEATHER;
	scemeName			=	"FOOD";
	on_state[0]			=	UseApple;

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Apfel;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Apfel;
};

	FUNC VOID UseApple()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Apfel);
		
		if (Npc_IsPlayer (self))
		{
			OldApple_Bonus = OldApple_Bonus + 1;
			
			if (OldApple_Bonus == 7)  
			{
				Print	(PRINT_Eat1);
			};
			if (OldApple_Bonus == 15)  
			{
				Print (PRINT_Eat2);
			};
			if (OldApple_Bonus == 25)  
			{
				Print (PRINT_Eat3);
				B_RaiseAttribute (self,	ATR_DEXTERITY, 1);
				Snd_Play	("LevelUp");
				OldApple_Bonus = 0;
			};
		};
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_GRAPES (C_Item)
{	
	name 				=	"Grapes";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Weintrauben;

	visual 				=	"ItFo_wineberrys_01.3ds";
	on_state[0]         = 	Usewineberrys;  
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Weintrauben;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Weintrauben;
};

	func void Usewineberrys () 
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Weintrauben);
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_BREAD (C_Item)
{	
	name 				=	"Old bread";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Brot;

	visual 				=	"ItFo_Loaf_01.3ds";
	scemeName			=	"FOODHUGE";
	on_state[0]			=	UseLoaf;

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Brot;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Brot;

};

	FUNC VOID UseLoaf()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Brot);
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_HAM (C_Item)
{	
	name 				=	"Ham";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Schinken;

	visual 				=	"ItFo_mutton_01.3ds";
	scemeName			=	"FOODHUGE";
	on_state[0]			=	UseMutton1;

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Schinken;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Schinken;

};

	FUNC VOID UseMutton1()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Schinken);
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_CHEESE (C_Item)
{	
	name 				=	"Stinky cheese";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Kase;

	visual 				=	"ItFo_Cheese_01.3ds";
	scemeName			=	"FOODHUGE";
	on_state[0]			=	UseCheese;

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Kase;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Kase;
};

	FUNC VOID UseCheese()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Kase);
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_RICE (C_Item)
{	
	name 				=	"Rice";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Reis;

	visual 				=	"ItFo_Rice_01.3ds";
	scemeName			=	"RICE";
	on_state[0]			=	UseRice;

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Reis;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Reis;
};

	FUNC VOID UseRice()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Reis);
	};


//****************************************************************************
//			SOUP
//****************************************************************************

INSTANCE ITFO_REVIVED_PLANTSOUP (C_Item)
{	
	name 				=	"Root Soup";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Wurzelsuppe;

	visual 				=	"ItFo_Soup_01.3ds";
	scemeName			=	"RICE";
	on_state[0]			=	UseSoup;

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Wurzelsuppe;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Wurzelsuppe;
};

	FUNC VOID UseSoup()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Wurzelsuppe);
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_BUGSOUP (C_Item)
{	
	name 				=	"Meatbug Ragout";
	
	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Ragout;

	visual 				=	"ItFo_Meatbugragout_01.3ds"; 
	material 			=	MAT_LEATHER;
	scemeName			=	"RICE";
	on_state[0]			=	UseMeatbugragout;

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Ragout;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Ragout;
};

	FUNC VOID UseMeatbugragout()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Ragout);
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_CRAWLERSOUP (C_Item)                                          
{	                                                                
	name 				=	"Minecrawler Soup";
	                                                            
	mainflag 			=	ITEM_KAT_FOOD;  
	flags 				=	ITEM_MULTI;
                                                                    
	value 				=	Value_CrawlerSuppe;              
                                                                    
	visual 				=	"ItFo_Crawlersoup_01.3ds";    
	material 			=	MAT_LEATHER;
	on_state[0]			=	UseCrawlersoup;   
	scemeName			=	"RICE";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_CrawlerSuppe;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_CrawlerSuppe;                                                    
};

	FUNC VOID UseCrawlersoup()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_CrawlerSuppe);
	};

//****************************************************************************
//			DRINKS
//****************************************************************************

INSTANCE ITFO_REVIVED_WATER (C_Item)
{
	name 			=	"Stale water";

	mainflag 		=	ITEM_KAT_FOOD;
	flags 			=	ITEM_MULTI;

	value 			=	Value_Wasser;	

	visual 			=	"ItFo_Potion_Water_01.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseWaterPotion;
	scemeName		=	"POTION";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Wasser;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Wasser;
};

	func VOID UseWaterPotion()
	{	
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Wasser);
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_BEER (C_Item)
{
	name 				=	"Old beer";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;
	
	value 				=	Value_Bier;	

	visual 				=	"ItFo_Beer_01.3ds";
	material 			=	MAT_GLAS;
	on_state[0]			=	UseBeer;
	scemeName			=	"POTION";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Bier;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Bier;
};

	FUNC VOID UseBeer()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Bier);
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_WINE (C_Item)
{	
	name 				=	"Old wine";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Wein;

	visual	 			=	"ItFo_Wine_01.3ds";
	material 			=	MAT_LEATHER;
	on_state[0]			=	UseWine;
	scemeName			=	"POTION";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Wein;
	TEXT[4]				= PRINT_Bloodfly;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Wein;
};

	FUNC VOID UseWine()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Wein);

			if (OldWine_Bonus < 1)  
			{
				self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];		 
				self.attribute[ATR_MANA] = self.attribute[ATR_MANA_MAX];
				Print (PRINT_FullyHealed);
				
				B_RaiseAttribute (self,	ATR_MANA_MAX, HP_Wein);
				B_Say_Overlay (hero, hero , "$COUGH");
				
				OldWine_Bonus = 1;
			};

			if (OldWine_Bonus >= 1)  
			{
					var int random; random = Hlp_Random(3);
					if (random < 1) 
					{
						B_Say_Overlay (self, self, "$AARGH_1");	
					}
					else if (random == 1) 
					{
						B_Say_Overlay (self, self, "$AARGH_2");	
					}
					else 
					{
						B_Say_Overlay (self, self, "$AARGH_3");	
					};

				Print (PRINT_Bloodfly);
				
				Npc_ChangeAttribute	(self, ATR_HITPOINTS_MAX, -HP_Wein);
				
				OldWine_Bonus = OldWine_Bonus + 1;
			};
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_BOOZE (C_Item)
{	
	name 				=	"Rice Schnapps";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Reisschnaps;

	visual 				=	"ItFo_Booze_01.3ds";
	material 			=	MAT_GLAS;
	on_state[0]			=	UseBooze;
	scemeName			=	"POTION";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Reisschnaps;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Reisschnaps;
};

	FUNC VOID UseBooze()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Reisschnaps);
	};
