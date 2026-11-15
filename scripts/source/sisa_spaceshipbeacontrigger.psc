ScriptName SISA_SpaceshipBeaconTrigger extends ObjectReference

Actor Property PlayerRef Auto Const
Quest Property SpaceshipSystemsQuest Auto

Potion Property EmergencyBeacon Auto Const

Message Property MSG_EmergencyBeaconMain Auto Const
Message Property MSG_EmergencyBeaconHelpIsOnTheWay Auto Const
Message Property MSG_EmergencyBeaconOnlyOnLand Auto Const

GlobalVariable Property GV_RescueTime Auto Const
GlobalVariable Property GV_DepartTime Auto Const
GlobalVariable Property GV_UnlockButton Auto Const
GlobalVariable Property GV_Tutorial02 Auto Const

ObjectReference Property EmergencyResponderREF Auto Const mandatory
ObjectReference Property Helium3StorageREF Auto Const mandatory

Furniture Property ShipLandingMarker Auto Const mandatory

Keyword Property SpaceshipEnabledLandingLink Auto Const mandatory

wwiseevent Property BeaconSoundFX Auto Const

int BeaconSoundInstance = -1

Event OnInit()

	SetAngle(0, 0, GetAngleZ())

      If PlayerRef.IsInSpace() == True || PlayerRef.IsInInterior() == True
         PlayerRef.Additem(EmergencyBeacon, 1, False)
         Disable(False)
 		 Delete()
         MSG_EmergencyBeaconOnlyOnLand.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
   EndIf

EndEvent

Event OnActivate(ObjectReference akActionRef)

    If akActionRef == PlayerRef
       BeaconMenu()
 EndIf

EndEvent

Function BeaconMenu(Int MenuType = 0, Int Button = 0, Bool MenuOpened = True)

  While MenuOpened

	 If Button == -1

 ElseIf MenuType == 0

		                                Float RescueTime = GV_RescueTime.GetValue()

		button = MSG_EmergencyBeaconMain.show(RescueTime, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)

	                                    If (button == 0)

										   GV_UnlockButton.SetValue(0)
                                           StartTimer(RescueTime, 0)
										   MenuOpened = False
                                           BlockActivation(True, True)                                                                                      
                                           BeaconSoundInstance = BeaconSoundFX.Play(Self, None, None)
                                           MSG_EmergencyBeaconHelpIsOnTheWay.show(RescueTime, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	                                ElseIf (button == 1)

                                           PlayerRef.Additem(EmergencyBeacon, 1, False)
                                           Disable(False)
 		                                   Delete()
										   MenuOpened = False

	                                ElseIf (button == 2)

                                           ; Exit
                                           MenuOpened = False
                                           
									 EndIf
                              
  EndIf

EndWhile
EndFunction

Event OnTimer(int aiTimerID)

        SpaceShipReference akShip = EmergencyResponderREF as spaceshipreference

     	     If (aiTimerID == 0)     

                SpawnEmergencyResponderWhileLanded()           		  
                
     	 ElseIf (aiTimerID == 1)     

                DespawnEmergencyResponderWhileLanded()      

     	 ElseIf (aiTimerID == 3)     

                akShip.DisableWithGravJump()  

		  EndIf
	  
EndEvent

Function SpawnEmergencyResponderWhileLanded()

       Float DepartTime = GV_DepartTime.GetValue()       
       SpaceShipReference akShip = EmergencyResponderREF as spaceshipreference
       ObjectReference markerRef = PlaceAtMe(ShipLandingMarker as Form, 1, False, False, True, None, None, True)

       EmergencyResponderREF.Disable(False)
       EmergencyResponderREF.MoveTo(markerRef, 0.0, 0.0, 0.0, True, False)
       EmergencyResponderREF.setlinkedref(markerRef, SpaceshipEnabledLandingLink, True)
       EmergencyResponderREF.Enable(False)
       akShip.EnableWithLanding()
       StartTimer(DepartTime, 1)
	   wwiseevent.StopInstance(BeaconSoundInstance)
       BeaconSoundInstance = -1
       GV_Tutorial02.SetValue(1)

EndFunction

Function DespawnEmergencyResponderWhileLanded()

	Form Helium3Storage = Helium3StorageREF.GetBaseObject()
    SpaceShipReference akShip = EmergencyResponderREF as spaceshipreference

	PlaceAtMe(Helium3Storage, 1, False, False, True, None, None, True)
	akShip.TakeOff()
    StartTimer(25, 3)	
    (SpaceshipSystemsQuest as SISA_SpaceshipFuel).EmergencyCallReset()
    (SpaceshipSystemsQuest as SISA_SpaceshipFuel).TutorialFinishOnLand()
	BlockActivation(False, False) 
    
	PlayerRef.Additem(EmergencyBeacon, 1, False)
    Disable(False)
 	Delete()

EndFunction