instance Vlk_2000_Thorus (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Stadtwache; //"Thorus";
	guild 		= GIL_MIL;
	id 			= 2000;
	voice 		= 7;
	flags       = NPC_FLAG_IMMORTAL;									//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ AIVARS ------
/* 	aivar[AIV_ToughGuy] 			= TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IGNORE_Murder]		= TRUE;
	aivar[AIV_IGNORE_Theft] 		= TRUE;
	aivar[AIV_IGNORE_Sheepkiller] 	= TRUE; */
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 3);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_SWORD_THORUS);
	//EquipItem			(self, ItRw_Crossbow_01);
	EquipItem	(self, ITHE_SPECTACLES_03); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	//CreateInvItems		(self, ItFo_Potion_Health_02, 	1);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Fighter", Face_B_Thorus, BodyTex_B, ITAR_REVIVED_GRD_H);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abh�ngig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 50); //Grenzen f�r Talent-Level liegen bei 30 und 60

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_2000;
};

FUNC VOID Rtn_Start_2000 ()
{	
	//TA_Sit_Bench	(08,00,23,00,"XXX");
    //TA_Sit_Bench	(23,00,08,00,"XXX");
	TA_Stand_ArmsCrossed	(08,00,22,00,"NW_CITY_UPTOWN_PATH_22");
	TA_Stand_ArmsCrossed	(22,00,08,00,"NW_CITY_UPTOWN_PATH_22");
};

