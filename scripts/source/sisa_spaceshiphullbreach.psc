ScriptName SISA_SpaceshipHullBreach extends ActiveMagicEffect

ActorValue Property AV_Health Auto Const
sq_playershipscript Property SQ_PlayerShip Auto

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
            
	  StartTimer(60, 0)	  
	           
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
            
	  CancelTimer(0)	  
	       
EndEvent

Event OnTimer(int aiTimerID)
                            	     	  
	  If (aiTimerID == 0)
		  SpaceshipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()           
		  Float BreachDMG = akShip.GetBaseValue(AV_Health) * 0.05
		  
		  akShip.Damagevalue(AV_Health, BreachDMG)	 
	      StartTimer(60, 0)
   EndIf

EndEvent				 