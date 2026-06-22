ScriptName SISA_Economy extends Quest

Actor Property PlayerRef Auto Const

ActorValue Property Buy Auto Const
ActorValue Property Sell Auto Const
ActorValue Property BuySpaceship Auto Const
ActorValue Property SellSpaceship Auto Const
ActorValue Property SpaceshipMass Auto Const
ActorValue Property Reputation Auto Const
ActorValue Property AV_ReputationUC Auto Const
ActorValue Property AV_ReputationFC Auto Const
ActorValue Property AV_TotalOutposts Auto Const

Quest Property StarvivalMainQuest Auto Const
Quest Property DialogueDoctorQuest Auto Const
Quest Property DialogueTheKey Auto Const
Quest Property DialogueCydonia Auto Const
Quest Property DialogueAkila Auto Const
Quest Property DialogueNeon Auto Const
Quest Property DialogueGeneric Auto Const
Quest Property DialogueParadiso Auto Const
Quest Property DialogueRedmile Auto Const
Quest Property DialogueNewAtlantis Auto Const
Quest Property DialogueStarterHome Auto Const

GlobalVariable Property EconomySpaceshipPartsToggle Auto Const
GlobalVariable Property SetCostCore Auto Const
GlobalVariable Property SetCostMidtown Auto Const
GlobalVariable Property SetCostTraitHome Auto Const
GlobalVariable Property SetCostDoctorAll Auto Const
GlobalVariable Property SetCostDoctorAffliction Auto Const
GlobalVariable Property SetCostDoctorWounds Auto Const
GlobalVariable Property SetCostDoctorAddictions Auto Const
GlobalVariable Property SetCostShipService Auto Const
GlobalVariable Property SetCostTradeTower Auto Const
GlobalVariable Property SetCostSleepcrate Auto Const
GlobalVariable Property SetCostEnhance Auto Const
GlobalVariable Property SetCostWell Auto Const
GlobalVariable Property StoreValueHouseCoreBuy Auto Const
GlobalVariable Property StoreValueHouseMidtownBuy Auto Const
GlobalVariable Property StoreValueHouseWellBuy Auto Const
GlobalVariable Property StoreValueHouseTraitBuy Auto Const
GlobalVariable Property StoreValueHouseSleepcrateBuy Auto Const
GlobalVariable Property StoreValueHouseTradetowerBuy Auto Const
GlobalVariable Property StoreValueEnhanceCost Auto Const
GlobalVariable Property StoreValueDoctorAddictionCure Auto Const
GlobalVariable Property StoreValueDoctorAfflictionCure Auto Const
GlobalVariable Property StoreValueDoctorEverything Auto Const
GlobalVariable Property StoreValueDoctorWoundsHeal Auto Const
GlobalVariable Property FameAndReputationToggle Auto Const
GlobalVariable Property TakeOffRestriction Auto Const
GlobalVariable Property LandingFeeMode Auto Const
GlobalVariable Property LandingFeeDebtActive Auto Const
GlobalVariable Property LandingFeePayed Auto Const
GlobalVariable Property OutpostBeaconCostAmountBase Auto Const
GlobalVariable Property GV_LandingFeesPriceMult Auto Const
GlobalVariable Property GV_OutpostCount Auto Const
GlobalVariable Property GV_OutpostTaxDebtCounter Auto Const
GlobalVariable Property GV_RepDebtTriggers Auto Const
GlobalVariable Property GV_ContrabandAlarmOnDrop Auto Const

Location Property LocNeon Auto Const
Location Property LocAkila Auto Const
Location Property LocNewAtlantis Auto Const
Location Property LocCydonia Auto Const
Location Property LocHopeTown Auto Const
Location Property LocGagarin Auto Const
Location Property LocNewHomestead Auto Const
Location Property LocDazra Auto Const 
Location Property LocRedMile Auto Const 

Message Property MSG_LandingFee_Neon Auto Const
Message Property MSG_LandingFee_Akila Auto Const
Message Property MSG_LandingFee_NewAtlantis Auto Const
Message Property MSG_LandingFee_Cydonia Auto Const
Message Property MSG_LandingFee_Hopetown Auto Const
Message Property MSG_LandingFee_Gagarin Auto Const
Message Property MSG_LandingFee_NewHomestead Auto Const
Message Property MSG_LandingFee_Dazra Auto Const 
Message Property MSG_LandingFee_RedMile Auto Const 

Message Property MSG_LandingFee_NeonArrest Auto Const
Message Property MSG_LandingFee_AkilaArrest Auto Const
Message Property MSG_LandingFee_NewAtlantisArrest Auto Const
Message Property MSG_LandingFee_CydoniaArrest Auto Const
Message Property MSG_LandingFee_HopetownArrest Auto Const
Message Property MSG_LandingFee_GagarinArrest Auto Const
Message Property MSG_LandingFee_NewHomesteadArrest Auto Const
Message Property MSG_LandingFee_DazraArrest Auto Const 
Message Property MSG_LandingFee_RedMileArrest Auto Const 

Message Property MSG_LandingFee_NeonDebtPaid Auto Const 
Message Property MSG_LandingFee_AkilaDebtPaid Auto Const 
Message Property MSG_LandingFee_NewAtlantisDebtPaid Auto Const 
Message Property MSG_LandingFee_CydoniaDebtPaid Auto Const 
Message Property MSG_LandingFee_HopetownDebtPaid Auto Const 
Message Property MSG_LandingFee_GagarinDebtPaid Auto Const 
Message Property MSG_LandingFee_NewHomesteadDebtPaid Auto Const 
Message Property MSG_LandingFee_DazraDebtPaid Auto Const 
Message Property MSG_LandingFee_RedMileDebtPaid Auto Const
Message Property MSG_TaxPaymentInfo Auto Const
Message Property MSG_TaxDebtInfo Auto Const
Message Property MSG_TaxDebtInfoPartial Auto Const
Message Property MSG_TaxDebtInfoPaid Auto Const
Message Property MSG_TaxPaymentIntroduction Auto Const

Keyword Property ShipClassA Auto Const
Keyword Property ShipClassB Auto Const
Keyword Property ShipClassC Auto Const
Keyword Property ShipClassM Auto Const
Keyword Property ContrabandAsExclusion Auto Const

Conditionform Property ConditionFormServiceDiscount01 Auto Const Mandatory
Conditionform Property ConditionFormServiceDiscount02 Auto Const Mandatory
Conditionform Property ConditionFormServiceDiscount03 Auto Const Mandatory
Conditionform Property ConditionFormServiceDiscount04 Auto Const Mandatory

Perk Property Economy Auto Const
Perk Property ContrabandSell Auto Const
Perk Property LandingFeeMenu Auto Const
Perk Property OutpostPaymentMenuPerk Auto Const
Perk Property OutpostDebuffPerk Auto Const

Spell Property ContrabandAlarmSpell Auto Const
Spell Property OutpostBeaconCalcUnlockerSpell Auto Const

FormList Property LandingFeeLocations Auto Const
FormList Property List_UCLocations Auto Const
FormList Property List_FCLocations Auto Const

ObjectReference Property ContrabandReceiver_Ref Auto Const
ObjectReference Property ContrabandReceiverShip_Ref Auto Const

MiscObject Property Credits Auto Const

wwiseevent Property SFX_DebtWarning Auto Const
wwiseevent Property SFX_ConfirmPayment Auto Const

ReferenceAlias Property PlayerShip Auto mandatory
sq_playershipscript Property SQ_PlayerShip Auto

inputEnableLayer TakeOff
inputEnableLayer FastTravel

Int Property FinalFeeNeon = 0 Auto
Int Property FinalFeeAkila = 0 Auto
Int Property FinalFeeAtlantis = 0 Auto			 
Int Property FinalFeeCydonia = 0 Auto
Int Property FinalFeeHopetown = 0 Auto
Int Property FinalFeeGagarin = 0 Auto
Int Property FinalFeeNewHomestead = 0 Auto
Int Property FinalFeeDazra = 0 Auto
Int Property FinalFeeRedMile = 0 Auto
Int Property LandingFeeDebt = 0 Auto

Bool LandingFeeTimerPrepared = False
Bool TaxTimerStarted = False

Int TaxDept = 0

Function EconomyStart()
				  
                  EconomySpaceshipPartsToggle.SetValue(1)                   				  
				  GV_ContrabandAlarmOnDrop.SetValue(1)
				  PlayerRef.Addperk(Economy, False)                   	              				  
				  PlayerRef.Addperk(ContrabandSell, False) 
				  PlayerRef.Addperk(LandingFeeMenu, False) 
				  PlayerRef.Addperk(OutpostPaymentMenuPerk, False) 
				  PlayerRef.Addperk(OutpostDebuffPerk, False) 
                  PlayerRef.RestoreValue(Buy, 999)
                  PlayerRef.RestoreValue(Sell, 999)
                  PlayerRef.DamageValue(Buy, 8.25)
                  PlayerRef.DamageValue(Sell, 9.35)
                  PlayerRef.RestoreValue(BuySpaceship, 999)
                  PlayerRef.RestoreValue(SellSpaceship, 999)
                  PlayerRef.DamageValue(BuySpaceship, 7.25)
                  PlayerRef.DamageValue(SellSpaceship, 5.00)
	              SetServiceCosts()				  
		          Utility.Wait(0.5)
                  PlayerRef.AddSpell(ContrabandAlarmSpell, False) 
                  RegisterForMenuOpenCloseEvent("BarterMenu")
                  RegisterForRemoteEvent(PlayerShip, "OnLocationChange") 
			      RegisterForRemoteEvent(PlayerRef, "OnItemRemoved")
		          RegisterForRemoteEvent(PlayerRef, "OnOutpostPlaced")
		          RegisterForActorValueChangedEvent(PlayerRef, AV_TotalOutposts)

EndFunction

Function EconomyStop()
				  
                  EconomySpaceshipPartsToggle.SetValue(0)                   				  
                  GV_ContrabandAlarmOnDrop.SetValue(0)
                  LandingFeeDebtActive.SetValue(0)
				  LandingFeePayed.SetValue(0)
				  PlayerRef.Removeperk(Economy)                   	              				  
				  PlayerRef.Removeperk(ContrabandSell) 
				  PlayerRef.Removeperk(LandingFeeMenu)
				  PlayerRef.Removeperk(OutpostPaymentMenuPerk) 
				  PlayerRef.Removeperk(OutpostDebuffPerk) 
                  PlayerRef.RestoreValue(Buy, 999)
                  PlayerRef.RestoreValue(Sell, 999)
                  PlayerRef.RestoreValue(BuySpaceship, 999)
                  PlayerRef.RestoreValue(SellSpaceship, 999)			  
                  PlayerRef.RemoveSpell(ContrabandAlarmSpell)
                  UnregisterForMenuOpenCloseEvent("BarterMenu")
                  UnregisterForRemoteEvent(PlayerShip, "OnLocationChange") 
			      UnregisterForRemoteEvent(PlayerRef, "OnItemRemoved")
		          UnregisterForRemoteEvent(PlayerRef, "OnOutpostPlaced")
		          UnregisterForActorValueChangedEvent(PlayerRef, AV_TotalOutposts)
				  CancelTimerGameTime(0)
                  CancelTimerGameTime(1)
                  CancelTimerGameTime(2)
				  EnableFastTravel()
                  EnableTakeoff()
                  TaxTimerStarted = False

EndFunction

Function Update()
	     PlayerRef.RemoveSpell(ContrabandAlarmSpell)
	     Utility.Wait(1.0)
	     PlayerRef.AddSpell(ContrabandAlarmSpell, False) 
         PlayerRef.RemoveSpell(OutpostBeaconCalcUnlockerSpell)
		 Utility.Wait(0.5)
		 PlayerRef.Addperk(OutpostPaymentMenuPerk, False)
		 PlayerRef.Addperk(OutpostDebuffPerk, False)
         OutpostBeaconCostAmountBase.SetValue(10000)
		 UnregisterForMenuOpenCloseEvent("MonocleMenu") 
         UnregisterForMenuOpenCloseEvent("ContainerMenu") 
		 UnregisterForRemoteEvent(PlayerRef, "OnItemRemoved")
		 RegisterForActorValueChangedEvent(PlayerRef, AV_TotalOutposts)
		 RegisterForRemoteEvent(PlayerRef, "OnOutpostPlaced")
	     RegisterForMenuOpenCloseEvent("BarterMenu")
         RemoveAllInventoryEventFilters()
		 If PlayerRef.GetBaseValue(AV_TotalOutposts) - PlayerRef.GetValue(AV_TotalOutposts)
            OutpostHasBeenDeployed()
      EndIf
EndFunction

Function UpdateHotfix()
	     UnregisterForRemoteEvent(PlayerShip, "OnShipLanding")
         UnregisterForRemoteEvent(PlayerShip, "OnShipTakeOff")
         UnregisterForMenuOpenCloseEvent("SpaceshipEditorMenu") 
EndFunction

Function CostlyOutpostsStart()				 
		 Utility.Wait(0.5)
		 PlayerRef.Addperk(OutpostPaymentMenuPerk, False)
		 PlayerRef.Addperk(OutpostDebuffPerk, False)
		 TaxTimerStarted = False
		 GV_OutpostCount.SetValue(0)
		 RegisterForRemoteEvent(PlayerRef, "OnOutpostPlaced")
		 RegisterForActorValueChangedEvent(PlayerRef, AV_TotalOutposts)         
		 If PlayerRef.GetBaseValue(AV_TotalOutposts) - PlayerRef.GetValue(AV_TotalOutposts)
            OutpostHasBeenDeployed()
      EndIf
EndFunction

Function CostlyOutpostsStop()
		 PlayerRef.Removeperk(OutpostPaymentMenuPerk)
		 PlayerRef.Removeperk(OutpostDebuffPerk)
		 TaxTimerStarted = False
		 GV_OutpostCount.SetValue(0)
		 UnregisterForRemoteEvent(PlayerRef, "OnOutpostPlaced")
		 UnregisterForActorValueChangedEvent(PlayerRef, AV_TotalOutposts)
         CancelTimerGameTime(2)
EndFunction
		 
Function LandingFeesStart()				 
		 PlayerRef.Addperk(LandingFeeMenu, False) 
         RegisterForRemoteEvent(PlayerShip, "OnLocationChange") 
EndFunction

Function LandingFeesStop()
		 PlayerRef.Removeperk(LandingFeeMenu)
         LandingFeeDebtActive.SetValue(0)
	     LandingFeePayed.SetValue(0)
         UnregisterForRemoteEvent(PlayerShip, "OnLocationChange") 
         CancelTimerGameTime(0)
		 EnableFastTravel()
         EnableTakeoff()
         FinalFeeNeon = 0
         FinalFeeAkila = 0
         FinalFeeAtlantis = 0		 
         FinalFeeCydonia = 0
         FinalFeeHopetown = 0
         FinalFeeGagarin = 0
         FinalFeeNewHomestead = 0
         FinalFeeDazra = 0
         FinalFeeRedMile = 0
         LandingFeeDebt = 0
EndFunction

Function SetServiceCosts()

		 SetCostCore.SetValue(234000) 
         SetCostMidtown.SetValue(135000) 
         SetCostTraitHome.SetValue(512000)
         SetCostDoctorAll.SetValue(27000)
         SetCostDoctorAffliction.SetValue(12000)
         SetCostDoctorWounds.SetValue(1000)
         SetCostDoctorAddictions.SetValue(20000)
         SetCostTradeTower.SetValue(704000)
         SetCostSleepcrate.SetValue(15000)
         SetCostEnhance.SetValue(14000)
         SetCostWell.SetValue(90000)

         Utility.Wait(1.0)
         DialogueDoctorQuest.UpdateCurrentInstanceGlobal(SetCostDoctorAddictions)
         DialogueDoctorQuest.UpdateCurrentInstanceGlobal(SetCostDoctorAffliction)
		 DialogueDoctorQuest.UpdateCurrentInstanceGlobal(SetCostDoctorAll)
		 DialogueDoctorQuest.UpdateCurrentInstanceGlobal(SetCostDoctorWounds)
		 DialogueNewAtlantis.UpdateCurrentInstanceGlobal(SetCostEnhance)
		 DialogueNewAtlantis.UpdateCurrentInstanceGlobal(SetCostWell)                                            
		 DialogueCydonia.UpdateCurrentInstanceGlobal(SetCostEnhance)
         DialogueAkila.UpdateCurrentInstanceGlobal(SetCostCore)
         DialogueAkila.UpdateCurrentInstanceGlobal(SetCostMidtown)
		 DialogueAkila.UpdateCurrentInstanceGlobal(SetCostEnhance)
		 DialogueNeon.UpdateCurrentInstanceGlobal(SetCostTradeTower)
         DialogueNeon.UpdateCurrentInstanceGlobal(SetCostSleepcrate)
		 DialogueNeon.UpdateCurrentInstanceGlobal(SetCostEnhance)											
		 DialogueParadiso.UpdateCurrentInstanceGlobal(SetCostEnhance)
		 DialogueStarterHome.UpdateCurrentInstanceGlobal(SetCostTraitHome)  		 

EndFunction

Function RefreshServiceCosts()
         
		 Float DiscountCalculate = ServiceDiscountCost() 
         Float ReputationCalc = ReputationCalculator()

		 Float TheCorePrice = Math.Ceiling(StoreValueHouseCoreBuy.Getvalue() / DiscountCalculate / ReputationCalc)
         Float TheStretchPrice = Math.Ceiling(StoreValueHouseMidtownBuy.Getvalue() / DiscountCalculate / ReputationCalc)
         Float TheWellPrice = Math.Ceiling(StoreValueHouseWellBuy.Getvalue() / DiscountCalculate / ReputationCalc)
         Float DreamhomePrice = Math.Ceiling(StoreValueHouseTraitBuy.Getvalue() / DiscountCalculate / ReputationCalc)
         Float SleepcratePrice = Math.Ceiling(StoreValueHouseSleepcrateBuy.Getvalue() / DiscountCalculate / ReputationCalc)
         Float SkySuitePrice = Math.Ceiling(StoreValueHouseTradetowerBuy.Getvalue() / DiscountCalculate / ReputationCalc)
         Float EnhancePrice = Math.Ceiling(StoreValueEnhanceCost.Getvalue() / DiscountCalculate / ReputationCalc)
         Float AddictionPrice = Math.Ceiling(StoreValueDoctorAddictionCure.Getvalue() / DiscountCalculate / ReputationCalc)
         Float AfflictionPrice = Math.Ceiling(StoreValueDoctorAfflictionCure.Getvalue() / DiscountCalculate / ReputationCalc)
         Float WoundsPrice = Math.Ceiling(StoreValueDoctorWoundsHeal.Getvalue() / DiscountCalculate / ReputationCalc)
         Float AllPrice = Math.Ceiling(StoreValueDoctorEverything.Getvalue() / DiscountCalculate / ReputationCalc)
         
         SetCostCore.SetValue(TheCorePrice)
         SetCostMidtown.SetValue(TheStretchPrice)
         SetCostWell.SetValue(TheWellPrice)
         SetCostTraitHome.SetValue(DreamhomePrice)
         SetCostSleepcrate.SetValue(SleepcratePrice)
         SetCostTradeTower.SetValue(SkySuitePrice)
         SetCostEnhance.SetValue(EnhancePrice)
         SetCostDoctorAddictions.SetValue(AddictionPrice)
         SetCostDoctorAffliction.SetValue(AfflictionPrice)
         SetCostDoctorWounds.SetValue(WoundsPrice)
         SetCostDoctorAll.SetValue(AllPrice)

         DialogueDoctorQuest.UpdateCurrentInstanceGlobal(SetCostDoctorAddictions)
         DialogueDoctorQuest.UpdateCurrentInstanceGlobal(SetCostDoctorAffliction)
		 DialogueDoctorQuest.UpdateCurrentInstanceGlobal(SetCostDoctorAll)
		 DialogueDoctorQuest.UpdateCurrentInstanceGlobal(SetCostDoctorWounds)
		 DialogueNewAtlantis.UpdateCurrentInstanceGlobal(SetCostEnhance)
		 DialogueNewAtlantis.UpdateCurrentInstanceGlobal(SetCostWell)                                            
		 DialogueCydonia.UpdateCurrentInstanceGlobal(SetCostEnhance)
         DialogueAkila.UpdateCurrentInstanceGlobal(SetCostCore)
         DialogueAkila.UpdateCurrentInstanceGlobal(SetCostMidtown)
		 DialogueAkila.UpdateCurrentInstanceGlobal(SetCostEnhance)
		 DialogueNeon.UpdateCurrentInstanceGlobal(SetCostTradeTower)
         DialogueNeon.UpdateCurrentInstanceGlobal(SetCostSleepcrate)
		 DialogueNeon.UpdateCurrentInstanceGlobal(SetCostEnhance)											
		 DialogueParadiso.UpdateCurrentInstanceGlobal(SetCostEnhance)
		 DialogueStarterHome.UpdateCurrentInstanceGlobal(SetCostTraitHome)  		 

EndFunction

Function StartFeeLandingTimer()
		 If LandingFeeTimerPrepared == False
		    StartTimerGameTime(1.0, 1)
            LandingFeeTimerPrepared = True
	  EndIf
EndFunction

Function StopFeeLandingTimer()
		 If LandingFeeTimerPrepared == True
		    CancelTimerGameTime(1)
            LandingFeeTimerPrepared = False
      EndIf
EndFunction

Float Function GetHoursUntilNextMondayAt8AM()
      
	  Float currentDay = Utility.GetCurrentGameTime()
      Int nextWeek = Math.Floor(currentDay + 7.0)
      Int nextSunday = nextWeek - nextWeek % 7
      Int nextMonday = nextSunday + 1
      Float nextMondayAt8AM = nextMonday as Float + 0.333299994
      Float daysUntilNextMondayAt8AM = nextMondayAt8AM - currentDay
      Float hoursUntilNextMondayAt8AM = daysUntilNextMondayAt8AM * 24.0
      Return hoursUntilNextMondayAt8AM

EndFunction

Event Actor.OnOutpostPlaced(Actor akSource, ObjectReference akOutpostBeacon)
	  MSG_TaxPaymentIntroduction.Show()
	  UnregisterForRemoteEvent(PlayerRef, "OnOutpostPlaced")
EndEvent

Event OnActorValueChanged(ObjectReference akObjRef, ActorValue akActorValue)    
	   
	   If akObjRef == PlayerRef && akActorValue == AV_TotalOutposts
	         If PlayerRef.GetValue(AV_TotalOutposts) < PlayerRef.GetBaseValue(AV_TotalOutposts) 
		        OutpostHasBeenDeployed()
	     ElseIf PlayerRef.GetValue(AV_TotalOutposts) == PlayerRef.GetBaseValue(AV_TotalOutposts) 		  
		        OutpostHasBeenRemoved()
		  EndIf
		  RegisterForActorValueChangedEvent(PlayerRef, AV_TotalOutposts)
    EndIf

EndEvent

Function OutpostHasBeenDeployed()
 	            
		 Float TotalOutposts = PlayerRef.GetBaseValue(AV_TotalOutposts) - PlayerRef.GetValue(AV_TotalOutposts)
		 GV_OutpostCount.SetValue(TotalOutposts)		 
		 
		 If TaxTimerStarted == False
		    TaxTimerStarted = True
			StartOutpostTaxGameTimeTimer()
      EndIf

EndFunction

Function OutpostHasBeenRemoved()
		 
		 Float TotalOutposts = PlayerRef.GetBaseValue(AV_TotalOutposts) - PlayerRef.GetValue(AV_TotalOutposts)
		 GV_OutpostCount.SetValue(TotalOutposts)

		If GV_OutpostCount.GetValue() <= 0
		   TaxTimerStarted = False
		   CancelTimerGameTime(2)
     EndIf

EndFunction

Function StartOutpostTaxGameTimeTimer()
  
  Float hoursUntilNextMondayAt8AM = Self.GetHoursUntilNextMondayAt8AM()  
  StartTimerGameTime(hoursUntilNextMondayAt8AM, 2)

EndFunction

Function TaxTimer()

  Float ReputationCalc = ReputationCalculator()
  Float Discount = ServiceDiscountCost()
  Int playerCredits = playerRef.GetItemCount(credits)
  Float OutpostCountAndTax = math.round(GV_OutpostCount.GetValue() * OutpostBeaconCostAmountBase.GetValue() / Discount / ReputationCalc)
  
  If GV_OutpostCount.GetValue() > 0
   
       If playerCredits >= OutpostCountAndTax
		  playerRef.RemoveItem(credits, OutpostCountAndTax as Int, False, None)
	      MSG_TaxPaymentInfo.Show(OutpostCountAndTax) 
	Else
	      AddInventoryEventFilter(Credits)
		  RegisterForRemoteEvent(PlayerRef, "OnItemAdded")
		  OutpostCountAndTax -= playerCredits
		  TaxDept += math.round(OutpostCountAndTax * 1.24)
		  playerRef.RemoveItem(credits, playerCredits, False, None)
		  GV_OutpostTaxDebtCounter.SetValue(TaxDept)
		  MSG_TaxDebtInfo.Show(GV_OutpostTaxDebtCounter.GetValue()) 
	         If FameAndReputationToggle.GetValue() == 0
                Return	  
          EndIf      
	      ActorValue AVCheck = CheckForAVRep() 
	      Float RepDebtDMG = GV_RepDebtTriggers.GetValue()
	      PlayerRef.DamageValue(AVCheck, RepDebtDMG) 
	EndIf

EndIf

EndFunction

Function PayOutpostTaxDebt()
									                                   
         Int DeptOutpostTax = GV_OutpostTaxDebtCounter.GetValue() As Int                                   
         Int playerCredits = playerRef.GetItemCount(credits)
									
		 If GV_OutpostTaxDebtCounter.GetValue() > 0
               If playerCredits >= DeptOutpostTax
                  PlayerRef.RemoveItem(credits, DeptOutpostTax, False, None)
				  TaxDept = 0
		          GV_OutpostTaxDebtCounter.SetValue(TaxDept)
				  MSG_TaxDebtInfoPaid.Show() 
			      RemoveInventoryEventFilter(Credits)
                  UnregisterForRemoteEvent(PlayerRef, "OnItemAdded")
			EndIf
      EndIf

EndFunction

Event ObjectReference.OnItemAdded(ObjectReference akSource, Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer, int aiTransferReason)
       If akBaseItem == Credits
              If math.round(aiItemCount * 0.30) >= GV_OutpostTaxDebtCounter.GetValue()
                 PlayerRef.RemoveItem(Credits, GV_OutpostTaxDebtCounter.GetValueInt(), False, None)
                 TaxDept = 0
				 GV_OutpostTaxDebtCounter.SetValue(0)
                 MSG_TaxDebtInfoPaid.Show()
				 RemoveInventoryEventFilter(Credits)
                 UnregisterForRemoteEvent(PlayerRef, "OnItemAdded")
            Else
                 TaxDept -= math.round(aiItemCount * 0.30)
				 GV_OutpostTaxDebtCounter.SetValue(TaxDept)
				 PlayerRef.RemoveItem(Credits, math.round(aiItemCount * 0.30), False, None)
                 MSG_TaxDebtInfoPartial.Show(GV_OutpostTaxDebtCounter.GetValue())
		   EndIf
    EndIf
EndEvent

Event OnMenuOpenCloseEvent(String asMenuName, Bool abOpening)

         SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()         	     	 			 
	     If asMenuName == "BarterMenu" 
                   If abOpening == True	
					  PlayerRef.RemoveItem(ContrabandAsExclusion, 999, True, ContrabandReceiver_Ref)
					  akShip.RemoveItem(ContrabandAsExclusion, 999, True, ContrabandReceiverShip_Ref)
	            Else
					  ContrabandReceiver_Ref.RemoveItem(ContrabandAsExclusion, 999, True, PlayerRef)
					  ContrabandReceiverShip_Ref.RemoveItem(ContrabandAsExclusion, 999, True, akShip)
				EndIf
	  EndIf

EndEvent

Event ReferenceAlias.OnLocationChange(ReferenceAlias akSender, Location akOldLoc, Location akNewLoc)

    If akSender == PlayerShip
          SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
          If IsShipInLocationList(akShip, LandingFeeLocations)
		   			  			  
			  If LandingFeePayed.GetValue() == 1 
			     Return 
		   EndIf
		   
              LandingFeeTimerPrepared = False	
			  If LandingFeeMode.GetValue() == 0 
				 LandingFeePayed.SetValue(0)
				 LandingFeeLocationAuto()
	       Else
			     LandingFeePayed.SetValue(0)
				 StartFeeLandingTimer()
				 LandingFeeLocationManual()
	       EndIf
	   Else
			   If LandingFeePayed.GetValue() == 0 
			      Return 
		    EndIf               		
			LandingFeePayed.SetValue(0)
			StopFeeLandingTimer()
	   EndIf
    EndIf

EndEvent

Function LandingFeeLocationAuto()
			 			   
			   spaceshipreference akShip = SQ_PlayerShip.PlayerShip.GetShipRef() 
			   
			   Float PriceMult = GV_LandingFeesPriceMult.GetValue()
			   
			   Int NeonLandingFee = math.round(2500 * PriceMult) 				 
			   Int AkilaLandingFee = math.round(2000 * PriceMult) 					 
			   Int NewAtlantisLandingFee = math.round(3000 * PriceMult) 	
			   Int CydoniaLandingFee = math.round(1700 * PriceMult) 	
			   Int HopetownLandingFee = math.round(850 * PriceMult) 	
			   Int GagarinLandingFee = math.round(1000 * PriceMult) 	
			   Int NewHomesteadFee = math.round(900 * PriceMult) 	
			   Int DazraLandingFee = math.round(1500 * PriceMult) 	
			   Int RedMileLandingFee = math.round(800 * PriceMult)	
 				 
				 If akShip.IsInLocation(LocNeon)
			        ShipLandingFeeCost(NeonLandingFee, MSG_LandingFee_Neon, MSG_LandingFee_NeonArrest)
			 ElseIf akShip.IsInLocation(LocAkila)
			        ShipLandingFeeCost(AkilaLandingFee, MSG_LandingFee_Akila, MSG_LandingFee_AkilaArrest)
			 ElseIf akShip.IsInLocation(LocNewAtlantis)
			        ShipLandingFeeCost(NewAtlantisLandingFee, MSG_LandingFee_NewAtlantis, MSG_LandingFee_NewAtlantisArrest)
			 ElseIf akShip.IsInLocation(LocCydonia)
			        ShipLandingFeeCost(CydoniaLandingFee, MSG_LandingFee_Cydonia, MSG_LandingFee_CydoniaArrest)
			 ElseIf akShip.IsInLocation(LocHopeTown)
			        ShipLandingFeeCost(HopetownLandingFee, MSG_LandingFee_Hopetown, MSG_LandingFee_HopetownArrest)
			 ElseIf akShip.IsInLocation(LocGagarin)
			        ShipLandingFeeCost(GagarinLandingFee, MSG_LandingFee_Gagarin, MSG_LandingFee_GagarinArrest)
			 ElseIf akShip.IsInLocation(LocNewHomestead)
			        ShipLandingFeeCost(NewHomesteadFee, MSG_LandingFee_NewHomestead, MSG_LandingFee_NewHomesteadArrest)
			 ElseIf akShip.IsInLocation(LocDazra)
			        ShipLandingFeeCost(DazraLandingFee, MSG_LandingFee_Dazra, MSG_LandingFee_DazraArrest)
			 ElseIf akShip.IsInLocation(LocRedMile)
			        ShipLandingFeeCost(RedMileLandingFee, MSG_LandingFee_RedMile, MSG_LandingFee_RedMileArrest)
              EndIf

EndFunction

Function LandingFeeLocationManual()
			 			   			    				 
			 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
			 Float ShipClassFeeMult = CheckShipClassFeeMult()             
			 Float ShipMass = akShip.GetValue(SpaceshipMass)
			 Float ShipCharacteristics = ShipClassFeeMult * ShipMass 
			 Float ReputationCalc = ReputationCalculator()
			 Float ServiceDiscountCalc = ServiceDiscountCost()
			 Float PriceMult = GV_LandingFeesPriceMult.GetValue()
			 
			 Int NeonLandingFee = math.round(2500 * PriceMult) 				 
			 Int AkilaLandingFee = math.round(2000 * PriceMult) 					 
			 Int NewAtlantisLandingFee = math.round(3000 * PriceMult) 	
			 Int CydoniaLandingFee = math.round(1700 * PriceMult) 	
			 Int HopetownLandingFee = math.round(850 * PriceMult) 	
			 Int GagarinLandingFee = math.round(1000 * PriceMult) 	
			 Int NewHomesteadFee = math.round(900 * PriceMult) 	
			 Int DazraLandingFee = math.round(1500 * PriceMult) 	
			 Int RedMileLandingFee = math.round(800 * PriceMult)	
             
			 FinalFeeNeon = math.round((ShipCharacteristics + NeonLandingFee) / ServiceDiscountCalc / ReputationCalc)  	         
			 FinalFeeAkila = math.round((ShipCharacteristics + AkilaLandingFee) / ServiceDiscountCalc / ReputationCalc)
			 FinalFeeAtlantis = math.round((ShipCharacteristics + NewAtlantisLandingFee) / ServiceDiscountCalc / ReputationCalc)
			 FinalFeeCydonia = math.round((ShipCharacteristics + CydoniaLandingFee) / ServiceDiscountCalc / ReputationCalc)  	         
			 FinalFeeHopetown = math.round((ShipCharacteristics + HopetownLandingFee) / ServiceDiscountCalc / ReputationCalc)
			 FinalFeeGagarin = math.round((ShipCharacteristics + GagarinLandingFee) / ServiceDiscountCalc / ReputationCalc)
			 FinalFeeNewHomestead = math.round((ShipCharacteristics + NewHomesteadFee) / ServiceDiscountCalc / ReputationCalc)
			 FinalFeeDazra = math.round((ShipCharacteristics + DazraLandingFee) / ServiceDiscountCalc / ReputationCalc)
			 FinalFeeRedMile = math.round((ShipCharacteristics + RedMileLandingFee) / ServiceDiscountCalc / ReputationCalc)
		     
EndFunction

Function LandingFeeLocationDebt()
			 			   
			   spaceshipreference akShip = SQ_PlayerShip.PlayerShip.GetShipRef() 
			   
			   Float PriceMult = GV_LandingFeesPriceMult.GetValue()			   
			   
			   Int NeonLandingFee = math.round(2500 * PriceMult) 				 
			   Int AkilaLandingFee = math.round(2000 * PriceMult) 					 
			   Int NewAtlantisLandingFee = math.round(3000 * PriceMult) 	
			   Int CydoniaLandingFee = math.round(1700 * PriceMult) 	
			   Int HopetownLandingFee = math.round(850 * PriceMult) 	
			   Int GagarinLandingFee = math.round(1000 * PriceMult) 	
			   Int NewHomesteadFee = math.round(900 * PriceMult) 	
			   Int DazraLandingFee = math.round(1500 * PriceMult) 	
			   Int RedMileLandingFee = math.round(800 * PriceMult)		
 				 
				 If akShip.IsInLocation(LocNeon)
			        DebtTrigger(NeonLandingFee, MSG_LandingFee_Neon, MSG_LandingFee_NeonArrest)
			 ElseIf akShip.IsInLocation(LocAkila)
			        DebtTrigger(AkilaLandingFee, MSG_LandingFee_Akila, MSG_LandingFee_AkilaArrest)
			 ElseIf akShip.IsInLocation(LocNewAtlantis)
			        DebtTrigger(NewAtlantisLandingFee, MSG_LandingFee_NewAtlantis, MSG_LandingFee_NewAtlantisArrest)
			 ElseIf akShip.IsInLocation(LocCydonia)
			        DebtTrigger(CydoniaLandingFee, MSG_LandingFee_Cydonia, MSG_LandingFee_CydoniaArrest)
			 ElseIf akShip.IsInLocation(LocHopeTown)
			        DebtTrigger(HopetownLandingFee, MSG_LandingFee_Hopetown, MSG_LandingFee_HopetownArrest)
			 ElseIf akShip.IsInLocation(LocGagarin)
			        DebtTrigger(GagarinLandingFee, MSG_LandingFee_Gagarin, MSG_LandingFee_GagarinArrest)
			 ElseIf akShip.IsInLocation(LocNewHomestead)
			        DebtTrigger(NewHomesteadFee, MSG_LandingFee_NewHomestead, MSG_LandingFee_NewHomesteadArrest)
			 ElseIf akShip.IsInLocation(LocDazra)
			        DebtTrigger(DazraLandingFee, MSG_LandingFee_Dazra, MSG_LandingFee_DazraArrest)
			 ElseIf akShip.IsInLocation(LocRedMile)
			        DebtTrigger(RedMileLandingFee, MSG_LandingFee_RedMile, MSG_LandingFee_RedMileArrest)
              EndIf

EndFunction

Function LandingFeeLocationTerminal()
			 			   
			   spaceshipreference akShip = SQ_PlayerShip.PlayerShip.GetShipRef() 
			   
			   Float PriceMult = GV_LandingFeesPriceMult.GetValue()				   
			   
			   Int NeonLandingFee = math.round(2500 * PriceMult) 				 
			   Int AkilaLandingFee = math.round(2000 * PriceMult) 					 
			   Int NewAtlantisLandingFee = math.round(3000 * PriceMult) 	
			   Int CydoniaLandingFee = math.round(1700 * PriceMult) 	
			   Int HopetownLandingFee = math.round(850 * PriceMult) 	
			   Int GagarinLandingFee = math.round(1000 * PriceMult) 	
			   Int NewHomesteadFee = math.round(900 * PriceMult) 	
			   Int DazraLandingFee = math.round(1500 * PriceMult) 	
			   Int RedMileLandingFee = math.round(800 * PriceMult)	
 				 
				 If akShip.IsInLocation(LocNeon)
			        ShipLandingFeeCostTerminal(NeonLandingFee, MSG_LandingFee_Neon, MSG_LandingFee_NeonArrest)
			 ElseIf akShip.IsInLocation(LocAkila)
			        ShipLandingFeeCostTerminal(AkilaLandingFee, MSG_LandingFee_Akila, MSG_LandingFee_AkilaArrest)
			 ElseIf akShip.IsInLocation(LocNewAtlantis)
			        ShipLandingFeeCostTerminal(NewAtlantisLandingFee, MSG_LandingFee_NewAtlantis, MSG_LandingFee_NewAtlantisArrest)
			 ElseIf akShip.IsInLocation(LocCydonia)
			        ShipLandingFeeCostTerminal(CydoniaLandingFee, MSG_LandingFee_Cydonia, MSG_LandingFee_CydoniaArrest)
			 ElseIf akShip.IsInLocation(LocHopeTown)
			        ShipLandingFeeCostTerminal(HopetownLandingFee, MSG_LandingFee_Hopetown, MSG_LandingFee_HopetownArrest)
			 ElseIf akShip.IsInLocation(LocGagarin)
			        ShipLandingFeeCostTerminal(GagarinLandingFee, MSG_LandingFee_Gagarin, MSG_LandingFee_GagarinArrest)
			 ElseIf akShip.IsInLocation(LocNewHomestead)
			        ShipLandingFeeCostTerminal(NewHomesteadFee, MSG_LandingFee_NewHomestead, MSG_LandingFee_NewHomesteadArrest)
			 ElseIf akShip.IsInLocation(LocDazra)
			        ShipLandingFeeCostTerminal(DazraLandingFee, MSG_LandingFee_Dazra, MSG_LandingFee_DazraArrest)
			 ElseIf akShip.IsInLocation(LocRedMile)
			        ShipLandingFeeCostTerminal(RedMileLandingFee, MSG_LandingFee_RedMile, MSG_LandingFee_RedMileArrest)
              EndIf

EndFunction

Function LandingFeeLocationForStarview()
			 			   			    				 
			 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
			 Float ShipClassFeeMult = CheckShipClassFeeMult()             
			 Float ShipMass = akShip.GetValue(SpaceshipMass)
			 Float ShipCharacteristics = ShipClassFeeMult * ShipMass 
			 Float ReputationCalc = ReputationCalculator()
			 Float ServiceDiscountCalc = ServiceDiscountCost()
			 Float PriceMult = GV_LandingFeesPriceMult.GetValue()

			 Int NeonLandingFee = math.round(2500 * PriceMult) 				 
			 Int AkilaLandingFee = math.round(2000 * PriceMult) 					 
			 Int NewAtlantisLandingFee = math.round(3000 * PriceMult) 	
			 Int CydoniaLandingFee = math.round(1700 * PriceMult) 	
			 Int HopetownLandingFee = math.round(850 * PriceMult) 	
			 Int GagarinLandingFee = math.round(1000 * PriceMult) 	
			 Int NewHomesteadFee = math.round(900 * PriceMult) 	
			 Int DazraLandingFee = math.round(1500 * PriceMult) 	
			 Int RedMileLandingFee = math.round(800 * PriceMult)	
             
			 FinalFeeNeon = math.round((ShipCharacteristics + NeonLandingFee) / ServiceDiscountCalc / ReputationCalc)  	         
			 FinalFeeAkila = math.round((ShipCharacteristics + AkilaLandingFee) / ServiceDiscountCalc / ReputationCalc)
			 FinalFeeAtlantis = math.round((ShipCharacteristics + NewAtlantisLandingFee) / ServiceDiscountCalc / ReputationCalc)
			 FinalFeeCydonia = math.round((ShipCharacteristics + CydoniaLandingFee) / ServiceDiscountCalc / ReputationCalc)  	         
			 FinalFeeHopetown = math.round((ShipCharacteristics + HopetownLandingFee) / ServiceDiscountCalc / ReputationCalc)
			 FinalFeeGagarin = math.round((ShipCharacteristics + GagarinLandingFee) / ServiceDiscountCalc / ReputationCalc)
			 FinalFeeNewHomestead = math.round((ShipCharacteristics + NewHomesteadFee) / ServiceDiscountCalc / ReputationCalc)
			 FinalFeeDazra = math.round((ShipCharacteristics + DazraLandingFee) / ServiceDiscountCalc / ReputationCalc)
			 FinalFeeRedMile = math.round((ShipCharacteristics + RedMileLandingFee) / ServiceDiscountCalc / ReputationCalc)

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

Bool Function IsPlayerInLocationList(FormList locList)
    Int count = locList.GetSize()
    While count > 0
        count -= 1
        Location loc = locList.GetAt(count) as Location
        If loc && PlayerRef.IsInLocation(loc)
            Return True
        EndIf
    EndWhile
    Return False
EndFunction

Bool Function IsShipInLocationList(SpaceShipReference ship, FormList locList)
    Int count = locList.GetSize()
    While count > 0
        count -= 1
        Location loc = locList.GetAt(count) as Location
           If loc && ship.IsInLocation(loc)
			  Return True
        EndIf
    EndWhile
    Return False
EndFunction

ActorValue Function CheckForAV()

		        SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
                
				If IsPlayerInLocationList(List_UCLocations) || IsShipInLocationList(akShip, List_UCLocations) 
                   Return AV_ReputationUC
		    ElseIf IsPlayerInLocationList(List_FCLocations) || IsShipInLocationList(akShip, List_FCLocations) 
                   Return AV_ReputationFC			 		 
			 EndIf 
             Return None

EndFunction

ActorValue Function CheckForAVRep()

		        SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
                
				If IsPlayerInLocationList(List_UCLocations) || IsShipInLocationList(akShip, List_UCLocations) 
                   Return AV_ReputationUC
		    ElseIf IsPlayerInLocationList(List_FCLocations) || IsShipInLocationList(akShip, List_FCLocations) 
                   Return AV_ReputationFC			 		 
			 Else
                   Return Reputation				 
			 EndIf 
             Return None

EndFunction

Float Function ReputationCalculator()
	  
	  Float IfReputation00 = 0.50 	   
	  Float IfReputation10 = 0.60      
	  Float IfReputation20 = 0.70
	  Float IfReputation30 = 0.80      
	  Float IfReputation40 = 0.90 
	  Float IfReputation50 = 1.00
	  Float IfReputation60 = 1.10      
	  Float IfReputation70 = 1.20
	  Float IfReputation80 = 1.30      
	  Float IfReputation90 = 1.40 
	  Float IfReputation100 = 1.50
      
	  ActorValue AVCheck = CheckForAV() 
	  
	  If FameAndReputationToggle.GetValue() == 0
         Return IfReputation50 	  
   EndIf  
      
      If PlayerRef.GetValue(AVCheck) < 10
         Return IfReputation00
  ElseIf PlayerRef.GetValue(AVCheck) >= 10 && PlayerRef.GetValue(AVCheck) < 20
         Return IfReputation10
  ElseIf PlayerRef.GetValue(AVCheck) >= 20 && PlayerRef.GetValue(AVCheck) < 30
         Return IfReputation20
  ElseIf PlayerRef.GetValue(AVCheck) >= 30 && PlayerRef.GetValue(AVCheck) < 40
         Return IfReputation30
  ElseIf PlayerRef.GetValue(AVCheck) >= 40 && PlayerRef.GetValue(AVCheck) < 50
         Return IfReputation40
  ElseIf PlayerRef.GetValue(AVCheck) >= 50 && PlayerRef.GetValue(AVCheck) < 60
         Return IfReputation50
  ElseIf PlayerRef.GetValue(AVCheck) >= 60 && PlayerRef.GetValue(AVCheck) < 70
         Return IfReputation60
  ElseIf PlayerRef.GetValue(AVCheck) >= 70 && PlayerRef.GetValue(AVCheck) < 80
         Return IfReputation70
  ElseIf PlayerRef.GetValue(AVCheck) >= 80 && PlayerRef.GetValue(AVCheck) < 90
         Return IfReputation80
  ElseIf PlayerRef.GetValue(AVCheck) >= 90 && PlayerRef.GetValue(AVCheck) < 100
         Return IfReputation90
  ElseIf PlayerRef.GetValue(AVCheck) >= 100
         Return IfReputation100
   Else 
         Return IfReputation50
   EndIf

EndFunction

Float Function CheckShipClassFeeMult()
	        
      SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()	  
	  
	  Float FeeClassA = 1.4
	  Float FeeClassB = 2.0	  
	  Float FeeClassC = 2.6
	  Float FeeClassM = 3.2
	           
			   If akShip.GetReactorClassKeyword() == ShipClassA
			      Return FeeClassA                              
           ElseIf akShip.GetReactorClassKeyword() == ShipClassB
			      Return FeeClassB 
           ElseIf akShip.GetReactorClassKeyword() == ShipClassC
			      Return FeeClassC 									  
           ElseIf akShip.GetReactorClassKeyword() == ShipClassM
			      Return FeeClassM 
            EndIf

Endfunction

Function ShipLandingFeeCost(Int LocationFee, Message NotificationCost, Message NotificationArrest)
			 
			 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
			 Float ShipClassFeeMult = CheckShipClassFeeMult()             
			 Float ShipMass = akShip.GetValue(SpaceshipMass)
			 Float ReputationCalc = ReputationCalculator()
			 Float ServiceDiscountCalc = ServiceDiscountCost()
			 Int FinalFee = 0
			 
			 FinalFee = math.round((ShipClassFeeMult * ShipMass + LocationFee) / ServiceDiscountCalc / ReputationCalc)  	         
			 
			 If PlayerRef.GetItemCount(Credits) >= FinalFee
                PlayerRef.RemoveItem(Credits, FinalFee, False)
                SFX_ConfirmPayment.Play(PlayerRef)
				LandingFeePayed.SetValue(1)
				NotificationCost.Show(FinalFee)
		  Else
		        LandingFeeDebt = math.round(FinalFee * 1.25)
                DisableFastTravel()
				DisableTakeoff()
				LandingFeeDebtActive.SetValue(1)
				LandingFeePayed.SetValue(1)
				StartTimerGameTime(8, 0)
				StartTimer(5, 0)
				SFX_DebtWarning.Play(PlayerRef)
				Utility.Wait(1.5)
				NotificationArrest.Show(LandingFeeDebt)
		  EndIf

EndFunction

Function ShipLandingFeeCostTerminal(Int LocationFee, Message NotificationCost, Message NotificationArrest)
			 
			 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
			 Float ShipClassFeeMult = CheckShipClassFeeMult()             
			 Float ShipMass = akShip.GetValue(SpaceshipMass)
			 Float ReputationCalc = ReputationCalculator()
			 Float ServiceDiscountCalc = ServiceDiscountCost()
			 Int FinalFee = 0
			 
			 FinalFee = math.round((ShipClassFeeMult * ShipMass + LocationFee) / ServiceDiscountCalc / ReputationCalc)  	         
			 
			 If PlayerRef.GetItemCount(Credits) >= FinalFee
                PlayerRef.RemoveItem(Credits, FinalFee, False)
                CancelTimerGameTime(1)
				SFX_ConfirmPayment.Play(PlayerRef)
				LandingFeePayed.SetValue(1)
				NotificationCost.Show(FinalFee)                
		  EndIf

EndFunction
                 
Function DebtTrigger(Int LocationFee, Message NotificationCost, Message NotificationArrest)
			 
			 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
			 Float ShipClassFeeMult = CheckShipClassFeeMult()             
			 Float ShipMass = akShip.GetValue(SpaceshipMass)
			 Float ReputationCalc = ReputationCalculator()
			 Float ServiceDiscountCalc = ServiceDiscountCost()
			 Int FinalFee = 0
			 
			 FinalFee = math.round((ShipClassFeeMult * ShipMass + LocationFee) / ServiceDiscountCalc / ReputationCalc)  	         
		     LandingFeeDebt = math.round(FinalFee * 1.25)
             DisableFastTravel()
			 DisableTakeoff()
			 LandingFeeDebtActive.SetValue(1)
			 LandingFeePayed.SetValue(1)
			 StartTimerGameTime(8, 0)
			 SFX_DebtWarning.Play(PlayerRef)
			 Utility.Wait(1.5)
			 NotificationArrest.Show(LandingFeeDebt)

	            If FameAndReputationToggle.GetValue() == 0
                   Return	  
             EndIf      
	         ActorValue AVCheck = CheckForAVRep() 
	         Float RepDebtDMG = GV_RepDebtTriggers.GetValue()
			 PlayerRef.DamageValue(AVCheck, RepDebtDMG) 

EndFunction

Function PayLandingDebt()
		
        If LandingFeeDebt > 0 		
			 If PlayerRef.GetItemCount(Credits) >= LandingFeeDebt
                PlayerRef.RemoveItem(Credits, LandingFeeDebt, False)
                SFX_ConfirmPayment.Play(PlayerRef)
				LandingFeeDebtActive.SetValue(0)
				LandingFeePayed.SetValue(1)
				CancelTimerGameTime(0)
				EnableFastTravel()
				EnableTakeoff()                 
				 
				 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()				 
				 If akShip.IsInLocation(LocNeon)
			        MSG_LandingFee_NeonDebtPaid.Show(LandingFeeDebt)
			 ElseIf akShip.IsInLocation(LocAkila)
			        MSG_LandingFee_AkilaDebtPaid.Show(LandingFeeDebt)
			 ElseIf akShip.IsInLocation(LocNewAtlantis)
			        MSG_LandingFee_NewAtlantisDebtPaid.Show(LandingFeeDebt)
			 ElseIf akShip.IsInLocation(LocCydonia)
			        MSG_LandingFee_CydoniaDebtPaid.Show(LandingFeeDebt)
			 ElseIf akShip.IsInLocation(LocHopeTown)
			        MSG_LandingFee_HopetownDebtPaid.Show(LandingFeeDebt)
			 ElseIf akShip.IsInLocation(LocGagarin)
			        MSG_LandingFee_GagarinDebtPaid.Show(LandingFeeDebt)
			 ElseIf akShip.IsInLocation(LocNewHomestead)
			        MSG_LandingFee_NewHomesteadDebtPaid.Show(LandingFeeDebt)
			 ElseIf akShip.IsInLocation(LocDazra)
			        MSG_LandingFee_DazraDebtPaid.Show(LandingFeeDebt)
			 ElseIf akShip.IsInLocation(LocRedMile)
			        MSG_LandingFee_RedMileDebtPaid.Show(LandingFeeDebt)
              EndIf
		      LandingFeeDebt = 0		  
		  EndIf
     EndIf

EndFunction

Event OnTimerGameTime(Int aiTimerID)
     
	 If aiTimerID == 0
        If LandingFeeDebtActive.GetValue() == 1
           LandingFeeDebt += math.round(LandingFeeDebt * 0.09)
		   StartTimerGameTime(8, 0)
     EndIf
 ElseIf aiTimerID == 1
        If LandingFeePayed.GetValue() == 0
		   LandingFeeLocationDebt()
     EndIf
 ElseIf aiTimerID == 2
        TaxTimer()
		StartOutpostTaxGameTimeTimer()
  EndIf

EndEvent

Event OnTimer(int aiTimerID)
	       	 
		     If (aiTimerID == 0)
	               If PlayerRef.GetItemCount(Credits) < LandingFeeDebt
		              StartTimer(5, 0) 
		        Else  
		              PayLandingDebt()    
		        EndIf
		  EndIf
EndEvent

Function DisableFastTravel()	
      
	  TakeOffRestriction.SetValue(1)
	  FastTravel.EnableFastTravel(False) 
	  FastTravel.Reset()
	  FastTravel.Delete()
	  FastTravel = inputEnableLayer.Create()
	  FastTravel.EnableFastTravel(False)

EndFunction

Function EnableFastTravel()	
 
      TakeOffRestriction.SetValue(0)
	  FastTravel.EnableFastTravel(True) 
	  FastTravel.Reset()
	  FastTravel.Delete()
	  FastTravel = inputEnableLayer.Create()
	  FastTravel.EnableFastTravel(True)

EndFunction

Function EnableTakeoff()
      
	  TakeOffRestriction.SetValue(0)
	  TakeOff.EnableTakeOff(True) 
	  TakeOff.Reset()
	  TakeOff.Delete()
	  TakeOff = inputEnableLayer.Create()
	  TakeOff.EnableTakeOff(True)

Endfunction

Function DisableTakeoff()
      
	  TakeOffRestriction.SetValue(1)
	  TakeOff.EnableTakeOff(False) 
	  TakeOff.Reset()
	  TakeOff.Delete()
	  TakeOff = inputEnableLayer.Create()
	  TakeOff.EnableTakeOff(False)

Endfunction