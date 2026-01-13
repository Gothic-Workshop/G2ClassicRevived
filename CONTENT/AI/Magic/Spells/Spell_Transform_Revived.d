// ------ Meatbug ------
INSTANCE Spell_TransformMeatbug (C_Spell_Proto)
{
    time_per_mana            = 1500;
    spelltype                = SPELL_NEUTRAL;
    canTurnDuringInvest        = FALSE;
    canChangeTargetDuringInvest = FALSE;
    targetCollectAlgo        = TARGET_COLLECT_NONE;
    targetCollectType        = TARGET_TYPE_ALL;
    targetCollectAzi        = 20;
};
INSTANCE Spell_TransformMeatbug_Data (C_SPELL_DATA)
{
    spellId = SPL_TrfMeatbug;
    spellType = SPELL_TYPE_TRANSFORM;
    spellEnergyType = ATR_MANA;
    spellIsInvestSpell = TRUE;
};

func int Spell_Logic_TransformMeatbug (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
		
		var int random;	random = Hlp_Random (2);
		if (random == 0)
		{
			Npc_SetActiveSpellInfo(self, Meatbug);
		}
		else if (random == 1)
		{
			Npc_SetActiveSpellInfo(self, MeatbugIndoor);
		};
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};


// ------ Molerat ------
INSTANCE Spell_TransformMolerat (C_Spell_Proto)
{
    time_per_mana            = 1500;
    spelltype                = SPELL_NEUTRAL;
    canTurnDuringInvest        = FALSE;
    canChangeTargetDuringInvest = FALSE;
    targetCollectAlgo        = TARGET_COLLECT_NONE;
    targetCollectType        = TARGET_TYPE_ALL;
    targetCollectAzi        = 20;
};
INSTANCE Spell_TransformMolerat_Data (C_SPELL_DATA)
{
    spellId = SPL_TrfMolerat;
    spellType = SPELL_TYPE_TRANSFORM;
    spellEnergyType = ATR_MANA;
    spellIsInvestSpell = TRUE;
};

func int Spell_Logic_TransformMolerat (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
		
		var int random;	random = Hlp_Random (3);
		if (random == 0)
		{
			Npc_SetActiveSpellInfo(self, Molerat);
		}
		else if (random == 1)
		{
			Npc_SetActiveSpellInfo(self, MoleratJuvenile);
		}
		else if (random == 2)
		{
			Npc_SetActiveSpellInfo(self, MoleratDemon);
		};
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};


// ------ Bloodfly ------
INSTANCE Spell_TransformBloodfly (C_Spell_Proto)
{
    time_per_mana            = 1500;
    spelltype                = SPELL_NEUTRAL;
    canTurnDuringInvest        = FALSE;
    canChangeTargetDuringInvest = FALSE;
    targetCollectAlgo        = TARGET_COLLECT_NONE;
    targetCollectType        = TARGET_TYPE_ALL;
    targetCollectAzi        = 20;
};
INSTANCE Spell_TransformBloodfly_Data (C_SPELL_DATA)
{
    spellId = SPL_TrfBloodfly;
    spellType = SPELL_TYPE_TRANSFORM;
    spellEnergyType = ATR_MANA;
    spellIsInvestSpell = TRUE;
};

func int Spell_Logic_TransformBloodfly (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
		
		var int random;	random = Hlp_Random (2);
		if (random == 0)
		{
			Npc_SetActiveSpellInfo(self, Bloodfly);
		}
		else if (random == 1)
		{
			Npc_SetActiveSpellInfo(self, BloodflyJuvenile);
		};
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};


// ------ SwampDrone ------
INSTANCE Spell_TransformSwampDrone (C_Spell_Proto)
{
    time_per_mana            = 1500;
    spelltype                = SPELL_NEUTRAL;
    canTurnDuringInvest        = FALSE;
    canChangeTargetDuringInvest = FALSE;
    targetCollectAlgo        = TARGET_COLLECT_NONE;
    targetCollectType        = TARGET_TYPE_ALL;
    targetCollectAzi        = 20;
};
INSTANCE Spell_TransformSwampDrone_Data (C_SPELL_DATA)
{
    spellId = SPL_TrfSwampDrone;
    spellType = SPELL_TYPE_TRANSFORM;
    spellEnergyType = ATR_MANA;
    spellIsInvestSpell = TRUE;
};

func int Spell_Logic_TransformSwampDrone (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
		
		Npc_SetActiveSpellInfo(self, SwampDrone);
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};



// ------ Minecrawler ------
INSTANCE Spell_TransformMinecrawler (C_Spell_Proto)
{
    time_per_mana            = 1500;
    spelltype                = SPELL_NEUTRAL;
    canTurnDuringInvest        = FALSE;
    canChangeTargetDuringInvest = FALSE;
    targetCollectAlgo        = TARGET_COLLECT_NONE;
    targetCollectType        = TARGET_TYPE_ALL;
    targetCollectAzi        = 20;
};
INSTANCE Spell_TransformMinecrawler_Data (C_SPELL_DATA)
{
    spellId = SPL_TrfMinecrawler;
    spellType = SPELL_TYPE_TRANSFORM;
    spellEnergyType = ATR_MANA;
    spellIsInvestSpell = TRUE;
};

func int Spell_Logic_TransformMinecrawler (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
		
		var int random;	random = Hlp_Random (3);
		if (random == 0)
		{
			Npc_SetActiveSpellInfo(self, Minecrawler);
		}
		else if (random == 1)
		{
			Npc_SetActiveSpellInfo(self, MinecrawlerWarrior);
		}
		else if (random == 2)
		{
			Npc_SetActiveSpellInfo(self, GoldMinecrawler);
		};
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};



// ------ Mantis ------
INSTANCE Spell_TransformMantis (C_Spell_Proto)
{
    time_per_mana            = 1500;
    spelltype                = SPELL_NEUTRAL;
    canTurnDuringInvest        = FALSE;
    canChangeTargetDuringInvest = FALSE;
    targetCollectAlgo        = TARGET_COLLECT_NONE;
    targetCollectType        = TARGET_TYPE_ALL;
    targetCollectAzi        = 20;
};
INSTANCE Spell_TransformMantis_Data (C_SPELL_DATA)
{
    spellId = SPL_TrfMantis;
    spellType = SPELL_TYPE_TRANSFORM;
    spellEnergyType = ATR_MANA;
    spellIsInvestSpell = TRUE;
};

func int Spell_Logic_TransformMantis (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
		
		Npc_SetActiveSpellInfo(self, Blattcrawler);
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};



// ------ Boar ------
INSTANCE Spell_TransformBoar (C_Spell_Proto)
{
    time_per_mana            = 1500;
    spelltype                = SPELL_NEUTRAL;
    canTurnDuringInvest        = FALSE;
    canChangeTargetDuringInvest = FALSE;
    targetCollectAlgo        = TARGET_COLLECT_NONE;
    targetCollectType        = TARGET_TYPE_ALL;
    targetCollectAzi        = 20;
};
INSTANCE Spell_TransformBoar_Data (C_SPELL_DATA)
{
    spellId = SPL_TrfBoar;
    spellType = SPELL_TYPE_TRANSFORM;
    spellEnergyType = ATR_MANA;
    spellIsInvestSpell = TRUE;
};

func int Spell_Logic_TransformBoar (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
		
		Npc_SetActiveSpellInfo(self, Keiler);
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};



// ------ OrcDog ------
INSTANCE Spell_TransformOrcDog (C_Spell_Proto)
{
    time_per_mana            = 1500;
    spelltype                = SPELL_NEUTRAL;
    canTurnDuringInvest        = FALSE;
    canChangeTargetDuringInvest = FALSE;
    targetCollectAlgo        = TARGET_COLLECT_NONE;
    targetCollectType        = TARGET_TYPE_ALL;
    targetCollectAzi        = 20;
};
INSTANCE Spell_TransformOrcDog_Data (C_SPELL_DATA)
{
    spellId = SPL_TrfOrcDog;
    spellType = SPELL_TYPE_TRANSFORM;
    spellEnergyType = ATR_MANA;
    spellIsInvestSpell = TRUE;
};

func int Spell_Logic_TransformOrcDog (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
		
		Npc_SetActiveSpellInfo(self, OrcDog);
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};



// ------ Razor ------
INSTANCE Spell_TransformRazor (C_Spell_Proto)
{
    time_per_mana            = 1500;
    spelltype                = SPELL_NEUTRAL;
    canTurnDuringInvest        = FALSE;
    canChangeTargetDuringInvest = FALSE;
    targetCollectAlgo        = TARGET_COLLECT_NONE;
    targetCollectType        = TARGET_TYPE_ALL;
    targetCollectAzi        = 20;
};
INSTANCE Spell_TransformRazor_Data (C_SPELL_DATA)
{
    spellId = SPL_TrfRazor;
    spellType = SPELL_TYPE_TRANSFORM;
    spellEnergyType = ATR_MANA;
    spellIsInvestSpell = TRUE;
};

func int Spell_Logic_TransformRazor (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
		
		Npc_SetActiveSpellInfo(self, Razor);
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};



// ------ Chomper ------
INSTANCE Spell_TransformChomper (C_Spell_Proto)
{
    time_per_mana            = 1500;
    spelltype                = SPELL_NEUTRAL;
    canTurnDuringInvest        = FALSE;
    canChangeTargetDuringInvest = FALSE;
    targetCollectAlgo        = TARGET_COLLECT_NONE;
    targetCollectType        = TARGET_TYPE_ALL;
    targetCollectAzi        = 20;
};
INSTANCE Spell_TransformChomper_Data (C_SPELL_DATA)
{
    spellId = SPL_TrfChomper;
    spellType = SPELL_TYPE_TRANSFORM;
    spellEnergyType = ATR_MANA;
    spellIsInvestSpell = TRUE;
};

func int Spell_Logic_TransformChomper (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
		
		var int random;	random = Hlp_Random (2);
		if (random == 0)
		{
			Npc_SetActiveSpellInfo(self, OrcBiter);
		}
		else if (random == 1)
		{
			Npc_SetActiveSpellInfo(self, SwampBiter);
		};
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};



// ------ Bloodhound ------
INSTANCE Spell_TransformBloodhound (C_Spell_Proto)
{
    time_per_mana            = 1500;
    spelltype                = SPELL_NEUTRAL;
    canTurnDuringInvest        = FALSE;
    canChangeTargetDuringInvest = FALSE;
    targetCollectAlgo        = TARGET_COLLECT_NONE;
    targetCollectType        = TARGET_TYPE_ALL;
    targetCollectAzi        = 20;
};
INSTANCE Spell_TransformBloodhound_Data (C_SPELL_DATA)
{
    spellId = SPL_TrfBloodhound;
    spellType = SPELL_TYPE_TRANSFORM;
    spellEnergyType = ATR_MANA;
    spellIsInvestSpell = TRUE;
};

func int Spell_Logic_TransformBloodhound (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
		
		Npc_SetActiveSpellInfo(self, Bloodhound);
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};



// ------ Hellhound ------
INSTANCE Spell_TransformHellhound (C_Spell_Proto)
{
    time_per_mana            = 1500;
    spelltype                = SPELL_NEUTRAL;
    canTurnDuringInvest        = FALSE;
    canChangeTargetDuringInvest = FALSE;
    targetCollectAlgo        = TARGET_COLLECT_NONE;
    targetCollectType        = TARGET_TYPE_ALL;
    targetCollectAzi        = 20;
};
INSTANCE Spell_TransformHellhound_Data (C_SPELL_DATA)
{
    spellId = SPL_TrfHellhound;
    spellType = SPELL_TYPE_TRANSFORM;
    spellEnergyType = ATR_MANA;
    spellIsInvestSpell = TRUE;
};

func int Spell_Logic_TransformHellhound (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
		
		Npc_SetActiveSpellInfo(self, Hellhound);
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};



// ------ Panther ------
INSTANCE Spell_TransformPanther (C_Spell_Proto)
{
    time_per_mana            = 1500;
    spelltype                = SPELL_NEUTRAL;
    canTurnDuringInvest        = FALSE;
    canChangeTargetDuringInvest = FALSE;
    targetCollectAlgo        = TARGET_COLLECT_NONE;
    targetCollectType        = TARGET_TYPE_ALL;
    targetCollectAzi        = 20;
};
INSTANCE Spell_TransformPanther_Data (C_SPELL_DATA)
{
    spellId = SPL_TrfPanther;
    spellType = SPELL_TYPE_TRANSFORM;
    spellEnergyType = ATR_MANA;
    spellIsInvestSpell = TRUE;
};

func int Spell_Logic_TransformPanther (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
		
		var int random;	random = Hlp_Random (2);
		if (random == 0)
		{
			Npc_SetActiveSpellInfo(self, Panther);
		}
		else if (random == 1)
		{
			Npc_SetActiveSpellInfo(self, DemonPuma);
		};
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};



// ------ Alligator ------
INSTANCE Spell_TransformAlligator (C_Spell_Proto)
{
    time_per_mana            = 1500;
    spelltype                = SPELL_NEUTRAL;
    canTurnDuringInvest        = FALSE;
    canChangeTargetDuringInvest = FALSE;
    targetCollectAlgo        = TARGET_COLLECT_NONE;
    targetCollectType        = TARGET_TYPE_ALL;
    targetCollectAzi        = 20;
};
INSTANCE Spell_TransformAlligator_Data (C_SPELL_DATA)
{
    spellId = SPL_TrfAlligator;
    spellType = SPELL_TYPE_TRANSFORM;
    spellEnergyType = ATR_MANA;
    spellIsInvestSpell = TRUE;
};

func int Spell_Logic_TransformAlligator (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
		
		Npc_SetActiveSpellInfo(self, Alligator);
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};



// ------ Swampshark ------
INSTANCE Spell_TransformSwampshark (C_Spell_Proto)
{
    time_per_mana            = 1500;
    spelltype                = SPELL_NEUTRAL;
    canTurnDuringInvest        = FALSE;
    canChangeTargetDuringInvest = FALSE;
    targetCollectAlgo        = TARGET_COLLECT_NONE;
    targetCollectType        = TARGET_TYPE_ALL;
    targetCollectAzi        = 20;
};
INSTANCE Spell_TransformSwampshark_Data (C_SPELL_DATA)
{
    spellId = SPL_TrfSwampshark;
    spellType = SPELL_TYPE_TRANSFORM;
    spellEnergyType = ATR_MANA;
    spellIsInvestSpell = TRUE;
};

func int Spell_Logic_TransformSwampshark (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
		
		Npc_SetActiveSpellInfo(self, Swampshark);
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};



// ------ Harpy ------
INSTANCE Spell_TransformHarpy (C_Spell_Proto)
{
    time_per_mana            = 1500;
    spelltype                = SPELL_NEUTRAL;
    canTurnDuringInvest        = FALSE;
    canChangeTargetDuringInvest = FALSE;
    targetCollectAlgo        = TARGET_COLLECT_NONE;
    targetCollectType        = TARGET_TYPE_ALL;
    targetCollectAzi        = 20;
};
INSTANCE Spell_TransformHarpy_Data (C_SPELL_DATA)
{
    spellId = SPL_TrfHarpy;
    spellType = SPELL_TYPE_TRANSFORM;
    spellEnergyType = ATR_MANA;
    spellIsInvestSpell = TRUE;
};

func int Spell_Logic_TransformHarpy (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
		
		Npc_SetActiveSpellInfo(self, Harpie);
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};



// ------ Troll ------
INSTANCE Spell_TransformTroll (C_Spell_Proto)
{
    time_per_mana            = 1500;
    spelltype                = SPELL_NEUTRAL;
    canTurnDuringInvest        = FALSE;
    canChangeTargetDuringInvest = FALSE;
    targetCollectAlgo        = TARGET_COLLECT_NONE;
    targetCollectType        = TARGET_TYPE_ALL;
    targetCollectAzi        = 20;
};
INSTANCE Spell_TransformTroll_Data (C_SPELL_DATA)
{
    spellId = SPL_TrfTroll;
    spellType = SPELL_TYPE_TRANSFORM;
    spellEnergyType = ATR_MANA;
    spellIsInvestSpell = TRUE;
};

func int Spell_Logic_TransformTroll (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
		
		var int random;	random = Hlp_Random (2);
		if (random == 0)
		{
			Npc_SetActiveSpellInfo(self, Troll);
		}
		else if (random == 1)
		{
			Npc_SetActiveSpellInfo(self, Troll_Black);
		};
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};



// ------ Goblin ------
INSTANCE Spell_TransformGoblin (C_Spell_Proto)
{
    time_per_mana            = 1500;
    spelltype                = SPELL_NEUTRAL;
    canTurnDuringInvest        = FALSE;
    canChangeTargetDuringInvest = FALSE;
    targetCollectAlgo        = TARGET_COLLECT_NONE;
    targetCollectType        = TARGET_TYPE_ALL;
    targetCollectAzi        = 20;
};
INSTANCE Spell_TransformGoblin_Data (C_SPELL_DATA)
{
    spellId = SPL_TrfGoblin;
    spellType = SPELL_TYPE_TRANSFORM;
    spellEnergyType = ATR_MANA;
    spellIsInvestSpell = TRUE;
};

func int Spell_Logic_TransformGoblin (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
		
		var int random;	random = Hlp_Random (4);
		if (random == 0)
		{
			Npc_SetActiveSpellInfo(self, Gobbo_Green);
		}
		else if (random == 1)
		{
			Npc_SetActiveSpellInfo(self, YGobbo_Green);
		}
		else if (random == 2)
		{
			Npc_SetActiveSpellInfo(self, Gobbo_Black);
		}
		else if (random == 3)
		{
			Npc_SetActiveSpellInfo(self, Gobbo_Warrior);
		};
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

