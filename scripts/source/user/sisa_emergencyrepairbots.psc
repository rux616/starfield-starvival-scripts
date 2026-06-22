ScriptName SISA_EmergencyRepairBots extends ActiveMagicEffect

Quest Property StarvivalSpaceshipFuelQuest Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)

           (StarvivalSpaceshipFuelQuest as SISA_SpaceshipFuel).EmergencyRepairBots()  

EndEvent
