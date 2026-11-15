ScriptName SISA_Adrenaline extends ActiveMagicEffect

Quest Property AdrenalineQuest Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	   SISA_AdrenalineQuest AdrenalineScript = AdrenalineQuest as SISA_AdrenalineQuest  
       If AdrenalineScript
          AdrenalineScript.Adrenaline()
    EndIf
EndEvent