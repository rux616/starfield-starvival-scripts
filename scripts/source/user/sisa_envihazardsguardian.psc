ScriptName SISA_EnviHazardsGuardian extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Message Property MSG_Warning Auto Const
Potion Property POTI_EnviroGuardian Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	  MSG_Warning.show()
	  PlayerRef.Additem(POTI_EnviroGuardian, 1, True)
EndEvent