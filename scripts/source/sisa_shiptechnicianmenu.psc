ScriptName SISA_ShipTechnicianMenu Extends Perk Const hidden

Quest Property QuestSpaceshipSystems Auto Const
Actor Property PlayerRef Auto Const
ActorValue Property SpaceshipTotalFuelAmountBase Auto Const
Message Property MSG_SpaceshipTechnicianMenu Auto Const
Message Property MSG_SpaceshipTechnicianMenuNotEnoughCredits Auto Const
sq_playershipscript Property SQ_PlayerShip Auto Const mandatory
MiscObject Property Credits Auto Const

GlobalVariable Property ShipServicesFuelCost Auto Const
GlobalVariable Property ShipServicesRepairCost Auto Const
GlobalVariable Property ShipServicesFuelStandby Auto Const
GlobalVariable Property ShipServicesMaintenanceAtWork Auto Const

Function Fragment_Entry_00(ObjectReference akTargetRef, Actor akActor)
 	     
         ShipTechnicianMenu(akTargetRef)

EndFunction

Function ShipTechnicianMenu(ObjectReference akTargetRef, Int MenuType = 0, Int Button = 0, Bool MenuOpened = True)
  
  While MenuOpened		 			 
		 
		 If Button == -1		 

                 
	 ElseIf MenuType == 0
		    
			ActorValue CheckMaintenanceClass = (QuestSpaceshipSystems as SISA_SpaceshipFuel).SetProperMaitenanceClass()
			SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
			Float MaintenanceValues = PlayerRef.GetValue(CheckMaintenanceClass)
            Float MaintenanceValuesMax = PlayerRef.GetBaseValue(CheckMaintenanceClass)
			
			(QuestSpaceshipSystems as SISA_SpaceshipFuel).CalculateFuelCost()			   
            (QuestSpaceshipSystems as SISA_SpaceshipFuel).CalculateRepairCost()			
			Utility.Wait(0.01)
			Button = MSG_SpaceshipTechnicianMenu.Show(ShipServicesFuelCost.GetValueInt(), ShipServicesRepairCost.GetValueInt(), akShip.GetValue(SpaceshipTotalFuelAmountBase), akShip.GetBaseValue(SpaceshipTotalFuelAmountBase), MaintenanceValues, MaintenanceValuesMax, 0.0, 0.0)	 
                   
				   If Button == 0
	                  
					           If PlayerRef.GetItemCount(Credits) >= ShipServicesFuelCost.GetValueInt() 
					              PlayerRef.RemoveItem(Credits, ShipServicesFuelCost.GetValueInt(), False, None)   
				                  ShipServicesFuelStandby.SetValue(1)
								  (QuestSpaceshipSystems as SISA_SpaceshipFuel).RefuelAtShipService()
				           Else
				                  MSG_SpaceshipTechnicianMenuNotEnoughCredits.Show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0)
				            EndIf			   
			   
			   ElseIf Button == 1 
					  
					       If PlayerRef.GetItemCount(Credits) >= ShipServicesRepairCost.GetValueInt()
					          PlayerRef.RemoveItem(Credits, ShipServicesRepairCost.GetValueInt(), False, None) 				
                              ShipServicesMaintenanceAtWork.SetValue(1)
							  (QuestSpaceshipSystems as SISA_SpaceshipFuel).MaintenanceAtShipService()
				       Else
				              MSG_SpaceshipTechnicianMenuNotEnoughCredits.Show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0)
				        EndIf	
                         			   	   			   
			   ElseIf Button == 2 
				      ; Exit
				      MenuOpened = False
				EndIf
      EndIf

EndWhile
EndFunction