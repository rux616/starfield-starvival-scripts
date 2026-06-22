ScriptName SISA_Oxygen extends ActiveMagicEffect

Quest Property OxygenQuest Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      SISA_OxygenQuest OxygenScript = OxygenQuest as SISA_OxygenQuest         
      If OxygenScript
         OxygenScript.OxygenConsumeStart()
   EndIf 
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      SISA_OxygenQuest OxygenScript = OxygenQuest as SISA_OxygenQuest         
      If OxygenScript
         OxygenScript.OxygenConsumeStop()
   EndIf  
EndEvent


   
  