ScriptName SISA_ShipTechCustomAllServiceMenu Extends TopicInfo

Quest Property QuestSpaceshipSystems Auto Const
Quest Property FameAndRepQuest Auto Const
Actor Property PlayerRef Auto Const
Actor Property RestockNPC Auto Const mandatory
ActorValue Property SpaceshipTotalFuelAmountBase Auto Const
ActorValue Property AV_RoverFuel Auto Const
ActorValue Property AV_RoverMaintenance Auto Const
ActorValue Property SpaceshipHealth Auto Const
ActorValue Property SpaceshipWeaponHealth Auto Const
ActorValue Property SpaceshipWeaponHealth02 Auto Const
ActorValue Property SpaceshipWeaponHealth03 Auto Const
ActorValue Property SpaceshipShieldHealth Auto Const
ActorValue Property SpaceshipSystemEngineHealth Auto Const
ActorValue Property SpaceshipSystemGravdriveHealth Auto Const
Message Property MSG_SpaceshipMenuRefuel Auto Const
Message Property MSG_SpaceshipMenuRepair Auto Const
Message Property MSG_SpaceshipTechnicianMenuNotEnoughCredits Auto Const
Message Property MSG_VehicleMenuRefuel Auto Const
Message Property MSG_VehicleMenuRepair Auto Const
Message Property MSG_RoverFuelNotEnoughCredits Auto Const
Message Property MSG_RoverRepairNotEnoughCredits Auto Const
Message Property MSG_AllServicesMenu Auto Const
GlobalVariable Property GV_TechVendorCreditsRefresh Auto Const
GlobalVariable Property ShipServicesFuelCost Auto Const
GlobalVariable Property ShipServicesRepairCost Auto Const
GlobalVariable Property ShipServicesFuelStandby Auto Const
GlobalVariable Property ShipServicesMaintenanceAtWork Auto Const
GlobalVariable Property GV_RoverFuelPriceMult Auto Const
GlobalVariable Property GV_RoverRepairPriceMult Auto Const
Conditionform Property ConditionFormFuelDiscount01 Auto Const Mandatory
Conditionform Property ConditionFormFuelDiscount02 Auto Const Mandatory
Conditionform Property ConditionFormFuelDiscount03 Auto Const Mandatory
Conditionform Property ConditionFormFuelDiscount04 Auto Const Mandatory
Conditionform Property ConditionFormRoverSystems01 Auto Const Mandatory
Conditionform Property ConditionFormRoverSystems02 Auto Const Mandatory
Conditionform Property ConditionFormRoverSystems03 Auto Const Mandatory
Conditionform Property ConditionFormRoverSystems04 Auto Const Mandatory
MiscObject Property Credits Auto Const
MiscObject Property MaintenanceKit Auto Const
Weapon Property MiscObj_RoverFuel Auto Const
Weapon Property MiscObj_RoverMaintenanceKit Auto Const
Potion Property Pot_AdditionalTriggersRefuel Auto Const
Potion Property Pot_AdditionalTriggersRepair Auto Const
LeveledItem Property CreditsLeveledList Auto Const
ObjectReference Property TechVendorChest Auto Const
ObjectReference Property TechnicianTerminalRef Auto Const
sq_playershipscript Property SQ_PlayerShip Auto Const mandatory
GlobalVariable Property GV_FameAndReputationToggle Auto Const

Event OnEnd(ObjectReference akSpeakerRef, bool abHasBeenSaid)
	  
      Int messageIndex = MSG_AllServicesMenu.Show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
          
		  If messageIndex == 0
             ShipTechnicianMenuRefuel()
      ElseIf messageIndex == 1
             ShipTechnicianMenuRepair()
      ElseIf messageIndex == 2
             VehicleMenuRefuel()
      ElseIf messageIndex == 3
             VehicleMenuRepair()
      ElseIf messageIndex == 4
			 TechVendorCreditsRefresh()
			 RestockNPC.ShowBarterMenu()             
	   EndIf

endEvent

Function ShipTechnicianMenuRefuel(Int MenuType = 0, Int Button = 0, Bool MenuOpened = True)
  
  While MenuOpened		 			 
		 
		 If Button == -1		 

                 
	 ElseIf MenuType == 0
		    
			SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()			
			
			(QuestSpaceshipSystems as SISA_SpaceshipFuel).CalculateFuelCost()			   		
			Utility.Wait(0.01)
			Button = MSG_SpaceshipMenuRefuel.Show(ShipServicesFuelCost.GetValueInt(), akShip.GetValue(SpaceshipTotalFuelAmountBase), akShip.GetBaseValue(SpaceshipTotalFuelAmountBase), 0.0, 0.0, 0.0, 0.0, 0.0)	 
                   
				   If Button == 0
	                  
					           If PlayerRef.GetItemCount(Credits) >= ShipServicesFuelCost.GetValueInt() 
					              PlayerRef.RemoveItem(Credits, ShipServicesFuelCost.GetValueInt(), False, None)   
				                  ShipServicesFuelStandby.SetValue(1)
								  MenuOpened = False
								  (QuestSpaceshipSystems as SISA_SpaceshipFuel).RefuelAtShipService()
				           Else
				                  MSG_SpaceshipTechnicianMenuNotEnoughCredits.Show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0)
				            EndIf			   
			                            			   	   			   
			   ElseIf Button == 1 
				      ; Exit
				      MenuOpened = False
				EndIf
      EndIf

EndWhile
EndFunction

Function ShipTechnicianMenuRepair(Int MenuType = 0, Int Button = 0, Bool MenuOpened = True)
  
  While MenuOpened		 			 
		 
		 If Button == -1		 

                 
	 ElseIf MenuType == 0
		    
			ActorValue CheckMaintenanceClass = (QuestSpaceshipSystems as SISA_SpaceshipFuel).SetProperMaitenanceClass()
			SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
			Float MaintenanceValues = PlayerRef.GetValue(CheckMaintenanceClass)
            Float MaintenanceValuesMax = PlayerRef.GetBaseValue(CheckMaintenanceClass)			
			Float CalculateMaintenance = MaintenanceValues / MaintenanceValuesMax * 100
			Float CalculateHull = akShip.GetValue(SpaceshipHealth) / akShip.GetBaseValue(SpaceshipHealth) * 100
			Float CalculateWeaponHealthInPercent01 = akShip.GetValue(SpaceshipWeaponHealth) / akShip.GetBaseValue(SpaceshipWeaponHealth) * 100
            Float CalculateWeaponHealthInPercent02 = akShip.GetValue(SpaceshipWeaponHealth02) / akShip.GetBaseValue(SpaceshipWeaponHealth02) * 100
            Float CalculateWeaponHealthInPercent03 = akShip.GetValue(SpaceshipWeaponHealth03) / akShip.GetBaseValue(SpaceshipWeaponHealth03) * 100
            Float CalculateEngineHealthInPercent = akShip.GetValue(SpaceshipSystemEngineHealth) / akShip.GetBaseValue(SpaceshipSystemEngineHealth) * 100
            Float CalculateShieldHealthInPercent = akShip.GetValue(SpaceshipShieldHealth) / akShip.GetBaseValue(SpaceshipShieldHealth) * 100
            Float CalculateGravDriveHealthInPercent = akShip.GetValue(SpaceshipSystemGravdriveHealth) / akShip.GetBaseValue(SpaceshipSystemGravdriveHealth) * 100
						   
            (QuestSpaceshipSystems as SISA_SpaceshipFuel).CalculateRepairCost()			
			Utility.Wait(0.01)
			Button = MSG_SpaceshipMenuRepair.Show(ShipServicesRepairCost.GetValueInt(), CalculateMaintenance, CalculateHull, CalculateWeaponHealthInPercent01, CalculateWeaponHealthInPercent02, CalculateWeaponHealthInPercent03, CalculateEngineHealthInPercent, CalculateShieldHealthInPercent, CalculateGravDriveHealthInPercent)	 
                   
				   If Button == 0
	                  
					       If PlayerRef.GetItemCount(Credits) >= ShipServicesRepairCost.GetValueInt()
					          PlayerRef.RemoveItem(Credits, ShipServicesRepairCost.GetValueInt(), False, None) 				
                                 If akShip.GetItemCount(MaintenanceKit) > 0
							        akShip.RemoveItem(MaintenanceKit, 1, False, None)
							  EndIf
                              ShipServicesMaintenanceAtWork.SetValue(1)
							  (QuestSpaceshipSystems as SISA_SpaceshipFuel).MaintenanceAtShipService()
				              MenuOpened = False
					   Else
				              MSG_SpaceshipTechnicianMenuNotEnoughCredits.Show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0)
				        EndIf				   
		   
			   ElseIf Button == 1 
					  
					  MenuOpened = False
					  Utility.Wait(0.1)
					  TechnicianTerminalRef.Activate(PlayerRef, False)	   	   			   
			   
			   ElseIf Button == 2 
				      ; Exit
				      MenuOpened = False
				EndIf
      EndIf

EndWhile
EndFunction

Function VehicleMenuRefuel(Int MenuType = 0, Int Button = 0, Bool MenuOpened = True)
  
  While MenuOpened		 			 
		 
		 If Button == -1		 
     
	 ElseIf MenuType == 0
                   
				   Float RoverSystemsDiscount = RoverSystemsDiscountCost()
	               Float DiscountCalculate = DiscountCost() 	      
	    		   Float RepBonus = RepCalculator() 	               
				   Float fuelCostPerUnit = MiscObj_RoverFuel.GetGoldValue() * GV_RoverFuelPriceMult.GetValue()
	               Float FuelAmount = 0.0
                   Float FinalCostFuel = 0.0					  					                   
			       FuelAmount = PlayerRef.GetBaseValue(AV_RoverFuel) - PlayerRef.GetValue(AV_RoverFuel)   
	               FinalCostFuel = Math.Round(FuelAmount * fuelCostPerUnit / DiscountCalculate / RepBonus/ RoverSystemsDiscount) as Float		    			
			       
				   Button = MSG_VehicleMenuRefuel.Show(FinalCostFuel, PlayerRef.GetValue(AV_RoverFuel), PlayerRef.GetBaseValue(AV_RoverFuel), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)	                    				   
				   
				   If Button == 0
                                   
								If PlayerRef.GetItemCount(Credits) >= FinalCostFuel
						           PlayerRef.RemoveItem(Credits, FinalCostFuel as int, False, None)
								   PlayerRef.EquipItem(Pot_AdditionalTriggersRefuel, False, True)					       		      
                                   MenuOpened = False
							Else
					               MSG_RoverFuelNotEnoughCredits.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)	
			                 EndIf
			   		   			   			   			   
			   ElseIf Button == 1 
				      ; Exit						 
				        MenuOpened = False
				EndIf
      EndIf

EndWhile
EndFunction

Function VehicleMenuRepair(Int MenuType = 0, Int Button = 0, Bool MenuOpened = True)
  
  While MenuOpened		 			 
		 
		 If Button == -1		 
     
	 ElseIf MenuType == 0
				   
				   Float RoverSystemsDiscount = RoverSystemsDiscountCost()
	               Float DiscountCalculate = DiscountCost() 	      
	    		   Float RepBonus = RepCalculator() 	      
	               Float MaintenanceCostPerUnit = MiscObj_RoverMaintenanceKit.GetGoldValue() / 25 * GV_RoverRepairPriceMult.GetValue()
	               Float RepairAmount = 0.0
                   Float FinalCostRepair = 0.0					  			
			       RepairAmount = PlayerRef.GetBaseValue(AV_RoverMaintenance) - PlayerRef.GetValue(AV_RoverMaintenance)   
	               FinalCostRepair = Math.Round(RepairAmount * MaintenanceCostPerUnit / DiscountCalculate / RepBonus / RoverSystemsDiscount) as Float
			       
				   Button = MSG_VehicleMenuRepair.Show(FinalCostRepair, PlayerRef.GetValue(AV_RoverMaintenance), PlayerRef.GetBaseValue(AV_RoverMaintenance), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)	                    				   
				   
				   If Button == 0
                                   
								If PlayerRef.GetItemCount(Credits) >= FinalCostRepair
						           PlayerRef.RemoveItem(Credits, FinalCostRepair as int, False, None)
								   PlayerRef.EquipItem(Pot_AdditionalTriggersRepair, False, True)				       		      
                                   MenuOpened = False
							Else
					               MSG_RoverRepairNotEnoughCredits.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)	
			                 EndIf
        			  			   			   
			   ElseIf Button == 1 
				      ; Exit						 
				        MenuOpened = False
				EndIf
      EndIf

EndWhile
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

Float Function RoverSystemsDiscountCost()
     
	 Float DiscountPercent00 = 1.00
     Float DiscountPercent01 = 1.10 	 
     Float DiscountPercent02 = 1.15 
     Float DiscountPercent03 = 1.20 
     Float DiscountPercent04 = 1.30 	 
		
		If ConditionFormRoverSystems04.IsTrue(PlayerRef, None)     
		   Return DiscountPercent04 
	ElseIf ConditionFormRoverSystems03.IsTrue(PlayerRef, None)  
	       Return DiscountPercent03
	ElseIf ConditionFormRoverSystems02.IsTrue(PlayerRef, None)	 
           Return DiscountPercent02
	ElseIf ConditionFormRoverSystems01.IsTrue(PlayerRef, None)
           Return DiscountPercent01 
Else	
           Return DiscountPercent00
     EndIf

EndFunction

Function TechVendorCreditsRefresh()
            
			Int CreditsThreshold = GV_TechVendorCreditsRefresh.GetValue() As Int     
				 
				 If TechVendorChest.GetItemCount(Credits) < CreditsThreshold
					TechVendorChest.Removeitem(Credits, 999999999, True, None)
					TechVendorChest.Additem(CreditsLeveledList, 1, True)
			  EndIf

EndFunction