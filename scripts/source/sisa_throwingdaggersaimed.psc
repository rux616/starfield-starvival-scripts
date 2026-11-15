ScriptName SISA_ThrowingDaggersAimed extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Spell Property SPL_AimedEffects Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	  SPL_AimedEffects.Cast(PlayerRef, akTarget)
EndEvent