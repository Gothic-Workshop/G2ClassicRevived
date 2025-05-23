//#############################################
//##
//##	Neue Welt
//##
//############################################

instance SLD_811_Wolf (Npc_Default)
{
	// ------ NSC ------
	name 		= "Wolf";
	guild 		= GIL_SLD;
	id 			= 811;
	voice 		= 8;
	flags       = 0;							//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 4);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ItMw_1h_Sld_Axe);
	EquipItem			(self, ItRw_Sld_Bow);


	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_Wolf, BodyTex_N, ITAR_REVIVED_ORG_H);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abh�ngig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 50); //Grenzen f�r Talent-Level liegen bei 30 und 60
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_811;
};

FUNC VOID Rtn_Start_811 ()
{
	TA_Sit_Bench				(08,00,22,00,"NW_BIGFARM_MERCHUT_BENCH");
    TA_Stand_Eating 			(22,00,08,00,"NW_BIGFARM_KITCHEN_03");	
};

FUNC VOID Rtn_BengarsFarm_811 ()
{
	TA_Stand_Guarding			(08,00,22,00,"NW_FARM3_PATH_01");
    TA_Stand_Guarding 			(22,00,08,00,"NW_FARM3_PATH_01");	
};

FUNC VOID Rtn_BengarDead_811 ()
{	
	TA_Stand_Guarding		(08,00,22,00,"NW_FARM3_BENGAR");
    TA_Stand_Guarding		(22,00,08,00,"NW_FARM3_BENGAR"); 
};

FUNC VOID Rtn_WaitForShip_811 ()
{	
	TA_Sit_Bench		(08,00,19,00,"NW_WAITFOR_SHIP_01");
	TA_Sit_Bench		(19,00,08,00,"NW_WAITFOR_SHIP_01");	
};

FUNC VOID Rtn_Ship_811 () //Joly:analog schiffswache 227
{
	TA_Stand_Guarding	(06,00,07,00,"SHIP_DECK_29");

	TA_Stand_Guarding	(07,00,07,10,"SHIP_DECK_25");
	TA_Stand_Guarding	(07,10,07,20,"SHIP_DECK_29");
	TA_Stand_Guarding	(07,20,07,30,"SHIP_DECK_25");
	TA_Stand_Guarding	(07,30,07,40,"SHIP_DECK_29");
	TA_Stand_Guarding	(07,40,07,50,"SHIP_DECK_20");
	TA_Stand_Guarding	(07,50,08,00,"SHIP_DECK_29");
	
	TA_Stand_Guarding	(08,00,08,10,"SHIP_DECK_25");
	TA_Stand_Guarding	(08,10,08,20,"SHIP_DECK_29");
	TA_Stand_Guarding	(08,20,08,30,"SHIP_DECK_25");
	TA_Stand_Guarding	(08,30,08,40,"SHIP_DECK_29");
	TA_Stand_Guarding	(08,40,08,50,"SHIP_DECK_20");
	TA_Stand_Guarding	(08,50,09,00,"SHIP_DECK_29");

	TA_Stand_Guarding	(09,00,09,10,"SHIP_DECK_25");
	TA_Stand_Guarding	(09,10,09,20,"SHIP_DECK_29");
	TA_Stand_Guarding	(09,20,09,30,"SHIP_DECK_25");
	TA_Stand_Guarding	(09,30,09,40,"SHIP_DECK_29");
	TA_Stand_Guarding	(09,40,09,50,"SHIP_DECK_20");
	TA_Stand_Guarding	(09,50,10,00,"SHIP_DECK_29");

	TA_Stand_Guarding	(10,00,10,10,"SHIP_DECK_25");
	TA_Stand_Guarding	(10,10,10,20,"SHIP_DECK_29");
	TA_Stand_Guarding	(10,20,10,30,"SHIP_DECK_25");
	TA_Stand_Guarding	(10,30,10,40,"SHIP_DECK_29");
	TA_Stand_Guarding	(10,40,10,50,"SHIP_DECK_20");
	TA_Stand_Guarding	(10,50,11,00,"SHIP_DECK_29");    
          
	TA_Stand_Guarding	(11,00,11,10,"SHIP_DECK_25");
	TA_Stand_Guarding	(11,10,11,20,"SHIP_DECK_29");
	TA_Stand_Guarding	(11,20,11,30,"SHIP_DECK_25");
	TA_Stand_Guarding	(11,30,11,40,"SHIP_DECK_29");
	TA_Stand_Guarding	(11,40,11,50,"SHIP_DECK_20");
	TA_Stand_Guarding	(11,50,12,00,"SHIP_DECK_29");

	TA_Stand_Guarding	(12,00,12,10,"SHIP_DECK_25");
	TA_Stand_Guarding	(12,10,12,20,"SHIP_DECK_29");
	TA_Stand_Guarding	(12,20,12,30,"SHIP_DECK_25");
	TA_Stand_Guarding	(12,30,12,40,"SHIP_DECK_29");
	TA_Stand_Guarding	(12,40,12,50,"SHIP_DECK_20");
	TA_Stand_Guarding	(12,50,13,00,"SHIP_DECK_29");
          
	TA_Stand_Guarding	(13,00,13,10,"SHIP_DECK_25");
	TA_Stand_Guarding	(13,10,13,20,"SHIP_DECK_29");
	TA_Stand_Guarding	(13,20,13,30,"SHIP_DECK_25");
	TA_Stand_Guarding	(13,30,13,40,"SHIP_DECK_29");
	TA_Stand_Guarding	(13,40,13,50,"SHIP_DECK_20");
	TA_Stand_Guarding	(13,50,14,00,"SHIP_DECK_29");

	TA_Stand_Guarding	(14,00,14,10,"SHIP_DECK_25");
	TA_Stand_Guarding	(14,10,14,20,"SHIP_DECK_29");
	TA_Stand_Guarding	(14,20,14,30,"SHIP_DECK_25");
	TA_Stand_Guarding	(14,30,14,40,"SHIP_DECK_29");
	TA_Stand_Guarding	(14,40,14,50,"SHIP_DECK_20");
	TA_Stand_Guarding	(14,50,15,00,"SHIP_DECK_29");

	TA_Stand_Guarding	(15,00,15,10,"SHIP_DECK_25");
	TA_Stand_Guarding	(15,10,15,20,"SHIP_DECK_29");
	TA_Stand_Guarding	(15,20,15,30,"SHIP_DECK_25");
	TA_Stand_Guarding	(15,30,15,40,"SHIP_DECK_29");
	TA_Stand_Guarding	(15,40,15,50,"SHIP_DECK_20");
 	TA_Stand_Guarding	(15,50,16,00,"SHIP_DECK_29");

	TA_Stand_Guarding	(16,00,16,10,"SHIP_DECK_25");
	TA_Stand_Guarding	(16,10,16,20,"SHIP_DECK_29");
	TA_Stand_Guarding	(16,20,16,30,"SHIP_DECK_25");
	TA_Stand_Guarding	(16,30,16,40,"SHIP_DECK_29");
	TA_Stand_Guarding	(16,40,16,50,"SHIP_DECK_29");
	TA_Stand_Guarding	(16,50,17,00,"SHIP_DECK_29");

	TA_Stand_Guarding	(17,00,17,10,"SHIP_DECK_25");
	TA_Stand_Guarding	(17,10,17,20,"SHIP_DECK_29");
	TA_Stand_Guarding	(17,20,17,30,"SHIP_DECK_25");
	TA_Stand_Guarding	(17,30,17,40,"SHIP_DECK_29");
	TA_Stand_Guarding	(17,40,17,50,"SHIP_DECK_20");
	TA_Stand_Guarding	(17,50,18,00,"SHIP_DECK_29");

	TA_Stand_Guarding	(18,00,18,10,"SHIP_DECK_25");
	TA_Stand_Guarding	(18,10,18,20,"SHIP_DECK_29");
	TA_Stand_Guarding	(18,20,18,30,"SHIP_DECK_25");
	TA_Stand_Guarding	(18,30,18,40,"SHIP_DECK_29");
	TA_Stand_Guarding	(18,40,18,50,"SHIP_DECK_20");
	TA_Stand_Guarding	(18,50,19,00,"SHIP_DECK_29");

	TA_Stand_Guarding	(19,00,19,10,"SHIP_DECK_25");
	TA_Stand_Guarding	(19,10,19,20,"SHIP_DECK_29");
	TA_Stand_Guarding	(19,20,19,30,"SHIP_DECK_25");
	TA_Stand_Guarding	(19,30,19,40,"SHIP_DECK_29");
	TA_Stand_Guarding	(19,40,19,50,"SHIP_DECK_20");
	TA_Stand_Guarding	(19,50,20,00,"SHIP_DECK_29");

	TA_Stand_Guarding	(20,00,20,10,"SHIP_DECK_25");
	TA_Stand_Guarding	(20,10,20,20,"SHIP_DECK_29");
	TA_Stand_Guarding	(20,20,20,30,"SHIP_DECK_25");
	TA_Stand_Guarding	(20,30,20,40,"SHIP_DECK_29");
	TA_Stand_Guarding	(20,40,20,50,"SHIP_DECK_20");
	TA_Stand_Guarding	(20,50,21,00,"SHIP_DECK_29");
	
	TA_Stand_Guarding	(21,00,21,10,"SHIP_DECK_25");
	TA_Stand_Guarding	(21,10,21,20,"SHIP_DECK_29");
	TA_Stand_Guarding	(21,20,21,30,"SHIP_DECK_25");
	TA_Stand_Guarding	(21,30,21,40,"SHIP_DECK_29");
	TA_Stand_Guarding	(21,40,21,50,"SHIP_DECK_20");
	TA_Stand_Guarding	(21,50,22,00,"SHIP_DECK_29");

	TA_Stand_Guarding	(22,00,23,00,"SHIP_DECK_25");
	TA_Stand_Guarding	(23,00,00,00,"SHIP_DECK_29");
	TA_Stand_Guarding	(00,00,01,00,"SHIP_DECK_25");
	TA_Stand_Guarding	(01,00,02,00,"SHIP_DECK_20");
	TA_Stand_Guarding	(02,00,03,00,"SHIP_DECK_29");
	TA_Stand_Guarding	(03,00,04,00,"SHIP_DECK_20");
	TA_Stand_Guarding	(04,00,05,00,"SHIP_DECK_29");
	TA_Stand_Guarding	(05,00,06,00,"SHIP_DECK_25");
};
