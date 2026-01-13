// *********************
// Alle Transform Spells
// *********************

const int SPL_Cost_TrfSheep			= 10;
const int SPL_Cost_TrfScavenger		= 10;
const int SPL_Cost_TrfGiantRat		= 10;
const int SPL_Cost_TrfGiantBug		= 10;
const int SPL_Cost_TrfWolf			= 10;
const int SPL_Cost_TrfWaran			= 10;
const int SPL_Cost_TrfSnapper		= 10;
const int SPL_Cost_TrfWarg			= 10;
const int SPL_Cost_TrfFireWaran		= 10;
const int SPL_Cost_TrfLurker		= 10;
const int SPL_Cost_TrfShadowbeast	= 10;
const int SPL_Cost_TrfDragonSnapper	= 10;

// ------ Instanz für alle Transform-Sprüche ------
INSTANCE Spell_Transform (C_Spell_Proto)
{
	time_per_mana			= 0;
	spelltype 				= SPELL_NEUTRAL;
	targetCollectAlgo		= TARGET_COLLECT_NONE;
	canTurnDuringInvest		= 0;
};

// ------ Schaf ------
func int Spell_Logic_TrfSheep (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_TrfSheep)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_TrfSheep;
		
		var int random;	random = Hlp_Random (2);
		if (random == 0)
		{
			Npc_SetActiveSpellInfo(self, Sheep);
		}
		else if (random == 1)
		{
			Npc_SetActiveSpellInfo(self, Hammel);
		};
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

// ------ Scavenger ------
func int Spell_Logic_TrfScavenger (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_TrfScavenger)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_TrfScavenger;
		
		var int random;	random = Hlp_Random (3);
		if (random == 0)
		{
			Npc_SetActiveSpellInfo(self, Scavenger);
		}
		else if (random == 1)
		{
			Npc_SetActiveSpellInfo(self, ScavengerJuvenile);
		}
		else if (random == 2)
		{
			Npc_SetActiveSpellInfo(self, Scavenger_Demon);
		};
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

// ------ Giant Rat ------
func int Spell_Logic_TrfGiantRat (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_TrfGiantRat)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_TrfGiantRat;
		
		var int random;	random = Hlp_Random (4);
		if (random == 0)
		{
			Npc_SetActiveSpellInfo(self, Giant_Rat);
		}
		else if (random == 1)
		{
			Npc_SetActiveSpellInfo(self, YGiant_Rat);
		}
		else if (random == 2)
		{
			Npc_SetActiveSpellInfo(self, Giant_DesertRat);
		}
		else if (random == 3)
		{
			Npc_SetActiveSpellInfo(self, Swamprat);
		};
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};


// ------ Giant BUG ------
func int Spell_Logic_TrfGiantBug (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_TrfGiantBug)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_TrfGiantBug;
		
		var int random;	random = Hlp_Random (2);
		if (random == 0)
		{
			Npc_SetActiveSpellInfo(self, Giant_Bug);
		}
		else if (random == 1)
		{
			Npc_SetActiveSpellInfo(self, YGiant_Bug);
		};
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

// ------ Wolf ------
func int Spell_Logic_TrfWolf (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_TrfWolf)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_TrfWolf;
		
		var int random;	random = Hlp_Random (3);
		if (random == 0)
		{
			Npc_SetActiveSpellInfo(self, Wolf);
		}
		else if (random == 1)
		{
			Npc_SetActiveSpellInfo(self, BlackWolf);
		}
		else if (random == 2)
		{
			Npc_SetActiveSpellInfo(self, IceWolf);
		};
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

// ------ Waran ------
func int Spell_Logic_TrfWaran (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_TrfWaran)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_TrfWaran;
		
		var int random;	random = Hlp_Random (2);
		if (random == 0)
		{
			Npc_SetActiveSpellInfo(self, Waran);
		}
		else if (random == 1)
		{
			Npc_SetActiveSpellInfo(self, BeachWaran);
		};
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

// ------ Snapper ------
func int Spell_Logic_TrfSnapper (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_TrfSnapper)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_TrfSnapper;
		
		var int random;	random = Hlp_Random (2);
		if (random == 0)
		{
			Npc_SetActiveSpellInfo(self, Snapper);
		}
		else if (random == 1)
		{
			Npc_SetActiveSpellInfo(self, IceSnapper);
		};
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

// ------ Warg ------
func int Spell_Logic_TrfWarg (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_TrfWarg)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_TrfWarg;
		
		Npc_SetActiveSpellInfo(self, Warg);
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

// ------ Feuerwaran ------
func int Spell_Logic_TrfFireWaran (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_TrfFireWaran)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_TrfFireWaran;
		
		var int random;	random = Hlp_Random (2);
		if (random == 0)
		{
			Npc_SetActiveSpellInfo(self, FireWaran);
		}
		else if (random == 1)
		{
			Npc_SetActiveSpellInfo(self, BeachFireWaran);
		};
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

// ------ Lurker ------
func int Spell_Logic_TrfLurker (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_TrfLurker)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_TrfLurker;
		
		Npc_SetActiveSpellInfo(self, Lurker);
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

// ------ Shadowbeast ------
func int Spell_Logic_TrfShadowbeast (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_TrfShadowbeast)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_TrfShadowbeast;
		
		Npc_SetActiveSpellInfo(self, Shadowbeast);
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

// ------ Dragon Snapper ------
func int Spell_Logic_TrfDragonSnapper (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_TrfDragonSnapper)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_TrfDragonSnapper;
		
		var int random;	random = Hlp_Random (2);
		if (random == 0)
		{
			Npc_SetActiveSpellInfo(self, DragonSnapper);
		}
		else if (random == 1)
		{
			Npc_SetActiveSpellInfo(self, Gaans_Snapper);
		};
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};