instance Bau_4300_Addon_Cavalorn (Npc_Default)
{
	// ------ NSC ------
	name 		= "Cavalorn";
	guild 		= GIL_NONE;
	id 			= 4300;
	voice 		= 8;
	flags       = NPC_FLAG_IMMORTAL;	
	npctype		= NPCTYPE_FRIEND;
	
	aivar[AIV_NPCIsRanger] = TRUE;

	// ------ Attribute ------
	B_SetAttributesToChapter (self, 3);																	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem (self, ItMw_ShortSword2);
	EquipItem (self, ItRw_sld_bow);  
	CreateInvItems (self, ITAR_BAU_L, 1);	

	// ------ Inventory ------
	// H�ndler
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Psionic", Face_B_Cavalorn, BodyTex_B, ITAR_REVIVED_STT_M);	 
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		
	B_SetFightSkills (self,50); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4300;
};

FUNC VOID Rtn_Start_4300 ()
{	
	TA_Stand_Eating	(05,00,20,00,"NW_XARDAS_GOBBO_01");
	TA_Stand_Eating	(20,00,05,00,"NW_XARDAS_GOBBO_01");
};

FUNC VOID Rtn_KillBandits_4300 ()
{	
	TA_RunToWP	(05,00,20,00,"NW_XARDAS_BANDITS_LEFT");
	TA_RunToWP	(20,00,05,00,"NW_XARDAS_BANDITS_LEFT");
};

FUNC VOID Rtn_Stadt_4300 ()
{	
	TA_Sit_Bench 	(08,00,20,00,"NW_CITY_MERCHANT_PATH_15");
	TA_Smalltalk	(20,00,08,00,"NW_CITY_HABOUR_SMALLTALK_LARES");
};
