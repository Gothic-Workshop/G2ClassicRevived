
const int	REV_Damage_1H_Sickle_01				=	7;
const int	REV_Condition_1H_Sickle_01			=	5;
const int	REV_Range_1H_Sickle_01				=	50;
const int	REV_Value_1H_Sickle_01				=	100;
//******************************************************************//
const int	REV_Damage_1H_Poker_01				=	5;
const int	REV_Condition_1H_Poker_01			=	5;
const int	REV_Range_1H_Poker_01				=	70;
const int	REV_Value_1H_Poker_01				=	40;
//******************************************************************//
const int	REV_Damage_1H_Scythe_01				=	15;
const int	REV_Condition_1H_Scythe_01			=	8;
const int	REV_Range_1H_Scythe_01				=	100;
const int	REV_Value_1H_Scythe_01				=	25;
//******************************************************************//
const int	REV_Damage_1H_Hatchet_01			=	12;
const int	REV_Condition_1H_Hatchet_01			=	10;
const int	REV_Range_1H_Hatchet_01				=	50;
const int	REV_Value_1H_Hatchet_01				=	100;
//******************************************************************//
const int	REV_Damage_1H_Sledgehammer_01		=	20;
const int	REV_Condition_1H_Sledgehammer_01	=	10;
const int	REV_Range_1H_Sledgehammer_01		=	50;
const int	REV_Value_1H_Sledgehammer_01		=	300;
//******************************************************************//
const int	REV_Damage_1H_Club_01				=	5;
const int	REV_Condition_1H_Club_01			=	10;
const int	REV_Range_1H_Club_01				=	70;
const int	REV_Value_1H_Club_01				=	50;
//******************************************************************//
const int	REV_Damage_1H_Club_02				=	8;
const int	REV_Condition_1H_Club_02			=	10;
const int	REV_Range_1H_Club_02				=	70;
const int	REV_Value_1H_Club_02				=	50;
//******************************************************************//
const int	REV_Damage_1H_Nailmace_01			=	25;
const int	REV_Condition_1H_Nailmace_01		=	10;
const int	REV_Range_1H_Nailmace_01			=	70;
const int	REV_Value_1H_Nailmace_01			=	250;
//******************************************************************//
const int	REV_Damage_1H_WalkingStick_01		=	25;
const int	REV_Condition_1H_WalkingStick_01	=	10;
const int	REV_Range_1H_WalkingStick_01		=	70;
const int	REV_Value_1H_WalkingStick_01		=	250;
//******************************************************************//
const int	REV_Damage_1H_Branch_01				=	25;
const int	REV_Condition_1H_Branch_01			=	10;
const int	REV_Range_1H_Branch_01				=	70;
const int	REV_Value_1H_Branch_01				=	250;
//******************************************************************//
const int	REV_Damage_1H_Knife_01				=	25;
const int	REV_Condition_1H_Knife_01			=	10;
const int	REV_Range_1H_Knife_01				=	70;
const int	REV_Value_1H_Knife_01				=	250;
//******************************************************************//
const int	REV_Damage_1H_Dagger_01				=	25;
const int	REV_Condition_1H_Dagger_01			=	10;
const int	REV_Range_1H_Dagger_01				=	70;
const int	REV_Value_1H_Dagger_01				=	250;
//******************************************************************//
const int	REV_Damage_1H_Dagger_02				=	25;
const int	REV_Condition_1H_Dagger_02			=	10;
const int	REV_Range_1H_Dagger_02				=	70;
const int	REV_Value_1H_Dagger_02				=	250;
//******************************************************************//
const int	REV_Damage_1H_Sword_07				=	25;
const int	REV_Condition_1H_Sword_07			=	10;
const int	REV_Range_1H_Sword_07				=	70;
const int	REV_Value_1H_Sword_07				=	250;


//****************************************************************************
//			ONE-HANDED OTHER
//****************************************************************************
INSTANCE ITMW_REVIVED_1H_SICKLE_01 (C_Item)
{	
	name 				=	"Sickle";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_1H_Sickle_01;

	damageTotal			= 	REV_Damage_1H_Sickle_01;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Sickle_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Sickle_01;
	visual 				=	"ItMw_1H_Sickle_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_POKER_01 (C_Item)
{	
	name 				=	"Poker";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_1H_Poker_01;

	damageTotal			= 	REV_Damage_1H_Poker_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_1H_Poker_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Poker_01;
	visual 				=	"ItMw_1H_Poker_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_SCYTHE_01 (C_Item)
{	
	name 				=	"Scythe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Scythe_01;

	damageTotal			= 	REV_Damage_1H_Scythe_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_1H_Scythe_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Scythe_01;
	visual 				=	"ItMw_1H_Scythe_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_HATCHET_01 (C_Item)
{	
	name 				=	"Hand Axe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Hatchet_01;

	damageTotal			= 	REV_Damage_1H_Hatchet_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_1H_Hatchet_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Hatchet_01;
	visual 				=	"ItMw_1H_Hatchet_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_SLEDGEHAMMER_01 (C_Item)
{	
	name 				=	"Smith's Hammer";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Sledgehammer_01;

	damageTotal			= 	REV_Damage_1H_Sledgehammer_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_1H_Sledgehammer_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Sledgehammer_01;
	visual 				=	"ItMw_1H_Sledgehammer_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_CLUB_01 (C_Item)
{	
	name 				=	"Club";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Club_01;

	damageTotal			= 	REV_Damage_1H_Club_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_1H_Club_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Club_01;
	visual 				=	"ItMw_1H_Club_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_CLUB_02 (C_Item)
{	
	name 				=	"Cudgel";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Club_02;

	damageTotal			= 	REV_Damage_1H_Club_02;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_1H_Club_02;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Club_02;
	visual 				=	"ItMw_1H_Mace_Light_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_NAILMACE_01 (C_Item)
{	
	name 				=	"Nail Club";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Nailmace_01;

	damageTotal			= 	REV_Damage_1H_Nailmace_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_1H_Nailmace_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Nailmace_01;
	visual 				=	"ItMw_1H_Nailmace_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_WALKINGSTICK_01 (C_Item)
{	
	name 				=	"Walking Stick";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_WalkingStick_01;

	damageTotal			= 	REV_Damage_1H_WalkingStick_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_1H_WalkingStick_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_WalkingStick_01;
	visual 				=	"Itmw_008_1h_pole_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_BRANCH_01 (C_Item)
{	
	name 				=	"Heavy branch";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Branch_01;

	damageTotal			= 	REV_Damage_1H_Branch_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_1H_Branch_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Branch_01;
	visual 				=	"ItMw_010_1h_Club_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_KNIFE_01 (C_Item)
{	
	name 				=	"Wolf Knife";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_1H_Knife_01;

	damageTotal			= 	REV_Damage_1H_Knife_01;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Knife_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Knife_01;
	visual 				=	"ItMw_012_1h_Knife_02.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_DAGGER_01 (C_Item)
{	
	name 				=	"Dagger";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_1H_Dagger_01;

	damageTotal			= 	REV_Damage_1H_Dagger_01;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Dagger_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Dagger_01;
	visual 				=	"Itmw_005_1h_dagger_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_DAGGER_02 (C_Item)
{	
	name 				=	"Gold Dagger";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_1H_Dagger_02;

	damageTotal			= 	REV_Damage_1H_Dagger_02;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Dagger_02;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Dagger_02;
	visual 				=	"REV_1H_DAGGER_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_SWORD_07 (C_Item)
{	
	name 				=	"Sword";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_1H_Sword_07;

	damageTotal			= 	REV_Damage_1H_Sword_07;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Sword_07;		

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	REV_Condition_1H_Sword_07;
	visual 				=	"ItMw_018_1h_SwordCane_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};