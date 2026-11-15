ScriptName SISA_EnviHazardRecharger extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_AdaptiveAirborne Auto Const
ActorValue Property AV_AdaptiveCorrosive Auto Const
ActorValue Property AV_AdaptiveRadiation Auto Const
ActorValue Property AV_AdaptiveThermal Auto Const
ActorValue Property AV_ENVDamage Auto Const
Message Property MSG_RechargerMenu Auto Const
Message Property MSG_AERNotfound Auto Const
Potion Property POTI_EnviroRecharger Auto Const
Spell Property SPL_RechargeFX Auto Const
WwiseEvent Property SFX_Recharger Auto Const
ResearchProject Property RSCH_RechargerMK2 Auto Const Mandatory
ResearchProject Property RSCH_RechargerMK3 Auto Const Mandatory
Keyword Property KWD_AER Auto Const

Float Property FLT_ENVDamage = 1.0 Auto
Float Property FLT_ENVDamageMK3 = 1.0 Auto
Bool ResearchProjectComplete = False

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	  If !PlayerRef.Wornhaskeyword(KWD_AER)
	      MSG_AERNotfound.Show()
		  PlayerRef.Additem(POTI_EnviroRecharger, 1, True)
  Else
	      RechargerMenu()
   EndIf
EndEvent

Function Recharge(ActorValue AVAdaptive)

			             If Game.IsResearchComplete(RSCH_RechargerMK2) == 1
			                ResearchProjectComplete = True
			          EndIf
                         
						 If PlayerRef.GetValue(AVAdaptive) >= 100.0   
						    RechargerMenu()
						    Return
				      EndIf
					  PlayerRef.RestoreValue(AVAdaptive, 999)   
						 
						 If ResearchProjectComplete == True            
			                RechargerMenuBonus()
			          Else
			                StartTimer(1, 0)	
					  EndIf	

EndFunction

Function RechargeBonus(ActorValue AVAdaptive)                         
			If PlayerRef.GetValue(AVAdaptive) >= 100.0   
			   RechargerMenuBonus()
			   Return
		 EndIf
		 PlayerRef.RestoreValue(AVAdaptive, 999)  
		 StartTimer(1, 0)	
EndFunction

Function RechargerMenu(Int Button = 0)
	    			
			Float AdaptiveAirborneStatus = PlayerRef.GetValue(AV_AdaptiveAirborne)
			Float AdaptiveCorrosiveStatus = PlayerRef.GetValue(AV_AdaptiveCorrosive)
			Float AdaptiveRadiationStatus = PlayerRef.GetValue(AV_AdaptiveRadiation)
			Float AdaptiveThermalStatus = PlayerRef.GetValue(AV_AdaptiveThermal)
			   
			Button = MSG_RechargerMenu.Show(AdaptiveAirborneStatus, AdaptiveCorrosiveStatus, AdaptiveRadiationStatus, AdaptiveThermalStatus)	 	
	               
				   If Button == 0
                      Recharge(AV_AdaptiveAirborne)	                  
			   ElseIf Button == 1
                      Recharge(AV_AdaptiveCorrosive)
			   ElseIf Button == 2
                      Recharge(AV_AdaptiveRadiation)
			   ElseIf Button == 3
                      Recharge(AV_AdaptiveThermal)
			   ElseIf Button == 4 
					  PlayerRef.Additem(POTI_EnviroRecharger, 1, True)
					  ; Exit
				EndIf

EndFunction

Function RechargerMenuBonus(Int Button = 0)
              	     		 					 			
			Float AdaptiveAirborneStatus = PlayerRef.GetValue(AV_AdaptiveAirborne)
			Float AdaptiveCorrosiveStatus = PlayerRef.GetValue(AV_AdaptiveCorrosive)
			Float AdaptiveRadiationStatus = PlayerRef.GetValue(AV_AdaptiveRadiation)
			Float AdaptiveThermalStatus = PlayerRef.GetValue(AV_AdaptiveThermal)

			Button = MSG_RechargerMenu.Show(AdaptiveAirborneStatus, AdaptiveCorrosiveStatus, AdaptiveRadiationStatus, AdaptiveThermalStatus) 	
	               
				   If Button == 0
                      RechargeBonus(AV_AdaptiveAirborne)	                  
			   ElseIf Button == 1
                      RechargeBonus(AV_AdaptiveCorrosive)
			   ElseIf Button == 2
                      RechargeBonus(AV_AdaptiveRadiation)
			   ElseIf Button == 3
                      RechargeBonus(AV_AdaptiveThermal)
			   ElseIf Button == 4 
			          StartTimer(1, 0)
					  ; Exit
				EndIf

EndFunction

Event OnTimer(int aiTimerID)	 	  	      
     	     If (aiTimerID == 0) 
			       If Game.IsResearchComplete(RSCH_RechargerMK3) == 1
			          PlayerRef.DamageValue(AV_ENVDamage, FLT_ENVDamageMK3) 
			    Else
			          PlayerRef.DamageValue(AV_ENVDamage, FLT_ENVDamage) 
			    EndIf
			    SFX_Recharger.Play(PlayerRef, None, None)   
				SPL_RechargeFX.Cast(PlayerRef, PlayerRef)
		  EndIf
EndEvent

