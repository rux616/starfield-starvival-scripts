ScriptName SISA_IntoxicationRestoreMedic extends ActiveMagicEffect

Quest Property QuestIntoxaddiction Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	   SISA_Intoxaddiction IntoxaddictionScript = QuestIntoxaddiction as SISA_Intoxaddiction
       If IntoxaddictionScript
          IntoxaddictionScript.IntoxicationRestoreMedic()
    EndIf	  
EndEvent

  