ScriptName SISA_ReputationIntimidationCF extends ActiveMagicEffect

Actor Property PlayerRef Const Auto
Spell Property CastIntimidationSpell Const Auto

Int Property Int_Chance = 1 Auto
Float Property FLT_Time = 1.0 Auto

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)   	  	  
	  StartTimer(FLT_Time, 0)
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)  	  
	  CancelTimer(0)
EndEvent

Event OnTimer(int aiTimerID)
	                    
			 Int RandomChance = Utility.RandomInt(1, 100)
   	     			 
			 If (aiTimerID == 0)  
			    			    	
					If RandomChance <= Int_Chance
					   CastIntimidationSpell.cast(PlayerRef, PlayerRef)
				 EndIf				 
				 StartTimer(FLT_Time, 0)          		  
		  EndIf

EndEvent			 