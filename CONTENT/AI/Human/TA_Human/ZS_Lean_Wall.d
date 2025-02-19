// Gothic 2
// ****************************
// NSC benutzt Lean-Wall-Mobsi
// ****************************

FUNC VOID ZS_Lean_Wall ()
{
	Perception_Set_Normal();
	
	B_ResetAll (self);

	AI_SetWalkmode 	(self, NPC_WALK);		
	
	if (Hlp_StrCmp (Npc_GetNearestWP(self), self.wp) == FALSE)
    {
		AI_GotoWP	(self, self.wp);
	};
};

FUNC int ZS_Lean_Wall_Loop ()
{
	// ------ Anlehnen ------
	if (!C_BodyStateContains(self, BS_MOBINTERACT_INTERRUPT))
	&& (Wld_IsMobAvailable(self,"LEAN"))
	{
		AI_UseMob (self, "LEAN", 1);
	};
	
	return LOOP_CONTINUE;
};

FUNC VOID ZS_Lean_Wall_End ()
{
	AI_UseMob (self, "LEAN", -1);
};
