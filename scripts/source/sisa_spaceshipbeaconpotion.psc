ScriptName SISA_SpaceshipBeaconPotion extends ActiveMagicEffect

Quest Property SpaceshipSystemsQuest Auto

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)

      (SpaceshipSystemsQuest as SISA_SpaceshipFuel).EmergencyBeaconActivator()

EndEvent