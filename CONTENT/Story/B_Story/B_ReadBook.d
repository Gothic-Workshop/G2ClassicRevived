func void B_ReadBook(var int kBookType)
{
	if(kBookType == BookAlchemy)
	{
		B_ReadBook_Alchemy();
	}
	else if(kBookType == BookRunemaking)
	{
		B_ReadBook_Runemaking();
	}
	else if(kBookType == BookHunting)
	{
		B_ReadBook_Hunting();
	}
	else if(kBookType == BookMagic)
	{
		B_ReadBook_Magic();
	}
	else if(kBookType == BookHistory)
	{
		B_ReadBook_History();
	}
	else if(kBookType == BookFighting)
	{
		B_ReadBook_Fighting();
	}
	else if(kBookType == BookPersonal)
	{
		B_ReadBook_Personal();
	};
};

func void B_ReadBook_Alchemy()
{
	if(
		(RevivedBookstandRead_Alchemy1 == TRUE) &&
		(RevivedBookstandRead_Alchemy2 == TRUE)
	  )
	{
		if(PLAYER_TALENT_ALCHEMY[POTION_Health_01] == FALSE)
		{
			PLAYER_TALENT_ALCHEMY[POTION_Health_01] == TRUE;
		}
		else if(
				(PLAYER_TALENT_ALCHEMY[POTION_Health_01] == TRUE) &&
				(PLAYER_TALENT_ALCHEMY[POTION_Mana_01] == FALSE)
			   )
		{
			PLAYER_TALENT_ALCHEMY[POTION_Mana_01] == TRUE;
		}
		else
		{
			B_GivePlayerXP (XP_BookstandAlchemy * Kapitel);
		};

		PrintScreen	(Print_LearnFromBookstand, -1, -1, FONT_Screen, 2);
	};
};

func void B_ReadBook_Astronomy()
{
	if(
		(RevivedBookstandRead_Astronomy1 == TRUE) &&
		(RevivedBookstandRead_Astronomy2 == TRUE)
	  )
	{
		if(PLAYER_TALENT_ALCHEMY[POTION_Health_01] == FALSE)
		{
			PLAYER_TALENT_ALCHEMY[POTION_Health_01] == TRUE;
		}
		else if(
				(PLAYER_TALENT_ALCHEMY[POTION_Health_01] == TRUE) &&
				(PLAYER_TALENT_ALCHEMY[POTION_Mana_01] == FALSE)
			   )
		{
			PLAYER_TALENT_ALCHEMY[POTION_Mana_01] == TRUE;
		}
		else
		{
			B_GivePlayerXP (XP_BookstandAlchemy * Kapitel);
		};

		PrintScreen	(Print_LearnFromBookstand, -1, -1, FONT_Screen, 2);
	};
};