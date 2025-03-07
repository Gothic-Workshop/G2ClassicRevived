
instance Mil_303_Torwache (Npc_Default)
{
	// ------ NSC ------
	name 		= "Door Guard";	
	guild 		= GIL_MIL;
	id 			= 303;
	voice 		= 7;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 3);																	
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ItMw_1h_Mil_Sword);

	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_Normal_Sly, BodyTex_N, ITAR_REVIVED_GRD_M);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		
	B_SetFightSkills (self, 50); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_303;
};

FUNC VOID Rtn_Start_303 ()
{	
	TA_Guard_Passage	(08,00,23,00,"NW_CITY_GUARDOFFICE_GUARD_02");
    TA_Guard_Passage	(23,00,08,00,"NW_CITY_GUARDOFFICE_GUARD_02");
};
