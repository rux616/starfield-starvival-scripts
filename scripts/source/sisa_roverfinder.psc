ScriptName SISA_RoverFinder extends ActiveMagicEffect

Quest Property RoverFinderQuest Auto Const mandatory
ReferenceAlias Property PlayerVehicle Auto mandatory

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)  
      RoverFinderQuest.Reset()
      RoverFinderQuest.Start() 	  
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)  
      PlayerVehicle.Clear()
      RoverFinderQuest.Stop()
EndEvent
