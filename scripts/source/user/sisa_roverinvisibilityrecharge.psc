ScriptName SISA_RoverInvisibilityRecharge extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_InvisCharge Auto Const
ObjectReference Property OBJ_RoverTrunk Auto Const
Ammo Property AMMO_InvisCharge Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)      
	  StartTimer(1, 0)
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)      	  
	  CancelTimer(0)     
EndEvent

Event OnTimer(int aiTimerID)

			 If (aiTimerID == 0)   
								  
								  If PlayerRef.GetValue(AV_InvisCharge) <= 0  
									     										 
										 If OBJ_RoverTrunk.GetItemCount(AMMO_InvisCharge) > 0
									        OBJ_RoverTrunk.RemoveItem(AMMO_InvisCharge, 1, True, None)
											PlayerRef.SetValue(AV_InvisCharge, 1) 
											PlayerRef.RestoreValue(AV_InvisCharge, 9999)
									        CancelTimer(0)
							          EndIf
							   Else
								      StartTimer(1, 0)
						       EndIf
		  EndIf

EndEvent