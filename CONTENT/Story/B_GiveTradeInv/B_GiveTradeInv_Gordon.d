var int Gordon_ItemsGiven_Chapter_1;
var int Gordon_ItemsGiven_Chapter_2;
var int Gordon_ItemsGiven_Chapter_3;
var int Gordon_ItemsGiven_Chapter_4;
var int Gordon_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Revived_Gordon (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Gordon_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems	(slf, Itmi_Gold, 500);
		CreateInvItems	(slf, ItMi_Pan, 50);

		CreateInvItems(slf, ITFO_REVIVED_MEATBUG, 20);
		CreateInvItems(slf, ITFO_REVIVED_APPLE_01, 20);
		CreateInvItems(slf, ITFO_REVIVED_BREAD_01, 20);
		CreateInvItems(slf, ITFO_REVIVED_CHEESE_01, 20);
		CreateInvItems(slf, ITFO_REVIVED_RICE, 20);
		CreateInvItems(slf, ITFO_REVIVED_PLANTSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_BUGSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_CRAWLERSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_WATER, 20);
		CreateInvItems(slf, ITFO_REVIVED_BEER, 20);
		CreateInvItems(slf, ITFO_REVIVED_WINE, 20);
		CreateInvItems(slf, ITFO_REVIVED_RICEBOOZE, 20);

		CreateInvItems(slf, ITPL_REVIVED_BERRIES, 20);
		CreateInvItems(slf, ITPL_REVIVED_GRAPES, 20);
		CreateInvItems(slf, ITPL_REVIVED_RICEPLANT, 20);
		
		Gordon_ItemsGiven_Chapter_1 = TRUE;
	};

	if ((Kapitel >= 2)
	&& (Gordon_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems	(slf, Itmi_Gold, 500);
		CreateInvItems	(slf, ItMi_Pan, 50);

		CreateInvItems(slf, ITFO_REVIVED_MEATBUG, 20);
		CreateInvItems(slf, ITFO_REVIVED_APPLE_01, 20);
		CreateInvItems(slf, ITFO_REVIVED_BREAD_01, 20);
		CreateInvItems(slf, ITFO_REVIVED_CHEESE_01, 20);
		CreateInvItems(slf, ITFO_REVIVED_RICE, 20);
		CreateInvItems(slf, ITFO_REVIVED_PLANTSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_BUGSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_CRAWLERSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_WATER, 20);
		CreateInvItems(slf, ITFO_REVIVED_BEER, 20);
		CreateInvItems(slf, ITFO_REVIVED_WINE, 20);
		CreateInvItems(slf, ITFO_REVIVED_RICEBOOZE, 20);

		CreateInvItems(slf, ITPL_REVIVED_BERRIES, 20);
		CreateInvItems(slf, ITPL_REVIVED_GRAPES, 20);
		CreateInvItems(slf, ITPL_REVIVED_RICEPLANT, 20);

		Gordon_ItemsGiven_Chapter_2 = TRUE;
	};

	if ((Kapitel >= 3)
	&& (Gordon_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems	(slf, Itmi_Gold, 500);
		CreateInvItems	(slf, ItMi_Pan, 50);

		CreateInvItems(slf, ITFO_REVIVED_MEATBUG, 20);
		CreateInvItems(slf, ITFO_REVIVED_APPLE_01, 20);
		CreateInvItems(slf, ITFO_REVIVED_BREAD_01, 20);
		CreateInvItems(slf, ITFO_REVIVED_CHEESE_01, 20);
		CreateInvItems(slf, ITFO_REVIVED_RICE, 20);
		CreateInvItems(slf, ITFO_REVIVED_PLANTSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_BUGSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_CRAWLERSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_WATER, 20);
		CreateInvItems(slf, ITFO_REVIVED_BEER, 20);
		CreateInvItems(slf, ITFO_REVIVED_WINE, 20);
		CreateInvItems(slf, ITFO_REVIVED_RICEBOOZE, 20);

		CreateInvItems(slf, ITPL_REVIVED_BERRIES, 20);
		CreateInvItems(slf, ITPL_REVIVED_GRAPES, 20);
		CreateInvItems(slf, ITPL_REVIVED_RICEPLANT, 20);

		Gordon_ItemsGiven_Chapter_3 = TRUE;
	};

	if ((Kapitel >= 4)
	&& (Gordon_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems	(slf, Itmi_Gold, 500);
		CreateInvItems	(slf, ItMi_Pan, 50);

		CreateInvItems(slf, ITFO_REVIVED_MEATBUG, 20);
		CreateInvItems(slf, ITFO_REVIVED_APPLE_01, 20);
		CreateInvItems(slf, ITFO_REVIVED_BREAD_01, 20);
		CreateInvItems(slf, ITFO_REVIVED_CHEESE_01, 20);
		CreateInvItems(slf, ITFO_REVIVED_RICE, 20);
		CreateInvItems(slf, ITFO_REVIVED_PLANTSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_BUGSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_CRAWLERSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_WATER, 20);
		CreateInvItems(slf, ITFO_REVIVED_BEER, 20);
		CreateInvItems(slf, ITFO_REVIVED_WINE, 20);
		CreateInvItems(slf, ITFO_REVIVED_RICEBOOZE, 20);

		CreateInvItems(slf, ITPL_REVIVED_BERRIES, 20);
		CreateInvItems(slf, ITPL_REVIVED_GRAPES, 20);
		CreateInvItems(slf, ITPL_REVIVED_RICEPLANT, 20);
		
		Gordon_ItemsGiven_Chapter_4 = TRUE;
	};

	if ((Kapitel >= 5)
	&& (Gordon_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems	(slf, Itmi_Gold, 500);
		CreateInvItems	(slf, ItMi_Pan, 50);

		CreateInvItems(slf, ITFO_REVIVED_MEATBUG, 20);
		CreateInvItems(slf, ITFO_REVIVED_APPLE_01, 20);
		CreateInvItems(slf, ITFO_REVIVED_BREAD_01, 20);
		CreateInvItems(slf, ITFO_REVIVED_CHEESE_01, 20);
		CreateInvItems(slf, ITFO_REVIVED_RICE, 20);
		CreateInvItems(slf, ITFO_REVIVED_PLANTSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_BUGSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_CRAWLERSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_WATER, 20);
		CreateInvItems(slf, ITFO_REVIVED_BEER, 20);
		CreateInvItems(slf, ITFO_REVIVED_WINE, 20);
		CreateInvItems(slf, ITFO_REVIVED_RICEBOOZE, 20);

		CreateInvItems(slf, ITPL_REVIVED_BERRIES, 20);
		CreateInvItems(slf, ITPL_REVIVED_GRAPES, 20);
		CreateInvItems(slf, ITPL_REVIVED_RICEPLANT, 20);

		Gordon_ItemsGiven_Chapter_5 = TRUE;
	};
};












