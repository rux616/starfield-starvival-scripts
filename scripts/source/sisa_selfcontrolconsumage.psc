Scriptname SISA_SelfControlConsumage extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_SelfControl Auto Const
Conditionform Property ConditionFormProtectionBoth Auto Const Mandatory
Conditionform Property ConditionFormProtectionInDialogue Auto Const Mandatory
Conditionform Property ConditionFormProtectionInWorkshop Auto Const Mandatory
GlobalVariable Property GV_NeedsProtectionToggle Auto Const

Float Property FLT_Timer = 1.0 Auto Const
Float Property FLT_Consumage = 1.0 Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, float afMagnitude, float afDuration)
	  StartTimer(FLT_Timer, 0)
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, float afMagnitude, float afDuration)   		
	  CancelTimer(0)
EndEvent

Event OnTimer(int aiTimerID)
       
	   If aiTimerID == 0                     
		     If GV_NeedsProtectionToggle.GetValue() == 1
                ApplyDMG(ConditionFormProtectionInDialogue)
		 ElseIf GV_NeedsProtectionToggle.GetValue() == 2
                ApplyDMG(ConditionFormProtectionInWorkshop)
		 ElseIf GV_NeedsProtectionToggle.GetValue() == 3
                ApplyDMG(ConditionFormProtectionBoth)
		   Else
		        PlayerRef.DamageValue(AV_SelfControl, FLT_Consumage)
		  EndIf
		  StartTimer(FLT_Timer, 0)		
	EndIf

EndEvent

Function ApplyDMG(Conditionform COND)

		 If COND.IsTrue(PlayerRef, None)
		    PlayerRef.DamageValue(AV_SelfControl, FLT_Consumage)
	  EndIf

EndFunction
