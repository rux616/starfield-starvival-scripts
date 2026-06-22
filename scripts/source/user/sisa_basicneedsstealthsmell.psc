ScriptName SISA_BasicNeedsStealthSmell extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Spell Property SPL_StealthSmellAlarm Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      StartTimer(30, 0)
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      CancelTimer(0)
EndEvent

Event OnTimer(int aiTimerID)
	 	  	      
     	     If (aiTimerID == 0)       
                SPL_StealthSmellAlarm.Cast(PlayerRef, PlayerRef)
		        StartTimer(30, 0)
		  EndIf		 

EndEvent				