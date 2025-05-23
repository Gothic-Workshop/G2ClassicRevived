

instance DJG_711_Godar (Npc_Default)
{
	// ------ NSC ------
	name 		= "Godar"; 
	guild 		= GIL_DJG;
	id 			= 711;
	voice 		= 13;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 5);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ItMw_1h_Sld_Sword);


	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_Normal14, BodyTex_N, ITAR_DJG_L);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abh�ngig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 65); //Grenzen f�r Talent-Level liegen bei 30 und 60

	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_711;
};

FUNC VOID Rtn_PreStart_711 ()
{
	TA_Smalltalk 						(08,00,23,00,"OW_PATH_DJG_004");
    TA_Smalltalk						(23,00,08,00,"OW_PATH_DJG_004");		
};

FUNC VOID Rtn_StartPass_711()
{
	TA_Smalltalk						(08,00,23,00,"OW_PATH_ORETRAIL_2_DJGCAMP_03");
    TA_Smalltalk						(23,00,08,00,"OW_PATH_ORETRAIL_2_DJGCAMP_03");
};

FUNC VOID Rtn_Start_711 ()
{
	TA_Smalltalk 					(08,00,23,00,"PATH_AROUND_HILL04");
    TA_Smalltalk					(23,00,08,00,"PATH_AROUND_HILL04");		
};