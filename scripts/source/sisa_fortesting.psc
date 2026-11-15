Scriptname SISA_ForTesting extends ActiveMagicEffect

Actor Property PlayerRef Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)

EndEvent

Event OnTimer(int aiTimerID)                         		 
		 If (aiTimerID == 0) 
	  EndIf
EndEvent