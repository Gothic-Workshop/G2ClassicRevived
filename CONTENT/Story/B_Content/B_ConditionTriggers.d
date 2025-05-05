func int MOVER_CANNOTUSEWHEEL()
{
	PrintScreen	(_STR_MESSAGE_WHEEL_STUCKS ,-1,YPOS_LevelUp,FONT_ScreenSmall,2);
	return false;
};

func int MOVER_CANNOTUSELEVER()
{
	PrintScreen	(_STR_MESSAGE_OCLEVER_STUCKS ,-1,YPOS_LevelUp,FONT_ScreenSmall,2);
	return false;
};

func int MOVER_FIREDRAGONHOARD()
{
	if (FreDragnIsDead == TRUE)
	{
		return true;
	}
	else
	{
		PrintScreen	(_STR_MESSAGE_OCLEVER_STUCKS ,-1,YPOS_LevelUp,FONT_ScreenSmall,2);
		return false;
	};
};
func int MOVER_STONEDRAGONHOARD()
{
	if (RckDragnIsDead == TRUE)
	{
		return true;
	}
	else
	{
		PrintScreen	(_STR_MESSAGE_PILLAR_STUCKS ,-1,YPOS_LevelUp,FONT_ScreenSmall,2);
		return false;
	};
};

func int MOVER_CANNOTUSEOLDMINEWHEEL()
{
	MOVER_CANNOTUSEWHEEL();
	//allow entrance later
};