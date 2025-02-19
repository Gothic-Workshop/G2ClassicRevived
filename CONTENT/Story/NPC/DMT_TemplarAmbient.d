PROTOTYPE Default_AmbientTemplar (C_NPC)			
{
	//----- Monster ----
	name							=	NAME_Templar;
	guild							=	GIL_DMT;
	aivar[AIV_MM_REAL_ID]			= 	ID_SKELETON;
	level							=	40;

	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	105; //+ 105 Waffe
	attribute	[ATR_DEXTERITY]		=	100;
	attribute	[ATR_HITPOINTS_MAX]	=	400;
	attribute	[ATR_HITPOINTS]		=	400;
	attribute	[ATR_MANA_MAX] 		=	200;
	attribute	[ATR_MANA] 			=	200;

	//----- Protection ----
	protection	[PROT_BLUNT]		=	100; //hat RS!
	protection	[PROT_EDGE]			=	100;
	protection	[PROT_POINT]		=	100; 
	protection	[PROT_FIRE]			=	100;
	protection	[PROT_FLY]			=	100;
	protection	[PROT_MAGIC]		=	0;	//so lassen!
		
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_HUMAN_STRONG;	
	B_SetFightSkills (self, 90); 
	
	EquipItem	(self, ITMW_REVIVED_KINGBLADE);

	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};

// *******************************************************
// DMT_TemplarAmbient
// *******************************************************

instance DMT_TemplarAmbientL (Default_AmbientTemplar)	//Joly: greift auf Sicht an (alle NSCs), VORSICHT, nur bedacht in bewohnte Gebiete setzten.
{
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 3);
	
	// ------ visuals ------
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_MadPsi, BodyTex_N, ITAR_REVIVED_TPL_L);	
};

instance DMT_TemplarAmbientM (Default_AmbientTemplar)	//Joly: greift auf Sicht an (alle NSCs), VORSICHT, nur bedacht in bewohnte Gebiete setzten.
{
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 4);
	
	// ------ visuals ------
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_MadPsi, BodyTex_N, ITAR_REVIVED_TPL_M);	
};

instance DMT_TemplarAmbientH (Default_AmbientTemplar)	//Joly: greift auf Sicht an (alle NSCs), VORSICHT, nur bedacht in bewohnte Gebiete setzten.
{
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 5);
	
	// ------ visuals ------
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_MadPsi, BodyTex_N, ITAR_REVIVED_TPL_H);	
};