
PROTOTYPE Mst_Default_Psionic(C_Npc)			
{
	//----- Monster ----
	name							=	"Apocalyptic Psionic";
	guild							=	GIL_FANATIC;
	aivar[AIV_MM_REAL_ID]			= 	ID_FANATIC;
	level							=	35;

	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	140;
	attribute	[ATR_DEXTERITY]		=	130;
	attribute	[ATR_HITPOINTS_MAX]	=	500;
	attribute	[ATR_HITPOINTS]		=	500;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protection ----
	protection	[PROT_BLUNT]		=	180;
	protection	[PROT_EDGE]			=	180;
	protection	[PROT_POINT]		=	280; 
	protection	[PROT_FIRE]			=	100;
	protection	[PROT_FLY]			=	160;
	protection	[PROT_MAGIC]		=	150;	
	
	//----- HitChances -----
	HitChance	[NPC_TALENT_1H]			= 90;
	HitChance	[NPC_TALENT_2H]			= 90;
	HitChance	[NPC_TALENT_BOW]		= 90;
	HitChance	[NPC_TALENT_CROSSBOW]	= 90;
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_HUMAN_STRONG;

	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};


//**************************************************************
//	Zombie Novice
//**************************************************************
INSTANCE Zombie_Novice01	(Mst_Default_Psionic)
{
	name						=	"Undead Novice";
	
	Mdl_SetVisual			(self,	"Zombie.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody 		(self,	"Zom_Body",		0,			1,			"Zom_Head", 1,  		DEFAULT,	-1);
};
//-------------------------------------------------------------
INSTANCE Zombie_Novice02	(Mst_Default_Psionic)
{
	name						=	"Undead Novice";
	
	Mdl_SetVisual			(self,	"Zombie.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody 		(self,	"Zom_Body",		0,			1,			"Zom_Head", 1,  		DEFAULT,	-1);
};
//-------------------------------------------------------------
INSTANCE Zombie_Novice03	(Mst_Default_Psionic)
{
	name						=	"Undead Novice";

	Mdl_SetVisual			(self,	"Zombie.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody 		(self,	"Zom_Body",		0,			1,			"Zom_Head", 1,  		DEFAULT,	-1);
};


//**************************************************************
//	Skeleton Templar
//**************************************************************
INSTANCE Skeleton_Templar	(Mst_Default_Psionic)
{
	name						=	"Undead Templar";

	Mdl_SetVisual		(self,	"HumanS.mds");
	//Mdl_ApplyOverlayMds 	(self,	"humans_skeleton.mds"); //FIXME s.Skeleton.
	Mdl_ApplyOverlayMds 	(self,	"humans_1hST1.mds");
	Mdl_ApplyOverlayMds 	(self,	"humans_2hST2.mds");
	Mdl_ApplyOverlayMds 	(self,	"humans_BowT1.mds");
	Mdl_ApplyOverlayMds 	(self,	"humans_CBowT1.mds");
	//							Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	B_SetNpcVisual 		(self, MALE, "Ske_Head", 0, BodyTex_Sick, ITAR_REVIVED_PSI_TPL_02);
};