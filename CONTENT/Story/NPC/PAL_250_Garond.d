
instance PAL_250_Garond (Npc_Default)
{
	// ------ NSC ------
	name 		= "Garond";
	guild 		= GIL_PAL;
	id 			= 250;
	voice 		= 10;
	flags       = NPC_FLAG_IMMORTAL;	//Joly: NPC_FLAG_IMMORTAL																	
	npctype		= NPCTYPE_OCMAIN;
	
	// ------ AIVARS ------
	aivar[AIV_ToughGuy] 			= TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IGNORE_Murder]		= TRUE;
	aivar[AIV_IGNORE_Theft] 		= TRUE;
	aivar[AIV_IGNORE_Sheepkiller] 	= TRUE;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 4);																	

	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_2H_SWORD_PALADIN_02);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_Raven, BodyTex_N, ITAR_REVIVED_PAL_H);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		
	B_SetFightSkills (self, 70); 
		
	// ------ TA anmelden ------
	daily_routine 	= Rtn_PreStart_250;
};
FUNC VOID Rtn_PreStart_250 ()
{	
	TA_Sit_Throne  (08,00,21,00,"OCC_BARONS_GREATHALL_THRONE");
    TA_Sit_Throne  (21,00,08,00,"OCC_BARONS_GREATHALL_THRONE");
};
FUNC VOID Rtn_Start_250 ()
{	
	TA_Sit_Throne 	 (08,00,21,00,"OCC_BARONS_GREATHALL_THRONE");
    TA_Sleep		 (21,00,08,00,"OCC_BARONS_UPSTAIRS_LEFT_BACK_ROOM_LEFT_BACK");
};
