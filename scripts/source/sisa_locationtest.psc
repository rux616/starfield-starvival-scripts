ScriptName SISA_LocationTest extends ActiveMagicEffect

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      Debug.Notification("OUTPOST FOUND")
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      Debug.Notification("OUTPOST NOT FOUND")
EndEvent

