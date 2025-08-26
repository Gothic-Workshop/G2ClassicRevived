
//****************************************************************************
//				PACKAGES
//****************************************************************************
INSTANCE ITMS_REVIVED_BALTRAMPACKAGE_PIRATES (C_Item)
{
	name 				=	"Package from Baltram";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_Packet.3ds";
	
	material 			=	 MAT_LEATHER;
	scemename			=	"MAPSEALED";	
	on_state[0]			=   Use_BaltramPackageRevived;
	
	description			= 	name;
	TEXT[2]				= 	"This heavy package";
	TEXT[3]				=	"of good things";
	TEXT[4]				=	"was found with the pirates.";
};

FUNC VOID Use_BaltramPackageRevived ()
{
		CreateInvItems (hero, ITFO_REVIVED_HAM_01_RAW, 4);
		CreateInvItems (hero, ITFO_REVIVED_APPLE_01, 4);
		CreateInvItems (hero, ITFO_REVIVED_PEAR, 6);
		CreateInvItems (hero, ITFO_REVIVED_RICE, 4);
		CreateInvItems (hero, ITFO_REVIVED_GRAPES_RED, 2);
		CreateInvItems (hero, ITFO_REVIVED_GRAPES_PURPLE, 2);
		Print (PRINT_GotFood);
};