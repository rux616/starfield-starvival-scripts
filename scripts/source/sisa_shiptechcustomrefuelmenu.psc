ScriptName SISA_ShipTechCustomRefuelMenu Extends TopicInfo

Quest Property QuestSpaceshipSystems Auto Const
Actor Property PlayerRef Auto Const
ActorValue Property SpaceshipTotalFuelAmountBase Auto Const
Message Property MSG_SpaceshipTechnicianMenu Auto Const
Message Property MSG_SpaceshipTechnicianMenuNotEnoughCredits Auto Const
sq_playershipscript Property SQ_PlayerShip Auto Const mandatory
MiscObject Property Credits Auto Const

GlobalVariable Property ShipServicesFuelCost Auto Const
GlobalVariable Property ShipServicesFuelStandby Auto Const

Event OnEnd(ObjectReference akSpeakerRef, bool abHasBeenSaid)
	  ShipTechnicianMenu()
endEvent

Function ShipTechnicianMenu(Int MenuType = 0, Int Button = 0, Bool MenuOpened = True)
  
  While MenuOpened		 			 
		 
		 If Button == -1		 

                 
	 ElseIf MenuType == 0
		    
			SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
			Float FuelTankAmount = akShip.GetBaseValue(SpaceshipTotalFuelAmountBase)                               
			Float TotalFuelInTheTank = akShip.GetValue(SpaceshipTotalFuelAmountBase)
			Float CalculateFuel = TotalFuelInTheTank / FuelTankAmount * 100
			(QuestSpaceshipSystems as SISA_SpaceshipFuel).CalculateFuelCost()			
			Utility.Wait(0.05)
			Button = MSG_SpaceshipTechnicianMenu.Show(ShipServicesFuelCost.GetValueInt(), CalculateFuel, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)	 
                   				   
				   If Button == 0	                  
					           If PlayerRef.GetItemCount(Credits) >= ShipServicesFuelCost.GetValueInt() 
					              PlayerRef.RemoveItem(Credits, ShipServicesFuelCost.GetValueInt(), False, None)   
				                  ShipServicesFuelStandby.SetValue(1)
								  MenuOpened = False
								  (QuestSpaceshipSystems as SISA_SpaceshipFuel).RefuelAtShipService()
				           Else
				                  MSG_SpaceshipTechnicianMenuNotEnoughCredits.Show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
				            EndIf			   
			   			   			  	   			   
			   ElseIf Button == 1 
				      ; Exit
				      MenuOpened = False
				EndIf
      EndIf

EndWhile
EndFunction