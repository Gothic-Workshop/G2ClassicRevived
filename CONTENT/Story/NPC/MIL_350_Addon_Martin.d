
instance Mil_350_Addon_Martin (Npc_Default)
{
	// ------ NSC ------
	name 		= "Martin";	
	guild 		= GIL_MIL;//wegen Rangermeeting
	id 			= 350;
	voice 		= 7;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	aivar[AIV_NPCIsRanger] = TRUE;

	// ------ Attribute ------
	B_SetAttributesToChapter (self, 3);																	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ItMw_1h_Mil_Sword);
	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Thief", Face_P_OldMan_Gravo, BodyTex_P, ITAR_REVIVED_GRD_M_02);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		
	B_SetFightSkills (self, 30); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_350; 
};

FUNC VOID Rtn_PreStart_350()
{	
	TA_Study_WP	(04,00,23,00,"NW_CITY_PALCAMP_15");
    TA_Study_WP (23,00,04,00,"NW_CITY_PALCAMP_15");	
};

FUNC VOID Rtn_Start_350 ()
{	
	TA_Study_WP	(04,00,23,00,"NW_CITY_PALCAMP_15");
    TA_Sit_Chair (23,00,04,00,"NW_CITY_HABOUR_TAVERN01_04");	
};