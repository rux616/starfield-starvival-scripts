ScriptName SISA_ReputationNPCIdlesSender extends ActiveMagicEffect

Actor Property PlayerRef Const Auto
Spell Property CastIdleAnimSpell Const Auto
GlobalVariable Property GV_IddleAnimTime Auto Const
GlobalVariable Property GV_IddleAnimChance Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)   	  
	  Float Time = GV_IddleAnimTime.GetValue()	  
	  StartTimer(Time, 0)
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)   	  
	  CancelTimer(0)
EndEvent

Event OnTimer(int aiTimerID)
	         
			 Float Time = GV_IddleAnimTime.GetValue()             
			 Int RandomChance = Utility.RandomInt(1, 100)
	         Int ChanceTrigger = GV_IddleAnimChance.GetValue() as Int     	     
			 
			 If (aiTimerID == 0)  
			    			    	
					If RandomChance <= ChanceTrigger
					   CastIdleAnimSpell.cast(PlayerRef, PlayerRef)
				 EndIf
				 
				 StartTimer(Time, 0)          
		  
		  EndIf

EndEvent

