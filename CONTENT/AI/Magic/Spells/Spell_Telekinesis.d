INSTANCE Spell_Telekinesis (C_Spell_Proto)
{
    time_per_mana            = 1500;
    spelltype                = SPELL_NEUTRAL;
    canTurnDuringInvest        = FALSE;
    canChangeTargetDuringInvest = FALSE;
    targetCollectAlgo        = TARGET_COLLECT_FOCUS;
    targetCollectType        = TARGET_TYPE_ITEMS;
    targetCollectAzi        = 20;
};

INSTANCE Spell_Telekinesis_Data (C_SPELL_DATA)
{
    spellId = SPL_Telekinesis;
    spellType = SPELL_TYPE_TELEKINESIS;
    spellEnergyType = ATR_MANA;
    spellIsInvestSpell = TRUE;
};

func int Spell_Logic_Telekinesis(var int manaInvested)
{
    if(Npc_GetActiveSpellLevel(self) <= 1)
    {
        return SPL_NEXTLEVEL;
    };
    
    return SPL_RECEIVEINVEST;
};

func int Spell_Cast_Telekinesis()
{
};