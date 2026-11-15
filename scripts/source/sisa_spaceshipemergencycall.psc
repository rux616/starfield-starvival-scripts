ScriptName SISA_SpaceshipEmergencyCall extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Quest Property OnSpaceshipsystemsRedirect Auto Const
Potion Property EmergencyCallPotion Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
          
		  PlayerRef.Additem(EmergencyCallPotion, 1, True)
         (OnSpaceshipsystemsRedirect as SISA_SpaceshipFuel).RequestShipLanding()
         
EndEvent
