ScriptName SISA_SatiationCheckerBox extends ActiveMagicEffect

Quest Property QuestSurvival Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	   SISA_Survival SurvivalScript = QuestSurvival as SISA_Survival
       If SurvivalScript
          SurvivalScript.SatiationCheckerBox()
    EndIf
EndEvent

