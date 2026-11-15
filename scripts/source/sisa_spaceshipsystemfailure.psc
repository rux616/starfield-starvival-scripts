ScriptName SISA_SpaceshipSystemFailure extends ActiveMagicEffect

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
          Int RandomPower = Utility.RandomInt(0, 5)	  
          
		  akShip.setpartpower(1, 0, RandomPower)
		  akShip.setpartpower(2, 0, RandomPower)		  
		  akShip.setpartpower(3, 0, RandomPower)			  
		  akShip.setpartpower(0, 0, RandomPower)
		  akShip.setpartpower(0, 1, RandomPower)
		  akShip.setpartpower(0, 2, RandomPower)		  	 
	      StartTimer(60, 0)
   EndIf

EndEvent				 