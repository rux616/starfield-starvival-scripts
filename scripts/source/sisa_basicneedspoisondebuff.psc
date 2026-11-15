ScriptName SISA_BasicNeedsPoisonDebuff extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Quest Property QuestBasicNeeds Auto Const
Spell Property SPL_Infection Auto Const

Float Property FLT_Timer = 1.0 Auto
Int Property INT_Chance = 1 Auto

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      StartTimer(FLT_Timer, 0) 
      (QuestBasicNeeds as SISA_BasicNeeds).FoodPoisoningNeedsThresholdsDamage()
EndEvent

Event OnTimer(int aiTimerID)    	   
	   If aiTimerID == 0                     
             Int Chance = Utility.RandomInt(0, 100)	 
		     If Chance <= INT_Chance
		        SPL_Infection.Cast(PlayerRef, PlayerRef)
		  EndIf
		  StartTimer(FLT_Timer, 0)
	EndIf
EndEvent