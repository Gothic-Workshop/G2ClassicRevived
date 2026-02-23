// **********************************************
// B_GiveTradeInventory
// --------------------
// Verteiler. Aufruf aller B_GiveTradeInv-Befehle
// **********************************************

func void B_GiveTradeInv (var C_NPC slf)
{
//******************************************************************
//	Hier muss jeder Händler eingetragen werden!!!!!!!
//******************************************************************	
	
	// GOTHIC2
	var C_NPC Trd_Engor;		Trd_Engor 		= Hlp_GetNpc (GRD_4108_Engor); 
	var C_NPC Trd_Matteo;		Trd_Matteo		= Hlp_GetNpc (VLK_416_Matteo);
	var C_NPC Trd_Halvor;		Trd_Halvor		= Hlp_GetNpc (VLK_469_Halvor);
	var C_NPC Trd_Bosper;		Trd_Bosper		= Hlp_GetNpc (VLK_413_Bosper);
	var C_NPC Trd_Harad;		Trd_Harad		= Hlp_GetNpc (VLK_412_Harad);
	var C_NPC Trd_Brian;		Trd_Brian		= Hlp_GetNpc (VLK_457_Brian);
	var C_NPC Trd_Brahim;		Trd_Brahim		= Hlp_GetNpc (VLK_437_Brahim);
	var C_NPC Trd_Constantino;	Trd_Constantino	= Hlp_GetNpc (VLK_417_Constantino);
	var C_NPC Trd_Kardif;		Trd_Kardif		= Hlp_GetNpc (VLK_431_Kardif);
	var C_NPC Trd_Zuris;		Trd_Zuris		= Hlp_GetNpc (VLK_409_Zuris);
	var C_NPC Trd_Baltram;		Trd_Baltram		= Hlp_GetNpc (VLK_410_Baltram);
	var C_NPC Trd_Canthar;		Trd_Canthar		= Hlp_GetNpc (VLK_468_Canthar);
	var C_NPC Trd_Sarah;		Trd_Sarah		= Hlp_GetNpc (VLK_470_Sarah);
	var C_NPC Trd_Jora;			Trd_Jora		= Hlp_GetNpc (VLK_408_Jora);
	var C_NPC Trd_Hakon;		Trd_Hakon		= Hlp_GetNpc (VLK_407_Hakon);
	var C_NPC Trd_Coragon;		Trd_Coragon		= Hlp_GetNpc (VLK_420_Coragon);
	var C_NPC Trd_Gorax;		Trd_Gorax		= Hlp_GetNpc (KDF_508_Gorax);
	var C_NPC Trd_Orlan;		Trd_Orlan		= Hlp_GetNpc (OUT_970_ORLAN);
	var C_NPC Trd_Bennet;		Trd_Bennet		= Hlp_GetNpc (SLD_809_Bennet);
	var C_NPC Trd_Bennet_DI;	Trd_Bennet_DI	= Hlp_GetNpc (SLD_809_Bennet_DI);
	var C_NPC Trd_Elena;		Trd_Elena		= Hlp_GetNpc (BAU_911_Elena);
	var C_NPC Trd_Sagitta;		Trd_Sagitta		= Hlp_GetNpc (OUT_890_SAGITTA);
	var C_NPC Trd_Kjorn;		Trd_Kjorn		= Hlp_GetNpc (DJG_710_Kjorn);
	var C_NPC Trd_Rethon;		Trd_Rethon		= Hlp_GetNpc (DJG_709_Rethon);
	var C_NPC Trd_Rosi;			Trd_Rosi		= Hlp_GetNpc (BAU_936_Rosi);
	var C_NPC Trd_Ignaz;		Trd_Ignaz		= Hlp_GetNpc (VLK_498_Ignaz);
	var C_NPC Trd_Milten_DI;	Trd_Milten_DI	= Hlp_GetNpc (PC_Mage_DI);
	var C_NPC Trd_Vatras_DI;	Trd_Vatras_DI	= Hlp_GetNpc (KDW_439_Vatras_DI);
	var C_NPC Trd_Diego_DI;		Trd_Diego_DI	= Hlp_GetNpc (PC_Thief_DI);
	var C_NPC Trd_Tandor;		Trd_Tandor		= Hlp_GetNpc (PAL_260_Tandor);
	var C_NPC Trd_Sengrath;		Trd_Sengrath	= Hlp_GetNpc (PAL_267_Sengrath);
	var C_NPC Trd_Isgaroth;		Trd_Isgaroth	= Hlp_GetNpc (KDF_509_Isgaroth);
	var C_NPC Trd_Fenia;		Trd_Fenia		= Hlp_GetNpc (VLK_476_Fenia);
	var C_NPC Trd_Khaled;		Trd_Khaled		= Hlp_GetNpc (SLD_823_Khaled);
	var C_NPC Trd_Karras;		Trd_Karras		= Hlp_GetNpc (KDF_503_Karras);
	var C_NPC Trd_Salandril;	Trd_Salandril	= Hlp_GetNpc (VLK_422_Salandril);
	var C_NPC Trd_Gaertner;		Trd_Gaertner	= Hlp_GetNpc (VLK_411_Gaertner);
	var C_NPC Trd_Lutero;		Trd_Lutero		= Hlp_GetNpc (VLK_404_Lutero);
	
	//MOD
	var C_NPC Trd_Martin;		Trd_Martin	 	= Hlp_GetNpc (GRD_350_Martin); 
	var C_NPC Trd_Gordon;		Trd_Gordon	 	= Hlp_GetNpc (NONE_1000_Gordon); 
	var C_NPC Trd_Rupert;		Trd_Rupert	 	= Hlp_GetNpc (VLK_458_Rupert); 
	var C_NPC Trd_Xardas;		Trd_Xardas	 	= Hlp_GetNpc (NONE_100_Xardas); 
	
//********************************************************************
//		Hier auch!!!
//********************************************************************

	B_ClearRuneInv (slf);
	
	if (slf.aivar[AIV_ChapterInv] <= Kapitel)
	{
		//GOTHIC 2		
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Engor)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Engor		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Matteo)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Matteo 		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Halvor)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Halvor		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Bosper)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Bosper		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Harad)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Harad		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Brian)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Brian		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Brahim)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Brahim		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Constantino)	{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Constantino	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Kardif)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Kardif		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Zuris)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Zuris		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Baltram)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Baltram		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Canthar)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Canthar		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Sarah)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Sarah		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Jora)			{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Jora		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Hakon)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Hakon		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Coragon)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Coragon		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Gorax)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Gorax		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Orlan)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Orlan		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Bennet)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Bennet		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Bennet_DI)	{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Bennet_DI	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Elena)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Elena		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Sagitta)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Sagitta		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Kjorn)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Kjorn		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Rethon)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Rethon		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Rosi)			{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Rosi		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Ignaz)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Ignaz		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Milten_DI)	{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Milten_DI	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Vatras_DI)	{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Vatras_DI	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Diego_DI)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Diego_DI	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Tandor)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Tandor		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Sengrath)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Sengrath	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Isgaroth)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Isgaroth	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Fenia)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Fenia		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Khaled)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Khaled		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Karras)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Karras		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Salandril)	{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Salandril	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Gaertner)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Gaertner	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Lutero)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Lutero	(slf);};
		
		//MOD
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Martin)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Addon_Martin		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Gordon)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Revived_Gordon		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Rupert)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Rupert		(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Xardas)		{B_ClearJunkTradeInv (slf); B_GiveTradeInv_Xardas		(slf);};

		slf.aivar[AIV_ChapterInv] = (Kapitel +1);
	};		
	
	////////////////////////////////////////////////////////////////////////////////////////////////////
	//	Handelsware Clearen und Ambientstuff in die Tasche, wenn Trader Unconscious oder Dead
	////////////////////////////////////////////////////////////////////////////////////////////////////
	
	if 	(Npc_IsInState	(slf, ZS_Dead))
	||	(Npc_IsInState	(slf, ZS_Unconscious ))
	{
		
		//GOTHIC 2
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Engor)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Matteo)		{B_ClearDeadTrader 	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Halvor)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Bosper)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Harad)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Brian)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Brahim)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Constantino)	{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Kardif)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Zuris)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Baltram)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Canthar)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Sarah)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Jora)			{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Hakon)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Coragon)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Gorax)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Orlan)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Bennet)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Bennet_DI)	{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Elena)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Sagitta)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Kjorn)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Rethon)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Rosi)			{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Ignaz)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Milten_DI)	{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Vatras_DI)	{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Diego_DI)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Tandor)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Sengrath)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Isgaroth)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Fenia)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Khaled)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Karras)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Salandril)	{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Gaertner)		{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Lutero)		{B_ClearDeadTrader	(slf);};
		
		//MOD
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Martin)			{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Gordon)			{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Rupert)			{B_ClearDeadTrader	(slf);};
		if  Hlp_GetInstanceID (slf) == Hlp_GetInstanceID (Trd_Xardas)			{B_ClearDeadTrader	(slf);};
	};

};
	
	

