ScriptName SISA_SpaceshipTeleporter extends ActiveMagicEffect

Quest Property SpaceshipSystemsQuest Auto const
Actor Property PlayerRef Auto Const
Explosion Property TeleportExplosion Auto Const
EffectShader Property TeleportFX Auto Const Mandatory
EffectShader Property TeleportFX02 Auto Const Mandatory
Location Property CurrentLoc Auto
LocationAlias Property playerShipInteriorLocation Auto Const mandatory
Message Property MSG_SpaceshipTeleporter Auto Const
ReferenceAlias Property PlayerShip Auto mandatory
Potion Property TeleporterPotion Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)

        CurrentLoc = PlayerRef.GetCurrentlocation()
	    SpaceShipReference akShip = PlayerShip.getShipRef()		
		
		If CurrentLoc == playerShipInteriorLocation.GetLocation() == False		   
		   PlayerRef.SetPlayerControls(False)
		   Utility.Wait(1.0)
		   PlayerRef.PlaceAtMe(TeleportExplosion, 1, False, False, True, None, None, True)
		   TeleportFX02.Play(PlayerRef, 3)
		   TeleportFX.Play(PlayerRef, 3)		   
		   Utility.Wait(1.5)
		   PlayerRef.moveto(akShip, 0.0, 0.0, 0.0, false, false)
		   Utility.Wait(4.0)
		   PlayerRef.PlaceAtMe(TeleportExplosion, 1, False, False, True, None, None, True) 
		   TeleportFX02.Stop(PlayerRef)
		   TeleportFX.Stop(PlayerRef)
		   PlayerRef.SetPlayerControls(True)
	Else
	       MSG_SpaceshipTeleporter.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
		   PlayerRef.Additem(TeleporterPotion, 1, True)
	 EndIf

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
		    
		   TeleportFX02.Stop(PlayerRef)
		   TeleportFX.Stop(PlayerRef)
		   PlayerRef.SetPlayerControls(True)

EndEvent