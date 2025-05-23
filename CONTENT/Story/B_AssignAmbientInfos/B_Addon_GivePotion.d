// ******************
// B_Addon_GivePotion
// ******************

// ------------------------------------------------------
instance DIA_Addon_GivePotion(C_INFO)
{

	nr			= 777;
	condition	= DIA_Addon_GivePotion_Condition;
	information	= DIA_Addon_GivePotion_Info;
	permanent	= TRUE;
	description = "(give healing potion)";
};                       
FUNC INT DIA_Addon_GivePotion_Condition()
{
	if (self.aivar[AIV_PARTYMEMBER] == TRUE)
	&& (self.flags	!= NPC_FLAG_IMMORTAL)	
	{
		if (Npc_HasItems (other,ITPO_REVIVED_HEALTH_01) >= 1)
		|| (Npc_HasItems (other,ITPO_REVIVED_HEALTH_02) >= 1)
		|| (Npc_HasItems (other,ITPO_REVIVED_HEALTH_03) >= 1)
		{
			return TRUE;
		};
	};
};
func VOID DIA_Addon_GivePotion_Info()
{	
	Info_ClearChoices (DIA_Addon_GivePotion);
	Info_AddChoice (DIA_Addon_GivePotion,DIALOG_BACK,DIA_Addon_GivePotion_BACK);
	if (Npc_HasItems (other,ITPO_REVIVED_HEALTH_03) >= 1)
	{
		Info_AddChoice (DIA_Addon_GivePotion,"(give elixir of healing)",DIA_Addon_GivePotion_ITPO_REVIVED_HEALTH_03);
	};
	if (Npc_HasItems (other,ITPO_REVIVED_HEALTH_02) >= 1)
	{
		Info_AddChoice (DIA_Addon_GivePotion,"(give extract of healing)",DIA_Addon_GivePotion_ITPO_REVIVED_HEALTH_02);
	};
	if (Npc_HasItems (other,ITPO_REVIVED_HEALTH_01) >= 1)
	{
		Info_AddChoice (DIA_Addon_GivePotion,"(give essence of healing)",DIA_Addon_GivePotion_ITPO_REVIVED_HEALTH_01);
	};
};
// ------------------------------------------------------------
func void B_Addon_DrinkPotion ()
{
	AI_Output (other,self ,"DIA_Addon_Brandon_GivePotion_15_00"); //Here, take the healing potion.

	if ((self.attribute[ATR_HITPOINTS]) < (self.attribute[ATR_HITPOINTS_MAX])) //ge�ndert m.F. 
	{
		if (Npc_HasItems(self,ITPO_REVIVED_HEALTH_03) > 0)			
		{
			B_UseItem (self, ITPO_REVIVED_HEALTH_03);
		}
		else if (Npc_HasItems(self,ITPO_REVIVED_HEALTH_02) > 0)
		{
			B_UseItem (self, ITPO_REVIVED_HEALTH_02);
		}
		else if (Npc_HasItems (self,ITPO_REVIVED_HEALTH_01) > 0)
		{
			B_UseItem (self, ITPO_REVIVED_HEALTH_01);
		};
	};

	Info_ClearChoices (DIA_Addon_GivePotion);
};
// ------------------------------------------------------------
func void DIA_Addon_GivePotion_BACK()
{
	Info_ClearChoices (DIA_Addon_GivePotion);
};
// ------------------------------------------------------------
func void DIA_Addon_GivePotion_ITPO_REVIVED_HEALTH_03()
{
	B_GiveInvItems (other,self,ITPO_REVIVED_HEALTH_03,1);
	B_Addon_DrinkPotion();
};
// ------------------------------------------------------------
func void DIA_Addon_GivePotion_ITPO_REVIVED_HEALTH_02()
{
	B_GiveInvItems (other,self,ITPO_REVIVED_HEALTH_02,1);
	B_Addon_DrinkPotion();
};
// ------------------------------------------------------------
func void DIA_Addon_GivePotion_ITPO_REVIVED_HEALTH_01()
{
	B_GiveInvItems (other,self,ITPO_REVIVED_HEALTH_01,1);
	B_Addon_DrinkPotion();
};



// ****************************************************************
// ----------------------------------------------------------------

func void B_Addon_GivePotion(var C_NPC slf)
{
	DIA_Addon_GivePotion.npc = Hlp_GetInstanceID(slf);
};
