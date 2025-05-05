// ***************
// Quest Log
// ***************

var int			MiltenORPedro_LostInnosStatue_Daron;
var int 		TOPIC_Revived_DaronStatuette_END;

const string	TOPIC_Revived_DaronStatuette		=	"Fire Mage in turmoil";

const string	TOPIC_Revived_ThievesGuild			=	"Thieves' Guild";


const string	TOPIC_Tobacco						=	"Mixing tobacco";
const string	LogText_TobaccoLearned				=	"By mixing Abuyin's apple tobacco at an alchemist's bench I can make:";


const string	LogText_Revived_GordonTrade	 		=	"Gordon Ramsay in the broken tower can sell me food and frying pans.";



// ***************
// Text
// ***************

// Death Messages
const string PRINT_DEATH_MESSAGE_0		=	"Your journey ends here.";
const string PRINT_DEATH_MESSAGE_1		=	"Maybe you should've spent more learning points.";
const string PRINT_DEATH_MESSAGE_2		=	"Guess you weren't the Chosen One after all.";
const string PRINT_DEATH_MESSAGE_3		=	"When was the last time you saved...?";
const string PRINT_DEATH_MESSAGE_4		=	"You are finally free.";


// Eating Bonus Messages
const string PRINT_Eat_Apple1				= "You feel refreshed.";
const string PRINT_Eat_Apple2				= "Tastes juicy and fresh.";
const string PRINT_Eat_Apple3				= "You feel well and strong!";
const string PRINT_Eat_SourApple1			= "The taste sparks your curiosity.";
const string PRINT_Eat_SourApple2			= "You feel energized.";
const string PRINT_Eat_SourApple3			= "You feel agile and alert!";
const string PRINT_Eat_Pear1				= "Sweet and mellow taste.";
const string PRINT_Eat_Pear2				= "You feel a strange clarity.";
const string PRINT_Eat_Pear3				= "You feel open to new knowledge!";
const string PRINT_Eat_MPMushroom1			= "You feel a spark of energy.";
const string PRINT_Eat_MPMushroom2			= "The mushroom tingles with magic power.";
const string PRINT_Eat_MPMushroom3			= "Your mind clears and mana flows!";
const string PRINT_Eat_HPMushroom1			= "Earthy and rich in taste.";
const string PRINT_Eat_HPMushroom2			= "The hearty flavor revitalizes you.";
const string PRINT_Eat_HPMushroom3			= "Your body feels more resilient!";


// Items
const string NAME_RaiseStrDex		=	"Strength and Dexterity +";
const string NAME_RaiseHPMP			=	"Hitpoints and Mana +";
const string NAME_Addon_BeArArcher		= "Together with Archer's Suit +";

const string PRINT_GotFood					= "Package was filled with food";


// Spells
const string NAME_SPL_TeleportNC			= "Teleport to New Camp";
const string NAME_SPL_TeleportPsi			= "Teleport to Brotherhood";
const string NAME_SPL_TeleportOrc		= "Orc Teleport";

const string NAME_SPL_TrfMeatbug		= "Transform into Meatbug";


// MobInter
const string _STR_MESSAGE_OCLEVER_STUCKS	= "The lever doesn't move at all."			;
const string _STR_MESSAGE_ORCLEVER_MOVES	= "The statuette moves the lever."			;
const string _STR_MESSAGE_PILLAR_STUCKS		= "The pillar won't budge."					;
const string _STR_MESSAGE_WHEEL_STUCKS		= "The winch is jammed."					;


// MobName
CONST STRING MOBNAME_CHESTOLD				= "Old Chest";
CONST STRING MOBNAME_LEVER					= "Lever";
CONST STRING MOBNAME_PILLAR					= "Pillar";

CONST STRING MOBNAME_ADANOS_SHRINE			= "Statue of Adanos";

CONST STRING MOBNAME_VINEYARD				= "Grapevine";

CONST STRING MOBNAME_GR_CHAPEL				= "To Chapel";

CONST STRING MOBNAME_ORE_DEPLETED			= "";


CONST STRING MOBNAME_CHESTMAKER_01			= "Thorben's Workshop";


// Adanos Shrine

const string NAME_PRAYADANOS_GIVENOTHING			= "I will pray and offer nothing.";
const string NAME_PRAYADANOS_GIVELP1				= "I will pray and offer 1 learn point.";
const string NAME_PRAYADANOS_GIVELP2				= "I will pray and offer 2 learn points.";
const string NAME_PRAYADANOS_GIVELP3				= "I will pray and offer 3 learn points.";
const string NAME_PRAYADANOS_GIVEEXP				= "I will pray and offer 1000 experience.";

const string PRINT_PRAYADANOS_Bless1H				= "1H BONUS";
const string PRINT_PRAYADANOS_Bless2H				= "2H BONUS";
const string Print_PRAYADANOS_BlessBOW				= "BOW BONUS";
const string Print_PRAYADANOS_BlessCBOW				= "CBOW BONUS";
const string Print_PRAYADANOS_BlessWisp				= "Adanos blesses you.";
const string Print_PRAYADANOS_BlessNone				= "Adanos thanks you for your prayer.";

const string Print_PRAYADANOS_BlessCant				= "Adanos can't take your offering.";
const string PRINT_BlessMANA_MAX					= "Adanos grants you: Mana + ";


const string Print_PRAYBELIAR_GETLP				= "Beliar grants you 1 learn point.";


// Cooking
const string PRINT_CookingSuccess					= "Recipe prepared!";


// Alchemy
const string PRINT_PotionMixSuccess					= "Potions mixed!";
const string PRINT_BoozeSuccess						= "Booze mixed!";
const string PRINT_TabakSuccessREVIVED				= "Reefer rolled!";


// Skills
const string PRINT_ADDON_HACKCHANCE					= "Knowledge of digging improved! (+";	

const string Print_LearnFromBookstand				= "You seem to have learned something new.";
const string Print_TalentFromBookstand				= "You seem to have picked up a new skill.";	

const string PRINT_LearnBowyer					= "Learn: Bowmaking";
const string PRINT_LearnCooking					= "Learn: Cooking";
const string PRINT_LearnTobacco					= "Learn: Blend tobacco";
const string PRINT_LearnBooze					= "Learn: Distill booze";


// ***************
// whatever this is
// ***************

const int	_TIME_MESSAGE_RAISEATTRIBUTE	=	4;


// ***************
// ZEN Constants
// ***************

const int ABANDONEDMINE_ZEN = 5;
var int PlayerPassedAbandonedMine;
var int EnterAM_Kapitel1;
var int EnterAM_Kapitel2;
var int EnterAM_Kapitel3;
var int EnterAM_Kapitel4;
var int EnterAM_Kapitel5;


// ***************
// AI Constants
// ***************

const int Face_N_GordonRamsay		= 	163;
const int Face_N_ArkhanQualshy		= 	164;
const int Face_N_BartiredQualshy	= 	165;
const int Face_N_SinisterCruz		= 	166;
const int Face_N_UdarEverett		= 	167;
const int Face_N_DelaCroix			= 	168;


const int ID_MINECRAWLERQUEEN		=	65;
const int FAI_MINECRAWLERQUEEN		=	47;



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


const int OreMob_All_Amount_MAX = 3;
var int OreMob_01_Amount;
var int OreMob_02_Amount;
var int OreMob_03_Amount;
var int OreMob_04_Amount;
var int OreMob_05_Amount;
var int OreMob_06_Amount;
var int OreMob_07_Amount;
var int OreMob_08_Amount;
var int OreMob_09_Amount;
var int OreMob_10_Amount;
var int OreMob_11_Amount;
var int OreMob_12_Amount;
var int OreMob_13_Amount;
var int OreMob_14_Amount;
var int OreMob_15_Amount;
var int OreMob_16_Amount;
var int OreMob_17_Amount;
var int OreMob_18_Amount;
var int OreMob_19_Amount;
var int OreMob_20_Amount;
var int OreMob_21_Amount;
var int OreMob_22_Amount;
var int OreMob_23_Amount;
var int OreMob_24_Amount;
var int OreMob_25_Amount;
var int OreMob_26_Amount;
var int OreMob_27_Amount;
var int OreMob_28_Amount;
var int OreMob_29_Amount;
var int OreMob_30_Amount;


var int FirstJoint_01;
var int FirstJoint_02;
var int FirstJoint_03;
var int FirstJoint_04;
var int FirstJoint_REGULAR; 
var int FirstJoint_APPLE; 
var int FirstJoint_APPLEDOUBLE;
var int FirstJoint_HONEY;
var int FirstJoint_MUSHROOM;

var int OldApple_Bonus;
var int Pear_Bonus;
var int OldWine_Bonus;
var int DiggerMushroom_Bonus;


var int BilgotSecondPass;
var int BilgotInKhorinis;

var int DragonHunt_OriginalPass;
var int DragonHunt_SecondPass;


var int LesterKeyStolen;
var int DIA_Peck_BUYARMOR_perm;
var int DIA_Revived_Gordon_Trade_OneTime;

var int CipherBuysWeed;

var int BaltramSellRecipe;
var int BaltramPirateTrade;
var int BaltramRatOut;
var int BaltramInJail;

var int Bounty1;
var int Bounty2;
var int Bounty3;
var int Bounty4;
var int Bounty5;



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

const int	XP_BookstandSpecific		= 50;

const int	XP_BookstandPersonal		= 50;
const int	XP_BookstandFireContest		= 50;



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


// ***************
// MOBSI
// ***************

const int	MOBSI_OREHACKEN					= 8;
const int	MOBSI_CAULDRON					= 9;
const int	MOBSI_PRAYADANOS				= 10;	




// ***************
// TALENTS
// ***************

const int NPC_TALENT_BOWMAKING			= 10;
const int NPC_TALENT_COOKING			= 19;
const int NPC_TALENT_BOOZE				= 20;
const int NPC_TALENT_TOBACCO			= 21;



// ***************
// Swordmaking
// ***************

const int WEAPON_1H_REVIVED_01			= 13;
const int WEAPON_1H_REVIVED_02			= 14;
const int WEAPON_1H_REVIVED_03			= 15;
const int WEAPON_1H_REVIVED_04			= 16;
const int WEAPON_2H_REVIVED_01			= 17;
const int WEAPON_2H_REVIVED_02			= 18;
const int WEAPON_2H_REVIVED_03			= 19;
const int WEAPON_2H_REVIVED_04			= 20;


const int MAX_WEAPONS_MELEE 			= 21;
var int PLAYER_TALENT_SMITH[MAX_WEAPONS_MELEE];



// ***************
// Bowmaking
// ***************

const int WEAPON_BOW_REVIVED_01			= 1;
const int WEAPON_BOW_REVIVED_02			= 3;
const int WEAPON_BOW_REVIVED_03			= 5;
const int WEAPON_BOW_REVIVED_04			= 7;
const int WEAPON_CBOW_REVIVED_01		= 2;
const int WEAPON_CBOW_REVIVED_02		= 4;
const int WEAPON_CBOW_REVIVED_03		= 6;
const int WEAPON_CBOW_REVIVED_04		= 8;


const int MAX_WEAPONS_RANGED 			= 9;
var int PLAYER_TALENT_BOWYER[MAX_WEAPONS_RANGED];



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



// ****************
// Alchemy (Special)
// ****************

const int POTION_Special_Experience		  		= 32;
const int POTION_Special_DragonDrink	  		= 33;


const int MAX_POTION						= 34;
var int PLAYER_TALENT_ALCHEMY[MAX_POTION];




// ***************
// Cooking
// ***************

const int COOKING_Stew					= 1;
const int COOKING_FishSoup				= 2;
const int COOKING_MeatbugRagout			= 3;
const int COOKING_RootSoup				= 4;
const int COOKING_MinecrawlerSoup		= 5;
const int COOKING_FireStrips			= 6;


const int MAX_COOKING 					= 20;
var int PLAYER_TALENT_COOKING[MAX_COOKING];



// ****************
// Alchemy (Booze)
// ****************

const int BOOZE_LouHammer  					= 1;
const int BOOZE_LouHammerDouble  			= 2;
const int BOOZE_FastHerring  				= 3;
const int BOOZE_TurnipBooze  				= 4;
const int BOOZE_VinoBooze  					= 5;
const int BOOZE_WhiteRum  					= 6;
const int BOOZE_MageWine  					= 7;
const int BOOZE_RiceSchnaps  				= 8;


const int MAX_BOOZE							= 12;
var int PLAYER_TALENT_BOOZE[MAX_BOOZE];



// ****************
// Alchemy (Weed)
// ****************

const int TOBACCO_Apple						= 1;
const int TOBACCO_AppleDouble				= 2;
const int TOBACCO_Honey						= 3;
const int TOBACCO_Swampweed					= 4;
const int TOBACCO_Mushroom					= 5;

const int TOBACCO_Weed_Regular				= 6;
const int TOBACCO_Weed_Apple				= 7;
const int TOBACCO_Weed_AppleDouble			= 8;
const int TOBACCO_Weed_Honey				= 9;
const int TOBACCO_Weed_Mushroom				= 10;
const int TOBACCO_Weed_GreenNovice			= 11;
const int TOBACCO_Weed_NorthernDark			= 12;
const int TOBACCO_Weed_Dreamcall			= 13;
const int TOBACCO_Weed_DreamcallStrong		= 14;

const int MAX_TOBACCO						= 15;
var int PLAYER_TALENT_TOBACCO[MAX_TOBACCO];