/**************************************
*  NSC soll auf Zielscheibe schiessen *
***************************************/


//### Skriptmethode noch einbauen, wenn sie für VoBs geht
func void ZS_Practice_Bow ()
{
    PrintDebugNpc(PD_TA_FRAME,"ZS_PracticeBow");
    
    Perception_Set_Normal();
    B_ResetAll (self);

	AI_SetWalkmode (self,NPC_WALK);		// Walkmode für den Zustand 
	if (Npc_GetDistToWP (self,self.wp) > TA_DIST_SELFWP_MAX) 
	{
		AI_GotoWP		(self, self.wp);
		AI_AlignToWP	(self);
	};
	if (Wld_IsFPAvailable (self, "PRACTICEBOW"))
	{
		AI_GotoFP (self,"PRACTICEBOW");	
		AI_AlignToFP( self );				//Richte Dich aus
	};
};

func void ZS_Practice_Bow_Loop ()
{
    PrintDebugNpc(PD_TA_LOOP,"ZS_PracticeBow_Loop");
	
	AI_Wait(self,1);
};

func void ZS_Practice_Bow_End ()
{
    PrintDebugNpc(PD_TA_FRAME,"ZS_PracticeBow_End");
};

