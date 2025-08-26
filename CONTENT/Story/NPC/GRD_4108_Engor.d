
instance GRD_4108_Engor (Npc_Default)
{
	// ------ NSC ------
	name 		= "Engor";
	guild 		= GIL_MIL;
	id 			= 4108;
	voice 		= 13;
	flags       = 0;							
	npctype		= NPCTYPE_OCMAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 1);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------															
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_06);
	
	// ------ Inventory ------
	// Händler

	
	
		
	// ------ visuals ------																			
	
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_L_Jackal, BodyTex_L, ITAR_REVIVED_PAL_L);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 30);

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4108;
};

FUNC VOID Rtn_Start_4108 ()
{	
	TA_Study_WP				(08,00,22,00,"OCC_BARONS_RIGHT_ROOM_BACK");
    TA_Sleep				(22,00,08,00,"OCC_BARONS_UPSTAIRS_RIGHT_BACK_ROOM_RIGHT");
};
