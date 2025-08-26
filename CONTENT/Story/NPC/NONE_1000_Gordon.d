instance NONE_1000_Gordon (Npc_Default)
{
	// ------ NSC ------
	name 		= "Gordon Ramsay";
	guild 		= GIL_NONE;
	id 			= 1000;
	voice 		= 7;
	flags       = NPC_FLAG_IMMORTAL;	//Joly: NPC_FLAG_IMMORTAL	sonst Plottkiller Kapitel 5																//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 6);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_SCAR);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_GordonRamsay, BodyTex_N, ITAR_REVIVED_GORDONRAMSAY);	
	Mdl_SetModelFatness	(self, 1.0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abh�ngig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 100); //Grenzen f�r Talent-Level liegen bei 30 und 60
		
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1000;
};

FUNC VOID Rtn_Start_1000 ()
{	
	TA_Cook_Cauldron		(08,00,22,00,"OCC_KITCHEN_COOK");
   	//TA_Sit_Chair			(22,00,08,00,"OCC_KITCHEN_SIT");
	TA_Cook_Cauldron		(22,00,08,00,"OCC_KITCHEN_COOK");
};