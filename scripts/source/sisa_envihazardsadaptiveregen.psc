ScriptName SISA_EnviHazardsAdaptiveRegen extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_AdaptiveProtection Auto Const
Message Property MSG_NotificationCheck Auto Const
Quest Property QuestEnviHazards Auto Const

Float Property FLT_Restore = 1.0 Auto
Float Property FLT_Time = 1.0 Auto

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	  StartTimer(FLT_Time, 0)
EndEvent

Event OnTimer(int aiTimerID)
	 	  	      
     	     If (aiTimerID == 0) 
                PlayerRef.RestoreValue(AV_AdaptiveProtection, FLT_Restore)
                (QuestEnviHazards as SISA_EnviHazardsQuest).AdapterNotificationChecks()
				StartTimer(FLT_Time, 0)
		  EndIf

EndEvent