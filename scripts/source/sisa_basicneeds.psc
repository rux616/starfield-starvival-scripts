ScriptName SISA_BasicNeeds extends Quest

Group SISAActors
    Actor Property PlayerRef Auto Const
EndGroup

Group SISAActorValues
    ActorValue Property Hunger Auto Const
    ActorValue Property Health Auto Const
    ActorValue Property Sleep Auto Const
    ActorValue Property Thirst Auto Const
    ActorValue Property Oversatiation Auto Const
    ActorValue Property Drunkenness Auto Const
    ActorValue Property SelfControl Auto Const
    ActorValue Property Hygiene Auto Const
EndGroup

Group SISACondForms
    Conditionform Property ConditionFormNutritionRank1 Auto Const Mandatory
    Conditionform Property ConditionFormNutritionRank2 Auto Const Mandatory
    Conditionform Property ConditionFormNutritionRank3 Auto Const Mandatory
    Conditionform Property ConditionFormNutritionRank4 Auto Const Mandatory
    Conditionform Property ConditionFormPainToleranceRank1 Auto Const Mandatory
    Conditionform Property ConditionFormPainToleranceRank2 Auto Const Mandatory
    Conditionform Property ConditionFormPainToleranceRank3 Auto Const Mandatory
    Conditionform Property ConditionFormPainToleranceRank4 Auto Const Mandatory
    Conditionform Property ConditionFormProtection Auto Const Mandatory
    Conditionform Property ConditionFormSuppressFoodEffects Auto Const Mandatory
EndGroup

Group SISAArmors
    Armor Property WellRestedToken Auto Const
    Armor Property EnergyDrinkToken Auto Const
    Armor Property DrunkennessTokenStage1 Auto Const
    Armor Property DrunkennessTokenStage2 Auto Const
    Armor Property DrunkennessTokenStage3 Auto Const
EndGroup

Group SISAFactions
    Faction Property Faction_UnitedColonies Auto Const
    Faction Property Faction_FreestarCollective Auto Const
    Faction Property Faction_Neon Auto Const
    Faction Property Faction_CrimsonFleet Auto Const
    Faction Property Faction_Ecliptic Auto Const
    Faction Property Faction_Spacers Auto Const
    Faction Property Faction_Varuun Auto Const
    Faction Property Faction_Dazra Auto Const
EndGroup

Group SISAKeywords
    Keyword Property KWD_Human Auto Const
    Keyword Property KWD_Creature Auto Const
    Keyword Property KWD_FoodDrinkAlc Auto Const
EndGroup

Group SISAPotions
    Potion Property Blackout Auto Const
    Potion Property PotionAddictionFoodPoisoning Auto Const
    Potion Property SatiationChecker Auto Const
EndGroup

Group SISAPerks
    Perk Property SurvivalMonitorAddon Auto Const
    Perk Property SurvivalMonitorAddonDrunkenness Auto Const
    Perk Property SurvivalMonitorAddonSelfControl Auto Const
    Perk Property SelfControlPerk Auto Const
EndGroup

Group SISAGlobalVariables
    GlobalVariable Property BlackoutDuration Auto Const
    GlobalVariable Property BlockFatigueStopBonus Auto Const
    GlobalVariable Property ChemsPointsHigh Auto Const
    GlobalVariable Property ChemsPointsLow Auto Const
    GlobalVariable Property ChemsPointsMedium Auto Const
    GlobalVariable Property ChemsPointsVeryHighAbsorber Auto Const
    GlobalVariable Property ChemsPointsVeryHighJunkflush Auto Const
    GlobalVariable Property DrinkAlcPointsDrunkennessHigh Auto Const
    GlobalVariable Property DrinkAlcPointsDrunkennessLow Auto Const
    GlobalVariable Property DrinkAlcPointsDrunkennessMedium Auto Const
    GlobalVariable Property DrinkAlcPointsHigh Auto Const
    GlobalVariable Property DrinkAlcPointsLow Auto Const
    GlobalVariable Property DrinkAlcPointsMedium Auto Const
    GlobalVariable Property DrinkAlcPointsSelfControlHigh Auto Const
    GlobalVariable Property DrinkAlcPointsSelfControlLow Auto Const
    GlobalVariable Property DrinkAlcPointsSelfControlMedium Auto Const
    GlobalVariable Property DrinkAlcPointsSpecialFatigue Auto Const
    GlobalVariable Property DrinkAlcPointsSpecialThirst Auto Const
    GlobalVariable Property DrinkPointsHigh Auto Const
    GlobalVariable Property DrinkPointsLow Auto Const
    GlobalVariable Property DrinkPointsMedium Auto Const
    GlobalVariable Property DrinkPointsSelfControlLow Auto Const
    GlobalVariable Property DrinkPointsSelfControlMedium Auto Const
    GlobalVariable Property DrinkPointsSpecial Auto Const
    GlobalVariable Property DrinkPointsSpecialEnergy Auto Const
    GlobalVariable Property DrunkennessToggle Auto Const
    GlobalVariable Property FoodPointsHigh Auto Const
    GlobalVariable Property FoodPointsHighOversatiation Auto Const
    GlobalVariable Property FoodPointsHighOversatiationDrinks Auto Const
    GlobalVariable Property FoodPointsLegendary Auto Const
    GlobalVariable Property FoodPointsLegendaryOversatiation Auto Const
    GlobalVariable Property FoodPointsLow Auto Const
    GlobalVariable Property FoodPointsLowOversatiation Auto Const
    GlobalVariable Property FoodPointsLowOversatiationDrinks Auto Const
    GlobalVariable Property FoodPointsMedium Auto Const
    GlobalVariable Property FoodPointsMediumOversatiation Auto Const
    GlobalVariable Property FoodPointsMediumOversatiationDrinks Auto Const
    GlobalVariable Property FoodPointsPoor Auto Const
    GlobalVariable Property FoodPointsPoorOversatiation Auto Const
    GlobalVariable Property FoodPointsFruitVeggie Auto Const
    GlobalVariable Property FoodPointsFruitVeggieOversatiation Auto Const
    GlobalVariable Property FoodPointsSelfControlLow Auto Const
    GlobalVariable Property FoodPointsSelfControlMedium Auto Const
    GlobalVariable Property FoodPointsSelfControlPoor Auto Const
    GlobalVariable Property FoodPoisoningChance Auto Const
    GlobalVariable Property FoodPoisoningToggle Auto Const
    GlobalVariable Property HeartPlusSelfCTRLRestoration Auto Const
    GlobalVariable Property HeartPlusSelfCTRLTimeRestoration Auto Const
    GlobalVariable Property HungerDMGPoints Auto Const
    GlobalVariable Property HungerTime Auto Const
    GlobalVariable Property NeedsAutoConsumageThreshold_Hunger Auto Const
    GlobalVariable Property NeedsAutoConsumageThreshold_Sleep Auto Const
    GlobalVariable Property NeedsAutoConsumageThreshold_Thirst Auto Const
    GlobalVariable Property NeedsAutoConsumageToggle Auto Const
    GlobalVariable Property NeedsCheckerAfterConsumptionNotifier Auto Const
    GlobalVariable Property NeedsCheckerNotificationType Auto Const
    GlobalVariable Property OversatiationDMGPoints Auto Const
    GlobalVariable Property OversatiationStarter Auto Const
    GlobalVariable Property OversatiationTime Auto Const
    GlobalVariable Property SelfControlOnKillDMG_CrimsonFleet Auto Const
    GlobalVariable Property SelfControlOnKillDMG_Dazra Auto Const
    GlobalVariable Property SelfControlOnKillDMG_Ecliptic Auto Const
    GlobalVariable Property SelfControlOnKillDMG_FreestarCollective Auto Const
    GlobalVariable Property SelfControlOnKillDMG_Neon Auto Const
    GlobalVariable Property SelfControlOnKillDMG_Other Auto Const
    GlobalVariable Property SelfControlOnKillDMG_Spacers Auto Const
    GlobalVariable Property SelfControlOnKillDMG_UnitedColonies Auto Const
    GlobalVariable Property SelfControlOnKillDMG_Varuun Auto Const
    GlobalVariable Property SelfControlToggle Auto Const
    GlobalVariable Property SleepDMGPoints Auto Const
    GlobalVariable Property SleepStartTime Auto
    GlobalVariable Property SleepStopTime Auto
    GlobalVariable Property SleepTime Auto Const
    GlobalVariable Property SleepTOTALTime Auto
    GlobalVariable Property SnakeOilDrunkennessRestoration Auto Const
    GlobalVariable Property SnakeOilDrunkennessTimeRestoration Auto Const
    GlobalVariable Property ThirstDMGPoints Auto Const
    GlobalVariable Property ThirstTime Auto Const
    GlobalVariable Property GV_IntoxAddictionToggle Auto Const
    GlobalVariable Property GV_HygieneToggle Auto Const
    GlobalVariable Property GV_Hygiene_MODESleeping Auto Const
    GlobalVariable Property GV_PercentageTracker_Hunger Auto Const
    GlobalVariable Property GV_PercentageTracker_Thirst Auto Const
    GlobalVariable Property GV_PercentageTracker_Fatigue Auto Const
    GlobalVariable Property GV_PercentageTracker_Oversatiation Auto Const
    GlobalVariable Property GV_PercentageTracker_Drunkenness Auto Const
    GlobalVariable Property GV_PercentageTracker_SelfControl Auto Const
    GlobalVariable Property GV_PercentageTracker_Hygiene Auto Const
EndGroup

Group SISAObjectRef
    ObjectReference Property LunchboxRef Auto Const mandatory
EndGroup

Group SISAMagicEffects
    MagicEffect Property CaffeinophagiaCheck Auto Const
    MagicEffect Property AddichroneSuppression Auto Const
    MagicEffect Property FoodPoisoningDebuff Auto Const
    MagicEffect Property AlcoholSelfControlStop Auto Const
    MagicEffect Property ObesityAddiction Auto Const
	MagicEffect Property MGC_ChilledStage Auto Const
EndGroup

Group SISAMessages
    Message Property NeedsAllChecker Auto Const
    Message Property NeedsCheckerHUNG Auto Const
    Message Property NeedsCheckerHUNGHYDR Auto Const
    Message Property NeedsCheckerHYDR Auto Const
    Message Property NeedsCheckerHYDRFATG Auto Const
    Message Property NeedsCheckerHYDRFATGAlc Auto Const
    Message Property NeedsCheckerTimedFATG Auto Const
    Message Property NeedsCheckerTimedHUNG Auto Const
    Message Property NeedsCheckerTimedHYDR Auto Const
    Message Property NeedsCheckerChems Auto Const
    Message Property NeedsLocationWarning Auto Const
EndGroup

Group SISAFormLists
    FormList Property FoodItems_FruitVeggieGrade Auto
    FormList Property FoodItems_PoorGrade Auto
    FormList Property FoodItems_LowGrade Auto
    FormList Property FoodItems_MediumGrade Auto
    FormList Property FoodItems_MediumGradeButBigger Auto
    FormList Property FoodItems_HighGrade Auto
    FormList Property FoodItems_LegendaryGrade Auto
    FormList Property DrinkItems_LowGrade Auto
    FormList Property DrinkItems_MediumGrade Auto
    FormList Property DrinkItems_HighGrade Auto
    FormList Property DrinkItems_EnergyGrade Auto
    FormList Property AlcoholItems_LowGrade Auto
    FormList Property AlcoholItems_HighGrade Auto
    FormList Property AlcoholItems_MediumGrade Auto
    FormList Property AlcoholItems_EnergyGrade Auto
    FormList Property ChemItems_LowGrade Auto
    FormList Property ChemItems_MediumGrade Auto
    FormList Property ChemItems_HighGrade Auto
    FormList Property ChemItems_VeryHighGradeAbsorber Auto
    FormList Property ChemItems_VeryHighGradeJunkflush Auto
    FormList Property ComboItems_LowGrade Auto
    FormList Property ComboItems_MediumGrade Auto
    FormList Property ComboItems_MediumGradeButBigger Auto
    FormList Property LunchboxMode Auto
    FormList Property LunchboxAutoConsume Auto
EndGroup

Group SISASpells
    Spell Property SurvivalMonitorSpell Auto Const
    Spell Property SurvivalMonitorUISpell Auto Const
    Spell Property SurvivalMonitorHUDWatchSpell Auto Const
    Spell Property SurvivalMonitorNutriManagerSpell Auto Const
    Spell Property SurvivalMonitorOversatiationSpell Auto Const
    Spell Property SurvivalMonitorDrunkennessSpell Auto Const
    Spell Property FoodPoisoning Auto Const
    Spell Property HangoverStage1 Auto Const
    Spell Property HangoverStage2 Auto Const
    Spell Property HangoverStage3 Auto Const
    Spell Property ProtectionSpell Auto Const
    Spell Property HygieneSpell Auto Const
    Spell Property HygieneSystemSpell Auto Const
    Spell Property SuppressionSpell Auto Const
EndGroup

Group SISARefAliases
    ReferenceAlias Property PlayerShip Auto mandatory
EndGroup

Int FoodPoisoningCounts = 0

Function StartBasicNeeds()
         PrepareAV()
         RegisterEvents()
         AddPerksAndSpell()
         AddItems()
		 StartNeedsTimers()
EndFunction

Function StopBasicNeeds()
	     
		 PlayerRef.RestoreValue(Hunger, 999)
	     PlayerRef.RestoreValue(Sleep, 999)
	     PlayerRef.RestoreValue(Thirst, 999)
         PlayerRef.RestoreValue(Oversatiation, 999)
         PlayerRef.RestoreValue(SelfControl, 999)
		 PlayerRef.RestoreValue(Hygiene, 999)	
		 
		 PlayerRef.DispelSpell(FoodPoisoning)
         PlayerRef.DispelSpell(HangoverStage1)
         PlayerRef.DispelSpell(HangoverStage2)
         PlayerRef.DispelSpell(HangoverStage3)
		 PlayerRef.RemoveSpell(SurvivalMonitorSpell)
		 PlayerRef.RemoveSpell(SurvivalMonitorUISpell)
		 PlayerRef.RemoveSpell(SurvivalMonitorHUDWatchSpell)
		 PlayerRef.RemoveSpell(SurvivalMonitorNutriManagerSpell)
		 PlayerRef.RemoveSpell(SurvivalMonitorOversatiationSpell)
		 PlayerRef.RemoveSpell(SurvivalMonitorDrunkennessSpell)
		 PlayerRef.RemoveSpell(HygieneSpell) 
		 PlayerRef.RemoveSpell(HygieneSystemSpell) 
		 PlayerRef.RemoveSpell(SuppressionSpell) 
		 PlayerRef.RemovePerk(SurvivalMonitorAddon)           
		 PlayerRef.RemovePerk(SurvivalMonitorAddonDrunkenness) 				         
		 PlayerRef.RemovePerk(SurvivalMonitorAddonSelfControl)
		 PlayerRef.RemovePerk(SelfControlPerk)		   
		 PlayerRef.Removeitem(SatiationChecker, 9999, True, None)
         PlayerRef.RemoveItem(DrunkennessTokenStage1, 999, True, None)
         PlayerRef.RemoveItem(DrunkennessTokenStage2, 999, True, None)
         PlayerRef.RemoveItem(DrunkennessTokenStage3, 999, True, None)
		 PlayerRef.RemoveItem(EnergyDrinkToken, 999, True, None)
		 PlayerRef.RemoveItem(WellRestedToken, 999, True, None)

         SelfControlToggle.SetValue(0)
         DrunkennessToggle.SetValue(0)
         OversatiationStarter.SetValue(0) 
         GV_HygieneToggle.SetValue(0) 
		 BlockFatigueStopBonus.SetValue(0)

         StopNeedsTimers()

         UnregisterForPlayerSleep()
         UnregisterForPlayerWait()
         UnregisterForRemoteEvent(PlayerRef, "OnItemEquipped")
         UnregisterForRemoteEvent(PlayerRef, "OnPlayerJail")
		 UnregisterForRemoteEvent(PlayerRef, "OnKill")
		 UnregisterForRemoteEvent(PlayerShip, "OnKill")
         Int AutoHunger = NeedsAutoConsumageThreshold_Hunger.GetValue() as Int
         Int AutoThirst = NeedsAutoConsumageThreshold_Thirst.GetValue() as Int
         Int AutoSleep = NeedsAutoConsumageThreshold_Sleep.GetValue() as Int
		 UnregisterForActorValueLessThanEvent(PlayerRef, Hunger, AutoHunger)
		 UnregisterForActorValueLessThanEvent(PlayerRef, Sleep, AutoSleep)
		 UnregisterForActorValueLessThanEvent(PlayerRef, Thirst, AutoThirst)
	     UnregisterForActorValueChangedEvent(PlayerRef, Hunger)
	     UnregisterForActorValueChangedEvent(PlayerRef, Thirst)
	     UnregisterForActorValueChangedEvent(PlayerRef, Sleep)
	     UnregisterForActorValueChangedEvent(PlayerRef, Oversatiation)
	     UnregisterForActorValueChangedEvent(PlayerRef, Drunkenness)
	     UnregisterForActorValueChangedEvent(PlayerRef, SelfControl)
	     UnregisterForActorValueChangedEvent(PlayerRef, Hygiene)
         UnregisterForMenuOpenCloseEvent("DataMenu")
EndFunction

Function StartDrunkenness()	    
         PlayerRef.RestoreValue(Drunkenness, 999)
         PlayerRef.DamageValue(Drunkenness, 999)
         Utility.Wait(0.5)
		 PlayerRef.Addspell(SurvivalMonitorDrunkennessSpell, False)
         PlayerRef.Addperk(SurvivalMonitorAddonDrunkenness, False)
EndFunction

Function StopDrunkenness()	     
         PlayerRef.RestoreValue(Drunkenness, 999)
         PlayerRef.DamageValue(Drunkenness, 999)
         PlayerRef.DispelSpell(HangoverStage1)
         PlayerRef.DispelSpell(HangoverStage2)
         PlayerRef.DispelSpell(HangoverStage3)		 
         PlayerRef.RemoveItem(DrunkennessTokenStage1, 999, True, None)
         PlayerRef.RemoveItem(DrunkennessTokenStage2, 999, True, None)
         PlayerRef.RemoveItem(DrunkennessTokenStage3, 999, True, None)
		 PlayerRef.Removespell(SurvivalMonitorDrunkennessSpell)
         PlayerRef.Removeperk(SurvivalMonitorAddonDrunkenness)
         CancelTimer(6)
EndFunction
		 
Function StartOversatiation()	     
         PlayerRef.RestoreValue(Oversatiation, 999)
         PlayerRef.DamageValue(Oversatiation, 999)
		 Utility.Wait(0.5)
		 PlayerRef.Addspell(SurvivalMonitorOversatiationSpell, False) 
EndFunction

Function StopOversatiation()	     
         PlayerRef.RestoreValue(Oversatiation, 999)
         PlayerRef.DamageValue(Oversatiation, 999)
		 PlayerRef.Removespell(SurvivalMonitorOversatiationSpell) 
         CancelTimer(4)
EndFunction

Function StartSelfControl()	     
		 PlayerRef.DamageValue(SelfControl, 999)
		 PlayerRef.RestoreValue(SelfControl, 100)	
         PlayerRef.Addperk(SelfControlPerk, False) 
         PlayerRef.Addperk(SurvivalMonitorAddonSelfControl, False)
EndFunction

Function StopSelfControl()	     
		 PlayerRef.DamageValue(SelfControl, 999)
		 PlayerRef.RestoreValue(SelfControl, 100)	
         PlayerRef.Removeperk(SelfControlPerk)
		 PlayerRef.Removeperk(SurvivalMonitorAddonSelfControl)
         CancelTimer(7)
EndFunction

Function StartHygiene()	     
		 PlayerRef.DamageValue(Hygiene, 999)
		 PlayerRef.RestoreValue(Hygiene, 80)	
         Utility.Wait(1.0)
		 PlayerRef.Addspell(HygieneSpell, False) 
		 PlayerRef.Addspell(HygieneSystemSpell, False) 
EndFunction

Function StopHygiene()	     
		 PlayerRef.DamageValue(Hygiene, 999)
		 PlayerRef.RestoreValue(Hygiene, 999)	
         PlayerRef.Removespell(HygieneSpell)
         PlayerRef.Removespell(HygieneSystemSpell)
EndFunction

Function NeedsAutoConsumageStart()

         Int AutoHunger = NeedsAutoConsumageThreshold_Hunger.GetValue() as Int
         Int AutoThirst = NeedsAutoConsumageThreshold_Thirst.GetValue() as Int
         Int AutoSleep = NeedsAutoConsumageThreshold_Sleep.GetValue() as Int
		 
		 RegisterForActorValueLessThanEvent(PlayerRef, Hunger, AutoHunger)
		 RegisterForActorValueLessThanEvent(PlayerRef, Sleep, AutoSleep)
		 RegisterForActorValueLessThanEvent(PlayerRef, Thirst, AutoThirst)

EndFunction

Function NeedsAutoConsumageStop()
         
		 Int AutoHunger = NeedsAutoConsumageThreshold_Hunger.GetValue() as Int
         Int AutoThirst = NeedsAutoConsumageThreshold_Thirst.GetValue() as Int
         Int AutoSleep = NeedsAutoConsumageThreshold_Sleep.GetValue() as Int
		 
		 UnregisterForActorValueLessThanEvent(PlayerRef, Hunger, AutoHunger)
		 UnregisterForActorValueLessThanEvent(PlayerRef, Sleep, AutoSleep)
		 UnregisterForActorValueLessThanEvent(PlayerRef, Thirst, AutoThirst)

EndFunction

Function PrepareAV()

		 PlayerRef.RestoreValue(Hunger, 999)
		 PlayerRef.DamageValue(Hunger, 57)		 
		 PlayerRef.RestoreValue(Sleep, 999)         
		 PlayerRef.DamageValue(Sleep, 50)		 
		 PlayerRef.RestoreValue(Thirst, 999)          
		 PlayerRef.DamageValue(Thirst, 60)
         PlayerRef.RestoreValue(Oversatiation, 999)
         PlayerRef.DamageValue(Oversatiation, 999)
		 PlayerRef.RestoreValue(Drunkenness, 999)
		 PlayerRef.DamageValue(Drunkenness, 999)		 
		 PlayerRef.DamageValue(SelfControl, 999)
		 PlayerRef.RestoreValue(SelfControl, 100)	
		 PlayerRef.DamageValue(Hygiene, 999)
		 PlayerRef.RestoreValue(Hygiene, 80)         
		 PercentageTracker()

EndFunction

Function AddItems()
         
		 If PlayerRef.GetItemCount(SatiationChecker) <= 0
		    PlayerRef.Additem(SatiationChecker, 1, True)
      EndIf

EndFunction

Function AddPerksAndSpell()
         
		 Float WaitTime = 0.5
		 Utility.Wait(WaitTime)
		 
		 PlayerRef.Addspell(SurvivalMonitorSpell, False)
		 ;PlayerRef.Addspell(SurvivalMonitorUISpell, False) 
		 PlayerRef.Addspell(SurvivalMonitorHUDWatchSpell, False) 
		 PlayerRef.Addspell(SurvivalMonitorNutriManagerSpell, False) 
		 PlayerRef.Addspell(SurvivalMonitorOversatiationSpell, False) 
		 PlayerRef.Addspell(SurvivalMonitorDrunkennessSpell, False) 
		 PlayerRef.Addspell(ProtectionSpell, False) 
		 PlayerRef.Addspell(HygieneSpell, False) 
		 PlayerRef.Addspell(HygieneSystemSpell, False) 
		 PlayerRef.Addspell(SuppressionSpell, False) 
         PlayerRef.Addperk(SurvivalMonitorAddon, False)
		 PlayerRef.Addperk(SurvivalMonitorAddonDrunkenness, False) 				         
		 PlayerRef.Addperk(SurvivalMonitorAddonSelfControl, False)
         PlayerRef.Addperk(SelfControlPerk, False)

EndFunction

Function RegisterEvents()
         
		 SelfControlToggle.SetValue(1)
         DrunkennessToggle.SetValue(1)
         OversatiationStarter.SetValue(1) 
         GV_HygieneToggle.SetValue(1) 
		 BlockFatigueStopBonus.SetValue(0)

         RegisterForPlayerSleep()
         RegisterForPlayerWait()
         RegisterForRemoteEvent(PlayerRef, "OnItemEquipped")
         RegisterForRemoteEvent(PlayerRef, "OnPlayerJail")
		 RegisterForRemoteEvent(PlayerRef, "OnKill")
		 RegisterForRemoteEvent(PlayerShip, "OnKill")			  
         Int AutoHunger = NeedsAutoConsumageThreshold_Hunger.GetValue() as Int
         Int AutoThirst = NeedsAutoConsumageThreshold_Thirst.GetValue() as Int
         Int AutoSleep = NeedsAutoConsumageThreshold_Sleep.GetValue() as Int
		 RegisterForActorValueLessThanEvent(PlayerRef, Hunger, AutoHunger)
		 RegisterForActorValueLessThanEvent(PlayerRef, Sleep, AutoSleep)
		 RegisterForActorValueLessThanEvent(PlayerRef, Thirst, AutoThirst)
	     RegisterForActorValueChangedEvent(PlayerRef, Hunger)
	     RegisterForActorValueChangedEvent(PlayerRef, Thirst)
	     RegisterForActorValueChangedEvent(PlayerRef, Sleep)
	     RegisterForActorValueChangedEvent(PlayerRef, Oversatiation)
	     RegisterForActorValueChangedEvent(PlayerRef, Drunkenness)
	     RegisterForActorValueChangedEvent(PlayerRef, SelfControl)
	     RegisterForActorValueChangedEvent(PlayerRef, Hygiene)
         RegisterForMenuOpenCloseEvent("DataMenu")      
EndFunction

Function StartNeedsTimers()

         Float HungerStart = HungerTime.GetValue()
         Float SleepStart = SleepTime.GetValue()
         Float ThirstStart = ThirstTime.GetValue()

         StartTimer(HungerStart, 1)
         StartTimer(SleepStart, 2)
         StartTimer(ThirstStart, 3)

EndFunction

Function StopNeedsTimers()

         CancelTimer(0)
         CancelTimer(1)
         CancelTimer(2)
         CancelTimer(3)
         CancelTimer(4)
         CancelTimer(5)

EndFunction

Function ResetNeedsTimers()

         Float HungerStart = HungerTime.GetValue()
         Float SleepStart = SleepTime.GetValue()
         Float ThirstStart = ThirstTime.GetValue()
 
         CancelTimer(1)
         CancelTimer(2)
         CancelTimer(3)
         CancelTimer(4)

         StartTimer(HungerStart, 1)
         StartTimer(SleepStart, 2)
         StartTimer(ThirstStart, 3)
         Debug.Notification("NEEDs timers have been reset")

EndFunction

Function ResetOversatiationTimer()

         Float OversatiationStart = OversatiationTime.GetValue()
 
         CancelTimer(4)
         StartTimer(OversatiationStart, 4)
         Debug.Notification("Oversatiation timer has been reset")

EndFunction

Function Update()		 		 	 		 		 
EndFunction
         
Function SurvivalPointsRestoreAfterJail()

         int HungerDMG = Utility.RandomInt(25, 75)
         int SleepDMG = Utility.RandomInt(25, 75)
		 int ThirstDMG = Utility.RandomInt(25, 75)
         	     
		 PlayerRef.RestoreValue(Hunger, 999)
	     PlayerRef.RestoreValue(Sleep, 999)
	     PlayerRef.RestoreValue(Thirst, 999)
	     PlayerRef.RestoreValue(Oversatiation, 999)
	     PlayerRef.RestoreValue(SelfControl, 100)

         PlayerRef.DamageValue(Hunger, HungerDMG)
         PlayerRef.DamageValue(Sleep, SleepDMG)
         PlayerRef.DamageValue(Thirst, ThirstDMG)
         PlayerRef.DamageValue(Oversatiation, 100)
                  
		 If PlayerRef.GetItemCount(EnergyDrinkToken) > 0 || BlockFatigueStopBonus.GetValue() == 1
		    PlayerRef.RemoveItem(EnergyDrinkToken, 999, True, None) 
		    BlockFatigueStopBonus.SetValue(0)
	  EndIf
       		 
		 NeedsMessagingSystemAll()

EndFunction

Event OnMenuOpenCloseEvent(String asMenuName, Bool abOpening)
         	     	 			 
		 If asMenuName == "DataMenu"    
			       If abOpening == True														      					   
                      PercentageTracker()
					  PlayerRef.AddSpell(SurvivalMonitorUISpell, False) 
				Else			                            
						If (PlayerRef.HasSpell(SurvivalMonitorUISpell))
                            PlayerRef.RemoveSpell(SurvivalMonitorUISpell)
                     EndIf				   
			EndIf  
	  EndIf

EndEvent

Event OnActorValueChanged(ObjectReference akObjRef, ActorValue akActorValue)    
	   
	   If akObjRef == PlayerRef && akActorValue == Hunger
	      RegisterForActorValueChangedEvent(PlayerRef, Hunger)
          GV_PercentageTracker_Hunger.SetValue(PlayerRef.GetValue(Hunger))
   ElseIf akObjRef == PlayerRef && akActorValue == Thirst
	      RegisterForActorValueChangedEvent(PlayerRef, Thirst)
          GV_PercentageTracker_Thirst.SetValue(PlayerRef.GetValue(Thirst))
   ElseIf akObjRef == PlayerRef && akActorValue == Sleep
	      RegisterForActorValueChangedEvent(PlayerRef, Sleep)
          GV_PercentageTracker_Fatigue.SetValue(PlayerRef.GetValue(Sleep))
   ElseIf akObjRef == PlayerRef && akActorValue == Oversatiation
	      RegisterForActorValueChangedEvent(PlayerRef, Oversatiation)
          GV_PercentageTracker_Oversatiation.SetValue(PlayerRef.GetValue(Oversatiation))
   ElseIf akObjRef == PlayerRef && akActorValue == Drunkenness
	      RegisterForActorValueChangedEvent(PlayerRef, Drunkenness)
          GV_PercentageTracker_Drunkenness.SetValue(PlayerRef.GetValue(Drunkenness))	
   ElseIf akObjRef == PlayerRef && akActorValue == SelfControl
	      RegisterForActorValueChangedEvent(PlayerRef, SelfControl)
          GV_PercentageTracker_SelfControl.SetValue(PlayerRef.GetValue(SelfControl))	
   ElseIf akObjRef == PlayerRef && akActorValue == Hygiene
	      RegisterForActorValueChangedEvent(PlayerRef, Hygiene)
          GV_PercentageTracker_Hygiene.SetValue(PlayerRef.GetValue(Hygiene))	
    EndIf

EndEvent

Event OnActorValueLessThan(ObjectReference akObjRef, ActorValue akActorValue)
         
		 Int AutoHunger = NeedsAutoConsumageThreshold_Hunger.GetValue() as Int
         Int AutoThirst = NeedsAutoConsumageThreshold_Thirst.GetValue() as Int
         Int AutoSleep = NeedsAutoConsumageThreshold_Sleep.GetValue() as Int
         
		 RegisterForActorValueLessThanEvent(PlayerRef, Hunger, AutoHunger)
         RegisterForActorValueLessThanEvent(PlayerRef, Sleep, AutoThirst)
         RegisterForActorValueLessThanEvent(PlayerRef, Thirst, AutoSleep)

	     If akObjRef == PlayerRef
              If NeedsAutoConsumageToggle.GetValue() == 1
			        If akActorValue == Hunger
			           StartTimer(2, 5)			
                ElseIf akActorValue == Sleep
			           StartTimer(2, 55)
                ElseIf akActorValue == Thirst
			           StartTimer(2, 555)
		         EndIf			
           EndIf
	  EndIf

EndEvent
   
Function PercentageTracker()
         		 
         GV_PercentageTracker_Hunger.SetValue(PlayerRef.GetValue(Hunger))
         GV_PercentageTracker_Thirst.SetValue(PlayerRef.GetValue(Thirst))
         GV_PercentageTracker_Fatigue.SetValue(PlayerRef.GetValue(Sleep))
         GV_PercentageTracker_Oversatiation.SetValue(PlayerRef.GetValue(Oversatiation))
         GV_PercentageTracker_Drunkenness.SetValue(PlayerRef.GetValue(Drunkenness))
         GV_PercentageTracker_SelfControl.SetValue(PlayerRef.GetValue(SelfControl))
         GV_PercentageTracker_Hygiene.SetValue(PlayerRef.GetValue(Hygiene))

EndFunction

float Function GetCurrentHourOfDay() 
 
	float Time = Utility.GetCurrentRealTime()
	Return Time
 
EndFunction

Event Actor.OnPlayerJail(Actor akSender, ObjectReference akGuard, Form akFaction, Location akLocation, Int aeCrimeGold)

    SurvivalPointsRestoreAfterJail()

EndEvent

Event OnPlayerWaitStart(float afWaitStartTime, float afDesiredWaitEndTime)

	Float StartingSleep = GetCurrentHourOfDay()
	SleepStartTime.SetValue(StartingSleep)

EndEvent

Event OnPlayerWaitStop(bool abInterrupted)

	     Float EndingSleep = GetCurrentHourOfDay()
	     SleepStopTime.SetValue(EndingSleep)

              If PlayerRef.IsInScene() == False
		         NeedsAfterWait()
           EndIf

EndEvent

Event OnPlayerSleepStart(float afSleepStartTime, float afDesiredSleepEndTime, ObjectReference akBed)

	Float StartingSleep = GetCurrentHourOfDay()
	SleepStartTime.SetValue(StartingSleep)

EndEvent

Event OnPlayerSleepStop(bool abInterrupted, ObjectReference akBed)

	     Float HoursYouHaveSlept = (SleepStopTime.GetValue() - SleepStartTime.GetValue())/2.05
	     SleepTOTALTime.SetValue(HoursYouHaveSlept)
	     Float EndingSleep = GetCurrentHourOfDay()
	     SleepStopTime.SetValue(EndingSleep)
	                       
          If PlayerRef.IsInScene() == False
		     NeedsAfterSleep()
       EndIf

EndEvent

Function NeedsAfterSleep()

	    Float HoursYouHaveSlept = (SleepStopTime.GetValue() - SleepStartTime.GetValue())/2.05
	    SleepTOTALTime.SetValue(HoursYouHaveSlept)
		
		Float SFCheck = SelfControlCheck()        
        Float FoodHungerCheck = PlayerRef.Getvalue(Hunger)
        Float DrinkThirstCheck = PlayerRef.Getvalue(Thirst) 
        Float SleepFatigueCheck = PlayerRef.Getvalue(Sleep)
        Float OversatiationCheck = PlayerRef.Getvalue(Oversatiation) 

        Int HungerDamaged04 = (SleepTOTALTime.GetValue() as Int)*3
        PlayerRef.DamageValue(Hunger, HungerDamaged04)

		Int ThirstDamaged04 = (SleepTOTALTime.GetValue() as Int)*5		
        PlayerRef.DamageValue(Thirst, ThirstDamaged04)
								
		Int SleepRestored04 = (SleepTOTALTime.GetValue() as Int)*10
		Int SelfControlRestored04 = (SleepTOTALTime.GetValue() as Int)*10

        PlayerRef.RestoreValue(Sleep, SleepRestored04)
	    PlayerRef.RestoreValue(SelfControl, SelfControlRestored04 * SFCheck)	 
        FoodPoisoningFatigueDebuff()
		
		If OversatiationStarter.GetValue() == 1
		   Int OversatiationDamaged = (SleepTOTALTime.GetValue() as Int)*18 
	       PlayerRef.DamageValue(Oversatiation, OversatiationDamaged)
     EndIf
		
		If GV_HygieneToggle.GetValue() == 1 && GV_Hygiene_MODESleeping.GetValue() == 1
		   Int HygieneDamaged = (SleepTOTALTime.GetValue() as Int)*1 
	       PlayerRef.DamageValue(Hygiene, HygieneDamaged)
     EndIf

		Int DrunkennessDamaged = (SleepTOTALTime.GetValue() as Int)*15             
		PlayerRef.DamageValue(Drunkenness, DrunkennessDamaged)

        If HoursYouHaveSlept >= 7
		   PlayerRef.Additem(WellRestedToken, 1, True)  
		      If PlayerRef.GetItemCount(EnergyDrinkToken) > 0 || BlockFatigueStopBonus.GetValue() == 1
		         PlayerRef.RemoveItem(EnergyDrinkToken, 999, True, None) 
		         BlockFatigueStopBonus.SetValue(0)
	       EndIf
	  EndIf
	           
	  NeedsMessagingSystemAll()

EndFunction

Function NeedsAfterWait()
       
	    Float HoursYouHaveSlept = (SleepStopTime.GetValue() - SleepStartTime.GetValue())/2.05
	    SleepTOTALTime.SetValue(HoursYouHaveSlept)
 		
		Float SFCheck = SelfControlCheck()      
        Float FoodHungerCheck = PlayerRef.Getvalue(Hunger)
        Float DrinkThirstCheck = PlayerRef.Getvalue(Thirst) 
        Float SleepFatigueCheck = PlayerRef.Getvalue(Sleep)

        Int HungerDamaged04 = (SleepTOTALTime.GetValue() as Int)*3
        PlayerRef.DamageValue(Hunger, HungerDamaged04)

		Int ThirstDamaged04 = (SleepTOTALTime.GetValue() as Int)*5
        PlayerRef.DamageValue(Thirst, ThirstDamaged04)

		Int SleepDamaged04 = (SleepTOTALTime.GetValue() as Int)*8
        PlayerRef.DamageValue(Sleep, SleepDamaged04)
	    PlayerRef.DamageValue(SelfControl, SleepDamaged04 * SFCheck)
            
		If OversatiationStarter.GetValue() == 1
		   Int OversatiationDamaged = (SleepTOTALTime.GetValue() as Int)*20 
	       PlayerRef.DamageValue(Oversatiation, OversatiationDamaged)
     EndIf

		If GV_HygieneToggle.GetValue() == 1 && GV_Hygiene_MODESleeping.GetValue() == 1
		   Int HygieneDamaged = (SleepTOTALTime.GetValue() as Int)*1 
	       PlayerRef.DamageValue(Hygiene, HygieneDamaged)
     EndIf

		Int DrunkennessDamaged = (SleepTOTALTime.GetValue() as Int)*15             
		PlayerRef.DamageValue(Drunkenness, DrunkennessDamaged)

        NeedsMessagingSystemAll()

EndFunction

Function SatiationChecker()

           Float DrinkThirstCheck = PlayerRef.Getvalue(Thirst)       
           Float FoodHungerCheck = PlayerRef.Getvalue(Hunger)
           Float SleepFatigueCheck = PlayerRef.Getvalue(Sleep)
           Float OversatiationCheck = PlayerRef.Getvalue(Oversatiation)
           Float DrunkennessCheck = PlayerRef.Getvalue(Drunkenness)
           Float SelfControlCheck = PlayerRef.Getvalue(SelfControl)
           
		   NeedsAllChecker.show(FoodHungerCheck, DrinkThirstCheck, SleepFatigueCheck, OversatiationCheck, DrunkennessCheck, SelfControlCheck, 0.0, 0.0, 0.0)

EndFunction

Function NeedsPauseTimers()
         PauseTimer(1, True)
         PauseTimer(2, True)
         PauseTimer(3, True)
EndFunction

Function NeedsResumeTimers()
         PauseTimer(1, False)
         PauseTimer(2, False)
         PauseTimer(3, False)
EndFunction

Event OnTimer(int aiTimerID)
	 	  	      
     	     If (aiTimerID == 0)       
                  
				   Float BlackoutTimer = BlackoutDuration.GetValue()
                   
				   If PlayerRef.GetValue(Sleep) > 35
                      CancelTimer(0)
                Else
				      PlayerRef.EquipItem(Blackout, 1, True)
                      StartTimer(BlackoutTimer, 0)
				EndIf

      	 ElseIf (aiTimerID == 1)       
	            
				Float HungerStart = HungerTime.GetValue()                
				Float HungerDamage = HungerDMGPoints.GetValue()
				PlayerRef.DamageValue(Hunger, HungerDamage)
                NeedsMessagingSystemTimed(Hunger, NeedsCheckerTimedHUNG)
				StartTimer(HungerStart, 1)
      	 
		 ElseIf (aiTimerID == 2)       
                
				Float SleepStart = SleepTime.GetValue() 			    
				Float SleepDamage = SleepDMGPoints.GetValue() 
				PlayerRef.DamageValue(Sleep, SleepDamage)
                NeedsMessagingSystemTimed(Sleep, NeedsCheckerTimedFATG)
				StartTimer(SleepStart, 2)
      	 
		 ElseIf (aiTimerID == 3)       
                
				Float ThirstStart = ThirstTime.GetValue() 			    
				Float ThirstDamage = ThirstDMGPoints.GetValue() 
				PlayerRef.DamageValue(Thirst, ThirstDamage)
                NeedsMessagingSystemTimed(Thirst, NeedsCheckerTimedHYDR)
				StartTimer(ThirstStart, 3)
      	 
		 ElseIf (aiTimerID == 4)       
                 
				 Float OversatiationStart = OversatiationTime.GetValue() 			     
				 Float OversatiationDamage = OversatiationDMGPoints.GetValue()
                 Float OversatiationCheck = PlayerRef.Getvalue(Oversatiation)
			     
						 If OversatiationCheck <= 0
                            CancelTimer(4)
                     Else
							PlayerRef.DamageValue(Oversatiation, OversatiationDamage)
                            StartTimer(OversatiationStart, 4)
                      EndIf

      	 ElseIf (aiTimerID == 5)   
                  
		             Int HungerThreshold = NeedsAutoConsumageThreshold_Hunger.GetValue() as Int           		 		 
		             Float FoodHungerCheck = PlayerRef.Getvalue(Hunger) 
                     Float OversatiationCheck = PlayerRef.Getvalue(Oversatiation)
					 Float LocationRestrict = LocationCheck()                              
							  
							  If OversatiationCheck >= 60 || PlayerRef.HasMagicEffect(ObesityAddiction) || PlayerRef.HasMagicEffect(FoodPoisoningDebuff) || LocationRestrict == 0.0
				                 Return
						   EndIf
							  
							  If FoodHungerCheck < HungerThreshold
							          If LunchboxRef.GetItemCount(FoodItems_PoorGrade) > 0 || LunchboxRef.GetItemCount(FoodItems_LowGrade) > 0 || LunchboxRef.GetItemCount(FoodItems_MediumGrade) > 0 || LunchboxRef.GetItemCount(FoodItems_MediumGradeButBigger) > 0 || LunchboxRef.GetItemCount(FoodItems_HighGrade) > 0 || LunchboxRef.GetItemCount(FoodItems_LegendaryGrade) > 0 || LunchboxRef.GetItemCount(ComboItems_LowGrade) > 0 || LunchboxRef.GetItemCount(ComboItems_MediumGrade) > 0 || LunchboxRef.GetItemCount(ComboItems_MediumGradeButBigger) > 0
		                                 AutoFood()                				
		                                 StartTimer(1, 5)
			                       EndIf
						   Else
						         CancelTimer(5)
						   EndIf   

      	 ElseIf (aiTimerID == 55)   
                 
                     Int EnergyThreshold = NeedsAutoConsumageThreshold_Sleep.GetValue() as Int  		 		 
                     Float SleepFatigueCheck = PlayerRef.Getvalue(Sleep)
                     Float OversatiationCheck = PlayerRef.Getvalue(Oversatiation)                     
					 Float LocationRestrict = LocationCheck()   							  
							  
							  If OversatiationCheck >= 60 || PlayerRef.HasMagicEffect(ObesityAddiction) || PlayerRef.HasMagicEffect(FoodPoisoningDebuff) || LocationRestrict == 0.0
				                 Return
						   EndIf
							  
							  If SleepFatigueCheck < EnergyThreshold
						              If LunchboxRef.GetItemCount(DrinkItems_EnergyGrade) > 0 && BlockFatigueStopBonus.GetValue() == 0
		                                 AutoEnergy()
		                                 StartTimer(1, 55)
                                   EndIf
						   Else
						         CancelTimer(55)
                           EndIf

      	 ElseIf (aiTimerID == 555)   
       
		             Int DrinkThreshold = NeedsAutoConsumageThreshold_Thirst.GetValue() as Int          		 		
                     Float DrinkThirstCheck = PlayerRef.Getvalue(Thirst) 
                     Float OversatiationCheck = PlayerRef.Getvalue(Oversatiation)
					 Float LocationRestrict = LocationCheck()		  
							  
							  If OversatiationCheck >= 60 || PlayerRef.HasMagicEffect(ObesityAddiction) || PlayerRef.HasMagicEffect(FoodPoisoningDebuff) || LocationRestrict == 0.0
				                 Return
						   EndIf

							  If DrinkThirstCheck < DrinkThreshold
						              If LunchboxRef.GetItemCount(DrinkItems_LowGrade) > 0 || LunchboxRef.GetItemCount(DrinkItems_MediumGrade) > 0 || LunchboxRef.GetItemCount(DrinkItems_HighGrade) > 0
		                                 AutoDrink()
		                                 StartTimer(1, 555)
                                   EndIf
						   Else
						         CancelTimer(555)
						   EndIf   
 	  
		 ElseIf (aiTimerID == 6)

				       Float DrunkennessCheck = PlayerRef.Getvalue(Drunkenness)               
				       Float Duration = SnakeOilDrunkennessTimeRestoration.GetValue()
                       Float Damage = SnakeOilDrunkennessRestoration.GetValue()

                       If DrunkennessCheck <= 0
                          SatiationChecker()
                          CancelTimer(6)
				   Else
					      PlayerRef.damagevalue(Drunkenness, Damage)																																			  
			              StartTimer(Duration, 6)
                    EndIf

		 ElseIf (aiTimerID == 7)

				       Float SelfControlCheck = PlayerRef.Getvalue(SelfControl)                
				       Float Duration = HeartPlusSelfCTRLTimeRestoration.GetValue()
                       Float Restore = HeartPlusSelfCTRLRestoration.GetValue()

                       If SelfControlCheck >= 125
                          SatiationChecker()
                          CancelTimer(7)
				   Else
					      PlayerRef.RestoreValue(SelfControl, Restore)																																			  
			              StartTimer(Duration, 7)
                    EndIf
		  
		  EndIf
EndEvent

Float Function ChilledBonus()
      If PlayerRef.HasMagicEffect(MGC_ChilledStage)
         Return 1.30
   Else
         Return 1.0
   EndIf
EndFunction

Event ReferenceAlias.OnKill(ReferenceAlias akSender, ObjectReference akVictim)
       
	   Float ChilledStage = ChilledBonus()
	   Float SelfControlOnHumanKillUC = SelfControlOnKillDMG_UnitedColonies.GetValue() / ChilledStage
	   Float SelfControlOnHumanKillFC = SelfControlOnKillDMG_FreestarCollective.GetValue() / ChilledStage	   
	   Float SelfControlOnHumanKillNEON = SelfControlOnKillDMG_Neon.GetValue() / ChilledStage
	   Float SelfControlOnHumanKillCF = SelfControlOnKillDMG_CrimsonFleet.GetValue() / ChilledStage
	   Float SelfControlOnHumanKillECL = SelfControlOnKillDMG_Ecliptic.GetValue() / ChilledStage
	   Float SelfControlOnHumanKillSpace = SelfControlOnKillDMG_Spacers.GetValue() / ChilledStage
	   Float SelfControlOnHumanKillVar = SelfControlOnKillDMG_Varuun.GetValue() / ChilledStage
	   Float SelfControlOnHumanKillDazra = SelfControlOnKillDMG_Dazra.GetValue() / ChilledStage
	   Float SelfControlOnHumanKillOther = SelfControlOnKillDMG_Other.GetValue() / ChilledStage
	   
	   Float AlcoCheck = SelfControlAlcoCheck() 
	   Float SelfControlToggleChecker = SelfControlCheck()      
       	   
	   SpaceShipReference victimShip = akVictim as SpaceShipReference
	   
	    If akSender == PlayerShip
				If victimShip.IsInFaction(Faction_Ecliptic) == True
		           PlayerRef.DamageValue(SelfControl, SelfControlOnHumanKillECL * SelfControlToggleChecker * AlcoCheck)		        
			ElseIf victimShip.IsInFaction(Faction_Spacers) == True
		           PlayerRef.DamageValue(SelfControl, SelfControlOnHumanKillSpace * SelfControlToggleChecker * AlcoCheck)	
		    ElseIf victimShip.IsInFaction(Faction_Varuun) == True
		           PlayerRef.DamageValue(SelfControl, SelfControlOnHumanKillVar * SelfControlToggleChecker * AlcoCheck)	
			ElseIf victimShip.IsInFaction(Faction_CrimsonFleet) == True
		              If PlayerRef.IsInFaction(Faction_CrimsonFleet) == False
				         PlayerRef.DamageValue(SelfControl, SelfControlOnHumanKillCF * SelfControlToggleChecker * AlcoCheck)
		    	   Else
				         PlayerRef.DamageValue(SelfControl, SelfControlOnHumanKillCF * 5 * SelfControlToggleChecker * AlcoCheck)
                   EndIf
			ElseIf victimShip.IsInFaction(Faction_UnitedColonies) == True
		              If PlayerRef.IsInFaction(Faction_CrimsonFleet) == False
		                 PlayerRef.DamageValue(SelfControl, SelfControlOnHumanKillUC * SelfControlToggleChecker * AlcoCheck)
				   Else
		                 PlayerRef.DamageValue(SelfControl, SelfControlOnHumanKillUC / 10 * SelfControlToggleChecker * AlcoCheck)
				   EndIf
			ElseIf victimShip.IsInFaction(Faction_FreestarCollective) == True
		              If PlayerRef.IsInFaction(Faction_CrimsonFleet) == False
		                 PlayerRef.DamageValue(SelfControl, SelfControlOnHumanKillFC * SelfControlToggleChecker * AlcoCheck)
				   Else
		                 PlayerRef.DamageValue(SelfControl, SelfControlOnHumanKillFC / 10 * SelfControlToggleChecker * AlcoCheck)
				   EndIf
			ElseIf victimShip.IsInFaction(Faction_Dazra) == True
		              If PlayerRef.IsInFaction(Faction_CrimsonFleet) == False
		                 PlayerRef.DamageValue(SelfControl, SelfControlOnHumanKillDazra * SelfControlToggleChecker * AlcoCheck)
		    	   Else
		                 PlayerRef.DamageValue(SelfControl, SelfControlOnHumanKillDazra / 10 * SelfControlToggleChecker * AlcoCheck)
				   EndIf
			ElseIf victimShip
		           PlayerRef.DamageValue(SelfControl, SelfControlOnHumanKillOther * SelfControlToggleChecker * AlcoCheck)
			 EndIf
     EndIf

EndEvent

Event Actor.OnKill(Actor akSender, ObjectReference akVictim)
       
	   Float ChilledStage = ChilledBonus()	   	   
	   Float SelfControlOnHumanKillUC = SelfControlOnKillDMG_UnitedColonies.GetValue() / ChilledStage
	   Float SelfControlOnHumanKillFC = SelfControlOnKillDMG_FreestarCollective.GetValue() / ChilledStage   
	   Float SelfControlOnHumanKillNEON = SelfControlOnKillDMG_Neon.GetValue() / ChilledStage
	   Float SelfControlOnHumanKillCF = SelfControlOnKillDMG_CrimsonFleet.GetValue() / ChilledStage
	   Float SelfControlOnHumanKillECL = SelfControlOnKillDMG_Ecliptic.GetValue() / ChilledStage
	   Float SelfControlOnHumanKillSpace = SelfControlOnKillDMG_Spacers.GetValue() / ChilledStage
	   Float SelfControlOnHumanKillVar = SelfControlOnKillDMG_Varuun.GetValue() / ChilledStage
	   Float SelfControlOnHumanKillDazra = SelfControlOnKillDMG_Dazra.GetValue() / ChilledStage
	   Float SelfControlOnHumanKillOther = SelfControlOnKillDMG_Other.GetValue() / ChilledStage
	   
	   Float AlcoCheck = SelfControlAlcoCheck()       
	   Float SelfControlToggleChecker = SelfControlCheck()      
	   	   
	   Actor victimActor = akVictim as Actor
	   
	   If akSender == PlayerRef
																						
			    If victimActor.Haskeyword(KWD_Human) && victimActor.IsInFaction(Faction_Ecliptic) == True
		           PlayerRef.DamageValue(SelfControl, SelfControlOnHumanKillECL * SelfControlToggleChecker * AlcoCheck)		        
		    ElseIf victimActor.Haskeyword(KWD_Human) && victimActor.IsInFaction(Faction_Spacers) == True
		           PlayerRef.DamageValue(SelfControl, SelfControlOnHumanKillSpace * SelfControlToggleChecker * AlcoCheck)	
		    ElseIf victimActor.Haskeyword(KWD_Human) && victimActor.IsInFaction(Faction_Varuun) == True
		           PlayerRef.DamageValue(SelfControl, SelfControlOnHumanKillVar * SelfControlToggleChecker * AlcoCheck)	
			ElseIf victimActor.Haskeyword(KWD_Human) && victimActor.IsInFaction(Faction_CrimsonFleet) == True
		              If PlayerRef.IsInFaction(Faction_CrimsonFleet) == False
				         PlayerRef.DamageValue(SelfControl, SelfControlOnHumanKillCF * SelfControlToggleChecker * AlcoCheck)
		           Else
				         PlayerRef.DamageValue(SelfControl, SelfControlOnHumanKillCF * 5 * SelfControlToggleChecker * AlcoCheck)				   
				   EndIf
		    ElseIf victimActor.Haskeyword(KWD_Human) && victimActor.IsInFaction(Faction_UnitedColonies) == True
		              If PlayerRef.IsInFaction(Faction_CrimsonFleet) == False
		                 PlayerRef.DamageValue(SelfControl, SelfControlOnHumanKillUC * SelfControlToggleChecker * AlcoCheck)
		           Else
		                 PlayerRef.DamageValue(SelfControl, SelfControlOnHumanKillUC / 10 * SelfControlToggleChecker * AlcoCheck)
			       EndIf
			ElseIf victimActor.Haskeyword(KWD_Human) && victimActor.IsInFaction(Faction_FreestarCollective) == True
		              If PlayerRef.IsInFaction(Faction_CrimsonFleet) == False
		                 PlayerRef.DamageValue(SelfControl, SelfControlOnHumanKillFC * SelfControlToggleChecker * AlcoCheck)
		           Else
		                 PlayerRef.DamageValue(SelfControl, SelfControlOnHumanKillFC / 10 * SelfControlToggleChecker * AlcoCheck)
                   EndIf
			ElseIf victimActor.Haskeyword(KWD_Human) && victimActor.IsInFaction(Faction_Neon) == True
		              If PlayerRef.IsInFaction(Faction_CrimsonFleet) == False
		                 PlayerRef.DamageValue(SelfControl, SelfControlOnHumanKillNEON * SelfControlToggleChecker * AlcoCheck)
		    	   Else
		                 PlayerRef.DamageValue(SelfControl, SelfControlOnHumanKillNEON / 10 * SelfControlToggleChecker * AlcoCheck)
				   EndIf
			ElseIf victimActor.Haskeyword(KWD_Human) && victimActor.IsInFaction(Faction_Dazra) == True
		              If PlayerRef.IsInFaction(Faction_CrimsonFleet) == False
		                 PlayerRef.DamageValue(SelfControl, SelfControlOnHumanKillDazra * SelfControlToggleChecker * AlcoCheck)
		    	   Else
		                 PlayerRef.DamageValue(SelfControl, SelfControlOnHumanKillDazra / 10 * SelfControlToggleChecker * AlcoCheck)
				   EndIf
			ElseIf victimActor.Haskeyword(KWD_Human)
		           PlayerRef.DamageValue(SelfControl, SelfControlOnHumanKillOther * SelfControlToggleChecker * AlcoCheck)
			 EndIf
	EndIf

EndEvent

Event Actor.OnItemEquipped(Actor akSender, Form akBaseObject, ObjectReference akReference)

		   Float MainCalculator = NutritionCalculator()
		   Float MainCalculatorAlcOver = NutritionCalculatorAlcOver()
		   Float MainCalculatorAlcohol = DrunkennessCalculatorForAlcohol()
		   Float MainCalculatorAlcoholSC = SelfControlCalculatorForAlcohol()

		   Float FPFV = FoodPointsFruitVeggie.GetValue() * MainCalculator
		   Float FoodFruitVeggie = FPFV
		   Float FoodFruitVeggiePoison = FPFV / 3
		   
		   Float FPP = FoodPointsPoor.GetValue() * MainCalculator
		   Float FoodPoor = FPP
		   Float FoodPoorPoison = FPP / 3
		   
		   Float FPL = FoodPointsLow.GetValue() * MainCalculator
		   Float FoodLow = FPL
		   Float FoodLowPoison = FPL / 3
		   
		   Float FPM = FoodPointsMedium.GetValue() * MainCalculator
		   Float FoodMedium = FPM
		   Float FoodMediumPoison = FPM / 3
		   
		   Float FPH = FoodPointsHigh.GetValue() * MainCalculator
		   Float FoodHigh = FPH
		   Float FoodHighPoison = FPH / 3
 		   
		   Float FPLGN = FoodPointsLegendary.GetValue() * MainCalculator
		   Float FoodLegendary = FPLGN
 		   Float FoodLegendaryPoison = FPLGN / 3 * MainCalculator

 		   Float FoodPoorSelfControl = FoodPointsSelfControlPoor.GetValue()
 		   Float FoodLowSelfControl = FoodPointsSelfControlLow.GetValue()
 		   Float FoodMediumSelfControl = FoodPointsSelfControlMedium.GetValue()
 		   Float DrinkLowSelfControl = DrinkPointsSelfControlLow.GetValue()
 		   Float DrinkMediumSelfControl = DrinkPointsSelfControlMedium.GetValue()

		   Float OversatiationFruitVeggie = FoodPointsFruitVeggieOversatiation.GetValue() * MainCalculatorAlcOver		   
		   Float OversatiationPoor = FoodPointsPoorOversatiation.GetValue() * MainCalculatorAlcOver
		   Float OversatiationLow = FoodPointsLowOversatiation.GetValue() * MainCalculatorAlcOver
		   Float OversatiationMedium = FoodPointsMediumOversatiation.GetValue() * MainCalculatorAlcOver
		   Float OversatiationHigh = FoodPointsHighOversatiation.GetValue() * MainCalculatorAlcOver
 		   Float OversatiationLegendary = FoodPointsLegendaryOversatiation.GetValue() * MainCalculatorAlcOver                   
		   Float OversatiationLowDrinks = FoodPointsLowOversatiationDrinks.GetValue() * MainCalculatorAlcOver
		   Float OversatiationMediumDrinks = FoodPointsMediumOversatiationDrinks.GetValue() * MainCalculatorAlcOver
		   Float OversatiationHighDrinks = FoodPointsHighOversatiationDrinks.GetValue() * MainCalculatorAlcOver

		   Float DrinkLow = DrinkPointsLow.GetValue() * MainCalculator
		   Float DrinkMedium = DrinkPointsMedium.GetValue() * MainCalculator
		   Float DrinkHigh = DrinkPointsHigh.GetValue() * MainCalculator
		   Float DrinkSpecial = DrinkPointsSpecial.GetValue() * MainCalculator
		   
		   Float DPSE = DrinkPointsSpecialEnergy.GetValue() * MainCalculator
		   Float DrinkSpecialEnergy = DPSE
           Float DrinkSpecialEnergyAddict = DPSE / 6

		   Float DrinkAlcLow = DrinkAlcPointsLow.GetValue() * MainCalculatorAlcOver
		   Float DrinkAlcMedium = DrinkAlcPointsMedium.GetValue() * MainCalculatorAlcOver
		   Float DrinkAlcHigh = DrinkAlcPointsHigh.GetValue() * MainCalculatorAlcOver
		   Float DrinkAlcSpecialThirst = DrinkAlcPointsSpecialThirst.GetValue() * MainCalculatorAlcOver
		   
		   Float DAPSF = DrinkAlcPointsSpecialFatigue.GetValue() * MainCalculator
		   Float DrinkAlcSpecialFatigue = DAPSF
		   Float DrinkAlcSpecialFatigueAddict = DAPSF / 6

		   Float DrinkAlcDrunkennessLow = DrinkAlcPointsDrunkennessLow.GetValue() * MainCalculatorAlcohol
		   Float DrinkAlcDrunkennessMedium = DrinkAlcPointsDrunkennessMedium.GetValue() * MainCalculatorAlcohol
		   Float DrinkAlcDrunkennessHigh = DrinkAlcPointsDrunkennessHigh.GetValue() * MainCalculatorAlcohol

		   Float DrinkAlcSelfControlLow = DrinkAlcPointsSelfControlLow.GetValue() * MainCalculatorAlcoholSC
		   Float DrinkAlcSelfControlMedium = DrinkAlcPointsSelfControlMedium.GetValue() * MainCalculatorAlcoholSC
		   Float DrinkAlcSelfControlHigh = DrinkAlcPointsSelfControlHigh.GetValue() * MainCalculatorAlcoholSC

		   Float ChemsLow = ChemsPointsLow.GetValue()
		   Float ChemsMedium = ChemsPointsMedium.GetValue()
		   Float ChemsHigh = ChemsPointsHigh.GetValue()
		   Float ChemsVeryHighAbsorber = ChemsPointsVeryHighAbsorber.GetValue()
		   Float ChemsVeryHighJunkflush = ChemsPointsVeryHighJunkflush.GetValue()

		   Float Zero = 0

		   Float LocationRestrict = LocationCheck()  			
           If LocationRestrict == 0.0 && akBaseObject.Haskeyword(KWD_FoodDrinkAlc)
			  PlayerRef.Additem(akBaseObject, 1, True)
			  NeedsLocationWarning.Show()
			  Return
		EndIf
		   
		   If FoodItems_FruitVeggieGrade.Find(akBaseObject) != -1		 				 
              FoodPoints(FoodFruitVeggie, FoodFruitVeggiePoison, FoodPoorSelfControl, PotionAddictionFoodPoisoning, OversatiationFruitVeggie)
	   ElseIf FoodItems_PoorGrade.Find(akBaseObject) != -1		 				 
              FoodPoints(FoodPoor, FoodPoorPoison, FoodPoorSelfControl, PotionAddictionFoodPoisoning, OversatiationPoor)
	   ElseIf FoodItems_LowGrade.Find(akBaseObject) != -1		 				 
              FoodPoints(FoodLow, FoodLowPoison, FoodLowSelfControl, PotionAddictionFoodPoisoning, OversatiationLow)
	   ElseIf FoodItems_MediumGrade.Find(akBaseObject) != -1	
              FoodPoints(FoodMedium, FoodMediumPoison, FoodMediumSelfControl, PotionAddictionFoodPoisoning, OversatiationMedium) 
	   ElseIf FoodItems_MediumGradeButBigger.Find(akBaseObject) != -1
              FoodPoints(FoodHigh, FoodHighPoison, FoodMediumSelfControl, PotionAddictionFoodPoisoning, OversatiationHigh)
	   ElseIf FoodItems_HighGrade.Find(akBaseObject) != -1
              FoodPoints(FoodHigh, FoodHighPoison, Zero, None, OversatiationHigh)	   
	   ElseIf FoodItems_LegendaryGrade.Find(akBaseObject) != -1
              FoodPoints(FoodLegendary, FoodLegendaryPoison, Zero, None, OversatiationLegendary)   
	   ElseIf DrinkItems_LowGrade.Find(akBaseObject) != -1
              DrinkPoints(DrinkLow, Zero, Zero, DrinkLowSelfControl, PotionAddictionFoodPoisoning, OversatiationLowDrinks)				 			 	   
	   ElseIf DrinkItems_MediumGrade.Find(akBaseObject) != -1
              DrinkPoints(DrinkMedium, Zero, Zero, DrinkMediumSelfControl, PotionAddictionFoodPoisoning, OversatiationMediumDrinks)	   
	   ElseIf DrinkItems_HighGrade.Find(akBaseObject) != -1
              DrinkPoints(DrinkHigh, Zero, Zero, Zero, None, OversatiationHighDrinks)		   
	   ElseIf DrinkItems_EnergyGrade.Find(akBaseObject) != -1
              DrinkPointsCombo(DrinkSpecial, DrinkSpecialEnergy, DrinkSpecialEnergyAddict, Zero, None, OversatiationHighDrinks)				 					    
              BlockFatigue()	   
	   ElseIf ComboItems_LowGrade.Find(akBaseObject) != -1
              FoodPointsCombo(FoodLow, DrinkLow, FoodLowPoison, FoodLowSelfControl, PotionAddictionFoodPoisoning, OversatiationLow)	   
	   ElseIf ComboItems_MediumGrade.Find(akBaseObject) != -1
              FoodPointsCombo(FoodMedium, DrinkLow, FoodMediumPoison, FoodMediumSelfControl, PotionAddictionFoodPoisoning, OversatiationMedium) 		   
	   ElseIf ComboItems_MediumGradeButBigger.Find(akBaseObject) != -1
              FoodPointsCombo(FoodHigh, DrinkMedium, FoodHighPoison, FoodMediumSelfControl, PotionAddictionFoodPoisoning, OversatiationHigh)	   
	   ElseIf AlcoholItems_LowGrade.Find(akBaseObject) != -1
              AlcoholPoints(DrinkAlcLow, DrinkAlcLow, Zero, Zero, DrinkAlcDrunkennessLow, DrinkAlcSelfControlLow)
	   ElseIf AlcoholItems_MediumGrade.Find(akBaseObject) != -1
              AlcoholPoints(DrinkAlcMedium, DrinkAlcMedium, Zero, Zero, DrinkAlcDrunkennessMedium, DrinkAlcSelfControlMedium)
	   ElseIf AlcoholItems_HighGrade.Find(akBaseObject) != -1
              AlcoholPoints(DrinkAlcHigh, DrinkAlcHigh, Zero, Zero, DrinkAlcDrunkennessHigh, DrinkAlcSelfControlHigh)
	   ElseIf AlcoholItems_EnergyGrade.Find(akBaseObject) != -1
              AlcoholPoints(DrinkAlcSpecialThirst, Zero, DrinkAlcSpecialFatigue, DrinkAlcSpecialFatigueAddict, DrinkAlcDrunkennessMedium, DrinkAlcSelfControlMedium)
              BlockFatigue()	       
	   ElseIf ChemItems_LowGrade.Find(akBaseObject) != -1
              ChemPoints(ChemsLow)
	   ElseIf ChemItems_MediumGrade.Find(akBaseObject) != -1
              ChemPoints(ChemsMedium)
	   ElseIf ChemItems_HighGrade.Find(akBaseObject) != -1
              ChemPoints(ChemsHigh)        		
	   ElseIf ChemItems_VeryHighGradeAbsorber.Find(akBaseObject) != -1
              ChemPoints(ChemsVeryHighAbsorber)        		
	   ElseIf ChemItems_VeryHighGradeJunkflush.Find(akBaseObject) != -1
              ChemPoints(ChemsVeryHighJunkflush)        		    
		EndIf

EndEvent

Function FoodPointsCombo(Float RestoreAmountHunger, Float RestoreAmountThirst, Float RestoreAmountPoisoned, Float DamageSelfControl, Potion Poison, Float OversatiationDMG)
                        
						Float RelaxFurnitureBonus = RelaxFurnitureFoodDrinkBonus()              					    
						Float SelfControlDebuff = SelfControlDebuffCalc()
		                Float SFCheck = SelfControlCheck()
								  
							  If PlayerRef.HasMagicEffect(FoodPoisoningDebuff) == True
						         PlayerRef.RestoreValue(Hunger, RestoreAmountPoisoned * RelaxFurnitureBonus / SelfControlDebuff)
						         PlayerRef.RestoreValue(Thirst, RestoreAmountPoisoned * RelaxFurnitureBonus / SelfControlDebuff)						         
						   Else
						         PlayerRef.RestoreValue(Hunger, RestoreAmountHunger * RelaxFurnitureBonus / SelfControlDebuff)
						         PlayerRef.RestoreValue(Thirst, RestoreAmountThirst * RelaxFurnitureBonus / SelfControlDebuff)
						   EndIf

						      If PlayerRef.HasMagicEffect(ObesityAddiction) == True && PlayerRef.HasMagicEffect(AddichroneSuppression) == False 
						         PlayerRef.DamageValue(SelfControl, DamageSelfControl * SFCheck)
                          Else
								         If PlayerRef.GetValue(Oversatiation) <= 50.0
								            PlayerRef.RestoreValue(SelfControl, DamageSelfControl * SFCheck)
                                      Else
								            PlayerRef.DamageValue(SelfControl, DamageSelfControl * SFCheck)
									  EndIf
						   EndIf
						   
                           FoodPoisoning(Poison)						   
						   FoodPoisoningHungerDebuff()
						   FoodPoisoningThirstDebuff()
						   OversatiationPoints(OversatiationDMG)

	                       If NeedsCheckerAfterConsumptionNotifier.GetValue() == 1
                              NeedsCheckerHUNGHYDR.show(PlayerRef.GetValue(Hunger), PlayerRef.GetValue(Thirst), PlayerRef.GetValue(Oversatiation))	
                        EndIf

EndFunction

Function FoodPoints(Float RestoreAmount, Float RestoreAmountPoisoned, Float DamageSelfControl, Potion Poison, Float OversatiationDMG)
                        
						Float RelaxFurnitureBonus = RelaxFurnitureFoodDrinkBonus()              					    
						Float SelfControlDebuff = SelfControlDebuffCalc()
		                Float SFCheck = SelfControlCheck()
				          							  
							  If PlayerRef.HasMagicEffect(FoodPoisoningDebuff) == True
						         PlayerRef.RestoreValue(Hunger, RestoreAmountPoisoned * RelaxFurnitureBonus / SelfControlDebuff)
						   Else
						         PlayerRef.RestoreValue(Hunger, RestoreAmount * RelaxFurnitureBonus / SelfControlDebuff)
						   EndIf

						      If PlayerRef.HasMagicEffect(ObesityAddiction) == True && PlayerRef.HasMagicEffect(AddichroneSuppression) == False 
						         PlayerRef.DamageValue(SelfControl, DamageSelfControl * SFCheck)
                          Else
								         If PlayerRef.GetValue(Oversatiation) <= 50.0
								            PlayerRef.RestoreValue(SelfControl, DamageSelfControl * SFCheck)
                                      Else
								            PlayerRef.DamageValue(SelfControl, DamageSelfControl * SFCheck)
									  EndIf
						   EndIf

                           FoodPoisoning(Poison)					    
						   FoodPoisoningHungerDebuff()
						   OversatiationPoints(OversatiationDMG)
	                       
						   If NeedsCheckerAfterConsumptionNotifier.GetValue() == 1
                              NeedsCheckerHUNG.show(PlayerRef.GetValue(Hunger), PlayerRef.GetValue(Oversatiation))	
                        EndIf

EndFunction

Function DrinkPoints(Float RestoreAmount, Float SleepRestoreAmount, Float SleepRestoreAmountAddict, Float DamageSelfControl, Potion Poison, Float OversatiationDMG)
                        
						   Float RelaxFurnitureBonus = RelaxFurnitureFoodDrinkBonus()					    
						   Float SelfControlDebuff = SelfControlDebuffCalc()						
		                   Float SFCheck = SelfControlCheck()					       

							       If PlayerRef.HasMagicEffect(FoodPoisoningDebuff) == True
						              PlayerRef.RestoreValue(Thirst, RestoreAmount / 3 * RelaxFurnitureBonus / SelfControlDebuff)
						        Else
						              PlayerRef.RestoreValue(Thirst, RestoreAmount * RelaxFurnitureBonus / SelfControlDebuff)
						        EndIf
					   						   
						           If PlayerRef.HasMagicEffect(ObesityAddiction) == True && PlayerRef.HasMagicEffect(AddichroneSuppression) == False 
                                      PlayerRef.DamageValue(SelfControl, DamageSelfControl * SFCheck)
				                Else		   
								         If PlayerRef.GetValue(Oversatiation) <= 50.0
								            PlayerRef.RestoreValue(SelfControl, DamageSelfControl * SFCheck)
                                      Else
								            PlayerRef.DamageValue(SelfControl, DamageSelfControl * SFCheck)
									  EndIf
						        EndIf
						   BlockFatigueBonus(SleepRestoreAmount, SleepRestoreAmountAddict)
                           FoodPoisoning(Poison)						   
						   FoodPoisoningThirstDebuff()
						   FoodPoisoningFatigueDebuff()
						   OversatiationPoints(OversatiationDMG)
						   
						   If NeedsCheckerAfterConsumptionNotifier.GetValue() == 1
                              NeedsCheckerHYDR.show(PlayerRef.GetValue(Thirst), PlayerRef.GetValue(Oversatiation))	
                        EndIf

EndFunction

Function DrinkPointsCombo(Float RestoreAmount, Float SleepRestoreAmount, Float SleepRestoreAmountAddict, Float DamageSelfControl, Potion Poison, Float OversatiationDMG)
                        
						   Float RelaxFurnitureBonus = RelaxFurnitureFoodDrinkBonus()					    
						   Float SelfControlDebuff = SelfControlDebuffCalc()						
		                   Float SFCheck = SelfControlCheck()					       
					   						   
							       If PlayerRef.HasMagicEffect(FoodPoisoningDebuff) == True
						              PlayerRef.RestoreValue(Thirst, RestoreAmount / 3 * RelaxFurnitureBonus / SelfControlDebuff)
						        Else
						              PlayerRef.RestoreValue(Thirst, RestoreAmount * RelaxFurnitureBonus / SelfControlDebuff)
						        EndIf
						           
								   If PlayerRef.HasMagicEffect(ObesityAddiction) == True && PlayerRef.HasMagicEffect(AddichroneSuppression) == False
                                      PlayerRef.DamageValue(SelfControl, DamageSelfControl * SFCheck)
				                Else		   
								         If PlayerRef.GetValue(Oversatiation) <= 50.0
								            PlayerRef.RestoreValue(SelfControl, DamageSelfControl * SFCheck)
                                      Else
								            PlayerRef.DamageValue(SelfControl, DamageSelfControl * SFCheck)
									  EndIf
						        EndIf
						   
						   BlockFatigueBonus(SleepRestoreAmount, SleepRestoreAmountAddict)
                           FoodPoisoning(Poison)						   
						   FoodPoisoningThirstDebuff()
						   FoodPoisoningFatigueDebuff()
						   OversatiationPoints(OversatiationDMG)
						   
						   If NeedsCheckerAfterConsumptionNotifier.GetValue() == 1
                              NeedsCheckerHYDRFATG.show(PlayerRef.GetValue(Thirst), PlayerRef.GetValue(Sleep), PlayerRef.GetValue(Oversatiation))	
                        EndIf

EndFunction

Function AlcoholPoints(Float ThirstDamageAmount, Float SleepDamage, Float SleepRestore, Float SleepRestoreAddict, Float DrunkennessAdd, Float SelfControlAdd)
                           
						   Float DrunkCheck = DrunkennessCheck()
						   Float RelaxFurnitureBonus = RelaxFurnitureFoodDrinkBonus()					       
						   
						   PlayerRef.DamageValue(Thirst, ThirstDamageAmount)				 
					       PlayerRef.DamageValue(Sleep, SleepDamage)
					       PlayerRef.RestoreValue(Drunkenness, DrunkennessAdd * DrunkCheck)
		                   
						   Float SFCheck = SelfControlCheck()					       
						   
						   If PlayerRef.GetValue(Drunkenness) < 75
						      PlayerRef.RestoreValue(SelfControl, SelfControlAdd * SFCheck)
                       Else
						      PlayerRef.DamageValue(SelfControl, SelfControlAdd * SFCheck)						   
						EndIf 
						   
					   BlockFatigueBonus(SleepRestore, SleepRestoreAddict) 	   	               	   
					   FoodPoisoningFatigueDebuff()						   
						   
						   If NeedsCheckerAfterConsumptionNotifier.GetValue() == 1
                              NeedsCheckerHYDRFATGAlc.show(PlayerRef.GetValue(Thirst), PlayerRef.GetValue(Sleep), PlayerRef.GetValue(Drunkenness))	
                        EndIf

EndFunction

Function ChemPoints(Float DamageAmount)                        
		 PlayerRef.DamageValue(Thirst, DamageAmount)			 
		 PlayerRef.DamageValue(Hunger, DamageAmount)
		 PlayerRef.DamageValue(Sleep, DamageAmount)   
		 If NeedsCheckerAfterConsumptionNotifier.GetValue() == 1
            NeedsCheckerChems.show(PlayerRef.GetValue(Hunger), PlayerRef.GetValue(Thirst), PlayerRef.GetValue(Sleep))	
      EndIf
EndFunction

Function OversatiationPoints(Float DamageAmount)
                        					    
					    If OversatiationStarter.GetValue() == 1
						   Float RelaxFurnitureOversatiation = RelaxFurnitureOversatiationBonus()
						   Float OversatiationStart = OversatiationTime.GetValue()
			               PlayerRef.RestoreValue(Oversatiation, DamageAmount / RelaxFurnitureOversatiation)
			               StartTimer(OversatiationStart, 4)
					 EndIf

EndFunction

Function FoodPoisoning(Potion Poison)

         If FoodPoisoningToggle.GetValue() == 1
                If PlayerRef.HasMagicEffect(FoodPoisoningDebuff) == False
                   int Chance = Utility.RandomInt(0, 100)
                   Int MaxChance = FoodPoisoningChance.GetValue()as Int
                   Int MaxChanceObesity = 15
                      If PlayerRef.HasMagicEffect(ObesityAddiction) == False
				              If Chance <= MaxChance
                                 FoodPoisoningCounts += 1  
								   If FoodPoisoningCounts < 5
								      PlayerRef.EquipItem(Poison, 1, True)
                                      FoodPoisoningCounts = 0
								EndIf
						   EndIf
				   Else
				              If Chance <= MaxChanceObesity
                                 PlayerRef.EquipItem(Poison, 1, True)
                           EndIf
				   EndIf
             EndIf
      EndIf

EndFunction

Function FoodPoisoningNeedsThresholdsDamage()
		 If PlayerRef.GetValue(Hunger) > 70
			PlayerRef.DamageValue(Hunger, PlayerRef.GetValue(Hunger) - 70)
	  EndIf
		 If PlayerRef.GetValue(Thirst) > 70
			PlayerRef.DamageValue(Thirst, PlayerRef.GetValue(Thirst) - 70)
	  EndIf
		 If PlayerRef.GetValue(Sleep) > 70
			PlayerRef.DamageValue(Sleep, PlayerRef.GetValue(Sleep) - 70)
	  EndIf
EndFunction

Function FoodPoisoningHungerDebuff()
   If PlayerRef.HasMagicEffect(FoodPoisoningDebuff) == True
		 If PlayerRef.GetValue(Hunger) > 70
			PlayerRef.DamageValue(Hunger, PlayerRef.GetValue(Hunger) - 70)
	  EndIf
EndIf
EndFunction

Function FoodPoisoningThirstDebuff()
   If PlayerRef.HasMagicEffect(FoodPoisoningDebuff) == True
		 If PlayerRef.GetValue(Thirst) > 70
			PlayerRef.DamageValue(Thirst, PlayerRef.GetValue(Thirst) - 70)
	  EndIf
EndIf
EndFunction

Function FoodPoisoningFatigueDebuff()
   If PlayerRef.HasMagicEffect(FoodPoisoningDebuff) == True
		 If PlayerRef.GetValue(Sleep) > 70
			PlayerRef.DamageValue(Sleep, PlayerRef.GetValue(Sleep) - 70)
	  EndIf
EndIf
EndFunction

Function BlockFatigueBonus(Float SleepRestore, Float SleepRestoreAddict)                        
         
		                   Float RelaxFurnitureBonus = RelaxFurnitureFoodDrinkBonus()
                           Float SelfControlDebuff = SelfControlDebuffCalc()
						   
						   If BlockFatigueStopBonus.Getvalue() == 0
					                 	Int IfIntoxAddictionActive = IntoxAddictionCheck()
                                        If IfIntoxAddictionActive == 1
									              If PlayerRef.HasMagicEffect(CaffeinophagiaCheck) == True && PlayerRef.HasMagicEffect(AddichroneSuppression) == False
									                 PlayerRef.RestoreValue(Sleep, SleepRestoreAddict * RelaxFurnitureBonus / SelfControlDebuff)
							                   Else
									                 PlayerRef.RestoreValue(Sleep, SleepRestore * RelaxFurnitureBonus / SelfControlDebuff)
							                   EndIf
									Else
									        PlayerRef.RestoreValue(Sleep, SleepRestore * RelaxFurnitureBonus / SelfControlDebuff)
								     EndIf	
			           Else							 
							      PlayerRef.DamageValue(Sleep, SleepRestore * RelaxFurnitureBonus / SelfControlDebuff)	
                       EndIf

EndFunction

Float Function LocationCheck()

      Float LocationOn = 0.0
      Float LocationOff = 1.0

          If ConditionFormSuppressFoodEffects.IsTrue(PlayerRef, None)  
		     return LocationOn
       Else
			 return LocationOff   
       EndIf

EndFunction

Float Function DrunkennessCheck()

      Float DrunkennessEnabled = 1.0
      Float DrunkennessDisabled = 0.0

      If DrunkennessToggle.GetValue() == 1
         return DrunkennessEnabled
  Else
         return DrunkennessDisabled   
   EndIf

EndFunction

Float Function SelfControlCheck()

      Float SelfControlEnabled = 1.0
      Float SelfControlDisabled = 0.0

      If SelfControlToggle.GetValue() == 1
         return SelfControlEnabled
  Else
         return SelfControlDisabled   
   EndIf

EndFunction

Float Function SelfControlAlcoCheck()

      Float HeavyAlcohol = 0.0
      Float LowAlcohol = 1.0

      If PlayerRef.HasMagicEffect(AlcoholSelfControlStop) == True
         return HeavyAlcohol
  Else
         return LowAlcohol   
   EndIf

EndFunction

Function BlockFatigue()

                    If PlayerRef.GetItemCount(EnergyDrinkToken) < 3
	                   PlayerRef.Additem(EnergyDrinkToken, 1, True)
					      If PlayerRef.GetItemCount(EnergyDrinkToken) >= 3
                             BlockFatigueStopBonus.SetValue(1)
                       EndIf
	             EndIf

EndFunction

Float Function RelaxFurnitureFoodDrinkBonus()
         
		 ObjectReference RelaxFurniture = PlayerRef.GetFurnitureUsing()
         Float BonusMult = 1.5
		 Float NoBonus = 1.0
		 
		 If RelaxFurniture
            Return BonusMult
	  Else
            Return NoBonus
	  EndIf

EndFunction

Float Function RelaxFurnitureOversatiationBonus()
         
		 ObjectReference RelaxFurniture = PlayerRef.GetFurnitureUsing()
         Float BonusMult = 1.35
		 Float NoBonus = 1.0
		 
		 If RelaxFurniture
            Return BonusMult
	  Else
            Return NoBonus
	  EndIf

EndFunction

Float Function SelfControlDebuffCalc()
         
         Float DebuffMultStage1 = 1.5
         Float DebuffMultStage2 = 2.0
         Float DebuffMultStage3 = 3.0		 
		 Float NoDebuff = 1.0
		 
		 If PlayerRef.GetValue(SelfControl) >= 50 && PlayerRef.GetValue(SelfControl) < 75 
            Return DebuffMultStage1
	 ElseIf PlayerRef.GetValue(SelfControl) >= 25 && PlayerRef.GetValue(SelfControl) < 50
            Return DebuffMultStage2
	 ElseIf PlayerRef.GetValue(SelfControl) < 25
            Return DebuffMultStage3	  
	  Else
            Return NoDebuff
	  EndIf

EndFunction

Float Function SelfControlDebuffCalcForSleep()
         
         Float DebuffMultStage1 = 2.5
         Float DebuffMultStage2 = 3.0
         Float DebuffMultStage3 = 4.0		 
		 Float NoDebuff = 1.0
		 
		 If PlayerRef.GetValue(SelfControl) >= 50 && PlayerRef.GetValue(SelfControl) < 75 
            Return DebuffMultStage1
	 ElseIf PlayerRef.GetValue(SelfControl) >= 25 && PlayerRef.GetValue(SelfControl) < 50
            Return DebuffMultStage2
	 ElseIf PlayerRef.GetValue(SelfControl) < 25
            Return DebuffMultStage3	  
	  Else
            Return NoDebuff
	  EndIf

EndFunction

Float Function NutritionCalculator()
	  
	  Float NutritionRank0 = 1.00      
	  Float NutritionRank1 = 1.25
	  Float NutritionRank2 = 1.50      
	  Float NutritionRank3 = 1.70 
	  Float NutritionRank4 = 2.00
      
		If ConditionFormNutritionRank4.IsTrue(PlayerRef, None)    
		   Return NutritionRank4 
	ElseIf ConditionFormNutritionRank3.IsTrue(PlayerRef, None)  
	       Return NutritionRank3
	ElseIf ConditionFormNutritionRank2.IsTrue(PlayerRef, None)  	 
           Return NutritionRank2
	ElseIf ConditionFormNutritionRank1.IsTrue(PlayerRef, None) 
           Return NutritionRank1 
Else	
           Return NutritionRank0
     EndIf

EndFunction

Float Function NutritionCalculatorAlcOver()
	  
	  Float NutritionRank0 = 1.00      
	  Float NutritionRank1 = 0.80
	  Float NutritionRank2 = 0.67      
	  Float NutritionRank3 = 0.59 
	  Float NutritionRank4 = 0.50
      
		If ConditionFormNutritionRank4.IsTrue(PlayerRef, None)    
		   Return NutritionRank4 
	ElseIf ConditionFormNutritionRank3.IsTrue(PlayerRef, None)  
	       Return NutritionRank3
	ElseIf ConditionFormNutritionRank2.IsTrue(PlayerRef, None)  	 
           Return NutritionRank2
	ElseIf ConditionFormNutritionRank1.IsTrue(PlayerRef, None) 
           Return NutritionRank1 
Else	
           Return NutritionRank0
     EndIf

EndFunction

Float Function DrunkennessCalculatorForAlcohol()
	  
	  Float PainToleranceRank0 = 1.00      
	  Float PainToleranceRank1 = 0.87
	  Float PainToleranceRank2 = 0.80      
	  Float PainToleranceRank3 = 0.75 
	  Float PainToleranceRank4 = 0.67
      
		If ConditionFormPainToleranceRank4.IsTrue(PlayerRef, None)    
		   Return PainToleranceRank4 
	ElseIf ConditionFormPainToleranceRank3.IsTrue(PlayerRef, None)  
	       Return PainToleranceRank3
	ElseIf ConditionFormPainToleranceRank2.IsTrue(PlayerRef, None)  	 
           Return PainToleranceRank2
	ElseIf ConditionFormPainToleranceRank1.IsTrue(PlayerRef, None) 
           Return PainToleranceRank1 
Else	
           Return PainToleranceRank0
     EndIf

EndFunction

Float Function SelfControlCalculatorForAlcohol()
	  
	  Float PainToleranceRank0 = 1.00      
	  Float PainToleranceRank1 = 1.10
	  Float PainToleranceRank2 = 1.15      
	  Float PainToleranceRank3 = 1.20 
	  Float PainToleranceRank4 = 1.30
      
		If ConditionFormPainToleranceRank4.IsTrue(PlayerRef, None)    
		   Return PainToleranceRank4 
	ElseIf ConditionFormPainToleranceRank3.IsTrue(PlayerRef, None)  
	       Return PainToleranceRank3
	ElseIf ConditionFormPainToleranceRank2.IsTrue(PlayerRef, None)  	 
           Return PainToleranceRank2
	ElseIf ConditionFormPainToleranceRank1.IsTrue(PlayerRef, None) 
           Return PainToleranceRank1 
Else	
           Return PainToleranceRank0
     EndIf

EndFunction

Int Function IntoxAddictionCheck()

      Int IntoxAddictionEnabled = 1
      Int IntoxAddictionDisabled = 0

      If GV_IntoxAddictionToggle.GetValue() == 1
         return IntoxAddictionEnabled
  Else
         return IntoxAddictionDisabled   
   EndIf

EndFunction

Function AutoFood()
   
   Int HungerThreshold = NeedsAutoConsumageThreshold_Hunger.GetValue() as Int    
   Float FoodHungerCheck = PlayerRef.Getvalue(Hunger)   
   
	  If FoodHungerCheck < HungerThreshold          
		    If LunchboxRef.GetItemCount(FoodItems_PoorGrade) > 0
               LunchboxRef.RemoveItem(FoodItems_PoorGrade, 1, True, None)
		ElseIf LunchboxRef.GetItemCount(FoodItems_LowGrade) > 0
               LunchboxRef.RemoveItem(FoodItems_LowGrade, 1, True, None)
	    ElseIf LunchboxRef.GetItemCount(FoodItems_MediumGrade) > 0
               LunchboxRef.RemoveItem(FoodItems_MediumGrade, 1, True, None)
	    ElseIf LunchboxRef.GetItemCount(FoodItems_MediumGradeButBigger) > 0
               LunchboxRef.RemoveItem(FoodItems_MediumGradeButBigger, 1, True, None)
        ElseIf LunchboxRef.GetItemCount(FoodItems_HighGrade) > 0
               LunchboxRef.RemoveItem(FoodItems_HighGrade, 1, True, None)     
	    ElseIf LunchboxRef.GetItemCount(FoodItems_LegendaryGrade) > 0
               LunchboxRef.RemoveItem(FoodItems_LegendaryGrade, 1, True, None)               
	    ElseIf LunchboxRef.GetItemCount(ComboItems_LowGrade) > 0
               LunchboxRef.RemoveItem(ComboItems_LowGrade, 1, True, None)
        ElseIf LunchboxRef.GetItemCount(ComboItems_MediumGrade) > 0
               LunchboxRef.RemoveItem(ComboItems_MediumGrade, 1, True, None)     
	    ElseIf LunchboxRef.GetItemCount(ComboItems_MediumGradeButBigger) > 0
               LunchboxRef.RemoveItem(ComboItems_MediumGradeButBigger, 1, True, None)     
         EndIf
   EndIf

EndFunction

Function AutoDrink()
   
   Int DrinkThreshold = NeedsAutoConsumageThreshold_Thirst.GetValue() as Int 
   Float DrinkThirstCheck = PlayerRef.Getvalue(Thirst)  
         
	  If DrinkThirstCheck < DrinkThreshold
		    If LunchboxRef.GetItemCount(DrinkItems_LowGrade) > 0
			   LunchboxRef.RemoveItem(DrinkItems_LowGrade, 1, True, None)
		ElseIf LunchboxRef.GetItemCount(DrinkItems_MediumGrade) > 0
               LunchboxRef.RemoveItem(DrinkItems_MediumGrade, 1, True, None)                  
	    ElseIf LunchboxRef.GetItemCount(DrinkItems_HighGrade) > 0
               LunchboxRef.RemoveItem(DrinkItems_HighGrade, 1, True, None)
         EndIf
   EndIf

EndFunction

Function AutoEnergy()
   
   Int EnergyThreshold = NeedsAutoConsumageThreshold_Sleep.GetValue() as Int    
   Float SleepFatigueCheck = PlayerRef.Getvalue(Sleep)
         
	  If SleepFatigueCheck < EnergyThreshold
	            If LunchboxRef.GetItemCount(DrinkItems_EnergyGrade) > 0
				   LunchboxRef.RemoveItem(DrinkItems_EnergyGrade, 1, True, None)
			 EndIf
   EndIf

EndFunction

Function NeedsMessagingSystemTimed(ActorValue AV, Message MSG)	  
	  If NeedsCheckerNotificationType.GetValue() == 1
		 MSG.show(PlayerRef.GetValue(AV))	
   EndIf
EndFunction

Function NeedsMessagingSystemAll()

           Float DrinkThirstCheck = PlayerRef.Getvalue(Thirst)	       
           Float FoodHungerCheck = PlayerRef.Getvalue(Hunger)
           Float SleepFatigueCheck = PlayerRef.Getvalue(Sleep)
           Float OversatiationCheck = PlayerRef.Getvalue(Oversatiation)
           Float DrunkennessCheck = PlayerRef.Getvalue(Drunkenness)
           Float SelfControlCheck = PlayerRef.Getvalue(SelfControl)      
           Float HygieneCheck = PlayerRef.Getvalue(Hygiene) 
	  
	  If NeedsCheckerNotificationType.GetValue() == 1
         NeedsAllChecker.show(FoodHungerCheck, DrinkThirstCheck, SleepFatigueCheck, OversatiationCheck, DrunkennessCheck, SelfControlCheck, HygieneCheck, 0.0, 0.0)	
   EndIf

EndFunction

Function NeedsMessagingSystemAfterConsumption()

           Float DrinkThirstCheck = PlayerRef.Getvalue(Thirst)	       
           Float FoodHungerCheck = PlayerRef.Getvalue(Hunger)
           Float SleepFatigueCheck = PlayerRef.Getvalue(Sleep)
           Float OversatiationCheck = PlayerRef.Getvalue(Oversatiation)
           Float DrunkennessCheck = PlayerRef.Getvalue(Drunkenness)
           Float SelfControlCheck = PlayerRef.Getvalue(SelfControl) 
           Float HygieneCheck = PlayerRef.Getvalue(Hygiene) 
      
	  If NeedsCheckerAfterConsumptionNotifier.GetValue() == 1
         NeedsAllChecker.show(FoodHungerCheck, DrinkThirstCheck, SleepFatigueCheck, OversatiationCheck, DrunkennessCheck, SelfControlCheck, HygieneCheck, 0.0, 0.0)	
   EndIf

EndFunction

Function NeedsMessagingSystemStage()

           Float DrinkThirstCheck = PlayerRef.Getvalue(Thirst)	       
           Float FoodHungerCheck = PlayerRef.Getvalue(Hunger)
           Float SleepFatigueCheck = PlayerRef.Getvalue(Sleep)
           Float OversatiationCheck = PlayerRef.Getvalue(Oversatiation)
           Float DrunkennessCheck = PlayerRef.Getvalue(Drunkenness)         
           Float SelfControlCheck = PlayerRef.Getvalue(SelfControl) 		   
           Float HygieneCheck = PlayerRef.Getvalue(Hygiene) 
		   
		   NeedsAllChecker.show(FoodHungerCheck, DrinkThirstCheck, SleepFatigueCheck, OversatiationCheck, DrunkennessCheck, SelfControlCheck, HygieneCheck, 0.0, 0.0)	

EndFunction

Function LunchBoxMode()

    If PlayerRef.GetItemCount(LunchboxMode) > 0
	   PlayerRef.RemoveItem(LunchboxMode, 9999, True, None)
 EndIf

EndFunction

Function LunchBoxModeAutoConsume()

    If PlayerRef.GetItemCount(LunchboxAutoConsume) > 0
	   PlayerRef.RemoveItem(LunchboxAutoConsume, 9999, True, None)
 EndIf

EndFunction

Function DrunkennessRemoval()
         StartTimer(0, 6)
EndFunction

Function DrunkennessRemovalCancel()
         CancelTimer(6)
EndFunction

Function SelfControlRestore()
         StartTimer(0, 7)
EndFunction

Function SelfControlRestoreCancel()
         CancelTimer(7)
EndFunction

Function FatigueTimerStart()
         Float SleepStart = SleepTime.GetValue()         
		 StartTimer(SleepStart, 2)
EndFunction

Function FatigueTimerCancel()
         CancelTimer(2)
EndFunction

Function Blackout()
         StartTimer(0, 0)
EndFunction

Function AutoNeedsOnLunchboxClose()          		 
         StartTimer(2, 5)
         StartTimer(2, 55)
         StartTimer(2, 555)
EndFunction

Function UIHUDBridge()
		 Utility.Wait(1.0)
	     UnregisterForActorValueChangedEvent(PlayerRef, Hunger)
	     UnregisterForActorValueChangedEvent(PlayerRef, Thirst)
	     UnregisterForActorValueChangedEvent(PlayerRef, Sleep)
	     UnregisterForActorValueChangedEvent(PlayerRef, Oversatiation)
	     UnregisterForActorValueChangedEvent(PlayerRef, Drunkenness)
	     UnregisterForActorValueChangedEvent(PlayerRef, SelfControl)
	     UnregisterForActorValueChangedEvent(PlayerRef, Hygiene)
         UnregisterForMenuOpenCloseEvent("DataMenu")		    
		 PlayerRef.RemoveSpell(SurvivalMonitorUISpell)
EndFunction

Function UIHUDBridgeDeconstruct()
		 Utility.Wait(1.0)
	     RegisterForActorValueChangedEvent(PlayerRef, Hunger)
	     RegisterForActorValueChangedEvent(PlayerRef, Thirst)
	     RegisterForActorValueChangedEvent(PlayerRef, Sleep)
	     RegisterForActorValueChangedEvent(PlayerRef, Oversatiation)
	     RegisterForActorValueChangedEvent(PlayerRef, Drunkenness)
	     RegisterForActorValueChangedEvent(PlayerRef, SelfControl)
	     RegisterForActorValueChangedEvent(PlayerRef, Hygiene)
         RegisterForMenuOpenCloseEvent("DataMenu")		    
		 PercentageTracker()
		 PlayerRef.AddSpell(SurvivalMonitorUISpell, False)
EndFunction