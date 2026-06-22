ScriptName SISA_ReputationAimingAtNPCSender extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Spell Property CastAimAtNPCSpell Const Auto

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)      
	  StartTimer(1, 0)  	  	  
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)      
	  CancelTimer(0)  	  	  
EndEvent

Event OnTimer(int aiTimerID)  			 
			 If (aiTimerID == 0)  
         	    CastAimAtNPCSpell.cast(PlayerRef, PlayerRef)
		        StartTimer(1, 0)
		  EndIf
EndEvent