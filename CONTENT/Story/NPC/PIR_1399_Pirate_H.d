instance PIR_1399_Pirate_H (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_ADDON_PIRAT; //Greg
	guild 		= GIL_BDT;
	id 			= 1399;
	voice 		= 13;
	flags       = 0;									
	npctype		= NPCTYPE_AMBIENT;
	
	//--------Aivars-----------------------
	aivar[AIV_EnemyOverride] = TRUE;  

	// ------ Attribute ------
	B_SetAttributesToChapter (self, 5);
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ItMw_Addon_PIR2hSword);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Thief", Face_P_Greg, BodyTex_P, ITAR_PIR_H_Addon);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------
	B_SetFightSkills (self, 100);

	// ------ TA ------
	start_aistate = ZS_Bandit;
};
