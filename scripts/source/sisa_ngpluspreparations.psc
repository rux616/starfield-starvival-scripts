ScriptName SISA_NGPlusPreparations extends Quest

Group SISAActors
    Actor Property PlayerRef Auto Const
EndGroup

Group SISAQuests
	Quest Property MQ101 Auto Const
EndGroup

Group SISAPerks
    Perk Property SurvivalMonitorAddon Auto Const
    Perk Property SurvivalMonitorAddonDrunkenness Auto Const
    Perk Property SurvivalMonitorAddonSelfControl Auto Const
    Perk Property SurvivalAdrenaline Auto Const
    Perk Property SurvivalDamage Auto Const
    Perk Property DisableWeightForAidItems Auto Const
    Perk Property EconomyPerk Auto Const
    Perk Property AddWeightToUnweightItemsPerk Auto Const
    Perk Property MaintenanceRepairPerk Auto Const
    Perk Property FuelDiscountPerk Auto Const
    Perk Property StarviewOpenizer Auto Const
    Perk Property AdvancedLocksPerk Auto Const
    Perk Property AdvancedLocksDoorsPerk Auto Const
    Perk Property PocketPantsPerk Auto Const
    Perk Property WeaponControlDebuffPerk Auto Const
    Perk Property RoverSystemsMenuPerk Auto Const
    Perk Property JunkRecyclerPerk Auto Const
    Perk Property SelfControlPerk Auto Const
    Perk Property ReputationPerk Auto Const
    Perk Property ReputationClearancePerk Auto Const
    Perk Property StealthTakeDownPerk Auto Const
    Perk Property ConcealmentPerk Auto Const
    Perk Property LawEnforcementPerk Auto Const
    Perk Property WeaponDegradationExplosivePerk Auto Const
    Perk Property WeaponDegradationHeavyPerk Auto Const
    Perk Property WeaponDegradationMeleePerk Auto Const
    Perk Property WeaponDegradationHandgunsPerk Auto Const
    Perk Property WeaponDegradationHandgunsAutoPerk Auto Const
    Perk Property WeaponDegradationRiflesPerk Auto Const
    Perk Property WeaponDegradationRiflesAutoPerk Auto Const
    Perk Property WeaponDegradationShotgunsPerk Auto Const
    Perk Property WeaponDegradationToolsPerk Auto Const
    Perk Property WeaponDegradationSniperPerk Auto Const
    Perk Property SuitDegradationOutfitPerk Auto Const
    Perk Property SuitDegradationBoostpackPerk Auto Const
    Perk Property SuitDegradationHelmetPerk Auto Const
    Perk Property RepairVendorPerk Auto Const
    Perk Property ContrabandSellPerk Auto Const
    Perk Property InfirmaryEnhancedPerk Auto Const
    Perk Property MiningEnhancedPerk Auto Const
    Perk Property ResearchCritChancePerk Auto Const
    Perk Property WorkbenchFilteringPerk Auto Const
EndGroup

Int Property StarbornTriggerStage = 2000 auto const 

Function PrepareForNGPlus()            
	  RegisterForRemoteEvent(MQ101, "OnStageSet")                            	  
EndFunction

Function AbortForNGPlus()            
	  UnregisterForRemoteEvent(MQ101, "OnStageSet")                            	  
EndFunction

Event Quest.OnStageSet(Quest akSender, int auiStageID, int auiItemID)
		
	If akSender == MQ101 && auiStageID == StarbornTriggerStage
		 	    
		PlayerRef.RemovePerk(SurvivalAdrenaline)
		PlayerRef.RemovePerk(SurvivalDamage)
		PlayerRef.RemovePerk(SurvivalMonitorAddon)
		PlayerRef.RemovePerk(SurvivalMonitorAddonDrunkenness) 
		PlayerRef.RemovePerk(SurvivalMonitorAddonSelfControl) 
		PlayerRef.RemovePerk(EconomyPerk)
		PlayerRef.RemovePerk(AddWeightToUnweightItemsPerk)
		PlayerRef.RemovePerk(DisableWeightForAidItems)
		PlayerRef.RemovePerk(MaintenanceRepairPerk)
		PlayerRef.RemovePerk(FuelDiscountPerk)
		PlayerRef.RemovePerk(StarviewOpenizer)
		PlayerRef.RemovePerk(AdvancedLocksPerk)
		PlayerRef.RemovePerk(AdvancedLocksDoorsPerk)
		PlayerRef.RemovePerk(PocketPantsPerk)
		PlayerRef.RemovePerk(WeaponControlDebuffPerk)
		PlayerRef.RemovePerk(RoverSystemsMenuPerk)
		PlayerRef.RemovePerk(JunkRecyclerPerk)
		PlayerRef.RemovePerk(SelfControlPerk)		   
		PlayerRef.RemovePerk(ReputationPerk)
		PlayerRef.RemovePerk(ReputationClearancePerk)
		PlayerRef.RemovePerk(LawEnforcementPerk)
		PlayerRef.RemovePerk(StealthTakeDownPerk)
		PlayerRef.RemovePerk(ConcealmentPerk)
		PlayerRef.RemovePerk(WeaponDegradationExplosivePerk)
		PlayerRef.RemovePerk(WeaponDegradationHeavyPerk)
		PlayerRef.RemovePerk(WeaponDegradationMeleePerk)
		PlayerRef.RemovePerk(WeaponDegradationHandgunsPerk)
		PlayerRef.RemovePerk(WeaponDegradationHandgunsAutoPerk)		   
		PlayerRef.RemovePerk(WeaponDegradationRiflesPerk)
		PlayerRef.RemovePerk(WeaponDegradationRiflesAutoPerk)
		PlayerRef.RemovePerk(WeaponDegradationShotgunsPerk)
		PlayerRef.RemovePerk(WeaponDegradationToolsPerk)
		PlayerRef.RemovePerk(WeaponDegradationSniperPerk)
		PlayerRef.RemovePerk(SuitDegradationOutfitPerk)
		PlayerRef.RemovePerk(SuitDegradationBoostpackPerk)
		PlayerRef.RemovePerk(SuitDegradationHelmetPerk)
		PlayerRef.RemovePerk(RepairVendorPerk)
		PlayerRef.RemovePerk(ContrabandSellPerk)
		PlayerRef.RemovePerk(InfirmaryEnhancedPerk)				         
		PlayerRef.RemovePerk(MiningEnhancedPerk)	
		PlayerRef.RemovePerk(ResearchCritChancePerk)        
		PlayerRef.RemovePerk(WorkbenchFilteringPerk) 		
		
		UnregisterForRemoteEvent(MQ101, "OnStageSet")
  
    EndIf  

EndEvent