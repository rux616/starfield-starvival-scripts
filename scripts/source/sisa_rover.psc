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
Message Property MSG_CampGeneratorNoFuel Auto Const
Message Property MSG_CampNotFound Auto Const
Message Property MSG_CampTutorial Auto Const
Message Property MSG_CampTutorial02 Auto Const
Spell Property SPL_RoverFinder Auto Const
Spell Property SPL_RoverFunctions Auto Const
Spell Property SPL_RoverCampingUI Auto Const
Keyword Property KWD_VehicleKeyword Auto Const mandatory
Keyword Property LocTypeOutpost Auto Const mandatory
Keyword Property LocTypeSettlement Auto Const mandatory
Keyword Property KWD_CampObject Auto Const
Keyword Property KWD_CampObject_GeneratorLightStove Auto Const
Keyword Property KWD_CampObject_GeneratorLight01 Auto Const
Keyword Property KWD_CampObject_GeneratorLight02 Auto Const
Keyword Property KWD_CampObject_GeneratorLight03 Auto Const
Keyword Property KWD_CampObject_GeneratorLight04 Auto Const
Keyword Property KWD_CampObject_GeneratorLight05 Auto Const
Keyword Property KWD_CampObject_GeneratorLight06 Auto Const
Keyword Property KWD_CampObject_GeneratorLight07 Auto Const
Keyword Property KWD_CampObject_GeneratorLight08 Auto Const
Keyword Property KWD_CampObject_GeneratorLight09 Auto Const
Keyword Property KWD_CampObject_GeneratorLight10 Auto Const
Keyword Property KWD_CampObject_GeneratorLight11 Auto Const
Keyword Property KWD_CampObject_GeneratorLight12 Auto Const
Keyword Property KWD_CampObject_GeneratorWBArmor Auto Const
Keyword Property KWD_CampObject_GeneratorWBIndust Auto Const
Keyword Property KWD_CampObject_GeneratorWBChem Auto Const
Keyword Property KWD_CampObject_GeneratorWBCooking Auto Const
Keyword Property KWD_CampObject_GeneratorWBResearch Auto Const
Keyword Property KWD_CampObject_GeneratorWBWeapons Auto Const
Keyword Property KWD_CampObject_GeneratorENVShield Auto Const
Keyword Property KWD_CampObject_GeneratorENVShieldPostVolume Auto Const
Keyword Property KWD_CampObject_GeneratorENVShieldSoundTrigger Auto Const
Keyword Property KWD_CampObject_GeneratorENVShieldSound01 Auto Const
Keyword Property KWD_CampObject_GeneratorENVShieldSound02 Auto Const
Keyword Property KWD_CampObject_GeneratorENVShieldSound03 Auto Const
Keyword Property KWD_CampObject_GeneratorSoundFX Auto Const
FormList Property SettlementLocations Auto Const
FormList Property FormList_CampObjects Auto Const
Potion Property POTI_HideRover Auto Const
Potion Property POTI_RoverDeployer Auto Const
ReferenceAlias Property PlayerShip Auto mandatory
ReferenceAlias Property HomeShip Auto Const mandatory
ReferenceAlias Property QST_MyCampLocationAlias Auto
sq_playershipscript Property SQ_PlayerShip Auto
ReferenceAlias Property MyVehicle Auto mandatory
MiscObject Property MSC_VehicleCompartment Auto Const
MiscObject Property MSC_Helium3 Auto Const
MiscObject Property MSC_CampfireSupplies Auto Const
Explosion Property EXPLO_Steam Auto Const
Explosion Property EXPLO_Particle Auto Const
GlobalVariable Property GV_VehicleModule Auto Const
GlobalVariable Property GV_RestrictionMode Auto Const
GlobalVariable Property GV_CargoLimit Auto Const
GlobalVariable Property GV_DeployCamp Auto Const
GlobalVariable Property GV_CampFireIgnited Auto Const
GlobalVariable Property GV_CampGeneratorIsAtWork Auto Const
GlobalVariable Property GV_ENVShieldIsAtWork Auto Const
GlobalVariable Property GV_ENVShieldDistanceThreshold Auto Const
GlobalVariable Property RoverSystems_AdaptiveCampTutorialDone Auto Const
GlobalVariable Property RoverSystems_AdaptiveCampTutorialDone02 Auto Const
GlobalVariable Property RoverSystems_AdaptiveCampTutorialDone03 Auto Const
GlobalVariable Property RoverSystems_AdaptiveCampTutorialDone04 Auto Const
RefCollectionAlias Property CurrentCrew Auto Const mandatory
Static Property Stat_DummyMarker Auto Const
Packin Property PCKN_Camp Auto Const mandatory
EffectShader Property VFX_Camp Auto Const Mandatory
wwiseevent Property SFX_CampDeploy Auto Const
wwiseevent Property SFX_CampPack Auto Const
ObjectReference Property ObjREF_RoverTrunk Auto Const
ObjectReference Property ObjREF_MyCampMarker Auto Const
ObjectReference Property ObjREF_TrackerTrigger Auto Const
Quest Property QST_MyCampLocation Auto
Hazard Property HZRD_CampGeneratorENVShield Auto Const

ObjectReference currentVehicle
ObjectReference Camp
ObjectReference CampHazards
ObjectReference CampGeneratorENVShield
ObjectReference DummmyMarker
ObjectReference TrackerTrigger
ObjectReference MyLinkedRefLightStove
ObjectReference MyLinkedRefLight01
ObjectReference MyLinkedRefLight02
ObjectReference MyLinkedRefLight03
ObjectReference MyLinkedRefLight04
ObjectReference MyLinkedRefLight05
ObjectReference MyLinkedRefLight06
ObjectReference MyLinkedRefLight07
ObjectReference MyLinkedRefLight08
ObjectReference MyLinkedRefLight09
ObjectReference MyLinkedRefLight10
ObjectReference MyLinkedRefLight11
ObjectReference MyLinkedRefLight12
ObjectReference MyLinkedRefWBArmor
ObjectReference MyLinkedRefWBChem
ObjectReference MyLinkedRefWBCooking
ObjectReference MyLinkedRefWBIndust
ObjectReference MyLinkedRefWBResearch
ObjectReference MyLinkedRefWBWeapon
ObjectReference MyLinkedRefENVShield
ObjectReference MyLinkedRefENVShieldPostVolume
ObjectReference MyLinkedRefENVShieldSoundTrigger
ObjectReference MyLinkedRefENVShieldSound01
ObjectReference MyLinkedRefENVShieldSound02
ObjectReference MyLinkedRefENVShieldSound03
ObjectReference MyLinkedRefGeneratorSoundFX
ObjectReference CampGenerator

Bool CampGeneratorIsWorking = False

InputEnableLayer inputLayer

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
        
		RoverSystems_AdaptiveCampTutorialDone.SetValue(0)
		RoverSystems_AdaptiveCampTutorialDone02.SetValue(0)
		RoverSystems_AdaptiveCampTutorialDone03.SetValue(0)
		RoverSystems_AdaptiveCampTutorialDone04.SetValue(0)

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
		 Utility.Wait(1.0)		 
		 If PlayerRef.HasSpell(SPL_RoverFunctions)
		    PlayerRef.RemoveSpell(SPL_RoverFunctions)
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
	 ElseIf (aiTimerID == 2)
	        If CampGeneratorIsWorking == True
		       CampGenerator.RemoveItem(MSC_Helium3, 1, True, None)       
                  If CampGenerator.GetItemCount(MSC_Helium3) <= 0
			         TurnOffGenerator(CampGenerator)
			   EndIf
			   StartTimer(5.0, 2)
	     EndIf
	 ElseIf (aiTimerID == 3)
	        If CampGeneratorIsWorking == True
		       CampGenerator.RemoveItem(MSC_Helium3, 1, True, None)       
			   StartTimer(3.0, 3)
	     EndIf
	 ElseIf (aiTimerID == 4)
            MSG_CampTutorial.Show()
	 ElseIf (aiTimerID == 5)
            MSG_CampTutorial02.Show()
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

Event OnDistanceLessThan(ObjectReference akObj1, ObjectReference akObj2, float afDistance, int aiEventID)
	   If akObj1 == PlayerRef
	      QST_MyCampLocation.SetObjectiveDisplayed(100, False, False)
	      RegisterForDistanceGreaterThanEvent(PlayerRef, DummmyMarker, 50)
   ElseIf akObj2 == PlayerRef
          GV_ENVShieldDistanceThreshold.SetValue(1)
	      RegisterForDistanceGreaterThanEvent(CampGenerator, PlayerRef, 20)
    EndIf
EndEvent

Event OnDistanceGreaterThan(ObjectReference akObj1, ObjectReference akObj2, float afDistance, int aiEventID)
	   If akObj1 == PlayerRef
	      QST_MyCampLocation.SetObjectiveDisplayed(100, True, False)
	      RegisterForDistanceLessThanEvent(PlayerRef, DummmyMarker, 50)  
   ElseIf akObj2 == PlayerRef
          GV_ENVShieldDistanceThreshold.SetValue(0)
	      RegisterForDistanceLessThanEvent(CampGenerator, PlayerRef, 20) 
    EndIf
EndEvent

Function DeployCamp(ObjectReference TargetRef)
      	  
	  FadeToBlack()		
      Utility.Wait(2.1)
	  
	  float[] Offset = new float[3]
      
	  Offset[0] = 0.0
      Offset[1] = 7.0
      Offset[2] = 0.3
	  
	  GV_DeployCamp.SetValue(1)
	  DummmyMarker = TargetRef.Placeatme(Stat_DummyMarker, 1, False, false, true, Offset, none, False)
	  DummmyMarker.SetAngle(0.0, 0.0, TargetRef.GetAngleZ())
	  DummmyMarker.Placeatme(PCKN_Camp, 1, False, false, true, none, none, False)							   							   
	  ObjREF_MyCampMarker.MoveTo(DummmyMarker, 0.0, 0.0, 0.0, True, False)
	  ;TrackerTrigger = TargetRef.Placeatme(ObjREF_TrackerTrigger, 1, False, false, true, Offset, none, False)
	  ;TrackerTrigger.MoveTo(DummmyMarker, 0.0, 0.0, 0.0, True, False) 	  
	  ;TargetRef.MoveTo(ObjREF_RoverMarkerGarage, 0.0, 0.0, 0.0, True, False) 	
	  SFX_CampPack.PlayAndWait(DummmyMarker, None, None)

      FadeFromBlack()
      	  
	  RegisterForDistanceLessThanEvent(PlayerRef, DummmyMarker, 50)      
	  RegisterForDistanceGreaterThanEvent(PlayerRef, DummmyMarker, 50)

	  QST_MyCampLocation.Stop()
	  QST_MyCampLocation.Reset()
	  QST_MyCampLocation.Start()
	  QST_MyCampLocationAlias.ForceRefTo(DummmyMarker)
	  QST_MyCampLocation.SetActive(True)

      Utility.Wait(0.1)
	  If !PlayerRef.HasSpell(SPL_RoverCampingUI)
          PlayerRef.AddSpell(SPL_RoverCampingUI, False)
   EndIf 
	  
	  If RoverSystems_AdaptiveCampTutorialDone.GetValue() == 0
         PlayerRef.Additem(MSC_CampfireSupplies, 1, False)
         PlayerRef.Additem(MSC_Helium3, 50, False)
		 RoverSystems_AdaptiveCampTutorialDone.SetValue(1)
         StartTimer(2, 4)
   EndIf

EndFunction

Function PackCamp(ObjectReference TargetRef)

     If TargetRef.GetDistance(DummmyMarker) > 15	
        MSG_CampNotFound.Show() 
	    Return
  EndIf
	 
	 FadeToBlack()	 	     	 
     Utility.Wait(2.1)	 
	 SFX_CampPack.Play(PlayerRef, None, None)	 
	 
	 If GV_DeployCamp.GetValue() == 1
		GV_DeployCamp.SetValue(0)
  EndIf
     If GV_CampFireIgnited.GetValue() == 1
		GV_CampFireIgnited.SetValue(0)
  EndIf
     If GV_ENVShieldIsAtWork.GetValue() == 1	
	    DisableENVShielding(CampGenerator)    
  EndIf
	
	UnregisterForDistanceEvents(PlayerRef, DummmyMarker) 	
	
	ObjectReference[] campObject = PlayerRef.FindAllReferencesWithKeyword(KWD_CampObject, 50.0)    
	int i = 0
    While i < campObject.Length
		   Camp = campObject[i]
	       Camp.RemoveAllItems(ObjREF_RoverTrunk, False, False)	
		   Camp.Delete()
           i += 1
    EndWhile						   							   

    ObjectReference[] Hazards = PlayerRef.FindAllReferencesOfType(FormList_CampObjects, 50.0)
    Int i2 = 0    
	While i2 < Hazards.Length
            CampHazards = Hazards[i2]
            CampHazards.Delete()
            i2 += 1
    EndWhile
    
    FadeFromBlack()

	QST_MyCampLocation.CompleteAllObjectives()
	QST_MyCampLocation.CompleteQuest()
	QST_MyCampLocation.Stop()
	QST_MyCampLocation.Reset()

      Utility.Wait(0.1)
	  If PlayerRef.HasSpell(SPL_RoverCampingUI)
         PlayerRef.RemoveSpell(SPL_RoverCampingUI)
   EndIf 

EndFunction

Function FadeToBlack()
     
	 inputLayer = InputEnableLayer.Create()    	 	 	 
	 inputLayer.DisablePlayerControls()	 
	 Game.FadeOutGame(true, true, 0, 2.0, true)

EndFunction	

Function FadeFromBlack()
	 
	 inputLayer.EnablePlayerControls()	
	 inputLayer.Delete()     	 
	 Game.FadeOutGame(false, True, 0, 2.0)

EndFunction	

Function TurnOnGenerator(ObjectReference TargetRef)
	   
	   CampGenerator = TargetRef	
          
		  If CampGenerator.GetItemCount(MSC_Helium3) <= 0
	         MSG_CampGeneratorNoFuel.Show()
			 Return
	   EndIf
	   
	   GV_CampGeneratorIsAtWork.SetValue(1)
       CampGeneratorIsWorking = True
	   StartTimer(3.0, 2)	   
	   
	   MyLinkedRefLightStove = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorLightStove)
       MyLinkedRefLight01 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorLight01)
       MyLinkedRefLight02 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorLight02)
       MyLinkedRefLight03 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorLight03)
	   MyLinkedRefLight04 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorLight04)
       MyLinkedRefLight05 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorLight05)
       MyLinkedRefLight06 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorLight06)
       MyLinkedRefLight07 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorLight07)
       MyLinkedRefLight08 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorLight08)
       MyLinkedRefLight09 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorLight09)
       MyLinkedRefLight10 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorLight10)
       MyLinkedRefLight11 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorLight11)
       MyLinkedRefLight12 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorLight12)	

       MyLinkedRefWBArmor = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorWBArmor)
       MyLinkedRefWBIndust = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorWBIndust)
       MyLinkedRefWBChem = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorWBChem)
       MyLinkedRefWBCooking = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorWBCooking)
       MyLinkedRefWBResearch = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorWBResearch)
       MyLinkedRefWBWeapon = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorWBWeapons)
       MyLinkedRefENVShield = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorENVShield)
       MyLinkedRefENVShieldPostVolume = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorENVShieldPostVolume)
       MyLinkedRefENVShieldSoundTrigger = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorENVShieldSoundTrigger)
       MyLinkedRefENVShieldSound01 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorENVShieldSound01)
       MyLinkedRefENVShieldSound02 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorENVShieldSound02)
       MyLinkedRefENVShieldSound03 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorENVShieldSound03)
       MyLinkedRefGeneratorSoundFX = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorSoundFX)
       
	   MyLinkedRefLightStove.EnableNoWait()
       MyLinkedRefLight01.EnableNoWait()
       MyLinkedRefLight02.EnableNoWait()
       MyLinkedRefLight03.EnableNoWait()
	   MyLinkedRefLight04.EnableNoWait()
       MyLinkedRefLight05.EnableNoWait()
       MyLinkedRefLight06.EnableNoWait()
       MyLinkedRefLight07.EnableNoWait()
       MyLinkedRefLight08.EnableNoWait()
       MyLinkedRefLight09.EnableNoWait()
       MyLinkedRefLight10.EnableNoWait()
       MyLinkedRefLight11.EnableNoWait()
       MyLinkedRefLight12.EnableNoWait()
	   MyLinkedRefGeneratorSoundFX.Enable()

	   MyLinkedRefWBArmor.BlockActivation(False, False)
       MyLinkedRefWBIndust.BlockActivation(False, False)
       MyLinkedRefWBChem.BlockActivation(False, False)
       MyLinkedRefWBCooking.BlockActivation(False, False)
       MyLinkedRefWBResearch.BlockActivation(False, False)
       MyLinkedRefWBWeapon.BlockActivation(False, False)

	  If RoverSystems_AdaptiveCampTutorialDone02.GetValue() == 0
		 RoverSystems_AdaptiveCampTutorialDone02.SetValue(1)
         StartTimer(2, 5)
   EndIf

EndFunction

Function TurnOffGenerator(ObjectReference TargetRef)
	   
	   CampGenerator = TargetRef	
	   GV_CampGeneratorIsAtWork.SetValue(0)
       CancelTimer(2)
       CampGeneratorIsWorking = False	     
       
	   DisableENVShielding(CampGenerator)
	   
	   MyLinkedRefLightStove = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorLightStove)
       MyLinkedRefLight01 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorLight01)
       MyLinkedRefLight02 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorLight02)
       MyLinkedRefLight03 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorLight03)					   							   
	   MyLinkedRefLight04 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorLight04)
       MyLinkedRefLight05 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorLight05)
       MyLinkedRefLight06 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorLight06)
       MyLinkedRefLight07 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorLight07)	
       MyLinkedRefLight08 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorLight08)
       MyLinkedRefLight09 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorLight09)
       MyLinkedRefLight10 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorLight10)	
       MyLinkedRefLight11 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorLight11)
       MyLinkedRefLight12 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorLight12)	
       MyLinkedRefENVShield = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorENVShield)
       MyLinkedRefENVShieldPostVolume = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorENVShieldPostVolume)
       MyLinkedRefENVShieldSoundTrigger = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorENVShieldSoundTrigger)
       MyLinkedRefENVShieldSound01 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorENVShieldSound01)
       MyLinkedRefENVShieldSound02 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorENVShieldSound02)
       MyLinkedRefENVShieldSound03 = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorENVShieldSound03)
       MyLinkedRefGeneratorSoundFX = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorSoundFX)

       MyLinkedRefWBArmor = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorWBArmor)
       MyLinkedRefWBIndust = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorWBIndust)
       MyLinkedRefWBChem = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorWBChem)
       MyLinkedRefWBCooking = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorWBCooking)
       MyLinkedRefWBResearch = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorWBResearch)
       MyLinkedRefWBWeapon = TargetRef.GetLinkedRef(KWD_CampObject_GeneratorWBWeapons)

       MyLinkedRefLightStove.DisableNoWait()
       MyLinkedRefLight01.DisableNoWait()
       MyLinkedRefLight02.DisableNoWait()
       MyLinkedRefLight03.DisableNoWait()
       MyLinkedRefLight04.DisableNoWait()
       MyLinkedRefLight05.DisableNoWait()
       MyLinkedRefLight06.DisableNoWait()
       MyLinkedRefLight07.DisableNoWait()
       MyLinkedRefLight08.DisableNoWait()
       MyLinkedRefLight09.DisableNoWait()
       MyLinkedRefLight10.DisableNoWait()
       MyLinkedRefLight11.DisableNoWait()
       MyLinkedRefLight12.DisableNoWait()
	   MyLinkedRefGeneratorSoundFX.Disable()
	   
	   MyLinkedRefWBArmor.BlockActivation(True, True)
       MyLinkedRefWBIndust.BlockActivation(True, True)
       MyLinkedRefWBChem.BlockActivation(True, True)
       MyLinkedRefWBCooking.BlockActivation(True, True)
       MyLinkedRefWBResearch.BlockActivation(True, True)
       MyLinkedRefWBWeapon.BlockActivation(True, True)

EndFunction

Function ActivateENVShielding(ObjectReference TargetRef)
	        
	        RegisterForDistanceLessThanEvent(CampGenerator, PlayerRef, 20)      
	        RegisterForDistanceGreaterThanEvent(CampGenerator, PlayerRef, 20)
            
			GV_ENVShieldIsAtWork.SetValue(1)
            ;CampGeneratorENVShield = TargetRef.Placeatme(HZRD_CampGeneratorENVShield, 1, False, false, true, None, none, False)
            MyLinkedRefENVShield.EnableNoWait()
            MyLinkedRefENVShieldPostVolume.EnableNoWait()
	        MyLinkedRefENVShieldSoundTrigger.EnableNoWait()
	        MyLinkedRefENVShieldSound01.EnableNoWait()
	        MyLinkedRefENVShieldSound02.EnableNoWait()
	        MyLinkedRefENVShieldSound03.EnableNoWait()

            StartTimer(3.0, 3)
EndFunction

Function DisableENVShielding(ObjectReference TargetRef)
	        
			UnregisterForDistanceEvents(PlayerRef, CampGenerator) 
            GV_ENVShieldDistanceThreshold.SetValue(0)
			GV_ENVShieldIsAtWork.SetValue(0)
            ;CampGeneratorENVShield.Delete()
            MyLinkedRefENVShield.DisableNoWait()
            MyLinkedRefENVShieldPostVolume.DisableNoWait()
	        MyLinkedRefENVShieldSoundTrigger.DisableNoWait()
	        MyLinkedRefENVShieldSound01.DisableNoWait()
	        MyLinkedRefENVShieldSound02.DisableNoWait()
	        MyLinkedRefENVShieldSound03.DisableNoWait()
            CancelTimer(3)
EndFunction