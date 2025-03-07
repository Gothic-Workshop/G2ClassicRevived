
// ****************************************************
// POTIONALCHEMY_S1
// --------------
// Funktion wird durch Labortisch-Mobsi-Benutzung aufgerufen!
// benötigtes Item dafür: ItMi_Flask
// *****************************************************
FUNC VOID POTIONALCHEMY_S1 ()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self)==Hlp_GetInstanceID(her))
	{	
		self.aivar[AIV_INVINCIBLE]=TRUE;
		PLAYER_MOBSI_PRODUCTION	=	MOBSI_POTIONALCHEMY;
		Ai_ProcessInfos (her);
	};
}; 

//*******************************************************
//	PotionAlchemy Dialog abbrechen
//*******************************************************
INSTANCE PC_PotionAlchemy_End (C_Info)
{
	npc				= PC_Hero;
	nr				= 999;
	condition		= PC_PotionAlchemy_End_Condition;
	information		= PC_PotionAlchemy_End_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE; 
};

FUNC INT PC_PotionAlchemy_End_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (SpecialStart == FALSE)
	&& (SpecialHealth == FALSE)
	&& (SpecialMana == FALSE)
	&& (SpecialStr == FALSE)
	&& (SpecialDex == FALSE)
	&& (SpecialSpeed == FALSE)
	&& (BoozeStart == FALSE)
	&& (TabakStart == FALSE)
	&& (HealthStart == FALSE)
	&& (ManaStart == FALSE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_PotionAlchemy_End_Info()
{
	CreateInvItems (self, ItMi_Flask,1);
	B_ENDPRODUCTIONDIALOG ();
};

//*******************************************************
var int PotionMakeMultiple;
var int PotionInstance;
var int PotionDialogue;

INSTANCE PC_PotionAlchemy_Stop (C_Info)
{
	npc				= PC_Hero;
	nr				= 999;
	condition		= PC_PotionAlchemy_Stop_Condition;
	information		= PC_PotionAlchemy_Stop_Info;
	permanent		= TRUE;
	description		= DIALOG_BACK; 
};

FUNC INT PC_PotionAlchemy_Stop_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	== MOBSI_POTIONALCHEMY)
	&& (PotionMakeMultiple == TRUE)
	{	
		return TRUE;
	};
};
FUNC VOID PC_PotionAlchemy_Stop_Info()
{
	PotionMakeMultiple = FALSE;
	Info_ClearChoices (PotionDialogue);
};

//*******************************************************
//	PotionAlchemy MIX POTIONS
//*******************************************************



//*******************************************************
//	PotionAlchemy MAKE MULTIPLE
//*******************************************************

func void AlchemyCraftMultiple_Input(var int dialogue, var int item_instance)
{
	PotionInstance = item_instance;
	PotionDialogue = dialogue;
	PotionMakeMultiple = TRUE;

	Info_AddChoice	(PotionDialogue, DIALOG_BACK, 		PC_PotionAlchemy_Stop_Info);
	Info_AddChoice	(PotionDialogue,"Make 10",			AlchemyCraftMultiple_Make10);
	Info_AddChoice	(PotionDialogue,"Make 5",			AlchemyCraftMultiple_Make5);
	Info_AddChoice	(PotionDialogue,"Make 2",			AlchemyCraftMultiple_Make2);
	Info_AddChoice	(PotionDialogue,"Make 1",			AlchemyCraftMultiple_Make1);
};

func void AlchemyCraft_NoIngredients()
{
	Print (PRINT_ProdItemsMissing);
	PC_PotionAlchemy_Stop_Info();
	//B_ENDPRODUCTIONDIALOG ();	
};

func void AlchemyCraftMultiple_Logic(var int amount)
{
	if (HealthStart == TRUE)
	{
		if(PotionInstance == POTION_Health_01)
		{
			if (Npc_HasItems (hero, ItPl_Health_Herb_01) 		>= amount * 2) 
			&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  		>= amount) 
			{
				Npc_RemoveInvItems (hero,ItPl_Health_Herb_01,	amount * 2);
				Npc_RemoveInvItems (hero,ItPl_Temp_Herb, 		amount);
				
				CreateInvItems	   (hero,ItPo_Health_01,1);  
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Health_02)
		{
			if (Npc_HasItems (hero, ItPl_Health_Herb_02) 		>= amount * 2) 
			&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  		>= amount) 
			{
				Npc_RemoveInvItems (hero,ItPl_Health_Herb_02,	amount * 2);
				Npc_RemoveInvItems (hero,ItPl_Temp_Herb, 		amount);
				
				CreateInvItems	   (hero,ItPo_Health_02,1);  
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Health_03)
		{
			if (Npc_HasItems (hero, ItPl_Health_Herb_03) 		>= amount * 2) 
			&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  		>= amount) 
			{
				Npc_RemoveInvItems (hero,ItPl_Health_Herb_03,	amount * 2);
				Npc_RemoveInvItems (hero,ItPl_Temp_Herb, 		amount);
				
				CreateInvItems	   (hero,ItPo_Health_02,1);  
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		};
	}
	else if (ManaStart == TRUE)
	{
		if(PotionInstance == POTION_Mana_01)
		{
			if (Npc_HasItems (hero, ItPl_Mana_Herb_01) 			>= amount * 2) 
			&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  		>= amount) 
			{
				Npc_RemoveInvItems (hero,ItPl_Mana_Herb_01,		amount * 2);
				Npc_RemoveInvItems (hero,ItPl_Temp_Herb, 		amount);
				
				CreateInvItems	   (hero,ItPo_Mana_01,1);  
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Mana_02)
		{
			if (Npc_HasItems (hero, ItPl_Mana_Herb_02) 			>= amount * 2) 
			&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  		>= amount) 
			{
				Npc_RemoveInvItems (hero,ItPl_Mana_Herb_02,		amount * 2);
				Npc_RemoveInvItems (hero,ItPl_Temp_Herb, 		amount);
				
				CreateInvItems	   (hero,ItPo_Mana_02,1);  
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Mana_03)
		{
			if (Npc_HasItems (hero, ItPl_Mana_Herb_03) 			>= amount * 2) 
			&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  		>= amount) 
			{
				Npc_RemoveInvItems (hero,ItPl_Mana_Herb_03,		amount * 2);
				Npc_RemoveInvItems (hero,ItPl_Temp_Herb, 		amount);
				
				CreateInvItems	   (hero,ItPo_Mana_02,1);  
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		};
	}
	else if (SpecialStart == TRUE)
	{
		if(PotionInstance == POTION_Special_Experience)
		{
			if (Npc_HasItems (hero, ItAt_Sting) 		   		>= amount * 2) 
			&& (Npc_HasItems (hero, ItPo_Mana_02) 	  	   		>= amount) 
			&& (Npc_HasItems (hero, ItPo_Health_01) 	   		>= amount) 
			&& (Npc_HasItems (hero, ItFo_Addon_Pfeffer_01) 		>= amount) 
			{
				Npc_RemoveInvItems (hero,ItAt_Sting,			amount * 2);
				Npc_RemoveInvItems (hero,ItPo_Mana_02,			amount);
				Npc_RemoveInvItems (hero,ItPo_Health_01,		amount);
				Npc_RemoveInvItems (hero,ItFo_Addon_Pfeffer_01,	amount);
				
				if (Knows_Bloodfly == TRUE)
				{
					CreateInvItems	   (hero,ItPo_Addon_Geist_02,1);  
				}
				else
				{
					CreateInvItems	   (hero,ItPo_Addon_Geist_01,1);  
				};
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_MegaDrink)
		{
			if (Npc_HasItems (hero, ItAt_DragonEgg_MIS) 		>= amount * 10) 
			&& (Npc_HasItems (hero, ItMi_DarkPearl)    			>= amount) 
			&& (Npc_HasItems (hero, ItMi_Sulfur)    			>= amount) 
			{
				Npc_RemoveInvItems (hero,ItAt_DragonEgg_MIS,	amount * 10);
				Npc_RemoveInvItems (hero,ItMi_DarkPearl,		amount);
				Npc_RemoveInvItems (hero,ItMi_Sulfur,			amount);
				
				CreateInvItems	   (hero,ItPo_MegaDrink,1);  
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Special_DragonDrink)
		{
			if (Npc_HasItems (hero, ItAt_DragonEgg_MIS) 		>= amount) 
			&& (Npc_HasItems (hero, ItMi_DarkPearl)    			>= amount) 
			&& (Npc_HasItems (hero, ItMi_Sulfur)    			>= amount) 
			{
				Npc_RemoveInvItems (hero,ItAt_DragonEgg_MIS,	amount);
				Npc_RemoveInvItems (hero,ItMi_DarkPearl,		amount);
				Npc_RemoveInvItems (hero,ItMi_Sulfur,			amount);
				
				CreateInvItems	   (hero,ItPo_DragonEggDrinkNeoras_MIS,1);  
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Perm_MASTER_01)
		{
			if (Npc_HasItems (hero, ItPl_Mana_Herb_03) 		>= amount * 2) 
			&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  		>= amount) 
			{
				Npc_RemoveInvItems (hero,ItPl_Mana_Herb_03,	amount * 2);
				Npc_RemoveInvItems (hero,ItPl_Temp_Herb, 		amount);
				
				CreateInvItems	   (hero,ITPO_REVIVED_BOOST_MASTER_01,1);  
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Perm_MASTER_02)
		{
			if (Npc_HasItems (hero, ItPl_Mana_Herb_03) 		>= amount * 2) 
			&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  		>= amount) 
			{
				Npc_RemoveInvItems (hero,ItPl_Mana_Herb_03,	amount * 2);
				Npc_RemoveInvItems (hero,ItPl_Temp_Herb, 		amount);
				
				CreateInvItems	   (hero,ITPO_REVIVED_BOOST_MASTER_02,1);  
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Perm_MASTER_03)
		{
			if (Npc_HasItems (hero, ItPl_Mana_Herb_03) 		>= amount * 2) 
			&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  		>= amount) 
			{
				Npc_RemoveInvItems (hero,ItPl_Mana_Herb_03,	amount * 2);
				Npc_RemoveInvItems (hero,ItPl_Temp_Herb, 		amount);
				
				CreateInvItems	   (hero,ITPO_REVIVED_BOOST_MASTER_03,1);  
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		};
	}
	else if (SpecialHealth == TRUE)
	{
		if(PotionInstance == POTION_Perm_HEALTH_01)
		{
			if (Npc_HasItems (hero, ItPl_Health_Herb_01) 		>= amount * 2) 
			&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  		>= amount) 
			{
				Npc_RemoveInvItems (hero,ItPl_Health_Herb_01,	amount * 2);
				Npc_RemoveInvItems (hero,ItPl_Temp_Herb, 		amount);
				
				CreateInvItems	   (hero,ITPO_REVIVED_BOOST_HEALTH_01,1);  
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Perm_HEALTH_02)
		{
			if (Npc_HasItems (hero, ItPl_Health_Herb_02) 		>= amount * 2) 
			&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  		>= amount) 
			{
				Npc_RemoveInvItems (hero,ItPl_Health_Herb_02,	amount * 2);
				Npc_RemoveInvItems (hero,ItPl_Temp_Herb, 		amount);
				
				CreateInvItems	   (hero,ITPO_REVIVED_BOOST_HEALTH_02,1);  
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Perm_HEALTH_03)
		{
			if (Npc_HasItems (hero, ItPl_Health_Herb_03) 		>= amount * 2) 
			&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  		>= amount) 
			{
				Npc_RemoveInvItems (hero,ItPl_Health_Herb_03,	amount * 2);
				Npc_RemoveInvItems (hero,ItPl_Temp_Herb, 		amount);
				
				CreateInvItems	   (hero,ITPO_REVIVED_BOOST_HEALTH_03,1);  
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		};
	}
	else if (SpecialMana == TRUE)
	{
		if(PotionInstance == POTION_Perm_MANA_01)
		{
			if (Npc_HasItems (hero, ItPl_Mana_Herb_01) 			>= amount * 2) 
			&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  		>= amount) 
			{
				Npc_RemoveInvItems (hero,ItPl_Mana_Herb_01,		amount * 2);
				Npc_RemoveInvItems (hero,ItPl_Temp_Herb, 		amount);
				
				CreateInvItems	   (hero,ITPO_REVIVED_BOOST_MANA_01,1);  
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Perm_MANA_02)
		{
			if (Npc_HasItems (hero, ItPl_Mana_Herb_02) 			>= amount * 2) 
			&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  		>= amount) 
			{
				Npc_RemoveInvItems (hero,ItPl_Mana_Herb_02,		amount * 2);
				Npc_RemoveInvItems (hero,ItPl_Temp_Herb, 		amount);
				
				CreateInvItems	   (hero,ITPO_REVIVED_BOOST_MANA_02,1);  
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Perm_MANA_03)
		{
			if (Npc_HasItems (hero, ItPl_Mana_Herb_03) 			>= amount * 2) 
			&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  		>= amount) 
			{
				Npc_RemoveInvItems (hero,ItPl_Mana_Herb_03,		amount * 2);
				Npc_RemoveInvItems (hero,ItPl_Temp_Herb, 		amount);
				
				CreateInvItems	   (hero,ITPO_REVIVED_BOOST_MANA_03,1);  
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		};
	}
	else if (SpecialStr == TRUE)
	{
		if(PotionInstance == POTION_Perm_STR_01)
		{
			if (Npc_HasItems (hero, ItPl_Mana_Herb_01) 			>= amount * 2) 
			&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  		>= amount) 
			{
				Npc_RemoveInvItems (hero,ItPl_Mana_Herb_01,		amount * 2);
				Npc_RemoveInvItems (hero,ItPl_Temp_Herb, 		amount);
				
				CreateInvItems	   (hero,ITPO_REVIVED_BOOST_STR_01,1);  
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Perm_STR_02)
		{
			if (Npc_HasItems (hero, ItPl_Mana_Herb_02) 			>= amount * 2) 
			&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  		>= amount) 
			{
				Npc_RemoveInvItems (hero,ItPl_Mana_Herb_02,		amount * 2);
				Npc_RemoveInvItems (hero,ItPl_Temp_Herb, 		amount);
				
				CreateInvItems	   (hero,ITPO_REVIVED_BOOST_STR_02,1);  
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Perm_STR_03)
		{
			if (Npc_HasItems (hero, ItPl_Mana_Herb_03) 			>= amount * 2) 
			&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  		>= amount) 
			{
				Npc_RemoveInvItems (hero,ItPl_Mana_Herb_03,		amount * 2);
				Npc_RemoveInvItems (hero,ItPl_Temp_Herb, 		amount);
				
				CreateInvItems	   (hero,ITPO_REVIVED_BOOST_STR_03,1);  
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		};
	}
	else if (SpecialDex == TRUE)
	{
		if(PotionInstance == POTION_Perm_DEX_01)
		{
			if (Npc_HasItems (hero, ItPl_Mana_Herb_01) 			>= amount * 2) 
			&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  		>= amount) 
			{
				Npc_RemoveInvItems (hero,ItPl_Mana_Herb_01,		amount * 2);
				Npc_RemoveInvItems (hero,ItPl_Temp_Herb, 		amount);
				
				CreateInvItems	   (hero,ITPO_REVIVED_BOOST_DEX_01,1);  
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Perm_DEX_02)
		{
			if (Npc_HasItems (hero, ItPl_Mana_Herb_02) 			>= amount * 2) 
			&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  		>= amount) 
			{
				Npc_RemoveInvItems (hero,ItPl_Mana_Herb_02,		amount * 2);
				Npc_RemoveInvItems (hero,ItPl_Temp_Herb, 		amount);
				
				CreateInvItems	   (hero,ITPO_REVIVED_BOOST_DEX_02,1);  
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Perm_DEX_03)
		{
			if (Npc_HasItems (hero, ItPl_Mana_Herb_03) 			>= amount * 2) 
			&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  		>= amount) 
			{
				Npc_RemoveInvItems (hero,ItPl_Mana_Herb_03,		amount * 2);
				Npc_RemoveInvItems (hero,ItPl_Temp_Herb, 		amount);
				
				CreateInvItems	   (hero,ITPO_REVIVED_BOOST_DEX_03,1);  
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		};
	}
	else if (SpecialSpeed == TRUE)
	{
		if(PotionInstance == POTION_SPEED_01)
		{
			if (Npc_HasItems (hero, ItPl_Mana_Herb_01) 			>= amount * 2) 
			&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  		>= amount) 
			{
				Npc_RemoveInvItems (hero,ItPl_Mana_Herb_01,		amount * 2);
				Npc_RemoveInvItems (hero,ItPl_Temp_Herb, 		amount);
				
				CreateInvItems	   (hero,ITPO_REVIVED_SPEED_01,1);  
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_SPEED_02)
		{
			if (Npc_HasItems (hero, ItPl_Mana_Herb_02) 			>= amount * 2) 
			&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  		>= amount) 
			{
				Npc_RemoveInvItems (hero,ItPl_Mana_Herb_02,		amount * 2);
				Npc_RemoveInvItems (hero,ItPl_Temp_Herb, 		amount);
				
				CreateInvItems	   (hero,ITPO_REVIVED_SPEED_02,1);  
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_SPEED_03)
		{
			if (Npc_HasItems (hero, ItPl_Mana_Herb_03) 			>= amount * 2) 
			&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  		>= amount) 
			{
				Npc_RemoveInvItems (hero,ItPl_Mana_Herb_03,		amount * 2);
				Npc_RemoveInvItems (hero,ItPl_Temp_Herb, 		amount);
				
				CreateInvItems	   (hero,ITPO_REVIVED_SPEED_03,1);  
				Print (PRINT_AlchemySuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		};
	}
	else if (BoozeStart == TRUE)
	{
		if(PotionInstance == POTION_Booze_LouHammer)
		{
			if (Npc_HasItems (self, ItPl_SwampHerb) 			>= amount)
			&& (Npc_HasItems (self, ItPl_Beet)					>= amount * 2)
			&& (Npc_HasItems (self, ItAt_SharkTeeth)			>= amount)
			&& (Npc_HasItems (self, ItFo_Addon_Rum) 			>= amount)
			{
				Npc_RemoveInvItems (self, ItPl_SwampHerb,		amount);
				Npc_RemoveInvItems (self, ItPl_Beet,			amount * 2);
				Npc_RemoveInvItems (self, ItAt_SharkTeeth,		amount);
				Npc_RemoveInvItems (self, ItFo_Addon_Rum,		amount);
				
				CreateInvItems	   (hero,ItFo_Addon_LousHammer,1);  
				Print (PRINT_BoozeSuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Booze_LouHammerDouble)
		{
			if (Npc_HasItems (self, ItPl_SwampHerb) 			>= amount)
			&& (Npc_HasItems (self, ItPl_Beet)					>= amount * 2)
			&& (Npc_HasItems (self, ItAt_SharkTeeth)			>= amount)
			&& (Npc_HasItems (self, ItFo_Addon_Rum) 			>= amount)
			{
				Npc_RemoveInvItems (self, ItPl_SwampHerb,		amount);
				Npc_RemoveInvItems (self, ItPl_Beet,			amount * 2);
				Npc_RemoveInvItems (self, ItAt_SharkTeeth,		amount);
				Npc_RemoveInvItems (self, ItFo_Addon_Rum,		amount);
				
				CreateInvItems	   (hero,ItFo_Addon_LousHammer,1);  
				Print (PRINT_BoozeSuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Booze_FastHerring)
		{
			if (Npc_HasItems (self, ItPl_SwampHerb) 			>= amount)
			&& (Npc_HasItems (self, ItPl_Beet)					>= amount * 2)
			&& (Npc_HasItems (self, ItAt_SharkTeeth)			>= amount)
			&& (Npc_HasItems (self, ItFo_Addon_Rum) 			>= amount)
			{
				Npc_RemoveInvItems (self, ItPl_SwampHerb,		amount);
				Npc_RemoveInvItems (self, ItPl_Beet,			amount * 2);
				Npc_RemoveInvItems (self, ItAt_SharkTeeth,		amount);
				Npc_RemoveInvItems (self, ItFo_Addon_Rum,		amount);
				
				CreateInvItems	   (hero,ItFo_Addon_LousHammer,1);  
				Print (PRINT_BoozeSuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Booze_TurnipBooze)
		{
			if (Npc_HasItems (self, ItPl_SwampHerb) 			>= amount)
			&& (Npc_HasItems (self, ItPl_Beet)					>= amount * 2)
			&& (Npc_HasItems (self, ItAt_SharkTeeth)			>= amount)
			&& (Npc_HasItems (self, ItFo_Addon_Rum) 			>= amount)
			{
				Npc_RemoveInvItems (self, ItPl_SwampHerb,		amount);
				Npc_RemoveInvItems (self, ItPl_Beet,			amount * 2);
				Npc_RemoveInvItems (self, ItAt_SharkTeeth,		amount);
				Npc_RemoveInvItems (self, ItFo_Addon_Rum,		amount);
				
				CreateInvItems	   (hero,ItFo_Addon_LousHammer,1);  
				Print (PRINT_BoozeSuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Booze_VinoBooze)
		{
			if (Npc_HasItems (self, ItPl_SwampHerb) 			>= amount)
			&& (Npc_HasItems (self, ItPl_Beet)					>= amount * 2)
			&& (Npc_HasItems (self, ItAt_SharkTeeth)			>= amount)
			&& (Npc_HasItems (self, ItFo_Addon_Rum) 			>= amount)
			{
				Npc_RemoveInvItems (self, ItPl_SwampHerb,		amount);
				Npc_RemoveInvItems (self, ItPl_Beet,			amount * 2);
				Npc_RemoveInvItems (self, ItAt_SharkTeeth,		amount);
				Npc_RemoveInvItems (self, ItFo_Addon_Rum,		amount);
				
				CreateInvItems	   (hero,ItFo_Addon_LousHammer,1);  
				Print (PRINT_BoozeSuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Booze_WhiteRum)
		{
			if (Npc_HasItems (self, ItPl_SwampHerb) 			>= amount)
			&& (Npc_HasItems (self, ItPl_Beet)					>= amount * 2)
			&& (Npc_HasItems (self, ItAt_SharkTeeth)			>= amount)
			&& (Npc_HasItems (self, ItFo_Addon_Rum) 			>= amount)
			{
				Npc_RemoveInvItems (self, ItPl_SwampHerb,		amount);
				Npc_RemoveInvItems (self, ItPl_Beet,			amount * 2);
				Npc_RemoveInvItems (self, ItAt_SharkTeeth,		amount);
				Npc_RemoveInvItems (self, ItFo_Addon_Rum,		amount);
				
				CreateInvItems	   (hero,ItFo_Addon_LousHammer,1);  
				Print (PRINT_BoozeSuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Booze_MageWine)
		{
			if (Npc_HasItems (self, ItPl_SwampHerb) 			>= amount)
			&& (Npc_HasItems (self, ItPl_Beet)					>= amount * 2)
			&& (Npc_HasItems (self, ItAt_SharkTeeth)			>= amount)
			&& (Npc_HasItems (self, ItFo_Addon_Rum) 			>= amount)
			{
				Npc_RemoveInvItems (self, ItPl_SwampHerb,		amount);
				Npc_RemoveInvItems (self, ItPl_Beet,			amount * 2);
				Npc_RemoveInvItems (self, ItAt_SharkTeeth,		amount);
				Npc_RemoveInvItems (self, ItFo_Addon_Rum,		amount);
				
				CreateInvItems	   (hero,ItFo_Addon_LousHammer,1);  
				Print (PRINT_BoozeSuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Booze_RiceSchnaps)
		{
			if (Npc_HasItems (self, ItPl_Speed_Herb_01) 		>= amount)
			&& (Npc_HasItems (self, ItFo_Fish)					>= amount)
			&& (Npc_HasItems (self, ItFo_Addon_Rum) 			>= amount)
			{
				Npc_RemoveInvItems (self, ItPl_Speed_Herb_01,	amount);
				Npc_RemoveInvItems (self, ItFo_Fish,			amount);
				Npc_RemoveInvItems (self, ItFo_Addon_Rum,		amount);
				
				CreateInvItems	   (hero,ItFo_Addon_SchnellerHering,1);  
				Print (PRINT_BoozeSuccess);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		};
	}
	else if (TabakStart == TRUE)
	{
		if(PotionInstance == POTION_Weed_Regular)
		{
			if (Npc_HasItems (self, ItPl_SwampHerb) 			>= amount)
			{
				Npc_RemoveInvItems (hero,ItPl_SwampHerb, 		amount);
				
				CreateInvItems	   (hero,ITMI_REVIVED_JOINT_REGULAR,1);  
				Print (PRINT_TabakSuccessREVIVED);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Weed_AppleDouble)
		{
			if (Npc_HasItems (self, ItPl_SwampHerb) 			>= amount)
			{
				Npc_RemoveInvItems (hero,ItPl_SwampHerb, 		amount);
				
				CreateInvItems	   (hero,ITMI_REVIVED_JOINT_APPLEDOUBLE,1);  
				Print (PRINT_TabakSuccessREVIVED);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Weed_Apple)
		{
			if (Npc_HasItems (self, ItPl_SwampHerb) 			>= amount)
			{
				Npc_RemoveInvItems (hero,ItPl_SwampHerb, 		amount);
				
				CreateInvItems	   (hero,ITMI_REVIVED_JOINT_APPLE,1);  
				Print (PRINT_TabakSuccessREVIVED);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Weed_Honey)
		{
			if (Npc_HasItems (self, ItPl_SwampHerb) 			>= amount)
			{
				Npc_RemoveInvItems (hero,ItPl_SwampHerb, 		amount);
				
				CreateInvItems	   (hero,ITMI_REVIVED_JOINT_HONEY,1);  
				Print (PRINT_TabakSuccessREVIVED);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Weed_Mushroom)
		{
			if (Npc_HasItems (self, ItPl_SwampHerb) 			>= amount)
			{
				Npc_RemoveInvItems (hero,ItPl_SwampHerb, 		amount);
				
				CreateInvItems	   (hero,ITMI_REVIVED_JOINT_MUSHROOM,1);  
				Print (PRINT_TabakSuccessREVIVED);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Weed_GreenNovice)
		{
			if (Npc_HasItems (self, ItPl_SwampHerb) 			>= amount)
			{
				Npc_RemoveInvItems (hero,ItPl_SwampHerb, 		amount);
				
				CreateInvItems	   (hero,ITMI_REVIVED_JOINT_GREENNOVICE,1);  
				Print (PRINT_TabakSuccessREVIVED);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Weed_NorthernDark)
		{
			if (Npc_HasItems (self, ItPl_SwampHerb) 			>= amount)
			{
				Npc_RemoveInvItems (hero,ItPl_SwampHerb, 		amount);
				
				CreateInvItems	   (hero,ITMI_REVIVED_JOINT_NORTHDARK,1);  
				Print (PRINT_TabakSuccessREVIVED);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Weed_Dreamcall)
		{
			if (Npc_HasItems (self, ItPl_SwampHerb) 			>= amount)
			{
				Npc_RemoveInvItems (hero,ItPl_SwampHerb, 		amount);
				
				CreateInvItems	   (hero,ITMI_REVIVED_JOINT_DREAMCALL,1);  
				Print (PRINT_TabakSuccessREVIVED);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		}
		else if(PotionInstance == POTION_Weed_DreamcallStrong)
		{
			if (Npc_HasItems (self, ItPl_SwampHerb) 			>= amount)
			{
				Npc_RemoveInvItems (hero,ItPl_SwampHerb, 		amount);
				
				CreateInvItems	   (hero,ITMI_REVIVED_JOINT_DREAMCALL_02,1);  
				Print (PRINT_TabakSuccessREVIVED);
			}
				else 
			{
				AlchemyCraft_NoIngredients();
			};	
		};
	}
	else if (TabakBlend == TRUE)
	{
		if(PotionInstance == TOBACCO_Apple)
		{
			CreateInvItems (hero, ItMi_ApfelTabak, 1);
			Print (PRINT_TabakSuccess);
		}
		else if(PotionInstance == TOBACCO_AppleDouble)
		{
			CreateInvItems (hero, ItMi_DoppelTabak, 1);
			Print (PRINT_TabakSuccess);
		}
		else if(PotionInstance == TOBACCO_Honey)
		{
			CreateInvItems (hero, ItMi_Honigtabak, 1);
			Print (PRINT_TabakSuccess);
		}
		else if(PotionInstance == TOBACCO_Swampweed)
		{
			CreateInvItems (hero, ItMi_SumpfTabak, 1);
			Print (PRINT_TabakSuccess);
		}
		else if(PotionInstance == TOBACCO_Mushroom)
		{
			CreateInvItems (hero, ItMi_PilzTabak, 1);
			Print (PRINT_TabakSuccess);
		};
	};
	//B_ENDPRODUCTIONDIALOG ();	
};

func void AlchemyCraftMultiple_Make1()
{
	AlchemyCraftMultiple_Logic(1);
};
func void AlchemyCraftMultiple_Make2()
{
	AlchemyCraftMultiple_Logic(2);
};
func void AlchemyCraftMultiple_Make5()
{
	AlchemyCraftMultiple_Logic(5);
};
func void AlchemyCraftMultiple_Make10()
{
	AlchemyCraftMultiple_Logic(10);
};


//****************************************************************************
//****************************************************************************
//			EYE OF INNOS
//			EYE OF INNOS
//			EYE OF INNOS
//****************************************************************************
//****************************************************************************

INSTANCE PC_Charge_InnosEye (C_INFO)
{
	nr       		= 1;
	npc				= PC_Hero;
	condition		= PC_Charge_InnosEye_Condition;
	information		= PC_Charge_InnosEye_Info;
	permanent		= TRUE;
	description		= "Recharge the Eye of Innos"; 
};
FUNC INT PC_Charge_InnosEye_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[CHARGE_INNOSEYE] == TRUE)
	&& (Npc_HasItems (hero,ItMi_InnosEye_Discharged_MIS) >= 1))
	&& (BoozeStart == FALSE)
	&& (TabakStart == FALSE)
	&& (HealthStart == FALSE)
	&& (ManaStart == FALSE)
	&& (SpecialStart == FALSE)
	&& (SpecialDex == FALSE)
	&& (SpecialStr == FALSE)
	&& (SpecialSpeed == FALSE)
	{		
		return TRUE;
	};
};
FUNC VOID PC_Charge_InnosEye_Info ()
{
	if 	(
			(
				(Npc_HasItems (hero, ItAt_IcedragonHeart) >= 1)
				|| 		(Npc_HasItems (hero, ItAt_RockdragonHeart)	>= 1)
				|| 		(Npc_HasItems (hero, ItAt_FiredragonHeart)	>= 1)
				|| 		(Npc_HasItems (hero, ItAt_SwampdragonHeart)	>= 1)	
			)
			&& 		(Npc_HasItems (hero, ItMi_InnosEye_Discharged_MIS)    >= 1)	
		) 
	{
		if 		(Npc_HasItems (hero, ItAt_SwampdragonHeart	)	>= 1){Npc_RemoveInvItems (hero,ItAt_SwampdragonHeart  ,1);}
		else if	(Npc_HasItems (hero, ItAt_RockdragonHeart	) 	>= 1){Npc_RemoveInvItems (hero,ItAt_RockdragonHeart	  ,1);}
		else if	(Npc_HasItems (hero, ItAt_FiredragonHeart	) 	>= 1){Npc_RemoveInvItems (hero,ItAt_FiredragonHeart	  ,1);}
		else if	(Npc_HasItems (hero, ItAt_IcedragonHeart	) 	>= 1){Npc_RemoveInvItems (hero,ItAt_IcedragonHeart	  ,1);};
	
		Npc_RemoveInvItems (hero,ItMi_InnosEye_Discharged_MIS	  ,1);
		
		CreateInvItems	   (hero,ItMi_InnosEye_MIS,1);  
		
		Print (PRINT_AlchemySuccessInnoseye);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);
	};	
	//B_ENDPRODUCTIONDIALOG ();
};


//****************************************************************************
//****************************************************************************
//			HEALTH POTIONS
//			HEALTH POTIONS
//			HEALTH POTIONS
//****************************************************************************
//****************************************************************************

var int HealthStart;
//----------------------
INSTANCE PC_Health_Start (C_Info)
{
	npc				= PC_Hero;
	nr				= 2;
	condition		= PC_Health_Start_Condition;
	information		= PC_Health_Start_Info;
	permanent		= TRUE;
	description		= "Brew healing potions"; 
};

FUNC INT PC_Health_Start_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (SpecialStart == FALSE)
	&& (SpecialHealth == FALSE)
	&& (SpecialMana == FALSE)
	&& (SpecialStr == FALSE)
	&& (SpecialDex == FALSE)
	&& (SpecialSpeed == FALSE)
	&& (BoozeStart == FALSE)
	&& (TabakStart == FALSE)
	&& (HealthStart == FALSE)
	&& (ManaStart == FALSE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Health_Start_Info()
{
	HealthStart = TRUE;
};
//*******************************************************
INSTANCE PC_Health_Stop (C_Info)
{
	npc				= PC_Hero;
	nr				= 99;
	condition		= PC_Health_Stop_Condition;
	information		= PC_Health_Stop_Info;
	permanent		= TRUE;
	description		= DIALOG_BACK; 
};

FUNC INT PC_Health_Stop_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (HealthStart == TRUE)
	{	
		return TRUE;
	};
};
FUNC VOID PC_Health_Stop_Info()
{
	HealthStart = FALSE;
};
//*******************************************************
INSTANCE PC_ItPo_Health_01 (C_INFO)
{
	nr       		= 2;
	npc				= PC_Hero;
	condition		= PC_ItPo_Health_01_Condition;
	information		= PC_ItPo_Health_01_Info;
	permanent		= TRUE;
	description		= "Essence of healing (2 healing plants, 1 meadow knotweed)"; 
};

FUNC INT PC_ItPo_Health_01_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Health_01] == TRUE))
	&& (HealthStart == TRUE)
	{		
			return TRUE;
	};

};

FUNC VOID PC_ItPo_Health_01_Info ()
{
	AlchemyCraftMultiple_Input(PC_ItPo_Health_01, POTION_Health_01);
};
//*******************************************************
INSTANCE PC_ItPo_Health_02 (C_INFO)
{
	nr       		= 3;
	npc				= PC_Hero;
	condition		= PC_ItPo_Health_02_Condition;
	information		= PC_ItPo_Health_02_Info;
	permanent		= TRUE;
	description		= "Extract of healing (2 healing herbs, 1 meadow knotweed)"; 
};

FUNC INT PC_ItPo_Health_02_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)  
	&& (PLAYER_TALENT_ALCHEMY[POTION_Health_02] == TRUE))
	&& (HealthStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ItPo_Health_02_Info ()
{
	AlchemyCraftMultiple_Input(PC_ItPo_Health_02, POTION_Health_02);
};
//*******************************************************
INSTANCE PC_ItPo_Health_03 (C_INFO)
{
	nr       		= 4;
	npc				= PC_Hero;
	condition		= PC_ItPo_Health_03_Condition;
	information		= PC_ItPo_Health_03_Info;
	permanent		= TRUE;
	description		= "Elixir of healing (2 healing roots, 1 meadow knotweed)"; 
};
FUNC INT PC_ItPo_Health_03_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)  
	&& (PLAYER_TALENT_ALCHEMY[POTION_Health_03] == TRUE))
	&& (HealthStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ItPo_Health_03_Info ()
{
	AlchemyCraftMultiple_Input(PC_ItPo_Health_03, POTION_Health_03);
};
//*******************************************************
INSTANCE PC_ItPo_Health_04 (C_INFO)
{
	nr       		= 4;
	npc				= PC_Hero;
	condition		= PC_ItPo_Health_04_Condition;
	information		= PC_ItPo_Health_04_Info;
	permanent		= TRUE;
	description		= "Pure life energy (3 essences of healing, 1 meadow knotweed)"; 
};
FUNC INT PC_ItPo_Health_04_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)  
	&& (PLAYER_TALENT_ALCHEMY[POTION_Health_04] == TRUE))
	&& (HealthStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ItPo_Health_04_Info ()
{
	if (Npc_HasItems (hero, ItPo_Health_01) >= 3) 
	&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  	>= 1) 
	{
		Npc_RemoveInvItems (hero,ItPo_Health_01,3);
		Npc_RemoveInvItems (hero,ItPl_Temp_Herb	  	,1);
		
		CreateInvItems	   (hero,ItPo_Health_Addon_04,1);  
		Print (PRINT_AlchemySuccess);
	}
		else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);
	};	
	//B_ENDPRODUCTIONDIALOG ();		
};


//****************************************************************************
//****************************************************************************
//			MANA POTIONS
//			MANA POTIONS
//			MANA POTIONS
//****************************************************************************
//****************************************************************************

var int ManaStart;
//----------------------
INSTANCE PC_Mana_Start (C_Info)
{
	npc				= PC_Hero;
	nr				= 3;
	condition		= PC_Mana_Start_Condition;
	information		= PC_Mana_Start_Info;
	permanent		= TRUE;
	description		= "Brew mana potions"; 
};

FUNC INT PC_Mana_Start_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (SpecialStart == FALSE)
	&& (SpecialHealth == FALSE)
	&& (SpecialMana == FALSE)
	&& (SpecialStr == FALSE)
	&& (SpecialDex == FALSE)
	&& (SpecialSpeed == FALSE)
	&& (BoozeStart == FALSE)
	&& (TabakStart == FALSE)
	&& (HealthStart == FALSE)
	&& (ManaStart == FALSE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Mana_Start_Info()
{
	ManaStart = TRUE;
};
//*******************************************************
INSTANCE PC_Mana_Stop (C_Info)
{
	npc				= PC_Hero;
	nr				= 99;
	condition		= PC_Mana_Stop_Condition;
	information		= PC_Mana_Stop_Info;
	permanent		= TRUE;
	description		= DIALOG_BACK; 
};

FUNC INT PC_Mana_Stop_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (ManaStart == TRUE)
	{	
		return TRUE;
	};
};
FUNC VOID PC_Mana_Stop_Info()
{
	ManaStart = FALSE;
};
//*******************************************************
INSTANCE PC_ItPo_Mana_01 (C_INFO)
{
	nr       		= 2;
	npc				= PC_Hero;
	condition		= PC_ItPo_Mana_01_Condition;
	information		= PC_ItPo_Mana_01_Info;
	permanent		= TRUE;
	description		= "Mana essence (2 fire nettles, 1 meadow knotweed)"; 
};

FUNC INT PC_ItPo_Mana_01_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Mana_01] == TRUE))
	&& (ManaStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ItPo_Mana_01_Info ()
{
	AlchemyCraftMultiple_Input(PC_ItPo_Mana_01, POTION_Mana_01);
};

//*******************************************************
INSTANCE PC_ItPo_Mana_02 (C_INFO)
{
	nr       		= 3;
	npc				= PC_Hero;
	condition		= PC_ItPo_Mana_02_Condition;
	information		= PC_ItPo_Mana_02_Info;
	permanent		= TRUE;
	description		= "Mana extract (2 fireweeds, 1 meadow knotweed) "; 
};
FUNC INT PC_ItPo_Mana_02_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Mana_02] == TRUE))
	&& (ManaStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ItPo_Mana_02_Info ()
{
	AlchemyCraftMultiple_Input(PC_ItPo_Mana_02, POTION_Mana_02);
};
//*******************************************************
INSTANCE PC_ItPo_Mana_03 (C_INFO)
{
	nr       		= 4;
	npc				= PC_Hero;
	condition		= PC_ItPo_Mana_03_Condition;
	information		= PC_ItPo_Mana_03_Info;
	permanent		= TRUE;
	description		= "Mana elixir (2 fire roots, 1 meadow knotweed)"; 
};

FUNC INT PC_ItPo_Mana_03_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Mana_03] == TRUE))
	&& (ManaStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ItPo_Mana_03_Info ()
{
	AlchemyCraftMultiple_Input(PC_ItPo_Mana_03, POTION_Mana_03);
};
//*******************************************************
INSTANCE PC_ItPo_Mana_04 (C_INFO)
{
	nr       		= 4;
	npc				= PC_Hero;
	condition		= PC_ItPo_Mana_04_Condition;
	information		= PC_ItPo_Mana_04_Info;
	permanent		= TRUE;
	description		= "Pure mana (3 Mana essences, 1 meadow knotweed)"; 
};

FUNC INT PC_ItPo_Mana_04_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Mana_04] == TRUE))
	&& (ManaStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ItPo_Mana_04_Info ()
{
	if (Npc_HasItems (hero, ItPo_Mana_01) >= 3) 
	&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  >= 1) 
	{
		Npc_RemoveInvItems (hero,ItPo_Mana_01,3);
		Npc_RemoveInvItems (hero,ItPl_Temp_Herb	  ,1);
		
		CreateInvItems	   (hero,ItPo_Mana_Addon_04,1);  
		Print (PRINT_AlchemySuccess);
	}
		else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);
	};	
	//B_ENDPRODUCTIONDIALOG ();
};


//****************************************************************************
//****************************************************************************
//			SPECIAL POTIONS
//			SPECIAL POTIONS
//			SPECIAL POTIONS
//****************************************************************************
//****************************************************************************

var int SpecialStart;
//----------------------
INSTANCE PC_Special_Start (C_Info)
{
	npc				= PC_Hero;
	nr				= 5;
	condition		= PC_Special_Start_Condition;
	information		= PC_Special_Start_Info;
	permanent		= TRUE;
	description		= "Brew special potions"; 
};

FUNC INT PC_Special_Start_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (SpecialStart == FALSE)
	&& (SpecialHealth == FALSE)
	&& (SpecialMana == FALSE)
	&& (SpecialStr == FALSE)
	&& (SpecialDex == FALSE)
	&& (SpecialSpeed == FALSE)
	&& (BoozeStart == FALSE)
	&& (TabakStart == FALSE)
	&& (HealthStart == FALSE)
	&& (ManaStart == FALSE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Special_Start_Info()
{
	SpecialStart = TRUE;
};

//*******************************************************

INSTANCE PC_Special_Stop (C_Info)
{
	npc				= PC_Hero;
	nr				= 99;
	condition		= PC_Special_Stop_Condition;
	information		= PC_Special_Stop_Info;
	permanent		= TRUE;
	description		= DIALOG_BACK; 
};

FUNC INT PC_Special_Stop_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (SpecialStart == TRUE)
	{	
		return TRUE;
	};
};
FUNC VOID PC_Special_Stop_Info()
{
	SpecialStart = FALSE;
};

//*******************************************************

INSTANCE PC_ItPo_Addon_Geist (C_INFO)
{
	nr       		= 2;
	npc				= PC_Hero;
	condition		= PC_ItPo_Addon_Geist_Condition;
	information		= PC_ItPo_Addon_Geist_Info;
	permanent		= TRUE;
	description		= "Elixir of Mental Alteration"; 
};

FUNC INT PC_ItPo_Addon_Geist_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)  
	&& (PLAYER_TALENT_ALCHEMY[POTION_Special_Experience] == TRUE))
	&& (SpecialStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ItPo_Addon_Geist_Info ()
{
	AlchemyCraftMultiple_Input(PC_ItPo_Addon_Geist, POTION_Special_Experience);	
};

//*******************************************************

INSTANCE PC_ItPo_MegaDrink (C_INFO)
{
	nr       		= 2;
	npc				= PC_Hero;
	condition		= PC_ItPo_MegaDrink_Condition;
	information		= PC_ItPo_MegaDrink_Info;
	permanent		= TRUE;
	description		= "Embarla Firgasto (10 dragon eggs, 1 black pearl, 1 sulfur)"; 
};

FUNC INT PC_ItPo_MegaDrink_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_MegaDrink] == TRUE))
	&& (SpecialStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ItPo_MegaDrink_Info ()
{
	AlchemyCraftMultiple_Input(PC_ItPo_MegaDrink, POTION_MegaDrink);
};


//*******************************************************
//	REVIVED - SPECIAL
//*******************************************************

INSTANCE PC_ITPO_DRAGONDRINK (C_INFO)
{
	nr       		= 2;
	npc				= PC_Hero;
	condition		= PC_ITPO_DRAGONDRINK_Condition;
	information		= PC_ITPO_DRAGONDRINK_Info;
	permanent		= TRUE;
	description		= "Dragon egg potion (1 dragon egg, 1 black pearl, 1 sulfur)"; 
};

FUNC INT PC_ITPO_DRAGONDRINK_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Special_DragonDrink] == TRUE))
	&& (SpecialStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ITPO_DRAGONDRINK_Info ()
{
	AlchemyCraftMultiple_Input(PC_ITPO_DRAGONDRINK, POTION_Special_DragonDrink);
};

//*******************************************************

INSTANCE PC_ITPO_PERM_MASTER_01 (C_INFO)
{
	nr       		= 3;
	npc				= PC_Hero;
	condition		= PC_ITPO_PERM_MASTER_01_Condition;
	information		= PC_ITPO_PERM_MASTER_01_Info;
	permanent		= TRUE;
	description		= "Potion of Power (10 dragon eggs, 1 black pearl, 1 sulfur)"; 
};

FUNC INT PC_ITPO_PERM_MASTER_01_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Perm_MASTER_01] == TRUE))
	&& (SpecialStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ITPO_PERM_MASTER_01_Info ()
{
	AlchemyCraftMultiple_Input(PC_ITPO_PERM_MASTER_01, POTION_Perm_MASTER_01);
};
//*******************************************************
INSTANCE PC_ITPO_PERM_MASTER_02 (C_INFO)
{
	nr       		= 3;
	npc				= PC_Hero;
	condition		= PC_ITPO_PERM_MASTER_02_Condition;
	information		= PC_ITPO_PERM_MASTER_02_Info;
	permanent		= TRUE;
	description		= "Potion of Supremacy (10 dragon eggs, 1 black pearl, 1 sulfur)"; 
};

FUNC INT PC_ITPO_PERM_MASTER_02_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Perm_MASTER_02] == TRUE))
	&& (SpecialStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ITPO_PERM_MASTER_02_Info ()
{
	AlchemyCraftMultiple_Input(PC_ITPO_PERM_MASTER_02, POTION_Perm_MASTER_02);
};
//*******************************************************
INSTANCE PC_ITPO_PERM_MASTER_03 (C_INFO)
{
	nr       		= 4;
	npc				= PC_Hero;
	condition		= PC_ITPO_PERM_MASTER_03_Condition;
	information		= PC_ITPO_PERM_MASTER_03_Info;
	permanent		= TRUE;
	description		= "Potion of Godhood (10 dragon eggs, 1 black pearl, 1 sulfur)"; 
};

FUNC INT PC_ITPO_PERM_MASTER_03_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Perm_MASTER_03] == TRUE))
	&& (SpecialStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ITPO_PERM_MASTER_03_Info ()
{
	AlchemyCraftMultiple_Input(PC_ITPO_PERM_MASTER_03, POTION_Perm_MASTER_03);
};


//****************************************************************************
//****************************************************************************
//			PERM POTIONS
//			PERM POTIONS
//			PERM POTIONS
//****************************************************************************
//****************************************************************************

var int SpecialHealth;
//----------------------
INSTANCE PC_SPECIAL_HEALTH_Start (C_Info)
{
	npc				= PC_Hero;
	nr				= 6;
	condition		= PC_SPECIAL_HEALTH_Start_Condition;
	information		= PC_SPECIAL_HEALTH_Start_Info;
	permanent		= TRUE;
	description		= "Brew permanent health potions"; 
};

FUNC INT PC_SPECIAL_HEALTH_Start_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (SpecialStart == FALSE)
	&& (SpecialHealth == FALSE)
	&& (SpecialMana == FALSE)
	&& (SpecialStr == FALSE)
	&& (SpecialDex == FALSE)
	&& (SpecialSpeed == FALSE)
	&& (BoozeStart == FALSE)
	&& (TabakStart == FALSE)
	&& (HealthStart == FALSE)
	&& (ManaStart == FALSE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_SPECIAL_HEALTH_Start_Info()
{
	SpecialHealth = TRUE;
};
//*******************************************************
INSTANCE PC_SPECIAL_HEALTH_Stop (C_Info)
{
	npc				= PC_Hero;
	nr				= 99;
	condition		= PC_SPECIAL_HEALTH_Stop_Condition;
	information		= PC_SPECIAL_HEALTH_Stop_Info;
	permanent		= TRUE;
	description		= DIALOG_BACK; 
};

FUNC INT PC_SPECIAL_HEALTH_Stop_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (SpecialHealth == TRUE)
	{	
		return TRUE;
	};
};
FUNC VOID PC_SPECIAL_HEALTH_Stop_Info()
{
	SpecialHealth = FALSE;
};
//*******************************************************
INSTANCE PC_ITPO_PERM_HEALTH_01 (C_INFO)
{
	nr       		= 1;
	npc				= PC_Hero;
	condition		= PC_ITPO_PERM_HEALTH_01_Condition;
	information		= PC_ITPO_PERM_HEALTH_01_Info;
	permanent		= TRUE;
	description		= "Essence of Life (1 goblin berry, 1 king's sorrel)"; 
};

FUNC INT PC_ITPO_PERM_HEALTH_01_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Perm_HEALTH_01] == TRUE))
	&& (SpecialHealth == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ITPO_PERM_HEALTH_01_Info ()
{
	AlchemyCraftMultiple_Input(PC_ITPO_PERM_HEALTH_01, POTION_Perm_HEALTH_01);
};
//*******************************************************
INSTANCE PC_ITPO_PERM_HEALTH_02 (C_INFO)
{
	nr       		= 2;
	npc				= PC_Hero;
	condition		= PC_ITPO_PERM_HEALTH_02_Condition;
	information		= PC_ITPO_PERM_HEALTH_02_Info;
	permanent		= TRUE;
	description		= "Extract of Life (1 goblin berry, 1 king's sorrel)"; 
};

FUNC INT PC_ITPO_PERM_HEALTH_02_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Perm_HEALTH_02] == TRUE))
	&& (SpecialHealth == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ITPO_PERM_HEALTH_02_Info ()
{
	AlchemyCraftMultiple_Input(PC_ITPO_PERM_HEALTH_02, POTION_Perm_HEALTH_02);
};
//*******************************************************
INSTANCE PC_ITPO_PERM_HEALTH_03 (C_INFO)
{
	nr       		= 3;
	npc				= PC_Hero;
	condition		= PC_ITPO_PERM_HEALTH_03_Condition;
	information		= PC_ITPO_PERM_HEALTH_03_Info;
	permanent		= TRUE;
	description		= "Elixir of Life (1 goblin berry, 1 king's sorrel)"; 
};

FUNC INT PC_ITPO_PERM_HEALTH_03_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Perm_HEALTH_03] == TRUE))
	&& (SpecialHealth == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ITPO_PERM_HEALTH_03_Info ()
{
	AlchemyCraftMultiple_Input(PC_ITPO_PERM_HEALTH_03, POTION_Perm_HEALTH_03);
};

//*******************************************************
//	REVIVED - SPECIAL MANA
//*******************************************************

var int SpecialMana;
//----------------------
INSTANCE PC_SPECIAL_MANA_Start (C_Info)
{
	npc				= PC_Hero;
	nr				= 6;
	condition		= PC_SPECIAL_MANA_Start_Condition;
	information		= PC_SPECIAL_MANA_Start_Info;
	permanent		= TRUE;
	description		= "Brew permanent mana potions"; 
};

FUNC INT PC_SPECIAL_MANA_Start_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (SpecialStart == FALSE)
	&& (SpecialHealth == FALSE)
	&& (SpecialMana == FALSE)
	&& (SpecialStr == FALSE)
	&& (SpecialDex == FALSE)
	&& (SpecialSpeed == FALSE)
	&& (BoozeStart == FALSE)
	&& (TabakStart == FALSE)
	&& (HealthStart == FALSE)
	&& (ManaStart == FALSE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_SPECIAL_MANA_Start_Info()
{
	SpecialMana = TRUE;
};
//*******************************************************
INSTANCE PC_SPECIAL_MANA_Stop (C_Info)
{
	npc				= PC_Hero;
	nr				= 99;
	condition		= PC_SPECIAL_MANA_Stop_Condition;
	information		= PC_SPECIAL_MANA_Stop_Info;
	permanent		= TRUE;
	description		= DIALOG_BACK; 
};

FUNC INT PC_SPECIAL_MANA_Stop_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (SpecialMana == TRUE)
	{	
		return TRUE;
	};
};
FUNC VOID PC_SPECIAL_MANA_Stop_Info()
{
	SpecialMana = FALSE;
};
//*******************************************************
INSTANCE PC_ITPO_PERM_MANA_01 (C_INFO)
{
	nr       		= 1;
	npc				= PC_Hero;
	condition		= PC_ITPO_PERM_MANA_01_Condition;
	information		= PC_ITPO_PERM_MANA_01_Info;
	permanent		= TRUE;
	description		= "Essence of the Spirit (1 goblin berry, 1 king's sorrel)"; 
};

FUNC INT PC_ITPO_PERM_MANA_01_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Perm_MANA_01] == TRUE))
	&& (SpecialMana == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ITPO_PERM_MANA_01_Info ()
{
	AlchemyCraftMultiple_Input(PC_ITPO_PERM_MANA_01, POTION_Perm_MANA_01);	
};
//*******************************************************
INSTANCE PC_ITPO_PERM_MANA_02 (C_INFO)
{
	nr       		= 2;
	npc				= PC_Hero;
	condition		= PC_ITPO_PERM_MANA_02_Condition;
	information		= PC_ITPO_PERM_MANA_02_Info;
	permanent		= TRUE;
	description		= "Extract of the Spirit (1 goblin berry, 1 king's sorrel)"; 
};

FUNC INT PC_ITPO_PERM_MANA_02_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Perm_MANA_02] == TRUE))
	&& (SpecialMana == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ITPO_PERM_MANA_02_Info ()
{
	AlchemyCraftMultiple_Input(PC_ITPO_PERM_MANA_02, POTION_Perm_MANA_02);	
};
//*******************************************************
INSTANCE PC_ITPO_PERM_MANA_03 (C_INFO)
{
	nr       		= 3;
	npc				= PC_Hero;
	condition		= PC_ITPO_PERM_MANA_03_Condition;
	information		= PC_ITPO_PERM_MANA_03_Info;
	permanent		= TRUE;
	description		= "Elixir of the Spirit (1 goblin berry, 1 king's sorrel)"; 
};

FUNC INT PC_ITPO_PERM_MANA_03_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Perm_MANA_03] == TRUE))
	&& (SpecialMana == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ITPO_PERM_MANA_03_Info ()
{
	AlchemyCraftMultiple_Input(PC_ITPO_PERM_MANA_03, POTION_Perm_MANA_03);	
};

//*******************************************************
//	REVIVED - SPECIAL STR
//*******************************************************

var int SpecialStr;
//----------------------
INSTANCE PC_SPECIAL_STR_Start (C_Info)
{
	npc				= PC_Hero;
	nr				= 6;
	condition		= PC_SPECIAL_STR_Start_Condition;
	information		= PC_SPECIAL_STR_Start_Info;
	permanent		= TRUE;
	description		= "Brew permanent strength potions"; 
};

FUNC INT PC_SPECIAL_STR_Start_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (SpecialStart == FALSE)
	&& (SpecialHealth == FALSE)
	&& (SpecialMana == FALSE)
	&& (SpecialStr == FALSE)
	&& (SpecialDex == FALSE)
	&& (SpecialSpeed == FALSE)
	&& (BoozeStart == FALSE)
	&& (TabakStart == FALSE)
	&& (HealthStart == FALSE)
	&& (ManaStart == FALSE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_SPECIAL_STR_Start_Info()
{
	SpecialStr = TRUE;
};
//*******************************************************
INSTANCE PC_SPECIAL_STR_Stop (C_Info)
{
	npc				= PC_Hero;
	nr				= 99;
	condition		= PC_SPECIAL_STR_Stop_Condition;
	information		= PC_SPECIAL_STR_Stop_Info;
	permanent		= TRUE;
	description		= DIALOG_BACK; 
};

FUNC INT PC_SPECIAL_STR_Stop_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (SpecialStr == TRUE)
	{	
		return TRUE;
	};
};
FUNC VOID PC_SPECIAL_STR_Stop_Info()
{
	SpecialStr = FALSE;
};
//*******************************************************
INSTANCE PC_ITPO_PERM_STR_01 (C_INFO)
{
	nr       		= 1;
	npc				= PC_Hero;
	condition		= PC_ITPO_PERM_STR_01_Condition;
	information		= PC_ITPO_PERM_STR_01_Info;
	permanent		= TRUE;
	description		= "Essence of Strength (1 goblin berry, 1 king's sorrel)"; 
};

FUNC INT PC_ITPO_PERM_STR_01_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Perm_STR_01] == TRUE))
	&& (SpecialStr == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ITPO_PERM_STR_01_Info ()
{
	AlchemyCraftMultiple_Input(PC_ITPO_PERM_STR_01, POTION_Perm_STR_01);		
};
//*******************************************************
INSTANCE PC_ITPO_PERM_STR_02 (C_INFO)
{
	nr       		= 2;
	npc				= PC_Hero;
	condition		= PC_ITPO_PERM_STR_02_Condition;
	information		= PC_ITPO_PERM_STR_02_Info;
	permanent		= TRUE;
	description		= "Extract of Strength (1 goblin berry, 1 king's sorrel)"; 
};

FUNC INT PC_ITPO_PERM_STR_02_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Perm_STR_02] == TRUE))
	&& (SpecialStr == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ITPO_PERM_STR_02_Info ()
{
	AlchemyCraftMultiple_Input(PC_ITPO_PERM_STR_02, POTION_Perm_STR_02);
};
//*******************************************************
INSTANCE PC_ITPO_PERM_STR_03 (C_INFO)
{
	nr       		= 3;
	npc				= PC_Hero;
	condition		= PC_ITPO_PERM_STR_03_Condition;
	information		= PC_ITPO_PERM_STR_03_Info;
	permanent		= TRUE;
	description		= "Elixir of Strength (1 goblin berry, 1 king's sorrel)"; 
};

FUNC INT PC_ITPO_PERM_STR_03_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Perm_STR_03] == TRUE))
	&& (SpecialStr == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ITPO_PERM_STR_03_Info ()
{
	AlchemyCraftMultiple_Input(PC_ITPO_PERM_STR_03, POTION_Perm_STR_03);
};

//*******************************************************
//	REVIVED - SPECIAL DEX
//*******************************************************

var int SpecialDex;
//----------------------
INSTANCE PC_SPECIAL_DEX_Start (C_Info)
{
	npc				= PC_Hero;
	nr				= 7;
	condition		= PC_SPECIAL_DEX_Start_Condition;
	information		= PC_SPECIAL_DEX_Start_Info;
	permanent		= TRUE;
	description		= "Brew permanent dexterity potions"; 
};

FUNC INT PC_SPECIAL_DEX_Start_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (SpecialStart == FALSE)
	&& (SpecialHealth == FALSE)
	&& (SpecialMana == FALSE)
	&& (SpecialStr == FALSE)
	&& (SpecialDex == FALSE)
	&& (SpecialSpeed == FALSE)
	&& (BoozeStart == FALSE)
	&& (TabakStart == FALSE)
	&& (HealthStart == FALSE)
	&& (ManaStart == FALSE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_SPECIAL_DEX_Start_Info()
{
	SpecialDex = TRUE;
};
//*******************************************************
INSTANCE PC_SPECIAL_DEX_Stop (C_Info)
{
	npc				= PC_Hero;
	nr				= 99;
	condition		= PC_SPECIAL_DEX_Stop_Condition;
	information		= PC_SPECIAL_DEX_Stop_Info;
	permanent		= TRUE;
	description		= DIALOG_BACK; 
};

FUNC INT PC_SPECIAL_DEX_Stop_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (SpecialDex == TRUE)
	{	
		return TRUE;
	};
};
FUNC VOID PC_SPECIAL_DEX_Stop_Info()
{
	SpecialDex = FALSE;
};
//*******************************************************
INSTANCE PC_ITPO_PERM_DEX_01 (C_INFO)
{
	nr       		= 1;
	npc				= PC_Hero;
	condition		= PC_ITPO_PERM_DEX_01_Condition;
	information		= PC_ITPO_PERM_DEX_01_Info;
	permanent		= TRUE;
	description		= "Essence of Dexterity (1 goblin berry, 1 king's sorrel)"; 
};

FUNC INT PC_ITPO_PERM_DEX_01_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX_01] == TRUE))
	&& (SpecialDex == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ITPO_PERM_DEX_01_Info ()
{
	AlchemyCraftMultiple_Input(PC_ITPO_PERM_DEX_01, POTION_Perm_DEX_01);	
};
//*******************************************************
INSTANCE PC_ITPO_PERM_DEX_02 (C_INFO)
{
	nr       		= 2;
	npc				= PC_Hero;
	condition		= PC_ITPO_PERM_DEX_02_Condition;
	information		= PC_ITPO_PERM_DEX_02_Info;
	permanent		= TRUE;
	description		= "Extract of Dexterity (1 goblin berry, 1 king's sorrel)"; 
};

FUNC INT PC_ITPO_PERM_DEX_02_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX_02] == TRUE))
	&& (SpecialDex == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ITPO_PERM_DEX_02_Info ()
{
	AlchemyCraftMultiple_Input(PC_ITPO_PERM_DEX_02, POTION_Perm_DEX_02);		
};
//*******************************************************
INSTANCE PC_ITPO_PERM_DEX_03 (C_INFO)
{
	nr       		= 3;
	npc				= PC_Hero;
	condition		= PC_ITPO_PERM_DEX_03_Condition;
	information		= PC_ITPO_PERM_DEX_03_Info;
	permanent		= TRUE;
	description		= "Elixir of Dexterity (1 goblin berry, 1 king's sorrel)"; 
};

FUNC INT PC_ITPO_PERM_DEX_03_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX_03] == TRUE))
	&& (SpecialDex == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ITPO_PERM_DEX_03_Info ()
{
	AlchemyCraftMultiple_Input(PC_ITPO_PERM_DEX_03, POTION_Perm_DEX_03);		
};

//*******************************************************
//	REVIVED - SPECIAL SPEED
//*******************************************************

var int SpecialSpeed;
//----------------------
INSTANCE PC_SPECIAL_SPEED_Start (C_Info)
{
	npc				= PC_Hero;
	nr				= 8;
	condition		= PC_SPECIAL_SPEED_Start_Condition;
	information		= PC_SPECIAL_SPEED_Start_Info;
	permanent		= TRUE;
	description		= "Brew speed potions"; 
};

FUNC INT PC_SPECIAL_SPEED_Start_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (SpecialStart == FALSE)
	&& (SpecialHealth == FALSE)
	&& (SpecialMana == FALSE)
	&& (SpecialStr == FALSE)
	&& (SpecialDex == FALSE)
	&& (SpecialSpeed == FALSE)
	&& (BoozeStart == FALSE)
	&& (TabakStart == FALSE)
	&& (HealthStart == FALSE)
	&& (ManaStart == FALSE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_SPECIAL_SPEED_Start_Info()
{
	SpecialSpeed = TRUE;
};
//*******************************************************
INSTANCE PC_SPECIAL_SPEED_Stop (C_Info)
{
	npc				= PC_Hero;
	nr				= 99;
	condition		= PC_SPECIAL_SPEED_Stop_Condition;
	information		= PC_SPECIAL_SPEED_Stop_Info;
	permanent		= TRUE;
	description		= DIALOG_BACK; 
};

FUNC INT PC_SPECIAL_SPEED_Stop_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (SpecialSpeed == TRUE)
	{	
		return TRUE;
	};
};
FUNC VOID PC_SPECIAL_SPEED_Stop_Info()
{
	SpecialSpeed = FALSE;
};
//*******************************************************
INSTANCE PC_ITPO_SPEED_01 (C_INFO)
{
	nr       		= 1;
	npc				= PC_Hero;
	condition		= PC_ITPO_SPEED_01_Condition;
	information		= PC_ITPO_SPEED_01_Info;
	permanent		= TRUE;
	description		= "Potion of Swiftness (1 goblin berry, 1 king's sorrel)"; 
};

FUNC INT PC_ITPO_SPEED_01_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_SPEED_01] == TRUE))
	&& (SpecialSpeed == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ITPO_SPEED_01_Info ()
{
	AlchemyCraftMultiple_Input(PC_ITPO_SPEED_01, POTION_SPEED_01);	
};
//*******************************************************
INSTANCE PC_ITPO_SPEED_02 (C_INFO)
{
	nr       		= 2;
	npc				= PC_Hero;
	condition		= PC_ITPO_SPEED_02_Condition;
	information		= PC_ITPO_SPEED_02_Info;
	permanent		= TRUE;
	description		= "Potion of Velocity (1 goblin berry, 1 king's sorrel)"; 
};

FUNC INT PC_ITPO_SPEED_02_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_SPEED_02] == TRUE))
	&& (SpecialSpeed == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ITPO_SPEED_02_Info ()
{
	AlchemyCraftMultiple_Input(PC_ITPO_SPEED_02, POTION_SPEED_02);		
};
//*******************************************************
INSTANCE PC_ITPO_SPEED_03 (C_INFO)
{
	nr       		= 3;
	npc				= PC_Hero;
	condition		= PC_ITPO_SPEED_03_Condition;
	information		= PC_ITPO_SPEED_03_Info;
	permanent		= TRUE;
	description		= "Potion of Haste (1 goblin berry, 1 king's sorrel)"; 
};

FUNC INT PC_ITPO_SPEED_03_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_SPEED_03] == TRUE))
	&& (SpecialSpeed == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ITPO_SPEED_03_Info ()
{
	AlchemyCraftMultiple_Input(PC_ITPO_SPEED_03, POTION_SPEED_03);		
};



//****************************************************************************
//****************************************************************************
//			BOOZE
//			BOOZE
//			BOOZE
//****************************************************************************
//****************************************************************************

var int BoozeStart;
//----------------------
INSTANCE PC_Booze_Start (C_Info)
{
	npc				= PC_Hero;
	nr				= 10;
	condition		= PC_Booze_Start_Condition;
	information		= PC_Booze_Start_Info;
	permanent		= TRUE;
	description		= "Distill booze"; 
};

FUNC INT PC_Booze_Start_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (SpecialStart == FALSE)
	&& (SpecialHealth == FALSE)
	&& (SpecialMana == FALSE)
	&& (SpecialStr == FALSE)
	&& (SpecialDex == FALSE)
	&& (SpecialSpeed == FALSE)
	&& (BoozeStart == FALSE)
	&& (TabakStart == FALSE)
	&& (HealthStart == FALSE)
	&& (ManaStart == FALSE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Booze_Start_Info()
{
	BoozeStart = TRUE;
};
//*******************************************************
INSTANCE PC_Booze_Stop (C_Info)
{
	npc				= PC_Hero;
	nr				= 99;
	condition		= PC_Booze_Stop_Condition;
	information		= PC_Booze_Stop_Info;
	permanent		= TRUE;
	description		= DIALOG_BACK; 
};

FUNC INT PC_Booze_Stop_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (BoozeStart == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Booze_Stop_Info()
{
	BoozeStart = FALSE;
};
//*******************************************************
INSTANCE PC_Booze_Lou (C_Info)
{
	npc				= PC_Hero;
	nr				= 1;
	condition		= PC_Booze_Lou_Condition;
	information		= PC_Booze_Lou_Info;
	permanent		= TRUE;
	description		= "Try Lou's Hammer..."; 
};

FUNC INT PC_Booze_Lou_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (BoozeStart == TRUE)
	&& (PLAYER_TALENT_ALCHEMY[POTION_Booze_LouHammer] == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Booze_Lou_Info()
{
	AlchemyCraftMultiple_Input(PC_Booze_Lou, POTION_Booze_LouHammer);	
};
//*******************************************************
INSTANCE PC_Booze_Schlaf (C_Info)
{
	npc				= PC_Hero;
	nr				= 2;
	condition		= PC_Booze_Schlaf_Condition;
	information		= PC_Booze_Schlaf_Info;
	permanent		= TRUE;
	description		= "Lou's Hammer with twice the rum"; 
};

FUNC INT PC_Booze_Schlaf_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (BoozeStart == TRUE)
	&& (PLAYER_TALENT_ALCHEMY[POTION_Booze_LouHammerDouble] == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Booze_Schlaf_Info()
{
	AlchemyCraftMultiple_Input(PC_Booze_Schlaf, POTION_Booze_LouHammerDouble);	
};

//********************************
INSTANCE PC_Booze_SchnellerHering (C_Info)
{
	npc				= PC_Hero;
	nr				= 3;
	condition		= PC_Booze_SchnellerHering_Condition;
	information		= PC_Booze_SchnellerHering_Info;
	permanent		= TRUE;
	description		= "Mix a Hasty Herring"; 
};

FUNC INT PC_Booze_SchnellerHering_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (BoozeStart == TRUE)
	&& (PLAYER_TALENT_ALCHEMY[POTION_Booze_FastHerring] == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Booze_SchnellerHering_Info()
{
	AlchemyCraftMultiple_Input(PC_Booze_SchnellerHering, POTION_Booze_FastHerring);	
};	

//********************************
INSTANCE PC_Booze_TurnipBooze (C_Info)
{
	npc				= PC_Hero;
	nr				= 4;
	condition		= PC_Booze_TurnipBooze_Condition;
	information		= PC_Booze_TurnipBooze_Info;
	permanent		= TRUE;
	description		= "Mix a Turnip Booze"; 
};

FUNC INT PC_Booze_TurnipBooze_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (BoozeStart == TRUE)
	&& (PLAYER_TALENT_ALCHEMY[POTION_Booze_TurnipBooze] == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Booze_TurnipBooze_Info()
{
	AlchemyCraftMultiple_Input(PC_Booze_TurnipBooze, POTION_Booze_TurnipBooze);	
};	

//********************************
INSTANCE PC_Booze_VinoBooze (C_Info)
{
	npc				= PC_Hero;
	nr				= 5;
	condition		= PC_Booze_VinoBooze_Condition;
	information		= PC_Booze_VinoBooze_Info;
	permanent		= TRUE;
	description		= "Mix the Sweet Wine"; 
};

FUNC INT PC_Booze_VinoBooze_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (BoozeStart == TRUE)
	&& (PLAYER_TALENT_ALCHEMY[POTION_Booze_VinoBooze] == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Booze_VinoBooze_Info()
{
	AlchemyCraftMultiple_Input(PC_Booze_VinoBooze, POTION_Booze_VinoBooze);	
};	

//********************************
INSTANCE PC_Booze_WhiteRum (C_Info)
{
	npc				= PC_Hero;
	nr				= 6;
	condition		= PC_Booze_WhiteRum_Condition;
	information		= PC_Booze_WhiteRum_Info;
	permanent		= TRUE;
	description		= "Mix White Rum"; 
};

FUNC INT PC_Booze_WhiteRum_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (BoozeStart == TRUE)
	&& (PLAYER_TALENT_ALCHEMY[POTION_Booze_WhiteRum] == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Booze_WhiteRum_Info()
{
	AlchemyCraftMultiple_Input(PC_Booze_WhiteRum, POTION_Booze_WhiteRum);	
};	

//********************************
INSTANCE PC_Booze_MageWine (C_Info)
{
	npc				= PC_Hero;
	nr				= 7;
	condition		= PC_Booze_MageWine_Condition;
	information		= PC_Booze_MageWine_Info;
	permanent		= TRUE;
	description		= "Mix Monastery Wine"; 
};

FUNC INT PC_Booze_MageWine_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (BoozeStart == TRUE)
	&& (PLAYER_TALENT_ALCHEMY[POTION_Booze_MageWine] == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Booze_MageWine_Info()
{
	AlchemyCraftMultiple_Input(PC_Booze_MageWine, POTION_Booze_MageWine);	
};	

//********************************
INSTANCE PC_Booze_RiceSchnaps (C_Info)
{
	npc				= PC_Hero;
	nr				= 8;
	condition		= PC_Booze_RiceSchnaps_Condition;
	information		= PC_Booze_RiceSchnaps_Info;
	permanent		= TRUE;
	description		= "Mix Rice Booze"; 
};

FUNC INT PC_Booze_RiceSchnaps_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (BoozeStart == TRUE)
	&& (PLAYER_TALENT_ALCHEMY[POTION_Booze_RiceSchnaps] == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Booze_RiceSchnaps_Info()
{
	AlchemyCraftMultiple_Input(PC_Booze_RiceSchnaps, POTION_Booze_RiceSchnaps);	
};	


//****************************************************************************
//****************************************************************************
//			SWAMPWEED
//			SWAMPWEED
//			SWAMPWEED
//****************************************************************************
//****************************************************************************

var int TabakStart;
var int TabakBlend;
//----------------------
INSTANCE PC_Tabak_Start (C_Info)
{
	npc				= PC_Hero;
	nr				= 11;
	condition		= PC_Tabak_Start_Condition;
	information		= PC_Tabak_Start_Info;
	permanent		= TRUE;
	description		= "Blend tobacco and roll reefers"; 
};

FUNC INT PC_Tabak_Start_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (SpecialStart == FALSE)
	&& (SpecialHealth == FALSE)
	&& (SpecialMana == FALSE)
	&& (SpecialStr == FALSE)
	&& (SpecialDex == FALSE)
	&& (SpecialSpeed == FALSE)
	&& (BoozeStart == FALSE)
	&& (TabakStart == FALSE)
	&& (HealthStart == FALSE)
	&& (ManaStart == FALSE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Tabak_Start_Info()
{
	TabakStart = TRUE;
};
//*******************************************************
INSTANCE PC_Tabak_Stop (C_Info)
{
	npc				= PC_Hero;
	nr				= 99;
	condition		= PC_Tabak_Stop_Condition;
	information		= PC_Tabak_Stop_Info;
	permanent		= TRUE;
	description		= DIALOG_BACK; 
};

FUNC INT PC_Tabak_Stop_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (TabakStart == TRUE)
	{	
		return TRUE;
	};
};
FUNC VOID PC_Tabak_Stop_Info()
{
	TabakStart = FALSE;
	TabakBlend = FALSE;
};


INSTANCE PC_ItMi_Joint (C_INFO)
{
	nr       		= 10;
	npc				= PC_Hero;
	condition		= PC_ItMi_Joint_Condition;
	information		= PC_ItMi_Joint_Info;
	permanent		= TRUE;
	description		= "Process regular swampweed (1 stalk)"; 
};

FUNC INT PC_ItMi_Joint_Condition()
{	
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (TabakStart == TRUE)
	&& (PLAYER_TALENT_ALCHEMY[POTION_Weed_Regular] == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ItMi_Joint_Info ()
{
	AlchemyCraftMultiple_Input(PC_ItMi_Joint, POTION_Weed_Regular);		
};

//*******************************************************

INSTANCE PC_ItMi_Addon_Joint_01 (C_INFO)
{
	nr       		= 11;
	npc				= PC_Hero;
	condition		= PC_ItMi_Addon_Joint_01_Condition;
	information		= PC_ItMi_Addon_Joint_01_Info;
	permanent		= TRUE;
	description		= "Roll Green Novice (1 reefer)"; 
};

FUNC INT PC_ItMi_Addon_Joint_01_Condition()
{	
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (TabakStart == TRUE)
	&& (PLAYER_TALENT_ALCHEMY[POTION_Weed_GreenNovice] == TRUE)
	{		
			return TRUE;
	};
};
FUNC VOID PC_ItMi_Addon_Joint_01_Info ()
{
	AlchemyCraftMultiple_Input(ITMI_REVIVED_JOINT_GREENNOVICE, POTION_Weed_GreenNovice);
};

//*******************************************************

INSTANCE PC_Weed_NorthernDark (C_INFO)
{
	nr       		= 11;
	npc				= PC_Hero;
	condition		= PC_Weed_NorthernDark_Condition;
	information		= PC_Weed_NorthernDark_Info;
	permanent		= TRUE;
	description		= "Roll Northern Dark (1 reefer)"; 
};

FUNC INT PC_Weed_NorthernDark_Condition()
{	
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (TabakStart == TRUE)
	&& (PLAYER_TALENT_ALCHEMY[POTION_Weed_NorthernDark] == TRUE)
	{		
			return TRUE;
	};
};
FUNC VOID PC_Weed_NorthernDark_Info ()
{
	AlchemyCraftMultiple_Input(ITMI_REVIVED_JOINT_NORTHDARK, POTION_Weed_NorthernDark);
};

//*******************************************************

INSTANCE PC_Weed_Dreamcall (C_INFO)
{
	nr       		= 11;
	npc				= PC_Hero;
	condition		= PC_Weed_Dreamcall_Condition;
	information		= PC_Weed_Dreamcall_Info;
	permanent		= TRUE;
	description		= "Roll Dreamcall (1 reefer)"; 
};

FUNC INT PC_Weed_Dreamcall_Condition()
{	
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (TabakStart == TRUE)
	&& (PLAYER_TALENT_ALCHEMY[POTION_Weed_Dreamcall] == TRUE)
	{		
			return TRUE;
	};
};
FUNC VOID PC_Weed_Dreamcall_Info ()
{
	AlchemyCraftMultiple_Input(ITMI_REVIVED_JOINT_DREAMCALL, POTION_Weed_Dreamcall);
};

//*******************************************************

INSTANCE PC_Weed_DreamcallStrong (C_INFO)
{
	nr       		= 11;
	npc				= PC_Hero;
	condition		= PC_Weed_DreamcallStrong_Condition;
	information		= PC_Weed_DreamcallStrong_Info;
	permanent		= TRUE;
	description		= "Roll stronger Dreamcall (1 reefer)"; 
};

FUNC INT PC_Weed_DreamcallStrong_Condition()
{	
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (TabakStart == TRUE)
	&& (PLAYER_TALENT_ALCHEMY[POTION_Weed_DreamcallStrong] == TRUE)
	{		
			return TRUE;
	};
};
FUNC VOID PC_Weed_DreamcallStrong_Info ()
{
	AlchemyCraftMultiple_Input(ITMI_REVIVED_JOINT_DREAMCALL_02, POTION_Weed_DreamcallStrong);
};


//*******************************************************
//					Tabak mischen 
//*******************************************************

INSTANCE PC_ItMi_Tabak (C_INFO)
{
	nr       		= 10;
	npc				= PC_Hero;
	condition		= PC_ItMi_Tabak_Condition;
	information		= PC_ItMi_Tabak_Info;
	permanent		= TRUE;
	description		= "Blend tobacco ..."; 
};

FUNC INT PC_ItMi_Tabak_Condition()
{	
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (Npc_HasItems (hero, ItMi_ApfelTabak) >= 1)
	&& (TabakStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ItMi_Tabak_Info ()
{
	Npc_RemoveInvItems (hero,ItMi_ApfelTabak ,1);
	
	Info_ClearChoices (PC_ItMi_Tabak);
	
	Info_AddChoice 	(PC_ItMi_Tabak,DIALOG_BACK,PC_ItMi_Tabak_BACK);	
	
	if (Npc_HasItems (hero, ITFO_REVIVED_APPLE) >=1)
	{
		Info_AddChoice 	(PC_ItMi_Tabak,"... with sour apple",PC_ItMi_Tabak_AppleDouble);
	};	
	if (Npc_HasItems (hero, ItFo_Honey) >=1)
	{
		Info_AddChoice 	(PC_ItMi_Tabak,"... with honey",PC_ItMi_Tabak_Honey);
	};
	if (Npc_HasItems (hero, ItPl_SwampHerb) >=1)
	{
		Info_AddChoice 	(PC_ItMi_Tabak,"... with swampweed",PC_ItMi_Tabak_Swampherb);
	};
	if (Npc_HasItems (hero, ItPl_Mushroom_01) >=1)
	{
		Info_AddChoice 	(PC_ItMi_Tabak,"... with dark mushroom",PC_ItMi_Tabak_Mushroom_01);
	};

	TabakBlend = TRUE;
	
};
FUNC VOID PC_ItMi_Tabak_BACK()
{
	Info_ClearChoices (PC_ItMi_Tabak);
};
FUNC VOID PC_ItMi_Tabak_AppleDouble()
{
	CreateInvItems (hero, ItMi_DoppelTabak,1 );
	Print (PRINT_TabakSuccess);
	
	//B_ENDPRODUCTIONDIALOG ();		
};
FUNC VOID PC_ItMi_Tabak_Honey()
{
	CreateInvItems (hero, ItMi_Honigtabak,1 );
	Print (PRINT_TabakSuccess);
	
	//B_ENDPRODUCTIONDIALOG ();		
};
FUNC VOID PC_ItMi_Tabak_Swampherb()
{
	CreateInvItems (hero,ItMi_SumpfTabak,1 );
	Print (PRINT_TabakSuccess);
	
	//B_ENDPRODUCTIONDIALOG ();		
};
FUNC VOID PC_ItMi_Tabak_Mushroom_01()
{
	CreateInvItems (hero,ItMi_PilzTabak,1 );
	Print (PRINT_TabakSuccess);
	
	//B_ENDPRODUCTIONDIALOG ();		
};

