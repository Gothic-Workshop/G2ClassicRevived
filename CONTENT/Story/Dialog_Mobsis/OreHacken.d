FUNC INT B_OreMob_Bestimmung()
{
	//bin ich mobsi X und habe ich noch Gold übrig?
	if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_01") && (OreMob_All_Amount_MAX > OreMob_01_Amount)
	{
		OreMob_01_Amount = (OreMob_01_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_02") && (OreMob_All_Amount_MAX > OreMob_02_Amount)
	{
		OreMob_02_Amount = (OreMob_02_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_03") && (OreMob_All_Amount_MAX > OreMob_03_Amount)
	{
		OreMob_03_Amount = (OreMob_03_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_04") && (OreMob_All_Amount_MAX > OreMob_04_Amount)
	{
		OreMob_04_Amount = (OreMob_04_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_05") && (OreMob_All_Amount_MAX > OreMob_05_Amount)
	{
		OreMob_05_Amount = (OreMob_05_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_06") && (OreMob_All_Amount_MAX > OreMob_06_Amount)
	{
		OreMob_06_Amount = (OreMob_06_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_07") && (OreMob_All_Amount_MAX > OreMob_07_Amount)
	{
		OreMob_07_Amount = (OreMob_07_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_08") && (OreMob_All_Amount_MAX > OreMob_08_Amount)
	{
		OreMob_08_Amount = (OreMob_08_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_09") && (OreMob_All_Amount_MAX > OreMob_09_Amount)
	{
		OreMob_09_Amount = (OreMob_09_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_10") && (OreMob_All_Amount_MAX > OreMob_10_Amount)
	{
		OreMob_10_Amount = (OreMob_10_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_11") && (OreMob_All_Amount_MAX > OreMob_11_Amount)
	{
		OreMob_11_Amount = (OreMob_11_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_12") && (OreMob_All_Amount_MAX > OreMob_12_Amount)
	{
		OreMob_12_Amount = (OreMob_12_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_13") && (OreMob_All_Amount_MAX > OreMob_13_Amount)
	{
		OreMob_13_Amount = (OreMob_13_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_14") && (OreMob_All_Amount_MAX > OreMob_14_Amount)
	{
		OreMob_14_Amount = (OreMob_14_Amount +1);
		return TRUE;
	};
	
	//sonst nicht
	return FALSE;
};
FUNC VOID OreHacken_S1 ()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self)==Hlp_GetInstanceID(her))
	{	
		self.aivar[AIV_INVINCIBLE]=TRUE;
		PLAYER_MOBSI_PRODUCTION	= MOBSI_OREHACKEN;
		Ai_ProcessInfos (her);
	};
}; 
//*******************************************************
//	Goldhacken Dialog abbrechen
//*******************************************************
INSTANCE PC_OreHacken_End (C_Info)
{
	npc				= PC_Hero;
	nr				= 999;
	condition		= PC_OreHacken_End_Condition;
	information		= PC_OreHacken_End_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE; 
};

FUNC INT PC_OreHacken_End_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	== MOBSI_OREHACKEN)
	{	
		return TRUE;
	};
};

FUNC VOID PC_OreHacken_End_Info()
{
	Truemmer_Count = 0;
	
	B_ENDPRODUCTIONDIALOG ();
};
//*******************************************************
//	Goldhacken 
//*******************************************************
INSTANCE PC_OreHacken_Addon_Hour (C_Info)
{
	npc				= PC_Hero;
	nr				= 2;
	condition		= PC_OreHacken_Addon_Hour_Condition;
	information		= PC_OreHacken_Addon_Hour_Info;
	permanent		= TRUE;
	description		= "Just chop a little."; 
};

FUNC INT PC_OreHacken_Addon_Hour_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	== MOBSI_OREHACKEN)
	{	
		return TRUE;
	};
};
var int OreCounter;
FUNC VOID PC_OreHacken_Addon_Hour_Info()
{

	//---------- Learning by doing  10 PKT---------
	Learn_by_doing = (Learn_by_doing +1);
	
	if (Learn_by_doing == 10)
	{
		B_Upgrade_Hero_HackChance (2);
	}
	else if (Learn_by_doing == 15)
	{
		B_Upgrade_Hero_HackChance (3);
	}	
	else if (Learn_by_doing == 20)
	{
		B_Upgrade_Hero_HackChance (5);
	};
	
	//----- EIGENTLICHES HACKEN -------------
	var int CurrentChance;
	CurrentChance = Hlp_Random (100);
	
	var int MultiNugget;
	MultiNugget = Hlp_Random (10);
		
	if (B_OreMob_Bestimmung() == TRUE)
	{
		if (CurrentChance <= Hero_HackChance)
		{
			//----Gold verteilen-----------------------
			
			if (OreCounter >= 20)
			&& (MultiNugget >= 8)
			{
				CreateInvItems (hero, ItMi_GoldNugget_Addon, 3);	
				PrintScreen ("3 ore nuggets mined!", -1, -1, FONT_ScreenSmall, 2);	
				Truemmer_Count = 0;
				
			}
			else if (OreCounter >= 7)
			&& (MultiNugget >= 5)
			{
				CreateInvItems (hero, ItMi_GoldNugget_Addon, 2);	
				PrintScreen ("2 ore nuggets mined!", -1, -1, FONT_ScreenSmall, 2);	
				Truemmer_Count = 0;
				OreCounter = (OreCounter +1);
			}
			else
			{
				CreateInvItems (hero, ItMi_GoldNugget_Addon, 1);	
				PrintScreen ("1 ore nugget mined!", -1, -1, FONT_ScreenSmall, 2);	
				Truemmer_Count = 0;
				OreCounter = (OreCounter +1);
			};
		}
		else
		{
			PrintScreen ("Ore splinters fly everywhere...", -1, -1, FONT_ScreenSmall, 2);	
			Truemmer_Count = (Truemmer_Count +1);
		};
	}
	else
	{
		PrintScreen ("There's nothing else to be had here.", -1, -1, FONT_ScreenSmall, 2);	
		B_ENDPRODUCTIONDIALOG ();
	};
};
//*******************************************************
//	Goldhacken Trümmerschlag
//*******************************************************
INSTANCE PC_OreHacken_Addon_TSchlag (C_Info)
{
	npc				= PC_Hero;
	nr				= 997;
	condition		= PC_OreHacken_Addon_TSchlag_Condition;
	information		= PC_OreHacken_Addon_TSchlag_Info;
	permanent		= TRUE;
	description		= "Give it a really good whack."; 
};

FUNC INT PC_OreHacken_Addon_TSchlag_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_OREHACKEN)
	&& (Truemmer_Count >= 2)
	&& (Knows_Truemmerschlag == TRUE)
	{	
		return TRUE;
	};
};
FUNC VOID PC_OreHacken_Addon_TSchlag_Info()
{
	var int TruemmerChance;
	TruemmerChance = Hlp_Random (100);
		
	if (TruemmerChance < 5)
	{
			PrintScreen ("Nothing...", -1, -1, FONT_ScreenSmall, 2);	
	}
	else
	{
		Snd_Play ("RAVENS_EARTHQUAKE3");
		Wld_PlayEffect("FX_EarthQuake",  self, self, 0, 0, 0, FALSE );
		
		
		if (TruemmerChance >= 85)
		{
			//----Gold verteilen-----------------------
			CreateInvItems (hero, ItMi_Nugget, 6);	
			PrintScreen ("6 ore nuggets mined!", -1, -1, FONT_ScreenSmall, 2);	
			
		}
		else if (TruemmerChance >= 50)
		{
			CreateInvItems (hero, ItMi_Nugget, 4);	
			PrintScreen ("4 ore nuggets mined!", -1, -1, FONT_ScreenSmall, 2);	
		
		}
		else 
		{
			CreateInvItems (hero, ItMi_Nugget, 3);	
			PrintScreen ("3 ore nugget mined!", -1, -1, FONT_ScreenSmall, 2);	
		};
	};
	Truemmer_Count = 0;
	
	
};
//*******************************************************
//	Goldhacken Chance
//*******************************************************
INSTANCE PC_OreHacken_Addon_Chance (C_Info)
{
	npc				= PC_Hero;
	nr				= 998;
	condition		= PC_OreHacken_Addon_Chance_Condition;
	information		= PC_OreHacken_Addon_Chance_Info;
	permanent		= TRUE;
	description		= "(assess own ability)"; 
};

FUNC INT PC_OreHacken_Addon_Chance_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_OREHACKEN)
	{	
		return TRUE;
	};
};
FUNC VOID PC_OreHacken_Addon_Chance_Info()
{
	var string ConcatText;

	
	if (Hero_HackChance < 20) 
	{
		ConcatText = ConcatStrings ("blutiger Anfänger (", IntToString (Hero_HackChance));
	}
	else if (Hero_HackChance < 40) 
	{
		ConcatText = ConcatStrings ("ganz passabler Schürfer (" , IntToString (Hero_HackChance));
	}
	else if (Hero_HackChance < 55) 
	{
		ConcatText = ConcatStrings ("erfahrener Goldschürfer (", IntToString (Hero_HackChance));
	}
	else if (Hero_HackChance < 75) 
	{
		ConcatText = ConcatStrings ("waschechter Buddler ( ", IntToString (Hero_HackChance));
	}
	else if (Hero_HackChance < 90) 
	{
		ConcatText = ConcatStrings ("verdammt guter Buddler ( ", IntToString (Hero_HackChance));
	}
	else if (Hero_HackChance < 98) 
	{
		ConcatText = ConcatStrings ("Meister Buddler ( ", IntToString (Hero_HackChance));
	}
	else
	{
		ConcatText = ConcatStrings ("Buddler Guru ( ", IntToString (Hero_HackChance));
	};
	
	ConcatText = ConcatStrings (concatText, " Prozent)");
	
	PrintScreen (concatText, -1, -1, FONT_ScreenSmall,2);
};
