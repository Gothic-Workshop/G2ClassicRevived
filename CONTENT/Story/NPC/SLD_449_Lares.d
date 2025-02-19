//#############################################
//##
//##	Neue Welt
//##
//############################################
instance SLD_449_Lares (Npc_Default)
{
	// ------ NSC ------
	name 		= "Lares"; 
	guild 		= GIL_SLD;
	id 			= 449;
	voice 		= 9;	//Joly: hat zu viel mit Diego zu tun, als dass man ihm Diegos Stimme gibt.
	flags       = NPC_FLAG_IMMORTAL;																
	npctype		= NPCTYPE_FRIEND;
	
	// ------ aivars ------
	aivar[AIV_ToughGuy] = TRUE;
	aivar[AIV_NPCIsRanger] = TRUE;
	aivar[AIV_IgnoresFakeGuild] = TRUE;
	aivar[AIV_IgnoresArmor] 	= TRUE;

	// ------ Attribute ------
	B_SetAttributesToChapter (self, 4);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ItMw_Schwert3); 
	
	
	// ------ Inventory ------
	CreateInvItems (self, ItMw_Schwert3,1);//zur Sicherheit - bei Waffenverlust hat er 'ne neue M.F.
	CreateInvItems (self, ItMi_Gold, 100);	
	CreateInvItems (self, ItMi_OldCoin, 1);	//Joly: damit er gefunden wird, wenn er im Kampf stirbt
	CreateInvItems (self, ItPo_Health_02, 5);	//Mattes: damit er frisch bei Taverne ankommt.								
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Pony", Face_N_Lares, BodyTex_N,ITAR_Vlk_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 35); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_449;
};
FUNC VOID Rtn_PreStart_449()
{
	TA_Stand_Guarding   (08,00,20,00,"NW_CITY_HABOUR_02_B");
	TA_Smalltalk		(20,00,08,00,"NW_CITY_HABOUR_TAVERN01_IN");
}; 
FUNC VOID Rtn_Start_449()
{	
	TA_Stand_Guarding   (08,00,20,00,"NW_CITY_HABOUR_02_B");
	TA_Smalltalk		(20,00,08,00,"NW_CITY_HABOUR_TAVERN01_IN");
};
FUNC VOID Rtn_Guide_449 ()
{
	TA_Guide_Player  (08,00,20,00,"NW_TAVERNE_BIGFARM_05");
	TA_Guide_Player	 (20,00,08,00,"NW_TAVERNE_BIGFARM_05");
};

FUNC VOID Rtn_WaitForShip_449 ()
{
	TA_Smalltalk  (08,00,20,00,"NW_WAITFOR_SHIP_05");
	TA_Smalltalk  (20,00,08,00,"NW_WAITFOR_SHIP_05");
};

FUNC VOID Rtn_ShipOff_449 ()
{
	TA_Stand_Guarding   (04,35,20,05,"NW_CITY_HABOUR_02_B");
    TA_Sit_Chair		(20,05,04,35,"NW_CITY_HABOUR_TAVERN01_08");
};

FUNC VOID Rtn_Ship_449()
{	
	TA_Smalltalk			(08,00,23,00,"SHIP_CREW_05");
	TA_Smalltalk			(23,00,08,00,"SHIP_CREW_05");
};

