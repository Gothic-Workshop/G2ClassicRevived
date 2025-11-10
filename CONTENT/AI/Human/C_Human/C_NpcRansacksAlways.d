// ************************************************
// C_NpcRansacksAlways
// -------------------
// enthält alle NPCs, die Plündern OBWOHL schon ein 
// anderer NSC plündert
// ************************************************

func int C_NpcRansacksAlways (var C_Npc slf)
{
	if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Garwig))
	&& (Npc_HasItems(other, ITMW_REVIVED_2H_HAMMER_HOLY) > 0)
	{
		return TRUE;
	};
	
	if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Rod))
	&& (Npc_HasItems(other, ITMW_REVIVED_2H_SWORD_ROD) > 0)
	{
		return TRUE;
	};
		
	return FALSE;
};
