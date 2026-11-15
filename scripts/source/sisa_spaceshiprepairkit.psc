ScriptName SISA_SpaceshipRepairKit extends ActiveMagicEffect

EffectShader Property VFXShipRecharger Auto Const Mandatory

sq_playershipscript Property SQ_PlayerShip Auto

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
         
		 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
         
		 VFXShipRecharger.Play(akShip, -1)

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
		
		 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
         
		 VFXShipRecharger.Stop(akShip)

EndEvent
