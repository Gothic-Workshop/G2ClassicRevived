	
//////////////////////////////////////
//	
// 	Music Sytem 
//	Instance-Definitions 
//	
//////////////////////////////////////

// music config instance

INSTANCE musicSysConfig		(C_MUSICSYS_CFG)
{
	volume 				= 1;   		// 0..1
	bitResolution		= 16;		// 8 / 16
	globalReverbEnabled = 1;
	sampleRate			= 44100;	// 11050 - 44100 prefered
	numChannels			= 32;		// 1 - 16
	reverbBufferSize	= 262144;
};



// ------------------------------------------------------------------------------------------------
// jingle instances
// ------------------------------------------------------------------------------------------------


INSTANCE jingleFoundItem(C_MUSICJINGLE_DEF) {	name	    = "E-Positive 2";	transSubType= TRANSITION_SUB_TYPE_BEAT;		};
INSTANCE jingleLevelGain(C_MUSICJINGLE_DEF) {	name	    = "E-Positive 1";	transSubType= TRANSITION_SUB_TYPE_MEASURE;	};
INSTANCE jingleKilledFoe(C_MUSICJINGLE_DEF) {	name	    = "E-Positive 2";	transSubType= TRANSITION_SUB_TYPE_BEAT;		};
INSTANCE jingleLearnTalent(C_MUSICJINGLE_DEF) {	name	    = "E-Positive 1";	transSubType= TRANSITION_SUB_TYPE_BEAT;		};


// ------------------------------------------------------------------------------------------------
// theme instances
// ------------------------------------------------------------------------------------------------

//////////////////////
// Prototypes
//////////////////////

PROTOTYPE C_MUSICTHEME_STANDARD		(C_MUSICTHEME)
{
	file				= "nw_dayfgt.sgt";
	transType			= TRANSITION_TYPE_ENDANDINTRO;
	transSubType		= TRANSITION_SUB_TYPE_MEASURE;	
	ReverbMix			= -8;
	ReverbTime			= 9000;
	vol                 = 1;
    loop                = 1;
		
};

PROTOTYPE C_MUSICTHEME_THREAT		(C_MUSICTHEME)
{
	file				= "nw_daythr.sgt";
	transType			= TRANSITION_TYPE_ENDANDINTRO;
	transSubType		= TRANSITION_SUB_TYPE_MEASURE;	
	ReverbMix			= -8;
	ReverbTime			= 9000;
	vol                 = 1;
    loop                = 1;
};

PROTOTYPE C_MUSICTHEME_FIGHT		(C_MUSICTHEME)
{
	file				= "nw_dayfgt.sgt";
	transType			= TRANSITION_TYPE_ENDANDINTRO;
	transSubType		= TRANSITION_SUB_TYPE_MEASURE;	
	ReverbMix			= -12;
	ReverbTime			= 9000;
	vol                 = 1;
    loop                = 1;
};




//////////////////////
// System
//////////////////////

INSTANCE SYS_Menu			(C_MUSICTHEME_DEF)
{
	file				= "gamestart.sgt";
	transType			= TRANSITION_TYPE_ENDANDINTRO;
	transSubType		= TRANSITION_SUB_TYPE_BEAT;	
	ReverbMix			= -12;
	ReverbTime			= 8500;
};

INSTANCE SYS_Loading		(C_MUSICTHEME_DEF)
{
	file				= "gamestart.sgt";
	transType			= TRANSITION_TYPE_ENDANDINTRO;
	transSubType		= TRANSITION_SUB_TYPE_BEAT;	
	ReverbMix			= -12;
	ReverbTime			= 8500;
};


// ################################################################################################
// ################################################################################################
// ################################################################################################
// ###############                                                          #######################
// ###############           A D D O N W O R L D                            #######################
// ###############                                                          #######################
// ################################################################################################
// ################################################################################################
// ################################################################################################


// ################################################################################################
// ####### ADW - AddonWorld (default) #############################################################
// ################################################################################################

		INSTANCE ADW_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "adw_day_std.sgt";		};
		INSTANCE ADW_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "adw_day_fgt.sgt";		};



// ################################################################################################
// ####### AWC - AddonWorld Entrance Temple #######################################################
// ################################################################################################

		INSTANCE AWC_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "awc_day_std.sgt";		};
		INSTANCE AWC_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "adw_day_fgt.sgt";		};




// ################################################################################################
// ####### ADT - AdanosTempel #####################################################################
// ################################################################################################

		INSTANCE ADT_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "adt_day_std.sgt";		};
		


// ################################################################################################
// ####### BDT - BanditenLager ####################################################################
// ################################################################################################

		INSTANCE BDT_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "bdt_day_std.sgt";		};
		INSTANCE BDT_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "adw_day_fgt.sgt";		};



// ################################################################################################
// ####### BIB - Canyon Bibliothek ################################################################
// ################################################################################################

		INSTANCE BIB_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "bib_day_std.sgt";		};
		INSTANCE BIB_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "adw_day_fgt.sgt";		};
		
		

// ################################################################################################
// ####### CAN - Canyon ###########################################################################
// ################################################################################################

		INSTANCE CAN_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "can_day_std.sgt";		};
		INSTANCE CAN_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "adw_day_fgt.sgt";		};




// ################################################################################################
// ####### CRY - Crystal Cave #####################################################################
// ################################################################################################

		INSTANCE CRY_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "awc_day_std.sgt";		};
		INSTANCE CRY_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "adw_day_fgt.sgt";		};



// ################################################################################################
// ####### GOL - GoldMine #########################################################################
// ################################################################################################

		INSTANCE GOL_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "bib_day_std.sgt";		};
		INSTANCE GOL_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "adw_day_fgt.sgt";		};



// ################################################################################################
// ####### GHO - Ghost Crypta #####################################################################
// ################################################################################################

		INSTANCE GHO_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "bib_day_std.sgt";		};
		INSTANCE GHO_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "adw_day_fgt.sgt";		};



// ################################################################################################
// ####### MI1 - Canyon Mine 1 ####################################################################
// ################################################################################################

		INSTANCE MI1_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "bib_day_std.sgt";		};


// ################################################################################################
// ####### MI2 - Canyon Mine 2 ####################################################################
// ################################################################################################

		INSTANCE MI2_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "bib_day_std.sgt";		};




// ################################################################################################
// ####### NWP - NewWorld Portal ##################################################################
// ################################################################################################

// WICHTIG: ALTES ORCHESTER BENUTZEN

		//INSTANCE NWP_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "pir_day_std.sgt";		};


// ################################################################################################
// ####### PO1 - AddonWorld Eingangsdungeon #######################################################
// ################################################################################################

		INSTANCE PO1_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "bib_day_std.sgt";		};
		INSTANCE PO1_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "adw_day_fgt.sgt";		};



// ################################################################################################
// ####### PIR - Canyon ###########################################################################
// ################################################################################################

		INSTANCE PIR_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "pir_day_std.sgt";		};
		INSTANCE PIR_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "adw_day_fgt.sgt";		};


// ################################################################################################
// ####### RAV - Raven ############################################################################
// ################################################################################################

		INSTANCE RAV_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "bdt_day_std.sgt";		};
		INSTANCE RAV_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "adw_day_fgt.sgt";		};


// ################################################################################################
// ####### SHO - Showdown #########################################################################
// ################################################################################################

		INSTANCE SHO_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "sho_day_std.sgt";		};
		INSTANCE SHO_Day_Fgt	(C_MUSICTHEME_STANDARD)		{	file			= "sho_day_fgt.sgt";		};


// ################################################################################################
// ####### SWP - Sumpf ############################################################################
// ################################################################################################

		INSTANCE SWP_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "swp_day_std.sgt";		};
		INSTANCE SWP_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "adw_day_fgt.sgt";		};


// ################################################################################################
// ####### STO - StonePlates ######################################################################
// ################################################################################################

		INSTANCE STO_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "sto_day_std.sgt";		};



// ################################################################################################
// ################################################################################################
// ################################################################################################
// ###############                                                          #######################
// ###############           L O C A T I O N S                              #######################
// ###############                                                          #######################
// ################################################################################################
// ################################################################################################
// ################################################################################################

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX  DEFAULT   [DEF_]         XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

INSTANCE DEF_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "nw_daystd_A0.sgt";		};
INSTANCE DEF_Day_Thr	(C_MUSICTHEME_THREAT)		{	file			= "nw_daythr.sgt";		};
INSTANCE DEF_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "nw_dayfgt.sgt";		};
												
INSTANCE DEF_Ngt_Std	(C_MUSICTHEME_STANDARD)		{	file			= "nw_daystd_A0.sgt";		};
INSTANCE DEF_Ngt_Thr	(C_MUSICTHEME_THREAT)		{	file			= "nw_daythr.sgt";		};
INSTANCE DEF_Ngt_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "nw_dayfgt.sgt";		};

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX  DEFAULT_OLDWORLD [OWD_]  XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

INSTANCE OWD_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "owd_daystd.sgt";		};
INSTANCE OWD_Day_Thr	(C_MUSICTHEME_THREAT)		{	file			= "owd_daystd.sgt";		};
INSTANCE OWD_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "owp_dayfgt.sgt";		};
												
INSTANCE OWD_Ngt_Std	(C_MUSICTHEME_STANDARD)		{	file			= "owd_daystd.sgt";		};
INSTANCE OWD_Ngt_Thr	(C_MUSICTHEME_THREAT)		{	file			= "owd_daystd.sgt";		};
INSTANCE OWD_Ngt_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "owp_dayfgt.sgt";		};

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX  DEFAULT_DRAGONISLAND [INS_] XXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

INSTANCE INS_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "di_daystd.sgt";		};
INSTANCE INS_Day_Thr	(C_MUSICTHEME_THREAT)		{	file			= "di_daystd.sgt";		};
INSTANCE INS_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "di_daystd.sgt";		};
												
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX  BANDITENHÖHLE[BAN_]      XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

INSTANCE BAN_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "ban_daystd.sgt";		};
INSTANCE BAN_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "ban_dayfgt.sgt";		};


// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX  FRIEDHOF  [FRI_]         XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

INSTANCE FRI_Day_Std	(C_MUSICTHEME_STANDARD)		{		file		= "fri_daystd.sgt";		};


// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX  DRAGONLOCATION  [DLC_]   XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

INSTANCE DLC_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "dlc_daystd.sgt";		};
INSTANCE DLC_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "dlc_dayfgt.sgt";		};

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX  KASERNE   [KAS_]         XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

INSTANCE KAS_Day_Std	(C_MUSICTHEME_STANDARD)		{		file		= "kas_daystd.sgt";		};

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX  KHORINIS   [KHO_]        XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

INSTANCE KHO_Day_Std	(C_MUSICTHEME_STANDARD)		{		file		= "kh_daystd.sgt";		};
INSTANCE KHO_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "kh_dayfgt.sgt";		};

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX  LEUCHTTURM   [LEU_]      XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

INSTANCE LEU_Day_Std	(C_MUSICTHEME_STANDARD)		{		file		= "leu_daystd.sgt";		};

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX  LOBARDS HOF  [LOB_]      XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

INSTANCE LOB_Day_Std	(C_MUSICTHEME_STANDARD)		{		file		= "lob_daystd.sgt";		};

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX  MAYATEMPEL [MAY_]        XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

INSTANCE MAY_Day_Std	(C_MUSICTHEME_STANDARD)		{	file		= "may_daystd.sgt";		};
INSTANCE May_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "may_dayfgt.sgt";		};


// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX  KLOSTER OUT    [MOO_]    XXXXXXXXXXXX
// XXXXXXXX  KLOSTER_IN     [MOI_]    XXXXXXXXXXXX
// XXXXXXXX  KLOSTER_DUNGEON[MOD_]    XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

INSTANCE MOO_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "mo_daystd.sgt";		};
INSTANCE MOI_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "mi_daystd.sgt";		};

INSTANCE MOD_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "ban_daystd.sgt";		};
INSTANCE MOD_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "ban_dayfgt.sgt";		};

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX  OW_PATH  [OWP_]          XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

INSTANCE OWP_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "owp_daystd.sgt";		};
INSTANCE OWP_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "owp_dayfgt.sgt";		};

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX  PIER [PIE_]              XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

INSTANCE PIE_Day_Std	(C_MUSICTHEME_STANDARD)		{		file		= "pie_daystd.sgt";		};

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX  WOOD           [WOO_]    XXXXXXXXXXXX
// XXXXXXXX  LESTERTAL      [TAL_]    XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

INSTANCE TAL_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "woo_daystd.sgt";		};
INSTANCE TAL_Day_Thr	(C_MUSICTHEME_THREAT)		{	file			= "woo_daythr.sgt";		};
INSTANCE TAL_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "woo_dayfgt.sgt";		};

INSTANCE WOO_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "woo_daystd.sgt";		};
INSTANCE WOO_Day_Thr	(C_MUSICTHEME_THREAT)		{	file			= "woo_daythr.sgt";		};
INSTANCE WOO_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "woo_dayfgt.sgt";		};

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX  XARDAS  [XAR_]           XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

INSTANCE XAR_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "xt_daystd.sgt";		};
INSTANCE XAR_Day_Thr	(C_MUSICTHEME_THREAT)		{	file			= "xt_daystd.sgt";		};


												
//--------------------------------- OLD WORLD -----------------------------------------------------
//--------------------------------- OLD WORLD -----------------------------------------------------
//--------------------------------- OLD WORLD -----------------------------------------------------
//--------------------------------- OLD WORLD -----------------------------------------------------
//--------------------------------- OLD WORLD -----------------------------------------------------
//--------------------------------- OLD WORLD -----------------------------------------------------
//--------------------------------- OLD WORLD -----------------------------------------------------
//--------------------------------- OLD WORLD -----------------------------------------------------
//--------------------------------- OLD WORLD -----------------------------------------------------
//--------------------------------- OLD WORLD -----------------------------------------------------
//--------------------------------- OLD WORLD -----------------------------------------------------
//--------------------------------- OLD WORLD -----------------------------------------------------

// ################################################################################################
// ###############                                                          #######################
// ###############           C A M P S                                      #######################
// ###############                                                          #######################
// ################################################################################################

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX  O L D C A M P  [OC_]     XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

INSTANCE OC_Day_Std		(C_MUSICTHEME_DEF)	{	file			= "oc_day_std.sgt";						
												transType		= TRANSITION_TYPE_BREAK;
												transSubType	= TRANSITION_SUB_TYPE_MEASURE;			};

INSTANCE OC_Day_Thr		(C_MUSICTHEME_DEF)	{	file			= "oc_day_std.sgt";						
												transType		= TRANSITION_TYPE_BREAK;
												transSubType	= TRANSITION_SUB_TYPE_MEASURE;			};

INSTANCE OC_Day_Fgt		(C_MUSICTHEME_DEF)	{	file			= "oc_day_fgt.sgt";						
												transType		= TRANSITION_TYPE_FILL;
												transSubType	= TRANSITION_SUB_TYPE_MEASURE;			};

// ----------------------------------------------------

INSTANCE OC_Ngt_Std		(C_MUSICTHEME_DEF)	{	file			= "cam_ngt_std.sgt";					};

INSTANCE OC_Ngt_Thr		(C_MUSICTHEME_DEF)	{	file			= "cam_ngt_thr.sgt";					};

INSTANCE OC_Ngt_Fgt		(C_MUSICTHEME_DEF)	{	file			= "oc_day_fgt.sgt";						
												transType		= TRANSITION_TYPE_FILL;
												transSubType	= TRANSITION_SUB_TYPE_MEASURE;			};



// --- ARENA ----

INSTANCE ARE_Day_Std	(C_MUSICTHEME_DEF)	{	file			= "foc_day_std.sgt";						};

INSTANCE ARE_Day_Thr	(C_MUSICTHEME_DEF)	{	file			= "foc_day_std.sgt";						};

INSTANCE ARE_Day_Fgt	(C_MUSICTHEME_DEF)	{	file			= "oc_day_fgt.sgt";						
												transType		= TRANSITION_TYPE_FILL;
												transSubType	= TRANSITION_SUB_TYPE_MEASURE;			};

// --- INEXTREMO ----


INSTANCE IE_Day_Std		(C_MUSICTHEME_DEF)	{	file			= "oc_day_std.sgt";   						};
INSTANCE IE_Ngt_Std		(C_MUSICTHEME_DEF)	{	file			= "cam_ngt_std.sgt";   						};

INSTANCE IE_Day_Thr		(C_MUSICTHEME_DEF)	{	file			= "oc_day_std.sgt";   						};

INSTANCE IE_Day_Fgt		(C_MUSICTHEME_DEF)	{	file			= "oc_day_fgt.sgt";   						};
												

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX  N E W C A M P  [NCO_/NCI_]   XXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

// Plateau davor

INSTANCE NCO_Day_Std	(C_MUSICTHEME_DEF)	{	file			= "cam_day_std.sgt";	
												transType		= TRANSITION_TYPE_BREAK;
												transSubType	= TRANSITION_SUB_TYPE_MEASURE;			};
												
INSTANCE NCO_Day_Thr	(C_MUSICTHEME_DEF)	{	file			= "cam_day_thr.sgt";
												transType		= TRANSITION_TYPE_BREAK;
												transSubType	= TRANSITION_SUB_TYPE_MEASURE;			};

INSTANCE NCO_Day_Fgt	(C_MUSICTHEME_DEF)	{	file			= "cam_day_fgt.sgt";
												transType		= TRANSITION_TYPE_FILL;
												transSubType	= TRANSITION_SUB_TYPE_MEASURE;			};

                                                                
INSTANCE NCO_Ngt_Std	(C_MUSICTHEME_DEF)	{	file			= "cam_ngt_std.sgt";					};
INSTANCE NCO_Ngt_Thr	(C_MUSICTHEME_DEF)	{	file			= "cam_ngt_std.sgt";					};
INSTANCE NCO_Ngt_Fgt	(C_MUSICTHEME_DEF)	{	file			= "cam_ngt_std.sgt";					};

// Höhle

INSTANCE NCI_Day_Std	(C_MUSICTHEME_DEF)	{	file			= "nci_day_std.sgt";
												transType		= TRANSITION_TYPE_BREAK;
												transSubType	= TRANSITION_SUB_TYPE_MEASURE;			};

INSTANCE NCI_Day_Thr	(C_MUSICTHEME_DEF)	{	file			= "nci_day_std.sgt";
												transType		= TRANSITION_TYPE_BREAK;
												transSubType	= TRANSITION_SUB_TYPE_MEASURE;			};

INSTANCE NCI_Day_Fgt	(C_MUSICTHEME_DEF)	{	file			= "nci_day_fgt.sgt";					
												transType		= TRANSITION_TYPE_FILL;
												transSubType	= TRANSITION_SUB_TYPE_MEASURE;			};
                                                                
INSTANCE NCI_Ngt_Std	(C_MUSICTHEME_DEF)	{	file			= "nci_day_std.sgt";					};
INSTANCE NCI_Ngt_Thr	(C_MUSICTHEME_DEF)	{	file			= "nci_day_std.sgt";					};
INSTANCE NCI_Ngt_Fgt	(C_MUSICTHEME_DEF)	{	file			= "nci_day_fgt.sgt";					
												transType		= TRANSITION_TYPE_FILL;
												transSubType	= TRANSITION_SUB_TYPE_MEASURE;			};


// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX  P S I C A M P  [PSI_]    XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

INSTANCE PSI_Day_Std	(C_MUSICTHEME_DEF)	{	file			= "psi_day_std.sgt";
												transType		= TRANSITION_TYPE_BREAK;
												transSubType	= TRANSITION_SUB_TYPE_MEASURE;			};
												
INSTANCE PSI_Day_Thr	(C_MUSICTHEME_DEF)	{	file			= "psi_day_thr.sgt";	
												transType		= TRANSITION_TYPE_BREAK;
												transSubType	= TRANSITION_SUB_TYPE_MEASURE;			};
												
INSTANCE PSI_Day_Fgt	(C_MUSICTHEME_DEF)	{	file			= "psi_day_fgt.sgt";						
												transType		= TRANSITION_TYPE_FILL;
												transSubType	= TRANSITION_SUB_TYPE_MEASURE;			};
												
INSTANCE PSI_Ngt_Std	(C_MUSICTHEME_DEF)	{	file			= "psi_ngt_std.sgt";					};
INSTANCE PSI_Ngt_Thr	(C_MUSICTHEME_DEF)	{	file			= "psi_ngt_std.sgt";					};
INSTANCE PSI_Ngt_Fgt	(C_MUSICTHEME_DEF)	{	file			= "psi_day_fgt.sgt";					};


// ################################################################################################
// ###############                                                          #######################
// ###############           D U N G E O N S                                #######################
// ###############                                                          #######################
// ################################################################################################

// TEMPEL

INSTANCE TPL_Day_Std	(C_MUSICTHEME_DEF)	{	file			= "ogy_day_std.sgt";					};
INSTANCE TPL_Day_Thr	(C_MUSICTHEME_DEF)	{	file			= "ogy_day_std.sgt";					};
INSTANCE TPL_Day_Fgt	(C_MUSICTHEME_DEF)	{	file			= "ogy_day_fgt.sgt";					};
INSTANCE TPL_Ngt_Std	(C_MUSICTHEME_DEF)	{	file			= "ogy_day_std.sgt";					};

INSTANCE KAT_Day_Std	(C_MUSICTHEME_DEF)	{	file			= "ogy_day_std.sgt";					};
INSTANCE KAT_Day_Thr	(C_MUSICTHEME_DEF)	{	file			= "ogy_day_std.sgt";					};
INSTANCE KAT_Day_Fgt	(C_MUSICTHEME_DEF)	{	file			= "ogy_day_fgt.sgt";					};
INSTANCE KAT_Ngt_Std	(C_MUSICTHEME_DEF)	{	file			= "ogy_day_std.sgt";					};

INSTANCE SPL_Day_Std	(C_MUSICTHEME_DEF)	{	file			= "ogy_day_std.sgt";					};
INSTANCE SPL_Day_Thr	(C_MUSICTHEME_DEF)	{	file			= "ogy_day_std.sgt";					};
INSTANCE SPL_Day_Fgt	(C_MUSICTHEME_DEF)	{	file			= "ogy_day_fgt.sgt";					};
INSTANCE SPL_Ngt_Std	(C_MUSICTHEME_DEF)	{	file			= "ogy_day_std.sgt";					};
		
// FREE MINE

INSTANCE FRM_Day_Std	(C_MUSICTHEME_DEF)	{	file			= "olm_day_std.sgt";
												transType		= TRANSITION_TYPE_BREAK;
												transSubType	= TRANSITION_SUB_TYPE_MEASURE;			};

INSTANCE FRM_Day_Thr	(C_MUSICTHEME_DEF)	{	file			= "olm_day_thr.sgt";
												transType		= TRANSITION_TYPE_BREAK;
												transSubType	= TRANSITION_SUB_TYPE_MEASURE;			};
												
INSTANCE FRM_Day_Fgt	(C_MUSICTHEME_DEF)	{	file			= "olm_day_fgt.sgt";						
												transType		= TRANSITION_TYPE_FILL;
												transSubType	= TRANSITION_SUB_TYPE_MEASURE;			};

INSTANCE FRM_Ngt_Std	(C_MUSICTHEME_DEF)	{	file			= "olm_day_std.sgt";
												transType		= TRANSITION_TYPE_BREAK;
												transSubType	= TRANSITION_SUB_TYPE_MEASURE;			};
												
// OLD MINE?

INSTANCE OLM_Day_Std	(C_MUSICTHEME_DEF)	{	file			= "olm_day_std.sgt";
												transType		= TRANSITION_TYPE_BREAK;
												transSubType	= TRANSITION_SUB_TYPE_MEASURE;			};

INSTANCE OLM_Ngt_Std	(C_MUSICTHEME_DEF)	{	file			= "olm_day_std.sgt";
												transType		= TRANSITION_TYPE_BREAK;
												transSubType	= TRANSITION_SUB_TYPE_MEASURE;			};
																								
INSTANCE OLM_Day_Thr	(C_MUSICTHEME_DEF)	{	file			= "olm_day_thr.sgt";
												transType		= TRANSITION_TYPE_BREAK;
												transSubType	= TRANSITION_SUB_TYPE_MEASURE;			};
												
INSTANCE OLM_Day_Fgt	(C_MUSICTHEME_DEF)	{	file			= "olm_day_fgt.sgt";						
												transType		= TRANSITION_TYPE_FILL;
												transSubType	= TRANSITION_SUB_TYPE_MEASURE;			};

// ORCGRAVEYARD		

INSTANCE OGY_Day_Std	(C_MUSICTHEME_DEF)	{	file			= "ogy_day_std.sgt";					};
INSTANCE OGY_Day_Thr	(C_MUSICTHEME_DEF)	{	file			= "ogy_day_std.sgt";					};
INSTANCE OGY_Day_Fgt	(C_MUSICTHEME_DEF)	{	file			= "ogy_day_fgt.sgt";					};

INSTANCE OGY_Ngt_Std	(C_MUSICTHEME_DEF)	{	file			= "ogy_day_std.sgt";					};

												

// ################################################################################################
// ###############                                                          #######################
// ###############                       S P E C I A L                      #######################
// ###############                                                          #######################
// ################################################################################################

// "BEHIND THE SKULL"

INSTANCE TH_Day_Std	(C_MUSICTHEME_DEF)	{	file			= "TH_day_std.sgt";					};
INSTANCE TH_Day_Thr	(C_MUSICTHEME_DEF)	{	file			= "TH_day_std.sgt";					};
INSTANCE TH_Day_Fgt	(C_MUSICTHEME_DEF)	{	file			= "TH_day_fgt.sgt";					};

INSTANCE TH_Ngt_Std	(C_MUSICTHEME_DEF)	{	file			= "TH_day_std.sgt";					};

