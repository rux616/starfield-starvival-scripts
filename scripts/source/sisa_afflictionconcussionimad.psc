Scriptname SISA_AfflictionConcussionImad extends ActiveMagicEffect

ImageSpaceModifier Property theImod Const Auto

GlobalVariable Property GV_TimerIMADMin Auto Const
GlobalVariable Property GV_TimerIMADMax Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, float afMagnitude, float afDuration)		 		       
      Float StartRandomly = Utility.RandomFloat(GV_TimerIMADMin.GetValue(), GV_TimerIMADMax.GetValue())
	  StartTimer(StartRandomly, 0)	  
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, float afMagnitude, float afDuration)        
		If theImod
		   theImod.Remove()
	 EndIf   		
	 CancelTimer(0)
EndEvent

Event OnTimer(int aiTimerID)    	   
	   If aiTimerID == 0                     
          Float StartRandomly = Utility.RandomFloat(GV_TimerIMADMin.GetValue(), GV_TimerIMADMax.GetValue())
		  Float IMADPower = Utility.RandomFloat(0.5, 1.0)
		  theImod.Apply(IMADPower)		 
		  StartTimer(StartRandomly, 0)
	EndIf
EndEvent
