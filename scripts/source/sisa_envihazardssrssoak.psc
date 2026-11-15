ScriptName SISA_EnviHazardsSRSSoak Extends ObjectReference

Actor Property PlayerRef Auto Const
ActorValue Property AV_SOAK Auto Const
ActorValue Property AV_Charge Auto Const
ActorValue Property AV_ENVDamage Auto Const
Keyword Property KWD_Spacesuit Auto Const mandatory
WwiseEvent Property SFX_SoakReplenish Auto Const
WwiseEvent Property SFX_Start Auto Const
WwiseEvent Property SFX_Start02 Auto Const
WwiseEvent Property SFX_Start03 Auto Const
WwiseEvent Property SFX_Start04 Auto Const
WwiseEvent Property SFX_BeepSuccess Auto Const
WwiseEvent Property SFX_BeepFail Auto Const
Message Property MSG_NoSuit Auto Const
Message Property MSG_SOAKMenu Auto Const
Message Property MSG_NoCharge Auto Const
Spell Property SPL_EndingFX Auto Const
Spell Property SPL_AtWorkFX Auto Const
Explosion Property EXPLO_Steam Auto Const

Bool CameraShake = False

InputEnableLayer inputLayer

Event OnActivate(ObjectReference akActionRef)
       If akActionRef == PlayerRef
			If PlayerRef.WornHaskeyword(KWD_Spacesuit)
               SOAKMenu()
	    Else
	           SFX_BeepFail.Play(Self, None, None) 
	           MSG_NoSuit.Show()
	     EndIf
	EndIf 
EndEvent

Function SOAKMenu(Int Button = 0)
	    			
			Float SOAKStatus = PlayerRef.GetValue(AV_SOAK)			
			Float ChargeStatus = PlayerRef.GetValue(AV_Charge)
							 
			Float ChargeCostSOAK = (100 - SOAKStatus) * 0.18				
			Float FinaChargeCost = 0.0

			   If PlayerRef.GetValue(AV_SOAK) >= 100.0 
			      FinaChargeCost = 0.0
			Else
			      FinaChargeCost = ChargeCostSOAK				   
			EndIf
				  			
			Button = MSG_SOAKMenu.Show(SOAKStatus, ChargeStatus, FinaChargeCost)	 	
	               
				   If Button == 0

							 If SOAKStatus >= 100.0 
							    SOAKMenu()
								Return
						  EndIf	 
                             
							 If PlayerRef.GetValue(AV_Charge) <= 0 || PlayerRef.GetValue(AV_Charge) < FinaChargeCost
							    SFX_BeepFail.Play(Self, None, None) 
							    MSG_NoCharge.Show()
								Return
						  EndIf	 
			              
						  PlayerRef.DamageValue(AV_Charge, FinaChargeCost)
						  SoakReplenish()     							 
                 			   
			   ElseIf Button == 1
					  ; Exit
				EndIf

EndFunction

Function SoakReplenish()
		 CameraShake = True
         inputLayer = InputEnableLayer.Create()    	 	 	 
         inputLayer.DisablePlayerControls()	
		 StartTimer(0, 0)
EndFunction

Function SoakReplenishFX()    
		 SFX_SoakReplenish.Play(PlayerRef, None, None)   
		 PlayerRef.DispelSpell(SPL_AtWorkFX)
		 SPL_EndingFX.Cast(PlayerRef, PlayerRef)
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

Event OnTimer(int aiTimerID)
	 	  	      
     	     If (aiTimerID == 0) 
				StartSFX()
                RandomizeStopSFX()
                inputLayer.EnablePlayerControls()	
                inputLayer.Delete() 
				PlayerRef.Placeatme(EXPLO_Steam, 1, False, false, true, none, none, True)
				PlayerRef.RestoreValue(AV_SOAK, 999)
				PlayerRef.DamageValue(AV_ENVDamage, 3.0)
                Game.ShakeCamera(PlayerRef, 2.50, 1.0)
                Game.ShakeController(0.50, 2.50, 1.0)
                SoakReplenishFX()
     	 
		 ElseIf (aiTimerID == 1) 
                
				If CameraShake == True
                   SPL_AtWorkFX.Cast(PlayerRef, PlayerRef)
				   PlayerRef.Placeatme(EXPLO_Steam, 1, False, false, true, none, none, True)
				   Game.ShakeCamera(PlayerRef, 0.12, 2)
                   Game.ShakeController(0.03, 0.12, 2)
                   StartTimer(1, 1)
             EndIf		  
		  
		  EndIf

EndEvent

Event OnWorkshopObjectRemoved(ObjectReference akReference)      
EndEvent