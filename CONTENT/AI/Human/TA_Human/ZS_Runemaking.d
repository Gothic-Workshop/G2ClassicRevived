// *************************
// NSC benutzt Alchemietisch
// *************************

FUNC VOID ZS_Runemaking ()
{	
	Perception_Set_Normal();
	
	B_ResetAll (self);
	
	AI_SetWalkmode 	(self,NPC_WALK);
		
	if (Hlp_StrCmp (Npc_GetNearestWP(self), self.wp) == FALSE)
    {
		AI_GotoWP	(self, self.wp);
	};
	if ((Npc_HasItems (self,ItMi_RuneBlank) == 0) && (Npc_HasItems (self, ItMi_Pliers) == 0))
	{
		CreateInvItem (self,ItMi_Pliers);	
		CreateInvItem (self,ItMi_RuneBlank);				
	};
};

FUNC int ZS_Runemaking_Loop ()
{
	// ------ SK: Sollte schon für das neue Mobsi funzen ------
	// ------ Alchemie-Tisch benutzen ------

	if (!C_BodyStateContains(self, BS_MOBINTERACT_INTERRUPT))
	&& (Wld_IsMobAvailable(self,"RMAKER"))
	{
		AI_UseMob (self, "RMAKER", 1);		
	};
	
	return LOOP_CONTINUE;
};

FUNC VOID ZS_Runemaking_End ()
{
	AI_UseMob (self, "RMAKER", -1);
};


