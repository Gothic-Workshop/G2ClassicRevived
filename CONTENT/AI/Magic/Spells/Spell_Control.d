// *********
// SPL_Control
// *********
func void ZS_Controlled()
{
    Npc_ClearAIQueue(self);
    AI_StandUpQuick(self);
    AI_PlayAni(self, "T_PSI_VICTIM");
    AI_Wait(self, 3.5);
};
func int ZS_Controlled_Loop()
{
    return LOOP_END;
};
func void ZS_Controlled_End()
{
    AI_ContinueRoutine(self);
};


func void ZS_PsiDefense()
{
    Npc_PercEnable(self, PERC_ASSESSDAMAGE, ZS_ReactToDamage);    
    Npc_PercEnable(self, PERC_ASSESSSTOPMAGIC, B_StopPsiDefense);
    
    if(!Npc_HasBodyFlag(self, BS_FLAG_INTERRUPTABLE))
    {
        AI_StandUp(self);
    };
};
func int ZS_PsiDefense_Loop()
{
    if(!Npc_IsDead(self) && !Npc_IsInState(self, ZS_Unconscious) && !C_BodystateContains(self,BS_SWIM) &&  !C_BodystateContains(self,BS_DIVE))
    {
        AI_PlayAni(self, "S_CON_VICTIM");    
    };
    return LOOP_END;
};
func void ZS_PsiDefense_End()
{
};

func void B_StopPsiDefense()
{
    if(!Npc_IsDead(self) && !Npc_IsInState(self, ZS_Unconscious))
    {    
        Npc_ClearAIQueue(self);
        AI_StandUpQuick(self);
        //AI_StartState(self, ZS_AssessEnemy, 1, "");                
    };
};

func void ZS_PC_Controlling()
{
    //Npc_ClearAIQueue(self);
    //AI_StandUpQuick(self);

    //AI_RemoveWeapon(self);

    Npc_PercEnable(self, PERC_ASSESSMAGIC, B_AssessMagic);
    Npc_PercEnable(self, PERC_ASSESSDAMAGE, ZS_ReactToDamage);    
    
    Npc_PlayAni(self, "T_CONSHOOT_2_CONACTIVE");
};

func void ZS_PC_Controlling_Loop()
{    
//    Npc_PlayAni            (self, "S_CONACTIVE");
};

func void ZS_PC_Controlling_End()
{
    Npc_ClearAIQueue(self);        // alle AI Befehle entfernen
    AI_StandUp(self);        // normale Ani wieder abspielen
    AI_ContinueRoutine(self);        
};

INSTANCE Spell_Control(C_Spell_Proto)
{
    time_per_mana            = 500;
    spelltype                 = SPELL_BAD;
    canTurnDuringInvest        = FALSE;
    canChangeTargetDuringInvest = FALSE;
    targetCollectAlgo        = TARGET_COLLECT_FOCUS;
    targetCollectRange        = 1000;                    // 10m
    targetCollectType        = TARGET_TYPE_HUMANS;
};

INSTANCE Spell_Control_Data (C_SPELL_DATA)
{
    spellId = SPL_Control;
    spellType = SPELL_TYPE_CONTROL;
    spellEnergyType = ATR_MANA;
    spellIsInvestSpell = FALSE;
};

func int Spell_Logic_Control(var int manaInvested)
{
    // Can't control npcs with flag NPC_FLAG_IMMORTAL
    if(other.flags == NPC_FLAG_IMMORTAL)
     {
        return SPL_SENDSTOP; 
    };  

    // We can try to control only NPCs that are not currently controlled
    if(!Npc_IsInState(other, ZS_Controlled))
    {
        if(!Npc_IsInState(other, ZS_PsiDefense))
        {
            Npc_ClearAIQueue    (other);
            AI_StandUpQuick        (other);
            AI_StartState    (other, ZS_PsiDefense, 1, "");
        };             
         
        // Required mana invested to succesfully control an npc is npcs level * 3
        if(manaInvested <= (other.level * 3))
        {
            // We need to increase the spell level at least once for spell FXs to work
            if(Npc_GetActiveSpellLevel(self) <= 1)
            {
                return SPL_NEXTLEVEL;
            };
    
            return SPL_RECEIVEINVEST;
        }; 
    

        AI_StartState            (self, ZS_PC_CONTROLLING ,0 ,"");                
        Npc_SetActiveSpellInfo    (self, 1);
            
        return SPL_SENDCAST;
    }
    else 
    {
        return SPL_SENDSTOP;
    };    
    
    return SPL_DONTINVEST;
};

func void Spell_Cast_Control()
{
};