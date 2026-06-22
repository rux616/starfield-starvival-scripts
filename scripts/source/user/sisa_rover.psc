ScriptName SISA_Rover extends Quest

Actor Property PlayerRef Auto Const
ActorValue Property EnviroDomeCharge Auto Const
ActorValue Property AV_RoverFuel Auto Const
ActorValue Property AV_Cargo Auto Const
ActorValue Property AV_RoverMaintenance Auto Const
ActorValue Property AV_VehicleStorage Auto Const
Perk Property RoverSystemsMenuPerk Auto Const
Perk Property CrewPayloadsPerk Auto Const
Message Property MSG_SpawnAbortNoVehicleModule Auto Const
Message Property MSG_SpawnAbortNotEnoughSpace Auto Const
Message Property MSG_LowSignal Auto Const
Message Property MSG_SpawnAbort Auto Const
Spell Property SPL_RoverFinder Auto Const
Spell Property SPL_RoverFunctions Auto Const
Keyword Property KWD_VehicleKeyword Auto Const mandatory
Keyword Property LocTypeOutpost Auto Const mandatory
Keyword Property LocTypeSettlement Auto Const mandatory
FormList Property SettlementLocations Auto Const
Potion Property POTI_HideRover Auto Const
Potion Property POTI_RoverDeployer Auto Const
ReferenceAlias Property PlayerShip Auto mandatory
ReferenceAlias Property HomeShip Auto Const mandatory
sq_playershipscript Property SQ_PlayerShip Auto
ReferenceAlias Property MyVehicle Auto mandatory
MiscObject Property MSC_VehicleCompartment Auto Const
Explosion Property EXPLO_Steam Auto Const
Explosion Property EXPLO_Particle Auto Const
GlobalVariable Property GV_VehicleModule Auto Const
GlobalVariable Property GV_RestrictionMode Auto Const
GlobalVariable Property GV_CargoLimit Auto Const
RefCollectionAlias Property CurrentCrew Auto Const mandatory

ObjectReference currentVehicle

Function RoverSystemsStart()
     	 Utility.Wait(1.0)		 
		 PlayerRef.AddSpell(SPL_RoverFunctions, False)
		 PlayerRef.AddPerk(RoverSystemsMenuPerk, False)
		 PlayerRef.RestoreValue(EnviroDomeCharge, 999)
		 PlayerRef.RestoreValue(AV_RoverFuel, 999)
		 PlayerRef.RestoreValue(AV_RoverMaintenance, 999)    				  
         
		 RegisterForRemoteEvent(PlayerShip, "OnLocationChange") 
         RegisterForRemoteEvent(PlayerRef, "OnExitShipInterior")  
         RegisterForRemoteEvent(PlayerRef, "OnHomeShipSet")

		 If PlayerRef.GetItemCount(POTI_RoverDeployer) <= 0
		    PlayerRef.Additem(POTI_RoverDeployer, 1, False)
      EndIf

EndFunction

Function RoverSystemsStop()
		 
		 PlayerRef.RemoveSpell(SPL_RoverFunctions)		 
		 PlayerRef.Removeperk(RoverSystemsMenuPerk)
		 PlayerRef.DamageValue(EnviroDomeCharge, 999)
		 PlayerRef.DamageValue(AV_RoverFuel, 999)
		 PlayerRef.DamageValue(AV_RoverMaintenance, 999)
		          
		 UnregisterForRemoteEvent(PlayerShip, "OnLocationChange") 
         UnregisterForRemoteEvent(PlayerRef, "OnExitShipInterior")  
         UnregisterForRemoteEvent(PlayerRef, "OnHomeShipSet") 	 

		 If PlayerRef.GetItemCount(POTI_RoverDeployer) > 0
		    PlayerRef.RemoveItem(POTI_RoverDeployer, 999, True, None)
      EndIf

EndFunction

Function RestrictedDeployStart()
  				           
		 RegisterForRemoteEvent(PlayerShip, "OnLocationChange") 
         RegisterForRemoteEvent(PlayerRef, "OnExitShipInterior")  
         RegisterForRemoteEvent(PlayerRef, "OnHomeShipSet")
         
		 GV_VehicleModule.SetValue(2)
         
		 If PlayerRef.GetItemCount(POTI_RoverDeployer) <= 0
		    PlayerRef.Additem(POTI_RoverDeployer, 1, False)
      EndIf

EndFunction

Function RestrictedDeployStop()
		 		          
		 UnregisterForRemoteEvent(PlayerShip, "OnLocationChange") 
         UnregisterForRemoteEvent(PlayerRef, "OnExitShipInterior")  
         UnregisterForRemoteEvent(PlayerRef, "OnHomeShipSet")  
         
		 GV_VehicleModule.SetValue(2)
		 
		 If PlayerRef.GetItemCount(POTI_RoverDeployer) > 0
		    PlayerRef.RemoveItem(POTI_RoverDeployer, 999, True, None)
      EndIf
         
		 FindAndUnhide()

EndFunction

Function Update() 
         
		 UnregisterForRemoteEvent(PlayerShip, "OnShipLanding")          
         UnregisterForRemoteEvent(PlayerRef, "OnPlayerModifiedShip")
         UnregisterForMenuOpenCloseEvent("SpaceshipEditorMenu")
		 RegisterForRemoteEvent(PlayerShip, "OnLocationChange") 
         RegisterForRemoteEvent(PlayerRef, "OnExitShipInterior")  
         RegisterForRemoteEvent(PlayerRef, "OnHomeShipSet")         

		 If PlayerRef.GetItemCount(POTI_RoverDeployer) <= 0
		    PlayerRef.Additem(POTI_RoverDeployer, 1, False)
      EndIf
     	 
		 Utility.Wait(1.0)		 
		 If !PlayerRef.HasSpell(SPL_RoverFunctions)
		    PlayerRef.AddSpell(SPL_RoverFunctions, False)
      EndIf

EndFunction

Function DeployRoverFromDevice() 
	  
	  spaceshipreference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()          
	  Float CargoLimit = GV_CargoLimit.GetValue()
	  Float CheckForPayloads = CheckCrewForPayloads()	
      Float Limit = akShip.GetShipMaxCargoWeight() * CheckForPayloads - akShip.GetWeightInContainer()
	  
	  If GV_RestrictionMode.GetValue() == 1     
	          If akShip.GetValue(AV_VehicleStorage) <= 0
	             MSG_SpawnAbortNoVehicleModule.Show()	  
                 Return 
          ElseIf akShip.GetValue(AV_VehicleStorage) >= 1	               

                  If akShip.GetWeightInContainer() > akShip.GetShipMaxCargoWeight() * CheckForPayloads
			         MSG_SpawnAbortNotEnoughSpace.Show()
			         Return  			
		      ElseIf Limit < CargoLimit
			         MSG_SpawnAbortNotEnoughSpace.Show()
			         Return   
               EndIf
           EndIf
  ElseIf GV_RestrictionMode.GetValue() == 2   
                  If akShip.GetWeightInContainer() > akShip.GetShipMaxCargoWeight() * CheckForPayloads		    
			         MSG_SpawnAbortNotEnoughSpace.Show()
			         Return  			
			  ElseIf Limit < CargoLimit
			         MSG_SpawnAbortNotEnoughSpace.Show()
			         Return   
               EndIf
  ElseIf GV_RestrictionMode.GetValue() == 0   
	          If akShip.GetValue(AV_VehicleStorage) <= 0
	             MSG_SpawnAbortNoVehicleModule.Show()	  
                 Return 
           EndIf
   EndIf
	       
	  If PlayerRef.IsInSpace() == True || PlayerRef.IsInInterior() == True
	     MSG_SpawnAbort.Show()
	     Return
   EndIf

	  If !IsLocationSettled(PlayerRef.GetCurrentLocation())
	      	  If PlayerRef.GetDistance(akShip) <= 50.0
                 FindAndUnhideFromDevice()
          Else
                 MSG_LowSignal.Show()
           EndIf 
   EndIf
   
EndFunction

Function FindAndHide() 
	 
	 SPL_RoverFinder.Cast(PlayerRef, None)
     currentVehicle = MyVehicle.GetReference()
	 MyVehicle.ClearAndRefillAlias()
	 MyVehicle.ForceRefTo(currentVehicle)     
	 Utility.Wait(0.3)
    
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
        Utility.Wait(0.3)
        I += 1
        EndWhile
  EndIf
		 
		currentVehicle.Placeatme(EXPLO_Steam, 1, False, False, True, None, None, True)
		currentVehicle.Disable(False)

EndFunction

Function FindAndUnhide() 
	 
	 SPL_RoverFinder.Cast(PlayerRef, None)
     currentVehicle = MyVehicle.GetReference()
	 MyVehicle.ClearAndRefillAlias()
	 MyVehicle.ForceRefTo(currentVehicle)     
	 Utility.Wait(0.3)
    
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
        Utility.Wait(0.3)
        I += 1
        EndWhile
  EndIf
		
		currentVehicle.Placeatme(EXPLO_Steam, 1, False, False, True, None, None, True)
		currentVehicle.Enable(False)

EndFunction

Function FindAndUnhideFromDevice() 
	 
	 SPL_RoverFinder.Cast(PlayerRef, None)
     currentVehicle = MyVehicle.GetReference()
	 MyVehicle.ClearAndRefillAlias()
	 MyVehicle.ForceRefTo(currentVehicle)     
	 Utility.Wait(0.3)
    
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
        Utility.Wait(0.3)
        I += 1
        EndWhile
  EndIf
				
		currentVehicle.Disable(False)
		currentVehicle.Placeatme(EXPLO_Particle, 1, False, false, true, none, none, True)
		Utility.Wait(0.5)
		   If PlayerRef.GetDistance(currentVehicle) >= 50.0
		      currentVehicle.MoveTo(PlayerRef, 2.0, 0.0, 0.0, True, False)
        EndIf
        currentVehicle.Placeatme(EXPLO_Particle, 1, False, false, true, none, none, True)
		currentVehicle.Enable(False)
        	 
EndFunction

Event ReferenceAlias.OnLocationChange(ReferenceAlias akSender, Location akOldLoc, Location akNewLoc)
     If akSender == PlayerShip && !PlayerRef.IsInSpace()
		Deployment()
  EndIf
EndEvent

Event Actor.OnHomeShipSet(Actor akSource, spaceshipReference akShip, spaceshipReference akPrevious) 	 
	 If akSource == PlayerRef && !PlayerRef.IsInSpace()
        Deployment()
  EndIf
EndEvent

Event Actor.OnExitShipInterior(Actor akSender, ObjectReference akShip)    	 
	 If akSender == PlayerRef && akShip == SQ_PlayerShip.PlayerShip.GetShipRef() && !PlayerRef.IsInSpace()
        Deployment()
  EndIf
EndEvent

Event OnTimer(int aiTimerID)

         If (aiTimerID == 0) 
			FindAndHide()
     ElseIf (aiTimerID == 1) 
			FindAndUnhide()
	  EndIf

EndEvent

Function Deployment()		 	      
	If !IsLocationSettled(PlayerRef.GetCurrentLocation())
	     If GV_RestrictionMode.GetValue() == 1
	        DeployOrHideFull()
     ElseIf GV_RestrictionMode.GetValue() == 2
	        DeployOrHideCargoLimit()
     ElseIf GV_RestrictionMode.GetValue() == 0
	        DeployOrHideBay()
      EndIf
 EndIf
EndFunction

Function DeployOrHideFull()

				 spaceshipreference ActiveShip = SQ_PlayerShip.PlayerShip.GetShipRef()			     
				 If ActiveShip.GetValue(AV_VehicleStorage) <= 0
					    If !IsLocationSettled(PlayerRef.GetCurrentLocation())
		                   MSG_SpawnAbortNoVehicleModule.Show()
					 EndIf
					StartTimer(0.1, 0)
			 ElseIf ActiveShip.GetValue(AV_VehicleStorage) >= 1
			           Float CheckForPayloads = CheckCrewForPayloads()	
                       Float Limit = ActiveShip.GetShipMaxCargoWeight() * CheckForPayloads - ActiveShip.GetWeightInContainer()
					   Float CargoLimit = GV_CargoLimit.GetValue()
					   If ActiveShip.GetWeightInContainer() > ActiveShip.GetShipMaxCargoWeight() * CheckForPayloads
					         If !IsLocationSettled(PlayerRef.GetCurrentLocation())
						        MSG_SpawnAbortNotEnoughSpace.Show()
					      EndIf
					      StartTimer(0.1, 0)
				   ElseIf Limit < CargoLimit
					         If !IsLocationSettled(PlayerRef.GetCurrentLocation())
						        MSG_SpawnAbortNotEnoughSpace.Show()
					      EndIf
						  StartTimer(0.1, 0)
			        Else
					      StartTimer(0.1, 1)
				    EndIf
			  EndIf

EndFunction

Function DeployOrHideCargoLimit()

			spaceshipreference ActiveShip = SQ_PlayerShip.PlayerShip.GetShipRef()			     
			Float CheckForPayloads = CheckCrewForPayloads()	
            Float Limit = ActiveShip.GetShipMaxCargoWeight() * CheckForPayloads - ActiveShip.GetWeightInContainer()
			Float CargoLimit = GV_CargoLimit.GetValue()
				If ActiveShip.GetWeightInContainer() > ActiveShip.GetShipMaxCargoWeight() * CheckForPayloads
					  If !IsLocationSettled(PlayerRef.GetCurrentLocation())
						 MSG_SpawnAbortNotEnoughSpace.Show()
				   EndIf
				   StartTimer(0.1, 0)
			ElseIf Limit < CargoLimit
					  If !IsLocationSettled(PlayerRef.GetCurrentLocation())
						  MSG_SpawnAbortNotEnoughSpace.Show()
				   EndIf
				   StartTimer(0.1, 0)
			 Else
				   StartTimer(0.1, 1)
			 EndIf

EndFunction

Function DeployOrHideBay()

				 spaceshipreference ActiveShip = SQ_PlayerShip.PlayerShip.GetShipRef()			     
				 If ActiveShip.GetValue(AV_VehicleStorage) <= 0
					   If !IsLocationSettled(PlayerRef.GetCurrentLocation())
		                  MSG_SpawnAbortNoVehicleModule.Show()
					EndIf
					StartTimer(0.1, 0)
			 ElseIf ActiveShip.GetValue(AV_VehicleStorage) >= 1
					StartTimer(0.1, 1)
			  EndIf

EndFunction

Bool Function IsLocationSettled(Location akLocation)
     If akLocation.HasKeyword(LocTypeSettlement) || akLocation.HasKeyword(LocTypeOutpost)
        Return True
  EndIf
  Return False
EndFunction

Float Function CheckCrewForPayloads()
		
	int i = 0    
	While i < CurrentCrew.GetCount()
        Actor Payloads = CurrentCrew.GetAt(i) as Actor
           If Payloads && Payloads.HasPerk(CrewPayloadsPerk) 								      					   
              Return 1.10 					   							   	
		EndIf
        i += 1
    EndWhile							      					   
    Return 1.0							   							   

EndFunction