
instance GRD_4102_Waffenknecht (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_WAFFENKNECHT; 
	guild 		= GIL_MIL;
	id 			= 4102;
	voice 		= 1;
	flags       = 0;							//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_OCAMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 1);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ItMw_1H_Mil_Sword);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_Normal_Spassvogel, BodyTex_N, ITAR_REVIVED_PAL_L);	
	Mdl_SetModelFatness    (self, 2);
	//by FC	);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abh�ngig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 30); //Grenzen f�r Talent-Level liegen bei 30 und 60

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4102;
};

FUNC VOID Rtn_Start_4102 ()
{	
	TA_Stand_Guarding			(08,00,12,00,"OCC_TOWERRUIN_TOP");
    TA_Stand_Guarding			(12,00,16,00,"OCC_PALISADE_WALLCRACK");
	TA_Stand_Guarding			(16,00,20,00,"OCC_TOWERRUIN_LADDER");
    TA_Sleep					(20,00,08,00,"OCC_MERCS_UPPER_RIGHT_ROOM_BED3");
};
