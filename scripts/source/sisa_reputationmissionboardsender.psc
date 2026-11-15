ScriptName SISA_ReputationMissionBoardSender extends ActiveMagicEffect

Quest Property FameAndRepQuestMB Auto Const
Float Property CreditsMult = 1.0 Auto Const 

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      SISA_FameAndRepMB FameAndRepMBScript = FameAndRepQuestMB as SISA_FameAndRepMB         
      If FameAndRepMBScript
         FameAndRepMBScript.RefreshMissionBoardRewards(CreditsMult)
   EndIf  
EndEvent


  