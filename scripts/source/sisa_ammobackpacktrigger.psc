ScriptName SISA_AmmoBackpackTrigger extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ObjectReference Property AmmoBackpack Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      AmmoBackpack.Activate(PlayerRef, False)
EndEvent