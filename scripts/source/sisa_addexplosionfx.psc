ScriptName SISA_AddExplosionFX extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
;Explosion Property ExplosionFX Auto Const
wwiseevent Property SFX Auto Const
wwiseevent Property SFX02 Auto Const
wwiseevent Property SFX03 Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)    
	  ;PlayerRef.Placeatme(ExplosionFX, 1, False, false, true, none, none, True)
      SFX02.PlayAndWait(PlayerRef, None, None)
      SFX.Play(PlayerRef, None, None)
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)    
	  ;PlayerRef.Placeatme(ExplosionFX, 1, False, false, true, none, none, True)
      SFX03.PlayAndWait(PlayerRef, None, None)
      SFX.Play(PlayerRef, None, None)
EndEvent



