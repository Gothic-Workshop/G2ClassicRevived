
instance GRD_4100_Brutus (Npc_Default)
{
	// ------ NSC ------
	name 		= "Brutus";
	guild 		= GIL_MIL;
	id 			= 4100;
	voice 		= 6;
	flags       = 0;							//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_OCMAIN;
	
	//------- Aivars 
	aivar[AIV_ToughGuy] 			= TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	 
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 2);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ItMw_1H_Vlk_Dagger);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_P_ToughBald, BodyTex_P, ITAR_REVIVED_PAL_L);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abh�ngig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 50); //Grenzen f�r Talent-Level liegen bei 30 und 60
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4100;
};
//Joly: NIE AUF EINE BANK ODER THRON SETZEN

FUNC VOID Rtn_Start_4100 ()
{	
	TA_Smith_Sharp			(08,00,23,00,"OCC_BARONS_LEFT_ROOM_FRONT_SHARPER");
    TA_Sleep				(23,00,08,00,"OCC_MERCS_UPPER_LEFT_ROOM_BED2");
};
//Joly: NIE AUF EINE BANK ODER THRON SETZEN
FUNC VOID Rtn_Meatbugs_4100 ()
{	
	TA_Stand_ArmsCrossed 		(08,00,23,00,"OCC_BARONS_LEFT_GUARD_CHANGE"); 
    TA_Stand_ArmsCrossed		(23,00,08,00,"OCC_BARONS_LEFT_GUARD_CHANGE");
};

