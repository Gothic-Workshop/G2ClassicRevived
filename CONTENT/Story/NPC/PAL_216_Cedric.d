
instance Pal_216_Cedric (Npc_Default)
{
	// ------ NSC ------
	name 		= "Cedric";
	guild 		= GIL_PAL;
	id 			= 216;
	voice 		= 12;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 5);																	
	
	// ------ Kampf-Taktik ------
	fight_tactic = FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_PALADIN_02);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Fighter", Face_N_NormalBart10, BodyTex_N, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		
	B_SetFightSkills (self, 55); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_216;
};

FUNC VOID Rtn_Start_216 ()
{
	TA_Practice_Sword	(07,00,19,00,"NW_CITY_TRAIN_01");
	TA_Sleep			(19,00,07,00,"NW_CITY_LEOMAR_BED_03");	
};
