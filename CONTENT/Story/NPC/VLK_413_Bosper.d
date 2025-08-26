
instance VLK_413_Bosper (Npc_Default)
{
	// ------ NSC ------
	name 		= "Bosper";
	guild 		= GIL_VLK;
	id 			= 413;
	voice 		= 11;
	flags       = NPC_FLAG_IMMORTAL;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 2);																
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_01);
	EquipItem			(self, ITRW_REVIVED_BOW_LONG_01);
	
	// ------ Inventory ------
	// Händler

		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald.", Face_L_Tough_Santino, BodyTex_L,ITAR_LEATHER_L );	
	
	Mdl_SetModelFatness	(self, 0.8);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 35); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_413;
};

FUNC VOID Rtn_Start_413 ()
{	
	TA_Stand_Guarding		(05,00,13,05,"NW_CITY_HUT_BOSPER_MERCHANT");
	TA_Smalltalk			(13,05,14,00,"NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Stand_Guarding		(14,00,16,00,"NW_CITY_HUT_BOSPER_MERCHANT");
	TA_Sit_Bench			(16,00,17,05,"NW_CITY_MERCHANT_HUT_01_FRONT");
	TA_Smalltalk			(17,05,18,00,"NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Sleep 				(18,00,05,00,"NW_CITY_BED_BOSPER");
};
