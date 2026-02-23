
instance VLK_4007_Buerger (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Buerger; 
	guild 		= GIL_VLK;
	id 			= 4007;
	voice 		= 6;
	flags       = NPC_FLAG_IMMORTAL;																
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 100);													
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																
	EquipItem (self,ItMw_Orkschlaechter);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Pony", Face_N_ArkhanQualshy, BodyTex_N, ITAR_Vlk_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4007;
};

FUNC VOID Rtn_Start_4007()
{	
	TA_Smalltalk	(08,00,20,00,"NW_CITY_BEER_07");
	TA_Smalltalk	(20,00,08,00,"NW_CITY_BEER_07");
};
