Scriptname SISA_AfflictionPanaceaImad extends ActiveMagicEffect

ImageSpaceModifier Property theImod Const Auto

Float Property IMADTimer01 = 1.0 Auto
Float Property IMADTimer02 = 1.0 Auto

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, float afMagnitude, float afDuration)		 		       
      Float StartRandomly = Utility.RandomFloat(IMADTimer01, IMADTimer02)
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
          Float StartRandomly = Utility.RandomFloat(IMADTimer01, IMADTimer02)
		  theImod.Apply(0.5)		 
		  StartTimer(StartRandomly, 0)
	EndIf
EndEvent
