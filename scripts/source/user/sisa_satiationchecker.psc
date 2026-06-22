ScriptName SISA_SatiationChecker extends ActiveMagicEffect

Quest Property QuestBasicNeeds Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	   SISA_BasicNeeds BasicNeedsScript = QuestBasicNeeds as SISA_BasicNeeds
       If BasicNeedsScript
          BasicNeedsScript.SatiationChecker()
    EndIf
EndEvent


