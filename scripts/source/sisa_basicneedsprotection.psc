ScriptName SISA_BasicNeedsProtection extends ActiveMagicEffect

Quest Property QuestBasicNeeds Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      (QuestBasicNeeds as SISA_BasicNeeds).NeedsPauseTimers()
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      (QuestBasicNeeds as SISA_BasicNeeds).NeedsResumeTimers()
EndEvent