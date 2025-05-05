const int ARMOR_VALUE_MULTIPLIER	= 30;	// wird mit Schutzwert gegen EDGE-Schaden multipliziert

const int VALUE_SFB_ARMOR_L = 100;
const int VALUE_VLK_ARMOR_L = 100;
const int VALUE_VLK_ARMOR_M = 150;

const int VALUE_STT_ARMOR_M = 500;
const int VALUE_STT_ARMOR_H = 800;

const int VALUE_GRD_ARMOR_L = 1350;
const int VALUE_GRD_ARMOR_M = 1650;
const int VALUE_GRD_ARMOR_H = 2100;
const int VALUE_GRD_ARMOR_S = 2100;

const int VALUE_EBR_ARMOR_L =  750;
const int VALUE_EBR_ARMOR_M =  750;
const int VALUE_EBR_ARMOR_H = 1200;

const int VALUE_ORG_ARMOR_L =  750;
const int VALUE_ORG_ARMOR_M = 1050;
const int VALUE_ORG_ARMOR_H = 1200;

const int VALUE_SLD_ARMOR_L = 1350;
const int VALUE_SLD_ARMOR_M = 1650;
const int VALUE_SLD_ARMOR_H = 2100;

const int VALUE_KDF_ARMOR_L = 1200;
const int VALUE_KDF_ARMOR_M = 1500;
const int VALUE_KDF_ARMOR_H = 1500;
const int VALUE_KDF_ARMOR_S = 1500;

const int VALUE_KDW_ARMOR_L = 1950;
const int VALUE_KDW_ARMOR_M = 2100;
const int VALUE_KDW_ARMOR_H = 2100;
const int VALUE_KDW_ARMOR_S = 2100;

const int VALUE_DMT_ARMOR_L = 1200;
const int VALUE_DMT_ARMOR_M = 1500;
const int VALUE_DMT_ARMOR_H = 1500;
const int VALUE_DMT_ARMOR_S = 1500;

const int VALUE_PAL_ARMOR_L = 1200;
const int VALUE_PAL_ARMOR_M = 1500;
const int VALUE_PAL_ARMOR_H = 1500;
const int VALUE_PAL_ARMOR_S = 1500;

const int VALUE_BDT_ARMOR_L = 250;
const int VALUE_BDT_ARMOR_M = 550;
const int VALUE_BDT_ARMOR_H = 1000;

const int VALUE_NOV_ARMOR_M = 750;

const int VALUE_TPL_ARMOR_H = 2100;

//****************************************************************************
//			OLD CAMP
//****************************************************************************

instance ITAR_REVIVED_VLK_L(C_Item)
{
	name 					=	"Light Digger's Trousers";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	10;
	protection [PROT_BLUNT] = 	10;
	protection [PROT_POINT] = 	0;
	protection [PROT_FIRE] 	= 	5;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_VLK_ARMOR_L;

	wear 					=	WEAR_TORSO;
 
	visual 					=	"REV_VLKL.3ds";
	visual_change 			=	"REV_ARMOR_VLK_L.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

instance ITAR_REVIVED_VLK_M(C_Item)
{
	name 					=	"Digger's Trousers";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	15;
	protection [PROT_BLUNT] = 	15;
	protection [PROT_POINT] =   0;
	protection [PROT_FIRE] 	= 	5;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_VLK_ARMOR_M;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_VLKM.3ds";
	visual_change 			=	"REV_ARMOR_VLK_M.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

/******************************************************************************************/

instance ITAR_REVIVED_STT_M(C_Item)
{
	name 					=	"Shadow's Dress";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	30;
	protection [PROT_BLUNT] = 	30;
	protection [PROT_POINT] = 	5;
	protection [PROT_FIRE] 	= 	15;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_STT_ARMOR_M;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_STTM.3ds";
	visual_change 			=	"REV_ARMOR_STT_M.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

instance ITAR_REVIVED_STT_H(C_Item)
{
	name 					=	"Shadow's Armor";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	40;
	protection [PROT_BLUNT] = 	40;
	protection [PROT_POINT] = 	5;
	protection [PROT_FIRE] 	= 	20;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_STT_ARMOR_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_STTH.3ds";
	visual_change 			=	"REV_ARMOR_STT_H.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

/******************************************************************************************/

instance ITAR_REVIVED_GRD_L(C_Item)
{
	name 					=	"Light Guard's Armor";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	40;
	protection [PROT_BLUNT] = 	40;
	protection [PROT_POINT] = 	40;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_GRD_ARMOR_L;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_GRDL.3ds";
	visual_change 			=	"REV_ARMOR_GRD_L.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	
	on_equip				=	Equip_GRD_ARMOR;
	on_unequip				=	UnEquip_GRD_ARMOR;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

instance ITAR_REVIVED_GRD_M(C_Item)
{
	name 					=	"Guard's Armor";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	70;
	protection [PROT_BLUNT] = 	70;
	protection [PROT_POINT] = 	70;
	protection [PROT_FIRE] 	= 	10;
	protection [PROT_MAGIC] = 	10;

	value 					=	VALUE_GRD_ARMOR_M;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_GRDM.3ds";
	visual_change 			=	"REV_ARMOR_GRD_M.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	
	on_equip				=	Equip_GRD_ARMOR;
	on_unequip				=	UnEquip_GRD_ARMOR;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

instance ITAR_REVIVED_GRD_H(C_Item)
{
	name 					=	"Heavy Guard's Armor";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE] 	=	80;
	protection [PROT_BLUNT] = 	80;
	protection [PROT_POINT] = 	80;
	protection [PROT_FIRE] 	= 	35;
	protection [PROT_MAGIC] = 	35;

	value 					=	VALUE_GRD_ARMOR_H;

	wear 					=	WEAR_TORSO;
 
	visual 					=	"REV_GRDH.3ds";
	visual_change 			=	"REV_ARMOR_GRD_H.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;
	
	on_equip				=	Equip_GRD_ARMOR;
	on_unequip				=	UnEquip_GRD_ARMOR;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

instance ITAR_REVIVED_GRD_S(C_Item)
{
	name 					=	"Guardsman Armor";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	70;
	protection [PROT_BLUNT] = 	70;
	protection [PROT_POINT] = 	70;
	protection [PROT_FIRE] 	= 	10;
	protection [PROT_MAGIC] = 	10;

	value 					=	VALUE_GRD_ARMOR_S;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_GRDS.3ds";
	visual_change 			=	"REV_ARMOR_GRD_S.asc";
	visual_skin 			=	0;
	material 				=	MAT_WOOD;
	
	on_equip				=	Equip_GRD_ARMOR;
	on_unequip				=	UnEquip_GRD_ARMOR;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};


/******************************************************************************************/
FUNC VOID Equip_GRD_ARMOR()
{
	if Npc_IsPlayer (self)
	{
		MILArmor_Equipped = TRUE;
		
		if (MIL01_Equipped == TRUE)//Gürtel
		{
			self.protection[PROT_EDGE] 	+= BA_Bonus01;
			self.protection[PROT_BLUNT] += BA_Bonus01;
			self.protection[PROT_POINT] += BA_Bonus01;
			self.protection[PROT_MAGIC] += BA_Bonus01;
			self.protection[PROT_FIRE] 	+= BA_Bonus01;
		};
	};
};
FUNC VOID UnEquip_GRD_ARMOR()
{
	if Npc_IsPlayer (self)
	{
		MILArmor_Equipped = FALSE;
		
		if (MIL01_Equipped == TRUE)
		{
			self.protection[PROT_EDGE] 	-= BA_Bonus01;
			self.protection[PROT_BLUNT] -= BA_Bonus01;
			self.protection[PROT_POINT] -= BA_Bonus01;
			self.protection[PROT_MAGIC] -= BA_Bonus01;
			self.protection[PROT_FIRE] 	-= BA_Bonus01;
		};
	};
};

/******************************************************************************************/

instance ITAR_REVIVED_EBR_L(C_Item)
{
	name 					=	"Robe of State";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	70;
	protection [PROT_BLUNT] = 	70;
	protection [PROT_POINT] = 	5;
	protection [PROT_FIRE] 	= 	35;
	protection [PROT_MAGIC] = 	5;

	value 					=	VALUE_EBR_ARMOR_L;

	wear 					=	WEAR_TORSO;
    //ownerGuild 				= 	GIL_EBR;


	visual 					=	"REV_EBRM.3ds";
	visual_change 			=	"REV_ARMOR_EBR_M.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

instance ITAR_REVIVED_EBR_M(C_Item)
{
	name 					=	"Ore Baron's Armor";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	80;
	protection [PROT_BLUNT] = 	80;
	protection [PROT_POINT] = 	30;
	protection [PROT_FIRE] 	= 	40;
	protection [PROT_MAGIC] = 	20;

	value 					=	protection [PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	wear 					=	WEAR_TORSO;
    //ownerGuild 				= 	GIL_EBR;

	visual 					=	"REV_EBRH.3ds";
	visual_change 			=	"REV_ARMOR_EBR_H.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

instance ITAR_REVIVED_EBR_H(C_Item)
{
	name 					=	"Gomez' Armor";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	100;
	protection [PROT_BLUNT] = 	100;
	protection [PROT_POINT] = 	50;
	protection [PROT_FIRE] 	= 	60;
	protection [PROT_MAGIC] = 	40;

	value 					=	protection [PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	wear 					=	WEAR_TORSO;
  	//ownerGuild 				= 	GIL_EBR;

	//owner					=   EBR_100_GOMEZ;
	visual 					=	"REV_EBRS.3ds";
	visual_change 			=	"REV_ARMOR_EBR_S.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

//****************************************************************************
//			NEW CAMP
//****************************************************************************

instance ITAR_REVIVED_SFB_L(C_Item)
{
	name 					=	"Digger's Dress";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	10;
	protection [PROT_BLUNT] = 	10;
	protection [PROT_POINT] = 	0;
	protection [PROT_FIRE] 	= 	5;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_SFB_ARMOR_L;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_SFBL.3ds";
	visual_change 			=	"REV_ARMOR_SFB_L.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

/******************************************************************************************/

instance ITAR_REVIVED_ORG_L(C_Item)
{
	name 					=	"Light Rogue's Dress";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	30;
	protection [PROT_BLUNT] = 	30;
	protection [PROT_POINT] = 	5;
	protection [PROT_FIRE] 	= 	15;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_ORG_ARMOR_L;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_ORGL.3ds";
	visual_change 			=	"REV_ARMOR_ORG_L.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

instance ITAR_REVIVED_ORG_M(C_Item)
{
	name 					=	"Rogue's Dress";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	35;
	protection [PROT_BLUNT] = 	35;
	protection [PROT_POINT] = 	5;
	protection [PROT_FIRE] 	= 	15;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_ORG_ARMOR_M;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_ORGM.3ds";
	visual_change 			=	"REV_ARMOR_ORG_M.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

instance ITAR_REVIVED_ORG_H(C_Item)
{
	name 					=	"Heavy Rogue's Dress";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	40;
	protection [PROT_BLUNT] = 	40;
	protection [PROT_POINT] = 	5;
	protection [PROT_FIRE] 	= 	20;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_ORG_ARMOR_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_ORGH.3ds";
	visual_change 			=	"REV_ARMOR_ORG_H.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

/******************************************************************************************/

instance ITAR_REVIVED_SLD_L(C_Item)
{
	name 					=	"Light Mercenary's Armor";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	30;
	protection [PROT_BLUNT] = 	30;
	protection [PROT_POINT] = 	30;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_SLD_ARMOR_L;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_SLDL.3ds";
	visual_change 			=	"REV_ARMOR_SLD_L.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;
	
	on_equip				=	Equip_SLD_ARMOR;
	on_unequip				=	UnEquip_SLD_ARMOR;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

instance ITAR_REVIVED_SLD_M(C_Item)
{
	name 					=	"Mercenary's Armor";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	50;
	protection [PROT_BLUNT] = 	50;
	protection [PROT_POINT] = 	50;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	5;

	value 					=	VALUE_SLD_ARMOR_M;

	wear 					=	WEAR_TORSO;
 
	visual 					=	"REV_SLDM.3ds";
	visual_change 			=	"REV_ARMOR_SLD_M.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;
	
	on_equip				=	Equip_SLD_ARMOR;
	on_unequip				=	UnEquip_SLD_ARMOR;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

instance ITAR_REVIVED_SLD_H(C_Item)
{
	name 					=	"Heavy Mercenary's Armor";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	80;
	protection [PROT_BLUNT] = 	80;
	protection [PROT_POINT] = 	80;
	protection [PROT_FIRE] 	= 	5;
	protection [PROT_MAGIC] = 	10;

	value 					=	VALUE_SLD_ARMOR_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_SLDH.3ds";
	visual_change 			=	"REV_ARMOR_SLD_H.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;
	
	on_equip				=	Equip_SLD_ARMOR;
	on_unequip				=	UnEquip_SLD_ARMOR;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

//****************************************************************************
FUNC VOID Equip_SLD_ARMOR()
{
	if Npc_IsPlayer (self)
	{
		SLDArmor_Equipped = TRUE;
		
		if (SLD01_Equipped == TRUE)
		{
			self.protection[PROT_EDGE] 	+= BA_Bonus01;
			self.protection[PROT_BLUNT] += BA_Bonus01;
			self.protection[PROT_POINT] += BA_Bonus01;
			self.protection[PROT_MAGIC] += BA_Bonus01;
			self.protection[PROT_FIRE] 	+= BA_Bonus01;
		};
	};			
};
FUNC VOID UnEquip_SLD_ARMOR()
{
	if Npc_IsPlayer (self)
	{
		SLDArmor_Equipped = FALSE;
		
		if (SLD01_Equipped == TRUE)
		{
			self.protection[PROT_EDGE] 	-= BA_Bonus01;
			self.protection[PROT_BLUNT] -= BA_Bonus01;
			self.protection[PROT_POINT] -= BA_Bonus01;
			self.protection[PROT_MAGIC] -= BA_Bonus01;
			self.protection[PROT_FIRE] 	-= BA_Bonus01;
		};
	};			
};

//****************************************************************************
//			PSI CAMP
//****************************************************************************

instance ITAR_REVIVED_NOV_M(C_Item)
{
	name 					=	"Novice's Armor";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	30;
	protection [PROT_BLUNT] = 	30;
	protection [PROT_POINT] = 	0;
	protection [PROT_FIRE] 	= 	15;
	protection [PROT_MAGIC] = 	0;
	wear 					=	WEAR_TORSO;

	value 					=	VALUE_NOV_ARMOR_M;

 
	visual 					=	"REV_NOVM.3ds";
	visual_change 			=	"REV_ARMOR_NOV_M.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

instance ITAR_REVIVED_TPL_H(C_Item)
{
	name 					=	"Heavy Templar's Armor";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	70;
	protection [PROT_BLUNT] = 	70;
	protection [PROT_POINT] = 	60;
	protection [PROT_FIRE] 	= 	50;
	protection [PROT_MAGIC] = 	25;

	value 					=	VALUE_TPL_ARMOR_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_TPLS.3ds";
	visual_change 			=	"REV_ARMOR_TPL_S.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

//****************************************************************************
//			MAGES
//****************************************************************************

instance ITAR_REVIVED_KDF_L(C_Item)
{
	name 					=	"Fire Mage's Robe";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	40;
	protection [PROT_BLUNT] = 	40;
	protection [PROT_POINT] = 	40;
	protection [PROT_FIRE] 	= 	20;
	protection [PROT_MAGIC] = 	20;
	wear 					=	WEAR_TORSO;

 	value 					=	VALUE_KDF_ARMOR_L;

	visual 					=	"REV_KDFL.3ds";
	visual_change 			=	"REV_ARMOR_KDF_L.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	
	on_equip				=	Equip_KDF_ARMOR;
	on_unequip				=	UnEquip_KDF_ARMOR;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

instance ITAR_REVIVED_KDF_M(C_Item)
{
	name 					=	"Robe of Fire";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	65;
	protection [PROT_BLUNT] = 	65;
	protection [PROT_POINT] = 	40;
	protection [PROT_FIRE] 	= 	40;
	protection [PROT_MAGIC] = 	40;
	wear 					=	WEAR_TORSO;

 	value 					=	VALUE_KDF_ARMOR_L;

	visual 					=	"REV_KDFM.3ds";
	visual_change 			=	"REV_ARMOR_KDF_M.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	
	on_equip				=	Equip_KDF_ARMOR;
	on_unequip				=	UnEquip_KDF_ARMOR;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

instance ITAR_REVIVED_KDF_H(C_Item)
{
	name 					=	"High Robe of Fire";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	80;
	protection [PROT_BLUNT] = 	80;
	protection [PROT_POINT] = 	80;
	protection [PROT_FIRE] 	= 	100;
	protection [PROT_MAGIC] = 	100;
	wear 					=	WEAR_TORSO;

	value 					=	VALUE_KDF_ARMOR_H;

	visual 					=	"REV_KDFH.3ds";
	visual_change 			=	"REV_ARMOR_KDF_H.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	
	on_equip				=	Equip_KDF_ARMOR;
	on_unequip				=	UnEquip_KDF_ARMOR;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

/******************************************************************************************/
FUNC VOID Equip_KDF_ARMOR()
{
	if Npc_IsPlayer (self)
	{
		KDFArmor_Equipped = TRUE;
		
		if (KDF01_Equipped == TRUE)
		{
			self.protection[PROT_EDGE] 	+= BA_Bonus01;
			self.protection[PROT_BLUNT] += BA_Bonus01;
			self.protection[PROT_POINT] += BA_Bonus01;
			self.protection[PROT_MAGIC] += BA_Bonus01;
			self.protection[PROT_FIRE] 	+= BA_Bonus01;
		};
	};
};
FUNC VOID UnEquip_KDF_ARMOR()
{
	if Npc_IsPlayer (self)
	{
		KDFArmor_Equipped = FALSE;
		
		if (KDF01_Equipped == TRUE)
		{	
			self.protection[PROT_EDGE] 	-= BA_Bonus01;
			self.protection[PROT_BLUNT] -= BA_Bonus01;
			self.protection[PROT_POINT] -= BA_Bonus01;
			self.protection[PROT_MAGIC] -= BA_Bonus01;
			self.protection[PROT_FIRE] 	-= BA_Bonus01;
		};
	};
};

/******************************************************************************************/

instance ITAR_REVIVED_KDW_L(C_Item)
{
	name 					=	"Water Mage's Robe";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	40;
	protection [PROT_BLUNT] = 	40;
	protection [PROT_POINT] = 	40;
	protection [PROT_FIRE] 	= 	20;
	protection [PROT_MAGIC] = 	20;

	value 					=	VALUE_KDW_ARMOR_L;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_KDWL.3ds";
	visual_change 			=	"REV_ARMOR_KDW_L.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

instance ITAR_REVIVED_KDW_M(C_Item)
{
	name 					=	"Robe of Water";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	65;
	protection [PROT_BLUNT] = 	65;
	protection [PROT_POINT] = 	40;
	protection [PROT_FIRE] 	= 	40;
	protection [PROT_MAGIC] = 	40;

	value 					=	VALUE_KDW_ARMOR_L;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_KDWM.3ds";
	visual_change 			=	"REV_ARMOR_KDW_M.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

instance ITAR_REVIVED_KDW_H(C_Item)
{
	name 					=	"High Robe of Water";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	80;
	protection [PROT_BLUNT] = 	80;
	protection [PROT_POINT] = 	80;
	protection [PROT_FIRE] 	= 	100;
	protection [PROT_MAGIC] = 	100;
	wear 					=	WEAR_TORSO;

	value 					=	VALUE_KDW_ARMOR_H;

	visual 					=	"REV_KDWH.3ds";
	visual_change 			=	"REV_ARMOR_KDW_H.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

/******************************************************************************************/

instance ITAR_REVIVED_DMT_L (C_Item)
{
	name 					=	"Dark Novice's Robe";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE] 	= 	90;
	protection [PROT_BLUNT] = 	90;
	protection [PROT_POINT] = 	20;
	protection [PROT_FIRE] 	= 	60;
	protection [PROT_MAGIC] = 	30;

	value 					=	VALUE_ITAR_Dementor;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_DMTL.3ds";
	visual_change 			=	"REV_ARMOR_DMT_L.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	
	description				=	name;

	TEXT[1]					=	NAME_Prot_Edge;		
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};

instance ITAR_REVIVED_DMT_M(C_Item)
{
	name 					=	"Robe of the Dark Arts";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	100;
	protection [PROT_BLUNT] = 	100;
	protection [PROT_POINT] = 	100;
	protection [PROT_FIRE] 	= 	80;
	protection [PROT_MAGIC] = 	105;

	wear 					=	WEAR_TORSO;

 	value 					=	protection [PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	//ownerGuild 				= 	GIL_DMB;

	visual 					=	"REV_DMTM.3ds";
	visual_change 			=	"REV_ARMOR_DMT_M.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

instance ITAR_REVIVED_DMT_H (C_Item)
{
	name 					=	"High Robe of the Dark Arts";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	150;
	protection [PROT_BLUNT] = 	150;
	protection [PROT_POINT] = 	80;
	protection [PROT_FIRE] 	= 	100;
	protection [PROT_MAGIC] = 	120;

	value 					=	VALUE_ITAR_XARDAS;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_DMTH.3ds";
	visual_change 			=	"REV_ARMOR_DMT_H.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};

instance ITAR_REVIVED_DMT_S (C_Item)
{
	name 					=	"Seeker's Robe";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	120;
	protection [PROT_BLUNT] = 	120;
	protection [PROT_POINT] = 	60;
	protection [PROT_FIRE] 	= 	80;
	protection [PROT_MAGIC] = 	105;

	wear 					=	WEAR_TORSO;

 	value 					=	protection [PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	//ownerGuild 				= 	GIL_DMB;

	visual 					=	"REV_DMTS.3ds";
	visual_change 			=	"REV_ARMOR_DMT_S.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

//****************************************************************************
//			BANDITS
//****************************************************************************

instance ITAR_REVIVED_BDT_L (C_Item)
{
	name 					=	"Light Bandit Armor";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	30;
	protection [PROT_BLUNT] = 	30;
	protection [PROT_POINT] = 	30;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_SLD_ARMOR_L;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_BDTL.3ds";
	visual_change 			=	"REV_ARMOR_BDT_L.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

instance ITAR_REVIVED_BDT_M (C_Item)
{
	name 					=	"Bandit Armor";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	30;
	protection [PROT_BLUNT] = 	30;
	protection [PROT_POINT] = 	5;
	protection [PROT_FIRE] 	= 	15;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_STT_ARMOR_M;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_BDTM.3ds";
	visual_change 			=	"REV_ARMOR_BDT_M.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

instance ITAR_REVIVED_BDT_H (C_Item)
{
	name 					=	"Heavy Bandit Armor";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	30;
	protection [PROT_BLUNT] = 	30;
	protection [PROT_POINT] = 	5;
	protection [PROT_FIRE] 	= 	15;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_STT_ARMOR_M;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_BDTH.3ds";
	visual_change 			=	"REV_ARMOR_BDT_H.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

//****************************************************************************
//			ROYAL GUARD / PALADINS
//****************************************************************************

instance ITAR_REVIVED_PAL_L(C_Item)
{
	name 					=	"Royal Guard Armor";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE] 	=	80;
	protection [PROT_BLUNT] = 	80;
	protection [PROT_POINT] = 	40;
	protection [PROT_FIRE] 	= 	30;
	protection [PROT_MAGIC] = 	20;

	value 					=	protection [PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	wear 					=	WEAR_TORSO;
    //ownerGuild 				= 	GIL_GRD;

	visual 					=	"REV_PALL.3ds";
	visual_change 			=	"REV_ARMOR_PAL_L.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;
	
	on_equip				=	Equip_GRD_ARMOR;
	on_unequip				=	UnEquip_GRD_ARMOR;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

INSTANCE ITAR_REVIVED_PAL_M (C_Item)
{
	name 					=	"Paladin's Armor";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	100;
	protection [PROT_BLUNT] = 	100;
	protection [PROT_POINT] = 	100;
	protection [PROT_FIRE] 	= 	50;
	protection [PROT_MAGIC] = 	25;
	
	value 					=	VALUE_ITAR_PAL_M;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_PALM.3ds";
	visual_change 			=	"REV_ARMOR_PAL_M.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;
	
	on_equip				=	Equip_GRD_ARMOR;
	on_unequip				=	UnEquip_GRD_ARMOR;

	description				=	name;
	
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};

INSTANCE ITAR_REVIVED_PAL_H (C_Item)
{
	name 					=	"Heavy Paladin Armor";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	150;
	protection [PROT_BLUNT] = 	150;
	protection [PROT_POINT] = 	150;
	protection [PROT_FIRE] 	= 	100;
	protection [PROT_MAGIC] = 	50;

	value 					=	VALUE_ITAR_PAL_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_PALH.3ds";
	visual_change 			=	"REV_ARMOR_PAL_H.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;
	
	on_equip				=	Equip_GRD_ARMOR;
	on_unequip				=	UnEquip_GRD_ARMOR;

	description				=	name;

	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};

INSTANCE ITAR_REVIVED_PAL_S (C_Item)
{
	name 					=	"Heavy Paladin Armor (without helmet)";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	150;
	protection [PROT_BLUNT] = 	150;
	protection [PROT_POINT] = 	150;
	protection [PROT_FIRE] 	= 	100;
	protection [PROT_MAGIC] = 	50;

	value 					=	VALUE_ITAR_PAL_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_PALS.3ds";
	visual_change 			=	"REV_ARMOR_PAL_S.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;
	
	on_equip				=	Equip_GRD_ARMOR;
	on_unequip				=	UnEquip_GRD_ARMOR;

	description				=	name;

	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};

//****************************************************************************
//			DEMONHUNTER
//****************************************************************************

instance ITAR_REVIVED_DEMONHUNTER(C_Item)
{
	name 					=	"Demonhunter Armor";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE] 	=	150;
	protection [PROT_BLUNT] = 	150;
	protection [PROT_POINT] = 	150;
	protection [PROT_FIRE] 	= 	100;
	protection [PROT_MAGIC] = 	50;

	value 					=	protection [PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	wear 					=	WEAR_TORSO;
    //ownerGuild 				= 	GIL_GRD;

	visual 					=	"REV_DHT.3ds";
	visual_change 			=	"REV_ARMOR_DHT.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

instance ITAR_REVIVED_DEMONHUNTER_02(C_Item)
{
	name 					=	"Demonhunter Armor (without helmet)";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE] 	=	150;
	protection [PROT_BLUNT] = 	150;
	protection [PROT_POINT] = 	150;
	protection [PROT_FIRE] 	= 	100;
	protection [PROT_MAGIC] = 	50;

	value 					=	protection [PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	wear 					=	WEAR_TORSO;
    //ownerGuild 				= 	GIL_GRD;

	visual 					=	"REV_DHTS.3ds";
	visual_change 			=	"REV_ARMOR_DHTS.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

//****************************************************************************
//			SPECIAL
//****************************************************************************

instance ITAR_REVIVED_TPL_SKE(C_Item)
{
	name 					=	"Heavy Templar's Armor (skeleton)";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	70;
	protection [PROT_BLUNT] = 	70;
	protection [PROT_POINT] = 	10;
	protection [PROT_FIRE] 	= 	35;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_TPL_ARMOR_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_TPLS.3ds";
	visual_change 			=	"REV_ARMOR_TPL_SKELETON.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

//****************************************************************************
//			OTHER
//****************************************************************************

instance ITAR_REVIVED_ARCHER (C_Item)
{
	name 					=	"Archer's Suit";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	40;
	protection [PROT_BLUNT] = 	40;
	protection [PROT_POINT] = 	60;
	protection [PROT_FIRE] 	= 	15;
	protection [PROT_MAGIC] = 	5;

	value 					=	protection [PROT_POINT] * ARMOR_VALUE_MULTIPLIER;
	//value					=	1800;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_DLC.3ds";
	visual_change 			=	"REV_ARMOR_DLC.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	on_equip				=	Equip_ARCHER_ARMOR;
	on_unequip				=	UnEquip_ARCHER_ARMOR;

	description				=	name;
	
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
FUNC VOID Equip_ARCHER_ARMOR()
{
	if Npc_IsPlayer (self)
	{
		ArcherArmor_Equipped = TRUE;	
	
		if (ArcherBelt_Equipped == TRUE)
		{
			self.protection[PROT_EDGE] 	+= BA_Bonus01;
			self.protection[PROT_BLUNT] += BA_Bonus01;
			self.protection[PROT_POINT] += BA_Bonus01;
			self.protection[PROT_MAGIC] += BA_Bonus01;
			self.protection[PROT_FIRE] 	+= BA_Bonus01;
		};
	};
};
FUNC VOID UnEquip_ARCHER_ARMOR()
{
	if Npc_IsPlayer (self)
	{
		ArcherArmor_Equipped = FALSE;	
	
		if (ArcherBelt_Equipped == TRUE)
		{
			self.protection[PROT_EDGE] 	-= BA_Bonus01;
			self.protection[PROT_BLUNT] -= BA_Bonus01;
			self.protection[PROT_POINT] -= BA_Bonus01;
			self.protection[PROT_MAGIC] -= BA_Bonus01;
			self.protection[PROT_FIRE] 	-= BA_Bonus01;
		};
	};
};

/******************************************************************************************/

instance ITAR_REVIVED_BEGGAR (C_Item)
{
	name 					=	"Beggar's Clothing";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	10;
	protection [PROT_BLUNT] = 	10;
	protection [PROT_POINT] = 	10;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_ITAR_Prisoner;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_BEGGAR.3ds";
	visual_change 			=	"REV_ARMOR_BEGGAR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};

//****************************************************************************
//			GOTHIC 2 MODIFIED
//****************************************************************************
INSTANCE ITAR_REVIVED_KNIGHT (C_Item)
{
	name 					=	"Old Knight's Armor";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	100;
	protection [PROT_BLUNT] = 	100;
	protection [PROT_POINT] = 	100;
	protection [PROT_FIRE] 	= 	50;
	protection [PROT_MAGIC] = 	50;

	value 					=	VALUE_ITAR_PAL_SKEL;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_RITTER_OLD.3ds";
	visual_change 			=	"Armor_Pal_Skeleton.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				=	name;

	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};

INSTANCE ITAR_REVIVED_KNIGHT_02 (C_Item)
{
	name 					=	"Old Knight's Armor (without helmet)";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	100;
	protection [PROT_BLUNT] = 	100;
	protection [PROT_POINT] = 	100;
	protection [PROT_FIRE] 	= 	50;
	protection [PROT_MAGIC] = 	50;

	value 					=	VALUE_ITAR_PAL_SKEL;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_RITTER_OLD.3ds";
	visual_change 			=	"REV_ARMOR_RITTER_OLD.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				=	name;

	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
// ******************************************************
INSTANCE ITAR_REVIVED_DJG_M (C_Item)
{
	name 					=	"Medium Dragon Hunter's Armor (without helmet)";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	120;
	protection [PROT_BLUNT]	= 	120;
	protection [PROT_POINT] = 	120;
	protection [PROT_FIRE] 	= 	75;
	protection [PROT_MAGIC] = 	35;

	value 					=	VALUE_ITAR_DJG_M;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_DJGMS.3ds";
	visual_change 			=	"REV_ARMOR_DJG_M.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				=	name;
	
	TEXT[1]					=	NAME_Prot_Edge;		
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
// ******************************************************
INSTANCE ITAR_REVIVED_DJG_H (C_Item)
{
	name 					=	"Heavy Dragon Hunter's Armor (without helmet)";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	150;
	protection [PROT_BLUNT] = 	150;
	protection [PROT_POINT] = 	150;
	protection [PROT_FIRE] 	= 	100;
	protection [PROT_MAGIC] = 	50;

	value 					=	VALUE_ITAR_DJG_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_DJGHS.3ds";
	visual_change 			=	"REV_ARMOR_DJG_H.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				=	name;

	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
// ******************************************************
INSTANCE ITAR_REVIVED_PIR_H (C_Item)
{
	name 					=	"Captain's clothes (without hat)";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	60;
	protection [PROT_BLUNT] = 	60;
	protection [PROT_POINT] = 	60;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_ITAR_PIR_H_Addon;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_PIRS.3ds";
	visual_change 			=	"REV_ARMOR_PIR_S.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;

	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};


//****************************************************************************
//			OTHER - SPECIAL - FUN - IDK
//****************************************************************************

instance ITAR_REVIVED_GORDONRAMSAY (C_Item)
{
	name 					=	"Kitchen Chef's robe";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	50;
	protection [PROT_BLUNT] = 	50;
	protection [PROT_POINT] = 	200;
	protection [PROT_FIRE] 	= 	500;
	protection [PROT_MAGIC] = 	999;

	value 					=	protection [PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	wear 					=	WEAR_TORSO;

	visual 					=	"REV_EBRM_TATUNG.3ds";
	visual_change 			=	"REV_ARMOR_EBR_M_TATUNG.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};