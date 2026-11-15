ScriptName SISA_SpaceshipOnBoostVFX extends ActiveMagicEffect

VisualEffect Property VFX_Cruise Auto Const Mandatory
sq_playershipscript Property SQ_PlayerShip Auto
GlobalVariable Property GV_CruiseIsActive Auto Const
Float Property FLT_StartingTime = 1.0 Auto

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)      
	  StartTimer(FLT_StartingTime, 0)
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)	  
	  spaceshipreference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
	  GV_CruiseIsActive.SetValue(0)
	  VFX_Cruise.Stop(akShip)
EndEvent

Event OnTimer(int aiTimerID)                          
     	     If (aiTimerID == 0)
	               If Game.IsCruiseModeActive()
		              spaceshipreference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
				      GV_CruiseIsActive.SetValue(1)
					  VFX_Cruise.Play(akShip, -1, None)
                Else
				      GV_CruiseIsActive.SetValue(0)
				EndIf
          EndIf
EndEvent				 