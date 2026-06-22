ScriptName SISA_AddExplosionFX extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Explosion Property ExplosionFX Auto Const

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)    
	  PlayerRef.Placeatme(ExplosionFX, 1, False, false, true, none, none, True)
EndEvent

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)    
	  PlayerRef.Placeatme(ExplosionFX, 1, False, false, true, none, none, True)
EndEvent

