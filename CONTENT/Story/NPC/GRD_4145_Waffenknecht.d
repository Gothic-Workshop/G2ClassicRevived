
instance GRD_4145_Waffenknecht (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_WAFFENKNECHT; 
	guild 		= GIL_MIL;
	id 			= 4145;
	voice 		= 1;
	flags       = 0;							
	npctype		= NPCTYPE_OCAMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 1);																
		
	// ------ Kampf-Taktik ------
	fight_tactic	= FAI_NAILED;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ItMw_1H_Mil_Sword);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
		
	// ------ visuals ------																			
	
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_NormalBart09, BodyTex_N, ITAR_REVIVED_PAL_L);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		
	B_SetFightSkills (self, 30); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4145;
};

FUNC VOID Rtn_Start_4145 ()
{	
    TA_Sleep					(08,00,20,00,"OCC_MERCS_UPPER_RIGHT_ROOM_BED2");
	TA_Stand_Guarding			(20,00,00,00,"OCC_TOWERRUIN_LADDER");
    TA_Stand_Guarding			(00,00,04,00,"OCC_TOWERRUIN_TOP");
	TA_Stand_Guarding			(04,00,08,00,"OCC_PALISADE_WALLCRACK");
};
