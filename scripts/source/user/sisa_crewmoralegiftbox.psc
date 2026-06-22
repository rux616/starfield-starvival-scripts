ScriptName SISA_CrewMoraleGiftBox extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
LeveledItem Property GiftBoxLoot Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      PlayerRef.Additem(GiftBoxLoot, 3, False)
EndEvent