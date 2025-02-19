//****************************************************************************
//			ONE-HANDED EDGE
//****************************************************************************

INSTANCE ITMW_REVIVED_SWORD_SCAR (C_Item)
{
	name 				=	"Scar's Sword";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;
	material 			=	MAT_METAL;

	value 				=	460;

	damageTotal 		= 	85;
	damagetype 			= 	DAM_EDGE;
	range    			=  	130;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	70;

	//owner 				=   EBR_101_SCAR;
	visual 				=	"ItMw_1H_Sword_Bastard_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
	COUNT[5]			= value;
};

INSTANCE ITMW_REVIVED_SWORD_ARTO (C_Item)
{
	name 				=	"Arto's Sword";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;
	material 			=	MAT_METAL;

	value 				=	360;

	damageTotal 		= 	65;
	damagetype 			= 	DAM_EDGE;
	range    			=  	100;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	50;

	//owner 				= 	EBR_102_ARTO;
	visual 				=	"ItMw_1H_Sword_Long_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_SWORD_RAVEN (C_Item)
{
	name 				=	"Raven's Right";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;
	material 			=	MAT_METAL;

	value 				=	400;

	damageTotal			= 	70;
	damagetype 			= 	DAM_EDGE;
	range    			=  	130;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	55;

	//owner 				= 	EBR_105_RAVEN;
	visual 				=	"ItMw_1H_Sword_Broad_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_SWORD_BARTHOLO (C_Item)
{
	name 				=	"Paw's Punch";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;
	material 			=	MAT_METAL;

	value 				=	300;

	damageTotal			= 	55;
	damagetype 			= 	DAM_EDGE;
	range    			=  	100;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	40;

	//owner 				= 	EBR_106_BARTHOLO;
	visual 				=	"ItMw_1H_Sword_Long_05.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_SWORD_WHISTLER (C_Item)
{
	name 				=	"Whistler's Sword";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;
	material 			=	MAT_METAL;

	value 				=	110;

	damageTotal			= 	20;
	damagetype 			= 	DAM_EDGE;
	range    			=  	100;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	15;
	////owner 				= STT_309_Whistler;		raus wegen Mission
	visual 				=	"ItMw_1H_Sword_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_SWORD_KALOM (C_Item)
{
	name 				=	"Kalom's Sword";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;
	material 			=	MAT_METAL;

	value 				=	400;

	damageTotal			= 	70;
	damagetype 			= 	DAM_EDGE;
	range    			=  	100;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	55;

	//owner 				=   GUR_1201_CORKALOM;
	visual 				=	"ItMw_1H_Sword_05.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};



//****************************************************************************
//			ONE-HANDED BLUNT
//****************************************************************************

INSTANCE ITMW_REVIVED_MACE_LESTER (C_Item)
{
	name 				=	"Lester's Mediator ";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;
	material 			=	MAT_METAL;

	value 				=	340;

	damageTotal			=   60;
	damagetype			=	DAM_BLUNT;
	range    			=  	90;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	40;

	//owner 				= 	PC_PSIONIC;
	visual 				=	"ItMw_1H_Mace_War_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_MACE_NAMIB (C_Item)
{
	name 				=	"Namib's Club";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;
	material 			=	MAT_METAL;

	value 				=	300;

	damageTotal			=   55;
	damagetype			=	DAM_BLUNT;
	range    			=  	90;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	40;

	//owner 				= 	GUR_1204_BAALNAMIB;
	visual 				=	"ItMw_1H_Mace_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_MACE_ORUN (C_Item)
{
	name 				=	"Orun's Club";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;
	material 			=	MAT_METAL;

	value 				=	330;

	damageTotal  		=   60;
	damagetype			=	DAM_BLUNT;
	range    			=  	90;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	50;

	//owner 				= 	GUR_1209_BAALORUN;
	visual 				=	"ItMw_1H_Mace_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_MACE_FORTUNO (C_Item)
{
	name 				=	"Fortuno's Club";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;
	material 			=	MAT_METAL;

	value 				=	110;

	damageTotal			=   20;
	damagetype			=	DAM_BLUNT;
	range    			=  	90;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	15;

	//owner 				= 	NOV_1357_FORTUNO;
	visual 				=	"ItMw_1H_Mace_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

//****************************************************************************
//			ONE-HANDED AXE
//****************************************************************************

INSTANCE ITMW_REVIVED_AXE_CORD (C_Item)
{
	name 				=	"Cord's Clefter";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;
	material 			=	MAT_METAL;

	value 				=	310;

	damageTotal			=   60;
	damagetype			=	DAM_EDGE;
	range    			=  	100;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	50;

	//owner 				= 	SLD_709_CORD;
	visual 				=	"ItMw_1H_Axe_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_AXE_LARES (C_Item)
{
	name 				=	"Lares' Axe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;
	material 			=	MAT_METAL;

	value 				=	340;

	damageTotal			=   65;
	damagetype			=	DAM_EDGE;
	range    			=  	100;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	45;

	//owner 				= 	ORG_801_LARES;
	visual 				=	"ItMw_1H_Axe_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_AXE_SILAS (C_Item)
{
	name 				=	"Silas' Axe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;
	material 			=	MAT_METAL;

	value 				=	290;

	damageTotal			=   55;
	damagetype			=	DAM_EDGE;
	range    			=  	100;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	40;

	//owner 				=   ORG_841_SILAS;
	visual 				=	"ItMw_1H_Axe_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};



//****************************************************************************
//			TWO-HANDED EDGE
//****************************************************************************

INSTANCE ITMW_REVIVED_SWORD_THORUS (C_Item)
{
	name 				=	"Thorus' Sword";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;
	material 			=	MAT_METAL;

	value 				=	500;

	damageTotal			= 	90;
	damagetype			=	DAM_EDGE;
	range    			=  	150;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	75;

	//owner 				= 	GRD_200_THORUS;
	visual 				=	"ItMw_2H_Sword_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_SWORD_GOMEZ (C_Item)
{
	name 				=	"Innos' Rage";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;
	material 			=	MAT_METAL;

	value 				=	570;

	damageTotal			= 	110;
	damagetype			=	DAM_EDGE;
	range    			=  	160;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	90;

	//owner 				= 	EBR_100_GOMEZ;
	visual 				=	"ItMw_2H_Sword_Heavy_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_SWORD_ANGAR (C_Item)
{
	name 				=	"Red Wind";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;
	material 			=	MAT_METAL;

	value 				=	570;

	damageTotal			= 	105;
	damagetype			=	DAM_EDGE;
	range    			=  	140;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	80;

	//owner 				= 	GUR_1202_CORANGAR;
	visual 				=	"ItMw_2H_Sword_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

//****************************************************************************
//			TWO-HANDED BLUNT
//****************************************************************************



//****************************************************************************
//			TWO-HANDED AXE
//****************************************************************************

INSTANCE ITMW_REVIVED_AXE_LEE (C_Item)
{
	name 				=	"Lee's Axe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_METAL;

	value 				=	560;

	damageTotal			= 	105;
	damagetype			=	DAM_EDGE;
	range    			=  	130;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	95;

	//owner 				= 	SLD_700_LEE;
	visual 				=	"ItMw_2H_Axe_Heavy_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_AXE_ORIC (C_Item)
{
	name 				=	"Orik's Axe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_METAL;

	value 				=	540;

	damageTotal			= 	95;
	damagetype			=	DAM_EDGE;
	range    			=  	130;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	90;

	//owner 				=   SLD_701_ORIK;
	visual 				=	"ItMw_2H_Axe_Heavy_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_AXE_TORLOF (C_Item)
{
	name 				=	"Torlof's Axe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_METAL;

	value 				=	550;

	damageTotal			= 	99;
	damagetype			=	DAM_EDGE;
	range    			=  	130;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	85;

	//owner 				= 	SLD_737_TORLOF;
	visual 				=	"ItMw_2H_Axe_Heavy_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_AXE_GORN (C_Item)
{
	name 				=	"Gorn's Revenge";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_METAL;

	value 				=	560;

	damageTotal			= 	100;
	damagetype			=	DAM_EDGE;
	range    			=  	130;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	80;

	//owner 				=    PC_FIGHTER;
	visual 				=	"ItMw_2H_Axe_Heavy_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

//****************************************************************************
//			STAFFS
//****************************************************************************

INSTANCE ITMW_REVIVED_STAFF_YBERION (C_Item)
{
	name 				=	"Staff of Light";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_WOOD;

	value 				=	350;

	damageTotal			= 	65;
	damagetype 			=	DAM_BLUNT;
	range    			=  	160;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	45;

	//owner 				=   GUR_1200_YBERION;
	visual 				=	"ItMw_2H_Staff_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_STAFF_RICELORD (C_Item)
{
	name 				=	"Scepter";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_WOOD;

	value 				=	150;

	damageTotal			= 	26;
	damagetype 			=	DAM_EDGE;
	range    			=  	150;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	20;

	//owner 				=   BAU_900_RICELORD;
	visual 				=	"ItMw_2H_Staff_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};