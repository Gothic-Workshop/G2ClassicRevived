// *********************************************************************
// ZS_Guard_Passage
// ----------------
// Torwachen erhalten in der AI an einigen Stellen eine Sonderbehandlung
// Torwachen halten Spieler �ber Important-Dialogmodule auf
// *********************************************************************

func void ZS_Guard_Passage ()
{
	Perception_Set_Normal();
	
	B_ResetAll (self);
	
	// ------ PercTime �berschreiben ------
	Npc_SetPercTime		(self, 0.1);
	
	AI_StandUp		(self);				
	AI_SetWalkmode 	(self,NPC_WALK);			// Walkmode f�r den Zustand
	AI_GotoWP		(self, self.wp);			// Gehe zum Tagesablaufstart
	if (Npc_GetDistToNpc(self, hero) > PERC_DIST_DIALOG)
	{
		AI_AlignToWP	(self);
	};
};

func int ZS_Guard_Passage_Loop ()
{
	if (Npc_IsOnFP (self, "GUARDPASSAGE"))
	{	
		AI_AlignToFP (self);
		if (self.aivar[AIV_TAPOSITION] == NOTINPOS_WALK)
  		{
  			self.aivar[AIV_TAPOSITION] = NOTINPOS;
  		};
	}	
	else if (Wld_IsFPAvailable(self,"GUARDPASSAGE"))
	{
		AI_GotoFP 		(self, "GUARDPASSAGE");
		AI_StandUp 		(self);
		AI_AlignToFP 	(self);
		self.aivar[AIV_TAPOSITION] = NOTINPOS_WALK;
	}
	else
	{
		AI_AlignToWP (self);
		if (self.aivar[AIV_TAPOSITION] == NOTINPOS_WALK)
  		{
  			self.aivar[AIV_TAPOSITION] = NOTINPOS;
  		}; 
	};
		
	if (self.aivar[AIV_TAPOSITION] == NOTINPOS)
	{
		AI_PlayAni (self,"T_STAND_2_HGUARD");
		self.aivar[AIV_TAPOSITION] = ISINPOS;
	};
	// ------ Alle 3 Sekunden -------
	if (Npc_GetStateTime(self) >= 3)
	{
		if (Npc_GetDistToNpc(self, hero) > PERC_DIST_DIALOG)
		{
			AI_AlignToWP	(self);
			Npc_SetStateTime(self,0);
		};
	};

	return LOOP_CONTINUE;
};

func void ZS_Guard_Passage_End ()
{

};




