ScriptName SISA_SpaceshipOnBoost extends ActiveMagicEffect

Quest Property SpaceshipSystemsQuest Auto

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)      
      (SpaceshipSystemsQuest as SISA_SpaceshipFuel).OnBoostStartTimer()
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	  (SpaceshipSystemsQuest as SISA_SpaceshipFuel).OnBoostStopTimer()
EndEvent			 