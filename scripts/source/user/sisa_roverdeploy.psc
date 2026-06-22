ScriptName SISA_RoverDeploy extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Quest Property OnRoverSystemsRedirect Auto Const
Potion Property RoverCallPotion Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
          
		  PlayerRef.Additem(RoverCallPotion, 1, True)
         (OnRoverSystemsRedirect as SISA_Rover).DeployRoverFromDevice()
         
EndEvent
