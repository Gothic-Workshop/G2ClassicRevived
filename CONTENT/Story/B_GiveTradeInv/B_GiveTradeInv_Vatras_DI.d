
FUNC VOID B_GiveTradeInv_Vatras_DI (var C_NPC slf)
{
		CreateInvItems (slf, ItMi_Gold, 230); 
		
		CreateInvItems 	 (slf, ItPl_Temp_Herb, 4); 
		CreateInvItems 	 (slf, ItPl_Perm_Herb, 2); 

		CreateInvItems 		(self, ItSc_LightHeal,2);
		CreateInvItems 		(self, ItSc_Zap,2);
		CreateInvItems 		(self, ItSc_Icebolt,2);
		CreateInvItems 		(self, ItSc_LightningFlash,1);
		CreateInvItems 		(self, ItSc_TrfScavenger,1);	
		CreateInvItems 		(self, ItSc_IceWave,2);

		CreateInvItems   (slf, ITPO_REVIVED_HEALTH_03,  30);
		CreateInvItems   (slf, ITPO_REVIVED_MANA_02,	30);
		CreateInvItems   (slf, ITPO_REVIVED_MANA_03,	20);
};
