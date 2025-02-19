//##########################################################################
//##
//##	Bookstand Alchemy
//##
//##########################################################################

var int RevivedBookstandRead_Alchemy1;
FUNC VOID Use_BookstandRevived_ALCHEMY1_S1()		//Alchemiebücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0,"");										
					Doc_PrintLines	( nDocID,  0,"The Wine of Oblivion");
					Doc_PrintLine	( nDocID,  0,"--------------------");
						Doc_PrintLine	( nDocID,  0,"");			
					Doc_PrintLines	( nDocID,  0,"The best grapes for this wine are found high up on the slopes of Archolos. The art of allowing this wine to ripen to perfection lies in not disturbing it through any kind of movement. The grapes are blended with the common syos herb in front of the wine cellars.");


					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		); 
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"Observe and marvel as the master turns the clear water of the well to wine. The people pay tribute to him and feast on his gift. The master punishes his lazy disciples by locking them in bottles. A fire is kindled and black snakes arise.");
					
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Alchemy1 == FALSE)
					{
						B_GivePlayerXP (XP_BookstandAlchemy);
						RevivedBookstandRead_Alchemy1 = TRUE;
					};	  

	};
};

var int RevivedBookstandRead_Alchemy2;
FUNC VOID Use_BookstandRevived_ALCHEMY2_S1()		//Alchemiebücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0,"");										
					Doc_PrintLines	( nDocID,  0,"The Balm of Vision:");
					Doc_PrintLine	( nDocID,  0,"----------------");
					Doc_PrintLine	( nDocID,  0,"");		
					Doc_PrintLines	( nDocID,  0,"Cover the patient's eyes with bile. This secretion has a bitter taste. Placing this bitterness on the eye forces the patient to regard it, which makes him wise. He learns to see! Bitterness and wisdom are mutually exclusive opposites. They are each other's counterparts!");

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"Tears, suffering and disappointment are bitter, but wisdom is the consoling influence of every kind of pain. Bitterness and wisdom are alternatives. Where there is bitterness, there is no room for wisdom, and where there is wisdom, there is no bitterness.");
					
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Alchemy2 == FALSE)
					{
						B_GivePlayerXP (XP_BookstandAlchemy);
						RevivedBookstandRead_Alchemy2 = TRUE;
					};	  

	};
};


//##########################################################################
//##
//##	Bookstand Astronomy
//##
//##########################################################################

var int RevivedBookstandRead_Astronomy1;
FUNC VOID Use_BookstandRevived_ASTRONOMY1_S1()		//Alchemiebücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0,"");										
					Doc_PrintLines	( nDocID,  0,"In the center lies the Morgrad, containing the four elements earth, water, fire and air. It is the place of transience, the heart of the inexpressible darkness of Beliar. Above all this towers the sphere of the heavens.");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLines	( nDocID,  0,"In the hierarchy of the universe, man is a receiver. His soul allows him to take part in the highest plane of existence, the divine spirit. Yet man's body is made from the substance of the Morgrad. He is a reflection of the world itself.");

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"The synodic orbit of the planets, that is the course they take between two identical positions in relation to the Morgrad of our world, varies by just a few degrees every century. We therefore conclude that we are constantly moving with the rest of the universe.");
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"When we created the first calendar, we observed the course of the moon to determine the length of the solar year.");
					
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Astronomy1 == FALSE)
					{
						B_GivePlayerXP (XP_BookstandMagic);
						RevivedBookstandRead_Astronomy1 = TRUE;
					};	  

	};
};


//##########################################################################
//##
//##	Bookstand Magic
//##
//##########################################################################

var int RevivedBookstandRead_Magic1;
FUNC VOID Use_BookstandRevived_MAGIC1_S1()		//Alchemiebücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0,"");										
					Doc_PrintLines	( nDocID,  0,"All magic originates from the magic powers of the user. The user is called a magician.");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"Every activation of a magic spell costs the magician a portion of his powers. These powers are referred to as mana.");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  0,"When the gods gave mankind the gift of magic, they taught them to make magic runes as well. The servants of the gods have taken over the glorious task of creating these artifacts of divine power and using them. The magician's Circle determines which kind of magic he is able to understand and to use. ");
					Doc_PrintLine	( nDocID,  1,"");
					
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Magic1 == FALSE)
					{
						B_GivePlayerXP (XP_BookstandMagic);
						RevivedBookstandRead_Magic1 = TRUE;
					};	  

	};
};

var int RevivedBookstandRead_Magic2;
FUNC VOID Use_BookstandRevived_MAGIC2_S1()		//Alchemiebücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0,"Elementary Arcanum");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"The Place of Magic in the Order of the Worldly");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"Much research has taken place on magic and its relation to the elements. It is just to claim that magic represents the perfect element. It has the power to transform all the elements and to shape them, which means it is superior to them.");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");	
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"Each element, when viewed in its purest form, unearths a connection to magic. Natural connections of this kind can only be found in very few places, and they are highly sought-after. A magus' ability to conjure up the elements, seemingly from nothing, proves that the power of magic is the purest, greatest good in existence.");
					
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Magic2 == FALSE)
					{
						B_GivePlayerXP (XP_BookstandMagic);
						RevivedBookstandRead_Magic2 = TRUE;
					};	  

	};
};

var int RevivedBookstandRead_Magic3;
FUNC VOID Use_BookstandRevived_MAGIC3_S1()		//Alchemiebücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0,"True Power");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"The Sacred Duty of the Skillful");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"It is power that distinguishes a magus from his fellow men. Equipped with the ability to influence the divine power, he is a being independent of the laws of nature which apply to mortal man.");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");	
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"Once a magus has reached a stage which enables him to rise above the limits of his existence, he can place himself on a higher plane than that in which mortal man lives. He can break through the boundaries of time and space, and not even death, the eve of existence, can stop him.");
					
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Magic3 == FALSE)
					{
						B_GivePlayerXP (XP_BookstandMagic);
						RevivedBookstandRead_Magic3 = TRUE;
					};	  

	};
};

var int RevivedBookstandRead_Magic4;
FUNC VOID Use_BookstandRevived_MAGIC4_S1()		//Alchemiebücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0,"The Secrets of Magic");
					
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"The magic is not inherent in the magus himself, he is far more able to work it. The only skill he possesses is the ability to influence and guide magic. A disciple of the art of magic must be able to use his spirit as a tool.");
					
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
					
					if (RevivedBookstandRead_Magic4 == FALSE)
					{
						B_GivePlayerXP (XP_BookstandMagic);
						RevivedBookstandRead_Magic4 = TRUE;
					};	  

	};
};

var int RevivedBookstandRead_Magic5;
FUNC VOID Use_BookstandRevived_MAGIC5_S1()		//Alchemiebücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0," ");
					Doc_PrintLine	( nDocID,  0,"A Gift from the Gods");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"Man has been trying to fathom the nature and origins of magic for centuries. But where should the search begin? How does one describe magic? It is the most conflicting power that has ever been known. It can kill and it can heal, it can create and it can destroy.");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"What does such power look like? Where can a man find this invisible, yet incredibly powerful force? Magic is what it is. It is the most marvelous and the most powerful gift the gods have ever given us. It is the divine gift presented to users and  weavers of magic. A healing power that only a few chosen ones are able to control.");	
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1,"Barthos of Laran");

					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Magic5 == FALSE)
					{
						B_GivePlayerXP (XP_BookstandMagic);
						RevivedBookstandRead_Magic5 = TRUE;
					};	  

	};
};

var int RevivedBookstandRead_Magic6;
FUNC VOID Use_BookstandRevived_MAGIC6_S1()		//Alchemiebücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"Some spells can be charged with a certain amount of magic power. They are also known as charging spells.");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"Other spells remain in force for as long as the magician lets his mana flow into them. These spells are referred to as investment spells.");

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  0,"The special feature of these magic formulas is that, although they are bound in runes, they can be cast by anybody with magic powers. The magic of these formulas can be activated at once. There are no restrictions to the teleportation spell.");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");

					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Magic6 == FALSE)
					{
						if(Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) < 1)
						&& (RevivedBookstandRead_Magic1 == TRUE)
						&& (RevivedBookstandRead_Magic2 == TRUE)
						&& (RevivedBookstandRead_Magic3 == TRUE)
						&& (RevivedBookstandRead_Magic4 == TRUE)
						&& (RevivedBookstandRead_Magic5 == TRUE)
						{
							B_RaiseAttribute (hero, ATR_MANA_MAX, 10);
							
							PrintScreen (Print_LearnFromBookstand, -1, 65, FONT_Screen, 2);
							Snd_Play ("MFX_Light_Cast");

							B_Say(hero, hero, "$VERSTEHE");
						};
						B_GivePlayerXP (XP_BookstandMagic);
						RevivedBookstandRead_Magic6 = TRUE;
					};	  

	};
};


//##########################################################################
//##
//##	Bookstand History
//##
//##########################################################################

var int RevivedBookstandRead_History1;
FUNC VOID Use_BookstandRevived_HISTORY1_S1()		//Alchemiebücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);  //  0 -> margins are in pixels
					
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0,"Magic Ore");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, FONT_Book);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"The best ore for use when forging weapons is doubtless found in the ore mines of Khorinis. It is of fundamental purity and suffused with magic. It is of incomparable strength, yet so soft that it cannot break. A weapon forged from this steel, which is mined far below the ground at an inexpressible cost of effort, is a match for any blade, albeit made of the strongest steel.");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");	
					Doc_PrintLines	( nDocID,  1,"It will break any shield and pierce any armor. Kings and heroes of old wielded weapons forged from the finest steel of Khorinis, and high prices are still paid for such weapons throughout Myrtana. But the ore itself demands a high price. Much effort is required to break it from the rock. It is almost as though the ore were fighting to remain within the womb of the earth.");
					
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_History1 == FALSE)
					{
						B_GivePlayerXP (XP_BookstandHistory);
						RevivedBookstandRead_History1 = TRUE;
					};	  

	};
};


//##########################################################################
//##
//##	Bookstand Special
//##
//##########################################################################

var int RevivedBookstandRead_Special1;
FUNC VOID Use_BookstandRevived_SPECIAL1_S1()		//Alchemiebücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);  //  0 -> margins are in pixels
					
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0,"A Powerful Art");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, FONT_Book);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"A Work for Those Instructed in the Arcane Art");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"A magician's ability to control the divine power grows. At first, it appears like a small seed in a field. It must be tended or it will wither. But once the seed begins to grow, its splendor unfolds.");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"It continues to grow with each passing day. The same applies to a receptive magus. His powers may be weak to begin with, but given time they will wax and thrive, unfolding a power whose limits are unforeseeable. To guide this power to the point of perfection is the sacred duty of every magus, for the seed sown by the gods is the greatest gift a mortal can receive.");
					
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Special1 == FALSE)
					{
						B_GivePlayerXP (XP_BookstandSpecial);
						B_RaiseAttribute (self, ATR_MANA_MAX, 5);
						RevivedBookstandRead_Special1 = TRUE;
					};	  

	};
};
