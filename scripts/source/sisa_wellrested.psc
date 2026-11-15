ScriptName SISA_WellRested extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Armor Property WellRestedToken Auto Const

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      PlayerRef.Removeitem(WellRestedToken, 9999, True, None)
EndEvent

