ScriptName SISA_Survival extends Quest

Group SISAQuests
    Quest Property QuestBasicNeeds Auto Const
    Quest Property QuestNGPlusPreparations Auto Const
    Quest Property QuestIntoxAddiction Auto Const
    Quest Property QuestLawEnforcement Auto Const
    Quest Property QuestCrewMorale Auto Const
    Quest Property QuestEnviHazards Auto Const
    Quest Property QuestSpaceshipSystems Auto Const
    Quest Property QuestEconomy Auto Const
    Quest Property QuestRoverSystems Auto Const
    Quest Property QuestCombatStagger Auto Const
    Quest Property QuestAidRegulator Auto Const
    Quest Property QuestAmmoRegulator Auto Const
    Quest Property QuestEnhancedInfirmary Auto Const
	Quest Property QuestDegradeSystems Auto Const
	Quest Property QuestFameAndRep Auto Const
	Quest Property QuestTakedowns Auto Const
	Quest Property QuestAdrenaline Auto Const
	Quest Property QuestHarsherAfflictions Auto Const
	Quest Property QuestOxygen Auto Const
    Quest Property ItemInjector Auto Const
    Quest Property QuestToggler Auto Const
    Quest Property QuestUIHUDBridges Auto Const
EndGroup

Group SISAActors
    Actor Property PlayerRef Auto Const
EndGroup

Group SISAActorValues
    ActorValue Property Hunger Auto Const
    ActorValue Property Sleep Auto Const
    ActorValue Property Thirst Auto Const
    ActorValue Property Oversatiation Auto Const
    ActorValue Property Intoxication_Alcoholism Auto Const
    ActorValue Property Intoxication_Caffeinophagia Auto Const
    ActorValue Property Intoxication_CognitiveDissolution Auto Const
    ActorValue Property Intoxication_HeartAttack Auto Const
    ActorValue Property Intoxication_ParanoidTreatment Auto Const
    ActorValue Property Intoxication_StimulantsAddiction Auto Const
    ActorValue Property Intoxication_Obesity Auto Const
    ActorValue Property SurvivalDamageIncoming Auto Const
    ActorValue Property SurvivalDamageOutgoing Auto Const
    ActorValue Property CrewMoraleAV Auto Const
    ActorValue Property Oxygen Auto Const
    ActorValue Property Soak Auto Const
    ActorValue Property BoostpackFuelAV Auto Const
    ActorValue Property JunkRecycleEnergyAV Auto Const
    ActorValue Property Drunkenness Auto Const
    ActorValue Property SelfControl Auto Const
    ActorValue Property Hygiene Auto Const
    ActorValue Property Fame Auto Const
    ActorValue Property Reputation Auto Const
    ActorValue Property ReputationUC Auto Const
    ActorValue Property ReputationFC Auto Const
    ActorValue Property ReputationCF Auto Const
    ActorValue Property ExecutionMeter Auto Const
    ActorValue Property ExecutionPoints Auto Const
    ActorValue Property AV_SuitDegradationBoostpack Auto Const
    ActorValue Property AV_SuitDegradationOutfit Auto Const	
EndGroup

Group SISACondForms
    Conditionform Property ConditionFormServiceDiscount01 Auto Const Mandatory
    Conditionform Property ConditionFormServiceDiscount02 Auto Const Mandatory
    Conditionform Property ConditionFormServiceDiscount03 Auto Const Mandatory
    Conditionform Property ConditionFormServiceDiscount04 Auto Const Mandatory
    Conditionform Property ConditionFormConcealmentRank1 Auto Const Mandatory
    Conditionform Property ConditionFormConcealmentRank2 Auto Const Mandatory
    Conditionform Property ConditionFormConcealmentRank3 Auto Const Mandatory
    Conditionform Property ConditionFormConcealmentRank4 Auto Const Mandatory
EndGroup

Group SISAMiscObjects
    MiscObject Property CarryweightRefresh Auto Const
    MiscObject Property DaggerCheckToken Auto Const
EndGroup

Group SISABooks
    Book Property StarvivalGuide Auto Const
EndGroup

Group SISAPotions
    Potion Property SatiationChecker Auto Const
    Potion Property AmmoCase Auto Const
    Potion Property AidCase Auto Const
    Potion Property SurvivalPackage Auto Const
    Potion Property POTI_SongBirdAudioPlayer Auto Const
EndGroup

Group SISAPerks
    Perk Property SurvivalDamage Auto Const
    Perk Property BoospackBlockJetpackingPerk Auto Const
    Perk Property DisableWeightForAidItems Auto Const
    Perk Property AddWeightToUnweightItemsPerk Auto Const
    Perk Property AdvancedLocksPerk Auto Const
    Perk Property PocketPantsPerk Auto Const
    Perk Property WeaponControlDebuffPerk Auto Const
    Perk Property JunkRecyclerPerk Auto Const
    Perk Property EnhancedMiningPerk Auto Const
    Perk Property WorkbenchFilteringPerk Auto Const
    Perk Property CombatSlidePerk Auto Const
    Perk Property CollectionBuddiesPerk Auto Const
    Perk Property CompanionQuickAccessPerk Auto Const
EndGroup

Group SISAGlobalVariables
    GlobalVariable Property OversatiationStarter Auto Const
    GlobalVariable Property IntoxicationStarter Auto Const
    GlobalVariable Property IntoxicationPlayerStatusToggle Auto Const
    GlobalVariable Property DrunkennessToggle Auto Const
    GlobalVariable Property SurvivalToggler Auto Const
    GlobalVariable Property AdrenalineToggle Auto Const
    GlobalVariable Property SurvivalDamageToggle Auto Const
    GlobalVariable Property OverencumbranceToggle Auto Const
    GlobalVariable Property NeedsPlayerStatusToggle Auto Const
    GlobalVariable Property NeedsAutoConsumageToggle Auto Const
    GlobalVariable Property StartStarvival Auto Const
    GlobalVariable Property SpaceshipArsenalInstalled Auto Const
    GlobalVariable Property WeightlessAidsToggle Auto Const 
    GlobalVariable Property EconomyToggle Auto Const
    GlobalVariable Property OxygenToggle Auto Const
    GlobalVariable Property FuelCooldown Auto Const
    GlobalVariable Property FuelCooldownCounts Auto Const
    GlobalVariable Property InfirmaryEnhancedInstalled Auto Const
    GlobalVariable Property CrewRationsToggle Auto Const
    GlobalVariable Property WeaponHandlingStaminaControl_Toggle Auto Const
    GlobalVariable Property BoostpackFuel_Toggle Auto Const
    GlobalVariable Property BoostpackBlockJetpacking Auto Const
    GlobalVariable Property RoverSytems_PerkToggle Auto Const
    GlobalVariable Property SelfControlToggle Auto Const
    GlobalVariable Property FamePlayerStatusMenuToggle Auto Const
    GlobalVariable Property FamePerkPointsTrigger01 Auto Const
    GlobalVariable Property FamePerkPointsTrigger02 Auto Const
    GlobalVariable Property FamePerkPointsTrigger03 Auto Const
    GlobalVariable Property FamePerkPointsTrigger04 Auto Const
    GlobalVariable Property FamePerkPointsTrigger05 Auto Const
    GlobalVariable Property RepPlayerStatusMenuToggle Auto Const
    GlobalVariable Property StealthTakeDownToggle Auto Const
    GlobalVariable Property StealthTakeDownStatusMenu Auto Const
    GlobalVariable Property MobilityRestrictionsToggle Auto Const
    GlobalVariable Property CombatStaggerToggle Auto Const
    GlobalVariable Property GV_LawEnforcementToggle Auto Const
    GlobalVariable Property GV_CombatSlideToggle Auto Const
    GlobalVariable Property GV_CombatSlideO2Cost Auto Const
    GlobalVariable Property GV_GravDash Auto Const
    GlobalVariable Property GV_PercentageTracker_O2 Auto Const
    GlobalVariable Property GV_PercentageTracker_SOAK Auto Const
    GlobalVariable Property GV_PercentageTracker_BoostpackFuel Auto Const
    GlobalVariable Property GV_PercentageTracker_SpacesuitCond Auto Const	
    GlobalVariable Property GV_PercentageTracker_BoostpackCond Auto Const
    GlobalVariable Property GV_HarderAfflictionsToggle Auto Const
    GlobalVariable Property GV_EnviHazardsToggle Auto Const
    GlobalVariable Property GV_EnviHazardsRarePhenomenaToggle Auto Const
    GlobalVariable Property GV_EnviHazardsInfernalVFXToggle Auto Const
    GlobalVariable Property GV_AmmoRegulatorToggle Auto Const
    GlobalVariable Property GV_AmmoRegulatorStoreMode Auto Const
    GlobalVariable Property GV_AidRegulatorToggle Auto Const
    GlobalVariable Property GV_AidRegulatorStoreMode Auto Const
    GlobalVariable Property GV_FameAndReputationToggle Auto Const
    GlobalVariable Property GV_LocksAndLockguardsToggle Auto Const
    GlobalVariable Property GV_PocketpantsToggle Auto Const
    GlobalVariable Property GV_EquipmentDegradationToggle Auto Const
    GlobalVariable Property GV_EconomyLandingFeesToggle Auto Const
    GlobalVariable Property GV_EconomyCostlyOutpostsToggle Auto Const
    GlobalVariable Property GV_ContrabandDropToggle Auto Const
    GlobalVariable Property GV_MiningEnhancedToggle Auto Const
    GlobalVariable Property GV_HygieneToggle Auto Const
    GlobalVariable Property GV_ComplicatedTheftToggle Auto Const
    GlobalVariable Property GV_AdaptiveDomeFXToggle Auto Const
    GlobalVariable Property GV_RoverRestrictDeploy Auto Const
    GlobalVariable Property GV_RadioToggle Auto Const
    GlobalVariable Property GV_SpaceshipSystemsToggle Auto Const
    GlobalVariable Property GV_RejuvenationOnCooldown Auto Const
EndGroup

Group SISAObjectRef
    ObjectReference Property ConsumableRefresherRef Auto Const mandatory
EndGroup

Group SISAMessages
    Message Property MSGInitializeComplete Auto Const
    Message Property NeedsAllCheckerBox Auto Const
    Message Property ReputationCheckerBox Auto Const
    Message Property ReputationCheckerBoxWithoutCF Auto Const
    Message Property ReputationCheckerBoxUC Auto Const
    Message Property ReputationCheckerBoxFC Auto Const
    Message Property ReputationCheckerBoxIP Auto Const
    Message Property ReputationCheckerBoxCF Auto Const
    Message Property FameCheckerBox Auto Const
    Message Property IntoxicationCheckerBox Auto Const
    Message Property ExecutionPointCheckerBox Auto Const
    Message Property AttributesBox Auto Const
    Message Property UpdateMessage Auto Const
    Message Property UninstallMessage Auto Const
    Message Property MSGSpaceshipArsenalUninstall Auto Const
    Message Property MSGSpaceshipArsenalInstall Auto Const
    Message Property MSGModInitialize Auto Const
    Message Property MSGModUninstall Auto Const
    Message Property MSGInGameTutorial_Adrenaline Auto Const
    Message Property MSGInGameTutorial_AmmoRegulator Auto Const
    Message Property MSGInGameTutorial_BasicNeeds Auto Const
    Message Property MSGInGameTutorial_CrewMorale Auto Const
    Message Property MSGInGameTutorial_Economy Auto Const	
    Message Property MSGInGameTutorial_EnhancedInfirmary Auto Const
    Message Property MSGInGameTutorial_Intoxication Auto Const
    Message Property MSGInGameTutorial_Overencumbrance Auto Const
    Message Property MSGInGameTutorial_OxygenSystem Auto Const
    Message Property MSGInGameTutorial_SpaceshipSystems Auto Const
    Message Property MSGInGameTutorial_SurvivalDamage Auto Const
    Message Property MSGInGameTutorial_TinCansCreatures Auto Const
    Message Property MSGInGameTutorial_WeeklyPayments Auto Const
    Message Property MSGInGameTutorial_WeightlessItems Auto Const
    Message Property MSGInGameTutorial_Lockguards Auto Const
    Message Property MSGInGameTutorial_BombsAndPoisons Auto Const
    Message Property MSGInGameTutorial_Subroutines Auto Const
    Message Property MSGInGameTutorial_RoverSystems Auto Const
    Message Property MSGInGameTutorial_WeaponHandling Auto Const
    Message Property MSGInGameTutorial_BoostpacksNeedFuel Auto Const
    Message Property MSGInGameTutorial_AidRegulator Auto Const
    Message Property MSGInGameTutorial_EnviHazards Auto Const
    Message Property MSGInGameTutorial_ConfigurationBook Auto Const
    Message Property MSGInGameTutorial_JunkRecycling Auto Const
    Message Property MSGInGameTutorial_FameAndRep Auto Const
    Message Property MSGInGameTutorial_Takedowns Auto Const
    Message Property MSGInGameTutorial_LawAndJustice Auto Const
    Message Property MSGInGameTutorial_SpacesuitPenalties Auto Const
    Message Property MSGInGameTutorial_CombatStagger Auto Const
    Message Property MSGInGameTutorial_Degradation Auto Const
    Message Property MSGInGameTutorial_Afflictions Auto Const
    Message Property MSGInGameTutorial_Activities Auto Const
    Message Property MSGInGameTutorial_ComplicatedTheft Auto Const
    Message Property MSG_SongbirdRadioMenu Auto Const
    Message Property MSG_RejuvenationIsReady Auto Const
EndGroup

Group SISAFormLists
    FormList Property PharmaKitMode Auto
    FormList Property JunkRecycleMode Auto
    FormList Property AllConsumables Auto
    FormList Property AllAidChems Auto
    FormList Property AllAmmo Auto
    FormList Property AllExplosives Auto
    FormList Property ListForAddingInGameTutorials Auto Const
    FormList Property ListForAddingInGameTutorialsXbox Auto Const
    FormList Property AllModsItemsList Auto Const
    FormList Property AllArrestTokensList Auto Const
EndGroup

Group SISASpells
    Spell Property StarvivalStart Auto Const
    Spell Property StarvivalStop Auto Const
    Spell Property NeedsLogosStart Auto Const
    Spell Property NeedsLogosStop Auto Const
    Spell Property SuitSystemMonitorUISpell Auto Const
    Spell Property SuitSystemMonitorUISpellWatchHUD Auto Const
    Spell Property BoostpackFuelSpell Auto Const
    Spell Property AdvancedCombatSlideSpell Auto Const
    Spell Property OverencumbranceSpell Auto Const
    Spell Property SuitRestrictionsSpell Auto Const
    Spell Property ComplicatedTheftSpell Auto Const
    Spell Property SnowGlobeSpell Auto Const
    Spell Property ThrowingDaggersSpell Auto Const
EndGroup

Group SISARefAliases
    ReferenceAlias Property HomeShip Auto Const mandatory
    ReferenceAlias Property PlayerShip Auto mandatory
EndGroup

Group SISAFactions
    Faction Property CrimsonFleetFaction Auto Const
EndGroup

Group SISAWwise
    wwiseevent Property SoundFX_ArtifactVision Auto Const
    wwiseevent Property RadioClassicBaroque Auto Const
    wwiseevent Property RadioClassicNeoRomantic Auto Const
    wwiseevent Property RadioCountryBlues Auto Const
    wwiseevent Property RadioCrimsonMetal Auto Const
    wwiseevent Property RadioDarkSynth Auto Const
    wwiseevent Property RadioElectronica Auto Const
    wwiseevent Property RadioJazz Auto Const
    wwiseevent Property RadioPop Auto Const
    wwiseevent Property RadioTechnoAstralLounge Auto Const
    wwiseevent Property RadioTechnoClean Auto Const
    wwiseevent Property RadioTechnoParty Auto Const
EndGroup

Group SISAEffectShaders
    EffectShader Property VisualFX_EnviHazards_Cold Auto Const Mandatory
    EffectShader Property VisualFX_EnviHazards_Corrosive Auto Const Mandatory
    EffectShader Property VisualFX_EnviHazards_Electric Auto Const Mandatory
    EffectShader Property VisualFX_EnviHazards_Fire Auto Const Mandatory
    EffectShader Property VisualFX_EnviHazards_Poison Auto Const Mandatory
    EffectShader Property VisualFX_EnviHazards_Radiation Auto Const Mandatory
    Effectshader Property ConcealmentOutroFX Auto Const
EndGroup

Group SISAVisualFX
    VisualEffect Property GravJumpOutroFX Auto Const Mandatory
    VisualEffect Property SpaceshipGravDriveStartFX Auto Const mandatory
EndGroup

Float fVersion
Float CooldownTimeFuel = 30.0

InputEnableLayer inputLayer

MusicType Property MusicSilence Auto Const
Int RadioSoundInstance = -1

Function Update()

	   While fVersion < 13.0
			 Patch()                       
	EndWhile

	  If StartStarvival.GetValue() == 1

	      If (Game.IsPluginInstalled("Starvival - SpaceshipsUseAmmo.esm") && SpaceshipArsenalInstalled.GetValue() == 0)
             SpaceshipArsenalInstalled.SetValue(1)      
             (ItemInjector as SISA_ItemInjector).InjectSpaceshipAmmoToTheseLists()
			 MSGSpaceshipArsenalInstall.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	   EndIf

   EndIf

EndFunction

Function Patch()
               
			   Int Version0 = 0		   
               Int Version1 = 1
               Int Version2 = 2
               Int Version3 = 3
               Int Version4 = 4
               Int Version5 = 5
               Int Version6 = 6		   
               Int Version7 = 7
               Int Version8 = 8
               Int Version9 = 9
               Int Version10 = 10
               Int Version11 = 11
               Int Version12 = 12
               Int Version13 = 13
		   
		       If fVersion < 12.1
			      fVersion = 12.1
				     If StartStarvival.GetValue() == 1   
						   If GV_FameAndReputationToggle.GetValue() == 1
						     (QuestFameAndRep as SISA_FameAndRepMB).Update()
						EndIf
						   If RoverSytems_PerkToggle.GetValue() == 1
						      (QuestRoverSystems as SISA_Rover).Update()
						EndIf
				  EndIf	
		   ElseIf fVersion < 12.3
			      fVersion = 12.3
		          
				  GlobalVariable ExecutionPointsBugFix = Game.GetFormFromFile(0x00001124, "Starvival - Immersive Survival Addon.esm") as GlobalVariable 				     
				  GlobalVariable FameAndRepReportChance = Game.GetFormFromFile(0x0000107B, "Starvival - Immersive Survival Addon.esm") as GlobalVariable 
				  GlobalVariable FameAndRepReportTime = Game.GetFormFromFile(0x00001079, "Starvival - Immersive Survival Addon.esm") as GlobalVariable 
				  GlobalVariable FameAndRepPresentChance = Game.GetFormFromFile(0x0000107E, "Starvival - Immersive Survival Addon.esm") as GlobalVariable 
				  GlobalVariable FameAndRepPresentTime = Game.GetFormFromFile(0x0000107F, "Starvival - Immersive Survival Addon.esm") as GlobalVariable 				  
				  GlobalVariable FameAndRepJailMin = Game.GetFormFromFile(0x00001071, "Starvival - Immersive Survival Addon.esm") as GlobalVariable 				     
				  GlobalVariable FameAndRepJailMax = Game.GetFormFromFile(0x00001072, "Starvival - Immersive Survival Addon.esm") as GlobalVariable 
				  GlobalVariable FameAndRepContrabandSell = Game.GetFormFromFile(0x0000247A, "Starvival - Immersive Survival Addon.esm") as GlobalVariable 
				  GlobalVariable FameAndRepCancelledBounty = Game.GetFormFromFile(0x00000E1F, "Starvival - Immersive Survival Addon.esm") as GlobalVariable 				  
				  GlobalVariable FameAndRepFinishedBounty = Game.GetFormFromFile(0x00000DF9, "Starvival - Immersive Survival Addon.esm") as GlobalVariable				  
				  GlobalVariable FameAndRepOnKillCF = Game.GetFormFromFile(0x00000F30, "Starvival - Immersive Survival Addon.esm") as GlobalVariable 				     
				  GlobalVariable FameAndRepOnKillDAZRA = Game.GetFormFromFile(0x00000CE3, "Starvival - Immersive Survival Addon.esm") as GlobalVariable 
				  GlobalVariable FameAndRepOnKillECL = Game.GetFormFromFile(0x00000F31, "Starvival - Immersive Survival Addon.esm") as GlobalVariable 
				  GlobalVariable FameAndRepOnKillFC = Game.GetFormFromFile(0x00000F32, "Starvival - Immersive Survival Addon.esm") as GlobalVariable 				  
				  GlobalVariable FameAndRepOnKillNEON = Game.GetFormFromFile(0x00000F33, "Starvival - Immersive Survival Addon.esm") as GlobalVariable
				  GlobalVariable FameAndRepOnKillOTHER = Game.GetFormFromFile(0x00000F34, "Starvival - Immersive Survival Addon.esm") as GlobalVariable
				  GlobalVariable FameAndRepOnKillSPACE = Game.GetFormFromFile(0x00000F35, "Starvival - Immersive Survival Addon.esm") as GlobalVariable
				  GlobalVariable FameAndRepOnKillUC = Game.GetFormFromFile(0x00000F36, "Starvival - Immersive Survival Addon.esm") as GlobalVariable
				  GlobalVariable FameAndRepOnKillVAR = Game.GetFormFromFile(0x00000F3A, "Starvival - Immersive Survival Addon.esm") as GlobalVariable				  
				  GlobalVariable FameAndRepFameOnKillCF = Game.GetFormFromFile(0x00000EE2, "Starvival - Immersive Survival Addon.esm") as GlobalVariable 				     
				  GlobalVariable FameAndRepFameOnKillDAZRA = Game.GetFormFromFile(0x00000941, "Starvival - Immersive Survival Addon.esm") as GlobalVariable 
				  GlobalVariable FameAndRepFameOnKillECL = Game.GetFormFromFile(0x00000EE3, "Starvival - Immersive Survival Addon.esm") as GlobalVariable 
				  GlobalVariable FameAndRepFameOnKillFC = Game.GetFormFromFile(0x00000EE0, "Starvival - Immersive Survival Addon.esm") as GlobalVariable 				  
				  GlobalVariable FameAndRepFameOnKillNEON = Game.GetFormFromFile(0x00000EE1, "Starvival - Immersive Survival Addon.esm") as GlobalVariable
				  GlobalVariable FameAndRepFameOnKillOTHER = Game.GetFormFromFile(0x00000EE6, "Starvival - Immersive Survival Addon.esm") as GlobalVariable
				  GlobalVariable FameAndRepFameOnKillSPACE = Game.GetFormFromFile(0x00000EE4, "Starvival - Immersive Survival Addon.esm") as GlobalVariable
				  GlobalVariable FameAndRepFameOnKillUC = Game.GetFormFromFile(0x00000EDF, "Starvival - Immersive Survival Addon.esm") as GlobalVariable
				  GlobalVariable FameAndRepFameOnKillVAR = Game.GetFormFromFile(0x00000EE5, "Starvival - Immersive Survival Addon.esm") as GlobalVariable
				  GlobalVariable ContrabandSellMultTheKey = Game.GetFormFromFile(0x00000EC6, "Starvival - Immersive Survival Addon.esm") as GlobalVariable				  
				  GlobalVariable ResetClearanceCost = Game.GetFormFromFile(0x00000F0C, "Starvival - Immersive Survival Addon.esm") as GlobalVariable	
				  
				  ExecutionPointsBugFix.SetValue(10)					 
				  FameAndRepReportChance.SetValue(8) 
				  FameAndRepReportTime.SetValue(600) 
				  FameAndRepPresentChance.SetValue(25) 
				  FameAndRepPresentTime.SetValue(900)  				  
				  FameAndRepJailMin.SetValue(15)	 
				  FameAndRepJailMax.SetValue(30)	 
				  FameAndRepContrabandSell.SetValue(0.6) 
				  FameAndRepCancelledBounty.SetValue(3)  
				  FameAndRepFinishedBounty.SetValue(0.1)					 				  
				  FameAndRepOnKillCF.SetValue(0.02) 
				  FameAndRepOnKillDAZRA.SetValue(0.3) 
				  FameAndRepOnKillECL.SetValue(0.013) 
				  FameAndRepOnKillFC.SetValue(0.3) 
				  FameAndRepOnKillNEON.SetValue(0.3) 
				  FameAndRepOnKillOTHER.SetValue(0.006) 
				  FameAndRepOnKillSPACE.SetValue(0.026) 
				  FameAndRepOnKillUC.SetValue(0.3) 
				  FameAndRepOnKillVAR.SetValue(0.01) 
				  FameAndRepFameOnKillCF.SetValue(0.029) 
				  FameAndRepFameOnKillDAZRA.SetValue(0.015) 
				  FameAndRepFameOnKillECL.SetValue(0.026) 
				  FameAndRepFameOnKillFC.SetValue(0.015) 
				  FameAndRepFameOnKillNEON.SetValue(0.015) 
				  FameAndRepFameOnKillOTHER.SetValue(0.012) 
				  FameAndRepFameOnKillSPACE.SetValue(0.032) 
				  FameAndRepFameOnKillUC.SetValue(0.015) 
				  FameAndRepFameOnKillVAR.SetValue(0.02)					
				  ContrabandSellMultTheKey.SetValue(0.16) 
				  ResetClearanceCost.SetValue(100000) 
					 
					 If StartStarvival.GetValue() == 1   
						   If EconomyToggle.GetValue() == 1
		                     (QuestEconomy as SISA_Economy).Update()						   
						EndIf
						   If GV_FameAndReputationToggle.GetValue() == 1
						     (QuestFameAndRep as SISA_FameAndRepMB).Update()
						EndIf
						   If CrewRationsToggle.GetValue() == 1
						     (QuestCrewMorale as SISA_CrewMorale).Update()
						EndIf
						   If SurvivalToggler.GetValue() == 1
						      (QuestBasicNeeds as SISA_BasicNeeds).Update()	
						EndIf
						   If GV_SpaceshipSystemsToggle.GetValue() == 1
						     (QuestSpaceshipSystems as SISA_SpaceshipFuel).Update()
						EndIf
				  EndIf	
		   ElseIf fVersion < 12.31
			      fVersion = 12.31
					 If StartStarvival.GetValue() == 1   
						   If GV_FameAndReputationToggle.GetValue() == 1
                             Spell RepMSG = Game.GetFormFromFile(0x0000081B, "Starvival - Immersive Survival Addon.esm") as Spell
						     Utility.Wait(1.0)
						     PlayerRef.Addspell(RepMSG, false)
						EndIf
				  EndIf	
		   ElseIf fVersion < 12.32
			      fVersion = 12.32
					 If StartStarvival.GetValue() == 1   
						   If EconomyToggle.GetValue() == 1
		                     (QuestEconomy as SISA_Economy).Update()						   
						EndIf
						   If RoverSytems_PerkToggle.GetValue() == 1
						      (QuestRoverSystems as SISA_Rover).Update()
						EndIf
				  EndIf	
		   ElseIf fVersion < 12.43
			      fVersion = 12.43
				  GlobalVariable ContrabandRepSell = Game.GetFormFromFile(0x0000247A, "Starvival - Immersive Survival Addon.esm") as GlobalVariable	 
				  ContrabandRepSell.SetValue(0.15)	 
					 If StartStarvival.GetValue() == 1   
						   If EconomyToggle.GetValue() == 1
		                     (QuestEconomy as SISA_Economy).UpdateHotfix()						   
						EndIf
				  EndIf	
		   ElseIf fVersion < 12.48
			      fVersion = 12.48
				  
				  GlobalVariable RepOnShipBuy = Game.GetFormFromFile(0x00001092, "Starvival - Immersive Survival Addon.esm") as GlobalVariable 
				  GlobalVariable RepOnShipSell = Game.GetFormFromFile(0x00001091, "Starvival - Immersive Survival Addon.esm") as GlobalVariable 
				  GlobalVariable RepOnFactionQuestRepeat = Game.GetFormFromFile(0x000024D8, "Starvival - Immersive Survival Addon.esm") as GlobalVariable 
				  GlobalVariable RepOnMBFinishedBounty = Game.GetFormFromFile(0x00000DF9, "Starvival - Immersive Survival Addon.esm") as GlobalVariable 
				  GlobalVariable RepOnMBFinishedOther = Game.GetFormFromFile(0x0000250A, "Starvival - Immersive Survival Addon.esm") as GlobalVariable 

				  RepOnShipBuy.SetValue(1.5)					 
				  RepOnShipSell.SetValue(0.5)
				  RepOnFactionQuestRepeat.SetValue(0.6)
				  RepOnMBFinishedBounty.SetValue(0.3)
				  RepOnMBFinishedOther.SetValue(0.15)

					 If StartStarvival.GetValue() == 1   
						   If GV_FameAndReputationToggle.GetValue() == 1
						     (QuestFameAndRep as SISA_FameAndRepMB).UpdateHotfix()
						EndIf
				  EndIf			   
		   ElseIf fVersion < 12.5
			      fVersion = 12.5

					 If StartStarvival.GetValue() == 1   
						   If GV_FameAndReputationToggle.GetValue() == 1
						     (QuestFameAndRep as SISA_FameAndRepMB).RecalculateReputation()
						EndIf
				  EndIf	
		   ElseIf fVersion < 12.51
			      fVersion = 12.51

					 If StartStarvival.GetValue() == 1   
						   If GV_EnviHazardsToggle.GetValue() == 1
						     (QuestEnviHazards as SISA_EnviHazardsQuest).Update()
						EndIf
				  EndIf	
		   ElseIf fVersion < 12.7
			      fVersion = 12.7
				  
				  GlobalVariable ChemFortifySpeed01 = Game.GetFormFromFile(0x002D395D, "Starfield.esm") as GlobalVariable 				     
				  GlobalVariable ChemFortifySpeed02 = Game.GetFormFromFile(0x002D395E, "Starfield.esm") as GlobalVariable
				  GlobalVariable ChemFortifySpeed03 = Game.GetFormFromFile(0x002D395F, "Starfield.esm") as GlobalVariable
				  GlobalVariable HeartPlusSelfControlRestore = Game.GetFormFromFile(0x00000DD8, "Starvival - Immersive Survival Addon.esm") as GlobalVariable
				  GlobalVariable CrewMoraleRepDMG = Game.GetFormFromFile(0x00002564, "Starvival - Immersive Survival Addon.esm") as GlobalVariable
				  GlobalVariable ContrabandRepSell = Game.GetFormFromFile(0x0000247A, "Starvival - Immersive Survival Addon.esm") as GlobalVariable
				  
				  ChemFortifySpeed01.SetValue(10)	 
				  ChemFortifySpeed02.SetValue(15)
				  ChemFortifySpeed03.SetValue(25)				  
				  HeartPlusSelfControlRestore.SetValue(0.5)	 
				  CrewMoraleRepDMG.SetValue(0.15)
				  ContrabandRepSell.SetValue(0.07)
				  					 
					 If StartStarvival.GetValue() == 1   
						   If SurvivalToggler.GetValue() == 1
						      (QuestBasicNeeds as SISA_BasicNeeds).Update()	
						EndIf
						   If EconomyToggle.GetValue() == 1
		                     (QuestEconomy as SISA_Economy).Update()						   
						EndIf
						   If RoverSytems_PerkToggle.GetValue() == 1
						      (QuestRoverSystems as SISA_Rover).Update()
						EndIf
				        (QuestHarsherAfflictions as SISA_HarsherAfflictions).Update()
						(ItemInjector as SISA_ItemInjector).RefreshLists()
				  EndIf	
		   ElseIf fVersion < 12.72
			      fVersion = 12.72
				  					 
					 If StartStarvival.GetValue() == 1   
						   If RoverSytems_PerkToggle.GetValue() == 1
						      (QuestRoverSystems as SISA_Rover).Update()
						EndIf
						   If GV_EquipmentDegradationToggle.GetValue() == 1
						      (QuestDegradeSystems as SISA_RepairSystemQuest).Update()
						EndIf
				  EndIf	
		   ElseIf fVersion < 13.0
			      fVersion = 13.0
				  					 
					 If StartStarvival.GetValue() == 1   
						   If GV_SpaceshipSystemsToggle.GetValue() == 1
						     (QuestSpaceshipSystems as SISA_SpaceshipFuel).Update()
						EndIf
						   If StealthTakeDownToggle.GetValue() == 1
						     (QuestTakedowns as SISA_TakedownsQuest).Update()
						EndIf
						   If GV_EnviHazardsToggle.GetValue() == 1
						     (QuestEnviHazards as SISA_EnviHazardsQuest).Update()
						EndIf
						QuestUIHUDBridges.Start()
						UpdateMessage.show(Version13, Version0, Version0)
				  EndIf	
			EndIf

EndFunction

Function FadeToBlack()
     
	 inputLayer = InputEnableLayer.Create()    	 	 	 
	 inputLayer.DisablePlayerControls()	 
	 Game.FadeOutGame(true, true, 0, 5.0, true)

EndFunction	

Function FadeFromBlack()
	 
	 inputLayer.EnablePlayerControls()	
	 inputLayer.Delete()     
	 SoundFX_ArtifactVision.Play(PlayerRef)
	 Game.PlayBinkNoWait("ArtifactVision09.bk2", abMuteAudio=False, abMuteMusic=False, aPlayDuringLoadingScreen=False)	 
	 Game.FadeOutGame(false, True, 0, 0.1)

EndFunction	

Function InstallIngameTutorials()
		 
		 ListForAddingInGameTutorials.Revert()	 
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_Activities)		 
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_Adrenaline)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_AidRegulator)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_AmmoRegulator)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_BasicNeeds)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_BoostpacksNeedFuel)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_BombsAndPoisons)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_ConfigurationBook)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_CombatStagger)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_CrewMorale)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_ComplicatedTheft)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_Degradation)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_Economy)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_EnviHazards)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_EnhancedInfirmary)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_FameAndRep)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_Afflictions)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_Intoxication)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_JunkRecycling)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_Lockguards)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_Overencumbrance)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_OxygenSystem)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_RoverSystems)	
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_Subroutines)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_SpaceshipSystems)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_SpacesuitPenalties)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_SurvivalDamage)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_Takedowns)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_TinCansCreatures)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_WeeklyPayments)
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_WeightlessItems)		 		 		 		 	 
		 ListForAddingInGameTutorials.AddForm(MSGInGameTutorial_WeaponHandling)		 		 	
		 
		 ListForAddingInGameTutorialsXbox.Revert()			 
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_Activities)		 
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_Adrenaline)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_AidRegulator)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_AmmoRegulator)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_BasicNeeds)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_BoostpacksNeedFuel)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_BombsAndPoisons)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_ConfigurationBook)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_CombatStagger)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_CrewMorale)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_ComplicatedTheft)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_Degradation)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_Economy)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_EnviHazards)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_EnhancedInfirmary)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_FameAndRep)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_Afflictions)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_Intoxication)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_JunkRecycling)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_Lockguards)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_Overencumbrance)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_OxygenSystem)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_RoverSystems)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_Subroutines)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_SpaceshipSystems)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_SpacesuitPenalties)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_SurvivalDamage)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_Takedowns)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_TinCansCreatures)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_WeeklyPayments)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_WeightlessItems)
		 ListForAddingInGameTutorialsXbox.AddForm(MSGInGameTutorial_WeaponHandling)

EndFunction

Function AddBook()

	If PlayerRef.GetItemCount(StarvivalGuide) < 1
	   PlayerRef.AddItem(StarvivalGuide, 1, True)
 EndIf

EndFunction

Function StartStarvival()                  
				  
				  MSGModInitialize.Show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)				  

				  FadeToBlack()                  
				  AddBook()
				  Systems()                  
                  InstallIngameTutorials()

                  RegisterForRemoteEvent(PlayerRef, "OnPlayerLoadGame")
	              RegisterForActorValueChangedEvent(PlayerRef, Oxygen)
	              RegisterForActorValueChangedEvent(PlayerRef, Soak)
	              RegisterForActorValueChangedEvent(PlayerRef, BoostpackFuelAV)
				  RegisterForMenuOpenCloseEvent("DataMenu")                  
				  StarvivalStart.Cast(PlayerRef, PlayerRef)
				  StartStarvival.SetValue(1)
                  QuestUIHUDBridges.Start()

EndFunction

Event OnActorValueChanged(ObjectReference akObjRef, ActorValue akActorValue)    
	   
	   If akObjRef == PlayerRef && akActorValue == Oxygen
	      RegisterForActorValueChangedEvent(PlayerRef, Oxygen)
          GV_PercentageTracker_O2.SetValue(PlayerRef.GetValue(Oxygen))
   ElseIf akObjRef == PlayerRef && akActorValue == Soak
	      RegisterForActorValueChangedEvent(PlayerRef, Soak)
          GV_PercentageTracker_SOAK.SetValue(PlayerRef.GetValue(Soak))
   ElseIf akObjRef == PlayerRef && akActorValue == BoostpackFuelAV
	      RegisterForActorValueChangedEvent(PlayerRef, BoostpackFuelAV)
          GV_PercentageTracker_BoostpackFuel.SetValue(PlayerRef.GetValue(BoostpackFuelAV))
    EndIf

EndEvent

Event OnMenuOpenCloseEvent(String asMenuName, Bool abOpening)
         	     	 			 
		 If asMenuName == "DataMenu"    
			       If abOpening == True														      					   
                      PercentageTracker()		              
					  PlayerRef.AddSpell(SuitSystemMonitorUISpell, False)				      
				Else
                            If (PlayerRef.HasSpell(SuitSystemMonitorUISpell))
                                PlayerRef.RemoveSpell(SuitSystemMonitorUISpell)
                         EndIf				
				EndIf
      EndIf

EndEvent

Function PercentageTracker()        
         GV_PercentageTracker_O2.SetValue(PlayerRef.GetValue(Oxygen))		 
         GV_PercentageTracker_SOAK.SetValue(PlayerRef.GetValue(Soak))		 
         GV_PercentageTracker_BoostpackFuel.SetValue(PlayerRef.GetValue(BoostpackFuelAV))		 	 
EndFunction

Event Actor.OnPlayerLoadGame(Actor akSender)       
		If (SpaceshipArsenalInstalled.GetValue() == 1)
	       ModulesUninstallOnLoad()
     EndIf
EndEvent

Function RemoveStuckVFX()
            
			SpaceShipReference akShip = PlayerRef.GetCurrentShipRef()
            
			VisualFX_EnviHazards_Cold.Stop(PlayerRef)
            VisualFX_EnviHazards_Corrosive.Stop(PlayerRef)
            VisualFX_EnviHazards_Electric.Stop(PlayerRef)
            VisualFX_EnviHazards_Fire.Stop(PlayerRef)
            VisualFX_EnviHazards_Poison.Stop(PlayerRef)
            VisualFX_EnviHazards_Radiation.Stop(PlayerRef) 
            ConcealmentOutroFX.Stop(PlayerRef)
			GravJumpOutroFX.Stop(akShip) 
            SpaceshipGravDriveStartFX.Stop(akShip) 

EndFunction

Function ModulesUninstallOnLoad()
      	  
	  If (Game.IsPluginInstalled("Starvival - SpaceshipsUseAmmo.esm") == False && SpaceshipArsenalInstalled.GetValue() == 1)
         SpaceshipArsenalInstalled.SetValue(0)
		 MSGSpaceshipArsenalUninstall.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)         
   EndIf

EndFunction

Function RefreshCarryWeight()

      PlayerRef.Additem(CarryweightRefresh, 1, True)
      PlayerRef.Removeitem(CarryweightRefresh, 1, True, None)

EndFunction

Function Systems()
		 
         Float WaitTime = 0.5
		 		 	 
		 (QuestTakedowns as SISA_TakedownsQuest).TakedownsStart()
		 (QuestHarsherAfflictions as SISA_HarsherAfflictions).HarsherAfflictionsStart()         
		 (QuestEnviHazards as SISA_EnviHazardsQuest).EnviHazardsStart()		 
		 (QuestEconomy as SISA_Economy).EconomyStart()
		 (QuestCrewMorale as SISA_CrewMorale).CrewMoraleStart()
		 (QuestBasicNeeds as SISA_BasicNeeds).StartBasicNeeds()	
		 (QuestIntoxAddiction as SISA_Intoxaddiction).StartIntoxaddiction()	
         (QuestRoverSystems as SISA_Rover).RoverSystemsStart()
		 (QuestSpaceshipSystems as SISA_SpaceshipFuel).SpaceshipSystemStart()
		 (QuestNGPlusPreparations as SISA_NGPlusPreparations).PrepareForNGPlus()
		 (QuestFameAndRep as SISA_FameAndRepMB).FameAndRepStart()
		 (QuestLawEnforcement as SISA_LawEnforcementQuest).LawEnforcementStart()
		 (QuestAdrenaline as SISA_AdrenalineQuest).AdrenalineStart()
		 (QuestEnhancedInfirmary as SISA_EnhancedInfirmary).EnhancedInfirmaryStart()
         (QuestDegradeSystems as SISA_RepairSystemQuest).RepairSystemStart()
		 (QuestOxygen as SISA_OxygenQuest).OxygenStart()
		 (ItemInjector as SISA_ItemInjector).InjectItemsToTheseLists()      		  
		  
		   If (Game.IsPluginInstalled("Starvival - SpaceshipsUseAmmo.esm") && SpaceshipArsenalInstalled.GetValue() == 0)
               SpaceshipArsenalInstalled.SetValue(1)      
              (ItemInjector as SISA_ItemInjector).InjectSpaceshipAmmoToTheseLists()
	     EndIf
 		 Utility.Wait(WaitTime)         
		 AdditionalSystems()		 
		 Utility.Wait(WaitTime)    
		 RefreshCarryWeight()
		 Utility.Wait(WaitTime) 
         RefreshPlayersInventory()
		 Utility.Wait(WaitTime)
		 PlayerRef.AddItem(SurvivalPackage, 1, True)       
	   	     
	     FadeFromBlack()                 	   
	     
		 MSGInitializeComplete.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
       
EndFunction

Function AdditionalSystems()

         Float WaitTime = 0.5

		 PlayerRef.RestoreValue(SurvivalDamageIncoming, 999)         
		 PlayerRef.DamageValue(SurvivalDamageIncoming, 18.5)		 
		 PlayerRef.RestoreValue(SurvivalDamageOutgoing, 999)         
		 PlayerRef.DamageValue(SurvivalDamageOutgoing, 16.5)                          		 		 		 
		 PlayerRef.DamageValue(JunkRecycleEnergyAV, 999)
		 PlayerRef.RestoreValue(JunkRecycleEnergyAV, 999)
       		 
		 Utility.Wait(WaitTime)
         PlayerRef.Addperk(SurvivalDamage, False) 
		 PlayerRef.Addperk(AddWeightToUnweightItemsPerk, False)  
		 PlayerRef.AddPerk(AdvancedLocksPerk, False)
		 PlayerRef.AddPerk(PocketPantsPerk, False)
		 PlayerRef.Addperk(WeaponControlDebuffPerk, False) 
		 PlayerRef.AddPerk(JunkRecyclerPerk, False) 		 	 	 		 	
		 PlayerRef.AddPerk(BoospackBlockJetpackingPerk, False) 
		 PlayerRef.AddPerk(EnhancedMiningPerk, False) 
		 PlayerRef.AddPerk(WorkbenchFilteringPerk, False) 
         PlayerRef.AddPerk(CombatSlidePerk, False)
         PlayerRef.AddPerk(CollectionBuddiesPerk, False)
         PlayerRef.Addperk(CompanionQuickAccessPerk, False)		 
		 
		 ;PercentageTracker()
		 
		 Utility.Wait(WaitTime)
		 PlayerRef.AddSpell(SuitRestrictionsSpell, False)		 
		 PlayerRef.AddSpell(OverencumbranceSpell, False)		 
		 PlayerRef.AddSpell(BoostpackFuelSpell, False) 		 
         ;PlayerRef.AddSpell(SuitSystemMonitorUISpell, False)
         PlayerRef.AddSpell(SuitSystemMonitorUISpellWatchHUD, False)
		 PlayerRef.AddSpell(ComplicatedTheftSpell, False) 
		 PlayerRef.AddSpell(SnowGlobeSpell, False) 
		 PlayerRef.AddSpell(ThrowingDaggersSpell, False) 

EndFunction

Function MissionExterminatus()
         
		 MSGModUninstall.Show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) 
		 FadeToBlack()
		 SpaceShipReference homeShipRef = HomeShip.GetShipRef()
         
         UnregisterForRemoteEvent(PlayerRef, "OnPlayerLoadGame")
	     UnregisterForActorValueChangedEvent(PlayerRef, Oxygen)
	     UnregisterForActorValueChangedEvent(PlayerRef, Soak)
	     UnregisterForActorValueChangedEvent(PlayerRef, BoostpackFuelAV)
         UnregisterForMenuOpenCloseEvent("DataMenu")		 
	     
		 Utility.Wait(1.0)
		 CancelTimer(0)
     
         PlayerRef.RemoveItem(AllModsItemsList, 9999, True, None)	           
		 homeShipRef.Removeitem(AllModsItemsList, 9999, True, None)

         Utility.Wait(1.0)
		 PlayerRef.RemovePerk(SurvivalDamage)
		 PlayerRef.RemovePerk(AddWeightToUnweightItemsPerk)
		 PlayerRef.RemovePerk(DisableWeightForAidItems)
		 PlayerRef.RemovePerk(AdvancedLocksPerk)
		 PlayerRef.RemovePerk(PocketPantsPerk)
		 PlayerRef.RemovePerk(WeaponControlDebuffPerk)
		 PlayerRef.RemovePerk(JunkRecyclerPerk)		   
		 PlayerRef.RemovePerk(BoospackBlockJetpackingPerk)	
		 PlayerRef.RemovePerk(EnhancedMiningPerk)	
         PlayerRef.RemovePerk(WorkbenchFilteringPerk)
         PlayerRef.RemovePerk(CombatSlidePerk)	 		 
         PlayerRef.RemovePerk(CollectionBuddiesPerk)	 
         PlayerRef.Removeperk(CompanionQuickAccessPerk)         
		 
		 PlayerRef.RemoveSpell(SuitSystemMonitorUISpell)
         PlayerRef.RemoveSpell(SuitSystemMonitorUISpellWatchHUD)
         PlayerRef.RemoveSpell(BoostpackFuelSpell)        	 
         PlayerRef.RemoveSpell(OverencumbranceSpell)
         PlayerRef.RemoveSpell(SuitRestrictionsSpell)
         PlayerRef.RemoveSpell(ComplicatedTheftSpell)     
         PlayerRef.RemoveSpell(SnowGlobeSpell)              
         PlayerRef.RemoveSpell(ThrowingDaggersSpell)  
		 
		 RefreshCarryWeight()
         	 		 		 
		 Utility.Wait(1.0)       
		 (QuestTakedowns as SISA_TakedownsQuest).TakedownsStop()
		 (QuestHarsherAfflictions as SISA_HarsherAfflictions).HarsherAfflictionsStop()		 
		 (QuestEnviHazards as SISA_EnviHazardsQuest).EnviHazardsStop()				 
		 (QuestEconomy as SISA_Economy).EconomyStop()
		 (QuestFameAndRep as SISA_FameAndRepMB).FameAndRepStop()
		 (QuestCrewMorale as SISA_CrewMorale).CrewMoraleStop()
		 (QuestBasicNeeds as SISA_BasicNeeds).StopBasicNeeds()
		 (QuestIntoxAddiction as SISA_Intoxaddiction).StopIntoxaddiction()
		 (QuestAdrenaline as SISA_AdrenalineQuest).AdrenalineStop()
		 (QuestNGPlusPreparations as SISA_NGPlusPreparations).AbortForNGPlus()
		 (QuestLawEnforcement as SISA_LawEnforcementQuest).LawEnforcementStop()
		 (QuestEnhancedInfirmary as SISA_EnhancedInfirmary).EnhancedInfirmaryStop()
		 (QuestDegradeSystems as SISA_RepairSystemQuest).RepairSystemStop()
		 (QuestOxygen as SISA_OxygenQuest).OxygenStop()
         (QuestRoverSystems as SISA_Rover).RoverSystemsStop()
		 (QuestSpaceshipSystems as SISA_SpaceshipFuel).SpaceshipSystemDisableSystems()	
		 (QuestSpaceshipSystems as SISA_SpaceshipFuel).SpaceshipSystemExterminatus()
		 (ItemInjector as SISA_ItemInjector).RevertAllLists()  

	        If (Game.IsPluginInstalled("Starvival - SpaceshipsUseAmmo.esm") == True && SpaceshipArsenalInstalled.GetValue() == 1)
                SpaceshipArsenalInstalled.SetValue(0)       
         EndIf
		 
		 Utility.Wait(1.0)
		 FadeFromBlack()
		 StartStarvival.SetValue(0)
		 Utility.Wait(2.0)
		 StarvivalStop.Cast(PlayerRef, PlayerRef)
		 UninstallMessage.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
		 (QuestToggler as SISA_Toggler).StopQuest()

EndFunction

Function SongbirdAudioplayer(Int MenuType = 0, Int Button = 0)
PlayerRef.Additem(POTI_SongBirdAudioPlayer, 1, True)
	 If Button == -1

 ElseIf MenuType == 0

		button = MSG_SongbirdRadioMenu.show()

	                                    If (button == 0)
                                            RadioStationTrigger(RadioClassicBaroque)									
									ElseIf (button == 1)
                                            RadioStationTrigger(RadioClassicNeoRomantic)
	                                ElseIf (button == 2)
                                            RadioStationTrigger(RadioCountryBlues)																		
									ElseIf (button == 3)
                                            RadioStationTrigger(RadioCrimsonMetal)										
									ElseIf (button == 4)
                                            RadioStationTrigger(RadioDarkSynth)
									ElseIf (button == 5)
                                            RadioStationTrigger(RadioElectronica)
	                                ElseIf (button == 6)
                                            RadioStationTrigger(RadioJazz)																		
									ElseIf (button == 7)
                                            RadioStationTrigger(RadioPop)									
									ElseIf (button == 8)
                                            RadioStationTrigger(RadioTechnoAstralLounge)		
									ElseIf (button == 9)
                                            RadioStationTrigger(RadioTechnoClean)
									ElseIf (button == 10)
                                            RadioStationTrigger(RadioTechnoParty)
									ElseIf (button == 11)
                                            MusicSilence.Add()
									        GV_RadioToggle.SetValue(1)
									ElseIf (button == 12)									   
										    MusicSilence.Remove()
									        wwiseevent.StopInstance(RadioSoundInstance)
										    RadioSoundInstance = -1
											GV_RadioToggle.SetValue(0)                                      									
									ElseIf (button == 13)
                                           ; Exit								 									       
									 EndIf
  EndIf

EndFunction

Function RadioStationTrigger(wwiseevent Station)

		 MusicSilence.Remove()
		 wwiseevent.StopInstance(RadioSoundInstance)
         RadioSoundInstance = -1
		 RadioSoundInstance = Station.Play(PlayerRef, None, None)
		 MusicSilence.Add()
		 GV_RadioToggle.SetValue(1)

Endfunction

Function SatiationCheckerBox(Int MenuType = 0, Int Button = 0, Bool MenuOpened = True)
       
	  If PlayerRef.GetItemCount(SatiationChecker) <= 0
         PlayerRef.Additem(SatiationChecker, 1, True)
   EndIf
 
 While MenuOpened
 	 
	 If Button == -1         

 ElseIf MenuType == 0
           
		   Float DrinkThirstCheck = PlayerRef.Getvalue(Thirst)	       
           Float FoodHungerCheck = PlayerRef.Getvalue(Hunger)
           Float SleepFatigueCheck = PlayerRef.Getvalue(Sleep)
           Float OversatiationCheck = PlayerRef.Getvalue(Oversatiation)
           Float DrunkennessCheck = PlayerRef.Getvalue(Drunkenness)
           Float SelfControlCheck = PlayerRef.Getvalue(SelfControl)
           Float HygieneCheck = PlayerRef.Getvalue(Hygiene)
		   
		   button = NeedsAllCheckerBox.show(FoodHungerCheck, DrinkThirstCheck, SleepFatigueCheck, OversatiationCheck, DrunkennessCheck, SelfControlCheck, HygieneCheck, 0.0, 0.0)	

	                                    If (button == 0)                                           
										   NeedsPlayerStatusToggle.SetValue(0)									
									ElseIf (button == 1)                                           
										   NeedsPlayerStatusToggle.SetValue(1)																		
									ElseIf (button == 2)                                           										   
										   MenuType = 1                                    
									ElseIf (button == 3)                                           
										   MenuType = 2									
									ElseIf (button == 4)                                           
										   MenuType = 3 
									ElseIf (button == 5)
										   MenuType = 4									
									ElseIf (button == 6)
										   MenuType = 5	
									ElseIf (button == 7)                                                                               
										   ; Exit
										   MenuOpened = False																		 
									 EndIf
 ElseIf MenuType == 1              			  
           
		   Float IntoxicationCheck01 = PlayerRef.Getvalue(Intoxication_Alcoholism)
           Float IntoxicationCheck02 = PlayerRef.Getvalue(Intoxication_Caffeinophagia)
           Float IntoxicationCheck03 = PlayerRef.Getvalue(Intoxication_CognitiveDissolution)
           Float IntoxicationCheck04 = PlayerRef.Getvalue(Intoxication_HeartAttack)
           Float IntoxicationCheck05 = PlayerRef.Getvalue(Intoxication_ParanoidTreatment)
           Float IntoxicationCheck06 = PlayerRef.Getvalue(Intoxication_StimulantsAddiction)		
           Float IntoxicationCheck07 = PlayerRef.Getvalue(Intoxication_Obesity)			
		   
		   button = IntoxicationCheckerBox.show(IntoxicationCheck01, IntoxicationCheck02, IntoxicationCheck03, IntoxicationCheck04, IntoxicationCheck05, IntoxicationCheck06, IntoxicationCheck07, 0.0, 0.0)	
	                                    
										If (button == 0)
                                           IntoxicationPlayerStatusToggle.SetValue(0)																		
									ElseIf (button == 1)									
                                           IntoxicationPlayerStatusToggle.SetValue(1)
									ElseIf (button == 2)                                           
										   MenuType = 0                                    
									ElseIf (button == 3)                                           
										   ; Exit                                           
										   MenuOpened = False									                                                                            									
									 EndIf
 ElseIf MenuType == 2  

           Float ReputationCheckUC = PlayerRef.Getvalue(ReputationUC)
           Float ReputationCheckFC = PlayerRef.Getvalue(ReputationFC)          
           Float ReputationCheckIP = PlayerRef.Getvalue(Reputation)
           Float ReputationCheckCF = PlayerRef.Getvalue(ReputationCF)
		   
		   button = ReputationCheckerBox.show(ReputationCheckUC, ReputationCheckFC, ReputationCheckIP, ReputationCheckCF)

										If (button == 0)
                                           RepPlayerStatusMenuToggle.SetValue(0)																		
									ElseIf (button == 1)									
                                           RepPlayerStatusMenuToggle.SetValue(1)																		
									ElseIf (button == 2)									
									        MenuType = 20
									ElseIf (button == 3)
									        MenuType = 21
									ElseIf (button == 4)
									        MenuType = 22
									ElseIf (button == 5)
									        MenuType = 23
									ElseIf (button == 6)									                                          
										   MenuType = 0                                    
									ElseIf (button == 7)                                           
										   ; Exit                                           
										   MenuOpened = False									                                                                            									
									 EndIf

 ElseIf MenuType == 20  

           Float ReputationCheckUC = PlayerRef.Getvalue(ReputationUC)
           
		   button = ReputationCheckerBoxUC.show(ReputationCheckUC)
																		
									    If (button == 0)									                                          
										    MenuType = 2 									                                 
									ElseIf (button == 1)                                           
										   ; Exit                                           
										   MenuOpened = False									                                                                            									
									 EndIf

 ElseIf MenuType == 21  

           Float ReputationCheckFC = PlayerRef.Getvalue(ReputationFC)
           
		   button = ReputationCheckerBoxFC.show(ReputationCheckFC)
																		
									    If (button == 0)									                                          
										    MenuType = 2 									                                 
									ElseIf (button == 1)                                           
										   ; Exit                                           
										   MenuOpened = False									                                                                            									
									 EndIf

 ElseIf MenuType == 22  

           Float ReputationCheckIP = PlayerRef.Getvalue(Reputation)
           
		   button = ReputationCheckerBoxIP.show(ReputationCheckIP)
																		
									    If (button == 0)									                                          
										    MenuType = 2                                 
									ElseIf (button == 1)                                           
										   ; Exit                                           
										   MenuOpened = False									                                                                            									
									 EndIf

 ElseIf MenuType == 23  

           Float ReputationCheckCF = PlayerRef.Getvalue(ReputationCF)
           
		   button = ReputationCheckerBoxCF.show(ReputationCheckCF)
																		
									    If (button == 0)									                                          
										   MenuType = 2                                    
									ElseIf (button == 1)                                           
										   ; Exit                                           
										   MenuOpened = False									                                                                            									
									 EndIf

 ElseIf MenuType == 3

           Float FameCheck = PlayerRef.Getvalue(Fame)

		   button = FameCheckerBox.show(FameCheck, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)

										If (button == 0)
                                           FamePlayerStatusMenuToggle.SetValue(0)
									ElseIf (button == 1)                                           
										   FamePlayerStatusMenuToggle.SetValue(1)									
									ElseIf (button == 2)                                          
										   MiscObject credits = Game.GetCredits()										   
										   If PlayerRef.GetItemCount(Credits) >= 500000
										      PlayerRef.RemoveItem(Credits, 500000) 
										      PlayerRef.DamageValue(Fame, 999)
									          FamePerkPointsTrigger01.SetValue(0)
									          FamePerkPointsTrigger02.SetValue(0)
									          FamePerkPointsTrigger03.SetValue(0)
									          FamePerkPointsTrigger04.SetValue(0)
									          FamePerkPointsTrigger05.SetValue(0)											  
										EndIf									
									ElseIf (button == 3)                                           										   
										   MenuType = 0                                    
									ElseIf (button == 4)                                           
										   ; Exit                                           
										   MenuOpened = False									                                                                            									
									 EndIf

 ElseIf MenuType == 4
           
		   Int ExecutionPointsMaxCheck = ConcealmentCheck()
           Float Meter = PlayerRef.Getvalue(ExecutionMeter)
		   Float ExecutionPointsCheck = PlayerRef.Getvalue(ExecutionPoints)
		   
		   button = ExecutionPointCheckerBox.show(ExecutionPointsCheck, ExecutionPointsMaxCheck, Meter, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)

										If (button == 0)
                                           StealthTakeDownStatusMenu.SetValue(0)
									ElseIf (button == 1)                                           
										   StealthTakeDownStatusMenu.SetValue(1)																		
									ElseIf (button == 2)                                           										   
										   MenuType = 0                                    
									ElseIf (button == 3)                                           
										   ; Exit                                           
										   MenuOpened = False									                                                                            									
									 EndIf
 ElseIf MenuType == 5
           
		   ActorValue HealthAV = Game.GetFormFromFile(0x000002D4, "Starfield.esm") as ActorValue ; Health
		   Float PlayerHealth = PlayerRef.GetValue(HealthAV)
		   
		   ActorValue OxygenAV = Game.GetFormFromFile(0x000002D5, "Starfield.esm") as ActorValue ; Oxygen		   
		   Float PlayerOxygen = PlayerRef.GetValue(OxygenAV)
		   
		   ActorValue OxygenRegenAV = Game.GetFormFromFile(0x00000359, "Starfield.esm") as ActorValue ; Oxygen Regen			   
		   Float PlayerOxygenRegen = PlayerRef.GetValue(OxygenRegenAV) - 100
		   
		   ActorValue ExperienceBonusAV = Game.GetFormFromFile(0x002D873C, "Starfield.esm") as ActorValue ; Experience Bonus	
		   Float PlayerExperienceBonus = (PlayerRef.GetValue(ExperienceBonusAV) - 1) * 100
		   
		   ActorValue PersuasionChanceAV = Game.GetFormFromFile(0x002D873B, "Starfield.esm") as ActorValue ; Persuasion Chance			   
		   Float PlayerPersuasionChance = (PlayerRef.GetValue(PersuasionChanceAV) - 1) * 100
		   
		   ActorValue CritDamageAV = Game.GetFormFromFile(0x0000039C, "Starfield.esm") as ActorValue ; Crit Damage	
		   Float PlayerCritDamage = (PlayerRef.GetValue(CritDamageAV) - 1) * 100		   

		   ActorValue SpeedMultAV = Game.GetFormFromFile(0x000002DA, "Starfield.esm") as ActorValue ; Speed Mult	
		   Float PlayerSpeedMult = PlayerRef.GetValue(SpeedMultAV)
		   
		   button = AttributesBox.show(PlayerHealth, PlayerOxygen, PlayerOxygenRegen, PlayerExperienceBonus, PlayerPersuasionChance, PlayerCritDamage, PlayerSpeedMult, 0.0, 0.0)
																		
									    If (button == 0)                                           										   
										   MenuType = 0                                    
									ElseIf (button == 1)                                           
										   ; Exit                                           
										   MenuOpened = False									                                                                            									
									 EndIf
  EndIf
		   
EndWhile
EndFunction

Event OnTimer(int aiTimerID)
	       	 
		     If (aiTimerID == 0)

					 If FuelCooldownCounts.GetValue() <= 0
				        FuelCooldownCounts.SetValue(30.0)
						FuelCooldown.SetValue(0)
						CooldownTimeFuel = 30.0
						CancelTimer(0)
				 Else
				        CooldownTimeFuel -= 1.0
						FuelCooldownCounts.SetValue(CooldownTimeFuel)
						StartTimer(1, 0)
				  EndIf

		 ElseIf (aiTimerID == 1)
                PlayerRef.Removeitem(DaggerCheckToken, 999, True, None)
		 ElseIf (aiTimerID == 2)
                GV_RejuvenationOnCooldown.SetValue(0)
		        MSG_RejuvenationIsReady.show()
		  EndIf
EndEvent

Function RejuvenationCooldownStart()
         GV_RejuvenationOnCooldown.SetValue(1)
		 StartTimer(600, 2)
EndFunction

Function BoostpackReplenishCooldown()                  
		 CooldownTimeFuel = 30.0
		 StartTimer(1, 0)
EndFunction

Function RefreshPlayersInventory()				   
		   If PlayerRef.GetItemCount(AllConsumables) > 0
              PlayerRef.RemoveItem(AllConsumables, 999999, True, ConsumableRefresherRef)
	    EndIf
EndFunction

Function RefreshPlayersInventoryAidChems()				   
		   If PlayerRef.GetItemCount(AllAidChems) > 0
              PlayerRef.RemoveItem(AllAidChems, 999999, True, ConsumableRefresherRef)
	    EndIf
EndFunction

Function RefreshPlayersInventoryAmmo()				   
		   If PlayerRef.GetItemCount(AllAmmo) > 0
              PlayerRef.RemoveItem(AllAmmo, 999999, True, ConsumableRefresherRef)
	    EndIf
EndFunction

Function RefreshPlayersInventoryExplosives()				   
		   If PlayerRef.GetItemCount(AllExplosives) > 0
              PlayerRef.RemoveItem(AllExplosives, 999999, True, ConsumableRefresherRef)
	    EndIf
EndFunction

Function JunkRecycleMode()

    If PlayerRef.GetItemCount(JunkRecycleMode) > 0
	   PlayerRef.RemoveItem(JunkRecycleMode, 9999, True, None)
 EndIf

EndFunction

Function PharmaKitMode()

    If PlayerRef.GetItemCount(PharmaKitMode) > 0
	   PlayerRef.RemoveItem(PharmaKitMode, 9999, True, None)
 EndIf

EndFunction

Function DaggerCheck()
         StartTimer(0.3, 1)
EndFunction

Float Function ServiceDiscountCost()
     
	 Float DiscountPercent00 = 1.00
     Float DiscountPercent01 = 1.15 	 
     Float DiscountPercent02 = 1.25 
     Float DiscountPercent03 = 1.35 
     Float DiscountPercent04 = 1.50 	 
		
		If ConditionFormServiceDiscount04.IsTrue(PlayerRef, None)    
		   Return DiscountPercent04 
	ElseIf ConditionFormServiceDiscount03.IsTrue(PlayerRef, None)  
	       Return DiscountPercent03
	ElseIf ConditionFormServiceDiscount02.IsTrue(PlayerRef, None)  	 
           Return DiscountPercent02
	ElseIf ConditionFormServiceDiscount01.IsTrue(PlayerRef, None) 
           Return DiscountPercent01 
Else	
           Return DiscountPercent00
     EndIf

EndFunction

Int Function ConcealmentCheck()
    
	  Int ConcealmentRank1 = 2
	  Int ConcealmentRank2 = 3      
	  Int ConcealmentRank3 = 4 
	  Int ConcealmentRank4 = 5
      
		If ConditionFormConcealmentRank4.IsTrue(PlayerRef, None)    
		   Return ConcealmentRank4 
	ElseIf ConditionFormConcealmentRank3.IsTrue(PlayerRef, None)  
	       Return ConcealmentRank3
	ElseIf ConditionFormConcealmentRank2.IsTrue(PlayerRef, None)  	 
           Return ConcealmentRank2
	ElseIf ConditionFormConcealmentRank1.IsTrue(PlayerRef, None) 
           Return ConcealmentRank1 
     EndIf

EndFunction

Function SurvivalDamageBook()
         
      If SurvivalDamageToggle.GetValue() == 0
         SurvivalDamageToggle.SetValue(1) 
         PlayerRef.DamageValue(SurvivalDamageIncoming, 18.5)
         PlayerRef.DamageValue(SurvivalDamageOutgoing, 16.5)
         PlayerRef.Addperk(SurvivalDamage, False) 
  ElseIf SurvivalDamageToggle.GetValue() == 1
         SurvivalDamageToggle.SetValue(0) 
         PlayerRef.RestoreValue(SurvivalDamageIncoming, 999)      
		 PlayerRef.RestoreValue(SurvivalDamageOutgoing, 999)       		 
         PlayerRef.Removeperk(SurvivalDamage) 
   EndIf

EndFunction

Function MobilityRestrictionsBook()
         
      If MobilityRestrictionsToggle.GetValue() == 0
         MobilityRestrictionsToggle.SetValue(1) 
         Utility.Wait(0.5)
		 PlayerRef.AddSpell(SuitRestrictionsSpell, False) 
  ElseIf MobilityRestrictionsToggle.GetValue() == 1
         MobilityRestrictionsToggle.SetValue(0)       		 
         PlayerRef.RemoveSpell(SuitRestrictionsSpell)
   EndIf

EndFunction

Function MobilityRestrictionsExitBook()
         
      If MobilityRestrictionsToggle.GetValue() == 1      		 
         PlayerRef.RemoveSpell(SuitRestrictionsSpell)
         Utility.Wait(0.5)
         PlayerRef.AddSpell(SuitRestrictionsSpell, False)
   EndIf

EndFunction

Function CombatStaggerBook()
         
      If CombatStaggerToggle.GetValue() == 0
         CombatStaggerToggle.SetValue(1) 
         QuestCombatStagger.Start()
  ElseIf CombatStaggerToggle.GetValue() == 1
         CombatStaggerToggle.SetValue(0)      		 
         QuestCombatStagger.Stop()
   EndIf

EndFunction

Function CombatSlideBook()
         
      If GV_CombatSlideToggle.GetValue() == 0
         GV_CombatSlideToggle.SetValue(1) 
         GV_CombatSlideO2Cost.SetValue(0.3)
         Utility.Wait(0.5)
		 PlayerRef.AddPerk(CombatSlidePerk, False)
  ElseIf GV_CombatSlideToggle.GetValue() == 1
         GV_CombatSlideToggle.SetValue(0)      		 
         GV_CombatSlideO2Cost.SetValue(0)
         PlayerRef.RemovePerk(CombatSlidePerk)
   EndIf

EndFunction

Function GravDashBook()
         
      If GV_GravDash.GetValue() == 0
         GV_GravDash.SetValue(1) 
  ElseIf GV_GravDash.GetValue() == 1
         GV_GravDash.SetValue(0)      		 
   EndIf

EndFunction

Function LawEnforcementBook()
	  	                
	  If GV_LawEnforcementToggle.GetValue() == 0
         GV_LawEnforcementToggle.SetValue(1) 
         QuestLawEnforcement.Start()
         Utility.Wait(0.5)
         (QuestLawEnforcement as SISA_LawEnforcementQuest).LawEnforcementStart() 
  ElseIf GV_LawEnforcementToggle.GetValue() == 1
         GV_LawEnforcementToggle.SetValue(0)      		 
         (QuestLawEnforcement as SISA_LawEnforcementQuest).LawEnforcementStop() 
         Utility.Wait(0.5)
		 QuestLawEnforcement.Stop()
   EndIf

EndFunction

Function EconomyBook()
         
      If EconomyToggle.GetValue() == 0
         EconomyToggle.SetValue(1) 
         QuestEconomy.Start()
         (QuestEconomy as SISA_Economy).EconomyStart()
  ElseIf EconomyToggle.GetValue() == 1
         EconomyToggle.SetValue(0) 
         (QuestEconomy as SISA_Economy).EconomyStop() 
         QuestEconomy.Stop()
   EndIf

EndFunction

Function EconomyLandingFeesToggle()
         
      If GV_EconomyLandingFeesToggle.GetValue() == 0
         GV_EconomyLandingFeesToggle.SetValue(1) 
         (QuestEconomy as SISA_Economy).LandingFeesStart()
  ElseIf GV_EconomyLandingFeesToggle.GetValue() == 1
         GV_EconomyLandingFeesToggle.SetValue(0) 
         (QuestEconomy as SISA_Economy).LandingFeesStop() 
   EndIf

EndFunction

Function EconomyCostlyOutpostsToggle()
         
      If GV_EconomyCostlyOutpostsToggle.GetValue() == 0
         GV_EconomyCostlyOutpostsToggle.SetValue(1) 
         (QuestEconomy as SISA_Economy).CostlyOutpostsStart()
  ElseIf GV_EconomyCostlyOutpostsToggle.GetValue() == 1
         GV_EconomyCostlyOutpostsToggle.SetValue(0) 
         (QuestEconomy as SISA_Economy).CostlyOutpostsStop() 
   EndIf

EndFunction

Function EconomyContrabandDropToggle()
         
      If GV_ContrabandDropToggle.GetValue() == 0
         GV_ContrabandDropToggle.SetValue(1) 
  ElseIf GV_ContrabandDropToggle.GetValue() == 1
         GV_ContrabandDropToggle.SetValue(0)
   EndIf

EndFunction

Function AdrenalineBook()

      If AdrenalineToggle.GetValue() == 0
         AdrenalineToggle.SetValue(1) 
         QuestAdrenaline.Start()
         Utility.Wait(0.5)
		 (QuestAdrenaline as SISA_AdrenalineQuest).AdrenalineStart()
  ElseIf AdrenalineToggle.GetValue() == 1
         AdrenalineToggle.SetValue(0)
		 (QuestAdrenaline as SISA_AdrenalineQuest).AdrenalineStop()
         Utility.Wait(0.5)
         QuestAdrenaline.Stop()
   EndIf

EndFunction

Function StealthTakedownsBook()

      If StealthTakeDownToggle.GetValue() == 0
         StealthTakeDownToggle.SetValue(1) 
         QuestTakedowns.Start()
         Utility.Wait(0.5)
		 (QuestTakedowns as SISA_TakedownsQuest).TakedownsStart()
  ElseIf StealthTakeDownToggle.GetValue() == 1
         StealthTakeDownToggle.SetValue(0) 
		 (QuestTakedowns as SISA_TakedownsQuest).TakedownsStop()
         Utility.Wait(0.5)
         QuestTakedowns.Stop()
   EndIf

EndFunction

Function FameAndReputationBook()
      
	  If GV_FameAndReputationToggle.GetValue() == 0
         GV_FameAndReputationToggle.SetValue(1)          
         QuestFameAndRep.Start()      
         Utility.Wait(0.5)
         (QuestFameAndRep as SISA_FameAndRepMB).FameAndRepStart()    
  ElseIf GV_FameAndReputationToggle.GetValue() == 1
         GV_FameAndReputationToggle.SetValue(0)          
         (QuestFameAndRep as SISA_FameAndRepMB).FameAndRepStop()
         Utility.Wait(0.5)
         QuestFameAndRep.Stop()
   EndIf

EndFunction

Function IntoxicationBook()
      	  
	  If IntoxicationStarter.GetValue() == 0
         IntoxicationStarter.SetValue(1) 
         QuestIntoxAddiction.Start()
         Utility.Wait(0.5)
		 (QuestIntoxAddiction as SISA_Intoxaddiction).StartIntoxaddiction() 
  ElseIf IntoxicationStarter.GetValue() == 1
         IntoxicationStarter.SetValue(0)
         (QuestIntoxAddiction as SISA_Intoxaddiction).StopIntoxaddiction()
         Utility.Wait(0.5)
         QuestIntoxAddiction.Stop()
   EndIf

EndFunction

Function WeaponHandlingStaminaControl()

      If WeaponHandlingStaminaControl_Toggle.GetValue() == 0
         WeaponHandlingStaminaControl_Toggle.SetValue(1)
		 PlayerRef.Addperk(WeaponControlDebuffPerk, False)
  ElseIf WeaponHandlingStaminaControl_Toggle.GetValue() == 1
         WeaponHandlingStaminaControl_Toggle.SetValue(0)
		 PlayerRef.Removeperk(WeaponControlDebuffPerk)
   EndIf

EndFunction

Function WeightlessAidsBook()

      If WeightlessAidsToggle.GetValue() == 0
         WeightlessAidsToggle.SetValue(1)
         PlayerRef.Addperk(DisableWeightForAidItems, False)
         RefreshCarryWeight()
  ElseIf WeightlessAidsToggle.GetValue() == 1
         WeightlessAidsToggle.SetValue(0)
         PlayerRef.Removeperk(DisableWeightForAidItems)   
         RefreshCarryWeight()  
   EndIf

EndFunction

Function OverencumbranceBook()

      If OverencumbranceToggle.GetValue() == 0
         OverencumbranceToggle.SetValue(1)
         Utility.Wait(0.5)
         PlayerRef.AddSpell(OverencumbranceSpell, False)
         RefreshCarryWeight()
  ElseIf OverencumbranceToggle.GetValue() == 1
         OverencumbranceToggle.SetValue(0)
         PlayerRef.RemoveSpell(OverencumbranceSpell)   
         RefreshCarryWeight()   
   EndIf

EndFunction

Function AdvancedlocksBook()

      If GV_LocksAndLockguardsToggle.GetValue() == 0
         GV_LocksAndLockguardsToggle.SetValue(1)
         PlayerRef.Addperk(AdvancedLocksPerk, False)
  ElseIf GV_LocksAndLockguardsToggle.GetValue() == 1
         GV_LocksAndLockguardsToggle.SetValue(0)         
		 PlayerRef.Removeperk(AdvancedLocksPerk)   
   EndIf

EndFunction

Function PocketpantsBook()
      
	  If GV_PocketpantsToggle.GetValue() == 0
         GV_PocketpantsToggle.SetValue(1)
         PlayerRef.Addperk(PocketPantsPerk, False)
  ElseIf GV_PocketpantsToggle.GetValue() == 1
         GV_PocketpantsToggle.SetValue(0)
         PlayerRef.Removeperk(PocketPantsPerk)   
   EndIf

EndFunction

Function StarvivalNeedsBook()

        If SurvivalToggler.GetValue() == 0
           SurvivalToggler.SetValue(1)
           QuestBasicNeeds.Start()
		   (QuestBasicNeeds as SISA_BasicNeeds).StartBasicNeeds()
		   RefreshPlayersInventory()
		   Utility.Wait(0.1)
		   NeedsLogosStart.Cast(PlayerRef, PlayerRef)	
	ElseIf SurvivalToggler.GetValue() == 1
           SurvivalToggler.SetValue(0) 
           (QuestBasicNeeds as SISA_BasicNeeds).StopBasicNeeds() 
		   RefreshPlayersInventory()
           QuestBasicNeeds.Stop()
		   Utility.Wait(0.1)
           NeedsLogosStop.Cast(PlayerRef, PlayerRef)
     EndIf

EndFunction

Function OversatiationBook()

      If OversatiationStarter.GetValue() == 0
         OversatiationStarter.SetValue(1) 
         (QuestBasicNeeds as SISA_BasicNeeds).StartOversatiation()
  ElseIf OversatiationStarter.GetValue() == 1
         OversatiationStarter.SetValue(0) 
         (QuestBasicNeeds as SISA_BasicNeeds).StopOversatiation()
   EndIf

EndFunction

Function DrunkennessBook()

      If DrunkennessToggle.GetValue() == 0
         DrunkennessToggle.SetValue(1)   
         (QuestBasicNeeds as SISA_BasicNeeds).StartDrunkenness()
  ElseIf DrunkennessToggle.GetValue() == 1
         DrunkennessToggle.SetValue(0) 
         (QuestBasicNeeds as SISA_BasicNeeds).StopDrunkenness()
   EndIf

EndFunction

Function SelfControlBook()

      If SelfControlToggle.GetValue() == 0
         SelfControlToggle.SetValue(1) 
         (QuestBasicNeeds as SISA_BasicNeeds).StartSelfControl() 
  ElseIf SelfControlToggle.GetValue() == 1
         SelfControlToggle.SetValue(0) 
         (QuestBasicNeeds as SISA_BasicNeeds).StopSelfControl()
   EndIf

EndFunction

Function HygieneBook()

      If GV_HygieneToggle.GetValue() == 0
         GV_HygieneToggle.SetValue(1) 
         (QuestBasicNeeds as SISA_BasicNeeds).StartHygiene() 
  ElseIf GV_HygieneToggle.GetValue() == 1
         GV_HygieneToggle.SetValue(0) 
         (QuestBasicNeeds as SISA_BasicNeeds).StopHygiene()
   EndIf

EndFunction

Function StartNeedsTimers()
         (QuestBasicNeeds as SISA_BasicNeeds).StartNeedsTimers()
EndFunction

Function StopNeedsTimers()
         (QuestBasicNeeds as SISA_BasicNeeds).StopNeedsTimers()
EndFunction

Function ResetNeedsTimers()
         (QuestBasicNeeds as SISA_BasicNeeds).ResetNeedsTimers()
EndFunction

Function ResetOversatiationTimer()
         (QuestBasicNeeds as SISA_BasicNeeds).ResetOversatiationTimer()
EndFunction

Function NeedsAutoModeToggle()

      If NeedsAutoConsumageToggle.GetValue() == 0
         NeedsAutoConsumageToggle.SetValue(1) 
         (QuestBasicNeeds as SISA_BasicNeeds).NeedsAutoConsumageStart() 
  ElseIf NeedsAutoConsumageToggle.GetValue() == 1
         NeedsAutoConsumageToggle.SetValue(0) 
         (QuestBasicNeeds as SISA_BasicNeeds).NeedsAutoConsumageStop()
   EndIf

EndFunction

Function StarvivalRoverSystemsBook()

        If RoverSytems_PerkToggle.GetValue() == 0
           RoverSytems_PerkToggle.SetValue(1)
		   QuestRoverSystems.Start()
           Utility.Wait(0.5)
		   (QuestRoverSystems as SISA_Rover).RoverSystemsStart()
	ElseIf RoverSytems_PerkToggle.GetValue() == 1
           RoverSytems_PerkToggle.SetValue(0)
		   (QuestRoverSystems as SISA_Rover).RoverSystemsStop()
           Utility.Wait(0.5)
		   QuestRoverSystems.Stop()
	 EndIf

EndFunction

Function StarvivalRoverRestrictDeployBook()

        If GV_RoverRestrictDeploy.GetValue() == 0
           GV_RoverRestrictDeploy.SetValue(1)
		   (QuestRoverSystems as SISA_Rover).RestrictedDeployStart()
	ElseIf GV_RoverRestrictDeploy.GetValue() == 1
           GV_RoverRestrictDeploy.SetValue(0)
		   (QuestRoverSystems as SISA_Rover).RestrictedDeployStop()
	 EndIf

EndFunction
				     					 	 
Function StarvivalBoostpacksNeedFuelBook()

        If BoostpackFuel_Toggle.GetValue() == 0
           BoostpackFuel_Toggle.SetValue(1)
           Utility.Wait(0.5)
	       Utility.SetINIFloat("fZeroGBoostDrainInitial:Boostpack", 0.0)	
	       Utility.SetINIFloat("fZeroGBoostDrainSustained:Boostpack", 0.0)	
	       Utility.SetINIFloat("fZeroGBoostMinFuelRequired:Boostpack", 5.0)
		   PlayerRef.AddSpell(BoostpackFuelSpell, False)	
		   PlayerRef.AddPerk(BoospackBlockJetpackingPerk, False)	
	ElseIf BoostpackFuel_Toggle.GetValue() == 1
           BoostpackFuel_Toggle.SetValue(0)
	       Utility.SetINIFloat("fZeroGBoostDrainInitial:Boostpack", 180.0)	
	       Utility.SetINIFloat("fZeroGBoostDrainSustained:Boostpack", 90.0)	
	       Utility.SetINIFloat("fZeroGBoostMinFuelRequired:Boostpack", 30.0)	
		   PlayerRef.RestoreValue(BoostpackFuelAV, 999)
		   PlayerRef.RemoveSpell(BoostpackFuelSpell) 
		   PlayerRef.RemovePerk(BoospackBlockJetpackingPerk)	
           BoostpackBlockJetpacking.SetValue(0)
	 EndIf

EndFunction

Function StarvivalCrewRationsBook()

        If CrewRationsToggle.GetValue() == 0
           CrewRationsToggle.SetValue(1)
           QuestCrewMorale.Start()
           Utility.Wait(0.5)
		   (QuestCrewMorale as SISA_CrewMorale).CrewMoraleStart()		   	
	ElseIf CrewRationsToggle.GetValue() == 1
           CrewRationsToggle.SetValue(0)
		   (QuestCrewMorale as SISA_CrewMorale).CrewMoraleStop()
           Utility.Wait(0.5)
           QuestCrewMorale.Stop()
	 EndIf

EndFunction

Function StarvivalOxygenBook()

        If OxygenToggle.GetValue() == 0
		   OxygenToggle.SetValue(1)         		 	 		 
           QuestOxygen.Start()
		   Utility.Wait(0.5)
		   (QuestOxygen as SISA_OxygenQuest).OxygenStart()	
	ElseIf OxygenToggle.GetValue() == 1
           OxygenToggle.SetValue(0)
		   (QuestOxygen as SISA_OxygenQuest).OxygenStop()
           Utility.Wait(0.5)	 
           QuestOxygen.Stop()
	 EndIf

EndFunction

Function StarvivalOxygenModeChanger()
		 (QuestOxygen as SISA_OxygenQuest).OxygenModeChanger()	
EndFunction

Function AfflictionsToggleBook()

        If GV_HarderAfflictionsToggle.GetValue() == 0
           GV_HarderAfflictionsToggle.SetValue(1)
           QuestHarsherAfflictions.Start()
		   Utility.Wait(0.5)
		   (QuestHarsherAfflictions as SISA_HarsherAfflictions).HarsherAfflictionsStart()
    ElseIf GV_HarderAfflictionsToggle.GetValue() == 1
           GV_HarderAfflictionsToggle.SetValue(0)   
           (QuestHarsherAfflictions as SISA_HarsherAfflictions).HarsherAfflictionsStop()
		   Utility.Wait(0.5)
           QuestHarsherAfflictions.Stop()
     EndIf

EndFunction

Function EnviHazardsToggle()

        If GV_EnviHazardsToggle.GetValue() == 0
           GV_EnviHazardsToggle.SetValue(1)
	       QuestEnviHazards.Start()
		   Utility.Wait(0.5)
		   (QuestEnviHazards as SISA_EnviHazardsQuest).EnviHazardsStart()
    ElseIf GV_EnviHazardsToggle.GetValue() == 1
           GV_EnviHazardsToggle.SetValue(0)   
		   (QuestEnviHazards as SISA_EnviHazardsQuest).EnviHazardsStop()
		   Utility.Wait(0.5)
	       QuestEnviHazards.Stop() 
     EndIf

EndFunction

Function EnviHazardsRarePhenomenaToggle()

        If GV_EnviHazardsRarePhenomenaToggle.GetValue() == 0
           GV_EnviHazardsRarePhenomenaToggle.SetValue(1)
		   (QuestEnviHazards as SISA_EnviHazardsQuest).RarePhenomenaStart()
    ElseIf GV_EnviHazardsRarePhenomenaToggle.GetValue() == 1
           GV_EnviHazardsRarePhenomenaToggle.SetValue(0)   
		   (QuestEnviHazards as SISA_EnviHazardsQuest).RarePhenomenaStop()
     EndIf

EndFunction

Function EnviHazardsInfernalVFXToggle()

        If GV_EnviHazardsInfernalVFXToggle.GetValue() == 0
           GV_EnviHazardsInfernalVFXToggle.SetValue(1)
		   (QuestEnviHazards as SISA_EnviHazardsQuest).InfernalVFXStart()
    ElseIf GV_EnviHazardsInfernalVFXToggle.GetValue() == 1
           GV_EnviHazardsInfernalVFXToggle.SetValue(0)   
		   (QuestEnviHazards as SISA_EnviHazardsQuest).InfernalVFXStop()
     EndIf

EndFunction

Function AdaptiveDomeVFXToggle()

        If GV_AdaptiveDomeFXToggle.GetValue() == 0
           GV_AdaptiveDomeFXToggle.SetValue(1)
		   (QuestEnviHazards as SISA_EnviHazardsQuest).AdaptiveDomeVFXStart()
    ElseIf GV_AdaptiveDomeFXToggle.GetValue() == 1
           GV_AdaptiveDomeFXToggle.SetValue(0)   
		   (QuestEnviHazards as SISA_EnviHazardsQuest).AdaptiveDomeVFXStop()
     EndIf

EndFunction

Function AmmoRegulatorToggle()

        If GV_AmmoRegulatorToggle.GetValue() == 0
           GV_AmmoRegulatorToggle.SetValue(1)
	       GV_AmmoRegulatorStoreMode.SetValue(0)
		   PlayerRef.Additem(AmmoCase, 1, False)
		   QuestAmmoRegulator.Start()
           RefreshPlayersInventoryAmmo()  										 
           RefreshPlayersInventoryExplosives() 
    ElseIf GV_AmmoRegulatorToggle.GetValue() == 1
           GV_AmmoRegulatorToggle.SetValue(0)   
	       PlayerRef.Removeitem(AmmoCase, 999, False)
		   QuestAmmoRegulator.Stop()
           RefreshPlayersInventoryAmmo()  										 
		   RefreshPlayersInventoryExplosives() 
     EndIf

EndFunction

Function AidRegulatorToggle()

        If GV_AidRegulatorToggle.GetValue() == 0
           GV_AidRegulatorToggle.SetValue(1)
	       GV_AidRegulatorStoreMode.SetValue(0)
		   PlayerRef.Additem(AidCase, 1, False)
	       QuestAidRegulator.Start()
		   RefreshPlayersInventoryAidChems()
    ElseIf GV_AidRegulatorToggle.GetValue() == 1
           GV_AidRegulatorToggle.SetValue(0)   
	       PlayerRef.Removeitem(AidCase, 999, False)
	       QuestAidRegulator.Stop()
	       RefreshPlayersInventoryAidChems()
     EndIf

EndFunction

Function EnhancedInfirmaryToggle()

        If InfirmaryEnhancedInstalled.GetValue() == 0
           InfirmaryEnhancedInstalled.SetValue(1)
	       QuestEnhancedInfirmary.Start()
		   Utility.Wait(0.5)
		   (QuestEnhancedInfirmary as SISA_EnhancedInfirmary).EnhancedInfirmaryStart()
	ElseIf InfirmaryEnhancedInstalled.GetValue() == 1
           InfirmaryEnhancedInstalled.SetValue(0)   
		   (QuestEnhancedInfirmary as SISA_EnhancedInfirmary).EnhancedInfirmaryStop()
		   Utility.Wait(0.5)
	       QuestEnhancedInfirmary.Stop()           
	 EndIf

EndFunction

Function EquipmentDegradationToggle()

        If GV_EquipmentDegradationToggle.GetValue() == 0
           GV_EquipmentDegradationToggle.SetValue(1)
	       QuestDegradeSystems.Start()
		   Utility.Wait(0.5)
		   (QuestDegradeSystems as SISA_RepairSystemQuest).RepairSystemStart()
	ElseIf GV_EquipmentDegradationToggle.GetValue() == 1
           GV_EquipmentDegradationToggle.SetValue(0)   
		   (QuestDegradeSystems as SISA_RepairSystemQuest).RepairSystemStop()
		   Utility.Wait(0.5)	       
		   QuestDegradeSystems.Stop()
	 EndIf

EndFunction

Function EquipmentDegradationFieldRepairDismantleMode()
         (QuestDegradeSystems as SISA_RepairSystemQuest).FieldRepairDismantleMode()
EndFunction

Function EnhancedMiningToggle()

        If GV_MiningEnhancedToggle.GetValue() == 0
           GV_MiningEnhancedToggle.SetValue(1)
           PlayerRef.AddPerk(EnhancedMiningPerk, False) 
	ElseIf GV_MiningEnhancedToggle.GetValue() == 1
           GV_MiningEnhancedToggle.SetValue(0)   
           PlayerRef.RemovePerk(EnhancedMiningPerk) 
	 EndIf

EndFunction

Function ComplicatedTheftToggle()

        If GV_ComplicatedTheftToggle.GetValue() == 0
           GV_ComplicatedTheftToggle.SetValue(1)
           Utility.Wait(1.0)
		   PlayerRef.AddSpell(ComplicatedTheftSpell, False) 
	ElseIf GV_ComplicatedTheftToggle.GetValue() == 1
           GV_ComplicatedTheftToggle.SetValue(0)   
           PlayerRef.RemoveSpell(ComplicatedTheftSpell) 
	 EndIf

EndFunction

Function UIHUDBridge()
	    Utility.Wait(1.0)
	    UnregisterForActorValueChangedEvent(PlayerRef, Oxygen)
	    UnregisterForActorValueChangedEvent(PlayerRef, Soak)
	    UnregisterForActorValueChangedEvent(PlayerRef, BoostpackFuelAV)
		UnregisterForMenuOpenCloseEvent("DataMenu")  
		PlayerRef.RemoveSpell(SuitSystemMonitorUISpell)
EndFunction

Function UIHUDBridgeDeconstruct()
	    Utility.Wait(1.0)
	    RegisterForActorValueChangedEvent(PlayerRef, Oxygen)
	    RegisterForActorValueChangedEvent(PlayerRef, Soak)
	    RegisterForActorValueChangedEvent(PlayerRef, BoostpackFuelAV)
		RegisterForMenuOpenCloseEvent("DataMenu")  
		PercentageTracker()
		PlayerRef.AddSpell(SuitSystemMonitorUISpell, False)
EndFunction