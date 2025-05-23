
instance VLK_410_Baltram (Npc_Default)
{
	// ------ NSC ------
	name 		= "Baltram";
	guild 		= GIL_VLK;
	id 			= 410;
	voice 		= 1;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	aivar[AIV_NPCIsRanger] = TRUE;

	// ------ Attribute ------
	B_SetAttributesToChapter (self, 2);																	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																	
	EquipItem (self, ItMw_ShortSword2);
	
	// ------ Inventory ------
	// H�ndler
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_Weak_Markus_Kark, BodyTex_N, ITAR_VLK_M);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		
	B_SetFightSkills (self,50); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_410;
};

FUNC VOID Rtn_Start_410 ()
{	
	TA_Stand_ArmsCrossed	(05,05,20,05,"NW_CITY_BALTRAM");
	TA_Smalltalk			(20,05,00,05,"NW_CITY_BEER_05");
    TA_Sleep 				(00,05,05,05,"NW_CITY_HOTEL_BED_02");
};

FUNC VOID Rtn_Prison_410()
{	
	TA_Stand_ArmsCrossed 	(08,00,23,00,"NW_CITY_HABOUR_KASERN_RENGARU");
    TA_Stand_ArmsCrossed	(23,00,08,00,"NW_CITY_HABOUR_KASERN_RENGARU"); 
};
