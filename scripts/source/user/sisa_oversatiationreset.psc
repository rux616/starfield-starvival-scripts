ScriptName SISA_OversatiationReset extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Perk Property Reset Auto Const

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)

	  PlayerRef.RemovePerk(Reset)

EndEvent