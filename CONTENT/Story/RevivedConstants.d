// ***************
// Quest Log
// ***************

const string  	theriddle_log 			= 	"The Stranger";
var int riddle1;
var int riddle2;
var int riddle3;
var int riddle4;
var int riddle5;
var int riddle6;


var int theHunterRiddle_mis;
const string  	theHunterRiddle_log 			= 	"Missing hunters";
var int riddleHuntersFIRST;
var int riddleHunters1;
var int riddleHunters2;
var int riddleHunters3;
var int riddleHunters4;
var int riddleHunters5;
var int riddleHunters6;


const string  	theQualshyRiddle_log 			= 	"Shadow";
var int riddleQualshy1;
var int riddleQualshy2;
var int riddleQualshy3;
var int riddleQualshy4;
var int riddleQualshy5;
var int riddleQualshy6;


var int			MiltenORPedro_LostInnosStatue_Daron;
var int 		TOPIC_Revived_DaronStatuette_END;
const string	TOPIC_Revived_DaronStatuette		=	"Fire Mage in turmoil";


const string	LogText_Revived_GordonTrade	 		=	"Gordon Ramsay in the broken tower can sell me food and frying pans.";



// ***************
// Text
// ***************

// Items
const string NAME_RaiseStrDex		=	"Strength and Dexterity +";

const string NAME_Addon_BeArArcher		= "Together with Archer's Suit +";


// Spells
const string NAME_SPL_TeleportNC			= "Teleport to New Camp";
const string NAME_SPL_TeleportPsi			= "Teleport to Brotherhood";
const string NAME_SPL_TeleportOrc		= "Orc Teleport";

const string NAME_SPL_TrfMeatbug		= "Transform into Meatbug";


// MobInter
const string _STR_MESSAGE_OCLEVER_STUCKS	= "The lever doesn't move at all."			;
const string _STR_MESSAGE_OCLEVER_MOVES		= "The statuette moves the lever."			;
const string _STR_MESSAGE_WHEEL_STUCKS		= "The winch is jammed."					;


// Bookstands
const string Print_LearnFromBookstand				= "You seem to have learned something new.";
const string Print_TalentFromBookstand				= "You seem to have picked up a new skill.";



// ***************
// whatever this is
// ***************

const int	_TIME_MESSAGE_RAISEATTRIBUTE	=	4;



// ***************
// Checks
// ***************

var int SCUsed_NW_TELEPORTSTATION_TROLLAREA;
var int SCUsed_NW_TELEPORTSTATION_CASTLEMINE;
var int SCUsed_NW_TELEPORTSTATION_JAEGER;
var int SCUsed_NW_TELEPORTSTATION_FOREST;

var int SCUsed_OW_TELEPORTSTATION_STONEHENGE;
var int SCUsed_OW_TELEPORTSTATION_TROLLCANYON;
var int SCUsed_OW_TELEPORTSTATION_MONASTERY;
var int SCUsed_OW_TELEPORTSTATION_CLIFF;
var int SCUsed_OW_TELEPORTSTATION_STONEFORTRESS;

var int SCUsed_AllOWTeleporststones;


var int FirstJoint_01;
var int FirstJoint_02;
var int FirstJoint_03;

var int OldApple_Bonus;
var int OldWine_Bonus;


var int LesterKeyStolen;
var int DIA_Peck_BUYARMOR_perm;
var int DIA_Revived_Gordon_Trade_OneTime;



// ***************
// Ambient XP
// ***************

const int 	XP_Addon_AllOWTeleporststones			= 400;

const int	XP_BookstandAlchemy			= 25;
const int	XP_BookstandRunes			= 25;
const int	XP_BookstandAstronomy		= 25;
const int	XP_BookstandMagic			= 25;
const int	XP_BookstandHunting			= 25;
const int	XP_BookstandHistory			= 25;
const int	XP_BookstandSpecial			= 50;

const int	XP_BookstandPersonal		= 50;
const int	XP_BookstandFireContest		= 50;

const int 	XP_Revived_Chromanin		= 50;
const int 	XP_Revived_MissingPeople	= 50;
const int 	XP_Revived_QualshyNotes		= 50;



// ***************
// Equips
// ***************

var int ArcherBelt_Equipped;
var int ArcherArmor_Equipped;
var int ArcherAmulet_Equipped;
var int ArcherRing_Equipped;
// ***************
var int ArrowProtAmulet_Equipped;
var int ArrowProtRing_Equipped;

var int MeleeProtAmulet_Equipped;
var int MeleeProtRing_Equipped;

var int WeaponProtAmulet_Equipped;
var int WeaponProtRing_Equipped;

var int MagicProtAmulet_Equipped;
var int MagicProtRing_Equipped;

var int FireProtAmulet_Equipped;
var int FireProtRing_Equipped;

var int MagicFireProtAmulet_Equipped;
var int MagicFireProtRing_Equipped;
// ***************
var int HPBoostAmulet_Equipped;
var int HPBoostRing_Equipped;

var int MPBoostAmulet_Equipped;
var int MPBoostRing_Equipped;

var int STRBoostAmulet_Equipped;
var int STRBoostRing_Equipped;

var int DEXBoostAmulet_Equipped;
var int DEXBoostRing_Equipped;
// ***************


// ***************
// GoldValue
// ***************

const int	Value_Orkhundfell		=	15;
const int	Value_Eistueck			=	100;
const int	Value_Lurkerklaue		=	15;
const int	Value_Joint3			=	20;



// ***************
// Magic
// ***************

const int	SPL_HEALING_HP_PER_MP		=	10;

const int	SPL_SENDCAST_LIGHT			=	1;
const int	SPL_SENDCAST_FIREBOLT		=	1;
const int	SPL_SENDCAST_FIREBALL		=	5;
const int	SPL_SENDCAST_FIRESTORM		=	10;
const int	SPL_SENDCAST_FIRERAIN		=	15;
const int	SPL_SENDCAST_TELEPORT		=	5;
const int	SPL_SENDCAST_THUNDERBOLT	=	1;
const int	SPL_SENDCAST_THUNDERBALL	=	5;
const int	SPL_SENDCAST_ICECUBE		=	3;
const int	SPL_SENDCAST_ICEWAVE		=	8;

const int	SPL_SENDCAST_SUMMONDEMON	=	20;
const int	SPL_SENDCAST_SUMMONSKELETON	=	10;
const int	SPL_SENDCAST_SUMMONGOLEM	=	15;
const int	SPL_SENDCAST_ARMYOFDARKNESS	=	25;

const int	SPL_SENDCAST_MASSDEATH		=	10;
const int	SPL_SENDCAST_DESTROYUNDEAD	=	5;
const int	SPL_SENDCAST_WINDFIST		=	3;
const int	SPL_SENDCAST_STORMFIST		=	8;
const int	SPL_SENDCAST_CHARM			=	5;
const int	SPL_SENDCAST_SLEEP			=	3;
const int	SPL_SENDCAST_FEAR			=	5;
const int	SPL_SENDCAST_BERZERK		=	10;
const int	SPL_SENDCAST_BREATHOFDEATH	=	5;
const int	SPL_SENDCAST_NEW1			=	5;		// Spell SPL_NEW1 (URIZIEL-Rune mit speziellen Spieler-BreathOfDeath)
const int	SPL_SENDCAST_SHRINK			=	5;

// Remember to comment SPL_Reserved_ in CONSTANTS.d

const int	SPL_TrfMeatbug				= 64;

const int 	SPL_TeleportOrc				= 90;
const int 	SPL_TeleportNC				= 91;
const int 	SPL_TeleportPsi				= 92;



// ****************
// Alchemy
// ****************

const int POTION_Perm_DEX_01  					= 15;
const int POTION_Perm_DEX_02  					= 16;
const int POTION_Perm_DEX_03  					= 17;
const int POTION_Perm_STR_01  					= 18;
const int POTION_Perm_STR_02  					= 19;
const int POTION_Perm_STR_03  					= 20;
const int POTION_Perm_HEALTH_01  				= 21;
const int POTION_Perm_HEALTH_02  				= 22;
const int POTION_Perm_HEALTH_03  				= 23;
const int POTION_Perm_MANA_01  					= 24;
const int POTION_Perm_MANA_02  					= 25;
const int POTION_Perm_MANA_03  					= 26;
const int POTION_SPEED_01  						= 27;
const int POTION_SPEED_02  						= 28;
const int POTION_SPEED_03  						= 29;
const int POTION_Perm_MASTER_01  				= 30;
const int POTION_Perm_MASTER_02  				= 31;
const int POTION_Perm_MASTER_03  				= 32;



// ***************
// Swordmaking
// ***************

const int WEAPON_1H_REVIVED_01			= 13;
const int WEAPON_2H_REVIVED_01			= 14;
const int WEAPON_1H_REVIVED_02			= 15;
const int WEAPON_2H_REVIVED_02			= 16;
const int WEAPON_1H_REVIVED_03			= 17;
const int WEAPON_2H_REVIVED_03			= 18;
const int WEAPON_1H_REVIVED_04			= 19;
const int WEAPON_2H_REVIVED_04			= 20;