
instance STRF_4111_Grimes (Npc_Default)
{
	// ------ NSC ------
	name 		= "Grimes";
	guild 		= GIL_STRF;
	id 			= 4111;
	voice 		= 5;
	flags       = 0;							
	npctype		= NPCTYPE_MAIN;
	
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self,2);
	// ------ Kampf-Taktik ------
	fight_tactic	= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------			
	EquipItem (self, ItMw_2H_Axe_L_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	// ------ visuals ------					
	
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Thief", Face_N_ImportantGrey, BodyTex_N, ITAR_REVIVED_SFB_L);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------				
	B_SetFightSkills (self, 40); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4111;
};

FUNC VOID Rtn_Start_4111 ()
{	
	TA_Pick_Ore	 			(08,00,22,00,"OW_OM_PICKSLOT_02");
    TA_Stand_Drinking		(22,00,23,00,"OW_OM_ENTRANCE03_001");
    TA_Sit_Campfire	 		(23,00,08,00,"OW_OM_ENTRANCE03_CAMPFIRE");
};
