ScriptName SISA_ThrowingDaggersOnHit extends ActiveMagicEffect

Explosion Property EXPLO_OnHit Auto Const
Float Property FLT_Timer = 1.0 Auto

Actor Target

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	  Target = akTarget as Actor
	  StartTimer(FLT_Timer, 0)
EndEvent

Event OnTimer(int aiTimerID)			 
			 If (aiTimerID == 0)   
                 Target.Placeatme(EXPLO_OnHit, 1, False, false, true, none, none, True)
		  EndIf
EndEvent