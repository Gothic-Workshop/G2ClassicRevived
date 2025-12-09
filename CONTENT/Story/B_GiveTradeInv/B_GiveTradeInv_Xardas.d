var int Xardas_ItemsGiven_Chapter_2;
var int Xardas_ItemsGiven_Chapter_3;

FUNC VOID B_GiveTradeInv_Xardas (var C_NPC slf)
{
	if ((Kapitel >= 2)
	&& (Xardas_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200); 
		CreateInvItems (slf, ItMi_RuneBlank, 5);
		CreateInvItems (slf, ItMi_Flask,  10);
		
		// ------ Scrolls ------
		CreateInvItems (slf,ITSC_Charm			,1);
		CreateInvItems (slf,ITSC_Sleep			,1);
		CreateInvItems (slf,ItSc_Shrink 		,1);
		
		// ------ Runes ------
		
		
		// ------ Potions ------
		CreateInvItems (slf,ITPO_REVIVED_HEALTH_01			,10);
		CreateInvItems (slf,ITPO_REVIVED_MANA_01			,10);
		CreateInvItems (slf,ITPO_REVIVED_SPECIAL_HEALTH_01			,1);


		// ------ Amulets/Rings ------
		CreateInvItems (slf,ITRI_REVIVED_HP_MP_01			,1);
		

		Xardas_ItemsGiven_Chapter_2 = TRUE;
	};

	if ((Kapitel >= 3)
	&& (Xardas_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200); 
		CreateInvItems (slf, ItMi_RuneBlank, 5);
		CreateInvItems (slf, ItMi_Flask,  10);
		
		// ------ Scrolls ------
		CreateInvItems (slf,ItSc_Pyrokinesis			,1);
		CreateInvItems (slf,ItSc_HarmUndead 		,1);
		
		// ------ Runes ------
		
		
		// ------ Potions ------
		CreateInvItems (slf,ITPO_REVIVED_HEALTH_02			,10);
		CreateInvItems (slf,ITPO_REVIVED_MANA_02			,10);
		CreateInvItems (slf,ITPO_REVIVED_SPECIAL_MANA_01			,1);


		// ------ Amulets/Rings ------
		CreateInvItems (slf,ITAM_REVIVED_HP_MP_01			,1);
		

		// ------ Staff ------
		CreateInvItems (slf,ITMW_REVIVED_2H_MAGESTAFF_BALL_03			,1);


		Xardas_ItemsGiven_Chapter_3 = TRUE;
	};
};
