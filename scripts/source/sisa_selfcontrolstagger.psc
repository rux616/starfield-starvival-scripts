Scriptname SISA_SelfControlStagger extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Spell Property SPL_Stagger Auto Const

Float Property FLT_Timer = 1.0 Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, float afMagnitude, float afDuration)

	  StartTimer(FLT_Timer, 0)

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, float afMagnitude, float afDuration)
   		
	  CancelTimer(0)

EndEvent

Event OnTimer(int aiTimerID)
       
	   If aiTimerID == 0
                     
		  SPL_Stagger.Cast(PlayerRef, PlayerRef)
	      StartTimer(FLT_Timer, 0)	
	
	EndIf

EndEvent
