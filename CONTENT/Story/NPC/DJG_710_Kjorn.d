

instance DJG_710_Kjorn (Npc_Default)
{
	// ------ NSC ------
	name 		= "Kjorn"; 
	guild 		= GIL_DJG;
	id 			= 710;
	voice 		= 6;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 5);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ItMw_1h_Sld_Sword);


	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_Normal02, BodyTex_N, ITAR_DJG_L);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abh�ngig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 65); //Grenzen f�r Talent-Level liegen bei 30 und 60

	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_710;
};

FUNC VOID Rtn_PreStart_710 ()
{
	TA_Smalltalk 						(08,00,23,00,"OW_PATH_DJG_004");
    TA_Smalltalk						(23,00,08,00,"OW_PATH_DJG_004");		
};

FUNC VOID Rtn_StartPass_710()
{
	TA_Smalltalk						(08,00,23,00,"OW_PATH_ORETRAIL_2_DJGCAMP_03");
    TA_Smalltalk						(23,00,08,00,"OW_PATH_ORETRAIL_2_DJGCAMP_03");
};

FUNC VOID Rtn_Start_710 ()
{
	TA_Sit_Bench  						(08,00,23,00,"OW_DJG_VORPOSTEN_01");
    TA_Sit_Bench						(23,00,08,00,"OW_DJG_VORPOSTEN_01");		
};