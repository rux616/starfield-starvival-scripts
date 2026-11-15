Scriptname SISA_TeslaEffects_Deactivate extends ActiveMagicEffect

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)      	  
	  Actor targetActor = akTarget as Actor
	  targetActor.SetUnconscious(True)
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)     
      Actor targetActor = akTarget as Actor
	  targetActor.SetUnconscious(False)
EndEvent   