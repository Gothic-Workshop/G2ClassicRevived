//****************************************************************************
//			PROTECTION
//****************************************************************************

instance ITAM_REVIVED_PROT_ARROW_01(C_ITEM)
{
	name 			=	"Amulet of Oak Skin";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	600;

	visual 			=	"ItMi_Amulet_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_Schutzamulett_Geschosse;
	on_unequip		=	UnEquip_Schutzamulett_Geschosse;

	description		= name;
	//TEXT[0]			= "";
	TEXT[2]			= NAME_Prot_Point;
	COUNT[2]		= 15;
	//TEXT[3] 		= "";
	////COUNT[3]		= ;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

	FUNC VOID Equip_Schutzamulett_Geschosse()
	{
		self.protection [PROT_POINT] += 15;
	};


	FUNC VOID UnEquip_Schutzamulett_Geschosse()
	{
		self.protection [PROT_POINT] -= 15;
	};


instance ITAM_REVIVED_PROT_MELEE_01(C_Item)
{
	name 			=	"Armor Amulet";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	600;

	visual 			=	"ItMi_Amulet_01.3ds";

	visual_skin 		=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_Schutzamulett_Waffen;
	on_unequip		=	UnEquip_Schutzamulett_Waffen;

	description		= name;
	//TEXT[0]			= "";
	TEXT[2]			= NAME_Prot_Edge;
	COUNT[2]		= 15;
	//TEXT[3] 		= "";
	////COUNT[3]		= ;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

	FUNC VOID Equip_Schutzamulett_Waffen()
	{
		self.protection [PROT_EDGE] += 15;
		self.protection [PROT_BLUNT] += 15;
	};


	FUNC VOID UnEquip_Schutzamulett_Waffen()
	{
		self.protection [PROT_EDGE] -= 15;
		self.protection [PROT_BLUNT] -= 15;
	};


instance ITAM_REVIVED_PROT_MELEE_02(C_Item)
{
	name 			=	"Protective Amulet";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	50;

	visual 			=	"ItMi_Amulet_01.3ds";

	visual_skin 		=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_Schutzamulett_Nek;
	on_unequip		=	UnEquip_Schutzamulett_Nek;

	description		= name;
	//TEXT[0]			= "";
	TEXT[1]			= "It says NEK on the back.";
	TEXT[2]			= NAME_Prot_Edge;
	COUNT[2]		= 15;
	//TEXT[3] 		= "";
	////COUNT[3]		= ;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

	FUNC VOID Equip_Schutzamulett_Nek()
	{
		self.protection [PROT_EDGE] += 5;
		self.protection [PROT_BLUNT] += 5;
	};


	FUNC VOID UnEquip_Schutzamulett_Nek()
	{
		self.protection [PROT_EDGE] -= 5;
		self.protection [PROT_BLUNT] -= 5;
	};


instance ITAM_REVIVED_PROT_WEAPON_01(C_ITEM)
{
	name 			=	"Amulet of Stone Skin";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	1000;

	visual 			=	"ItMi_Amulet_02.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_Schutzamulett_Waffen_Geschosse;
	on_unequip		=	UnEquip_Schutzamulett_Waffen_Geschosse;

	description		= name;
	//TEXT[0]			= "";
	TEXT[2]			= NAME_Prot_Edge;
	COUNT[2]		= 15;
	TEXT[3] 		= NAME_Prot_Point;
	COUNT[3]		= 15;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

	FUNC VOID Equip_Schutzamulett_Waffen_Geschosse()
	{
		self.protection [PROT_EDGE]   += 15;
		self.protection [PROT_BLUNT]  += 15;
		self.protection [PROT_POINT]  += 15;
	};

	FUNC VOID UnEquip_Schutzamulett_Waffen_Geschosse()
	{
		self.protection [PROT_EDGE]   -= 15;
		self.protection [PROT_BLUNT]  -= 15;
		self.protection [PROT_POINT]  -= 15;
	};

/******************************************************************************************/

instance ITAM_REVIVED_PROT_MAGIC_01(C_ITEM)
{
	name 			=	"Amulet of Spiritual Power";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	600;

	visual 			=	"ItMi_Amulet_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_Schutzamulett_Magie;
	on_unequip		=	UnEquip_Schutzamulett_Magie;

	description		= name;
	//TEXT[0]			= "";
	TEXT[2]			= NAME_Prot_Magic;
	COUNT[2]		= 8;
	//TEXT[3] 		= "";
	////COUNT[3]		= ;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

	FUNC VOID Equip_Schutzamulett_Magie()
	{
		self.protection [PROT_MAGIC] += 8;
	};

	FUNC VOID UnEquip_Schutzamulett_Magie()
	{
		self.protection [PROT_MAGIC] -= 8;
	};

/******************************************************************************************/

instance ITAM_REVIVED_PROT_FIRE_01(C_Item)
{
	name 			=	"Amulet of Flames";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	600;

	visual 			=	"ItMi_Amulet_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_Schutzamulett_Feuer;
	on_unequip		=	UnEquip_Schutzamulett_Feuer;

	description		= name;
	//TEXT[0]			= "";
	TEXT[2]			= NAME_Prot_Fire;
	COUNT[2]		= 10;
	//TEXT[3] 		= "";
	////COUNT[3]		= ;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

	FUNC VOID Equip_Schutzamulett_Feuer()
	{
	 	self.protection [PROT_FIRE] += 10;
	};


	FUNC VOID UnEquip_Schutzamulett_Feuer()
	{
		self.protection [PROT_FIRE] -= 10;
	};


instance ITAM_REVIVED_PROT_FIRE_02(C_Item)
{
	name 			= "Orc Talisman";

	mainflag 		= ITEM_KAT_MAGIC;
	flags 			= ITEM_AMULET|ITEM_MISSION;

	value 			= 1000;

	visual 			= "ItMi_Amulet_UluMulu_01.3ds";

	visual_skin 	= 0;
	material 		= MAT_METAL;

	on_equip		= Equip_OrcTalisman;
	on_unequip		= UnEquip_OrcTalisman;

	description		= name;
	TEXT[2]			= NAME_Prot_Fire;
	COUNT[2]		= 20;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
};

FUNC VOID Equip_OrcTalisman()
{
 	self.protection [PROT_FIRE] += 20;
};


FUNC VOID UnEquip_OrcTalisman()
{
	self.protection [PROT_FIRE] -= 20;
};

/******************************************************************************************/

instance ITAM_REVIVED_PROT_MAGIC_FIRE(C_ITEM)
{
	name 			=	"Amulet of Purification";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=    1000;

	visual 			=	"ItMi_Amulet_02.3ds";

	visual_skin 		=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_Schutzamulett_Magie_Feuer;
	on_unequip		=	UnEquip_Schutzamulett_Magie_Feuer;

	description		= name;
	//TEXT[0]			= "";
	TEXT[2]			= NAME_Prot_Fire;
	COUNT[2]		= 10;
	TEXT[3] 		= NAME_Prot_Magic;
	COUNT[3]		= 8;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

	FUNC VOID Equip_Schutzamulett_Magie_Feuer()
	{
		self.protection [PROT_MAGIC] += 8;
		self.protection [PROT_FIRE]  += 10;
	};


	FUNC VOID UnEquip_Schutzamulett_Magie_Feuer()
	{
	self.protection [PROT_MAGIC] -= 8;
	self.protection [PROT_FIRE]  -= 10;

	};

/******************************************************************************************/

instance ITAM_REVIVED_PROT_TOTAL_01(C_ITEM)
{
	name 			=	"Amulet of Ore Skin";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	1600;

	visual 			=	"ItMi_Amulet_03.3ds";

	visual_skin 		=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_Schutzamulett_Total;
	on_unequip		=	UnEquip_Schutzamulett_Total;

	description		= name;
	//TEXT[0]			= "";
	TEXT[1]			= NAME_Prot_Fire;
	COUNT[1]		= 10;
	TEXT[2]			= NAME_Prot_Magic;
	COUNT[2]		= 8;
	TEXT[3] 		= NAME_Prot_Point;
	COUNT[3]		= 15;
	TEXT[4]			= NAME_Prot_Edge;
	COUNT[4]		= 15;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

	FUNC VOID Equip_Schutzamulett_Total()
	{
		self.protection [PROT_EDGE]   += 15;
		self.protection [PROT_BLUNT]  += 15;
		self.protection [PROT_POINT]  += 15;
		self.protection [PROT_FIRE]   += 10;
		self.protection [PROT_MAGIC]  +=  8;

	};

	FUNC VOID UnEquip_Schutzamulett_Total()
	{
		self.protection [PROT_EDGE]   -= 15;
		self.protection [PROT_BLUNT]  -= 15;
		self.protection [PROT_POINT]  -= 15;
		self.protection [PROT_FIRE]   -= 10;
		self.protection [PROT_MAGIC]  -=  8;
	};

//****************************************************************************
//			BOOST
//****************************************************************************

instance ITAM_REVIVED_HP_01(C_Item)
{
	name 			=	"Amulet of Life Force";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	720;

	visual 			=	"ItMi_Amulet_02.3ds";

	visual_skin 		=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_Lebensamulett;
	on_unequip		=	UnEquip_Lebensamulett;

	description		= name;
	//TEXT[0]			= "";
	//TEXT[1]			= "";
	////COUNT[1]		= ;
	TEXT[2]			= NAME_Bonus_HP;
	COUNT[2]		= 30;
	//TEXT[3] 		= "";
	////COUNT[3]		= ;
	//TEXT[4]			= "";
	////COUNT[4]		= ;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

	FUNC VOID Equip_Lebensamulett()
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] + 30;
		self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + 30;
		
	};


	FUNC VOID UnEquip_Lebensamulett()
	{
		self.attribute [ATR_HITPOINTS_MAX] = self.attribute [ATR_HITPOINTS_MAX] -30;
		if (self.attribute[ATR_HITPOINTS] > 31)
		{
		self.attribute [ATR_HITPOINTS] = self.attribute [ATR_HITPOINTS] -30;
		}
		else
		{
			self.attribute [ATR_HITPOINTS] = 2;
		};
	};

/******************************************************************************************/

instance ITAM_REVIVED_MP_01(C_Item)
{
	name 			=	"Amulet of Magic";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	400;

	visual 			=	"ItMi_Amulet_02.3ds";

	visual_skin 		=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_Amulett_der_Magie;
	on_unequip		=	UnEquip_Amulett_der_Magie;

	description		= name;
	//TEXT[0]			= "";
	//TEXT[1]			= "";
	////COUNT[1]		= ;
	TEXT[2]			= NAME_Bonus_Mana;
	COUNT[2]		= 10;
	//TEXT[3] 		= "";
	////COUNT[3]		= ;
	//TEXT[4]			= "";
	////COUNT[4]		= ;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

	FUNC VOID Equip_Amulett_der_Magie()
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] + 10;
		self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + 10;
	};

	FUNC VOID UnEquip_Amulett_der_Magie ()
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - 10;
		self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] - 10;
	};

/******************************************************************************************/

instance ITAM_REVIVED_HP_MP_01(C_Item)
{
	name 			=	"Amulet of Enlightenment";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	1000;

	visual 			=	"ItMi_Amulet_03.3ds";

	visual_skin 		=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_Amulett_der_Erleuchtung;
	on_unequip		=	UnEquip_Amulett_der_Erleuchtung;

	description		= name;
	//TEXT[0]			= "";
	//TEXT[1]			= "";
	////COUNT[1]		= ;
	TEXT[2]			= NAME_Bonus_HP;
	COUNT[2]		= 25;
	TEXT[3] 		= NAME_Bonus_Mana;
	COUNT[3]		= 25;
	//TEXT[4]			= "";
	////COUNT[4]		= ;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

	FUNC VOID Equip_Amulett_der_Erleuchtung()
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] + 25;
		self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + 25;
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] + 25;
		self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + 25;
		
	};


	FUNC VOID UnEquip_Amulett_der_Erleuchtung ()
	{
		
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - 25;
		self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] - 25;
		self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] - 25;
		
		if (self.attribute[ATR_HITPOINTS] > 26)
		{
			self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] - 25;
		}
		else
		{
			self.attribute [ATR_HITPOINTS] = 2;
		};
	};

/******************************************************************************************/

instance ITAM_REVIVED_DEX_01(C_Item)
{
	name 			=	"Amulet of Agility";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	320;

	visual 			=	"ItMi_Amulet_01.3ds";

	visual_skin 		=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_Gewandtheitsamulett;
	on_unequip		=	UnEquip_Gewandtheitsamulett;

	description		= name;
	//TEXT[0]			= "";
	//TEXT[1]			= "";
	////COUNT[1]		= ;
	TEXT[2]			= NAME_Bonus_Dex;
	COUNT[2]		= 10;
	//TEXT[3] 		= "";
	////COUNT[3]		= ;
	//TEXT[4]			= "";
	////COUNT[4]		= ;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

	FUNC VOID Equip_Gewandtheitsamulett()
	{
		Npc_ChangeAttribute(self,ATR_DEXTERITY,10);
	};


	FUNC VOID UnEquip_Gewandtheitsamulett()
	{
		Npc_ChangeAttribute(self,ATR_DEXTERITY,-10);
	};


instance ITAM_REVIVED_DEX_02(C_Item)
{
	name 			=	"Amulet of Dexterity";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	480;

	visual 			=	"ItMi_Amulet_02.3ds";

	visual_skin 		=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_Gewandtheitsamulett2;
	on_unequip		=	UnEquip_Gewandtheitsamulett2;

	description		= name;
	//TEXT[0]			= "";
	//TEXT[1]			= "";
	////COUNT[1]		= ;
	TEXT[2]			= NAME_Bonus_Dex;
	COUNT[2]		= 20;
	//TEXT[3] 		= "";
	////COUNT[3]		= ;
	//TEXT[4]			= "";
	////COUNT[4]		= ;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

	FUNC VOID Equip_Gewandtheitsamulett2()
	{
		Npc_ChangeAttribute(self,ATR_DEXTERITY,20);
	};

	FUNC VOID UnEquip_Gewandtheitsamulett2()
	{
		Npc_ChangeAttribute(self,ATR_DEXTERITY,-20);
	};

/******************************************************************************************/

instance ITAM_REVIVED_STR_01(C_Item)
{
	name 			=	"Amulet of Power";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	320;

	visual 			=	"ItMi_Amulet_01.3ds";

	visual_skin 		=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_Staerkeamulett;
	on_unequip		=	UnEquip_Staerkeamulett;

	description		= name;
	//TEXT[0]			= "";
	//TEXT[1]			= "";
	////COUNT[1]		= ;
	TEXT[2]			= NAME_Bonus_Str;
	COUNT[2]		= 10;
	//TEXT[3] 		= "";
	////COUNT[3]		= ;
	//TEXT[4]			= "";
	////COUNT[4]		= ;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

	FUNC VOID Equip_Staerkeamulett()
	{
		Npc_ChangeAttribute(self,ATR_STRENGTH,10);
	};

	FUNC VOID UnEquip_Staerkeamulett()
	{
		Npc_ChangeAttribute(self,ATR_STRENGTH,-10);
	};


instance ITAM_REVIVED_STR_02(C_Item)
{
	name 			=	"Amulet of Strength";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	480;

	visual 			=	"ItMi_Amulet_02.3ds";

	visual_skin 		=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_Staerkeamulett2;
	on_unequip		=	UnEquip_Staerkeamulett2;

	description		= name;
	//TEXT[0]			= "";
	//TEXT[1]			= "";
	////COUNT[1]		= ;
	TEXT[2]			= NAME_Bonus_Str;
	COUNT[2]		= 20;
	//TEXT[3] 		= "";
	////COUNT[3]		= ;
	//TEXT[4]			= "";
	////COUNT[4]		= ;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
};

	FUNC VOID Equip_Staerkeamulett2()
	{
		Npc_ChangeAttribute(self,ATR_STRENGTH,20);
	};


	FUNC VOID UnEquip_Staerkeamulett2()
	{
		Npc_ChangeAttribute(self,ATR_STRENGTH,-20);
	};

/******************************************************************************************/

instance ITAM_REVIVED_STR_DEX_01(C_Item)
{
	name 			=	"Amulet of Might";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	600;

	visual 			=	"ItMi_Amulet_03.3ds";

	visual_skin 		=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_Amulett_der_Macht;
	on_unequip		=	UnEquip_Amulett_der_Macht;

	description		= name;
	//TEXT[0]			= "";
	//TEXT[1]			= "";
	////COUNT[1]		= ;
	TEXT[2]			= NAME_Bonus_Dex;
	COUNT[2]		= 7;
	TEXT[3] 		= NAME_Bonus_Str;
	COUNT[3]		= 7;
	//TEXT[4]			= "";
	////COUNT[4]		= ;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
};

	FUNC VOID Equip_Amulett_der_Macht()
	{
		Npc_ChangeAttribute(self,ATR_DEXTERITY,7 );
		Npc_ChangeAttribute(self,ATR_STRENGTH,7 );
	};


	FUNC VOID UnEquip_Amulett_der_Macht ()
	{
		Npc_ChangeAttribute(self,ATR_DEXTERITY,-7 );
		Npc_ChangeAttribute(self,ATR_STRENGTH,-7 );
	};

//****************************************************************************
//			SPECIAL
//****************************************************************************

instance ITAM_REVIVED_PSI(C_Item)
{
	name 			=	"Sign of the Brotherhood";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	5;

	visual 			=	"ItMi_Amulet_Psi_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;

	description		= name;
	//TEXT[0]			= "";
	//TEXT[2]			= "";
	////COUNT[2]		= ;
	//TEXT[3] 		= "";
	////COUNT[3]		= ;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

};

/******************************************************************************************/

instance ITAM_REVIVED_KDW(C_Item)
{
	name 			=	"Messenger's amulet of the Magicians of Water";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	5;

	visual 			=	"ItMi_Amulet_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;

	description		= name;
	//TEXT[0]			= "";
	//TEXT[2]			= "";
	////COUNT[2]		= ;
	//TEXT[3] 		= "";
	////COUNT[3]		= ;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

};

/******************************************************************************************/
/* 
	Schwarz wie die Seele
	Schwarz wie die Nacht
	Schwarz wie das Böse
	Schwarz verheisst Macht
*/
instance ITAM_REVIVED_DEMON(C_Item)
{
	name 			=	"Amulet of Summoning";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	300;

	visual 			=	"ItMi_Amulet_UluMulu_01.3ds";

	visual_skin 		=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_Beschworungsamulett;
	on_unequip		=	UnEquip_Beschworungsamulett;
	description		= name;
	TEXT[1]			= "Black haunts the Soul";
	TEXT[2]			= "Black shrouds the Night";
	TEXT[3]			= "Black corrupts the Heart";
	TEXT[4] 		= "Black bestows Power";
	/* TEXT[5]			= NAME_Value;
	COUNT[5]		= value; */
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
};

	FUNC VOID Equip_Beschworungsamulett()
	{
		if (Npc_IsPlayer(self)) 
		{		
			var C_NPC DetWsp;
			DetWsp = Hlp_GetNpc (Summoned_Demon);
			AI_Teleport (DetWsp, "TOT");
			Wld_SpawnNpcRange (self, Summoned_Demon, 1, 1000);
			//Wld_PlayEffect("spellFX_Fear", Summoned_Demon, Summoned_Demon, 0, 0, 0, FALSE );
			Snd_Play ("MFX_FEAR_CAST" );
			Wld_PlayEffect("spellFX_SummonCreature_ORIGIN", hero, hero, 0, 0, 0, FALSE );
		};
	};


	FUNC VOID UnEquip_Beschworungsamulett ()
	{
		if (Npc_IsPlayer(self)) 
		{		
			var C_NPC DetWsp;
			DetWsp = Hlp_GetNpc (Summoned_Demon);

			if (Npc_IsDead(DetWsp) == FALSE)
			{
				Npc_ChangeAttribute (DetWsp, ATR_HITPOINTS, -DetWsp.attribute[ATR_HITPOINTS_MAX]);
			};
			
				Snd_Play ("zombie_01");
				Wld_PlayEffect("spellFX_Fear", hero, hero, 0, 0, 0, FALSE );

			AI_Teleport (DetWsp, "TOT");
			B_RemoveNpc (DetWsp);
			AI_Teleport (DetWsp, "TOT");
		};
	};

/******************************************************************************************/