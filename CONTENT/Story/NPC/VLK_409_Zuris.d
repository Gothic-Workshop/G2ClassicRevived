
instance VLK_409_Zuris (Npc_Default)
{
	// ------ NSC ------
	name 		= "Zuris";
	guild 		= GIL_VLK;
	id 			= 409;
	voice 		= 14;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 2);																	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_SHORT_01);
	
	// ------ Inventory ------
	// Händler
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Psionic", Face_N_ImportantGrey, BodyTex_N, ITAR_VLK_M);	
	Mdl_SetModelFatness	(self, 0.9);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self,30); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_409;
};

FUNC VOID Rtn_Start_409 ()
{
	TA_Stand_ArmsCrossed	(05,30,06,30,"NW_CITY_ZURIS_REGAL");
	TA_Stand_ArmsCrossed	(06,30,20,00,"NW_CITY_ZURIS");
	TA_Sit_Throne 			(20,00,23,30,"NW_CITY_CHAIR_ZURIS");
	TA_Sleep				(23,30,05,30,"NW_CITY_BED_ZURIS");
};
