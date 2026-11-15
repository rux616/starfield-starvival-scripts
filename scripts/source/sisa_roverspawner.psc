ScriptName SISA_RoverSpawner extends ObjectReference

Actor Property PlayerRef Auto Const
ActorValue Property AV_RoverMaintenance Auto Const
ActorValue Property AV_Cargo Auto Const
ActorValue Property AV_VehicleStorage Auto Const
Weapon Property WPN_RoverSpawnGrenade Auto Const
Message Property MSG_SpawnAbort Auto Const
Message Property MSG_SpawnAbortNoVehicleModule Auto Const
Message Property MSG_SpawnAbortNotEnoughSpace Auto Const
Message Property MSG_LowSignal Auto Const
Effectshader Property ES_FireMembrane Auto Const Mandatory
Explosion Property EXPLO_SpawnExplosion Auto Const
Spell Property SPL_RoverFinder Auto Const
Keyword Property KWD_VehicleKeyword Auto Const mandatory
ReferenceAlias Property MyVehicle Auto mandatory
MiscObject Property MSC_VehicleCompartment Auto Const
sq_playershipscript Property SQ_PlayerShip Auto
GlobalVariable Property GV_RestrictionMode Auto Const
GlobalVariable Property GV_CargoLimit Auto Const
RefCollectionAlias Property CurrentCrew Auto Const mandatory
Perk Property CrewPayloadsPerk Auto Const
Conditionform Property CFRoverSystemsRank3Specific Auto Const Mandatory

ObjectReference currentVehicle

Event OnInit()
	
	  SetAngle(0, 0, GetAngleZ())
      MoveTo(self, 0.0, 0.0, 5.0, True, False)
	  spaceshipreference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()   
	  Float RoverWeightForCargo = RoverWeightForShipCargo()	
	  Float CargoLimit = GV_CargoLimit.GetValue() / RoverWeightForCargo
	  Float CheckForPayloads = CheckCrewForPayloads()	
      Float Limit = akShip.GetShipMaxCargoWeight() * CheckForPayloads - akShip.GetWeightInContainer()	  
	  
	  If PlayerRef.IsInSpace() == True || PlayerRef.IsInInterior() == True
         PlayerRef.Additem(WPN_RoverSpawnGrenade, 1, True)
	     MSG_SpawnAbort.Show()
	     Return
   EndIf
      
	  If GV_RestrictionMode.GetValue() == 1     
	          If akShip.GetValue(AV_VehicleStorage) <= 0
                 PlayerRef.Additem(WPN_RoverSpawnGrenade, 1, True)
	             MSG_SpawnAbortNoVehicleModule.Show()	  
                 Return 
          ElseIf akShip.GetValue(AV_VehicleStorage) >= 1		               
			    If akShip.GetWeightInContainer() > akShip.GetShipMaxCargoWeight() * CheckForPayloads
			       PlayerRef.Additem(WPN_RoverSpawnGrenade, 1, True)
			       MSG_SpawnAbortNotEnoughSpace.Show()
			       Return   
		    ElseIf Limit < CargoLimit
			       PlayerRef.Additem(WPN_RoverSpawnGrenade, 1, True)
			       MSG_SpawnAbortNotEnoughSpace.Show()
			       Return   
             EndIf
           EndIf
  ElseIf GV_RestrictionMode.GetValue() == 2   
			    If akShip.GetWeightInContainer() > akShip.GetShipMaxCargoWeight() * CheckForPayloads
			       PlayerRef.Additem(WPN_RoverSpawnGrenade, 1, True)
			       MSG_SpawnAbortNotEnoughSpace.Show()
			       Return   
		    ElseIf Limit < CargoLimit
			       PlayerRef.Additem(WPN_RoverSpawnGrenade, 1, True)
			       MSG_SpawnAbortNotEnoughSpace.Show()
			       Return   
              EndIf
  ElseIf GV_RestrictionMode.GetValue() == 0   
	          If akShip.GetValue(AV_VehicleStorage) <= 0
                 PlayerRef.Additem(WPN_RoverSpawnGrenade, 1, True)
	             MSG_SpawnAbortNoVehicleModule.Show()	  
                 Return 
           EndIf
   EndIf  
	  
	     FindVehicleAndSpawn()			 
		 Disable(False)
 		 Delete()         

EndEvent

Float Function RoverWeightForShipCargo()     
	    Float RoverDecreasedWeight = 2.0
	    If CFRoverSystemsRank3Specific.IsTrue(PlayerRef, None) 
           Return RoverDecreasedWeight 
     Else	
           Return 1.0
     EndIf
EndFunction

Function FindVehicleAndSpawn()
     
	 SPL_RoverFinder.Cast(PlayerRef, None)
     currentVehicle = MyVehicle.GetReference()
	 MyVehicle.ClearAndRefillAlias()
	 MyVehicle.ForceRefTo(currentVehicle)     
	 Utility.Wait(0.1)
    
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
        Utility.Wait(0.1)
        I += 1
        EndWhile
  EndIf

	 If PlayerRef.GetDistance(currentVehicle) >= 270
        PlayerRef.Additem(WPN_RoverSpawnGrenade, 1, True)
		MSG_LowSignal.Show()
        Return
  EndIf
         	   		 
		 Utility.Wait(0.5)
		 currentVehicle.Disable(False)
		 currentVehicle.Placeatme(EXPLO_SpawnExplosion, 1, False, false, true, none, none, True)
		 Utility.Wait(0.5)
	     currentVehicle.MoveTo(self, 0.0, 0.0, 0.0, True, False)
		 currentVehicle.Enable(False)
         currentVehicle.Placeatme(EXPLO_SpawnExplosion, 1, False, false, true, none, none, True)	 
		 Utility.Wait(0.1)
			If PlayerRef.GetValue(AV_RoverMaintenance) < 25 
			   ES_FireMembrane.Play(currentVehicle, -1) 	   
		 EndIf
     
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