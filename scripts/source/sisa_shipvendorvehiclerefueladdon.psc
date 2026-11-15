Scriptname SISA_ShipVendorVehicleRefuelAddon extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_RoverFuel Auto Const
Message Property MSG_RoverFuelInfo Auto Const
Message Property MSG_RoverSpawnMenu Auto Const
Message Property MSG_RoverSpawnNotEnoughCredits Auto Const
GlobalVariable Property GV_ConsumeTimeInterval Auto Const
wwiseevent Property SoundFX_RefuelingStart Auto Const
wwiseevent Property SoundFX_RefuelingEnd Auto Const
Conditionform Property ConditionFormRoverSpawnRestrict Auto Const Mandatory
sq_playershipscript Property SQ_PlayerShip Auto
FormList Property SpaceshipLandingMarkers Auto
MiscObject Property Credits Auto Const
Spell Property SPL_RoverFinder Auto Const
ReferenceAlias Property MyVehicle Auto mandatory
Keyword Property KWD_VehicleKeyword Auto Const mandatory

ObjectReference currentVehicle

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)         
       		 
	     FindVehicle()		 
	     currentVehicle.BlockActivation(True, True)   
	        If PlayerRef.IsInSpace() == False
			            If PlayerRef.GetDistance(currentVehicle) >= 150 && PlayerRef.GetDistance(currentVehicle) <= 270
                           SpawnMenu()
		             EndIf		 
		 EndIf
		 SoundFX_RefuelingStart.PlayAndWait(PlayerRef, None, None)
		 SoundFX_RefuelingEnd.Play(PlayerRef, None, None)		 
		 PlayerRef.RestoreValue(AV_RoverFuel, 9999)
		 currentVehicle.BlockActivation(False, False)
		 MSG_RoverFuelInfo.show(GV_ConsumeTimeInterval.GetValue(), PlayerRef.GetValue(AV_RoverFuel), PlayerRef.GetBaseValue(AV_RoverFuel), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)

EndEvent

Function SpawnMenu(Int MenuType = 0, Int Button = 0)
		 			 
		 If Button == -1		 
     
	 ElseIf MenuType == 0
		    
			ObjectReference markerRef = FindLandingMarker() 			
			Button = MSG_RoverSpawnMenu.Show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0)	 
                   
				   If Button == 0
	                  If PlayerRef.GetItemCount(Credits) >= 1500
					     PlayerRef.RemoveItem(Credits, 1500, False, None)  
					     currentVehicle.Disable(False)
	                     currentVehicle.MoveTo(PlayerRef, -10.0, 0.0, 0.0, True, False)
	                     currentVehicle.Enable(False)   			   
			      Else
			             MSG_RoverSpawnNotEnoughCredits.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
			       EndIf
			   
			   ElseIf Button == 1 
					  If PlayerRef.GetItemCount(Credits) >= 1500
					     PlayerRef.RemoveItem(Credits, 1500, False, None) 
						 currentVehicle.Disable(False)
	                     currentVehicle.MoveTo(markerRef, 0.0, 0.0, 0.0, True, False)
	                     currentVehicle.Enable(False)  						 
			      Else
			             MSG_RoverSpawnNotEnoughCredits.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
			       EndIf			   
			   
			   ElseIf Button == 2 
				      ; Exit
				EndIf
      EndIf

EndFunction

ObjectReference Function FindLandingMarker()
	
	ObjectReference PadlandingMarker = Game.FindClosestReferenceOfAnyTypeInListFromRef(SpaceshipLandingMarkers, playerRef, 500)
    SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()   

	   If PadlandingMarker && akShip.CanLandAtMarker(PadlandingMarker); && !PadlandingMarker.IsFurnitureInUse(False)
		  Return PadlandingMarker
	EndIf
 
EndFunction

Function FindVehicle()
     
	 SPL_RoverFinder.Cast(PlayerRef, None)
     currentVehicle = MyVehicle.GetReference()
	 MyVehicle.ClearAndRefillAlias()
	 MyVehicle.ForceRefTo(currentVehicle)     
	 Utility.Wait(0.100000001)
    
     If !currentVehicle.HasKeyword(KWD_VehicleKeyword)
        currentVehicle = MyVehicle.GetReference()
	    MyVehicle.ClearAndRefillAlias()
	    MyVehicle.ForceRefTo(currentVehicle)  
        Int I = 0
        Int maxLoops = 10
        While currentVehicle == None && I < maxLoops
        currentVehicle = MyVehicle.GetReference()
	    MyVehicle.ClearAndRefillAlias()
	    MyVehicle.ForceRefTo(currentVehicle)  
        Utility.Wait(0.100000001)
        I += 1
        EndWhile
  EndIf
     
EndFunction