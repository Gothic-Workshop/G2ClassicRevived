// --------------------------
const int LOC_ANGAR 		= 1;
const int LOC_ICE 			= 2;
const int LOC_SWAMP 		= 4;
const int LOC_FIRE 			= 3;
const int LOC_LAKE 			= 5;
const int LOC_XARDAS		= 6;
const int LOC_FAJETHMINE 	= 7;
const int LOC_SILVESTROMINE	= 8;
const int LOC_GRIMESMINE 	= 9;
const int LOC_BURG 			= 10;
const int LOC_ORCBARRIER	= 11;
const int LOC_ORCBARRIER_FAR = 12;
// ---------------------------
func int C_DiegoTooFar(var int tolerance) //tolerance wichtig in Dialog, sonst macht SC nach triggern der Info einen Schritt zu weit und Diego kann nicht mehr kommentieren!
{
	if (Npc_GetDistToWP (hero, "SPAWN_OW_SHADOWBEAST_10_01") < (4000 + tolerance))
	{
		return LOC_ANGAR;
	}
	else if (Npc_GetDistToWP (hero, "OW_PATH_07_21_GUARD_MIDDLE") < (3000 + tolerance))
	{
		return LOC_ICE;
	}
	else if (Npc_GetDistToWP (hero, "OW_PATH_047") < (1800 + tolerance))
	{
		return LOC_SWAMP;
	}
	else if (Npc_GetDistToWP (hero, "CASTLE_4") < (1500 + tolerance))
	{
		return LOC_FIRE;
	}
	else if (Npc_GetDistToWP (hero, "OW_PATH_210") < (6500 + tolerance))
	||		(Npc_GetDistToWP (hero, "MT_09") < (5500 + tolerance))
	{
		return LOC_LAKE;
	}
	else if (Npc_GetDistToWP (hero, "LOCATION_03_OUT") < (500 + tolerance))
	|| 		(Wld_GetPlayerPortalGuild() == GIL_DMT)
	|| 		( (Npc_GetDistToWP (hero, "DT_E3_03") < 1000) && (Npc_GetHeightToNpc(self, hero) > 1000) ) //freies St�ck oben
	{
		return LOC_XARDAS;
	}
	else if (Npc_GetDistToWP (hero, "LOCATION_23_CAVE_1_OUT") < (2500 + tolerance))
	|| 		(Npc_GetDistToWP (hero, "LOCATION_23_CAVE_1_OUT_LAKE") < (2500 + tolerance))
	{
		return LOC_FAJETHMINE;
	}
	else if (Npc_GetDistToWP (hero, "OW_SILVESTROMINE") < (1200 + tolerance))
	{
		return LOC_SILVESTROMINE;
	}
	else if (Npc_GetDistToWP (hero, "SPAWN_SNAPPER_OM_ENTRANCE_003") < (3000 + tolerance))
	{
		return LOC_GRIMESMINE;
	}
	else if (Npc_GetDistToWP (hero, "OCC_GATE_INSIDE_SMALLTALK") < (12000 + tolerance))
	||		(Npc_GetDistToWP (hero, "OCC_FIGHTTRAINING") < (12000 + tolerance))
	{
		return LOC_BURG;
	}
	else if (Npc_GetDistToWP (hero, "PATH_OC_TO_WATERFALL03") < (5000 + tolerance))
	||		(Npc_GetDistToWP (hero, "PATH_OC_PSI_01") < (5000 + tolerance))
	{
		return LOC_ORCBARRIER;
	}
	else if (Npc_GetDistToWP (hero, "OW_PATH_BLOODFLY01_SPAWN01") < (5000 + tolerance))
	{
		return LOC_ORCBARRIER_FAR;
	};
	
	return FALSE; //DEFAULT
};


