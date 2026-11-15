ScriptName SISA_RoverEnviroDome extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_RoverEnviroCharge Auto Const 
Ammo Property AMMO_EnviroDomeBattery Auto Const
GlobalVariable Property GV_EnviroDomeAtWork Auto Const
Message Property MSG_EnviroDomeChargeStatus Auto Const
ObjectReference Property OBJ_RoverHood Auto Const
Conditionform Property ConditionFormPlanetaryWeather Auto Const Mandatory
Conditionform Property ConditionFormPlanetaryWeather02 Auto Const Mandatory
wwiseevent Property SoundFX_Recharged Auto Const
wwiseevent Property SoundFX_Empty Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	  
	  If PlayerRef.GetValue(AV_RoverEnviroCharge) > 0 					    
	     GV_EnviroDomeAtWork.SetValue(1)
	     StartTimer(5, 0)
   EndIf

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	   					    
	  GV_EnviroDomeAtWork.SetValue(0)
	  SoundFX_Empty.Play(PlayerRef, None, None)
      MSG_EnviroDomeChargeStatus.show(PlayerRef.GetValue(AV_RoverEnviroCharge), PlayerRef.GetBaseValue(AV_RoverEnviroCharge), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)

EndEvent

Event OnTimer(int aiTimerID)
			 
			 Float WeatherDMG = PlanetaryWeatherDMGCalc()			 
			 
			 If (aiTimerID == 0)
                   If PlayerRef.GetValue(AV_RoverEnviroCharge) <= 0
					  SoundFX_Empty.Play(PlayerRef, None, None)
					  GV_EnviroDomeAtWork.SetValue(0)
				      CancelTimer(0)               
			   ElseIf PlayerRef.GetValue(AV_RoverEnviroCharge) > 2.0
				      PlayerRef.DamageValue(AV_RoverEnviroCharge, 0.35 * WeatherDMG)
                      MSG_EnviroDomeChargeStatus.show(PlayerRef.GetValue(AV_RoverEnviroCharge), PlayerRef.GetBaseValue(AV_RoverEnviroCharge), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					  StartTimer(5, 0)
               ElseIf PlayerRef.GetValue(AV_RoverEnviroCharge) <= 2.0
		              PlayerRef.DamageValue(AV_RoverEnviroCharge, 0.35 * WeatherDMG)
                      MSG_EnviroDomeChargeStatus.show(PlayerRef.GetValue(AV_RoverEnviroCharge), PlayerRef.GetBaseValue(AV_RoverEnviroCharge), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
						 If OBJ_RoverHood.GetItemCount(AMMO_EnviroDomeBattery) > 0
					        OBJ_RoverHood.RemoveItem(AMMO_EnviroDomeBattery, 1, True, None)
							PlayerRef.RestoreValue(AV_RoverEnviroCharge, 9999)					  
					        SoundFX_Recharged.Play(PlayerRef, None, None)
					  EndIf
					  StartTimer(5, 0)
		        EndIf
		  EndIf

EndEvent

Float Function PlanetaryWeatherDMGCalc()

	 Float PlanetaryWeatherActive = 3.25
     Float PlanetaryWeatherOff = 1.0 	 
 
		
		If ConditionFormPlanetaryWeather.IsTrue(PlayerRef, None) || ConditionFormPlanetaryWeather02.IsTrue(PlayerRef, None)    
		   Return PlanetaryWeatherActive  
Else	
           Return PlanetaryWeatherOff
     EndIf

EndFunction