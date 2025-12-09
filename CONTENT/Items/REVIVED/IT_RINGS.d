const int	REV_Value_Prot_Arrow_01				=	30;
const int	REV_Change_Prot_Arrow_01			=	3;
//******************************************************************//
const int	REV_Value_Prot_Arrow_02				=	50;
const int	REV_Change_Prot_Arrow_02			=	5;
//******************************************************************//
//******************************************************************//
const int	REV_Value_Prot_Melee_01				=	30;
const int	REV_Change_Prot_Melee_01			=	3;
//******************************************************************//
const int	REV_Value_Prot_Melee_02				=	50;
const int	REV_Change_Prot_Melee_02			=	5;
//******************************************************************//
//******************************************************************//
const int	REV_Value_Prot_Weapon_01			=	50;
const int	REV_Change_Prot_Weapon_01			=	5;
//******************************************************************//
const int	REV_Value_Prot_Weapon_02			=	75;
const int	REV_Change_Prot_Weapon_02			=	7;
//******************************************************************//
//******************************************************************//
const int	REV_Value_Prot_Magic_01				=	30;
const int	REV_Change_Prot_Magic_01			=	3;
//******************************************************************//
const int	REV_Value_Prot_Magic_02				=	50;
const int	REV_Change_Prot_Magic_02			=	5;
//******************************************************************//
//******************************************************************//
const int	REV_Value_Prot_Fire_01				=	30;
const int	REV_Change_Prot_Fire_01				=	3;
//******************************************************************//
const int	REV_Value_Prot_Fire_02				=	50;
const int	REV_Change_Prot_Fire_02				=	5;
//******************************************************************//
//******************************************************************//
const int	REV_Value_Prot_MagicFire_01			=	50;
const int	REV_Change_Prot_MagicFire_01		=	5;
//******************************************************************//
const int	REV_Value_Prot_MagicFire_02			=	75;
const int	REV_Change_Prot_MagicFire_02		=	7;
//******************************************************************//
//******************************************************************//
const int	REV_Value_Prot_Total_01				=	100;
const int	REV_Change_Prot_Total_01			=	5;
//******************************************************************//
const int	REV_Value_Prot_Total_02				=	200;
const int	REV_Change_Prot_Total_02			=	10;
//******************************************************************//
//******************************************************************//
//******************************************************************//




//****************************************************************************
//			PROTECTION
//****************************************************************************

INSTANCE ITRI_REVIVED_PROT_ARROW_01(C_Item)
{
	name 				=	"Ring of Wooden Skin";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Prot_Arrow_01;

	on_equip			=	Equip_PROT_ARROW_01;
	on_unequip			=	UnEquip_PROT_ARROW_01;	

	visual 				=	"ITRI_RING_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Point;				COUNT[2]	= REV_Change_Prot_Arrow_01;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_PROT_ARROW_01()
{
	self.protection [PROT_POINT] 		+=  REV_Change_Prot_Arrow_01;
};

FUNC VOID UnEquip_PROT_ARROW_01()
{
	self.protection [PROT_POINT] 		-=  REV_Change_Prot_Arrow_01;
};

INSTANCE ITRI_REVIVED_PROT_ARROW_02(C_Item)
{
	name 				=	"Ring of Stone Skin";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Prot_Arrow_02;

	on_equip			=	Equip_PROT_ARROW_02;
	on_unequip			=	UnEquip_PROT_ARROW_02;	

	visual 				=	"ITRI_RING_02.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Point;				COUNT[2]	= REV_Change_Prot_Arrow_02;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_PROT_ARROW_02()
{
	self.protection [PROT_POINT] 		+=  REV_Change_Prot_Arrow_02;
};

FUNC VOID UnEquip_PROT_ARROW_02()
{
	self.protection [PROT_POINT] 		-=  REV_Change_Prot_Arrow_02;
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_PROT_MELEE_01(C_Item)
{
	name 				=	"Ring of Iron Skin";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Prot_Melee_01;

	on_equip			=	Equip_PROT_MELEE_01;
	on_unequip			=	UnEquip_PROT_MELEE_01;	

	visual 				=	"ITRI_RING_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Edge;					COUNT[2]	= REV_Change_Prot_Melee_01;
	TEXT[3]				= 	NAME_Prot_Blunt;				COUNT[3]	= REV_Change_Prot_Melee_01;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_PROT_MELEE_01()
{
	self.protection [PROT_EDGE] 		+=  REV_Change_Prot_Melee_01;
	self.protection [PROT_BLUNT]		+=  REV_Change_Prot_Melee_01;
};

FUNC VOID UnEquip_PROT_MELEE_01()
{
	self.protection [PROT_EDGE] 		-=  REV_Change_Prot_Melee_01;
	self.protection [PROT_BLUNT]		-=  REV_Change_Prot_Melee_01;
};

INSTANCE ITRI_REVIVED_PROT_MELEE_02(C_Item)
{
	name 				=	"Ring of Ore Skin";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Prot_Melee_02;

	on_equip			=	Equip_PROT_MELEE_02;
	on_unequip			=	UnEquip_PROT_MELEE_02;	

	visual 				=	"ITRI_RING_02.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Edge;					COUNT[2]	= REV_Change_Prot_Melee_02;
	TEXT[3]				= 	NAME_Prot_Blunt;				COUNT[3]	= REV_Change_Prot_Melee_02;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_PROT_MELEE_02()
{
	self.protection [PROT_EDGE] 		+=  REV_Change_Prot_Melee_02;
	self.protection [PROT_BLUNT]		+=  REV_Change_Prot_Melee_02;
};

FUNC VOID UnEquip_PROT_MELEE_02()
{
	self.protection [PROT_EDGE] 		-=  REV_Change_Prot_Melee_02;
	self.protection [PROT_BLUNT]		-=  REV_Change_Prot_Melee_02;
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_PROT_WEAPON_01(C_ITEM)
{
	name 				=	"Ring of Steadfastness";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Prot_Weapon_01;

	on_equip			=	Equip_PROT_WEAPON_01;
	on_unequip			=	UnEquip_PROT_WEAPON_01;	

	visual 				=	"ITRI_RING_01.3DS";

	description			= 	name;
	TEXT[1]				= 	NAME_Prot_Edge;					COUNT[1]	= REV_Change_Prot_Weapon_01;
	TEXT[2]				= 	NAME_Prot_Blunt;				COUNT[2]	= REV_Change_Prot_Weapon_01;
	TEXT[3]				= 	NAME_Prot_Point;				COUNT[3]	= REV_Change_Prot_Weapon_01;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_PROT_WEAPON_01()
{
	self.protection [PROT_EDGE] 		+=  REV_Change_Prot_Weapon_01;
	self.protection [PROT_BLUNT]		+=  REV_Change_Prot_Weapon_01;
	self.protection [PROT_POINT]		+=  REV_Change_Prot_Weapon_01;
};

FUNC VOID UnEquip_PROT_WEAPON_01()
{
	self.protection [PROT_EDGE] 		-=  REV_Change_Prot_Weapon_01;
	self.protection [PROT_BLUNT]		-=  REV_Change_Prot_Weapon_01;
	self.protection [PROT_POINT]		-=  REV_Change_Prot_Weapon_01;
};

INSTANCE ITRI_REVIVED_PROT_WEAPON_02(C_ITEM)
{
	name 				=	"Ring of Impeachability";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Prot_Weapon_02;

	on_equip			=	Equip_PROT_WEAPON_02;
	on_unequip			=	UnEquip_PROT_WEAPON_02;	

	visual 				=	"ITRI_RING_02.3DS";

	description			= 	name;
	TEXT[1]				= 	NAME_Prot_Edge;					COUNT[1]	= REV_Change_Prot_Weapon_02;
	TEXT[2]				= 	NAME_Prot_Blunt;				COUNT[2]	= REV_Change_Prot_Weapon_02;
	TEXT[3]				= 	NAME_Prot_Point;				COUNT[3]	= REV_Change_Prot_Weapon_02;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_PROT_WEAPON_02()
{
	self.protection [PROT_EDGE] 		+=  REV_Change_Prot_Weapon_01;
	self.protection [PROT_BLUNT]		+=  REV_Change_Prot_Weapon_01;
	self.protection [PROT_POINT]		+=  REV_Change_Prot_Weapon_01;
};

FUNC VOID UnEquip_PROT_WEAPON_02()
{
	self.protection [PROT_EDGE] 		-=  REV_Change_Prot_Weapon_02;
	self.protection [PROT_BLUNT]		-=  REV_Change_Prot_Weapon_02;
	self.protection [PROT_POINT]		-=  REV_Change_Prot_Weapon_02;
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_PROT_MAGIC_01(C_ITEM)
{
	name 				=	"Ring of Spiritual Protection";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Prot_Magic_01;

	on_equip			=	Equip_PROT_MAGIC_01;
	on_unequip			=	UnEquip_PROT_MAGIC_01;	

	visual 				=	"ITRI_RING_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Magic;				COUNT[2]	= REV_Change_Prot_Magic_01;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_PROT_MAGIC_01()
{
	self.protection [PROT_MAGIC] 		+=  REV_Change_Prot_Magic_01;
};

FUNC VOID UnEquip_PROT_MAGIC_01()
{
	self.protection [PROT_MAGIC] 		-=  REV_Change_Prot_Magic_01;
};

INSTANCE ITRI_REVIVED_PROT_MAGIC_02(C_ITEM)
{
	name 				=	"Protection of Magic";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Prot_Magic_02;

	on_equip			=	Equip_PROT_MAGIC_02;
	on_unequip			=	UnEquip_PROT_MAGIC_02;	

	visual 				=	"ITRI_RING_02.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Magic;				COUNT[2]	= REV_Change_Prot_Magic_02;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_PROT_MAGIC_02()
{
	self.protection [PROT_MAGIC] 		+=  REV_Change_Prot_Magic_02;
};

FUNC VOID UnEquip_PROT_MAGIC_02()
{
	self.protection [PROT_MAGIC] 		-=  REV_Change_Prot_Magic_02;
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_PROT_FIRE_01(C_Item)
{
	name 				=	"Ring of Flame Protection";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Prot_Fire_01;

	on_equip			=	Equip_PROT_FIRE_01;
	on_unequip			=	UnEquip_PROT_FIRE_01;	

	visual 				=	"ITRI_RING_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Fire;					COUNT[2]	= REV_Change_Prot_Fire_01;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_PROT_FIRE_01()
{
	self.protection [PROT_FIRE] 		+=  REV_Change_Prot_Fire_01;
};

FUNC VOID UnEquip_PROT_FIRE_01()
{
	self.protection [PROT_FIRE] 		-=  REV_Change_Prot_Fire_01;
};

INSTANCE ITRI_REVIVED_PROT_FIRE_02(C_Item)
{
	name 				=	"Protection of Fire";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Prot_Fire_02;

	on_equip			=	Equip_PROT_FIRE_02;
	on_unequip			=	UnEquip_PROT_FIRE_02;	

	visual 				=	"ITRI_RING_02.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Fire;					COUNT[2]	= REV_Change_Prot_Fire_02;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_PROT_FIRE_02()
{
	self.protection [PROT_FIRE] 		+=  REV_Change_Prot_Fire_02;
};

FUNC VOID UnEquip_PROT_FIRE_02()
{
	self.protection [PROT_FIRE] 		-=  REV_Change_Prot_Fire_02;
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_PROT_MAGIC_FIRE_01(C_ITEM)
{
	name 				=	"Ring of Lesser Purification";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Prot_MagicFire_01;

	on_equip			=	Equip_PROT_MAGICFIRE_01;
	on_unequip			=	UnEquip_PROT_MAGICFIRE_01;	

	visual 				=	"ITRI_RING_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Fire;					COUNT[2]	= REV_Change_Prot_MagicFire_01;
	TEXT[3]				= 	NAME_Prot_Magic;				COUNT[3]	= REV_Change_Prot_MagicFire_01;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_PROT_MAGICFIRE_01()
{
	self.protection [PROT_FIRE] 		+=  REV_Change_Prot_MagicFire_01;
	self.protection [PROT_MAGIC] 		+=  REV_Change_Prot_MagicFire_01;
};

FUNC VOID UnEquip_PROT_MAGICFIRE_01()
{
	self.protection [PROT_FIRE] 		-=  REV_Change_Prot_MagicFire_01;
	self.protection [PROT_MAGIC] 		-=  REV_Change_Prot_MagicFire_01;
};

INSTANCE ITRI_REVIVED_PROT_MAGIC_FIRE_02(C_ITEM)
{
	name 				=	"Ring of Purification";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Prot_MagicFire_02;

	on_equip			=	Equip_PROT_MAGICFIRE_02;
	on_unequip			=	UnEquip_PROT_MAGICFIRE_02;	

	visual 				=	"ITRI_RING_02.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Fire;					COUNT[2]	= REV_Change_Prot_MagicFire_02;
	TEXT[3]				= 	NAME_Prot_Magic;				COUNT[3]	= REV_Change_Prot_MagicFire_02;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_PROT_MAGICFIRE_02()
{
	self.protection [PROT_FIRE] 		+=  REV_Change_Prot_MagicFire_02;
	self.protection [PROT_MAGIC] 		+=  REV_Change_Prot_MagicFire_02;
};

FUNC VOID UnEquip_PROT_MAGICFIRE_02()
{
	self.protection [PROT_FIRE] 		-=  REV_Change_Prot_MagicFire_02;
	self.protection [PROT_MAGIC] 		-=  REV_Change_Prot_MagicFire_02;
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_PROT_TOTAL_01(C_ITEM)
{
	name 				=	"Ring of Lesser Invincibility";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Prot_Total_01;

	on_equip			=	Equip_PROT_TOTAL_01;
	on_unequip			=	UnEquip_PROT_TOTAL_01;	

	visual 				=	"ITRI_RING_02.3DS";

	description			= 	name;
	TEXT[0]				= 	NAME_Prot_Edge;					COUNT[0]	= REV_Change_Prot_Total_01;
	TEXT[1]				= 	NAME_Prot_Blunt;				COUNT[1]	= REV_Change_Prot_Total_01;
	TEXT[2]				= 	NAME_Prot_Point;				COUNT[2]	= REV_Change_Prot_Total_01;
	TEXT[3]				= 	NAME_Prot_Fire;					COUNT[3]	= REV_Change_Prot_Total_01;
	TEXT[4]				= 	NAME_Prot_Magic;				COUNT[4]	= REV_Change_Prot_Total_01;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_PROT_TOTAL_01()
{
	self.protection [PROT_EDGE] 		+=   REV_Change_Prot_Total_01;
	self.protection [PROT_BLUNT]		+=   REV_Change_Prot_Total_01;
	self.protection [PROT_POINT]		+=   REV_Change_Prot_Total_01;
 	self.protection [PROT_FIRE]     	+=   REV_Change_Prot_Total_01;
	self.protection [PROT_MAGIC]    	+=   REV_Change_Prot_Total_01;
};

FUNC VOID UnEquip_PROT_TOTAL_01()
{
	self.protection [PROT_EDGE] 		-=   REV_Change_Prot_Total_01;
	self.protection [PROT_BLUNT]		-=   REV_Change_Prot_Total_01;
	self.protection [PROT_POINT]		-=   REV_Change_Prot_Total_01;
 	self.protection [PROT_FIRE]     	-=   REV_Change_Prot_Total_01;
	self.protection [PROT_MAGIC]    	-=   REV_Change_Prot_Total_01;
};

INSTANCE ITRI_REVIVED_PROT_TOTAL_02(C_ITEM)
{
	name 				=	"Ring of Greater Invincibility";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Prot_Total_02;

	on_equip			=	Equip_PROT_TOTAL_02;
	on_unequip			=	UnEquip_PROT_TOTAL_02;	

	visual 				=	"ITRI_RING_03.3DS";

	description			= 	name;
	TEXT[0]				= 	NAME_Prot_Edge;					COUNT[0]	= REV_Change_Prot_Total_02;
	TEXT[1]				= 	NAME_Prot_Blunt;				COUNT[1]	= REV_Change_Prot_Total_02;
	TEXT[2]				= 	NAME_Prot_Point;				COUNT[2]	= REV_Change_Prot_Total_02;
	TEXT[3]				= 	NAME_Prot_Fire;					COUNT[3]	= REV_Change_Prot_Total_02;
	TEXT[4]				= 	NAME_Prot_Magic;				COUNT[4]	= REV_Change_Prot_Total_02;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_PROT_TOTAL_02()
{
	self.protection [PROT_EDGE] 		+=   REV_Change_Prot_Total_02;
	self.protection [PROT_BLUNT]		+=   REV_Change_Prot_Total_02;
	self.protection [PROT_POINT]		+=   REV_Change_Prot_Total_02;
 	self.protection [PROT_FIRE]     	+=   REV_Change_Prot_Total_02;
	self.protection [PROT_MAGIC]    	+=   REV_Change_Prot_Total_02;
};

FUNC VOID UnEquip_PROT_TOTAL_02()
{
	self.protection [PROT_EDGE] 		-=   REV_Change_Prot_Total_02;
	self.protection [PROT_BLUNT]		-=   REV_Change_Prot_Total_02;
	self.protection [PROT_POINT]		-=   REV_Change_Prot_Total_02;
 	self.protection [PROT_FIRE]     	-=   REV_Change_Prot_Total_02;
	self.protection [PROT_MAGIC]    	-=   REV_Change_Prot_Total_02;
};

//****************************************************************************
//			BOOST
//****************************************************************************

INSTANCE ITRI_REVIVED_HP_01(C_Item)
{
	name 					=	"Ring of Life";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	180;

	visual 					=	"ITRI_RING_01.3ds";

	visual_skin 				=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_Ring_des_Lebens;
	on_unequip				=	UnEquip_Ring_des_Lebens;

	description		= name;
	TEXT[2]			= NAME_Bonus_HP;
	COUNT[2]		= 10;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_Ring_des_Lebens()
{
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + 10; 
	self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] + 10;
};

FUNC VOID UnEquip_Ring_des_Lebens()
{
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] - 10;

	if self.attribute [ATR_HITPOINTS] > 11
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] - 10;
	}
	else
	{
		self.attribute[ATR_HITPOINTS] = 2;
	};
};

INSTANCE ITRI_REVIVED_HP_02(C_Item)
{
	name 					=	"Greater Ring of Life";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	360;

	visual 					=	"ITRI_RING_02.3ds";

	visual_skin 				=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_Ring_des_Lebens2;
	on_unequip				=	UnEquip_Ring_des_Lebens2;
	description		= name;
	TEXT[2]			= NAME_Bonus_HP;
	COUNT[2]		= 20;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_Ring_des_Lebens2()
{
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + 20; 
	self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] + 20;
};

FUNC VOID UnEquip_Ring_des_Lebens2()
{
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] - 20; 
		
	if self.attribute [ATR_HITPOINTS]> 21
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] - 20;
	}
	else
	{
		self.attribute[ATR_HITPOINTS] = 2;
	};
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_MP_01(C_Item)
{
	name 					=	"Ring of Magic";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	200;

	visual 					=	"ITRI_RING_02.3ds";

	visual_skin 				=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_Ring_der_Magie;
	on_unequip				=	UnEquip_Ring_der_Magie;

	description		= name;
	TEXT[2]			= NAME_Bonus_Mana;
	COUNT[2]		= 10;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_Ring_der_Magie()
{
	self.attribute[ATR_MANA] = self.attribute[ATR_MANA] + 10;
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + 10;
};

FUNC VOID UnEquip_Ring_der_Magie()
{
	self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - 10;
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] - 10;
};	

INSTANCE ITRI_REVIVED_MP_02(C_Item)
{
	name 					=	"Greater Ring of Magic";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	200;

	visual 					=	"ITRI_RING_02.3ds";

	visual_skin 				=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_Ring_der_Magie2;
	on_unequip				=	UnEquip_Ring_der_Magie2;

	description		= name;
	TEXT[2]			= NAME_Bonus_Mana;
	COUNT[2]		= 10;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_Ring_der_Magie2()
{
	self.attribute[ATR_MANA] = self.attribute[ATR_MANA] + 20;
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + 20;
};

FUNC VOID UnEquip_Ring_der_Magie2()
{
	self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - 20;
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] - 20;
};	

/******************************************************************************************/

INSTANCE ITRI_REVIVED_HP_MP_01(C_Item)
{
	name 					=	"Ring of Enlightenment";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	500;

	visual 					=	"ITRI_RING_03.3ds";

	visual_skin 				=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_Ring_der_Erleuchtung;
	on_unequip				=	UnEquip_Ring_der_Erleuchtung;

	description		= name;
	TEXT[2]			= NAME_Bonus_Mana;
	COUNT[2]		= 15;
	TEXT[3] 		= NAME_Bonus_HP;
	COUNT[3]		= 15;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_Ring_der_Erleuchtung()
{
	self.attribute[ATR_MANA] = self.attribute[ATR_MANA] + 15;
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + 15;
	self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] + 15;
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + 15;		
};

FUNC VOID UnEquip_Ring_der_Erleuchtung()
{
	self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - 15;
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] - 15;
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] - 15;
		
	if (self.attribute [ATR_HITPOINTS] > 16)
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] - 15;
	}
	else
	{
		self.attribute [ATR_HITPOINTS] = 2;
	};
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_DEX_01(C_Item)
{
	name 					=	"Ring of Lesser Dexterity";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	160;

	visual 					=	"ITRI_RING_01.3ds";

	visual_skin 				=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_Ring_des_Geschicks;
	on_unequip				=	UnEquip_Ring_des_Geschicks;

	description		= name;
	TEXT[2]			= NAME_Bonus_Dex;
	COUNT[2]		= 5;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_Ring_des_Geschicks()
{
	Npc_ChangeAttribute(self,ATR_DEXTERITY,5 );
};

FUNC VOID UnEquip_Ring_des_Geschicks()
{
	Npc_ChangeAttribute(self,ATR_DEXTERITY,-5 );
};

INSTANCE ITRI_REVIVED_DEX_02(C_Item)
{
	name 					=	"Ring of Greater Dexterity";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	240;

	visual 					=	"ITRI_RING_02.3ds";

	visual_skin 				=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_Ring_des_Geschicks2;
	on_unequip				=	UnEquip_Ring_des_Geschicks2;

	description		= name;
	TEXT[2]			= NAME_Bonus_Dex;
	COUNT[2]		= 10;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_Ring_des_Geschicks2()
{
	Npc_ChangeAttribute(self,ATR_DEXTERITY,10 );
};

FUNC VOID UnEquip_Ring_des_Geschicks2()
{
	Npc_ChangeAttribute(self,ATR_DEXTERITY,-10 );
};	

/******************************************************************************************/

INSTANCE ITRI_REVIVED_STR_01(C_Item)
{
	name 					=	"Ring of Power";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	160;

	visual 					=	"ITRI_RING_01.3ds";

	visual_skin 				=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_Staerkering;
	on_unequip				=	UnEquip_Staerkering;

	description		= name;
	TEXT[2]			= NAME_Bonus_Str;
	COUNT[2]		= 5;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_Staerkering()
{
	Npc_ChangeAttribute(self,ATR_STRENGTH,5 );
};

FUNC VOID UnEquip_Staerkering()
{
	Npc_ChangeAttribute(self,ATR_STRENGTH,-5 );
};

INSTANCE ITRI_REVIVED_STR_02(C_Item)
{
	name 					=	"Ring of Strength";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	240;

	visual 					=	"ITRI_RING_02.3ds";

	visual_skin 				=	0;
	material 				=	MAT_METAL;

	on_equip				=	Equip_Staerkering2;
	on_unequip				=	UnEquip_Staerkering2;

	description		= name;
	TEXT[2]			= NAME_Bonus_Str;
	COUNT[2]		= 10;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_Staerkering2()
{
	Npc_ChangeAttribute(self,ATR_STRENGTH,10 );
};

FUNC VOID UnEquip_Staerkering2()
{
	Npc_ChangeAttribute(self,ATR_STRENGTH, -10 );
};	

/******************************************************************************************/

INSTANCE ITRI_REVIVED_STR_DEX_01(C_Item)
{
	name 					=	"Warrior's Ring of Power";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	300;

	visual 					=	"ITRI_RING_03.3ds";

	visual_skin 				=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_Machtring;
	on_unequip				=	UnEquip_Machtring;

	description		= name;
	TEXT[2]			= NAME_Bonus_Str;
	COUNT[2]		= 4;
	TEXT[3] 		= NAME_Bonus_Dex;
	COUNT[3]		= 4;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_Machtring()
{
	Npc_ChangeAttribute(self,ATR_STRENGTH, 4);
	Npc_ChangeAttribute(self,ATR_DEXTERITY, 4);
};

FUNC VOID UnEquip_Machtring()
{
	Npc_ChangeAttribute(self,ATR_STRENGTH,- 4);
	Npc_ChangeAttribute(self,ATR_DEXTERITY, -4);
};

//****************************************************************************
//			SPECIAL
//****************************************************************************

