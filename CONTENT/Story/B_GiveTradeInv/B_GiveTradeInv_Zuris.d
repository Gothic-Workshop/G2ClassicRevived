var int Zuris_ItemsGiven_Chapter_1;
var int Zuris_ItemsGiven_Chapter_2;
var int Zuris_ItemsGiven_Chapter_3;
var int Zuris_ItemsGiven_Chapter_4;
var int Zuris_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Zuris (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Zuris_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100); 
		CreateInvItems (slf,ITPO_REVIVED_MANA_01 	,10); 
		CreateInvItems (slf,ITPO_REVIVED_HEALTH_01	,10);
		CreateInvItems (slf, ItPo_Health_Addon_04,	2);
		CreateInvItems (slf, ItPo_Mana_Addon_04,		2);
		CreateInvItems (slf,ItMi_ApfelTabak	,2); //f�r Abuyin
		CreateInvItems (slf,ItWr_Astronomy_Mis,1);	//F�r  Mission HygalsBringBook
		CreateInvItems (slf,ItFo_Addon_Pfeffer_01,1);//F�R Mission fortuno
		
		// ------ Scrolls ------
		CreateInvItems (slf,ItSc_Light			,6);
	
		// ------ AmRiBe ------
		CreateInvItems (slf,ItBe_Addon_Prot_MAGIC, 1); 
		CreateInvItems (slf,ItAm_Hp_Mana_01 ,1);	
			
		Zuris_ItemsGiven_Chapter_1 = TRUE;
	};
	
	if ((Kapitel >= 2)
	&& Zuris_ItemsGiven_Chapter_2 == FALSE)
	{
		CreateInvItems (slf, ItMi_Gold, 60); 
		CreateInvItems   (slf, ItPo_Health_Addon_04,	2);
		CreateInvItems   (slf, ItPo_Mana_Addon_04,		2);
		CreateInvItems (slf,ITPO_REVIVED_MANA_01 	,15); 
		CreateInvItems (slf,ITPO_REVIVED_MANA_02 	, 1);
		CreateInvItems (slf,ITPO_REVIVED_HEALTH_01	,15);
		CreateInvItems (slf,ITPO_REVIVED_HEALTH_02	, 2); 
		CreateInvItems (slf,ItMi_ApfelTabak	,5);	
		CreateInvItems (slf,ITPO_REVIVED_BOOST_STR_02, 1); 

		CreateInvItems (slf,ItSc_Firebolt 		,20);
		CreateInvItems (slf,ItSc_Icebolt 		,8);
		CreateInvItems (slf,ItSc_InstantFireball ,10);
		CreateInvItems (slf,ItSc_LightningFlash	,5);
		CreateInvItems (slf,ItSc_HarmUndead		,3);
		CreateInvItems (slf,ItSc_Firestorm 		,3);
		
		Zuris_ItemsGiven_Chapter_2 = TRUE;
	};	
	
	if ((Kapitel >= 3)
	&& (Zuris_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 120); 
		CreateInvItems   (slf, ItPo_Health_Addon_04,	2);
		CreateInvItems   (slf, ItPo_Mana_Addon_04,		2);
		CreateInvItems (slf,ITPO_REVIVED_MANA_01 	,25); 
		CreateInvItems (slf,ITPO_REVIVED_MANA_02 	, 3);
		CreateInvItems (slf,ITPO_REVIVED_HEALTH_01	,25);
		CreateInvItems (slf,ITPO_REVIVED_HEALTH_02	, 15); 
		CreateInvItems (slf,ITPO_REVIVED_BOOST_MANA_01	, 1); 
		CreateInvItems (slf, ITPO_REVIVED_SPEED_02, 1);

		CreateInvItems (slf,ItSc_IceWave		,1);
		CreateInvItems (slf,ItSc_Zap	 		,5);
		CreateInvItems (slf,ItSc_IceCube		,3);
		CreateInvItems (slf,ItSc_Windfist 		,3);
		CreateInvItems (slf,ItSc_IceWave		,1);
		CreateInvItems (slf,ItSc_Firerain		,1);
		CreateInvItems (slf,ItSc_ThunderStorm 	,1);

		CreateInvItems (slf,ItSc_SumGobSkel	,1);
		CreateInvItems (slf,ItSc_SumSkel	,1);
		CreateInvItems (slf,ItSc_SumWolf	,1);
		CreateInvItems (slf,ItSc_SumGol		,1);
		CreateInvItems (slf,ItSc_SumDemon	,1); 
	
		Zuris_ItemsGiven_Chapter_3 = TRUE;
	};

	if ((Kapitel >= 4)
	&& (Zuris_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 220); 
		CreateInvItems   (slf, ItPo_Health_Addon_04,	3);
		CreateInvItems   (slf, ItPo_Mana_Addon_04,		3);
		CreateInvItems (slf,ITPO_REVIVED_MANA_01 	,35); 
		CreateInvItems (slf,ITPO_REVIVED_MANA_02 	, 15);
		CreateInvItems (slf,ITPO_REVIVED_HEALTH_01	,35);
		CreateInvItems (slf,ITPO_REVIVED_HEALTH_02	, 20); 
		CreateInvItems (slf,ITPO_REVIVED_HEALTH_03	, 10); 
		CreateInvItems (slf,ITPO_REVIVED_BOOST_MANA_01	, 1); 
		CreateInvItems (slf,ITPO_REVIVED_BOOST_MANA_02	, 1); 
		CreateInvItems (slf, ITPO_REVIVED_SPEED_03, 1); 

		Zuris_ItemsGiven_Chapter_4 = TRUE;
	};

	if ((Kapitel >= 5)
	&& (Zuris_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 321); 
		CreateInvItems   (slf, ItPo_Health_Addon_04,	5);
		CreateInvItems   (slf, ItPo_Mana_Addon_04,		5);
		CreateInvItems (slf,ITPO_REVIVED_MANA_01 	,55); 
		CreateInvItems (slf,ITPO_REVIVED_MANA_02 	, 35);
		CreateInvItems (slf,ITPO_REVIVED_MANA_03 	, 15);
		CreateInvItems (slf,ITPO_REVIVED_HEALTH_01	,55);
		CreateInvItems (slf,ITPO_REVIVED_HEALTH_02	, 30); 
		CreateInvItems (slf,ITPO_REVIVED_HEALTH_03	, 20); 
		CreateInvItems (slf,ITPO_REVIVED_BOOST_MANA_02, 1); 
		CreateInvItems (slf,ITPO_REVIVED_BOOST_HEALTH_02, 1); 
		CreateInvItems (slf, ITPO_REVIVED_SPEED_03, 1); 
		
		Zuris_ItemsGiven_Chapter_5 = TRUE;
	};
};
