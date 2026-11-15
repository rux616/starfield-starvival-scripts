ScriptName SISA_SpaceshipGravCooldown extends ActiveMagicEffect

Quest Property QuestSpaceshipSystems Auto Const

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	  (QuestSpaceshipSystems as SISA_SpaceshipFuel).GravDriveRestart()       
EndEvent
			 