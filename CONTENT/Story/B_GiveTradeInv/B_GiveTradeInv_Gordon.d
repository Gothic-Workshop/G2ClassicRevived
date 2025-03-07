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
		CreateInvItems(slf, ITFO_REVIVED_APPLE, 20);
		CreateInvItems(slf, ITFO_REVIVED_GRAPES_01, 20);
		CreateInvItems(slf, ITFO_REVIVED_GRAPES_02, 20);
		CreateInvItems(slf, ITFO_REVIVED_GRAPES_03, 20);
		CreateInvItems(slf, ITFO_REVIVED_BREAD, 20);
		CreateInvItems(slf, ITFO_REVIVED_HAM, 20);
		CreateInvItems(slf, ITFO_REVIVED_CHEESE, 20);
		CreateInvItems(slf, ITFO_REVIVED_RICE, 20);
		CreateInvItems(slf, ITFO_REVIVED_PLANTSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_BUGSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_CRAWLERSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_WATER, 20);
		CreateInvItems(slf, ITFO_REVIVED_BEER, 20);
		CreateInvItems(slf, ITFO_REVIVED_WINE, 20);
		CreateInvItems(slf, ITFO_REVIVED_BOOZE, 20);
		
		Gordon_ItemsGiven_Chapter_1 = TRUE;
	};

	if ((Kapitel >= 2)
	&& (Gordon_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems	(slf, ItMi_Pan, 50);

		CreateInvItems(slf, ITFO_REVIVED_MEATBUG, 20);
		CreateInvItems(slf, ITFO_REVIVED_APPLE, 20);
		CreateInvItems(slf, ITFO_REVIVED_GRAPES_01, 20);
		CreateInvItems(slf, ITFO_REVIVED_GRAPES_02, 20);
		CreateInvItems(slf, ITFO_REVIVED_GRAPES_03, 20);
		CreateInvItems(slf, ITFO_REVIVED_BREAD, 20);
		CreateInvItems(slf, ITFO_REVIVED_HAM, 20);
		CreateInvItems(slf, ITFO_REVIVED_CHEESE, 20);
		CreateInvItems(slf, ITFO_REVIVED_RICE, 20);
		CreateInvItems(slf, ITFO_REVIVED_PLANTSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_BUGSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_CRAWLERSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_WATER, 20);
		CreateInvItems(slf, ITFO_REVIVED_BEER, 20);
		CreateInvItems(slf, ITFO_REVIVED_WINE, 20);
		CreateInvItems(slf, ITFO_REVIVED_BOOZE, 20);

		Gordon_ItemsGiven_Chapter_2 = TRUE;
	};

	if ((Kapitel >= 3)
	&& (Gordon_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems	(slf, ItMi_Pan, 50);

		CreateInvItems(slf, ITFO_REVIVED_MEATBUG, 20);
		CreateInvItems(slf, ITFO_REVIVED_APPLE, 20);
		CreateInvItems(slf, ITFO_REVIVED_GRAPES_01, 20);
		CreateInvItems(slf, ITFO_REVIVED_GRAPES_02, 20);
		CreateInvItems(slf, ITFO_REVIVED_GRAPES_03, 20);
		CreateInvItems(slf, ITFO_REVIVED_BREAD, 20);
		CreateInvItems(slf, ITFO_REVIVED_HAM, 20);
		CreateInvItems(slf, ITFO_REVIVED_CHEESE, 20);
		CreateInvItems(slf, ITFO_REVIVED_RICE, 20);
		CreateInvItems(slf, ITFO_REVIVED_PLANTSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_BUGSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_CRAWLERSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_WATER, 20);
		CreateInvItems(slf, ITFO_REVIVED_BEER, 20);
		CreateInvItems(slf, ITFO_REVIVED_WINE, 20);
		CreateInvItems(slf, ITFO_REVIVED_BOOZE, 20);

		Gordon_ItemsGiven_Chapter_3 = TRUE;
	};

	if ((Kapitel >= 4)
	&& (Gordon_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems	(slf, ItMi_Pan, 50);

		CreateInvItems(slf, ITFO_REVIVED_MEATBUG, 20);
		CreateInvItems(slf, ITFO_REVIVED_APPLE, 20);
		CreateInvItems(slf, ITFO_REVIVED_GRAPES_01, 20);
		CreateInvItems(slf, ITFO_REVIVED_GRAPES_02, 20);
		CreateInvItems(slf, ITFO_REVIVED_GRAPES_03, 20);
		CreateInvItems(slf, ITFO_REVIVED_BREAD, 20);
		CreateInvItems(slf, ITFO_REVIVED_HAM, 20);
		CreateInvItems(slf, ITFO_REVIVED_CHEESE, 20);
		CreateInvItems(slf, ITFO_REVIVED_RICE, 20);
		CreateInvItems(slf, ITFO_REVIVED_PLANTSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_BUGSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_CRAWLERSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_WATER, 20);
		CreateInvItems(slf, ITFO_REVIVED_BEER, 20);
		CreateInvItems(slf, ITFO_REVIVED_WINE, 20);
		CreateInvItems(slf, ITFO_REVIVED_BOOZE, 20);
		
		Gordon_ItemsGiven_Chapter_4 = TRUE;
	};

	if ((Kapitel >= 5)
	&& (Gordon_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems	(slf, ItMi_Pan, 50);

		CreateInvItems(slf, ITFO_REVIVED_MEATBUG, 20);
		CreateInvItems(slf, ITFO_REVIVED_APPLE, 20);
		CreateInvItems(slf, ITFO_REVIVED_GRAPES_01, 20);
		CreateInvItems(slf, ITFO_REVIVED_GRAPES_02, 20);
		CreateInvItems(slf, ITFO_REVIVED_GRAPES_03, 20);
		CreateInvItems(slf, ITFO_REVIVED_BREAD, 20);
		CreateInvItems(slf, ITFO_REVIVED_HAM, 20);
		CreateInvItems(slf, ITFO_REVIVED_CHEESE, 20);
		CreateInvItems(slf, ITFO_REVIVED_RICE, 20);
		CreateInvItems(slf, ITFO_REVIVED_PLANTSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_BUGSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_CRAWLERSOUP, 20);
		CreateInvItems(slf, ITFO_REVIVED_WATER, 20);
		CreateInvItems(slf, ITFO_REVIVED_BEER, 20);
		CreateInvItems(slf, ITFO_REVIVED_WINE, 20);
		CreateInvItems(slf, ITFO_REVIVED_BOOZE, 20);

		CreateInvItems(slf, ITPL_REVIVED_BLUEBERRY, 20);
		CreateInvItems(slf, ITPL_REVIVED_FLAMEBERRY, 20);
		CreateInvItems(slf, ITPL_REVIVED_SERAPHIS, 20);
		CreateInvItems(slf, ITPL_REVIVED_VELAYIS, 20);
		CreateInvItems(slf, ITPL_REVIVED_MOUNTAINMOSS, 20);
		CreateInvItems(slf, ITPL_REVIVED_GRAVEMOSS, 20);
		CreateInvItems(slf, ITPL_REVIVED_NIGHTSHADE, 20);
		CreateInvItems(slf, ITPL_REVIVED_LINUM, 20);
		CreateInvItems(slf, ITPL_REVIVED_ORCLEAF, 20);
		CreateInvItems(slf, ITPL_REVIVED_OAKLEAF, 20);
		CreateInvItems(slf, ITPL_REVIVED_HEALING_01, 20);
		CreateInvItems(slf, ITPL_REVIVED_HEALING_02, 20);
		CreateInvItems(slf, ITPL_REVIVED_HEALING_03, 20);
		CreateInvItems(slf, ITPL_REVIVED_BLOODWOOD, 20);
		CreateInvItems(slf, ITPL_REVIVED_TOWERWOOD, 20);
		CreateInvItems(slf, ITPL_REVIVED_RAVENHERB, 20);
		CreateInvItems(slf, ITPL_REVIVED_DARKHERB, 20);
		CreateInvItems(slf, ITPL_REVIVED_STONEROOT, 20);
		CreateInvItems(slf, ITPL_REVIVED_DRAGONROOT, 20);
		CreateInvItems(slf, ITPL_REVIVED_HELLMUSHROOM, 20);
		CreateInvItems(slf, ITPL_REVIVED_SLAVEBREAD, 20);
		CreateInvItems(slf, ITPL_REVIVED_TROLLBERRY, 20);

		Gordon_ItemsGiven_Chapter_5 = TRUE;
	};
};












