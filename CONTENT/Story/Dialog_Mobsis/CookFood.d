
// ****************************************************
// COOKFOOD_S1
// *****************************************************
FUNC VOID COOKFOOD_S1 ()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self)==Hlp_GetInstanceID(her))
	{	
		self.aivar[AIV_INVINCIBLE] = TRUE;
		PLAYER_MOBSI_PRODUCTION	= MOBSI_CAULDRON;
		Ai_ProcessInfos (her);
	};
}; 

//*******************************************************
//	CookFood Dialog abbrechen
//*******************************************************
INSTANCE PC_CookFood_End (C_Info)
{
	npc				= PC_Hero;
	nr				= 999;
	condition		= PC_CookFood_End_Condition;
	information		= PC_CookFood_End_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE; 
};

FUNC INT PC_CookFood_End_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	== MOBSI_CAULDRON)
	{	
		return TRUE;
	};
};

FUNC VOID PC_CookFood_End_Info()
{
	CreateInvItems (self, ITMI_SCOOP,1);
	B_ENDPRODUCTIONDIALOG ();
};


//****************************************************************************
//****************************************************************************
//****************************************************************************

INSTANCE PC_Cook_MeatbugSoup (C_INFO)
{
	nr       		= 1;
	npc				= PC_Hero;
	condition		= PC_Cook_MeatbugSoup_Condition;
	information		= PC_Cook_MeatbugSoup_Info;
	permanent		= TRUE;
	description		= "Prepare a Meatbug soup"; 
};
FUNC INT PC_Cook_MeatbugSoup_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	== MOBSI_CAULDRON) 
	&& (PLAYER_TALENT_COOKING[COOKING_MeatbugRagout] == TRUE))
	{		
		return TRUE;
	};
};
FUNC VOID PC_Cook_MeatbugSoup_Info ()
{
	if 	(
			(
				(Npc_HasItems (hero, ItAt_IcedragonHeart) >= 1)
				|| 		(Npc_HasItems (hero, ItAt_RockdragonHeart)	>= 1)
				|| 		(Npc_HasItems (hero, ItAt_FiredragonHeart)	>= 1)
				|| 		(Npc_HasItems (hero, ItAt_SwampdragonHeart)	>= 1)	
			)
			&& 		(Npc_HasItems (hero, ItMi_InnosEye_Discharged_MIS)    >= 1)	
		) 
	{
		Print (PRINT_CookingSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	//B_ENDPRODUCTIONDIALOG ();
};