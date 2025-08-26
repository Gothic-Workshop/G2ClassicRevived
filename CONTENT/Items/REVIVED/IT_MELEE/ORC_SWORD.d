const int	REV_Damage_Orc_Sword_01				=	80;
const int	REV_Condition_Orc_Sword_01			=	100;
const int	REV_Range_Orc_Sword_01				=	140;
const int	REV_Value_Orc_Sword_01				=	130;
//******************************************************************//
const int	REV_Damage_Orc_Sword_02				=	100;
const int	REV_Condition_Orc_Sword_02			=	120;
const int	REV_Range_Orc_Sword_02				=	140;
const int	REV_Value_Orc_Sword_02				=	150;
//******************************************************************//
const int	REV_Damage_Orc_Sword_03				=	90;
const int	REV_Condition_Orc_Sword_03			=	100;
const int	REV_Range_Orc_Sword_03				=	140;
const int	REV_Value_Orc_Sword_03				=	50;
//******************************************************************//
//******************************************************************//
const int	REV_Damage_Orc_Sword_Key_01			=	0;
const int	REV_Condition_Orc_Sword_Key_01		=	0;
const int	REV_Range_Orc_Sword_Key_01			=	0;
const int	REV_Value_Orc_Sword_Key_01			=	0;
//******************************************************************//
const int	REV_Damage_Orc_Sword_Key_02			=	0;
const int	REV_Condition_Orc_Sword_Key_02		=	0;
const int	REV_Range_Orc_Sword_Key_02			=	0;
const int	REV_Value_Orc_Sword_Key_02			=	0;
//******************************************************************//
const int	REV_Damage_Orc_Sword_Key_03			=	0;
const int	REV_Condition_Orc_Sword_Key_03		=	0;
const int	REV_Range_Orc_Sword_Key_03			=	0;
const int	REV_Value_Orc_Sword_Key_03			=	0;
//******************************************************************//
const int	REV_Damage_Orc_Sword_Key_04			=	0;
const int	REV_Condition_Orc_Sword_Key_04		=	0;
const int	REV_Range_Orc_Sword_Key_04			=	0;
const int	REV_Value_Orc_Sword_Key_04			=	0;
//******************************************************************//
const int	REV_Damage_Orc_Sword_Key_05			=	0;
const int	REV_Condition_Orc_Sword_Key_05		=	0;
const int	REV_Range_Orc_Sword_Key_05			=	0;
const int	REV_Value_Orc_Sword_Key_05			=	0;



//****************************************************************************
//			ORC WEAPONS - SWORD
//****************************************************************************
INSTANCE ITMW_REVIVED_ORC_SWORD_01 (C_Item)
{	
	name 				=	"Krush Varrok";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Orc_Sword_01;

	damageTotal			= 	REV_Damage_Orc_Sword_01;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_Orc_Sword_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Orc_Sword_01;
	visual 				=	"ItMw_2H_OrcSword_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OrcWeapon;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_ORC_SWORD_02 (C_Item)
{	
	name 				=	"Krush Morok";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Orc_Sword_02;

	damageTotal			= 	REV_Damage_Orc_Sword_02;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_Orc_Sword_02;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Orc_Sword_02;
	visual 				=	"ItMw_2H_OrcSword_02.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OrcWeapon;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_ORC_SWORD_03 (C_Item)
{	
	name 				=	"Scale Blade";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Orc_Sword_03;

	damageTotal			= 	REV_Damage_Orc_Sword_03;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_Orc_Sword_03;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Orc_Sword_03;
	visual 				=	"ItMw_2H_OrcSword_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OrcWeapon;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};



//****************************************************************************
//			SPECIAL
//****************************************************************************
INSTANCE ITMW_REVIVED_ORC_SWORD_KEY_01 (C_Item)
{	
	name 				=	"Clefter of Worlds";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Orc_Sword_Key_01;

	damageTotal			= 	REV_Damage_Orc_Sword_Key_01;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_Orc_Sword_Key_01;		

	cond_atr[2]   		= 	ATR_HITPOINTS_MAX;
	cond_value[2]  		= 	REV_Condition_Orc_Sword_Key_01;
	visual 				=	"ItMi_SleeperKey_01.3DS";

	description			= 	name;
	TEXT[1]				= 	NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[2] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[3]				=	"This was the sword of the undead";
	TEXT[4]				=	"Orc priest Varrag-Hashor.";
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_ORC_SWORD_KEY_02 (C_Item)
{	
	name 				=	"Lightbringer";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Orc_Sword_Key_02;

	damageTotal			= 	REV_Damage_Orc_Sword_Key_02;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_Orc_Sword_Key_02;		

	cond_atr[2]   		= 	ATR_HITPOINTS_MAX;
	cond_value[2]  		= 	REV_Condition_Orc_Sword_Key_02;
	visual 				=	"ItMi_SleeperKey_01.3DS";

	description			= 	name;
	TEXT[1]				= 	NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[2] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[3]				=	"This was the sword of the undead";
	TEXT[4]				=	"Orc priest Varrag-Kasorg.";
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_ORC_SWORD_KEY_03 (C_Item)
{	
	name 				=	"Blade of Time";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Orc_Sword_Key_03;

	damageTotal			= 	REV_Damage_Orc_Sword_Key_03;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_Orc_Sword_Key_03;		

	cond_atr[2]   		= 	ATR_HITPOINTS_MAX;
	cond_value[2]  		= 	REV_Condition_Orc_Sword_Key_03;
	visual 				=	"ItMi_SleeperKey_01.3DS";

	description			= 	name;
	TEXT[1]				= 	NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[2] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[3]				=	"This was the sword of the undead";
	TEXT[4]				=	"Orc priest Varrag-Unhilqt.";
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_ORC_SWORD_KEY_04 (C_Item)
{	
	name 				=	"Demon Strike";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Orc_Sword_Key_04;

	damageTotal			= 	REV_Damage_Orc_Sword_Key_04;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_Orc_Sword_Key_04;		

	cond_atr[2]   		= 	ATR_HITPOINTS_MAX;
	cond_value[2]  		= 	REV_Condition_Orc_Sword_Key_04;
	visual 				=	"ItMi_SleeperKey_01.3DS";

	description			= 	name;
	TEXT[1]				= 	NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[2] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[3]				=	"This was the sword of the undead";
	TEXT[4]				=	"Orc priest Varrag-Ruuushk.";
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_ORC_SWORD_KEY_05 (C_Item)
{	
	name 				=	"Banishing Blade";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Orc_Sword_Key_05;

	damageTotal			= 	REV_Damage_Orc_Sword_Key_05;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_Orc_Sword_Key_05;		

	cond_atr[2]   		= 	ATR_HITPOINTS_MAX;
	cond_value[2]  		= 	REV_Condition_Orc_Sword_Key_05;
	visual 				=	"ItMi_SleeperKey_01.3DS";

	description			= 	name;
	TEXT[1]				= 	NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[2] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[3]				=	"This was the sword of the undead";
	TEXT[4]				=	"high Orc priest Grash-Varrag-Arushat.";
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
