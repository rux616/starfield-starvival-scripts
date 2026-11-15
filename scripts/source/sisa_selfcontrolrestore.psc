ScriptName SISA_SelfControlRestore extends ActiveMagicEffect

Quest Property QuestBasicNeeds Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	   SISA_BasicNeeds BasicNeedsScript = QuestBasicNeeds as SISA_BasicNeeds
       If BasicNeedsScript
          BasicNeedsScript.SelfControlRestore()
    EndIf	    
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	   SISA_BasicNeeds BasicNeedsScript = QuestBasicNeeds as SISA_BasicNeeds
       If BasicNeedsScript
          BasicNeedsScript.SelfControlRestoreCancel()
    EndIf	    
EndEvent


	
	
	