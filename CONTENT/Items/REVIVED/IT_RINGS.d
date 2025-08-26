//****************************************************************************
//			PROTECTION
//****************************************************************************

INSTANCE ITRI_REVIVED_PROT_ARROW_01(C_Item)
{
	name 					=	"Ring of Wooden Skin";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	200;

	visual 					=	"ITRI_RING_01.3ds";

	visual_skin 				=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_Schutzring_Geschosse1;
	on_unequip				=	UnEquip_Schutzring_Geschosse1;

	description		= name;
	TEXT[2]			= NAME_Prot_Point;
	COUNT[2]		= 5;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_Schutzring_Geschosse1()
{
	self.protection [PROT_POINT] 		+=  5;
};

FUNC VOID UnEquip_Schutzring_Geschosse1()
{
	self.protection [PROT_POINT] 		-=  5;
};

INSTANCE ITRI_REVIVED_PROT_ARROW_02(C_Item)
{
	name 					=	"Ring of Stone Skin";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	400;

	visual 					=	"ITRI_RING_01.3ds";

	visual_skin 				=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_Schutzring_Geschosse2;
	on_unequip				=	UnEquip_Schutzring_Geschosse2;

	description		= name;
	TEXT[2]			= NAME_Prot_Point;
	COUNT[2]		= 10;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_Schutzring_Geschosse2()
{
	self.protection [PROT_POINT] 		+=  10;
};

FUNC VOID UnEquip_Schutzring_Geschosse2()
{
	self.protection [PROT_POINT] 		-=  10;
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_PROT_MELEE_01(C_Item)
{
	name 					=	"Ring of Iron Skin";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	200;

	visual 					=	"ITRI_RING_01.3ds";

	visual_skin 				=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_Schutzring_Waffen1;
	on_unequip				=	UnEquip_Schutzring_Waffen1;

	description		= name;
	TEXT[2]			= NAME_Prot_Edge;
	COUNT[2]		= 5;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_Schutzring_Waffen1()
{
	self.protection [PROT_EDGE] 		+=  5;
	self.protection [PROT_BLUNT]		+=  5;
};

FUNC VOID UnEquip_Schutzring_Waffen1()
{
	self.protection [PROT_EDGE] 		-=  5;
	self.protection [PROT_BLUNT]		-=  5;
};

INSTANCE ITRI_REVIVED_PROT_MELEE_02(C_Item)
{
	name 					=	"Ring of Ore Skin";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	400;

	visual 					=	"ITRI_RING_01.3ds";

	visual_skin 				=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_Schutzring_Waffen2;
	on_unequip				=	UnEquip_Schutzring_Waffen2;

	description		= name;
	TEXT[2]			= NAME_Prot_Edge;
	COUNT[2]		= 10;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_Schutzring_Waffen2()
{
	self.protection [PROT_EDGE] 		+=  10;
	self.protection [PROT_BLUNT]		+=  10;
};

FUNC VOID UnEquip_Schutzring_Waffen2()
{
	self.protection [PROT_EDGE] 		-=  10;
	self.protection [PROT_BLUNT]		-=  10;
};		

/******************************************************************************************/

INSTANCE ITRI_REVIVED_PROT_WEAPON_01(C_ITEM)
{
	name 					=	"Ring of Steadfastness";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	600;

	visual 					=	"ITRI_RING_01.3ds";

	visual_skin 				=	0;
	material 				=	MAT_METAL;
	on_equip				=  	Equip_Schutzring_Geschosse1_Waffen1;
	on_unequip				= 	UnEquip_Schutzring_Geschosse1_Waffen1;

	description		= name;
	TEXT[2]			= NAME_Prot_Edge;
	COUNT[2]		= 5;
	TEXT[3] 		= NAME_Prot_Point;
	COUNT[3]		= 5;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_Schutzring_Geschosse1_Waffen1()
{
	self.protection [PROT_EDGE] 		+=  5;
	self.protection [PROT_BLUNT]		+=  5;
	self.protection [PROT_POINT]		+=  5;
};

FUNC VOID UnEquip_Schutzring_Geschosse1_Waffen1()
{
	self.protection [PROT_EDGE] 		-=  5;
	self.protection [PROT_BLUNT]		-=  5;
	self.protection [PROT_POINT]		-=  5;
};

INSTANCE ITRI_REVIVED_PROT_WEAPON_02(C_ITEM)
{
	name 					=	"Ring of Impeachability";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	800;

	visual 					=	"ITRI_RING_02.3ds";

	visual_skin 				=	0;
	material 				=	MAT_METAL;
	on_equip				=  	Equip_Schutzring_Geschosse2_Waffen2;
	on_unequip				= 	UnEquip_Schutzring_Geschosse2_Waffen2;

	description		= name;
	TEXT[2]			= NAME_Prot_Edge;
	COUNT[2]		= 10;
	TEXT[3] 		= NAME_Prot_Point;
	COUNT[3]		= 10;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_Schutzring_Geschosse2_Waffen2()
{
	self.protection [PROT_EDGE] 		+=  10;
	self.protection [PROT_BLUNT]		+=  10;
	self.protection [PROT_POINT]		+=  10;
};

FUNC VOID UnEquip_Schutzring_Geschosse2_Waffen2()
{
	self.protection [PROT_EDGE] 		-=  10;
	self.protection [PROT_BLUNT]		-=  10;
	self.protection [PROT_POINT]		-=  10;
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_PROT_MAGIC_01(C_ITEM)
{
	name 					=	"Ring of Spiritual Power";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	400;

	visual 					=	"ITRI_RING_01.3ds";

	visual_skin 				=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_Schutzring_Magie2;
	on_unequip				=	UnEquip_Schutzring_Magie2;

	description		= name;
	TEXT[2]			= NAME_Prot_Edge;
	COUNT[2]		= 3;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_Schutzring_Magie2()
{
	self.protection [PROT_MAGIC] 		+=  3;
};

FUNC VOID UnEquip_Schutzring_Magie2()
{
	self.protection [PROT_MAGIC] 		-=  3;
};	

/******************************************************************************************/

INSTANCE ITRI_REVIVED_PROT_FIRE_01(C_Item)
{
	name 					=	"Ring of Flame Protection";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	200;

	visual 					=	"ITRI_RING_01.3ds";

	visual_skin 				=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_Schutzring_Feuer1;
	on_unequip				=	UnEquip_Schutzring_Feuer1;

	description		= name;
	TEXT[2]			= NAME_Prot_Fire;
	COUNT[2]		= 3;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_Schutzring_Feuer1()
{
	self.protection [PROT_FIRE] 		+=  3;
};

FUNC VOID UnEquip_Schutzring_Feuer1()
{
	self.protection [PROT_FIRE] 		-=  3;
};

INSTANCE ITRI_REVIVED_PROT_FIRE_02(C_Item)
{
	name 					=	"Protection of Fire";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	400;

	visual 					=	"ITRI_RING_01.3ds";

	visual_skin 				=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_Schutzring_Feuer2;
	on_unequip				=	UnEquip_Schutzring_Feuer2;

	description		= name;
	TEXT[2]			= NAME_Prot_Fire;
	COUNT[2]		= 5;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_Schutzring_Feuer2()
{
	self.protection [PROT_FIRE] 		+=  5;
};

FUNC VOID UnEquip_Schutzring_Feuer2()
{
	self.protection [PROT_FIRE] 		-=  5;
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_PROT_MAGIC_FIRE_01(C_ITEM)
{
	name 					=	"Ring of Lesser Purification";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	600;

	visual 					=	"ITRI_RING_02.3ds";

	visual_skin 				=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_Schutzring_Magie1_Fire1;
	on_unequip				=	UnEquip_Schutzring_Magie1_Fire1;

	description		= name;
	TEXT[2]			= NAME_Prot_Magic;
	COUNT[2]		= 1;
	TEXT[3] 		= NAME_Prot_Fire;
	COUNT[3]		= 3;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_Schutzring_Magie1_Fire1()
{
	self.protection [PROT_MAGIC] 		+=  1;
	self.protection [PROT_FIRE]		+=  3;
};

FUNC VOID UnEquip_Schutzring_Magie1_Fire1()
{
	self.protection [PROT_MAGIC] 		-=  1;
	self.protection [PROT_FIRE]		-=  3;
};

INSTANCE ITRI_REVIVED_PROT_MAGIC_FIRE_02(C_ITEM)
{
	name 					=	"Ring of Purification"; // "Ring of Invincibility";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	800;

	visual 					=	"ITRI_RING_02.3ds";

	visual_skin 				=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_Schutzring_Magie2_Fire2;
	on_unequip				=	UnEquip_Schutzring_Magie2_Fire2;

	description		= name;
	TEXT[2]			= NAME_Prot_Magic;
	COUNT[2]		= 3;
	TEXT[3] 		= NAME_Prot_Fire;
	COUNT[3]		= 5;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_Schutzring_Magie2_Fire2()
{
	self.protection [PROT_MAGIC] 	+=  3;
	self.protection [PROT_FIRE]		+=  5;
};

FUNC VOID UnEquip_Schutzring_Magie2_Fire2()
{
	self.protection [PROT_MAGIC] 	-=  3;
	self.protection [PROT_FIRE]		-=  5;
};	

/******************************************************************************************/

INSTANCE ITRI_REVIVED_PROT_TOTAL_01(C_ITEM)
{
	name 					=	"Ring of Lesser Invincibility";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	800;

	visual 					=	"ITRI_RING_03.3ds";

	visual_skin 				=	0;
	material 				=	MAT_METAL;
	on_equip				=  	Equip_Schutzring_Total1;
	on_unequip				= 	UnEquip_Schutzring_Total1;

	description		= name;
	TEXT[1]			= NAME_Prot_Magic;
	COUNT[1]		= 1;
	TEXT[2]			= NAME_Prot_Fire;
	COUNT[2]		= 3;
	TEXT[3] 		= NAME_Prot_Point;
	COUNT[3]		= 5;
	TEXT[4]			= NAME_Prot_Edge;
	COUNT[4]		= 5;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_Schutzring_Total1()
{
	self.protection [PROT_EDGE] 	+=   5;
	self.protection [PROT_BLUNT]	+=   5;
	self.protection [PROT_POINT]	+=   5;
 	self.protection [PROT_FIRE]     +=   3;
	self.protection [PROT_MAGIC]    +=   1;
};

FUNC VOID UnEquip_Schutzring_Total1()
{
	self.protection [PROT_EDGE] 		-=   5;
	self.protection [PROT_BLUNT]		-=   5;
	self.protection [PROT_POINT]		-=   5;
 	self.protection [PROT_FIRE]      -=   3;
	self.protection [PROT_MAGIC]     -=   1;
};

INSTANCE ITRI_REVIVED_PROT_TOTAL_02(C_ITEM)
{
	name 					=	"Ring of Greater Invincibility";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	1000;

	visual 					=	"ITRI_RING_03.3ds";

	visual_skin 				=	0;
	material 				=	MAT_METAL;
	on_equip				=  	Equip_Schutzring_Total2;
	on_unequip				= 	UnEquip_Schutzring_Total2;

	description		= name;
	TEXT[1]			= NAME_Prot_Magic;
	COUNT[1]		= 3;
	TEXT[2]			= NAME_Prot_Fire;
	COUNT[2]		= 5;
	TEXT[3] 		= NAME_Prot_Point;
	COUNT[3]		= 10;
	TEXT[4]			= NAME_Prot_Edge;
	COUNT[4]		= 10;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_Schutzring_Total2()
{
	self.protection [PROT_EDGE] 	+=   10;
	self.protection [PROT_BLUNT]	+=   10;
	self.protection [PROT_POINT]	+=   10;
 	self.protection [PROT_FIRE]     +=   5;
	self.protection [PROT_MAGIC]    +=   3;
};

FUNC VOID UnEquip_Schutzring_Total2()
{
	self.protection [PROT_EDGE] 	-=   10;
	self.protection [PROT_BLUNT]	-=   10;
	self.protection [PROT_POINT]	-=   10;
 	self.protection [PROT_FIRE]     -=   5;
	self.protection [PROT_MAGIC]    -=   3;
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
	name 					=	"Ring of Greater Life";

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

