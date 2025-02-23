
instance GRD_4143_HaupttorWache (Npc_Default)
{
	// ------ NSC ------
	name 		= "Main Gate Guard"; 
	guild 		= GIL_VLK;
	id 			= 4143;
	voice 		= 13;
	flags       = NPC_FLAG_IMMORTAL;							//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 1);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ItMw_1H_Vlk_Sword);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_Normal18, BodyTex_N, ITAR_REVIVED_PAL_L_02);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abhängig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 30); //Grenzen für Talent-Level liegen bei 30 und 60

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4143;
};

FUNC VOID Rtn_Start_4143 ()
{	
	TA_Stand_Guarding			(08,00,18,00,"OCC_TOWER_PLATFORM_GUARD_LEFT");
    TA_Stand_Guarding			(18,00,23,00,"OCC_TOWER_PLATFORM_GUARD_RIGHT");
    TA_Stand_Guarding			(23,00,08,00,"OCC_TOWER_PLATFORM_GUARD_FRONT");
};
