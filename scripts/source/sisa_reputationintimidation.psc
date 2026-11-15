ScriptName SISA_ReputationIntimidation extends ActiveMagicEffect

Actor Property PlayerRef Const Auto
Spell Property CastIntimidationSpell Const Auto
GlobalVariable Property GV_LowRepGuardReportTime Auto Const
GlobalVariable Property GV_LowRepGuardReportChance Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
   	  
	  Float Time = GV_LowRepGuardReportTime.GetValue()
	  
	  StartTimer(Time, 0)

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
   	  
	  CancelTimer(0)

EndEvent

Event OnTimer(int aiTimerID)
	         
			 Float Time = GV_LowRepGuardReportTime.GetValue()             
			 Int RandomChance = Utility.RandomInt(1, 100)
	         Int ChanceTrigger = GV_LowRepGuardReportChance.GetValue() as Int     	     
			 
			 If (aiTimerID == 0)  
			    			    	
					If RandomChance <= ChanceTrigger
					   CastIntimidationSpell.cast(PlayerRef, PlayerRef)
				 EndIf
				 
				 StartTimer(Time, 0)          
		  
		  EndIf

EndEvent			 