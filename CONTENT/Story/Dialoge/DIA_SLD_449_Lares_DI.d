// ************************************************************
// 			  				   EXIT 
// ************************************************************

INSTANCE DIA_Lares_DI_EXIT(C_INFO)
{
	npc			= SLD_449_Lares_DI;
	nr			= 999;
	condition	= DIA_Lares_DI_EXIT_Condition;
	information	= DIA_Lares_DI_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_Lares_DI_EXIT_Condition()
{
	return TRUE;
};
 
FUNC VOID DIA_Lares_DI_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 	  	  Hallo
// ************************************************************

INSTANCE DIA_Lares_DI_Hallo (C_INFO)
{
	npc			= SLD_449_Lares_DI;
	nr			= 2;
	condition	= DIA_Lares_DI_Hallo_Condition;
	information	= DIA_Lares_DI_Hallo_Info;
	permanent	 = 	TRUE;

	description = "What's up?";
};                       
FUNC INT DIA_Lares_DI_Hallo_Condition()
{
	if (Npc_IsDead(UndeadDragon) == FALSE)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Lares_DI_Hallo_Info()
{	
	AI_Output (other,self ,"DIA_Lares_DI_Hallo_15_00"); //How's it going?

	if (ORkSturmDI == TRUE)
	{
		AI_Output (self ,other,"DIA_Lares_DI_Hallo_09_01"); //Hurry up. The orcs will certainly come back.
	}
	else
	{
		AI_Output (self ,other,"DIA_Lares_DI_Hallo_09_02"); //Well. This grotto sure is spooky.
	};
};

// ************************************************************
// 	  	  Training
// ************************************************************

INSTANCE DIA_Lares_DI_Training (C_INFO)
{
	npc			= SLD_449_Lares_DI;
	nr			= 10;
	condition	= DIA_Lares_DI_Training_Condition;
	information	= DIA_Lares_DI_Training_Info;
	permanent	 = 	TRUE;

	description = "Teach me your abilities.";
};                       
FUNC INT DIA_Lares_DI_Training_Condition()
{
	if (Npc_IsDead(UndeadDragon) == FALSE)
	{
		return TRUE;
	};
};

FUNC VOID DIA_Lares_DI_Training_Info()
{	
	AI_Output (other,self ,"DIA_Lares_DI_Training_15_00"); //Teach me your abilities.
	AI_Output (self ,other,"DIA_Lares_DI_Training_09_01"); //No problem.
	
	Info_ClearChoices (DIA_Lares_DI_Training);
	Info_AddChoice	  (DIA_Lares_DI_Training, DIALOG_BACK, DIA_Lares_DI_Training_BACK);
	if (Npc_GetTalentSkill (hero, NPC_TALENT_SNEAK) == FALSE)
	{
		Info_AddChoice		(DIA_Lares_DI_Training, "Learn to sneak"	,DIA_Lares_DI_Training_SNEAK);
	};
	Info_AddChoice		(DIA_Lares_DI_Training, B_BuildLearnString(PRINT_LearnDEX1			, B_GetLearnCostAttribute(other, ATR_DEXTERITY))		,DIA_Lares_DI_Training_DEX_1);
	Info_AddChoice		(DIA_Lares_DI_Training, B_BuildLearnString(PRINT_LearnDEX5			, B_GetLearnCostAttribute(other, ATR_DEXTERITY)*5)		,DIA_Lares_DI_Training_DEX_5);
	Info_AddChoice		(DIA_Lares_DI_Training, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(other, NPC_TALENT_1H, 1))			,DIA_Lares_DI_Training_1H_1);
	Info_AddChoice		(DIA_Lares_DI_Training, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent(other, NPC_TALENT_1H, 5))			,DIA_Lares_DI_Training_1H_5);
	
};

FUNC VOID DIA_Lares_DI_Training_1H_1 ()
{
	if (B_TeachFightTalentPercent (self, other, NPC_TALENT_1H, 1, 100))
	{
			AI_Output (self ,other,"DIA_Lares_DI_Training_1H_1_09_00"); //You have to bend your front leg a bit and keep the back one straight - then you have a firmer stance.
	};
	Info_ClearChoices (DIA_Lares_DI_Training);
	Info_AddChoice	  (DIA_Lares_DI_Training, DIALOG_BACK, DIA_Lares_DI_Training_BACK);
	if (Npc_GetTalentSkill (hero, NPC_TALENT_SNEAK) == FALSE)
	{
		Info_AddChoice		(DIA_Lares_DI_Training, "Learn to sneak"	,DIA_Lares_DI_Training_SNEAK);
	};
	Info_AddChoice		(DIA_Lares_DI_Training, B_BuildLearnString(PRINT_LearnDEX1			, B_GetLearnCostAttribute(other, ATR_DEXTERITY))		,DIA_Lares_DI_Training_DEX_1);
	Info_AddChoice		(DIA_Lares_DI_Training, B_BuildLearnString(PRINT_LearnDEX5			, B_GetLearnCostAttribute(other, ATR_DEXTERITY)*5)		,DIA_Lares_DI_Training_DEX_5);
	Info_AddChoice		(DIA_Lares_DI_Training, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(other, NPC_TALENT_1H, 1))			,DIA_Lares_DI_Training_1H_1);
	Info_AddChoice		(DIA_Lares_DI_Training, B_BuildLearnString(PRINT_Learn1h5		, B_GetLearnCostTalent(other, NPC_TALENT_1H, 5))			,DIA_Lares_DI_Training_1H_5);
	
};

FUNC VOID DIA_Lares_DI_Training_1H_5 ()
{
	if (B_TeachFightTalentPercent (self, other, NPC_TALENT_1H, 5, 100))
	{
			AI_Output (self ,other,"DIA_Lares_DI_Training_1H_5_09_00"); //Keep your hips flexible, that'll help you dodge a counterattack.
	};
	Info_ClearChoices (DIA_Lares_DI_Training);
	Info_AddChoice	  (DIA_Lares_DI_Training, DIALOG_BACK, DIA_Lares_DI_Training_BACK);
	if (Npc_GetTalentSkill (hero, NPC_TALENT_SNEAK) == FALSE)
	{
		Info_AddChoice		(DIA_Lares_DI_Training, "Learn to sneak"	,DIA_Lares_DI_Training_SNEAK);
	};
	Info_AddChoice		(DIA_Lares_DI_Training, B_BuildLearnString(PRINT_LearnDEX1			, B_GetLearnCostAttribute(other, ATR_DEXTERITY))		,DIA_Lares_DI_Training_DEX_1);
	Info_AddChoice		(DIA_Lares_DI_Training, B_BuildLearnString(PRINT_LearnDEX5			, B_GetLearnCostAttribute(other, ATR_DEXTERITY)*5)		,DIA_Lares_DI_Training_DEX_5);
	Info_AddChoice		(DIA_Lares_DI_Training, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(other, NPC_TALENT_1H, 1))			,DIA_Lares_DI_Training_1H_1);
	Info_AddChoice		(DIA_Lares_DI_Training, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent(other, NPC_TALENT_1H, 5))			,DIA_Lares_DI_Training_1H_5);
	
};


//***************************************************************************
// DEX 1
//***************************************************************************

func void DIA_Lares_DI_Training_DEX_1 ()
{
	if (B_TeachAttributePoints (self, other, ATR_DEXTERITY, 1, T_MED))
	{
		AI_Output (self ,other,"DIA_Lares_DI_Training_DEX_1_09_00"); //The upper half of your body has to act in harmony with the rest.
	};

	Info_ClearChoices (DIA_Lares_DI_Training);
	Info_AddChoice	  (DIA_Lares_DI_Training, DIALOG_BACK, DIA_Lares_DI_Training_BACK);
	if (Npc_GetTalentSkill (hero, NPC_TALENT_SNEAK) == FALSE)
	{
		Info_AddChoice		(DIA_Lares_DI_Training, "Learn to sneak"	,DIA_Lares_DI_Training_SNEAK);
	};
	Info_AddChoice		(DIA_Lares_DI_Training, B_BuildLearnString(PRINT_LearnDEX1			, B_GetLearnCostAttribute(other, ATR_DEXTERITY))		,DIA_Lares_DI_Training_DEX_1);
	Info_AddChoice		(DIA_Lares_DI_Training, B_BuildLearnString(PRINT_LearnDEX5			, B_GetLearnCostAttribute(other, ATR_DEXTERITY)*5)		,DIA_Lares_DI_Training_DEX_5);
	Info_AddChoice		(DIA_Lares_DI_Training, B_BuildLearnString(PRINT_Learn1h1		, B_GetLearnCostTalent(other, NPC_TALENT_1H, 1))			,DIA_Lares_DI_Training_1H_1);
	Info_AddChoice		(DIA_Lares_DI_Training, B_BuildLearnString(PRINT_Learn1h5		, B_GetLearnCostTalent(other, NPC_TALENT_1H, 5))			,DIA_Lares_DI_Training_1H_5);
	
};

//***************************************************************************
// DEX 5
//***************************************************************************

func void DIA_Lares_DI_Training_DEX_5 ()
{
	if (B_TeachAttributePoints (self, other, ATR_DEXTERITY, 5, T_MED))
	{
		AI_Output (self ,other,"DIA_Lares_DI_Training_DEX_5_09_00"); //You always have to watch your footing.
	};

	Info_ClearChoices (DIA_Lares_DI_Training);
	Info_AddChoice	  (DIA_Lares_DI_Training, DIALOG_BACK, DIA_Lares_DI_Training_BACK);
	if (Npc_GetTalentSkill (hero, NPC_TALENT_SNEAK) == FALSE)
	{
		Info_AddChoice		(DIA_Lares_DI_Training, "Learn to sneak"	,DIA_Lares_DI_Training_SNEAK);
	};
	Info_AddChoice		(DIA_Lares_DI_Training, B_BuildLearnString(PRINT_LearnDEX1			, B_GetLearnCostAttribute(other, ATR_DEXTERITY))		,DIA_Lares_DI_Training_DEX_1);
	Info_AddChoice		(DIA_Lares_DI_Training, B_BuildLearnString(PRINT_LearnDEX5			, B_GetLearnCostAttribute(other, ATR_DEXTERITY)*5)		,DIA_Lares_DI_Training_DEX_5);
	Info_AddChoice		(DIA_Lares_DI_Training, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(other, NPC_TALENT_1H, 1))			,DIA_Lares_DI_Training_1H_1);
	Info_AddChoice		(DIA_Lares_DI_Training, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent(other, NPC_TALENT_1H, 5))			,DIA_Lares_DI_Training_1H_5);
	
};

// ------ SNEAK ------
func void DIA_Lares_DI_Training_SNEAK ()
{
	if (B_TeachThiefTalent (self, other, NPC_TALENT_SNEAK))
	{
		AI_Output (self ,other,"DIA_Lares_DI_Training_SNEAK_09_00"); //Always use the entire sole of your foot when sneaking.
	};

	Info_ClearChoices (DIA_Lares_DI_Training);
	Info_AddChoice	  (DIA_Lares_DI_Training, DIALOG_BACK, DIA_Lares_DI_Training_BACK);
	if (Npc_GetTalentSkill (hero, NPC_TALENT_SNEAK) == FALSE)
	{
		Info_AddChoice		(DIA_Lares_DI_Training, "Learn to sneak"	,DIA_Lares_DI_Training_SNEAK);
	};
	Info_AddChoice		(DIA_Lares_DI_Training, B_BuildLearnString(PRINT_LearnDEX1			, B_GetLearnCostAttribute(other, ATR_DEXTERITY))		,DIA_Lares_DI_Training_DEX_1);
	Info_AddChoice		(DIA_Lares_DI_Training, B_BuildLearnString(PRINT_LearnDEX5			, B_GetLearnCostAttribute(other, ATR_DEXTERITY)*5)		,DIA_Lares_DI_Training_DEX_5);
	Info_AddChoice		(DIA_Lares_DI_Training, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(other, NPC_TALENT_1H, 1))			,DIA_Lares_DI_Training_1H_1);
	Info_AddChoice		(DIA_Lares_DI_Training, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent(other, NPC_TALENT_1H, 5))			,DIA_Lares_DI_Training_1H_5);
	
};

// ------ Back ------
func void DIA_Lares_DI_Training_BACK ()
{
	Info_ClearChoices (DIA_Lares_DI_Training);
};

// ************************************************************
// 	  	  UndeadDragonDead
// ************************************************************

INSTANCE DIA_Lares_DI_UndeadDragonDead (C_INFO)
{
	npc			= SLD_449_Lares_DI;
	nr			= 5;
	condition	= DIA_Lares_DI_UndeadDragonDead_Condition;
	information	= DIA_Lares_DI_UndeadDragonDead_Info;
	permanent	 = 	TRUE;

	description = "You don't really seem to care about all this.";
};                       
FUNC INT DIA_Lares_DI_UndeadDragonDead_Condition()
{
	if (Npc_IsDead(UndeadDragon))
	{
		return TRUE;
	};
};

var int DIA_Lares_DI_UndeadDragonDead_OneTime;
FUNC VOID DIA_Lares_DI_UndeadDragonDead_Info()
{	
	AI_Output (other,self ,"DIA_Lares_DI_UndeadDragonDead_15_00"); //You don't really seem to care about all this.
	AI_Output (self ,other,"DIA_Lares_DI_UndeadDragonDead_09_01"); //Ah, you know, I thought you'd make it.

	if (DIA_Lares_DI_UndeadDragonDead_OneTime == FALSE )
	{
		AI_Output (other,self ,"DIA_Lares_DI_UndeadDragonDead_15_02"); //What are you going to do now?
		AI_Output (self ,other,"DIA_Lares_DI_UndeadDragonDead_09_03"); //No idea. I guess I'll follow you for now.
		
		DIA_Lares_DI_UndeadDragonDead_OneTime = TRUE;
	};
	AI_StopProcessInfos (self);
};
