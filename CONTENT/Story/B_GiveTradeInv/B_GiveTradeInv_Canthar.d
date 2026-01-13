
var int Canthar_ItemsGiven_Chapter_1;
var int Canthar_ItemsGiven_Chapter_2;
var int Canthar_ItemsGiven_Chapter_3;
var int Canthar_ItemsGiven_Chapter_4;
var int Canthar_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Canthar (var C_NPC slf)
{
	if ((Kapitel >= 0)
	&& (Canthar_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100); 
		CreateInvItems (slf, ItPl_Beet, 10);
		CreateInvItems (slf, ItFo_Wine, 5);
		CreateInvItems (slf, ItMi_Pan, 1);
		CreateInvItems (slf, ItMi_Flask, 5);
		CreateInvItems (slf, ItMi_Saw, 1);
		
		// ------ Waffen ------
		CreateInvItems (slf, ITMW_REVIVED_1H_SICKLE_01, 1); 
		CreateInvItems (slf, ITMW_REVIVED_1H_POKER_01, 1); 
		CreateInvItems (slf, ITMW_REVIVED_1H_SCYTHE_01, 1); 
		CreateInvItems (slf, ITMW_REVIVED_1H_HATCHET_01, 1); 
		CreateInvItems (slf, ITMW_REVIVED_1H_SLEDGEHAMMER_01, 1); 
		CreateInvItems (slf, ITMW_REVIVED_1H_CLUB_01, 1); 
		CreateInvItems (slf, ITMW_REVIVED_1H_CLUB_02, 1); 
		CreateInvItems (slf, ITMW_REVIVED_1H_NAILMACE_01, 1); 
		CreateInvItems (slf, ITMW_REVIVED_1H_WALKINGSTICK_01, 1); 
		CreateInvItems (slf, ITMW_REVIVED_1H_BRANCH_01, 1); 
		CreateInvItems (slf, ITMW_REVIVED_1H_KNIFE_01, 1); 
		CreateInvItems (slf, ITMW_REVIVED_1H_DAGGER_01, 1); 
		CreateInvItems (slf, ITMW_REVIVED_1H_DAGGER_02, 1); 
		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_07, 1); 
		
		CreateInvItems (slf, ITAM_REVIVED_PROT_MAGIC_01, 1); 

		// ------ Revived ------
		CreateInvItems (slf, ITBE_REVIVED_ARCHER, 1); 
		
		Canthar_ItemsGiven_Chapter_1 = TRUE;
	};
	if ((Kapitel >= 2)
	&& (Canthar_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100); 

		Canthar_ItemsGiven_Chapter_2 = TRUE;
	};

	if ((Kapitel >= 3)
	&& (Canthar_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100); 
		
		CreateInvItems (slf, ITMW_REVIVED_2H_STAFF_01, 1); 
		CreateInvItems (slf, ITMW_REVIVED_2H_MAGESTAFF_NORMAL_01, 1); 
		CreateInvItems (slf, ITMW_REVIVED_2H_MAGESTAFF_BALL_01, 1); 
		CreateInvItems (slf, ITMW_REVIVED_2H_MAGESTAFF_GOOD_01, 1); 
		CreateInvItems (slf, ITMW_REVIVED_2H_MAGESTAFF_BLADES_01, 1); 
			
		Canthar_ItemsGiven_Chapter_3 = TRUE;
	};

	if ((Kapitel >= 4)
	&& (Canthar_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 150); 

		Canthar_ItemsGiven_Chapter_4 = TRUE;
	};

	if ((Kapitel >= 5)
	&& (Canthar_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200); 

		Canthar_ItemsGiven_Chapter_5 = TRUE;
	};
};
