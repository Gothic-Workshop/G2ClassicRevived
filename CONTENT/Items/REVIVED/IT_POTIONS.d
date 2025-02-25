// ************************************************************************************************
// Wirkung und Kosten von Tr�nken
// ************************************************************************************************
const int Value_Elixier1		= 600;			const int Mana_Elixier1			= 100;
const int Value_ElixierEgg		= 800;			const int ManaMax_ElixierEgg	= 10;	// FIXME: was wenn der SC das selbst benutzt??

const int Value_PermHP_01		= 1000;			const int Boost_PermHP_01		= 4;
const int Value_PermHP_02		= 1200;			const int Boost_PermHP_02		= 7;
const int Value_PermHP_03		= 1500;			const int Boost_PermHP_03		= 10;

const int Value_PermMana_01		= 1000;			const int Boost_PermMana_01		= 4;
const int Value_PermMana_02		= 1200;			const int Boost_PermMana_02		= 7;
const int Value_PermMana_03		= 1500;			const int Boost_PermMana_03		= 10;

const int Value_PermSTR_01		= 600;			const int Boost_PermSTR_01		= 2;
const int Value_PermSTR_02		= 800;			const int Boost_PermSTR_02		= 3;
const int Value_PermSTR_03		= 1000;			const int Boost_PermSTR_03		= 5;

const int Value_PermDEX_01		= 600;			const int Boost_PermDEX_01		= 2;
const int Value_PermDEX_02		= 800;			const int Boost_PermDEX_02		= 3;
const int Value_PermDEX_03		= 1000;			const int Boost_PermDEX_03		= 5;

const int Value_PermMaster_01	= 1600;			const int Boost_PermMaster_01	= 4;
const int Value_PermMaster_02	= 1800;			const int Boost_PermMaster_02	= 8;
const int Value_PermMaster_03	= 2000;			const int Boost_PermMaster_03	= 10;

const int Value_Haste_01		= 200;			const int Time_Haste_01			= 60000;
const int Value_Haste_02		= 400;			const int Time_Haste_02			= 120000;
const int Value_Haste_03		= 800;			const int Time_Haste_03			= 300000;


//****************************************************************************
//			HEALING
//****************************************************************************

INSTANCE ITPO_REVIVED_HEALTH_01 (C_Item)
{
	name 			=	"Essence of Healing";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_HpEssenz;	

	visual 			=	"ItFo_Potion_Health_01.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseHealthPotion;
	scemeName		=	"POTIONFAST";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Essenz;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_HpEssenz;
};

	FUNC VOID UseHealthPotion()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Essenz);
	};

INSTANCE ITPO_REVIVED_HEALTH_02 (C_Item)
{
	name 			=	"Extract of Healing";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_HpExtrakt;	

	visual 			=	"ItFo_Potion_Health_02.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseHealth2Potion;
	scemeName		=	"POTIONFAST";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Extrakt;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_HpExtrakt;
};

	FUNC VOID UseHealth2Potion()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Extrakt);
	};

INSTANCE ITPO_REVIVED_HEALTH_03 (C_Item)
{
	name 			=	"Elixir of Healing";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_HpElixier;	

	visual 			=	"ItFo_Potion_Health_01.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseHealth3Potion;
	scemeName		=	"POTIONFAST";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Elixier;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_HpElixier;
};

	FUNC VOID UseHealth3Potion()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Elixier);
	};

//****************************************************************************
//			MANA
//****************************************************************************

INSTANCE ITPO_REVIVED_MANA_01 (C_Item)
{
	name 			=	"Essence of Magic Energy";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_ManaEssenz;	

	visual 			=	"ItFo_Potion_Mana_01.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseManaPotion;
	scemeName		=	"POTIONFAST";

	description			= name;
	TEXT[1]				= NAME_Bonus_Mana;				COUNT[1]	= Mana_Essenz;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_ManaEssenz;
};

	FUNC VOID UseManaPotion()
	{
		Npc_ChangeAttribute	(self,	ATR_MANA,	Mana_Essenz);
	};

INSTANCE ITPO_REVIVED_MANA_02 (C_Item)
{
	name 			=	"Extract of Magic Energy";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_ManaExtrakt;	

	visual 			=	"ItFo_Potion_Mana_02.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseMana2Potion;
	scemeName		=	"POTIONFAST";

	description			= name;
	TEXT[1]				= NAME_Bonus_Mana;				COUNT[1]	= Mana_Extrakt;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_ManaExtrakt;
};

	FUNC VOID UseMana2Potion()
	{
		Npc_ChangeAttribute	(self,	ATR_MANA,	Mana_Extrakt);
	};

INSTANCE ITPO_REVIVED_MANA_03 (C_Item)
{
	name 			=	"Elixir of Magic Energy";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_ManaElixier;	

	visual 			=	"ItFo_Potion_Mana_03.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseMana3Potion;
	scemeName		=	"POTIONFAST";

	description			= name;
	TEXT[1]				= NAME_Bonus_Mana;				COUNT[1]	= Mana_Elixier;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_ManaElixier;
};

	FUNC VOID UseMana3Potion()
	{
		Npc_ChangeAttribute	(self,	ATR_MANA,	Mana_Elixier);
	};

//****************************************************************************
//			BOOST
//****************************************************************************

INSTANCE ITPO_REVIVED_BOOST_HEALTH_01 (C_Item)
{
	name 			=	"Essence of Life";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_PermHP_01;	

	visual 			=	"ItFo_Potion_Health_Perma_01.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseLifePotion;
	scemeName		=	"POTIONFAST";

	description			= name;
	TEXT[1]				= NAME_Bonus_HpMax;				COUNT[1]	= Boost_PermHP_01;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_PermHP_01;
};

	FUNC VOID UseLifePotion()
	{
		B_RaiseAttribute	(self, ATR_HITPOINTS_MAX,	Boost_PermHP_01);
	};

INSTANCE ITPO_REVIVED_BOOST_HEALTH_02 (C_Item)
{
	name 			=	"Extract of Life";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_PermHP_02;	

	visual 			=	"ItFo_Potion_Health_Perma_02.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseLife2Potion;
	scemeName		=	"POTIONFAST";

	description		= name;
	TEXT[1]				= NAME_Bonus_HpMax;				COUNT[1]	= Boost_PermHP_02;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_PermHP_02;
};

	FUNC VOID UseLife2Potion()
	{
		B_RaiseAttribute	(self, ATR_HITPOINTS_MAX,	Boost_PermHP_02);
	};

INSTANCE ITPO_REVIVED_BOOST_HEALTH_03 (C_Item)
{
	name 			=	"Elixir of Life";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_PermHP_03;	

	visual 			=	"ItFo_Potion_Health_Perma_03.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseLife3Potion;
	scemeName		=	"POTIONFAST";

	description		= name;
	TEXT[1]				= NAME_Bonus_HpMax;				COUNT[1]	= Boost_PermHP_03;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_PermHP_03;
};

	FUNC VOID UseLife3Potion()
	{
		B_RaiseAttribute	(self, ATR_HITPOINTS_MAX,	Boost_PermHP_03);	
	};

/******************************************************************************************/

INSTANCE ITPO_REVIVED_BOOST_MANA_01 (C_Item)
{
	name 			=	"Essence of the Spirit";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_PermMana_01;	

	visual 			=	"ItFo_Potion_Mana_Perma_01.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseNectarPotion;
	scemeName		=	"POTIONFAST";

	description			= name;
	TEXT[1]				= NAME_Bonus_ManaMax;			COUNT[1]	= Boost_PermMana_01;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_PermMana_01;
};

	FUNC VOID UseNectarPotion()
	{
		B_RaiseAttribute	(self, ATR_MANA_MAX,	Boost_PermMana_01);
	};

INSTANCE ITPO_REVIVED_BOOST_MANA_02 (C_Item)
{
	name 			=	"Extract of the Spirit";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_PermMana_02;	

	visual 			=	"ItFo_Potion_Mana_Perma_02.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseNectar2Potion;
	scemeName		=	"POTIONFAST";

	description			= name;
	TEXT[1]				= NAME_Bonus_ManaMax;			COUNT[1]	= Boost_PermMana_02;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_PermMana_02;
};

	FUNC VOID UseNectar2Potion()
	{
		B_RaiseAttribute	(self, ATR_MANA_MAX,	Boost_PermMana_02);
	};

INSTANCE ITPO_REVIVED_BOOST_MANA_03 (C_Item)
{
	name 			=	"Elixir of the Spirit";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_PermMana_03;	

	visual 			=	"ItFo_Potion_Mana_Perma_03.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseNectar3Potion;
	scemeName		=	"POTIONFAST";

	description			= name;
	TEXT[1]				= NAME_Bonus_ManaMax;			COUNT[1]	= Boost_PermMana_03;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_PermMana_03;
};

	FUNC VOID UseNectar3Potion()
	{
		B_RaiseAttribute	(self, ATR_MANA_MAX,	Boost_PermMana_03);
	};

/******************************************************************************************/

INSTANCE ITPO_REVIVED_BOOST_STR_01 (C_Item)
{
	name 			=	"Essence of Strength";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_PermSTR_01;	

	visual 			=	"ItFo_Potion_Strength_01.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseStrengthPotion;
	scemeName		=	"POTIONFAST";

	description			= name;
	TEXT[1]				= NAME_Bonus_Str;				COUNT[1]	= Boost_PermSTR_01;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_PermSTR_01;
};

	FUNC VOID UseStrengthPotion()
	{ 
 		B_RaiseAttribute	(self, ATR_STRENGTH,	Boost_PermSTR_01);
	};

INSTANCE ITPO_REVIVED_BOOST_STR_02 (C_Item)
{
	name 			=	"Extract of Strength";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_PermSTR_02;	

	visual 			=	"ItFo_Potion_Strength_02.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseStrength2Potion;
	scemeName		=	"POTIONFAST";

	description			= name;
	TEXT[1]				= NAME_Bonus_Str;				COUNT[1]	= Boost_PermSTR_02;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_PermSTR_02;
};

	FUNC VOID UseStrength2Potion()
	{ 
		B_RaiseAttribute	(self, ATR_STRENGTH,	Boost_PermSTR_02);
	};

INSTANCE ITPO_REVIVED_BOOST_STR_03 (C_Item)
{
	name 			=	"Elixir of Strength";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_PermSTR_03;	

	visual 			=	"ItFo_Potion_Strength_03.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseStrength3Potion;
	scemeName		=	"POTIONFAST";

	description			= name;
	TEXT[1]				= NAME_Bonus_Str;				COUNT[1]	= Boost_PermSTR_03;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_PermSTR_03;
};

	FUNC VOID UseStrength3Potion()
	{ 
		B_RaiseAttribute	(self, ATR_STRENGTH,	Boost_PermSTR_03);
	};

/******************************************************************************************/

INSTANCE ITPO_REVIVED_BOOST_DEX_01 (C_Item)
{
	name 			=	"Essence of Dexterity";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_PermDEX_01;	

	visual 			=	"ItFo_Potion_Dex_01.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseDexPotion;
	scemeName		=	"POTIONFAST";

	description			= name;
	TEXT[1]				= NAME_Bonus_Dex;				COUNT[1]	= Boost_PermDEX_01;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_PermDEX_01;
};

	FUNC VOID UseDexPotion()
	{ 
		B_RaiseAttribute	(self, ATR_DEXTERITY,	Boost_PermDEX_01);
	};

INSTANCE ITPO_REVIVED_BOOST_DEX_02 (C_Item)
{
	name 			=	"Extract of Dexterity";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_PermDEX_02;	

	visual 			=	"ItFo_Potion_Dex_02.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseDex2Potion;
	scemeName		=	"POTIONFAST";

	description			= name;
	TEXT[1]				= NAME_Bonus_Dex;				COUNT[1]	= Boost_PermDEX_02;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_PermDEX_02;
};

	FUNC VOID UseDex2Potion()
	{ 
		B_RaiseAttribute	(self, ATR_DEXTERITY,	Boost_PermDEX_02);
	};

INSTANCE ITPO_REVIVED_BOOST_DEX_03 (C_Item)
{
	name 			=	"Elixir of Dexterity";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_PermDEX_03;	

	visual 			=	"ItFo_Potion_Dex_03.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseDex3Potion;
	scemeName		=	"POTIONFAST";

	description			= name;
	TEXT[1]				= NAME_Bonus_Dex;				COUNT[1]	= Boost_PermDEX_03;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_PermDEX_03;
};

	FUNC VOID UseDex3Potion()
	{ 
		B_RaiseAttribute	(self, ATR_DEXTERITY,	Boost_PermDEX_03);
	};

/******************************************************************************************/

INSTANCE ITPO_REVIVED_BOOST_MASTER_01 (C_Item)
{
	name 			=	"Potion of Power";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_PermMaster_01;	

	visual 			=	"ItFo_Potion_Master_01.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseMasterPotion;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_HEALTHPOTION"; 

	description			= name;
	TEXT[1]				= NAME_Bonus_Dex;				COUNT[1]	= Boost_PermMaster_01;
	TEXT[2]				= NAME_Bonus_Str;				COUNT[2]	= Boost_PermMaster_01;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_PermMaster_01;
};

	FUNC VOID UseMasterPotion()
	{
		Npc_ChangeAttribute	(self,	ATR_STRENGTH,	Boost_PermMaster_01);
		Npc_ChangeAttribute	(self,	ATR_DEXTERITY,	Boost_PermMaster_01);
		
		var string msg;
		msg = ConcatStrings(NAME_RaiseStrDex , IntToString(Boost_PermMaster_01));
		PrintScreen	(msg, -1,-1,"FONT_OLD_20_WHITE.TGA",_TIME_MESSAGE_RAISEATTRIBUTE);
	};

INSTANCE ITPO_REVIVED_BOOST_MASTER_02 (C_Item)
{
	name 			=	"Potion of Supremacy";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_PermMaster_02;	

	visual 			=	"ItFo_Potion_Master_02.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseMaster2Potion;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= name;
	TEXT[1]				= NAME_Bonus_Dex;				COUNT[1]	= Boost_PermMaster_02;
	TEXT[2]				= NAME_Bonus_Str;				COUNT[2]	= Boost_PermMaster_02;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_PermMaster_02;
};

	FUNC VOID UseMaster2Potion()
	{
		Npc_ChangeAttribute	(self,	ATR_STRENGTH,	Boost_PermMaster_02);
		Npc_ChangeAttribute	(self,	ATR_DEXTERITY,	Boost_PermMaster_02);

		var string msg;
		msg = ConcatStrings(NAME_RaiseStrDex , IntToString(Boost_PermMaster_02));
		PrintScreen	(msg, -1,-1,"FONT_OLD_20_WHITE.TGA",_TIME_MESSAGE_RAISEATTRIBUTE);
	};

INSTANCE ITPO_REVIVED_BOOST_MASTER_03 (C_Item)
{
	name 			=	"Potion of Godhood";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_PermMaster_03;	

	visual 			=	"ItFo_Potion_Master_02.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseMaster3Potion;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= name;
	TEXT[1]				= NAME_Bonus_Dex;				COUNT[1]	= Boost_PermMaster_03;
	TEXT[2]				= NAME_Bonus_Str;				COUNT[2]	= Boost_PermMaster_03;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_PermMaster_03;
};

	FUNC VOID UseMaster3Potion()
	{
		Npc_ChangeAttribute	(self,	ATR_STRENGTH,	Boost_PermMaster_03);
		Npc_ChangeAttribute	(self,	ATR_DEXTERITY,	Boost_PermMaster_03);

		var string msg;
		msg = ConcatStrings(NAME_RaiseStrDex , IntToString(Boost_PermMaster_03));
		PrintScreen	(msg, -1,-1,"FONT_OLD_20_WHITE.TGA",_TIME_MESSAGE_RAISEATTRIBUTE);
	};

//****************************************************************************
//			TEMPORARY
//****************************************************************************

INSTANCE ITPO_REVIVED_SPEED_01 (C_Item)
{
	name 			=	"Potion of Swiftness";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_Haste_01;	

	visual 			=	"ItFo_Potion_Haste_01.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseHastePotion;
	scemeName		=	"POTIONFAST";

	description		= name;
	TEXT[1]			= "Enables the player to short term sprints.";
	TEXT[3]			= NAME_Duration;				COUNT[3]	= Time_Haste_01/60000;
	TEXT[5]			= NAME_Value;					COUNT[5]	= Value_Haste_01;
};

	FUNC VOID UseHastePotion()
	{
		Mdl_ApplyOverlayMDSTimed	(self, "HUMANS_SPRINT.MDS", Time_Haste_01);
	};

INSTANCE ITPO_REVIVED_SPEED_02 (C_Item)
{
	name 			=	"Potion of Velocity";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_Haste_02;	

	visual 			=	"ItFo_Potion_Haste_01.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseHastePotion2;
	scemeName		=	"POTIONFAST";

	description		= name;
	TEXT[1]			= "Allows the player to sprint.";
	TEXT[3]			= NAME_Duration;				COUNT[3]	= Time_Haste_02/60000;
	TEXT[5]			= NAME_Value;					COUNT[5]	= Value_Haste_02;
};

	FUNC VOID UseHastePotion2()
	{
		Mdl_ApplyOverlayMDSTimed	(self, "HUMANS_SPRINT.MDS", Time_Haste_02);
	};

INSTANCE ITPO_REVIVED_SPEED_03 (C_Item)
{
	name 			=	"Potion of Haste";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_Haste_03;	

	visual 			=	"ItFo_Potion_Haste_01.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseHastePotion3;
	scemeName		=	"POTIONFAST";

	description		= name;
	TEXT[1]			= "Enables the player to sprint longer.";
	TEXT[3]			= NAME_Duration;				COUNT[3]	= Time_Haste_03/60000;
	TEXT[5]			= NAME_Value;					COUNT[5]	= Value_Haste_03;
};

	FUNC VOID UseHastePotion3()
	{
		Mdl_ApplyOverlayMDSTimed	(self, "HUMANS_SPRINT.MDS", Time_Haste_03);
	};

//****************************************************************************
//			SPECIAL
//****************************************************************************

INSTANCE ITPO_REVIVED_SPECIAL_MANA_01 (C_Item)
{
	name 			=	"Elixir";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_Elixier1;	

	visual 			=	"ItFo_Potion_Elixier.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseElixier;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description			= name;
	TEXT[1]				= NAME_Bonus_Mana;				COUNT[1]	= Mana_Elixier1;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_Elixier1;
};

	func void  UseElixier ()
	{
		Npc_ChangeAttribute	(self,	ATR_MANA,	Mana_Elixier1);	 
	};

INSTANCE ITPO_REVIVED_SPECIAL_MANA_02 (C_Item)
{
	name 			=	"Crawler Potion";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_ElixierEgg;	

	visual 			=	"ItFo_Potion_Elixier_Egg.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseEggElixier;
	scemeName		=	"POTIONFAST";

	description			= name;
	TEXT[0]				= "Allows contact to the Sleeper.";
	TEXT[1]				= NAME_Bonus_ManaMax;			COUNT[1]	= ManaMax_ElixierEgg;
	TEXT[5]				= NAME_Value;					COUNT[5]	= Value_ElixierEgg;
};

	func void  UseEggElixier ()
	{
 		B_RaiseAttribute	(self, ATR_MANA_MAX,	ManaMax_ElixierEgg);
	};