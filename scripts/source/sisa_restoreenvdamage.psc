ScriptName SISA_RestoreENVDamage extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property ENVDamage Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)

      PlayerRef.RestoreValue(ENVDamage, 999)

EndEvent