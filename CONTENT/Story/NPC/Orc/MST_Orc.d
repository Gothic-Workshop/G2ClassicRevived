/*************************************************************************
**	Orc SCOUT Prototype													**
*************************************************************************/

PROTOTYPE Mst_Default_OrcScout(C_Npc)			
{
	name							=	"Orc Hunter";
	guild							=	GIL_ORC;
	voice							=	17;
	level							=	20;
//----------------------------------------------------------	
	attribute	[ATR_STRENGTH]		=	40;
	attribute	[ATR_DEXTERITY]		=	40;
	
	attribute	[ATR_HITPOINTS_MAX]	=	200;
	attribute	[ATR_HITPOINTS]		=	200;

	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
//----------------------------------------------------------	
	protection	[PROT_BLUNT]		=	50;
	protection	[PROT_EDGE]			=	50;
	protection	[PROT_POINT]		=	25;
	protection	[PROT_FIRE]			=	25;
	protection	[PROT_FLY]			=	0;
	protection	[PROT_MAGIC]		=	0;
//----------------------------------------------------------	
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;
//---------------------------------------------------------
//---------------------------------------------------------

	fight_tactic					=	FAI_ORC;
//---------------------------------------------------------
	senses						= SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range				= 2500;

	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
//-------------------------------------------------------------
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
};
//-------------------------------------------------------------
func void Set_OrcScout_Visuals()
{
	Mdl_SetVisual			(self,	"Orc.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Orc_BodyScout",DEFAULT,	DEFAULT,	"Orc_HeadWarrior",	DEFAULT,  	DEFAULT,	-1);
};


/*************************************************************************
**	Orc Scout    														**
*************************************************************************/

// in den Instanz-Scripten bitte NUR die Werte eintragen, die vom Prototyp abweichen sollen!

INSTANCE OrcScout (Mst_Default_OrcScout)
{
	Set_OrcScout_Visuals	();
	EquipItem 				(self, ITMW_REVIVED_KRUSHVARROK);
	//EquipItem				(self, ItRw_Crossbow_01);
	//CreateInvItems			(self,	ItAmBolt,	30);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
};

/*************************************************************************
**	Orc_City - Essender Ork   														**
*************************************************************************/
INSTANCE OrcCity_Rest (Mst_Default_OrcScout)
{
	name			=	"Orc";

	//-------- visuals --------
	Set_OrcScout_Visuals();

	//-------- inventory --------
	CreateInvItem	(self,	ITMW_REVIVED_KRUSHVARROK);	
	
	//-------- ai --------
	start_aistate	= ZS_Orc_EatAndDrink;

};
INSTANCE OrcCity_Dance (Mst_Default_OrcScout)
{
	name			=	"Orc";

	//-------- visuals --------
	Set_OrcScout_Visuals();

	//-------- inventory --------
	CreateInvItem	(self,	ITMW_REVIVED_KRUSHVARROK);	
	
	//----- Daily Routine ----
	start_aistate	= ZS_Orc_Dance;

};
INSTANCE OrcCity_Drum (Mst_Default_OrcScout)
{
	name			=	"Orc";

	//-------- visuals --------
	Set_OrcScout_Visuals();

	//-------- inventory --------
	CreateInvItem	(self,	ITMW_REVIVED_KRUSHVARROK);	
	
	//----- Daily Routine ----
	start_aistate	= ZS_Orc_Drum;

};
INSTANCE OrcCity_Guard (Mst_Default_OrcScout)
{
	//-------- general data --------
	guild			=	GIL_ORC;
	name			=	"Orc Guard";

	//-------- visuals --------
	Set_OrcScout_Visuals();

	//-------- inventory --------
	CreateInvItem	(self,	ITMW_REVIVED_KRUSHVARROK);	

	//-------- ai --------
	start_aistate	= ZS_Orc_Guard;

};