//#############################################
//##
//##	Alte Welt
//##
//############################################

INSTANCE PC_Thief_OW (Npc_Default)
{
	// ------ NSC ------
	name 		= "Diego";
	guild 		= GIL_NONE;
	id 			= 1;
	voice 		= 11;
	flags       = 0;//NPC_FLAG_IMMORTAL;															
	npctype		= NPCTYPE_FRIEND;
	
	// ------ Aivars -------
	aivar[AIV_FollowDist] = 300;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 6);																
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																	
	EquipItem (self, ItMw_1H_SLD_Sword);  
	EquipItem (self, ItRw_Bow_M_03); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems (self, ITPO_REVIVED_HEALTH_03, 10); 
			
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Thief",Face_L_Diego, BodyTex_L, ITAR_REVIVED_STT_H);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		
	B_SetFightSkills (self, 80);

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1;
};

FUNC VOID Rtn_Start_1()
{	
	TA_Sit_Bench				(08,00,23,00,"LOCATION_02_05");
    TA_Sit_Bench				(23,00,08,00,"LOCATION_02_05");
};

FUNC VOID Rtn_Follow_1()
{	
	TA_Follow_Player 			(08,00,23,00,"LOCATION_02_05");
    TA_Follow_Player			(23,00,08,00,"LOCATION_02_05");
};

FUNC VOID Rtn_Tot_1()
{	
	TA_Sit_Bench				(08,00,23,00,"TOT");
    TA_Sit_Bench				(23,00,08,00,"TOT");
};

FUNC VOID Rtn_DemonTower_1()
{	
	TA_Stand_Eating				(08,00,23,00,"OW_PATH_129");
    TA_Stand_Eating				(23,00,08,00,"OW_PATH_129");
};

FUNC VOID Rtn_Fajeth_1()
{	
	TA_Sit_Campfire				(08,00,23,00,"LOCATION_23_01");
    TA_Sit_Campfire				(23,00,08,00,"LOCATION_23_01");
};

FUNC VOID Rtn_Silvestro_1()
{	
	TA_Stand_Drinking			(08,00,23,00,"OW_SILVESTROMINE_CAMP");
    TA_Stand_Drinking			(23,00,08,00,"OW_SILVESTROMINE_CAMP");
};

FUNC VOID Rtn_Grimes_1()
{	
	TA_Smoke_Joint				(08,00,23,00,"SPAWN_SNAPPER_OM_ENTRANCE_003");
    TA_Smoke_Joint				(23,00,08,00,"SPAWN_SNAPPER_OM_ENTRANCE_003");
};

FUNC VOID Rtn_Pass_1()
{	
	TA_Sit_Campfire				(08,00,23,00,"OW_BILGOT_PASS");
    TA_Sit_Campfire				(23,00,08,00,"OW_BILGOT_PASS");
};
