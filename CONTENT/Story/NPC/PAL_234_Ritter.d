
instance Pal_234_Ritter (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Ritter;
	guild 		= GIL_PAL;
	id 			= 234;
	voice 		= 9;
	flags       = 0;																	
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 5);																	
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ItMw_1H_Pal_Sword);
		
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Fighter", Face_N_Normal17, BodyTex_N, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 80); 
		
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_234;
};

FUNC VOID Rtn_Start_234 ()
{
	TA_Smalltalk	(08,00,23,00,"NW_CITY_PALCAMP_05");
    TA_Smalltalk	(23,00,08,00,"NW_CITY_PALCAMP_05");	
};
