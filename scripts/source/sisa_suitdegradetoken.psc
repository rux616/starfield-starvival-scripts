Scriptname SISA_SuitDegradeToken extends ActiveMagicEffect

GlobalVariable Property GV_DebufTokenActive Auto Const

Int Property Int_DebuffToken = 0 Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	  GV_DebufTokenActive.SetValue(Int_DebuffToken)	 
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	  ;GV_DebufTokenActive.SetValue(0)
EndEvent