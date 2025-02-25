//****************************************************************************
//			SWAMPWEED
//****************************************************************************

INSTANCE ITMI_REVIVED_JOINT_01 (C_Item)
{
	name 				=	"Green Novice";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Joint3;

	visual 				=	"ItMi_Joint_01.3ds";
	material 			=	MAT_WOOD;

	scemeName			=	"JOINT";
	on_state[0]			= Use_ITMI_REVIVED_JOINT_01;
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
func void Use_ITMI_REVIVED_JOINT_01()
{
	if (Npc_IsPlayer (self))
	{
		if (FirstJoint_01 == FALSE)
		{
			B_GivePlayerXP (5);
			FirstJoint_01 = TRUE;
		};
		Wld_PlayEffect ("SLOW_TIME", self, self, 0, 0, 0, FALSE);
	};
};

/******************************************************************************************/
INSTANCE ITMI_REVIVED_JOINT_02 (C_Item)
{
	name 				=	"Northern Dark";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Joint3;

	visual 				=	"ItMi_Joint_01.3ds";
	material 			=	MAT_WOOD;

	scemeName			=	"JOINT";
	on_state[0]			= Use_ITMI_REVIVED_JOINT_02;
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
func void Use_ITMI_REVIVED_JOINT_02()
{
	if (Npc_IsPlayer (self))
	{
		if (FirstJoint_02 == FALSE)
		{
			B_GivePlayerXP (15);
			FirstJoint_02 = TRUE;
		};
		Wld_PlayEffect ("SLOW_TIME", self, self, 0, 0, 0, FALSE);
	};
};

/******************************************************************************************/
INSTANCE ITMI_REVIVED_JOINT_03 (C_Item)
{
	name 				=	"Dreamcall";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Joint3;

	visual 				=	"ItMi_Joint_01.3ds";
	material 			=	MAT_WOOD;

	scemeName			=	"JOINT";
	on_state[0]			= Use_ITMI_REVIVED_JOINT_03;
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
func void Use_ITMI_REVIVED_JOINT_03()
{
	if (Npc_IsPlayer (self))
	{
		if (FirstJoint_03 == FALSE)
		{
			B_GivePlayerXP (15);
			Npc_ChangeAttribute(self, ATR_MANA_MAX, 2);
			PrintScreen	("Mana +2", -1,-1,"FONT_OLD_20_WHITE.TGA",3);
			FirstJoint_03 = TRUE;
		};
		Wld_PlayEffect ("SLOW_TIME", self, self, 0, 0, 0, FALSE);
	};
};

/******************************************************************************************/

INSTANCE ITMI_REVIVED_JOINT_04 (C_Item)
{
	name 				=	"Prepared Dreamcall";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Joint3*10;

	visual 				=	"ItMi_Joint_01.3ds";
	material 			=	MAT_WOOD;

	scemeName			=	"JOINT";
	on_state[0]			=	UseSpecialJoint;

	TEXT[0]		    	= "Swampweed with a stronger";
	TEXT[1]             = "effect than normal weed.";
	//TEXT[3]             = "For the Guru Baal-Tyon!";
	TEXT[5]				= NAME_Value;					COUNT[4]	= Value_Joint3*10;
};

func void UseSpecialJoint()
{
	AI_StartState	(self,ZS_MagicSleep,1,"");
};

//****************************************************************************
//			COMPONENTS
//****************************************************************************

const int	Value_Schwefel			=	20;
const int	Value_Quecksilber		=	25;
const int	Value_Salz				=	10;
const int	Value_Öl				=	15;
const int	Value_Moleratfett		=	5;
const int	Value_Alcohol			=	18;

INSTANCE ITMI_REVIVED_ALCHEMY_SULFUR (C_Item)
{
	name 				=	"Sulfur";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Schwefel;

	visual 				=	"ItMi_Alchemy_Sulphur_01.3DS";
	material 			=	MAT_GLAS;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
/******************************************************************************************/
INSTANCE ITMI_REVIVED_ALCHEMY_MERCURY (C_Item)
{
	name 				=	"Mercury";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Quecksilber;

	visual 				=	"ItMi_Alchemy_Quicksilver_01.3DS";
	material 			=	MAT_GLAS;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
/******************************************************************************************/
INSTANCE ITMI_REVIVED_ALCHEMY_SALT (C_Item)
{
	name 				=	"Salt";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Salz;

	visual 				=	"ItMi_Alchemy_Salt_01.3DS";
	material 			=	MAT_GLAS;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
/******************************************************************************************/
INSTANCE ITMI_REVIVED_ALCHEMY_SYRIANOIL (C_Item)
{
	name 				=	"Syrianic Oil";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Öl;

	visual 				=	"ItMi_Alchemy_Syrianoil_01.3DS";
	material 			=	MAT_GLAS;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
/******************************************************************************************/
INSTANCE ITMI_REVIVED_ALCHEMY_MOLERATGREASE (C_Item)
{
	name 				=	"Molerat Grease";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Moleratfett;

	visual 				=	"ItMi_Alchemy_Moleratlubric_01.3DS";
	material 			=	MAT_GLAS;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
/******************************************************************************************/
INSTANCE ITMI_REVIVED_ALCHEMY_ALCOHOL (C_Item)
{
	name 				=	"Pure Alcohol";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Alcohol;

	visual 				=	"ItMi_Alchemy_Alcohol_01.3DS";
	material 			=	MAT_GLAS;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
/******************************************************************************************/
INSTANCE ITMI_REVIVED_MAGIC_WATER (C_Item)
{
	name 					=	"Magic Water";

	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MISSION;

	value 					=	10;

	visual 					=	"ITMI_FLASKHEALTH.3ds";
	material 				=	MAT_GLAS;
	scemeName				=	"POTION";

	description				= name;
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
};

//****************************************************************************
//			MISCELLANEOUS
//****************************************************************************

INSTANCE ITMI_REVIVED_FIGURINE (C_Item)
{
	name 				=	"Figurine";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_Stuff_Idol_Sleeper_01.3DS";
	material 			=	MAT_CLAY;

	description			=	name;
	TEXT[0]				= "This figure is a misshapen";
	TEXT[1]				= "being with a mask.";
	TEXT[2]				= "The mask is surrounded by six big stings.";
};

INSTANCE ITMI_REVIVED_WARHORN (C_Item)
{
	name 				=	"Horn";

	mainflag 			=	ITEM_KAT_NONE;
	flags				=	ITEM_MISSION;

	value 				=	9;

	visual 				=	"ItMi_Alarmhorn_01.3DS";
	material 			=	MAT_WOOD;

	scemeName			=	"HORN";

	description			= name;
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
};

INSTANCE ITMI_REVIVED_OLDCOIN (C_Item)
{
	name 				=	"Old Coin";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_Stuff_OldCoin_01.3DS";
	material 			=	MAT_METAL;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};


//****************************************************************************
//			MISSION
//****************************************************************************

INSTANCE ITMI_REVIVED_MAGICORE(C_Item)
{
	name 				=	"Lump of Ore";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Nugget;

	visual 				=	"ItMi_Nugget_NoMagic.3ds";
	material 			=	MAT_STONE;

	//wear				= 	WEAR_EFFECT;
	//effect				=	"SPELLFX_MANAPOTION";

	description			= 	name;

	TEXT[0]				=	"The ore is faded and does not shine.";
	
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			=	value;
	
	INV_ZBIAS				= INVCAM_ENTF_MISC2_STANDARD;
	
};