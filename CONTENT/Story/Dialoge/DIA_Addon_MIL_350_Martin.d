///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Addon_Martin_EXIT   (C_INFO)
{
	npc         = Mil_350_Addon_Martin;
	nr          = 999;
	condition   = DIA_Addon_Martin_EXIT_Condition;
	information = DIA_Addon_Martin_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Addon_Martin_EXIT_Condition()
{
	return TRUE;
};
FUNC VOID DIA_Addon_Martin_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
// ************************************************************
// 			  				PICK POCKET
// ************************************************************

INSTANCE DIA_Addon_Martin_PICKPOCKET (C_INFO)
{
	npc			= Mil_350_Addon_Martin;
	nr			= 900;
	condition	= DIA_Addon_Martin_PICKPOCKET_Condition;
	information	= DIA_Addon_Martin_PICKPOCKET_Info;
	permanent	= TRUE;
	description = Pickpocket_60;
};                       

FUNC INT DIA_Addon_Martin_PICKPOCKET_Condition()
{
	C_Beklauen (65, 77);
};
 
FUNC VOID DIA_Addon_Martin_PICKPOCKET_Info()
{	
	Info_ClearChoices	(DIA_Addon_Martin_PICKPOCKET);
	Info_AddChoice		(DIA_Addon_Martin_PICKPOCKET, DIALOG_BACK 		,DIA_Addon_Martin_PICKPOCKET_BACK);
	Info_AddChoice		(DIA_Addon_Martin_PICKPOCKET, DIALOG_PICKPOCKET	,DIA_Addon_Martin_PICKPOCKET_DoIt);
};

func void DIA_Addon_Martin_PICKPOCKET_DoIt()
{
	B_Beklauen ();
	Info_ClearChoices (DIA_Addon_Martin_PICKPOCKET);
};
	
func void DIA_Addon_Martin_PICKPOCKET_BACK()
{
	Info_ClearChoices (DIA_Addon_Martin_PICKPOCKET);
};

///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Martin_Hallo		(C_INFO)
{
	npc		 = 	Mil_350_Addon_Martin;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Martin_Hallo_Condition;
	information	 = 	DIA_Addon_Martin_Hallo_Info;
	
	important	 = 	TRUE;
};

func int DIA_Addon_Martin_Hallo_Condition ()
{
	if (Npc_GetDistToWP(self,"NW_CITY_PALCAMP_15")<1000)
	&& (self.aivar[AIV_TalkedToPlayer] == FALSE)
	&& (other.guild != GIL_MIL)
	&& (other.guild != GIL_PAL)
	{
		return TRUE;
	};
};

func void DIA_Addon_Martin_Hallo_Info ()
{
	AI_Output	(self, other, "DIA_Addon_Martin_Hallo_07_00"); //Hey, you. You have no business up here. Only paladins and those of us in the militia have access here.
};


///////////////////////////////////////////////////////////////////////
//	Info WasMachstDu
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Martin_WasMachstDu		(C_INFO)
{
	npc		 = 	Mil_350_Addon_Martin;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Martin_WasMachstDu_Condition;
	information	 = 	DIA_Addon_Martin_WasMachstDu_Info;

	description	 = 	"What's up here then?";
};

func int DIA_Addon_Martin_WasMachstDu_Condition ()
{
	if (Npc_GetDistToWP(self,"NW_CITY_PALCAMP_15")<1000)
		{
			return TRUE;
		};
};

func void DIA_Addon_Martin_WasMachstDu_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Martin_WasMachstDu_15_00"); //What's up here then?
	AI_Output	(self, other, "DIA_Addon_Martin_WasMachstDu_07_01"); //This is the provisions store of the royal guard of the paladins.
	
	if (other.guild == GIL_NONE)
	{
		AI_Output	(self, other, "DIA_Addon_Martin_WasMachstDu_07_02"); //I am the provisions master here, and I am responsible for seeing to it that none of the paladins' stuff goes astray, and you are not wanted here.
		AI_Output	(self, other, "DIA_Addon_Martin_WasMachstDu_07_03"); //So keep your hands to yourself or I'll chop them off.
	};
};

///////////////////////////////////////////////////////////////////////
//	Info Trade
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Martin_PreTrade		(C_INFO)
{
	npc		 = 	Mil_350_Addon_Martin;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Martin_PreTrade_Condition;
	information	 = 	DIA_Addon_Martin_PreTrade_Info;

	description	 = 	"Can you sell me any of the paladins' stuff?";
};

func int DIA_Addon_Martin_PreTrade_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Martin_WasMachstDu))
		{
			return TRUE;
		};
};

func void DIA_Addon_Martin_PreTrade_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Martin_PreTrade_15_00"); //Can you sell me any of the paladins' stuff?
	AI_Output	(self, other, "DIA_Addon_Martin_PreTrade_07_01"); //You want to buy? Mh. Let's say that if you could compensate me for the trouble that will arise from the paladins' things wandering off, then we might be able to do business.
	AI_Output	(other, self, "DIA_Addon_Martin_PreTrade_15_02"); //Does that happen often, things going astray?
	AI_Output	(self, other, "DIA_Addon_Martin_PreTrade_07_03"); //As long as the provisions master says that everything is right, no.
	AI_Output	(other, self, "DIA_Addon_Martin_PreTrade_15_04"); //I see.
};

///////////////////////////////////////////////////////////////////////
//	Info Farim
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Martin_Farim		(C_INFO)
{
	npc		 = 	Mil_350_Addon_Martin;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Martin_Farim_Condition;
	information	 = 	DIA_Addon_Martin_Farim_Info;

	description	 = 	"Farim the fisherman has problems with the militia.";
};

func int DIA_Addon_Martin_Farim_Condition ()
{
	if (MIS_Addon_Farim_PaladinFisch == LOG_RUNNING)
	&& (Npc_KnowsInfo (other, DIA_Addon_Martin_PreTrade))
		{
			return TRUE;
		};
};

func void DIA_Addon_Martin_Farim_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Martin_Farim_15_00"); //Farim the fisherman has problems with the militia. The boys are constantly stealing from him.
	AI_Output	(self, other, "DIA_Addon_Martin_Farim_07_01"); //And what do I have to do with it?
	AI_Output	(other, self, "DIA_Addon_Martin_Farim_15_02"); //You have a certain amount of influence up here with the paladins.
	AI_Output	(other, self, "DIA_Addon_Martin_Farim_15_03"); //Farim needs your protection. He's willing to give you a part of his catch for it.
	AI_Output	(self, other, "DIA_Addon_Martin_Farim_07_04"); //I see what you mean.
	AI_Output	(self, other, "DIA_Addon_Martin_Farim_07_05"); //(disparagingly) Fish! As if I didn't have enough crap to deal with.
	AI_Output	(self, other, "DIA_Addon_Martin_Farim_07_06"); //Tell your pal he should come to me and tell me exactly what is up with the militia.
	AI_Output	(self, other, "DIA_Addon_Martin_Farim_07_07"); //I'll take care of it.
	
	B_LogEntry (TOPIC_Addon_FarimsFish,	"Martin the provisions master will take care of the matter."); 

	Martin_KnowsFarim = TRUE;
	B_GivePlayerXP (XP_Addon_FarimSchutz);
};

///////////////////////////////////////////////////////////////////////
//	Info Trade
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Martin_Trade		(C_INFO)
{
	npc		 = 	Mil_350_Addon_Martin;
	nr		 = 	80;
	condition	 = 	DIA_Addon_Martin_Trade_Condition;
	information	 = 	DIA_Addon_Martin_Trade_Info;
	Trade		 = 	TRUE;
	permanent	 = 	TRUE;

	description	 = 	"What do you have to offer?";
};

func int DIA_Addon_Martin_Trade_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Martin_PreTrade))
		{
			return TRUE;
		};
};
var int DIA_Addon_Martin_Trade_OneTime;
func void DIA_Addon_Martin_Trade_Info ()
{
	if (DIA_Addon_Martin_Trade_OneTime == FALSE)
	{
		Log_CreateTopic	(TOPIC_CityTrader, LOG_NOTE);
		B_LogEntry (TOPIC_CityTrader, LogText_Addon_MartinTrade); 
		DIA_Addon_Martin_Trade_OneTime = TRUE;
	};
	
	
	AI_Output	(other, self, "DIA_Addon_Martin_Trade_15_00"); //What do you have to offer?
	B_GiveTradeInv (self);
	AI_Output	(self, other, "DIA_Addon_Martin_Trade_07_01"); //Then pay attention.
};

// ********************************************************************
// 							Banditen + Waffen
// ********************************************************************
///////////////////////////////////////////////////////////////////////
//	From Vatras
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Martin_FromVatras (C_INFO)
{
	npc		 	= Mil_350_Addon_Martin;
	nr		 	= 5;
	condition	= DIA_Addon_Martin_FromVatras_Condition;
	information	= DIA_Addon_Martin_FromVatras_Info;

	description	= "You're looking for the man who is selling weapons to the bandits?";
};
func int DIA_Addon_Martin_FromVatras_Condition ()
{
	if (Vatras_ToMartin == TRUE)
	{
		return TRUE;
	};
};
func void DIA_Addon_Martin_FromVatras_Info ()
{
	AI_Output (other, self, "DIA_Addon_Martin_FromVatras_15_00"); //You're looking for the man who is selling weapons to the bandits?
	AI_Output (self, other, "DIA_Addon_Martin_FromVatras_07_01"); //Says who?
	AI_Output (other, self, "DIA_Addon_Martin_FromVatras_15_02"); //Says Vatras.
	AI_Output (self, other, "DIA_Addon_Martin_FromVatras_07_03"); //Oh. What do you know about it?
	AI_Output (other, self, "DIA_Addon_Martin_FromVatras_15_04"); //Not much, but I could find out more.
	AI_Output (self, other, "DIA_Addon_Martin_FromVatras_07_05"); //(catching on) Ah, is that so...
};	
///////////////////////////////////////////////////////////////////////
//	Tell Me
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Martin_TellAll (C_INFO)
{
	npc		 	= Mil_350_Addon_Martin;
	nr		 	= 5;
	condition	= DIA_Addon_Martin_TellAll_Condition;
	information	= DIA_Addon_Martin_TellAll_Info;

	description	= "Tell me, what do you know about the weapons dealer?";
};
func int DIA_Addon_Martin_TellAll_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Martin_FromVatras))
	{
		return TRUE;
	};
};
func void DIA_Addon_Martin_TellAll_Info ()
{
	AI_Output (other, self, "DIA_Addon_Martin_TellAll_15_00"); //Tell me, what do you know about the weapons dealer?
	AI_Output (self, other, "DIA_Addon_Martin_TellAll_07_01"); //Listen. We know that an influential citizen in the upper quarter must be behind it.
	AI_Output (self, other, "DIA_Addon_Martin_TellAll_07_02"); //And some of the weapons are even supposed to have come from the militia's supplies.
	AI_Output (self, other, "DIA_Addon_Martin_TellAll_07_03"); //But we still don't know exactly who is behind it.
	AI_Output (self, other, "DIA_Addon_Martin_TellAll_07_04"); //If you have enough guts to take on a group of at least five bandits, maybe you can find out...
	B_LogEntry (TOPIC_Addon_BanditTrader,"According to Martin, the weapons dealer is an influential citizen of the upper quarter."); 
};	
///////////////////////////////////////////////////////////////////////
//	About Bandits
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Martin_AboutBandits (C_INFO)
{
	npc		 	= Mil_350_Addon_Martin;
	nr		 	= 5;
	condition	= DIA_Addon_Martin_AboutBandits_Condition;
	information	= DIA_Addon_Martin_AboutBandits_Info;

	description	= "What ABOUT the bandits?";
};
func int DIA_Addon_Martin_AboutBandits_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Martin_TellAll))
	{
		return TRUE;
	};
};
func void DIA_Addon_Martin_AboutBandits_Info ()
{
	AI_Output (other, self, "DIA_Addon_Martin_AboutBandits_15_00"); //What ABOUT the bandits?
	AI_Output (self, other, "DIA_Addon_Martin_AboutBandits_07_01"); //We know that the bandits are currently blockading the roads that connect the farmers to the city.
	AI_Output (self, other, "DIA_Addon_Martin_AboutBandits_07_02"); //Besides that, I know that there must have been a weapons delivery in the last few days.
	AI_Output (self, other, "DIA_Addon_Martin_AboutBandits_07_03"); //Maybe some clues to uncover the weapons dealer can be found with the bandits.
	//AI_Output (self, other, "DIA_Addon_Martin_AboutBandits_07_04"); //Ich werd sehen, was ich tun kann
	
	MIS_Martin_FindTheBanditTrader = LOG_RUNNING;
	B_LogEntry (TOPIC_Addon_BanditTrader,"The bandits are blockading the roads between the seaport and the farms. Maybe there I can find a clue that will expose the weapons dealer."); 
};	

///////////////////////////////////////////////////////////////////////
//	Info Fernando
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Martin_Fernando		(C_INFO)
{
	npc		 = 	Mil_350_Addon_Martin;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Martin_Fernando_Condition;
	information	 = 	DIA_Addon_Martin_Fernando_Info;
	permanent	 = 	TRUE;

	description	 = 	"About the weapons dealer...";
};

func int DIA_Addon_Martin_Fernando_Condition ()
{
	if (MIs_Martin_FindTheBanditTrader == LOG_RUNNING)
		{
			return TRUE;
		};
};

var int Martin_IrrlichtHint;

func void DIA_Addon_Martin_Fernando_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Martin_Fernando_15_00"); //Eh, about the weapons dealer...

	if 	(Npc_HasItems (other,ItMw_Addon_BanditTrader))
	||(Npc_HasItems (other,ItRi_Addon_BanditTrader))
	||((Npc_HasItems (other,ItWr_Addon_BanditTrader))&&(BanditTrader_Lieferung_Gelesen == TRUE))
	||(Fernando_HatsZugegeben == TRUE)
	{
		AI_Output	(self, other, "DIA_Addon_Martin_Fernando_07_01"); //Show me what you have.
	
		var int FernandoHints;
		FernandoHints = 0;
		
		if 	(
			(Npc_HasItems (other,ItMw_Addon_BanditTrader))
			||(Npc_HasItems (other,ItRi_Addon_BanditTrader))
			||((Npc_HasItems (other,ItWr_Addon_BanditTrader))&&(BanditTrader_Lieferung_Gelesen == TRUE))
			)
			{
				
				if (Npc_HasItems (other,ItMw_Addon_BanditTrader))
				{
					AI_Output	(other, self, "DIA_Addon_Martin_Fernando_15_02"); //I found this rapier with the bandits. The letter 'F' is carved on the pommel.
					FernandoHints = (FernandoHints + 1);
				};
				if (Npc_HasItems (other,ItRi_Addon_BanditTrader))
				{
					AI_Output	(other, self, "DIA_Addon_Martin_Fernando_15_03"); //The bandits had this ring. It points to an overseas trader.
					FernandoHints = (FernandoHints + 1);
				};
				if ((Npc_HasItems (other,ItWr_Addon_BanditTrader))&&(BanditTrader_Lieferung_Gelesen == TRUE))
				{
					AI_Output	(other, self, "DIA_Addon_Martin_Fernando_15_04"); //This list of deliveries of weapons and other things to the bandits here is signed by a certain Fernando.
					FernandoHints = (FernandoHints + 3);
				};
			
				if (Fernando_HatsZugegeben == TRUE)
				{
					AI_Output	(other, self, "DIA_Addon_Martin_Fernando_15_05"); //Besides that, Fernando, the old trader from the upper quarter, has admitted having done business with the bandits.
					FernandoHints = (FernandoHints + 1);
				};
			}
			else
			{
				AI_Output	(other, self, "DIA_Addon_Martin_Fernando_15_06"); //Fernando has admitted providing the bandits with weapons.
			};
			
		if (FernandoHints >= 3)
		{
			AI_Output	(self, other, "DIA_Addon_Martin_Fernando_07_07"); //I think that's enough. Fernando, then. Well, he'll get what's coming to him.
			AI_Output	(self, other, "DIA_Addon_Martin_Fernando_07_08"); //And he always acts like butter wouldn't melt in his mouth.
			AI_Output	(self, other, "DIA_Addon_Martin_Fernando_07_09"); //I'll see to it that he's put away until he rots.
			AI_Output	(self, other, "DIA_Addon_Martin_Fernando_07_10"); //Sound work, I must say.
			AI_Output	(self, other, "DIA_Addon_Martin_Fernando_07_11"); //Vatras will be glad of this good news.
			B_StartOtherRoutine	(Fernando,"Prison");
			Fernando_ImKnast = TRUE;
			MIs_Martin_FindTheBanditTrader = LOG_SUCCESS;
			B_LogEntry (TOPIC_Addon_BanditTrader,"Martin will see to it that Fernando serves his punishment. I should tell Vatras about it."); 

			Ext_RemoveVobTree("NW_EROLBANDITS_TAVERN");
			Ext_RemoveVobTree("NW_FERNANDOBANDITS_FARM3");
			Ext_RemoveVobTree("NW_FERNANDOBANDITS_LUCIA");
			Ext_RemoveVobTree("NW_FERNANDOBANDITS_TAVERN");

			B_GivePlayerXP (XP_Addon_FernandoMartin);
		}
		else
		{
			AI_Output	(self, other, "DIA_Addon_Martin_Fernando_07_12"); //And? What else?
			AI_Output	(other, self, "DIA_Addon_Martin_Fernando_15_13"); //That's all.
		
			if (Fernando_HatsZugegeben == TRUE)
			{
				AI_Output	(self, other, "DIA_Addon_Martin_Fernando_07_14"); //It's nice that he admits it, but unfortunately without solid evidence, I can't do any more.
				AI_Output	(self, other, "DIA_Addon_Martin_Fernando_07_15"); //I don't want to look ridiculous in front of Lord Hagen. You'll have to get me more.
			}
			else
			{
				AI_Output (self, other, "DIA_Addon_Martin_Fernando_07_16"); //That isn't enough. That could be almost anyone in the upper quarter.
				AI_Output (self, other, "DIA_Addon_Martin_Fernando_07_17"); //It looks as though you'll have to follow the trail of the bandits and the weapons delivery farther until we find out who is behind it.
				if (Martin_IrrlichtHint == FALSE)
				{
					AI_Output	(self, other, "DIA_Addon_Martin_Fernando_07_18"); //Maybe you should talk to Vatras agian...
					Martin_IrrlichtHint = TRUE;
				};
			};
		};
	}
	else
	{
		AI_Output	(other, self, "DIA_Addon_Martin_Fernando_15_19"); //What was that again?
		AI_Output	(self, other, "DIA_Addon_Martin_Fernando_07_20"); //Listen. You are supposed to find out who is behind the weapons deliveries to the bandits and bring me proof.
		AI_Output	(self, other, "DIA_Addon_Martin_Fernando_07_21"); //But it has to be really incriminating evidence. Otherwise I can't arrest the guy.
	};
};

///////////////////////////////////////////////////////////////////////
//	Info Perm
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Martin_Perm		(C_INFO)
{
	npc		 = 	Mil_350_Addon_Martin;
	nr		 = 	90;
	condition	 = 	DIA_Addon_Martin_Perm_Condition;
	information	 = 	DIA_Addon_Martin_Perm_Info;
	permanent	 = 	TRUE;

	description	 = 	"All the crates still there?";
};

func int DIA_Addon_Martin_Perm_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Martin_WasMachstDu))
		{
			return TRUE;
		};
};

func void DIA_Addon_Martin_Perm_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Martin_Perm_15_00"); //All the crates still there?
	AI_Output	(self, other, "DIA_Addon_Martin_Perm_07_04"); //Go ahead and laugh at me. YOU stand on the pier all day and try to watch over all the chaos.
	AI_Output	(self, other, "DIA_Addon_Martin_Perm_07_05"); //The paladins dragged so much rubbish along that it isn't funny.
	AI_Output	(self, other, "DIA_Addon_Martin_Perm_07_06"); //Don't touch anything or I'll call the watch, got it?
};