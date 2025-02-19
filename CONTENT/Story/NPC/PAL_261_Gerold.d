
instance PAL_261_Gerold  (Npc_Default)
{
	// ------ NSC ------
	name 		= "Gerold";
	guild 		= GIL_PAL;
	id 			= 261;
	voice 		= 12;
	flags       = 0;																
	npctype		= NPCTYPE_OCMAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 4);																	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ItMw_2h_Pal_Sword);
	EquipItem			(self, ItRw_Mil_Crossbow);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_Normal_Blade, BodyTex_N, ITAR_PAL_M);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		
	B_SetFightSkills (self, 70); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_261;
};

FUNC VOID Rtn_Start_261 ()
{	
	TA_Stand_Guarding		(08,00,12,00,"OCC_CELLAR_HALLWAY_FRONT");
    TA_Stand_Guarding		(12,00,16,00,"OCC_CELLAR_HALLWAY_BACK");
    TA_Stand_Guarding		(16,00,20,00,"OCC_CELLAR_HALLWAY_FRONT");
    TA_Stand_Guarding		(20,00,08,00,"OCC_CELLAR_HALL");
};

FUNC VOID Rtn_Food_261 ()
{	
	TA_Stand_Guarding		(08,00,23,10,"OCC_CELLAR_HALL");
    TA_Stand_Guarding		(23,10,08,00,"OCC_CHAPEL_HALL");
};


