//****************************************************************************
//			KEYS
//****************************************************************************

INSTANCE ITKE_REVIVED_STONEFORTRESS (C_Item)
{
	name 				=	"Old Key";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;	

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;
	description			= name;
	TEXT[0]				= "An old rusty key to a chest";
	TEXT[1]				= "from the old mountain fort";
};

INSTANCE ITKE_REVIVED_XARDAS(C_Item)
{
	name 				=	"Xardas' Key";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"A key to a chest";
	TEXT[3]				=   "belonging to Xardas.";
	TEXT[5]				=   "A bit worn down, it's old.";
};

INSTANCE ITKE_REVIVED_GOMEZ (C_Item)
{
	name 				=	"Gomez's Key";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;	

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;
	description			= name;
	TEXT[0]				= "An old rusty key to a chest";
	TEXT[1]				= "from the old mountain fort";
};

//****************************************************************************
//			SPECIAL
//****************************************************************************

INSTANCE ITKE_REVIVED_GORDONRAMSAY (C_Item)
{
	name 				=	"Kitchen Key";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;	

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;
	description			= name;
	TEXT[0]				= "Old key";
	TEXT[1]				= "with the initials G.R.";
};