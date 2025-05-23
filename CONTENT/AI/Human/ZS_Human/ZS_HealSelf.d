// *********************************
// ZS_HealSelf
// -----------
// Wird aufgerufen durch
// - ZS_Attack (bzw. ZS_RansackBody)
// - ZS_Flee
// - ZS_Unconscious
// *********************************

func void ZS_HealSelf ()
{
	Perception_Set_Minimal();
};

func int ZS_HealSelf_Loop ()
{
	//EXIT LOOP IF...
	
	// ------ NSC ist schon voll geheilt ------
	if (self.attribute[ATR_HITPOINTS] == self.attribute[ATR_HITPOINTS_MAX])
	{
		Npc_ClearAIQueue(self);
		return LOOP_END;
	};
	
	// LOOP FUNC
	
	// ------ Gro�en Heiltrank nehmen ------
	if (Npc_HasItems(self,ITPO_REVIVED_HEALTH_03) >0)			
	{
		AI_UseItem (self, ITPO_REVIVED_HEALTH_03);
		return LOOP_CONTINUE;
	}
	// ------ Mittleren Heiltrank nehmen ------
	else if (Npc_HasItems(self,ITPO_REVIVED_HEALTH_02) >0)
	{
		AI_UseItem (self, ITPO_REVIVED_HEALTH_02);
		return LOOP_CONTINUE;
	}
	// ------ Kleinen Heiltrnak nehmen ------
	else if (Npc_HasItems (self,ITPO_REVIVED_HEALTH_01) >0)
	{
		AI_UseItem		(self,	ITPO_REVIVED_HEALTH_01);
		return LOOP_CONTINUE;
	}
	// ------ zwar verletzt, aber kein Trank am Start ------
	else 														
	{
		Npc_ClearAIQueue(self);
		return LOOP_END;
	};
};

func void ZS_HealSelf_End ()
{
};
