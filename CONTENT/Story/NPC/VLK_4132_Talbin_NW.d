
///////////////////////////////////////////////////////////////////////
//	 VLK_4132_Talbin_NW				aus der alten Welt gerettet!
///////////////////////////////////////////////////////////////////////

instance VLK_4132_Talbin_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= "Talbin";
	guild 		= GIL_VLK;
	id 			= 4132;
	voice 		= 7;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 3);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ItMw_1h_Bau_Mace);
	EquipItem			(self, ItRW_SLD_Bow);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_Bullit, BodyTex_N, ITAR_Leather_L);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abh�ngig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 30); //Grenzen f�r Talent-Level liegen bei 30 und 60
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_4132;
};

FUNC VOID Rtn_PreStart_4132 ()
{	
	TA_Stand_Eating (08,00,23,00,"NW_TO_PASS_04");
    TA_Stand_Eating	(23,00,08,00,"NW_TO_PASS_04");
};

FUNC VOID Rtn_Farm_4132 ()
{	
	TA_Sit_Bench 		(08,00,23,00,"NW_TAVERNE_TROLLAREA_MONSTER_02_02"); 
    TA_Sit_Bench		(23,00,08,00,"NW_TAVERNE_TROLLAREA_MONSTER_02_02");
};
