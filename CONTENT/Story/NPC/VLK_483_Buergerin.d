
instance VLK_483_Buergerin (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Buergerin;	
	guild 		= GIL_VLK;
	id 			= 483;
	voice 		= 16;
	flags       = 0;																
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 1);																
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																	
	
	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	EquipItem (self, ITMW_REVIVED_1H_DAGGER_01);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, FEMALE, "Hum_Head_Babe4", FaceBabe_N_VlkBlonde, BodyTex_N, ITAR_VlkBabe_M);	
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 15); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_483;
};

FUNC VOID Rtn_Start_483 ()
{	
	TA_Smalltalk	(08,00,22,00,"NW_CITY_HABOUR_KASERN_05_01");
	TA_Smalltalk	(22,00,08,00,"NW_CITY_HABOUR_KASERN_05_01");
};
