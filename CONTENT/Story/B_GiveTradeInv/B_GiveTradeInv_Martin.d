
var int Martin_ItemsGiven_Chapter_1;
var int Martin_ItemsGiven_Chapter_2;
var int Martin_ItemsGiven_Chapter_3;
var int Martin_ItemsGiven_Chapter_4;
var int Martin_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Martin (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Martin_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf,ItSc_PalHolyBolt ,  2); 
		CreateInvItems (slf,ItSc_PalMediumHeal , 1);
		CreateInvItems (slf,ItSc_PalLight, 10); 
		CreateInvItems (slf,ItMi_Moleratlubric_MIS , 1); 

		// ------ Waffen ------
		CreateInvItems (slf,ITMW_REVIVED_1H_SWORD_SHORT_01 , 1); 
		CreateInvItems (slf,ITMW_REVIVED_1H_SWORD_01 , 1); 
		CreateInvItems (slf,ITMW_REVIVED_1H_SWORD_HACKER_02, 1);
		CreateInvItems (slf,ITMW_REVIVED_2H_SWORD_LIGHT_01, 1);
		CreateInvItems (slf,ITMW_REVIVED_1H_MACE_03, 1);
		CreateInvItems (slf,ITMW_REVIVED_1H_SWORD_SHORT_04 , 1); 
		CreateInvItems (slf,ITMW_REVIVED_2H_AXE_LIGHT_03 , 1); 
		CreateInvItems (slf,ITMW_REVIVED_2H_SWORD_02 , 1); 
		
		CreateInvItems (slf,ITRI_REVIVED_MP_01, 1); 
		
		Martin_ItemsGiven_Chapter_1 = TRUE;
	};
	
	if ((Kapitel >= 2)
	&& (Martin_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf,ItSc_PalHolyBolt ,  2); 
		CreateInvItems (slf,ItSc_PalMediumHeal , 1);
		CreateInvItems (slf,ItSc_PalRepelEvil , 1);
		CreateInvItems (slf,ItSc_PalFullHeal , 1);
	
		Martin_ItemsGiven_Chapter_2 = TRUE;
	};

	if ((Kapitel >= 3)
	&& (Martin_ItemsGiven_Chapter_3 == FALSE))
	{
	
		CreateInvItems (slf,ItSc_PalHolyBolt ,  2); 
		CreateInvItems (slf,ItSc_PalMediumHeal , 1);
		CreateInvItems (slf,ItSc_PalRepelEvil , 1);
		CreateInvItems (slf,ItSc_PalFullHeal , 2);

		Martin_ItemsGiven_Chapter_3 = TRUE;
	};

	if ((Kapitel >= 4)
	&& (Martin_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf,ItSc_PalHolyBolt ,  2); 
		CreateInvItems (slf,ItSc_PalMediumHeal , 1);
		CreateInvItems (slf,ItMi_Nugget, 1); 
		CreateInvItems (slf,ItSc_PalDestroyEvil , 1);
		CreateInvItems (slf,ItSc_PalRepelEvil , 2);
		CreateInvItems (slf,ItSc_PalFullHeal , 3);

		Martin_ItemsGiven_Chapter_4 = TRUE;
	};

	if ((Kapitel >= 5)
	&& (Martin_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf,ItSc_PalHolyBolt ,  2); 
		CreateInvItems (slf,ItSc_PalMediumHeal , 1);
		CreateInvItems (slf,ItSc_PalDestroyEvil , 2);
		CreateInvItems (slf,ItSc_PalRepelEvil , 3);
		CreateInvItems (slf,ItSc_PalFullHeal , 2);
	
		Martin_ItemsGiven_Chapter_5 = TRUE;
	};
};
