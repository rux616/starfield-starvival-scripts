ScriptName SISA_OxygenAudioFX extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
wwiseevent Property SoundFX_OxygenRestore Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)

	  SoundFX_OxygenRestore.Play(PlayerRef, None, None)

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)

	  SoundFX_OxygenRestore.Play(PlayerRef, None, None)

EndEvent

