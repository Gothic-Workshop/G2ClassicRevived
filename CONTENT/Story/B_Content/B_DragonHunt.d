var int DragonHuntStart_Once;

var int DragonHunt_OriginalPass;
var int DragonHunt_SecondPass;

func void B_DragonHunt()
{
	if(EnterOW_Kapitel4 == TRUE && DragonHuntStart_Once != TRUE)
	{
		Log_CreateTopic (TOPIC_Dragonhunter, LOG_MISSION);
		Log_SetTopicStatus (TOPIC_Dragonhunter, LOG_RUNNING);
		B_LogEntry (TOPIC_Dragonhunter,"The great dragon hunt has begun and will have lured many would-be adventurers to the Valley of Mines. I can only hope they won't stand in my way."); 
	

		if(DragonHunt_OriginalPass == TRUE)
		{

		}
		else if(DragonHunt_SecondPass == TRUE)
		{
			B_StartOtherRoutine(PC_Fighter_DJG,"StartPass");
			B_StartOtherRoutine(DJG_713_Biff,"StartPass");
			B_StartOtherRoutine(DJG_712_Hokurn,"StartPass");
			B_StartOtherRoutine(DJG_711_Godar,"StartPass");
			B_StartOtherRoutine(DJG_710_Kjorn,"StartPass");
			B_StartOtherRoutine(DJG_708_Kurgan,"StartPass");
		};


		DragonHuntStart_Once = TRUE;
	};
};


func void EnterThroughOriginalPass()
{
	if(Kapitel == 4)
	{
		if(DragonHunt_OriginalPass != TRUE)
		{
			DragonHunt_OriginalPass = TRUE;
			B_DragonHunt();
		};
	};
};
func void EnterThroughSecondPass()
{
	if(Kapitel == 4)
	{
		if(DragonHunt_SecondPass != TRUE)
		{
			DragonHunt_SecondPass = TRUE;
			B_DragonHunt();
		};
	};
};