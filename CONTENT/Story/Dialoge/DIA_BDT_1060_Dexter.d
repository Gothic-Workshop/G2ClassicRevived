// ************************************************************
// 			  				   EXIT 
// ************************************************************
INSTANCE DIA_Dexter_EXIT   (C_INFO)
{
	npc         = BDT_1060_Dexter;
	nr          = 999;
	condition   = DIA_Dexter_EXIT_Condition;
	information = DIA_Dexter_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Dexter_EXIT_Condition()
{
	return TRUE;
};
FUNC VOID DIA_Dexter_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
// ************************************************************
// 			  Hallo
// ************************************************************
INSTANCE DIA_Dexter_Hallo   (C_INFO)
{
	npc         = BDT_1060_Dexter;
	nr          = 1;
	condition   = DIA_Dexter_Hallo_Condition;
	information = DIA_Dexter_Hallo_Info;
	permanent   = FALSE;
	important 	= TRUE;
};
FUNC INT DIA_Dexter_Hallo_Condition()
{	
	if (Knows_Dexter == TRUE)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Dexter_Hallo_Info()
{
	AI_Output (self, other, "DIA_Dexter_Hallo_09_00");//Look who's here. The great emancipator. Well, hero - what are you doing here?
	//AI_Output (other, self, "DIA_Dexter_Hallo_15_01");//I'm looking for a few answers.
	
	if (MIS_Steckbriefe == LOG_RUNNING)//ADDON
	{
		AI_Output (other, self, "DIA_Dexter_Hallo_15_02");//SOMEONE is passing around pieces of paper with my face on them. SOMEONE told me that it's you.
		AI_Output (self, other, "DIA_Dexter_Hallo_09_03");//Somebody talks too much.
		
		AI_Output (self, other, "DIA_Addon_Dexter_Hallo_09_04");//But you're right. I distributed those wanted posters. And, lo and behold - here you are.
		
		MIS_Steckbriefe = LOG_SUCCESS;
		B_GivePlayerXP (XP_Ambient);
	}
	else // (Bdt13_Dexter_verraten == TRUE) //Gothic2
	{
		//ADDON>
		AI_Output (self, other, "DIA_Addon_Dexter_Hallo_09_00");//I never thought you'd come here voluntarily.
		AI_Output (other, self, "DIA_Addon_Dexter_Hallo_15_01");//What do you mean by that?
		AI_Output (self, other, "DIA_Addon_Dexter_Hallo_09_02");//I mean that I've been looking for you. Haven't you seen any of my wanted posters?
		AI_Output (self, other, "DIA_Addon_Dexter_Hallo_09_03");//They all bear YOUR mug. Oh yes... you're very much wanted. Didn't you know that?
		//ADDON<
	};

	AI_Output (other, self, "DIA_Addon_Dexter_Hallo_15_05");//So what do you want from me?
	AI_Output (self, other, "DIA_Addon_Dexter_Hallo_09_06");//Me? Nothing whatsoever. But my boss is hell-bent on seeing you dead.
	AI_Output (self, other, "DIA_Addon_Dexter_Hallo_09_07");//So he wants me to find you and bring him your head.
};

///////////////////////////////////////////////////////////////////////
//	Info Boss
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Dexter_Boss		(C_INFO)
{
	npc		 = 	BDT_1060_Dexter;
	nr		 = 	3;
	condition	 = 	DIA_Addon_Dexter_Boss_Condition;
	information	 = 	DIA_Addon_Dexter_Boss_Info;

	description	 = 	"Your boss? Who's that supposed to be?";
};

func int DIA_Addon_Dexter_Boss_Condition ()
{
	if (Npc_KnowsInfo (other,DIA_Dexter_Hallo) == TRUE)
	{
		return TRUE;
	};
};

func void DIA_Addon_Dexter_Boss_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Dexter_Boss_15_00"); //Your boss? Who's that supposed to be?
	AI_Output	(self, other, "DIA_Addon_Dexter_Boss_09_01"); //(laughs) Wouldn't you just love to know that? Yes, I can imagine.
	//AI_Output	(self, other, "DIA_Addon_Dexter_Boss_09_02"); //(serious) I don't see any reason why I should tell you.
		AI_Output (self, other, "DIA_Dexter_Hallo_09_04");//But it's true. I gave my boys the wanted posters. I didn't have any other choice.
		AI_Output (self, other, "DIA_Dexter_Hallo_09_05");//When I tried to escape from the Valley of Mines, the soldiers discovered me and drove me into a trap.
		AI_Output (self, other, "DIA_Dexter_Hallo_09_06");//I thought I was done for, but then suddenly this.. figure appeared out of the darkness.
		AI_Output (self, other, "DIA_Dexter_Hallo_09_07");//He wore a black robe with a hood and a mask over his face. And he spoke with a voice that was altogether not human.
		AI_Output (self, other, "DIA_Dexter_Hallo_09_08");//But he offered me his help. He brought me out of the valley and offered me a thousand gold pieces for your head.
		AI_Output (self, other, "DIA_Dexter_Hallo_09_09");//Hey, what was I supposed to do? If I turned him down, he'd have killed me.

		B_LogEntry (Topic_Bandits,"Dexter distributed the wanted posters. Guys in black hoods had ordered him to do it.");
};


// ************************************************************
// 			Wo
// ************************************************************
INSTANCE DIA_Dexter_Wo   (C_INFO)
{
	npc         = BDT_1060_Dexter;
	nr          = 3;
	condition   = DIA_Dexter_Wo_Condition;
	information = DIA_Dexter_Wo_Info;
	permanent   = FALSE;
	description = "Where can I find this man?";
};
FUNC INT DIA_Dexter_Wo_Condition()
{	
	if (Npc_KnowsInfo (other,DIA_Addon_Dexter_Boss) == TRUE)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Dexter_Wo_Info()
{
	AI_Output (other, self, "DIA_Dexter_Wo_15_00");//Where can I find this man?
	
	if (Kapitel < 3)
	{
		AI_Output (self, other, "DIA_Dexter_Wo_09_01");//I think he's somewhere in the Valley of Mines.
	}
	else
	{
		AI_Output (self, other, "DIA_Dexter_Wo_09_02");//The guy is here! And he's not alone. There's a whole mob of those boys on the go, everywhere! And they're looking for you.
		
		Wld_InsertNpc		(CastlemineDMT01, "FP_STAND_DEMENTOR_DEXTER_001");
		Wld_InsertNpc		(CastlemineDMT02, "FP_STAND_DEMENTOR_DEXTER_002");
		Wld_InsertNpc		(CastlemineDMT03, "FP_STAND_DEMENTOR_DEXTER_003");
		Wld_InsertNpc		(CastlemineDMT04, "FP_STAND_DEMENTOR_DEXTER_004");
	};
};

// ************************************************************
// 			Glaube 
// ************************************************************
INSTANCE DIA_Dexter_Glaube   (C_INFO)
{
	npc         = BDT_1060_Dexter;
	nr          = 5;
	condition   = DIA_Dexter_Glaube_Condition;
	information = DIA_Dexter_Glaube_Info;
	permanent   = FALSE;
	description = "I don't believe a word you're saying.";
};
FUNC INT DIA_Dexter_Glaube_Condition()
{	
	if (Npc_KnowsInfo (other, DIA_Dexter_Wo) == TRUE)
	&& (Kapitel < 3)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Dexter_Glaube_Info()
{
	AI_Output (other, self, "DIA_Dexter_Glaube_15_00");//I don't believe a word you're saying.
	AI_Output (self, other, "DIA_Dexter_Glaube_09_01");//Hey, it's true. I swear on my mother's grave!
};

// ************************************************************
// 			Vor 
// ************************************************************
INSTANCE DIA_Dexter_Vor   (C_INFO)
{
	npc         = BDT_1060_Dexter;
	nr          = 5;
	condition   = DIA_Dexter_Vor_Condition;
	information = DIA_Dexter_Vor_Info;
	permanent   = FALSE;
	description = "And what do you intend to do now? Kill me?";
};
FUNC INT DIA_Dexter_Vor_Condition()
{	
	if (Npc_KnowsInfo (other,DIA_Addon_Dexter_Boss) == TRUE)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Dexter_Vor_Info()
{
	AI_Output (other, self, "DIA_Dexter_Vor_15_00");//And what do you intend to do now? Kill me?
	AI_Output (self, other, "DIA_Dexter_Vor_09_01");//Yeah. But you set us all free. That's why I'm giving you another chance. Beat it - disappear, make yourself invisible. Go and don't cross my path again.
	AI_Output (self, other, "DIA_Addon_Dexter_Vor_09_02");//(menacing) It's better for you if you leave now.
	AI_Output (self, other, "DIA_Dexter_Vor_09_02");//If I see you around here again, I won't hesitate to kill you.
	Dexter_NoMoreSmallTalk = TRUE;
	AI_StopProcessInfos (self);
};
// ************************************************************
// 			Kill
// ************************************************************
INSTANCE DIA_Dexter_Kill   (C_INFO)
{
	npc         = BDT_1060_Dexter;
	nr          = 2;
	condition   = DIA_Dexter_Kill_Condition;
	information = DIA_Dexter_Kill_Info;
	permanent   = FALSE;
	important	= TRUE;
};
FUNC INT DIA_Dexter_Kill_Condition()
{	
	if Npc_IsInState (self, ZS_Talk)
	&& ((Dexter_NoMoreSmallTalk == TRUE)
	|| (Knows_Dexter == FALSE)) 
	{
		return TRUE;
	};
};
FUNC VOID DIA_Dexter_Kill_Info()
{
	if (Knows_Dexter == TRUE)
	{
		AI_Output (self, other, "DIA_Addon_Dexter_Add_09_02"); //(attacking) You asked for this...
	}
	else
	{
		AI_Output (self, other, "DIA_Dexter_Kill_09_01");//Oh man, you'd have done better not to show up here. You're the wrong man in the wrong place.
	};
	
	MIS_Steckbriefe = LOG_OBSOLETE;
	B_CheckLog();
	Info_ClearChoices	(DIA_Dexter_Kill);
	Info_AddChoice	(DIA_Dexter_Kill, DIALOG_ENDE, DIA_Dexter_Kill_ENDE );
};
func void DIA_Dexter_Kill_ENDE ()
{
	AI_StopProcessInfos (self);
	B_Attack (self, other, AR_SuddenEnemyInferno, 1);
};


// ************************************************************
// 			Mein Kopf? 
// ************************************************************
INSTANCE DIA_Dexter_Kopf (C_INFO)
{
	npc         = BDT_1060_Dexter;
	nr          = 5;
	condition   = DIA_Dexter_Kopf_Condition;
	information = DIA_Dexter_Kopf_Info;
	permanent   = FALSE;
	description = "You want my head? Come and get it, then!";
};
FUNC INT DIA_Dexter_Kopf_Condition()
{	
	if (Npc_KnowsInfo (other, DIA_Dexter_Vor))
	{
		return TRUE;
	};
};
FUNC VOID DIA_Dexter_Kopf_Info()
{
	AI_Output (other, self, "DIA_Addon_Dexter_Add_15_00"); //You want my head? Come and get it, then!
	AI_Output (self, other, "DIA_Addon_Dexter_Add_09_01"); //(attacking) If that's what you want...

	DIA_Dexter_Kill_ENDE();
};


// ************************************************************
// 			  				PICK POCKET
// ************************************************************

INSTANCE DIA_Dexter_PICKPOCKET (C_INFO)
{
	npc			= BDT_1060_Dexter;
	nr			= 900;
	condition	= DIA_Dexter_PICKPOCKET_Condition;
	information	= DIA_Dexter_PICKPOCKET_Info;
	permanent	= TRUE;
	description = Pickpocket_100;
};                       

FUNC INT DIA_Dexter_PICKPOCKET_Condition()
{
	C_Beklauen (96, 370);
};
 
FUNC VOID DIA_Dexter_PICKPOCKET_Info()
{	
	Info_ClearChoices	(DIA_Dexter_PICKPOCKET);
	Info_AddChoice		(DIA_Dexter_PICKPOCKET, DIALOG_BACK 		,DIA_Dexter_PICKPOCKET_BACK);
	Info_AddChoice		(DIA_Dexter_PICKPOCKET, DIALOG_PICKPOCKET	,DIA_Dexter_PICKPOCKET_DoIt);
};

func void DIA_Dexter_PICKPOCKET_DoIt()
{
	B_Beklauen ();
	Info_ClearChoices (DIA_Dexter_PICKPOCKET);
};
	
func void DIA_Dexter_PICKPOCKET_BACK()
{
	Info_ClearChoices (DIA_Dexter_PICKPOCKET);
};



