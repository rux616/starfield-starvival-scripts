ScriptName SISA_EnviHazardsSRSENV Extends ObjectReference

Actor Property PlayerRef Auto Const
ActorValue Property AV_AdaptiveAirborne Auto Const
ActorValue Property AV_AdaptiveCorrosive Auto Const
ActorValue Property AV_AdaptiveRadiation Auto Const
ActorValue Property AV_AdaptiveThermal Auto Const
ActorValue Property AV_ENVDamage Auto Const
ActorValue Property AV_Charge Auto Const
Keyword Property KWD_Spacesuit Auto Const mandatory
Keyword Property KWD_SpacesuitAER Auto Const mandatory
WwiseEvent Property SFX_ENVRecharge Auto Const
WwiseEvent Property SFX_Start Auto Const
WwiseEvent Property SFX_Start02 Auto Const
WwiseEvent Property SFX_Start03 Auto Const
WwiseEvent Property SFX_Start04 Auto Const
WwiseEvent Property SFX_BeepSuccess Auto Const
WwiseEvent Property SFX_BeepFail Auto Const
VisualEffect Property VFX_Attach Const Auto 
VisualEffect Property VFX_Attach02 Const Auto 
Effectshader Property ES_Shock Auto Const Mandatory
Message Property MSG_NoSuit Auto Const
Message Property MSG_ENVMenu Auto Const
Message Property MSG_NoCharge Auto Const
Message Property MSG_ENVPODTutorial1 Auto Const
Message Property MSG_ENVPODTutorial2 Auto Const
Message Property MSG_ENVPODTutorial3 Auto Const
Explosion Property EXPLO_Steam Auto Const
GlobalVariable Property GV_ENVIPODTutorialCheck Auto Const

Bool CameraShake = False

InputEnableLayer inputLayer

Event OnActivate(ObjectReference akActionRef)
       If akActionRef == PlayerRef
			If PlayerRef.WornHaskeyword(KWD_Spacesuit) && PlayerRef.WornHaskeyword(KWD_SpacesuitAER)
			   ENVMenu()
	     Else
	           SFX_BeepFail.Play(Self, None, None) 
	           MSG_NoSuit.Show()
	     EndIf 
	EndIf 
EndEvent

Function ENVMenu(Int Button = 0)
	    			
			Float AdaptiveAirborneStatus = PlayerRef.GetValue(AV_AdaptiveAirborne)
			Float AdaptiveCorrosiveStatus = PlayerRef.GetValue(AV_AdaptiveCorrosive)
			Float AdaptiveRadiationStatus = PlayerRef.GetValue(AV_AdaptiveRadiation)
			Float AdaptiveThermalStatus = PlayerRef.GetValue(AV_AdaptiveThermal)
			Float ChargeStatus = PlayerRef.GetValue(AV_Charge)
							 
			Float ChargeCostAirborn = (100 - AdaptiveAirborneStatus) * 0.12
			Float ChargeCostCorrosive = (100 - AdaptiveCorrosiveStatus) * 0.12
			Float ChargeCostRadiation = (100 - AdaptiveRadiationStatus) * 0.12
			Float ChargeCostThermal = (100 - AdaptiveThermalStatus) * 0.12							 
			Float FinaChargeCost = 0.0
			
			   If AdaptiveAirborneStatus >= 100.0 && AdaptiveCorrosiveStatus >= 100.0 && AdaptiveRadiationStatus >= 100.0 && AdaptiveThermalStatus >= 100.0
			      FinaChargeCost = 0.0
			Else
			      FinaChargeCost = ChargeCostAirborn + ChargeCostCorrosive + ChargeCostRadiation + ChargeCostThermal			   
			EndIf
			
			Button = MSG_ENVMenu.Show(AdaptiveAirborneStatus, AdaptiveCorrosiveStatus, AdaptiveRadiationStatus, AdaptiveThermalStatus, ChargeStatus, FinaChargeCost)	 	
	               
				   If Button == 0

							 If AdaptiveAirborneStatus >= 100.0 && AdaptiveCorrosiveStatus >= 100.0 && AdaptiveRadiationStatus >= 100.0 && AdaptiveThermalStatus >= 100.0
							    ENVMenu()
								Return
						  EndIf	
                             
							 If PlayerRef.GetValue(AV_Charge) <= 0 || PlayerRef.GetValue(AV_Charge) < FinaChargeCost
							    SFX_BeepFail.Play(Self, None, None) 
							    MSG_NoCharge.Show()
								Return
						  EndIf	 
			                 							 
		                  PlayerRef.DamageValue(AV_Charge, FinaChargeCost)
					      ENVRecharge() 
               			   
			   ElseIf Button == 1
					  ; Exit
				EndIf

EndFunction

Function ENVRecharge()
		 CameraShake = True
         inputLayer = InputEnableLayer.Create()    	 	 	 
         inputLayer.DisablePlayerControls()	  
		 StartTimer(0, 0)
EndFunction

Function ENVRechargeFX()    
		 SFX_ENVRecharge.Play(PlayerRef, None, None)   
		 VFX_Attach.Play(PlayerRef, 1)
EndFunction

Function StartSFX()
	     SFX_BeepSuccess.PlayAndWait(Self, None, None) 
         StartTimer(1, 1)
	     SFX_Start.PlayAndWait(PlayerRef, None, None) 
EndFunction

Function RandomizeStopSFX()

      Int Chance = Utility.RandomInt(0,2) 
	  CameraShake = False
      If Chance == 0
		 SFX_Start02.PlayAndWait(PlayerRef, None, None) 
  ElseIf Chance == 1
		 SFX_Start03.PlayAndWait(PlayerRef, None, None) 
  ElseIf Chance == 2
         SFX_Start04.PlayAndWait(PlayerRef, None, None) 
   EndIf

EndFunction

Function TutorialMenu1(Int Button = 0)	    							  			
			Button = MSG_ENVPODTutorial1.Show()	 		               
				   If Button == 0
                      TutorialMenu2()
				EndIf
EndFunction

Function TutorialMenu2(Int Button = 0)	    							  			
			Button = MSG_ENVPODTutorial2.Show()	 		               
				   If Button == 0
                      TutorialMenu3()
				EndIf
EndFunction

Function TutorialMenu3(Int Button = 0)	    							  			
			Button = MSG_ENVPODTutorial3.Show()	 		               
				   If Button == 0
                      GV_ENVIPODTutorialCheck.SetValue(1)
                      ;Exit
				EndIf
EndFunction

Event OnTimer(int aiTimerID)
	 	  	      
     	     If (aiTimerID == 0) 
				StartSFX()
                RandomizeStopSFX()
                inputLayer.EnablePlayerControls()	
                inputLayer.Delete() 
			    VFX_Attach02.Stop(PlayerRef)
				PlayerRef.Placeatme(EXPLO_Steam, 1, False, false, true, none, none, True)
				PlayerRef.RestoreValue(AV_AdaptiveAirborne, 999)
				PlayerRef.RestoreValue(AV_AdaptiveCorrosive, 999)
				PlayerRef.RestoreValue(AV_AdaptiveRadiation, 999)
				PlayerRef.RestoreValue(AV_AdaptiveThermal, 999)
				PlayerRef.DamageValue(AV_ENVDamage, 6.0)
                Game.ShakeCamera(PlayerRef, 2.50, 1.0)
                Game.ShakeController(0.50, 2.50, 1.0)
                ENVRechargeFX()
     	 
		 ElseIf (aiTimerID == 1) 
                
				If CameraShake == True
				   PlayerRef.Placeatme(EXPLO_Steam, 1, False, false, true, none, none, True)
		           VFX_Attach02.Play(PlayerRef, -1)
                   Game.ShakeCamera(PlayerRef, 0.12, 2)
                   Game.ShakeController(0.03, 0.12, 2)
                   StartTimer(1, 1)
             EndIf		  
		  
		  EndIf

EndEvent

Event OnWorkshopObjectPlaced(ObjectReference akReference)	
      If GV_ENVIPODTutorialCheck.GetValue() == 0
         Utility.Wait(2.0)
		 TutorialMenu1()
   EndIf
EndEvent

Event OnWorkshopObjectRemoved(ObjectReference akReference)      
EndEvent