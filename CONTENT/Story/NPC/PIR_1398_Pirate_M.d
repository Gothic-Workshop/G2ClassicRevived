instance PIR_1398_Pirate_M (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_ADDON_PIRAT; //Angus
	guild 		= GIL_BDT;
	id 			= 1398;
	voice 		= 1;
	flags       = 0;			
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 4);																	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;
	
	// ------ Equippte Waffen ------																	
	EquipItem (self, ItMw_Addon_PIR2hAxe);
	CreateInvItems (self, ItRi_Addon_MorgansRing_Mission, 1);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_NormalBart21, BodyTex_N, ITAR_PIR_M_Addon);	  
	Mdl_SetModelFatness	(self, 1.3);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		
	B_SetFightSkills (self,90); 
	
	// ------ TA ------
	start_aistate = ZS_Bandit;
};
