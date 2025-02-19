//****************************************************************************
//			BOOKS
//****************************************************************************

INSTANCE ITWR_REVIVED_CIRCLE_KDF_01(C_Item)
{	
	name 					=	"The First Circle";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	50;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "The First Circle of Magic";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	UseItWr_Book_Circle_01;
};

	FUNC VOID UseItWr_Book_Circle_01()
	{   
		var int nDocID;
		var string Text;
		Text = ConcatStrings (NAME_Manakosten,IntToString (SPL_SENDCAST_LIGHT));
		var string Text_1;
		Text_1 = ConcatStrings (NAME_Manakosten,IntToString (SPL_SENDCAST_THUNDERBOLT));
		var string Text_2;
		Text_2 = ConcatStrings (NAME_Manakosten,IntToString (SPL_SENDCAST_FIREBOLT));
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_PrintLine	( nDocID,  0,"The First Circle");
					Doc_PrintLine	( nDocID,  0,"---------------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"When the gods gave mankind the gift of magic, they taught them to make magic runes as well. The servants of the gods have taken over the glorious task of creating these artifacts of divine power and using them. The magician's Circle determines which kind of magic he is able to understand and to use. ");
					
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1,"Light");
					Doc_PrintLine	( nDocID,  1,"---------------");
					Doc_PrintLines	( nDocID,  1,"Innos' first gift to mankind. A shining ball appears over the magician.");
					Doc_PrintLine	( nDocID,  1,  Text);
					Doc_PrintLine	( nDocID,  1,  "" );
					Doc_PrintLine	( nDocID,  1,"Ice Bolt");
					Doc_PrintLine	( nDocID,  1,"---------------");
					Doc_PrintLines	( nDocID,  1,"A missile of magic energy.");
					Doc_PrintLine	( nDocID,  1,  Text_1);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1,"Fire Bolt");
					Doc_PrintLine	( nDocID,  1,"---------------");
					Doc_PrintLines	( nDocID,  1,"A missile of magic Fire.");
					Doc_PrintLine	( nDocID,  1,  Text_2);
					Doc_Show		( nDocID );
	};
	
INSTANCE ITWR_REVIVED_CIRCLE_KDF_02(C_Item)
{	
	name 					=	"The Second Circle";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "The Second Circle of Magic";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	UseItWr_Book_Circle_02;
};

	FUNC VOID UseItWr_Book_Circle_02()
	{   
		var int nDocID;
		
		var string Text_1;
		Text_1 = ConcatStrings (NAME_Manakosten,IntToString (SPL_HEALING_HP_PER_MP));
		
	
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_PrintLine	( nDocID,  0,"The Second Circle");
					Doc_PrintLine	( nDocID,  0,"---------------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"All magic originates from the magic powers of the user. The user is called a magician.");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"Every activation of a magic spell costs the magician a portion of his powers. These powers are referred to as mana.");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1,"Healing");
					Doc_PrintLine	( nDocID,  1,"---------------");
					Doc_PrintLines	( nDocID,  1,"Adanos saw that the humans died and that it was the will of Beliar that it should be that way. And he spoke: I will not oppose the will of Beliar, but I shall give mankind the power of healing."); 
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"This spell has the power of healing the magician.");
					Doc_PrintLine	( nDocID,  1,"Investment spells");
					Doc_PrintLine	( nDocID,  1,  Text_1);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					
					Doc_Show		( nDocID );
	};
										
INSTANCE ITWR_REVIVED_CIRCLE_KDF_03 (C_Item)
{	
	name 					=	"The Third Circle";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	150;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "The Third Circle of Magic";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	UseItWr_Book_Circle_03;
	
	
};
	FUNC VOID UseItWr_Book_Circle_03()
	{   
		
		var int nDocID;
		var string Text;
		Text = ConcatStrings (NAME_Manakosten,IntToString (SPL_SENDCAST_FIREBALL));
		var string Text_1;
		Text_1 = ConcatStrings (NAME_Manakosten,IntToString (SPL_SENDCAST_ICECUBE));
		var string Text_2;
		Text_2 = ConcatStrings (NAME_Manakosten,IntToString (SPL_SENDCAST_THUNDERBALL));
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_PrintLine	( nDocID,  0,"The Third Circle");
					Doc_PrintLine	( nDocID,  0,"---------------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"Some spells can be charged with a certain amount of magic power. They are also known as charging spells.");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"Other spells remain in force for as long as the magician lets his mana flow into them. These spells are referred to as investment spells.");


					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1,"Fireball");
					Doc_PrintLine	( nDocID,  1,"---------------");
					Doc_PrintLines	( nDocID,  1,"Innos' second gift to the children of Fire. A ball of fire, which burns its victims.");
					Doc_PrintLine	( nDocID,  1,"Charging Spell");
					Doc_PrintLine	( nDocID,  1, Text);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1,"Ice Block");
					Doc_PrintLine	( nDocID,  1,"---------------");
					Doc_PrintLines	( nDocID,  1,"The victim is enclosed in a block of ice. A spell from the temple of the Magicians of Water.");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, Text_1);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1,"Ball Lightning");
					Doc_PrintLine	( nDocID,  1,"---------------");
					Doc_PrintLines	( nDocID,  1,"A ball of magic power.");
					Doc_PrintLine	( nDocID,  1,  Text_2);
					Doc_Show		( nDocID );
	};
		
INSTANCE ITWR_REVIVED_CIRCLE_KDF_04 (C_Item)
{	
	name 					=	"The Fourth Circle";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	200;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "The Fourth Circle of Magic";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseItWr_Book_Circle_04;
};
	FUNC VOID UseItWr_Book_Circle_04()
	{   
		var int nDocID;
		var string Text;
		Text = ConcatStrings (NAME_Manakosten,IntToString (SPL_SENDCAST_FIRESTORM));
		var string Text_1;
		Text_1 = ConcatStrings (NAME_Manakosten,IntToString (SPL_ZAPPED_DAMAGE_PER_SEC));
		var string Text_2;
		Text_2 = ConcatStrings (NAME_Manakosten,IntToString (SPL_SENDCAST_DESTROYUNDEAD));
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_PrintLine	( nDocID,  0,"The Fourth Circle");
					Doc_PrintLine	( nDocID,  0,"---------------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0,"The Magic");
					Doc_PrintLine	( nDocID,  0,"of Teleportation");
					Doc_PrintLine	( nDocID,  0,"---------------");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"The special feature of these magic formulas is that, although they are bound in runes, they can be cast by anybody with magic powers. The magic of these formulas can be activated at once. There are no restrictions to the teleportation spell.");
					

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					
					
					Doc_PrintLine	( nDocID,  1,"Storm of Fire");
					Doc_PrintLine	( nDocID,  1,"---------------");
					Doc_PrintLines	( nDocID,  1,"Like the fireball, this spell affects one foe, but then leaps to other foes as well.");
					Doc_PrintLine	( nDocID,  1,"Charging spell");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, Text);
					Doc_PrintLine	( nDocID,  1,"Chain Lightning");
					Doc_PrintLine	( nDocID,  1,"---------------");
					Doc_PrintLines	( nDocID,  1,"The spell is leaping to more targets, the longer it is working. The power of lighning is hard to control. Thus, the caster himself may become a target.");
					Doc_PrintLine	( nDocID,  1,  Text_1);
					Doc_PrintLine	( nDocID,  1, "");	
					Doc_PrintLine	( nDocID,  1,"Death to the Undead");
					Doc_PrintLine	( nDocID,  1,"---------------");
					Doc_PrintLines	( nDocID,  1,"This spell banishes undead creatures of darkness.");	
					Doc_PrintLine	( nDocID,  1, Text_2);
					
					Doc_Show		( nDocID );
	};

INSTANCE ITWR_REVIVED_CIRCLE_KDF_05(C_Item)
{	
	name 					=	"The Fifth Circle";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	250;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= "The Fifth Circle of Magic";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	UseItWr_Book_Circle_05;
	
	
};
	FUNC VOID UseItWr_Book_Circle_05()
	{   
		var int nDocID;
		var string Text_1;
		Text_1 = ConcatStrings (NAME_Manakosten,IntToString (SPL_SENDCAST_FIRERAIN));
		var string Text_2;
		Text_2 = ConcatStrings (NAME_Manakosten,IntToString (SPL_SENDCAST_ICEWAVE));
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_PrintLine	( nDocID,  0,"The Fifth Circle");
					Doc_PrintLine	( nDocID,  0,"---------------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0,"Rain of Fire");
					Doc_PrintLine	( nDocID,  0,"---------------");
					Doc_PrintLines	( nDocID,  0,"The power of divine Fire hits every creature within range of the magician.");
					Doc_PrintLine	( nDocID,  0, Text_1);					
					
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1,"Wave of Ice");
					Doc_PrintLine	( nDocID,  1,"---------------");
					Doc_PrintLines	( nDocID,  1,"A magic Wave of Ice extends over any foes and freezes them for a short period of time. During this period, the victims are paralyzed and damaged. ");
					Doc_PrintLines	( nDocID,  1,"A spell from the temple of the Magicians of Water.");
					Doc_PrintLine	( nDocID,  1, Text_2);
					Doc_Show		( nDocID );
};

INSTANCE ITWR_REVIVED_CIRCLE_KDF_06(C_Item)
{	
	name 					=	"The Sixth Circle";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	300;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Sixth Circle of Magic";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	UseItWr_Book_Circle_06;
	
	
};
	FUNC VOID UseItWr_Book_Circle_06()
	{   
		var int nDocID;
		var string Text;
		Text = ConcatStrings (NAME_Manakosten,IntToString (SPL_SENDCAST_BREATHOFDEATH));
	
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_PrintLine	( nDocID,  0,"The Sixth Circle");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0,"Breath of Death");
					Doc_PrintLine	( nDocID,  0,"---------------");
					Doc_PrintLines	( nDocID,  0,"Beliar's breath. A cloud of destructive air, which may kill any being instantly.");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, Text);					
					
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1,"Ring of Death");
					Doc_PrintLine	( nDocID,  1,"---------------");
					Doc_PrintLines	( nDocID,  1,"There are hardly any records about the rune carrying the powers of URIZIEL.");	
					Doc_PrintLines	( nDocID,  1,"It is only known that it has Beliar's powers.");
					Doc_PrintLine	( nDocID,  1, "");
				
					
					Doc_Show		( nDocID );
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_GIFTFROMTHEGODS(C_Item)
{	
	name 					=	"A Gift from the Gods";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_01.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "A Gift from the Gods";
	//TEXT[0]				= "Dritter Kreis";
	////COUNT[0]			= ;
	//TEXT[1]				= "";
	////COUNT[1]			= ;
	//TEXT[2]				= "";
	//COUNT[2]			= ;
	//TEXT[3] 			= "";
	//COUNT[3]			= ;
	//TEXT[4]				= ""; 
	////COUNT[4]			= ;
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseGoettergabe;
};

	FUNC VOID UseGoettergabe()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
  					Doc_PrintLine	( nDocID,  0,"Magic");
  					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_PrintLine	( nDocID,  0," ");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
					Doc_PrintLine	( nDocID,  0,"A Gift from the Gods");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"Man has been trying to fathom the nature and origins of magic for centuries. But where should the search begin? How does one describe magic? It is the most conflicting power that has ever been known. It can kill and it can heal, it can create and it can destroy.");
					

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"What does such power look like? Where can a man find this invisible, yet incredibly powerful force? Magic is what it is. It is the most marvelous and the most powerful gift the gods have ever given us. It is the divine gift presented to users and  weavers of magic. A healing power that only a few chosen ones are able to control.");	
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1,"Barthos of Laran");
					Doc_Show		( nDocID );
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_SECRETSOFMAGIC(C_Item)
{	
	name 					=	"The Secrets of Magic";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_02.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "The Secrets of Magic";
	//TEXT[0]				= "Dritter Kreis";
	////COUNT[0]			= ;
	//TEXT[1]				= "";
	////COUNT[1]			= ;
	//TEXT[2]				= "";
	//COUNT[2]			= ;
	//TEXT[3] 			= "";
	//COUNT[3]			= ;
	//TEXT[4]				= ""; 
	////COUNT[4]			= ;
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseGeheimnisse_der_Zauberei;
};

	FUNC VOID UseGeheimnisse_der_Zauberei()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga"  , 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga" , 0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"); 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0,"The Secrets of Magic");
					
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"The magic is not inherent in the magus himself, he is far more able to work it. The only skill he possesses is the ability to influence and guide magic. A disciple of the art of magic must be able to use his spirit as a tool.");
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"His spirit serves as a vessel for the all-encompassing arcane power ... to shape it, focus it and finally release it into the world we know. During these moments of total concentration, the magus' spirit rises above our sphere and gazes upon the Other Side, the home of power. The magus himself is but a conductor and shaper of that power.");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1,"Barthos of Laran");
					Doc_Show		( nDocID );
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_POWERFULART (C_Item)
{	
	name 					=	"A Powerful Art";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "A Powerful Art";
	//TEXT[0]				= "Dritter Kreis";
	////COUNT[0]			= ;
	//TEXT[1]				= "";
	////COUNT[1]			= ;
	//TEXT[2]				= "";
	//COUNT[2]			= ;
	//TEXT[3] 			= "";
	//COUNT[3]			= ;
	//TEXT[4]				= ""; 
	////COUNT[4]			= ;
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseMachtvolle_Kunst;
	
	
};
	FUNC VOID UseMachtvolle_Kunst()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga" 	, 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga"	, 0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"); 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0,"A Powerful Art");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"A Work for Those Instructed in the Arcane Art");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"A magician's ability to control the divine power grows. At first, it appears like a small seed in a field. It must be tended or it will wither. But once the seed begins to grow, its splendor unfolds.");
					
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"It continues to grow with each passing day. The same applies to a receptive magus. His powers may be weak to begin with, but given time they will wax and thrive, unfolding a power whose limits are unforeseeable. To guide this power to the point of perfection is the sacred duty of every magus, for the seed sown by the gods is the greatest gift a mortal can receive.");
					Doc_Show		( nDocID );
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_ELEMENTARYARCANUM (C_Item)
{	
	name 					=	"Elementary Arcanum";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_04.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Elementary Arcanum";
	//TEXT[0]				= "Vierter Kreis";
	////COUNT[0]			= ;
	//TEXT[1]				= "";
	////COUNT[1]			= ;
	//TEXT[2]				= "";
	//COUNT[2]			= ;
	//TEXT[3] 			= "";
	//COUNT[3]			= ;
	//TEXT[4]				= ""; 
	////COUNT[4]			= ;
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseElementare_Arcanei;
	
	
};
	FUNC VOID UseElementare_Arcanei()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga" ,	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga" ,	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"); 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0,"Elementary Arcanum");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"The Place of Magic in the Order of the Worldly");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"Much research has taken place on magic and its relation to the elements. It is just to claim that magic represents the perfect element. It has the power to transform all the elements and to shape them, which means it is superior to them.");
					
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");	
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"Each element, when viewed in its purest form, unearths a connection to magic. Natural connections of this kind can only be found in very few places, and they are highly sought-after. A magus' ability to conjure up the elements, seemingly from nothing, proves that the power of magic is the purest, greatest good in existence.");
					Doc_Show		( nDocID );
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_TRUEPOWER (C_Item)
{	
	name 					=	"True Power";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "True Power";
	//TEXT[0]				= "Fünfter Kreis";
	////COUNT[0]			= ;
	//TEXT[1]				= "";
	////COUNT[1]			= ;
	//TEXT[2]				= "";
	//COUNT[2]			= ;
	//TEXT[3] 			= "";
	//COUNT[3]			= ;
	//TEXT[4]				= ""; 
	////COUNT[4]			= ;
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseWahre_Macht;
	
	
};
	FUNC VOID UseWahre_Macht()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga"  , 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga" , 0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"); 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0,"True Power");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"The Sacred Duty of the Skillful");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"It is power that distinguishes a magus from his fellow men. Equipped with the ability to influence the divine power, he is a being independent of the laws of nature which apply to mortal man.");
					
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");	
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"Once a magus has reached a stage which enables him to rise above the limits of his existence, he can place himself on a higher plane than that in which mortal man lives. He can break through the boundaries of time and space, and not even death, the eve of existence, can stop him.");
					Doc_Show		( nDocID );
};
/******************************************************************************************/

INSTANCE ITWR_REVIVED_MAGICORE (C_Item)
{	
	name 					=	"Magic Ore";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_02.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Magic Ore";
	//TEXT[0]				= "";
	////COUNT[0]			= ;
	//TEXT[1]				= "";
	////COUNT[1]			= ;
	//TEXT[2]				= "";
	//COUNT[2]			= ;
	//TEXT[3] 			= "";
	//COUNT[3]			= ;
	//TEXT[4]				= ""; 
	////COUNT[4]			= ;
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseDas_magische_Erz;
	
	
};
	FUNC VOID UseDas_magische_Erz()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"); 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);
					Doc_PrintLine	( nDocID,  0,"Magic Ore");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLines	( nDocID,  0,"The best ore for use when forging weapons is doubtless found in the ore mines of Khorinis. It is of fundamental purity and suffused with magic. It is of incomparable strength, yet so soft that it cannot break. A weapon forged from this steel, which is mined far below the ground at an inexpressible cost of effort, is a match for any blade, albeit made of the strongest steel.");
					
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");	
					Doc_PrintLines	( nDocID,  1,"It will break any shield and pierce any armor. Kings and heroes of old wielded weapons forged from the finest steel of Khorinis, and high prices are still paid for such weapons throughout Myrtana. But the ore itself demands a high price. Much effort is required to break it from the rock. It is almost as though the ore were fighting to remain within the womb of the earth.");
					Doc_Show		( nDocID );
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_ASTRONOMY (C_ITEM)
{	
	name 					=	"Astronomy";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Astronomy";
	//TEXT[0]				= "";
	////COUNT[0]			= ;
	//TEXT[1]				= "";
	////COUNT[1]			= ;
	//TEXT[2]				= "";
	//COUNT[2]			= ;
	//TEXT[3] 			= "";
	//COUNT[3]			= ;
	//TEXT[4]				= ""; 
	////COUNT[4]			= ;
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseAstronomie;
};

	FUNC VOID UseAstronomie()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0		);
					
					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		); 					
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
 					Doc_PrintLine	( nDocID,  0,"");										
					Doc_PrintLines	( nDocID,  0,"In the center lies the Morgrad, containing the four elements earth, water, fire and air. It is the place of transience, the heart of the inexpressible darkness of Beliar. Above all this towers the sphere of the heavens.");
					Doc_PrintLine	( nDocID,  0,"");
					//Absatz
					Doc_PrintLines	( nDocID,  0,"In the hierarchy of the universe, man is a receiver. His soul allows him to take part in the highest plane of existence, the divine spirit. Yet man's body is made from the substance of the Morgrad. He is a reflection of the world itself.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"The synodic orbit of the planets, that is the course they take between two identical positions in relation to the Morgrad of our world, varies by just a few degrees every century. We therefore conclude that we are constantly moving with the rest of the universe.");
					Doc_PrintLine	( nDocID,  1,"");
					//Absatz
					Doc_PrintLines	( nDocID,  1,"When we created the first calendar, we observed the course of the moon to determine the length of the solar year.");
					Doc_Show		( nDocID );
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_ARCANUMGOLUM_01 (C_Item)
{	
	name 					=	"Arcanum Golum - Volume I";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UseGolemBook1;
};

	FUNC VOID UseGolemBook1()
	{   
		var int nDocID;
		
		nDocID =
		Doc_Create		()			  ; 
		Doc_SetPages	( nDocID,  2 );
		Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga"  , 0 		); 
		Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga" , 0		);
		Doc_SetFont 	( nDocID, -1, "font_10_book.tga"); 
		
		//1.Seite
		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);
		Doc_PrintLine	( nDocID,  0,"ARCANUM GOLUM - Volume I");
		Doc_PrintLine	( nDocID,  0, "=====================");
		Doc_PrintLines	( nDocID,  0,"(Magic of the Golems)");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0,"Only who has been confronted with these creatures that came from the elements can truly understand how much respect these magical beings will teach an adventurous wanderer.");
		Doc_PrintLine	( nDocID,  0, "");

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine	( nDocID,  1,"Stone Golem");
		Doc_PrintLine	( nDocID,  1,"------------");
		Doc_PrintLines	( nDocID,  1,"These colossuses of stone are nearly invulnerable in battle. Swords, axes and bows do not seem to do any damage to these monsters.");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLines	( nDocID,  1,"The only plausible report of a battle against such a leviathan was written by a mercenary. He reported how the blunt hit of a war hammer caused cracks in the golem, until it finally burst apart.");

		Doc_Show		( nDocID );
	};

INSTANCE ITWR_REVIVED_ARCANUMGOLUM_02(C_Item)
{	
	name 					=	"Arcanum Golum - Volume II";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UseGolemBook2;
};

	FUNC VOID UseGolemBook2()
	{   
		var int nDocID;
		
		nDocID =
		Doc_Create		()			  ; 
		Doc_SetPages	( nDocID,  2 );

		Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga"  , 0 		); 
		Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga" , 0		);
		Doc_SetFont 	( nDocID, -1, "font_10_book.tga"); 

		//1. Seite
		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
		Doc_PrintLine	( nDocID,  0,"ARCANUM GOLUM - Volume II");
		Doc_PrintLine	( nDocID,  0, "======================");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLine	( nDocID,  0,"Ice Golem");
		Doc_PrintLine	( nDocID,  0,"---------");
		Doc_PrintLines	( nDocID,  0,"The ice golems are somehow related to the stone golems, though their physical substance seems to consist of water. Any familiar weapon seems to slide off the surface of this icy being.");
		Doc_PrintLines	( nDocID,  0,"Adventurous wanderers be warned of this creature's icy breath as well, because it surrounds the unsuspecting with a pillar of ice.");

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLines	( nDocID,  1,"A Magician of Fire reported an encounter with such a creature, but apparently he didn't see much of a threat in it.");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1,"Fire Golem");
		Doc_PrintLine	( nDocID,  1,"------------");
		Doc_PrintLines	( nDocID,  1,"According to reports, these fiery beings can convert their victims into a sea of flames with only one touch.");
		Doc_PrintLines	( nDocID,  1,"It was only last year that a group of hunters met such a walking mound of embers. There is no report on the outcome of the encounter, but apparently lightning bolts and ice had some effect on the hellish creature.");
		Doc_Show		( nDocID );
	};

/******************************************************************************************/
INSTANCE ITWR_REVIVED_WORDSOFGODS_01 (C_ITEM)
{	
	name 					=	"Words of the Gods Volume 1";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_01.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Words of the Gods";
	TEXT[0]				= "Volume 1";
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseLehren_der_Goetter1;
};

	FUNC VOID UseLehren_der_Goetter1()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga" , 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 	0		);
					
					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		); 					
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
 					Doc_PrintLine	( nDocID,  0,"");										
					Doc_PrintLines	( nDocID,  0,"Hear the words of the gods, for it is their will that you shall hear them. Heed the teachings of the gods, for it is their will that you shall heed them. Honor the priests of the gods, for they are the chosen ones.");
					Doc_PrintLine	( nDocID,  0,"");
					//Absatz
					Doc_PrintLines	( nDocID,  0,"The word of Innos: And if it shall happen that you do not understand, do not despair at the words of the priests, for they are just and wise. For I am the rising sun, the light, and the life. And all that is contrary to the sun is contrary to me, and shall be banished to the shadows forever more.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"The word of Adanos: Work and live, for the day was created so that man may work. Seek learning and knowledge so that you may pass it on, for it is for that purpose that you were created. But whosoever shall be listless and idle, he shall be banished to the shadows forever more.");
					Doc_PrintLine	( nDocID,  1,"");
					//Absatz
					Doc_PrintLines	( nDocID,  1,"The word of Beliar: But whosoever shall do wrong and go against the will of the gods, him I will punish. I will plague his body with pain, suffering and death, but his spirit shall join me in the shadows forever more. ");
					Doc_Show		( nDocID );
	};

INSTANCE ITWR_REVIVED_WORDSOFGODS_02 (C_ITEM)
{	
	name 					=	"Words of the Gods Volume 2";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_02.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Words of the Gods";
	TEXT[0]				= "Volume 2";
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseLehren_der_Goetter2;
};

	FUNC VOID UseLehren_der_Goetter2()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga" , 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 	0		);
					
					//1.Seite
 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
					Doc_PrintLine	( nDocID,  0,""); 					
					Doc_PrintLines	( nDocID,  0,"Of the beginning of time: There was no night and no day, and no living thing moved across the land. Then Innos appeared and his light shone upon the world. And Innos gave unto the world the gift of life. But no creature could live in the light of Innos, so he created the sun. But still the light was too bright. So Innos divided himself and thus created Beliar. Beliar created the night. Now man could be. So Innos divided himself again and created Adanos. Adanos brought man versatility, knowledge, curiosity and courage. Innos was satisfied with what he had done.");
					
					//2.Seite

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");					
					Doc_PrintLines	( nDocID,  1,"And he decided to leave mankind in the care of Adanos, and he rested. But Beliar was consumed by envy, for the people did not pray to him, but slept at night. He grew angry and created a man. A man to pray to him alone. But the man he created was like all other men. Beliar became so furious that he killed the man and spoke: If they will not worship me, then at least they shall fear me. And he created death and ended the lives of men.");
					Doc_Show		( nDocID );
	};

INSTANCE ITWR_REVIVED_WORDSOFGODS_03 (C_ITEM)
{	
	name 					=	"Words of the Gods Volume 3";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Words of the Gods";
	TEXT[0]				= "Volume 3";

	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseLehren_der_Goetter3;
};

	FUNC VOID UseLehren_der_Goetter3()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga" , 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 	0		);
					
					//1.Seite

					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
   					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
   					Doc_PrintLine	( nDocID,  0,"");			
					Doc_PrintLines	( nDocID,  0,"Innos gave mankind the power to hear him and speak to him. He gave mankind the power to perform great miracles, and he called them magic. With this power, the people were able to design the world after their will. Innos gave them no limits. And thus man received a portion of the divine power of creation. But not all the people were equal, and this dissatisfied them. So he took the power from the discontented. Innos raised the few who had shown him gratitude above the others.");
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
 					Doc_PrintLine	( nDocID,  1,"");					
					Doc_PrintLines	( nDocID,  1,"These few were soon revered and feared, and the people  called them priests. But among them were many who soon became dissatisfied. And so it happened that they prayed to Adanos and forgot their origins. The league of priests was divided. Wars ensued and the faith in divine omnipotence soon became a myth. And so the priests were separated. Those who followed Adanos were called Magicians of the Circle of Water, while the priests of Innos became known as the Magicians of the Circle of Fire.");
					Doc_Show		( nDocID );
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_VARANT_01 (C_Item)
{	
	name 					=	"The Battle of Varant";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_04.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "The Battle of Varant";
	TEXT[0]				= "Volume 1";
	////COUNT[0]			= ;
	//TEXT[1]				= "";
	////COUNT[1]			= ;
	//TEXT[2]				= "";
	//COUNT[2]			= ;
	//TEXT[3] 			= "";
	//COUNT[3]			= ;
	//TEXT[4]				= ""; 
	////COUNT[4]			= ;
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseSchlacht_um_Varant1;
};

	FUNC VOID UseSchlacht_um_Varant1()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga",		0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga",		0		);
					
					//1.Seite
 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
					Doc_PrintLine	( nDocID,  0,""); 					
					Doc_PrintLines	( nDocID,  0,"... but Rhobar, the strategist, chose to attack. He assembled his troops and had them storm the enemy's weak right flank. He did not waste his time on long skirmishes, but thrust into the enemy army like a sword and cut down the defenses as though they were made of paper. On and on he drove his troops, advancing on the boarders of Varant. He knew that to win this fight, he would have to disperse the enemy army and prevent Gellon and Lukkor ");
					
					//2.Seite

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");					
					Doc_PrintLines	( nDocID,  1,"uniting and dealing him a crushing blow. He would have to sever their supply lines to secure the victory ...");
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"... Gellon was dead, his army beaten, his leaderless troops on the run. But Rhobar was not willing to give the enemy a chance to regroup, and commanded his army to destroy the remainder of the enemy forces. Meanwhile, Lukkor took advantage of the moment and struck a decisive blow at King Rhobar's exhausted troops ...");
					
					Doc_Show		( nDocID );
	};

INSTANCE ITWR_REVIVED_VARANT_02(C_Item)
{	
	name 					=	"The Battle of Varant";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "The Battle of Varant";
	TEXT[0]				= "Volume 2";
	////COUNT[0]			= ;
	//TEXT[1]				= "";
	////COUNT[1]			= ;
	//TEXT[2]				= "";
	//COUNT[2]			= ;
	//TEXT[3] 			= "";
	//COUNT[3]			= ;
	//TEXT[4]				= ""; 
	////COUNT[4]			= ;
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseSchlacht_um_Varant2;
};

	FUNC VOID UseSchlacht_um_Varant2()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga",		0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga", 	0		);
					
					//1.Seite
 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
					Doc_PrintLine	( nDocID,  0,""); 					
					Doc_PrintLines	( nDocID,  0,"The war had been decided. Varant had lost its seaports, vital to army supplies. King Rhobar had not lingered on the battle fields for a long time, but left his generals to deal with the few remaining enemy troops. Varant had only one large force left, commanded by Lukkor, the most capable warlord of the Varant army, who had more than once turned defeat into victory.");
					
					//2.Seite

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");					
					Doc_PrintLines	( nDocID,  1,"But now his army was trapped. The situation was hopeless, even though his army greatly outnumbered the enemy. Lee, a war hero from Myrtana, had lured him into this trap. The heavy cavalry had been unable to fight on the thick, swamped ground of the narrow valley. Lee's soldiers had occupied the range of hills surrounding the swamp, and they had struck repeatedly, decimating the army. The desperate sallies his troops had launched had been cut short in pools of blood. He was beaten.");
					
					Doc_Show		( nDocID );
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_MYRTANAPOETRY (C_Item)
{	
	name 					=	"Myrtana's Poetry";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_02.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Myrtana's Poetry";

	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseMyrtanas_Lyrik;
};

	FUNC VOID UseMyrtanas_Lyrik()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga" , 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 	0		);
					
					//1.Seite
 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
					Doc_PrintLine	( nDocID,  0,""); 					
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"    The Song of");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"          Repentance");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
		
					//2.Seite

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");					
					Doc_PrintLines	( nDocID,  1,"In the beginning was the power, pure and white,");				
					Doc_PrintLine	( nDocID,  1,"");				
					Doc_PrintLines	( nDocID,  1,"Now only echoes of the vow sound through the night.");				
					Doc_PrintLine	( nDocID,  1,"");				
					Doc_PrintLines	( nDocID,  1,"They tell of days of unity, long since past,");				
					Doc_PrintLine	( nDocID,  1,"");				
					Doc_PrintLines	( nDocID,  1,"'Tis having and taking for which we now thirst.");				
					Doc_PrintLine	( nDocID,  1,"");				
					Doc_PrintLines	( nDocID,  1,"All unity was torn apart and burst.");				
					Doc_PrintLine	( nDocID,  1,"");				
					Doc_PrintLines	( nDocID,  1,"Cursed the spirit which did not last.");				
					Doc_PrintLine	( nDocID,  1,"");				
					Doc_PrintLines	( nDocID,  1,"Of desire doth now tell our song.");				
					Doc_PrintLine	( nDocID,  1,"");				
					Doc_PrintLines	( nDocID,  1,"For unity is forever gone.");				
					Doc_PrintLines	( nDocID,  1,"");
					Doc_Show		( nDocID );
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_HUNTANDPREY (C_ITEM)
{	
	name 					=	"Hunt and Prey";
	mainflag 				=	ITEM_KAT_DOCS;			
									
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_02.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Hunt and Prey";
	//TEXT[0]				= "";
	////COUNT[0]			= ;
	//TEXT[1]				= "";
	////COUNT[1]			= ;
	//TEXT[2]				= "";
	//COUNT[2]			= ;
	//TEXT[3] 			= "";
	//COUNT[3]			= ;
	//TEXT[4]				= ""; 
	////COUNT[4]			= ;
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseJagd_und_Beute;
};

	FUNC VOID UseJagd_und_Beute()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga" , 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 	0		);
					
					//1.Seite
 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
					Doc_PrintLine	( nDocID,  0,""); 					
					Doc_PrintLines	( nDocID,  0,"His writings have outlasted the ages and his advice is considered a book on the art of hunting. Following the heavy battles in the north, every countryman now knows how to use a bow and arrows. Yet there are some rules to be followed when hunting which exceed the simple knowledge of how to use the weapon! Game is both timid and unpredictable.");
					
					//2.Seite

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");					
					Doc_PrintLines	( nDocID,  1,"The art of hunting with a bow is not merely ancient tradition, but the most common form of hunting. The techniques employed in this traditional method of hunting have hardly altered in the course of the millennia, and it is unlikely that they will change in the future. What circumstances really determine a hunt with a bow and arrow? To recognize these laws is the true art of bow hunting.");
					Doc_Show		( nDocID );
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_JOURNAL (C_Item)
{	
	name 					=	"Journal";

	mainflag 					=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_01.3ds";
	material 					=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Journal";
	TEXT[0]				= "An old tattered book.";
	////COUNT[0]			= ;
	TEXT[1]				= "There are pages missing.";
	////COUNT[1]			= ;
	//TEXT[2]				= "";
	//COUNT[2]			= ;
	//TEXT[3] 			= "";
	//COUNT[3]			= ;
	//TEXT[4]				= ""; 
	////COUNT[4]			= ;
	//TEXT[5]				= NAME_Value;
	//COUNT[5]			= value;
	on_state[0]				=	UseTagebuchOT;
	
	
};
	FUNC VOID UseTagebuchOT()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;				// DocManager 
					Doc_SetPages		( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga" ,	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" ,	0		);
					
					//1.Seite	
  					Doc_SetFont 		( nDocID, -1, "font_15_book.tga"); 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);
					Doc_PrintLine		( nDocID,  0,"Day 23");
					Doc_SetFont 		( nDocID, -1, "font_10_book.tga");
					Doc_PrintLines	( nDocID,  0,"I've lost all sense of time.");
					Doc_PrintLines	( nDocID,  0,"I suppose it must have been about 23 days ago that the Orcs caught us and forced us to work.");
					Doc_PrintLines	( nDocID,  0,"The work is hard and the bastards know no mercy. If you're weak, you're dead!");
					Doc_PrintLines	( nDocID,  0,"I want out of here, I don't care how!!!");
					Doc_PrintLine		( nDocID,  0,"");
					Doc_SetFont 		( nDocID, -1, "font_15_book.tga"); 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);
					Doc_PrintLine		( nDocID,  0,"Day 28");
					Doc_SetFont 		( nDocID, -1, "font_10_book.tga");
					Doc_PrintLines	( nDocID,  0,"We had to prolong the tunnels even further into the mountain.");
					Doc_PrintLines	( nDocID,  0,"The front area is already massive. If I only knew what we're doing this for.");

					//1.Seite	
  					Doc_SetFont 		( nDocID, -1, "font_15_book.tga"); 
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1); //  0 -> margins are in pixels
					Doc_PrintLine		( nDocID,  1,"Day 67");
					Doc_SetFont 		( nDocID, -1, "font_10_book.tga");
					Doc_PrintLines	( nDocID,  1,"I've heard that these Orc priests have no hearts. But if that's true, how come they're still alive?");
					Doc_PrintLines	( nDocID,  1,"Also, I've seen the sword the priests are so afraid of. If I only had it, I'd smack it straight into their bodies.");
					Doc_PrintLine		( nDocID,  1,"");
					Doc_SetFont 		( nDocID, -1, "font_15_book.tga"); 
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1); 
					Doc_PrintLine		( nDocID,  1,"Day 78");
					Doc_SetFont 		( nDocID, -1, "font_10_book.tga");
					Doc_PrintLines	( nDocID,  1,"The sword is lying in a room in the front part of the temple, but it's guarded by a priest.");
					Doc_PrintLines	( nDocID,  1,"I'm going to flee. I'll leave my diary here, maybe one day it'll be useful to somebody.");
					Doc_Show		( nDocID );
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_BLOODFLIES (C_Item)
{	
	name 					=	"The Bloodflies";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	150;

	visual 					=	"ItWr_Book_02_01.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "The Bloodflies";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseItWr_Bloodfly_01;
};

	FUNC VOID UseItWr_Bloodfly_01()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga",	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
 					Doc_PrintLine	( nDocID,  0,"Bloodflies");
  					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0," ");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
					Doc_PrintLine	( nDocID,  0,"About the Flies");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLines	( nDocID,  0,"But in that place, where the soil is damp and the air is humid, the flies gather, attracted by the sweat of all kinds of beings. They use their stings to kill their victims and feast on their blood.");
					Doc_PrintLine	( nDocID,  0,"");
					

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"To take such a sting is the art of many hunters in the swamp. Make a deep cut into the creature's abdomen, then cut in a zigzag line around the sting and remove it carefully, together with the tissue surrounding it. Let it bleed and scrape off the inedible meat.");	
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");
					Doc_Show		( nDocID );
/* 					
					if Knows_GetBFSting ==  FALSE
					{
					Knows_GetBFSting = TRUE;
					Log_CreateTopic (GE_AnimalTrophies,LOG_NOTE);
					B_LogEntry (GE_AnimalTrophies,"How to remove stings - bloodflies");	
					PrintScreen	("Learn: Remove sting", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
					}; */
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_ARTOFFIGHTING (C_ITEM)
{	
	name 					=	"The Art of Fighting";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "The Art of Fighting";
	//TEXT[0]				= "";                                                                                                                                                                                          
	////COUNT[0]			= ;
	//TEXT[1]				= "";
	////COUNT[1]			= ;
	//TEXT[2]				= "";
	//COUNT[2]			= ;
	//TEXT[3] 			= "";
	//COUNT[3]			= ;
	//TEXT[4]				= ""; 
	////COUNT[4]			= ;
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseKampfkunst;
};

	FUNC VOID UseKampfkunst()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga" , 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 	0		);
					
					//1.Seite

					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
   					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
  					Doc_PrintLine	( nDocID,  0,"");					
  					Doc_PrintLine	( nDocID,  0,"");					
  					Doc_PrintLine	( nDocID,  0,"");					
					Doc_PrintLines	( nDocID,  0,"For 2000 years, the teachings of this expert have determined the development of the art of fighting.");
  					Doc_PrintLine	( nDocID,  0,"");					
  					Doc_PrintLine	( nDocID,  0,"");					
   					Doc_PrintLines	( nDocID,  0,"Dexterity, composure, speed, observation and reactions are the skills which must be trained. Your movements must be well-coordinated and your posture correct if you want your powers to blossom.");			
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
  					Doc_PrintLine	( nDocID,  1,"");					
  					Doc_PrintLine	( nDocID,  1,"");					
  					Doc_PrintLine	( nDocID,  1,"");					
					Doc_PrintLines	( nDocID,  1,"The essence of the master's spiritual and physical teachings has survived many years.");
  					Doc_PrintLine	( nDocID,  1,"");					
  					Doc_PrintLine	( nDocID,  1,"");					
 					Doc_PrintLines	( nDocID,  1,"His unique success has influenced generations. For millennia, the face of the world has shifted and changed, but the harmony of inner powers with movements of the body has survived.");					
					Doc_Show		( nDocID );
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPES_01 (C_ITEM)
{	
	name 					=	"Recipes";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_04.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Recipes";
	TEXT[0]				= "Volume 1";
	////COUNT[0]			= ;
	//TEXT[1]				= "";
	////COUNT[1]			= ;
	//TEXT[2]				= "";
	//COUNT[2]			= ;
	//TEXT[3] 			= "";
	//COUNT[3]			= ;
	//TEXT[4]				= ""; 
	////COUNT[4]			= ;
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseRezepturen;
};

	FUNC VOID UseRezepturen()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0		);
					
					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		); 					
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
 					Doc_PrintLine	( nDocID,  0,"");										
					Doc_PrintLines	( nDocID,  0,"The Balm of Vision:");
					Doc_PrintLine	( nDocID,  0,"----------------");
					Doc_PrintLine	( nDocID,  0,"");		
					Doc_PrintLines	( nDocID,  0,"Cover the patient's eyes with bile. This secretion has a bitter taste. Placing this bitterness on the eye forces the patient to regard it, which makes him wise. He learns to see! Bitterness and wisdom are mutually exclusive opposites. They are each other's counterparts!");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");
					//Absatz
					Doc_PrintLines	( nDocID,  1,"Tears, suffering and disappointment are bitter, but wisdom is the consoling influence of every kind of pain. Bitterness and wisdom are alternatives. Where there is bitterness, there is no room for wisdom, and where there is wisdom, there is no bitterness.");
					Doc_Show		( nDocID );
	};

INSTANCE ITWR_REVIVED_RECIPES_02 (C_ITEM)
{	
	name 					=	"Recipes";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_04.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Recipes";
	TEXT[0]				= "Volume 2";
	////COUNT[0]			= ;
	//TEXT[1]				= "";
	////COUNT[1]			= ;
	//TEXT[2]				= "";
	//COUNT[2]			= ;
	//TEXT[3] 			= "";
	//COUNT[3]			= ;
	//TEXT[4]				= ""; 
	////COUNT[4]			= ;
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseRezepturen2;
};

	FUNC VOID UseRezepturen2()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0		);
					
					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		); 					
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
 					Doc_PrintLine	( nDocID,  0,"");										
					Doc_PrintLines	( nDocID,  0,"The Wine of Oblivion");
					Doc_PrintLine	( nDocID,  0,"--------------------");
						Doc_PrintLine	( nDocID,  0,"");			
					Doc_PrintLines	( nDocID,  0,"The best grapes for this wine are found high up on the slopes of Archolos. The art of allowing this wine to ripen to perfection lies in not disturbing it through any kind of movement. The grapes are blended with the common syos herb in front of the wine cellars.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");
					//Absatz
					Doc_PrintLines	( nDocID,  1,"Observe and marvel as the master turns the clear water of the well to wine. The people pay tribute to him and feast on his gift. The master punishes his lazy disciples by locking them in bottles. A fire is kindled and black snakes arise.");
					Doc_Show		( nDocID );
	};

//****************************************************************************

INSTANCE ITWR_REVIVED_KALOMSRECIPE (C_Item)
{
	name 					=	"Kalom's Recipe";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	100;

	visual 					=	"ItWr_Scroll_01.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= name;
	TEXT[0]					= "The recipe for a healing potion.";
	////COUNT[0]			= ;
	//TEXT[1]				= "";
	////COUNT[1]			= ;
	//TEXT[2]				= "";
	//COUNT[2]			= ;
	//TEXT[3] 			= "";
	//COUNT[3]			= ;
	//TEXT[4]				= ""; 
	////COUNT[4]			= ;
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			= Use_KalomsRecipe;
};

func VOID Use_KalomsRecipe()
{   
	var int nDocID;
	
	nDocID = 	Doc_Create		()			  ;	 
				Doc_SetPages	( nDocID,  2 );

				Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0		);
				
				//1.Seite

				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
				Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
				Doc_PrintLine	( nDocID,  0, ""									);
				Doc_PrintLine	( nDocID,  0,"Lifrun ak Gharak"); 		
				Doc_PrintLine	( nDocID,  0, ""									); 			
				Doc_PrintLines	( nDocID,  0,"Gharak Or Nach bin thu. Lifrun mar Orag chtah. Shrunk esp Horinth.");
				
				//2.Seite

				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1, ""					);	
				Doc_PrintLine	( nDocID,  1, ""					);					
				Doc_PrintLines	( nDocID,  1,"It seems to make sense if you read it backwards.");
				Doc_PrintLine	( nDocID,  1, ""					);	
				Doc_PrintLine	( nDocID,  1,"          - Kalom");	
				
				
				
				
				Doc_Show		( nDocID );
};

//****************************************************************************
//			NOTES
//****************************************************************************



//****************************************************************************
//			RECIPES
//****************************************************************************



//****************************************************************************
//			MAPS
//****************************************************************************

instance ITWR_REVIVED_MAP_VALLEY (C_Item)
{
	name 		= "Map of the Valley of Mines";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 350;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_ITWR_REVIVED_MAP_VALLEY;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_ITWR_REVIVED_MAP_VALLEY()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ITWR_REVIVED_MAP_VALLEY);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "MAP_VALLEYOFMINES.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_SetLevel		(Document, "VALLEYOFMINES\OLDWORLD.zen");
					Doc_SetLevelCoords	(Document, -75642, 55012, 74528, -54472);
					Doc_Show			(Document);
	};

instance ITWR_REVIVED_MAP_VALLEY_GAROND (C_Item)
{
	name 		= "Garond's Mine Map";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 350;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_ITWR_REVIVED_MAP_VALLEY_GAROND;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_ITWR_REVIVED_MAP_VALLEY_GAROND()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ITWR_REVIVED_MAP_VALLEY_GAROND);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "MAP_VALLEYOFMINES_GAROND.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_SetLevel		(Document, "VALLEYOFMINES\OLDWORLD.zen");
					Doc_SetLevelCoords	(Document, -75642, 55012, 74528, -54472);
					Doc_Show			(Document);
	};

instance ITWR_REVIVED_MAP_VALLEY_DRAGONS (C_Item)
{
	name 		= "Dragon locations in the Valley";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 350;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_ITWR_REVIVED_MAP_VALLEY_DRAGONS;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_ITWR_REVIVED_MAP_VALLEY_DRAGONS()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ITWR_REVIVED_MAP_VALLEY_DRAGONS);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "MAP_VALLEYOFMINES_DRAGONS.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_SetLevel		(Document, "VALLEYOFMINES\OLDWORLD.zen");
					Doc_SetLevelCoords	(Document, -75642, 55012, 74528, -54472);
					Doc_Show			(Document);
	};

instance ITWR_REVIVED_MAP_VALLEY_CAVES (C_Item)
{
	name 		= "Caves of the Valley of Mines";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 350;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_ITWR_REVIVED_MAP_VALLEY_CAVES;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_ITWR_REVIVED_MAP_VALLEY_CAVES()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ITWR_REVIVED_MAP_VALLEY_CAVES);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "MAP_VALLEYOFMINES_CAVES.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_SetLevel		(Document, "VALLEYOFMINES\OLDWORLD.zen");
					Doc_SetLevelCoords	(Document, -75642, 55012, 74528, -54472);
					Doc_Show			(Document);
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_MAP_FOCUS (C_Item)
{	
	name 					=	"Saturas' Focus Map";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	15;

	visual 					=	"ItWr_Map_01.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UseFocimap;

	description				= name;
	TEXT[0]					= "The tips of the pentagram";
	TEXT[1]					= "reveal the locations of all five";
	TEXT[2]					= "focus stones which were used to create";
	TEXT[3]					= "the Magic Barrier. The map is old";
	TEXT[4]					= "and the stones might have been moved to";
	TEXT[5]					= "other places since.";
};

FUNC VOID UseFocimap()
{
	var int nDocID;
	
	nDocID = 	Doc_CreateMap	()			  ; 
				Doc_SetLevel	( nDocID,	"WORLD.ZEN" );
				Doc_SetPages	( nDocID, 1 );                         
				Doc_SetPage 	( nDocID, 0, "Map_World_Foki.tga", 	1	);  //  1 -> DO NOT SCALE 

				Doc_Show		( nDocID 	);
};

//****************************************************************************
//			SPECIAL
//****************************************************************************

INSTANCE ITWR_REVIVED_ALMANAC (C_Item)
{	
	name 					=	"Almanac";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;	

	value 					=	0;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				= 	UseItWrFokusbuch;
	description				=	name;
	TEXT[0]					=	"This ancient magic book contains some";
	TEXT[1]					=	"magic formulas which all refer to the use";
	TEXT[2]					=	"of so-called focus stones.";
};
	FUNC VOID UseItWrFokusbuch()
	{   
				
					/* if (Wissen_Almanach == FALSE)
					&& Npc_IsPlayer (self)
					{
						//B_GiveXP (50);
						Wissen_Almanach = TRUE;
					}; */
				
					var int			nDocID;	
					nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_PrintLine	( nDocID,  0,"Chapter 23");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
					Doc_PrintLine	( nDocID,  0,"The Focusing of Powers");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"The power inherent in the stone increases continuously and is unleashed by the words of the magician. Be it lasting or a single blow, this is within his judgment alone.");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"But once unleashed, the focus becomes devoid of power, remaining but an empty shell.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,  "");
					Doc_PrintLines	( nDocID,  1,"The words that must be spoken to unleash the power of a focus are accessible to many artists of arcane power. Even the knowledge of endowing a new artifact with magic powers has become more of a magical custom than a secret of the knowing.");
					Doc_PrintLine	( nDocID,  1,  "");
					Doc_PrintLines	( nDocID,  1,"But only a chosen few have the knowledge needed to recharge a used focus stone. This formula of days long past serves as a sign of the high gift.");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"Now, oh knowing one, open your mind to the words of the ancient power.");
					
					Doc_Show		( nDocID );
	};

//****************************************************************************

INSTANCE ITWR_REVIVED_CRYPT (C_ITEM)
{	
	name 				=	"The Crypt";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;

	value 				=	100;

	visual 				=	"ItWr_Book_02_03.3ds";
	material 			=	MAT_LEATHER;

	scemeName			=	"MAP";
	description			= "The Crypt";
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
};

//****************************************************************************
//****************************************************************************

INSTANCE ITWR_REVIVED_CERTIFICATE (C_Item)
{	
	name 			=	"Certificate";
	
	mainflag 		=	ITEM_KAT_DOCS;
	flags 			=	0;

	value 			=	4;

	visual 			=	"ItWr_Scroll_01.3DS";
	material 		=	MAT_LEATHER;

	scemeName		=	"MAP";	
	on_state[0]		=	UseUrkunde;
	description		=	"Title Deed";
	TEXT[0]			=	"Entitles the holder to claim the";
	TEXT[1]			=	"territory of the mountain fort.";
	TEXT[5]			=	"Value                                   400 pounds of gold";
};

FUNC VOID UseUrkunde()
{   
	var int nDocID;
	
	nDocID = 	Doc_Create		()			  ;								 
				Doc_SetPages	(nDocID,  1 );                         
				Doc_SetPage 	(nDocID,  0, "letters.TGA"  , 0); 
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);  
				Doc_SetFont 	(nDocID, -1, "font_15_book.tga");
				Doc_PrintLine	(nDocID,  0,"Certificate");
				Doc_SetFont 	(nDocID, -1, "font_10_book.tga");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0,"I, Bergmar, Burgrave of the Western Field and presiding judge over the lands of my Lord of Tymorisin, the region surrounding Khorinis, ... hereby declare ... that I ... surrender and sell ... to the holder of this document ... and to the house of Innos the fief of the mountain fort (along with further tenths of my revenue and the mines contained therein) for 400 units of gold.");
				Doc_Show		(nDocID );
};
	
//****************************************************************************
//			SPECIAL - CHROMANIN
//****************************************************************************

INSTANCE ITWR_REVIVED_CHROMANIN_01(C_Item)
{	
	name 					=	"Old Book";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	10;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Chromanin";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	Usetheriddle1;
};

	FUNC VOID Usetheriddle1()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
   					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Chromanin"			);
					Doc_PrintLine	( nDocID,  0, "-----------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "He who is willing to renounce all depravity and wanders on the path of righteousness, shall know where the source of my power lies hidden. So that he might use it to break the chains of this world and prove worthy to receive Chromanin.");
					
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "The Wise One sees to having a general overview before he dedicates himself to his next mission.");
					Doc_Show		( nDocID );
				
					if (riddle1 == FALSE)
					{
						B_GivePlayerXP	(XP_Revived_Chromanin);
						Snd_Play 		("CS_Prayer_FokusFinal");	

						Log_CreateTopic		(theriddle_log,		LOG_MISSION);
						Log_SetTopicStatus	(theriddle_log,		LOG_RUNNING);
						B_LogEntry			(theriddle_log,		"I dug a very strange tome near the Abandoned Mine. Chromanin! It seems to be a riddle a mysterious stranger set to this world: ...The Wise One sees to having a general overview before he dedicates himself to his next mission... Mmmh! I don't quite understand yet, but perhaps in time I will."); 
						Wld_InsertItem			(ITWR_REVIVED_CHROMANIN_02,"REVIVED_CHROMANIN_002");
					
						riddle1 = TRUE;
					
					};
	};

INSTANCE ITWR_REVIVED_CHROMANIN_02(C_Item)
{	
	name 					=	"Old Book";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	10;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Chromanin 2";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	Usetheriddle2;
};

	FUNC VOID Usetheriddle2()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Chromanin"			);
					Doc_PrintLine	( nDocID,  0, "-----------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Carried from the tides of time, Chromanin's visions have opened my eyes. No price could be high enough to ever renounce my faith in them, for it touched my heart too intensely.");
					
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "What is devided will be reunited, after being massively separated for a short time.");
					Doc_Show		( nDocID );
					
					if (riddle2 == FALSE)
					{					
						B_GivePlayerXP	(XP_Revived_Chromanin);
						Snd_Play 		("CS_Prayer_FokusFinal");	

						B_LogEntry			(theriddle_log,		"I found a second book of the name Chromanin. Again, it sets a riddle to me... What is devided will be reunited, after being massively separated for a short time... "); 
						Wld_InsertItem			(ITWR_REVIVED_CHROMANIN_03,"REVIVED_CHROMANIN_003");
					
						riddle2  =  TRUE;
					
					};
	
	};
INSTANCE ITWR_REVIVED_CHROMANIN_03(C_Item)
{	
	name 					=	"Old Book";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	10;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Chromanin 3";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	Usetheriddle3;
};

	FUNC VOID Usetheriddle3()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
   					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Chromanin"			);
					Doc_PrintLine	( nDocID,  0, "-----------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Oh, Ancient Gods. How can it be that a man like me, simple and unworthy, may receive such great a legacy. I feel great fear to lose all of it again by a slight faltering in word or deed.");
					
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "The wise fisherman occasionally tries to get lucky on the other side of the lake.");
					Doc_Show		( nDocID );



					if (riddle3 == FALSE)
					{		
						B_GivePlayerXP	(XP_Revived_Chromanin);
						Snd_Play 		("CS_Prayer_FokusFinal");	

						B_LogEntry			(theriddle_log,		"I found the third book. I think I am beginning to understand the way this works! ...The wise fisherman occasionally tries to get lucky on the other side of the lake..."); 
						Wld_InsertItem			(ITWR_REVIVED_CHROMANIN_04,"REVIVED_CHROMANIN_004");
						
						riddle3   =  TRUE;
					
					};
					
					
	};
				
				
INSTANCE ITWR_REVIVED_CHROMANIN_04(C_Item)
{	
	name 					=	"Old Book";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	10;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Chromanin 4";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	Usetheriddle4;
};

	FUNC VOID Usetheriddle4()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Chromanin"			);
					Doc_PrintLine	( nDocID,  0, "-----------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "I dare not hope to be in the presence of Chromanin one day. Gone are the days of wasting and wailing. So easy it will be to acheive absolute perfection. I'm not far from it!");
					
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Long forgotten are the deeds of those who once were aboard.");
					Doc_Show		( nDocID );
					

					if (riddle4 == FALSE)
					{					
						B_GivePlayerXP	(XP_Revived_Chromanin);
						Snd_Play 		("CS_Prayer_FokusFinal");	

						B_LogEntry			(theriddle_log,		"Number four. I am beginning to ask myself if I am fooled around by this guy! ...Long forgotten are the deeds of those who once were aboard..."); 			
						Wld_InsertItem			(ITWR_REVIVED_CHROMANIN_05,"REVIVED_CHROMANIN_005");
					
					
						riddle4 = TRUE;
					
					};
					
					
					
	};
								
INSTANCE ITWR_REVIVED_CHROMANIN_05(C_Item)
{	
	name 					=	"Old Book";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	10;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Chromanin 5";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	Usetheriddle5;
};

	FUNC VOID Usetheriddle5()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Chromanin"			);
					Doc_PrintLine	( nDocID,  0, "-----------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "But I shall not walk this path alone. This honor is mine. I must accept to share the power within myself with the worthy ones who are to come and find me. I hope they're coming soon...");
					
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "You will find me where it all began.");
					Doc_Show		( nDocID );




					if (riddle5 == FALSE)
					{
						B_GivePlayerXP	(XP_Revived_Chromanin);
						Snd_Play 		("CS_Prayer_FokusFinal");	

						B_LogEntry			(theriddle_log,		"This one seems to be the last. I'm eager to find out who or what I'm going to encounter... You will find me where it all began..."); 
		
						//Wld_InsertNpc				(Bau_940_Riddler,"");
						//var C_NPC riddler; riddler = Hlp_GetNpc(Bau_940_Riddler);
						//Npc_ChangeAttribute	(riddler, ATR_HITPOINTS, -riddler.attribute[ATR_HITPOINTS_MAX]);
						Wld_InsertItem			(ITWR_REVIVED_CHROMANIN_06,"REVIVED_CHROMANIN_006");

						riddle5  =  TRUE;
					
					};
	};

INSTANCE ITWR_REVIVED_CHROMANIN_06(C_Item)
{	
	name 					=	"Old Book";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	10;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Chromanin 6";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	Usetheriddle6;
};

	FUNC VOID Usetheriddle6()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Chromanin"			);
					Doc_PrintLine	( nDocID,  0, "-----------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "");
				
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "get bent");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_Show		( nDocID );

					if (riddle6 == FALSE)
					{
						B_GivePlayerXP	(XP_Revived_Chromanin);
						Snd_Play 		("CS_Prayer_FokusFinal");	

						//B_LogEntry			(theriddle_log,		"The mysterious stranger is dead. Those demons have killed him. There seemed to be some kind of bond between him an those creatures from hell. Otherwise, he wouldn't have come back to this place. He's taken the secret he apparently wanted tho share to the grave."); 
						B_LogEntry			(theriddle_log, "'Where it all began', huh? Who would have thought it's about the exchange spot of all things? It's a shame I will never meet the author of these books or learn his intentions. Seems he's taken the secret he apparently wanted to share to the unknown.");
						Log_SetTopicStatus	(theriddle_log,		LOG_SUCCESS);

						/* Snd_Play 		("FoundRiddler");					
						Wld_InsertNpc	(SkeletonMage,		"OW_FOGDUNGEON_36_MOVEMENT");
						Wld_InsertNpc	(Skeleton,			"OW_FOGDUNGEON_36_MOVEMENT"); 
						Wld_InsertNpc	(SkeletonWarrior,	"OW_FOGDUNGEON_36_MOVEMENT"); 
						Wld_InsertNpc	(Skeleton,			"OW_FOGDUNGEON_36_MOVEMENT2"); 
						Wld_InsertNpc	(SkeletonScout,		"OW_FOGDUNGEON_36_MOVEMENT2");
						Wld_InsertNpc	(SkeletonWarrior,	"OW_FOGDUNGEON_37"); 
						Wld_InsertNpc	(SkeletonMage,		"OW_FOGDUNGEON_37"); */
						
						riddle6 = TRUE;
					
					};
	};

//****************************************************************************
//			SPECIAL - MISSING HUNTERS
//****************************************************************************

INSTANCE ITWR_REVIVED_HUNTERNOTES_FIRST(C_Item)
{	
	name 					=	"Old Note";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	10;

	visual 					=	"ItWr_Scroll_01.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "First Message";

	TEXT[1]				= "Hastily written letter";
	TEXT[2]				= "It's signed with Trokar's name.";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	UseHunterRiddleFIRST;
};

	FUNC VOID UseHunterRiddleFIRST()
	{   
		var int nDocID;
	
		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 	);
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			);
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		);
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "Got a tip from the dealer about a rare beast sighting up north.");
					Doc_PrintLines	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "Said there's something big moving in the dark forest.");	
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "We leave at dawn. Should take us a few days at best. If you need me, check the old camp.");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_Show		( nDocID );
				
					if (riddleHuntersFIRST == FALSE)
					{
						if(theHunterRiddle_mis != LOG_RUNNING)
						{
							Log_CreateTopic		(theHunterRiddle_log,		LOG_MISSION);
							Log_SetTopicStatus	(theHunterRiddle_log,		LOG_RUNNING);

							theHunterRiddle_mis = LOG_RUNNING;
						};
						B_LogEntry			(theHunterRiddle_log, "A hunter named Trokar left the city for their usual camp. No mention of trouble yet, but who did he leave with? I should check the camp that Bartok mentioned."); 
						Wld_InsertItem			(ITWR_REVIVED_HUNTERNOTES_01,"REVIVED_HUNTERNOTES_001");
					
						riddleHuntersFIRST = TRUE;
					
					};
	};

INSTANCE ITWR_REVIVED_HUNTERNOTES_01(C_Item)
{	
	name 					=	"Old Note";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	10;

	visual 					=	"ItWr_Scroll_01.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Second Message";

	TEXT[1]				= "Hastily written letter";
	TEXT[2]				= "It's signed with Trokar's name.";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	UseHunterRiddle1;
};

	FUNC VOID UseHunterRiddle1()
	{   
		var int nDocID;
	
		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 	);
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			);
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		);
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "The trip's going well so far.");
					Doc_PrintLines	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "We'll check the dark forest tomorrow, should be good hunting up near the cliffs.");	
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Maybe we'll get lucky. If not, I'll swing back toward the city in a few days.");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_Show		( nDocID );
				
					if (riddleHunters1 == FALSE)
					{
						B_LogEntry			(theHunterRiddle_log, "The camp is in poor shape and there's no sign of anyone who lived here before Dragomir. Trokar mentioned moving into the forest north from the city, that's where the beast was seen after all."); 
						Wld_InsertItem			(ITWR_REVIVED_HUNTERNOTES_02,"REVIVED_HUNTERNOTES_002");
					
						riddleHunters1 = TRUE;
					
					};
	};

INSTANCE ITWR_REVIVED_HUNTERNOTES_02(C_Item)
{	
	name 					=	"Old Note";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	10;

	visual 					=	"ItWr_Scroll_01.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Third Message";

	TEXT[1]				= "Hastily written letter";
	TEXT[2]				= "It's signed with Trokar's name.";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	UseHunterRiddle2;
};

	FUNC VOID UseHunterRiddle2()
	{   
		var int nDocID;
	
		nDocID = 	Doc_Create		()			  ;
					Doc_SetPages	( nDocID,  1 	);
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			);
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		);
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "They came at night.");
					Doc_PrintLines	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "Shadows between the trees. No bodies, no footprints. We ran.");	
					Doc_PrintLines	( nDocID,  0, "I lost my partner in the midst of all of this, tried to find him but no success.");
					Doc_PrintLines	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "I'm going back to the city.");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "It's watching me.");
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_Show		( nDocID );
					
					if (riddleHunters2 == FALSE)
					{					
						B_LogEntry			(theHunterRiddle_log, "Something attacked them, but there are no clear signs of what, only destruction. Trokar went in the direction of the city, but then why didn't he return? Did he go around it?"); 
						Wld_InsertItem			(ITWR_REVIVED_HUNTERNOTES_03,"REVIVED_HUNTERNOTES_003");
					
						riddleHunters2  =  TRUE;
					
					};
	
	};
INSTANCE ITWR_REVIVED_HUNTERNOTES_03(C_Item)
{	
	name 					=	"Old Note";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	10;

	visual 					=	"ItWr_Scroll_01.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Fourth Message";

	TEXT[1]				= "Hastily written letter";
	TEXT[2]				= "It's signed with Trokar's name.";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	UseHunterRiddle3;
};

	FUNC VOID UseHunterRiddle3()
	{   
		var int nDocID;
	
		nDocID = 	Doc_Create		()			  ;
					Doc_SetPages	( nDocID,  1 	);
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			);
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		);
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "I thought I saw him going around the city.");
					Doc_PrintLines	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "Saw lights between the trees, but when I got closer, nothing was there.");	
					Doc_PrintLines	( nDocID,  0, "No sound, no wind. Just... stillness.");
					Doc_PrintLines	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "I don't trust the woods anymore. Going to the high camp on the plateau.");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_Show		( nDocID );



					if (riddleHunters3 == FALSE)
					{		
						B_LogEntry			(theHunterRiddle_log, "Trokar thought he saw his partner, that's why he didn't go into the city but went looking! Seems the goblins found the note before me, because I'm definitely not going the right direction."); 
						Wld_InsertItem			(ITWR_REVIVED_HUNTERNOTES_04,"REVIVED_HUNTERNOTES_004");
						
						riddleHunters3   =  TRUE;
					
					};
					
					
	};
				
				
INSTANCE ITWR_REVIVED_HUNTERNOTES_04(C_Item)
{	
	name 					=	"Old Note";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	10;

	visual 					=	"ItWr_Scroll_01.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Fifth Message";

	TEXT[1]				= "Hastily written letter";
	TEXT[2]				= "It's signed with Trokar's name.";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	UseHunterRiddle4;
};

	FUNC VOID UseHunterRiddle4()
	{   
		var int nDocID;
	
		nDocID = 	Doc_Create		()			  ;
					Doc_SetPages	( nDocID,  1 	);
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			);
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		);
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "It's watching me.");
					Doc_PrintLines	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "Every time I close my eyes, I hear it moving closer. It doesn't leave tracks, doesn't make a sound.");	
					Doc_PrintLines	( nDocID,  0, "Maybe I'm losing my mind. I can't stay here. There's only one place left.");
					Doc_PrintLines	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Maybe mercenaries will be of some help?");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_Show		( nDocID );
					

					if (riddleHunters4 == FALSE)
					{					
						B_LogEntry			(theHunterRiddle_log, "Trokar was still being hunted being so far away from the dark forest? And he went to mercenaries instead of back to the city, is he stupid?"); 
						Wld_InsertItem			(ITWR_REVIVED_HUNTERNOTES_05,"REVIVED_HUNTERNOTES_005");

						riddleHunters4 = TRUE;
					};			
	};
								
INSTANCE ITWR_REVIVED_HUNTERNOTES_05(C_Item)
{	
	name 					=	"Old Note";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	10;

	visual 					=	"ItWr_Scroll_01.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Sixth Message";

	TEXT[1]				= "Hastily written letter";
	TEXT[2]				= "It's signed with Trokar's name.";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	UseHunterRiddle5;
};

	FUNC VOID UseHunterRiddle5()
	{   
		var int nDocID;
	
		nDocID = 	Doc_Create		()			  ;
					Doc_SetPages	( nDocID,  1 	);
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			);
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		);
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "It's still out there.");
					Doc_PrintLines	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "Watching. Waiting. No one else sees it. No one believes me.");	
					Doc_PrintLines	( nDocID,  0, "I tried talking to the mercs, but they just laughed it off.");
					Doc_PrintLines	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "If this thing has been following me, I will make my stand where it was found, not here.");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_Show		( nDocID );




					if (riddleHunters5 == FALSE)
					{
						//B_GiveXP (850);
						B_LogEntry			(theHunterRiddle_log, "Trokar seemingly went mad and no mercenary decided to help him, so he decided to go back north, but not to the forest. There should be something in the mountains."); 
						//Snd_Play 		("FoundRiddlersBook");				
						//Wld_InsertNpc				(Bau_940_Riddler,"");
						//var C_NPC riddler; riddler = Hlp_GetNpc(Bau_940_Riddler);
						//Npc_ChangeAttribute	(riddler, ATR_HITPOINTS, -riddler.attribute[ATR_HITPOINTS_MAX]);
						Wld_InsertItem			(ITWR_REVIVED_HUNTERNOTES_06,"REVIVED_HUNTERNOTES_006");

						riddleHunters5  =  TRUE;
					
					};
	};

INSTANCE ITWR_REVIVED_HUNTERNOTES_06(C_Item)
{	
	name 					=	"Old Note";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	10;

	visual 					=	"ItWr_Scroll_01.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Last Message";

	TEXT[1]				= "Hastily written letter";
	TEXT[2]				= "It's signed with Trokar's name.";
	
	TEXT[4]				= "It's the last page.";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	UseHunterRiddle6;
};

	FUNC VOID UseHunterRiddle6()
	{   
		var int nDocID;
	
		nDocID = 	Doc_Create		()			  ;
					Doc_SetPages	( nDocID,  1 	);
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			);
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		);
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "It was never hunting us.");
					Doc_PrintLines	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "We were never meant to see it. It was watching, waiting, and we walked into its den.");	
					Doc_PrintLines	( nDocID,  0, "I see it now, in the dark. It sees me too.");
					Doc_PrintLines	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "I am already lost.");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_Show		( nDocID );

					if (riddleHunters6 == FALSE)
					{
						//B_GiveXP (1000);
						B_LogEntry			(theHunterRiddle_log,		"Trokar's final words. No body, just this note. Whatever he saw, it took him. Maybe it's still here. Maybe it's watching me now. Or maybe he really did go crazy after smoking all that swampweed."); 
						Log_SetTopicStatus	(theHunterRiddle_log,		LOG_SUCCESS);
						/* Snd_Play 		("FoundRiddler");					
						Wld_InsertNpc	(SkeletonMage,		"OW_FOGDUNGEON_36_MOVEMENT");
						Wld_InsertNpc	(Skeleton,			"OW_FOGDUNGEON_36_MOVEMENT"); 
						Wld_InsertNpc	(SkeletonWarrior,	"OW_FOGDUNGEON_36_MOVEMENT"); 
						Wld_InsertNpc	(Skeleton,			"OW_FOGDUNGEON_36_MOVEMENT2"); 
						Wld_InsertNpc	(SkeletonScout,		"OW_FOGDUNGEON_36_MOVEMENT2");
						Wld_InsertNpc	(SkeletonWarrior,	"OW_FOGDUNGEON_37"); 
						Wld_InsertNpc	(SkeletonMage,		"OW_FOGDUNGEON_37"); */
						
						riddleHunters6 = TRUE;
					};
	};


//****************************************************************************
//			SPECIAL - ARKHAN NOTES
//****************************************************************************

INSTANCE ITWR_REVIVED_QUALSHY_01(C_Item)
{	
	name 					=	"Weird Note";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	10;

	visual 					=	"ItWr_Scroll_01.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Page 5";

	TEXT[1]				= "Remnants of an old diary.";
	TEXT[2]				= "Seems to have belong to a Shadow.";

	on_state[0]			=	UseQualshyRiddle1;
};

	FUNC VOID UseQualshyRiddle1()
	{   
		var int nDocID;
	
		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1);
					Doc_SetPage 	( nDocID,  0, "NoteFromArkhan_5.TGA", 0); // <--- Texture of the Note image from IOC
					Doc_Show		( nDocID );
		
					if (riddleQualshy1 == FALSE)
					{
						B_GivePlayerXP	(XP_Revived_QualshyNotes);

						Log_CreateTopic		(theQualshyRiddle_log,		LOG_MISSION);
						Log_SetTopicStatus	(theQualshyRiddle_log,		LOG_RUNNING);
						B_LogEntry			(theQualshyRiddle_log,		"Seems I have found something personal - pages from a diary of an Old Camp Shadow. All these people from the old Colony truly lived their lives as if they weren't locked in this accursed valley. This page has ink spilled on half of itself, I wonder if it was deliberate..."); 
						Wld_InsertItem		(ITWR_REVIVED_QUALSHY_02,"REVIVED_QUALSHY_002");
					
						riddleQualshy1 = TRUE;
					};
	};

INSTANCE ITWR_REVIVED_QUALSHY_02(C_Item)
{	
	name 					=	"Weird Note";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	10;

	visual 					=	"ItWr_Scroll_01.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Page 8";

	TEXT[1]				= "Remnants of an old diary.";
	TEXT[2]				= "Seems to have belong to a Shadow.";

	on_state[0]			=	UseQualshyRiddle2;
};

	FUNC VOID UseQualshyRiddle2()
	{   
		var int nDocID;
	
		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1);
					Doc_SetPage 	( nDocID,  0, "NoteFromArkhan_8.TGA", 0); // <--- Texture of the Note image from IOC
					Doc_Show		( nDocID );
		
					if (riddleQualshy2 == FALSE)
					{
						B_GivePlayerXP	(XP_Revived_QualshyNotes);

						B_LogEntry			(theQualshyRiddle_log,		"Another note from the unnamed Shadow. Looks like he was a hunter and really enjoyed his work outside of the camp. What is this 'goal' that he mentions? What was his purpose in the Colony?"); 
						Wld_InsertItem		(ITWR_REVIVED_QUALSHY_03,"REVIVED_QUALSHY_003");
					
						riddleQualshy2 = TRUE;
					};
	};

INSTANCE ITWR_REVIVED_QUALSHY_03(C_Item)
{	
	name 					=	"Weird Note";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	10;

	visual 					=	"ItWr_Scroll_01.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Page 10";

	TEXT[1]				= "Remnants of an old diary.";
	TEXT[2]				= "Seems to have belong to a Shadow.";

	on_state[0]			=	UseQualshyRiddle3;
};

	FUNC VOID UseQualshyRiddle3()
	{   
		var int nDocID;
	
		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1);
					Doc_SetPage 	( nDocID,  0, "NoteFromArkhan_10.TGA", 0); // <--- Texture of the Note image from IOC
					Doc_Show		( nDocID );
		
					if (riddleQualshy3 == FALSE)
					{
						B_GivePlayerXP	(XP_Revived_QualshyNotes);

						B_LogEntry			(theQualshyRiddle_log,		"This just went in a whole different direction.. Nightmares? Spirits? What stone is he talking about? And who is this 'Asden'?"); 
						Wld_InsertItem		(ITWR_REVIVED_QUALSHY_04,"REVIVED_QUALSHY_004");
					
						riddleQualshy3 = TRUE;
					};
	};

INSTANCE ITWR_REVIVED_QUALSHY_04(C_Item)
{	
	name 					=	"Weird Note";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	10;

	visual 					=	"ItWr_Scroll_01.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Page 14";

	TEXT[1]				= "Remnants of an old diary.";
	TEXT[2]				= "Seems to have belong to a Shadow.";

	on_state[0]			=	UseQualshyRiddle4;
};

	FUNC VOID UseQualshyRiddle4()
	{   
		var int nDocID;
	
		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1);
					Doc_SetPage 	( nDocID,  0, "NoteFromArkhan_14.TGA", 0); // <--- Texture of the Note image from IOC
					Doc_Show		( nDocID );
		
					if (riddleQualshy4 == FALSE)
					{
						B_GivePlayerXP	(XP_Revived_QualshyNotes);

						Wld_InsertNpc		(DemonLord, "REVIVED_QUALSHY_004_DEMON");
							Snd_Play ("DEM_Die");
							SC_ObsessionCounter = 100;	
							B_SCIsObsessed (hero);

						B_LogEntry			(theQualshyRiddle_log,		"I guess this is the 'stone' that he mentioned. This cursed magic source in the middle of the swamp birthed a demon when I picked up the note! That Shadow mentioned using an old magic hammer, but even that didn't manage to destroy the source after all. I need to get some help from the monastery before I end up just like that guy!"); 
						Wld_InsertItem		(ITWR_REVIVED_QUALSHY_05,"REVIVED_QUALSHY_005");
					
						riddleQualshy4 = TRUE;
					};
	};

INSTANCE ITWR_REVIVED_QUALSHY_05(C_Item)
{	
	name 					=	"Weird Note";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	10;

	visual 					=	"ItWr_Scroll_01.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Page 17";

	TEXT[1]				= "Remnants of an old diary.";
	TEXT[2]				= "Seems to have belong to a Shadow.";

	on_state[0]			=	UseQualshyRiddle5;
};

	FUNC VOID UseQualshyRiddle5()
	{   
		var int nDocID;
	
		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1);
					Doc_SetPage 	( nDocID,  0, "NoteFromArkhan_17.TGA", 0); // <--- Texture of the Note image from IOC
					Doc_Show		( nDocID );
		
					if (riddleQualshy5 == FALSE)
					{
						B_GivePlayerXP	(XP_Revived_QualshyNotes);

						B_LogEntry			(theQualshyRiddle_log,		"He's saying that all of the creatures living in this fortress didn't even budge to attack him? I wish I had that kind of luck.. Where was Lester during all of this? How old are those notes? Who is this Shadow and what happened to him?"); 
						Wld_InsertItem		(ITWR_REVIVED_QUALSHY_06,"REVIVED_QUALSHY_006");
					
						riddleQualshy5 = TRUE;
					};
	};

INSTANCE ITWR_REVIVED_QUALSHY_06(C_Item)
{	
	name 					=	"Weird Note";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	10;

	visual 					=	"ItWr_Scroll_01.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Page 20";

	TEXT[1]				= "Remnants of an old diary.";
	TEXT[2]				= "Seems to have belong to a Shadow.";
	
	TEXT[4]				= "It's the last page.";

	on_state[0]			=	UseQualshyRiddle6;
};

	FUNC VOID UseQualshyRiddle6()
	{   
		var int nDocID;
	
		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1);
					Doc_SetPage 	( nDocID,  0, "NoteFromArkhan_20.TGA", 0); // <--- Texture of the Note image from IOC
					Doc_Show		( nDocID );
		
					if (riddleQualshy6 == FALSE)
					{
						B_GivePlayerXP	(XP_Revived_QualshyNotes);

						B_LogEntry			(theQualshyRiddle_log,		"This is the last note of the Shadow, with letters drawn with the remnants of ink he found. Someone took it from him, maybe even that servant of Innos, and they have taken some map as well. Poor guy was possessed by a demon, with little control over himself and yet still managed to tell the tale. One can only assume that he died, and the creature I killed in the swamp was the one who got the hold on him."); 
						Log_SetTopicStatus	(theQualshyRiddle_log,		LOG_SUCCESS);
					
						riddleQualshy6 = TRUE;
					};
	};