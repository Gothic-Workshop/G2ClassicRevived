instance BDT_1049_Bandit_L (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_BANDIT; 
	guild 		= GIL_BDT;
	id 			= 1049;
	voice 		= 10;
	flags       = 0;								
	npctype		= NPCTYPE_AMBIENT;
	
	//--------Aivars-----------
	aivar[AIV_EnemyOverride] = TRUE;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 1);																	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ItMw_1h_Bau_Mace);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Fighter", Face_B_Normal01, BodyTex_B, ITAR_REVIVED_BDT_M);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 
	
		// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 30); 

	daily_routine = Rtn_Start_1049;
};	 
	// ------ TA ------
	FUNC VOID RTn_Start_1049()
	{
		TA_Sit_Campfire (00,00,12,00,"NW_CASTLEMINE_TOWER_CAMPFIRE_03");
		TA_Sit_Campfire (12,00,00,00,"NW_CASTLEMINE_TOWER_CAMPFIRE_03");
	};
