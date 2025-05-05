// **********************************
// NSC benutzt Item Joint an Stand-FP
// **********************************

func void ZS_Smoke_Joint()
{
	Perception_Set_Normal();
	
	B_ResetAll (self);
	
	AI_SetWalkmode 	(self,NPC_WALK);
	
	if (Npc_GetDistToWP (self,self.wp) > TA_DIST_SELFWP_MAX) 
	{
		AI_GotoWP	(self, self.wp);
	};
	
	if (Npc_HasItems (self,ITMI_REVIVED_JOINT_REGULAR) == 0)
	{
		CreateInvItem (self,ITMI_REVIVED_JOINT_REGULAR);				
	};
	self.aivar[AIV_TAPOSITION] = NOTINPOS;
};

func int ZS_Smoke_Joint_loop()
{
	if (Npc_IsOnFP (self,"STAND"))
	{
		Ai_AlignToFP (self);
		if (self.aivar[AIV_TAPOSITION] == NOTINPOS_WALK)
  		{
  			self.aivar[AIV_TAPOSITION] = NOTINPOS;
  		};
	}	
	else if (Wld_IsFPAvailable(self,"STAND"))
	{
		AI_GotoFP 		(self, "STAND");
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
		AI_UseItemToState 	(self,ITMI_REVIVED_JOINT_REGULAR,0);
		self.aivar[AIV_TAPOSITION] = ISINPOS;
	};			

//*********************************************************
//	Hier: RandomAnis
//********************************************************

	if ((Npc_GetStateTime(self) > 5)
	&& (self.aivar[AIV_TAPOSITION] == ISINPOS))
	{
		AI_PlayAniBS (self,"T_JOINT_RANDOM_1",BS_ITEMINTERACT);
		Npc_SetStateTime (self, 0);
	};
	
	return LOOP_CONTINUE;
};

func void ZS_Smoke_Joint_end()
{
	AI_UseItemToState (self, ITMI_REVIVED_JOINT_REGULAR, -1);
};















	
