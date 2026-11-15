ScriptName SISA_EnviHazardsBeepsQuick extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_AdaptiveProtection Auto Const
WwiseEvent Property SFX_Beep Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	  StartTimer(0, 0)
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      CancelTimer(0)
EndEvent

Event OnTimer(int aiTimerID)
	 	  	      
     	     If (aiTimerID == 0) 		  		
			     If PlayerRef.GetValuePercentage(AV_AdaptiveProtection) <= 1.0	
				    SFX_Beep.Play(PlayerRef, None, None) 
				    StartTimer(0.4, 0)		  
		      EndIf
		  EndIf

EndEvent