
instance GRD_4120_Bilgot (Npc_Default)
{
	// ------ NSC ------
	name 		= "Bilgot";
	guild 		= GIL_OUT;
	id 			= 4120;
	voice 		= 5;
	flags       = 0;							//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 2);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ItMw_1h_Mil_Sword);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems (self, ITPO_REVIVED_HEALTH_02, 4);									
	CreateInvItems (self, ItMi_OldCoin, 1);	//Joly: damit man seine Leiche findet, wenn er im Kampf stirbt!									

		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_P_Weak_Ulf_Wohlers, BodyTex_P, ITAR_REVIVED_PAL_L);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abh�ngig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 40); //Grenzen f�r Talent-Level liegen bei 30 und 60
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4120;
};

FUNC VOID Rtn_Start_4120 ()
{	
	TA_Stand_Guarding	 (08,00,23,00,"LOCATION_23_CAVE_STORAGE");
    TA_Sit_Campfire	 	 (23,00,08,00,"LOCATION_23_CAVE_1_OUT_CAMPFIRE_B");
};

FUNC VOID Rtn_FollowToOCBridge_4120 ()
{	
	TA_Follow_Player		(08,00,23,00,"OW_PATH_1_17");//gro�e Br�cke vorm OC
    TA_Follow_Player		(23,00,08,00,"OW_PATH_1_17");
};

FUNC VOID Rtn_FleeOutOfOW_4120 ()
{	
	TA_Sit_Campfire		(08,00,23,00,"OW_BILGOT_PASS");	//am oretrail!
    TA_Sit_Campfire		(23,00,08,00,"OW_BILGOT_PASS");
};

FUNC VOID Rtn_FleeOutOfOWPass_4120 ()
{	
	TA_Sit_Campfire		(08,00,23,00,"OW_BILGOT_PASS_2");	//am 2 oretrail!
    TA_Sit_Campfire		(23,00,08,00,"OW_BILGOT_PASS_2");
};

FUNC VOID Rtn_Tot_4120 ()
{	
	TA_Sit_Campfire		(08,00,23,00,"TOT");
    TA_Sit_Campfire		(23,00,08,00,"TOT");
};




