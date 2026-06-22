ScriptName SISA_ShipVendorVehicleRefuel extends TopicInfo

Actor Property PlayerRef Auto Const
Quest Property FameAndRepQuest Auto Const
ActorValue Property AV_RoverFuel Auto Const
Message Property MSG_RefuelShipServiceMenu Auto Const
Message Property MSG_RoverFuelNotEnoughCredits Auto Const
GlobalVariable Property GV_RoverFuelPriceMult Auto Const
Conditionform Property ConditionFormFuelDiscount01 Auto Const Mandatory
Conditionform Property ConditionFormFuelDiscount02 Auto Const Mandatory
Conditionform Property ConditionFormFuelDiscount03 Auto Const Mandatory
Conditionform Property ConditionFormFuelDiscount04 Auto Const Mandatory
Weapon Property MiscObj_RoverFuel Auto Const
MiscObject Property MiscObj_Credits Auto Const
Potion Property Pot_AdditionalTriggers Auto Const
GlobalVariable Property GV_FameAndReputationToggle Auto Const

Event OnEnd(ObjectReference akSpeakerRef, bool abHasBeenSaid)
	  RefuelMenu()
endEvent

Function RefuelMenu(Int MenuType = 0, Int Button = 0)
		 			 
		 If Button == -1		 
     
	 ElseIf MenuType == 0
	    	
			Float RepBonus = RepCalculator() 
	        Float DiscountCalculate = DiscountCost() 	      
	        Float fuelCostPerUnit = MiscObj_RoverFuel.GetGoldValue() * GV_RoverFuelPriceMult.GetValue()
	        Float FuelAmount = 0.0
            Float FinalCost = 0.0					  
					                   
			FuelAmount = PlayerRef.GetBaseValue(AV_RoverFuel) - PlayerRef.GetValue(AV_RoverFuel)   
	        FinalCost = Math.Round(FuelAmount * fuelCostPerUnit / DiscountCalculate / RepBonus) as Float
		    			
			Button = MSG_RefuelShipServiceMenu.Show(PlayerRef.GetValue(AV_RoverFuel), PlayerRef.GetBaseValue(AV_RoverFuel), FinalCost, 0, 0, 0, 0, 0, 0)	 
                   
				   If Button == 0
                                   
								If PlayerRef.GetItemCount(MiscObj_Credits) >= FinalCost
						           PlayerRef.RemoveItem(MiscObj_Credits, FinalCost as int, False, None)
								   PlayerRef.EquipItem(Pot_AdditionalTriggers, False, True)					       		      
                            Else
					               MSG_RoverFuelNotEnoughCredits.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)	
			                 EndIf
			   
			   ElseIf Button == 1 
				      ; Exit						 
				EndIf
      EndIf

EndFunction

Float Function FameAndRepCheck()

      Float FameAndRepEnabled = 1.0
      Float FameAndRepDisabled = 0.0

      If GV_FameAndReputationToggle.GetValue() == 1
         return FameAndRepEnabled
  Else
         return FameAndRepDisabled   
   EndIf

EndFunction

Float Function RepCalculator()
	  
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
	  Float IfFameAndRepDisabled = FameAndRepCheck()
	  
	  If IfFameAndRepDisabled == 0.0
         Return IfReputation50 	  
   EndIf       
	  
	  ActorValue AVCheck = (FameAndRepQuest as SISA_FameAndRepMB).CheckForAV()
	  
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
   EndIf

EndFunction

Float Function DiscountCost()
     
	 Float DiscountPercent00 = 1.00
     Float DiscountPercent01 = 1.15 	 
     Float DiscountPercent02 = 1.25 
     Float DiscountPercent03 = 1.35 
     Float DiscountPercent04 = 1.50 	 
		
		If ConditionFormFuelDiscount04.IsTrue(PlayerRef, None)     
		   Return DiscountPercent04 
	ElseIf ConditionFormFuelDiscount03.IsTrue(PlayerRef, None)  
	       Return DiscountPercent03
	ElseIf ConditionFormFuelDiscount02.IsTrue(PlayerRef, None)	 
           Return DiscountPercent02
	ElseIf ConditionFormFuelDiscount01.IsTrue(PlayerRef, None)
           Return DiscountPercent01 
Else	
           Return DiscountPercent00
     EndIf

EndFunction