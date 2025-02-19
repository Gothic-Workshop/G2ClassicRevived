// ***********************************************************
// B_GetLearnCostAttribute
// -----------------------
// ermittelt die Kosten eines Attributspunktes (abh. v. Gilde)
// ***********************************************************
	
/* func int B_GetLearnCostAttribute (var C_NPC oth, var int attribut)
{
	var int kosten; kosten = 0;

	// ------ Kosten für Stärke ------
	if (attribut == ATR_STRENGTH) 
	{
		if (oth.aivar[REAL_STRENGTH] >= 120)		{	kosten = (5);	}
		else if (oth.aivar[REAL_STRENGTH] >= 90) 	{	kosten = (4);	}
		else if (oth.aivar[REAL_STRENGTH] >= 60) 	{	kosten = (3);	}
		else if (oth.aivar[REAL_STRENGTH] >= 30) 	{	kosten = (2);	}
		else 										{	kosten = (1);	};
	};
	
	// ------ Kosten für Dexterity ------
	if (attribut == ATR_DEXTERITY) 
	{
		if (oth.aivar[REAL_DEXTERITY] >= 120)		{	kosten = (5);	}
		else if (oth.aivar[REAL_DEXTERITY] >= 90)	{	kosten = (4);	}
		else if (oth.aivar[REAL_DEXTERITY] >= 60)	{	kosten = (3);	}
		else if (oth.aivar[REAL_DEXTERITY] >= 30)	{	kosten = (2);	}
		else 										{	kosten = (1);	};
	};
	
	// ------ Kosten für Mana MAX ------
	if (attribut == ATR_MANA_MAX)
	{		
		if (oth.aivar[REAL_MANA_MAX] >= 120)		{	kosten = (5);	}
		else if (oth.aivar[REAL_MANA_MAX] >= 90) 	{	kosten = (4);	}
		else if (oth.aivar[REAL_MANA_MAX] >= 60) 	{	kosten = (3);	}
		else if (oth.aivar[REAL_MANA_MAX] >= 30) 	{	kosten = (2);	}
		else 										{	kosten = (1);	};
	};
	
	return kosten;
}; */

func int B_GetLearnCostAttribute(var C_Npc oth, var int attribut)
{
	var int kosten; kosten = 0;
	if((attribut == ATR_STRENGTH) || (attribut == ATR_DEXTERITY) || (attribut == ATR_MANA_MAX))
	{
		if((oth.guild == GIL_KDF) || (oth.guild == GIL_NOV))
		{
			if(attribut == ATR_STRENGTH)
			{
				kosten = 2;
			};
			if(attribut == ATR_DEXTERITY)
			{
				kosten = 2;
			};
			if(attribut == ATR_MANA_MAX)
			{
				kosten = 1;
			};
		}
		else
		{
			if(attribut == ATR_STRENGTH)
			{
				kosten = 1;
			};
			if(attribut == ATR_DEXTERITY)
			{
				kosten = 1;
			};
			if(attribut == ATR_MANA_MAX)
			{
				kosten = 2;
			};
		};
	};
	return kosten;
};