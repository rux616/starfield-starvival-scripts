ScriptName SISA_OxygenCrafter extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property OxygenBoosterReadiness Auto Const
Potion Property OxygenBooster Auto Const
GlobalVariable Property CraftTime Auto Const
MiscObject Property EmptyOxygenBooster Auto Const
Message Property OxygenBoosterReadinessMSG Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)

      Float Time = CraftTime.GetValue()
	    
	  StartTimer(Time, 0)

EndEvent

Event OnTimer(int aiTimerID)
         
		 Float Time = CraftTime.GetValue()
		 
		 If (aiTimerID == 0) 
			PlayerRef.RestoreValue(OxygenBoosterReadiness, 1.0)
			OxygenBoosterReadinessMSG.Show(PlayerRef.GetValue(OxygenBoosterReadiness), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
			   If PlayerRef.GetValue(OxygenBoosterReadiness) >= 100
			      PlayerRef.Removeitem(EmptyOxygenBooster, 1, True, None)
			      PlayerRef.additem(OxygenBooster, 1, False)
                  PlayerRef.DamageValue(OxygenBoosterReadiness, 999)
	        EndIf
			StartTimer(Time, 0)
	  EndIf
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)

	  CancelTimer(0)

EndEvent

