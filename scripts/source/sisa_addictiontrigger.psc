ScriptName SISA_AddictionTrigger extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Potion Property Addiction Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      PlayerRef.EquipItem(Addiction, 1, True)
EndEvent
