

instance DJG_714_Jan (Npc_Default)
{
	// ------ NSC ------
	name 		= "Jan"; 
	guild 		= GIL_DJG;
	id 			= 714;
	voice 		= 10;
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
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Psionic", Face_N_Richter, BodyTex_N, ITAR_DJG_L);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abh�ngig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 65); //Grenzen f�r Talent-Level liegen bei 30 und 60

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_714;
};

FUNC VOID Rtn_Start_714 ()
{
	TA_Sit_Campfire						(08,00,12,00,"OCC_SHADOWS_CORNER_MOVEMENT4");
	TA_Smalltalk						(12,00,22,00,"OCC_SHADOWS_CORNER_MOVEMENT4");
	TA_Sleep							(22,00,08,00,"OCC_MERCS_LEFT_ROOM_BED5");	
};

FUNC VOID Rtn_Smith_714 ()
{
	TA_Smith_Fire			(08,00,08,30,"OCC_STABLE_LEFT_FRONT");
    TA_Smith_Anvil			(08,30,09,00,"OCC_STABLE_LEFT_FRONT");
  	TA_Smith_Cool			(09,00,09,30,"OCC_STABLE_LEFT_FRONT");
    TA_Smith_Fire			(09,30,10,00,"OCC_STABLE_LEFT_FRONT");
 	TA_Smith_Anvil			(10,00,10,30,"OCC_STABLE_LEFT_FRONT");
    TA_Smith_Cool			(10,30,11,00,"OCC_STABLE_LEFT_FRONT");
	TA_Smith_Fire			(11,00,11,30,"OCC_STABLE_LEFT_FRONT");
    TA_Smith_Anvil			(11,30,12,00,"OCC_STABLE_LEFT_FRONT");
    TA_Smith_Cool			(12,00,12,30,"OCC_STABLE_LEFT_FRONT");
    TA_Smith_Fire			(12,30,13,00,"OCC_STABLE_LEFT_FRONT");
    TA_Smith_Anvil			(13,00,13,30,"OCC_STABLE_LEFT_FRONT");
    TA_Smith_Cool			(13,30,14,00,"OCC_STABLE_LEFT_FRONT");
    TA_Smith_Fire			(14,00,14,30,"OCC_STABLE_LEFT_FRONT");
    TA_Smith_Anvil			(14,30,15,00,"OCC_STABLE_LEFT_FRONT");
    TA_Smith_Cool			(15,00,15,30,"OCC_STABLE_LEFT_FRONT");
    TA_Smith_Fire			(15,30,16,00,"OCC_STABLE_LEFT_FRONT");
    TA_Smith_Anvil			(16,00,16,30,"OCC_STABLE_LEFT_FRONT");
    TA_Smith_Cool			(16,30,17,00,"OCC_STABLE_LEFT_FRONT");
    TA_Smith_Fire			(17,00,17,30,"OCC_STABLE_LEFT_FRONT");
    TA_Smith_Anvil			(17,30,18,00,"OCC_STABLE_LEFT_FRONT");
    TA_Smith_Cool			(18,00,18,30,"OCC_STABLE_LEFT_FRONT");
    TA_Smith_Fire			(18,30,19,00,"OCC_STABLE_LEFT_FRONT");
    TA_Smith_Anvil			(19,00,19,30,"OCC_STABLE_LEFT_FRONT");
    TA_Smith_Cool			(19,30,20,00,"OCC_STABLE_LEFT_FRONT");
    
    TA_Sleep				(20,00,08,00,"OCC_MERCS_LEFT_ROOM_BED5");
};

