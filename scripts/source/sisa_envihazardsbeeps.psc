ScriptName SISA_EnviHazardsBeeps extends ActiveMagicEffect

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
		  		
				 If PlayerRef.GetValuePercentage(AV_AdaptiveProtection) < 0.1				
				    SFX_Beep.Play(PlayerRef, None, None) 
				    StartTimer(0.3, 0)		          
			 ElseIf PlayerRef.GetValuePercentage(AV_AdaptiveProtection) < 0.2		  
				    SFX_Beep.Play(PlayerRef, None, None) 
				    StartTimer(0.5, 0)
			 ElseIf PlayerRef.GetValuePercentage(AV_AdaptiveProtection) < 0.3			  
				    SFX_Beep.Play(PlayerRef, None, None) 
				    StartTimer(1, 0)
			 ElseIf PlayerRef.GetValuePercentage(AV_AdaptiveProtection) < 0.4			  
				    SFX_Beep.Play(PlayerRef, None, None) 
				    StartTimer(2, 0)
			 ElseIf PlayerRef.GetValuePercentage(AV_AdaptiveProtection) <= 0.5	
				    SFX_Beep.Play(PlayerRef, None, None) 
				    StartTimer(4, 0)		  
		      EndIf
		  EndIf

EndEvent