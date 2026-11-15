ScriptName SISA_OxygenSprint extends ActiveMagicEffect

Quest Property OxygenQuest Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      SISA_OxygenQuest OxygenScript = OxygenQuest as SISA_OxygenQuest         
      If OxygenScript
         OxygenScript.OxygenConsumeStartSprint()
   EndIf  
EndEvent

