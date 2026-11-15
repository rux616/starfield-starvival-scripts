Scriptname SISA_WeaponDegrade_Jam extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_DegradeLevel Auto Const
Idle Property Idle_Interrupt Mandatory Auto Const
String Property AnimEvent Auto Const
Spell Property SPL_Stagger Auto Const
GlobalVariable Property GV_JamStagger Auto Const
GlobalVariable Property GV_JamActive Auto Const
Explosion Property EXPLO_BoomBoom Auto Const

Int Property Int_ChanceToJam = 0 Auto Const
Int Property Int_ChanceToExplode = 0 Auto Const
Int Property Int_JamActive = 0 Auto Const
Float Property FLT_CooldownTime = 0.0 Auto Const
Bool Cooldown = False

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	  RegisterForAnimationEvent(PlayerRef, AnimEvent) 
	  GV_JamActive.SetValue(Int_JamActive)
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	  Cooldown = False
	  CancelTimer(0)
	  UnregisterForAnimationEvent(PlayerRef, AnimEvent) 
EndEvent

Event OnAnimationEvent(ObjectReference akSource, string asEventName)
     	 
     If(asEventName == AnimEvent)		        
		           
		  If PlayerRef.GetValue(AV_DegradeLevel) <= 0.0       			 					 
			 PlayerRef.PlayIdle(Idle_Interrupt)     
	         Return
	   EndIf
		  
		  If Cooldown == False		     	         	      
		             
					 Int ChanceToStagger = Utility.RandomInt(0, 100)
					 Int ChanceToExplode = Utility.RandomInt(1, 100)
		             Int RandomStaggerAmount = Utility.RandomInt(0, 100)			         
					 
					 If ChanceToStagger <= Int_ChanceToJam
                        Cooldown = True
						StartTimer(FLT_CooldownTime, 0)
						SPL_Stagger.Cast(PlayerRef, PlayerRef)				        
		  				Utility.Wait(1.0)
		  				PlayerRef.PlayIdle(Idle_Interrupt)						           								   

								   If ChanceToExplode <= Int_ChanceToExplode						               
                                      Weapon currentWeapon = PlayerRef.GetEquippedWeapon()
                                      ;PlayerRef.UnequipItem(current)
									  PlayerRef.DropObject(currentWeapon, 1)
									  PlayerRef.DamageValue(AV_DegradeLevel, 5.0)
									  PlayerRef.Placeatme(EXPLO_BoomBoom, 1, False, false, true, none, none, True)
					            EndIf			   
								   
								   If RandomStaggerAmount <= 25
						              GV_JamStagger.SetValue(2)						 
				               ElseIf RandomStaggerAmount > 25 && RandomStaggerAmount <= 50
						              GV_JamStagger.SetValue(3)
				               ElseIf RandomStaggerAmount > 50 && RandomStaggerAmount <= 75
						              GV_JamStagger.SetValue(4)
				               ElseIf RandomStaggerAmount > 75 && RandomStaggerAmount <= 100
						              GV_JamStagger.SetValue(5)
				                EndIf
				  EndIf
       EndIf
  
  EndIf

EndEvent

Event OnTimer(int aiTimerID)
 
     	     If (aiTimerID == 0)  
				Cooldown = False
		  EndIf
		  
EndEvent	