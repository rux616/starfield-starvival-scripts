ScriptName SISA_SpaceshipFarTravelDisable extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
GlobalVariable Property GV_SpaceshipCruiseFarTravelToggle Auto Const
Spell Property SPL_FarTravelDisabler Auto Const
inputEnableLayer FarTravel

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)

      GV_SpaceshipCruiseFarTravelToggle.SetValue(0)
	  FarTravel.EnableFarTravel(False) 
	  FarTravel.Reset()
	  FarTravel.Delete()
	  FarTravel = inputEnableLayer.Create()
	  FarTravel.EnableFarTravel(False)
      Utility.Wait(0.1)
	  PlayerRef.RemoveSpell(SPL_FarTravelDisabler)

EndEvent