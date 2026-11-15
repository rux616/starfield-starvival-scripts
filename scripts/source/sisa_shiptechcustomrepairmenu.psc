ScriptName SISA_ShipTechCustomRepairMenu Extends TopicInfo

Quest Property QuestSpaceshipSystems Auto Const
Actor Property PlayerRef Auto Const
ActorValue Property SpaceshipHealth Auto Const
ActorValue Property SpaceshipWeaponHealth Auto Const
ActorValue Property SpaceshipWeaponHealth02 Auto Const
ActorValue Property SpaceshipWeaponHealth03 Auto Const
ActorValue Property SpaceshipShieldHealth Auto Const
ActorValue Property SpaceshipSystemEngineHealth Auto Const
ActorValue Property SpaceshipSystemGravdriveHealth Auto Const
Message Property MSG_SpaceshipTechnicianMenu Auto Const
Message Property MSG_SpaceshipTechnicianMenuNotEnoughCredits Auto Const
sq_playershipscript Property SQ_PlayerShip Auto Const mandatory
MiscObject Property Credits Auto Const
MiscObject Property MaintenanceKit Auto Const
ObjectReference Property TechnicianTerminalRef Auto Const

GlobalVariable Property ShipServicesRepairCost Auto Const
GlobalVariable Property ShipServicesMaintenanceAtWork Auto Const

Event OnEnd(ObjectReference akSpeakerRef, bool abHasBeenSaid)
	  ShipTechnicianMenu()
endEvent

Function ShipTechnicianMenu(Int MenuType = 0, Int Button = 0, Bool MenuOpened = True)
  
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
			Button = MSG_SpaceshipTechnicianMenu.Show(ShipServicesRepairCost.GetValueInt(), CalculateMaintenance, CalculateHull, CalculateWeaponHealthInPercent01, CalculateWeaponHealthInPercent02, CalculateWeaponHealthInPercent03, CalculateEngineHealthInPercent, CalculateShieldHealthInPercent, CalculateGravDriveHealthInPercent)	 
                   
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
				              MSG_SpaceshipTechnicianMenuNotEnoughCredits.Show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
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