Scriptname SISA_WeaponDegrade_HZRD extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_DegradeLevel Auto Const
Conditionform Property ConditionFormPlanetaryWeather Auto Const Mandatory
Conditionform Property ConditionFormPlanetaryWeather02 Auto Const Mandatory
MagicEffect Property MGF_EnviroCoating Auto Const
MagicEffect Property MGC_HandyDandy Auto Const
Conditionform Property ConditionFormDegradeLess01 Auto Const Mandatory
Conditionform Property ConditionFormDegradeLess02 Auto Const Mandatory
Conditionform Property ConditionFormDegradeLess03 Auto Const Mandatory
Conditionform Property ConditionFormDegradeLess04 Auto Const Mandatory
GlobalVariable Property GV_EnvironmentDMG Auto Const
GlobalVariable Property GV_WeatherDMG Auto Const
GlobalVariable Property GV_Timer Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	  Float Timer = GV_Timer.GetValue()
	  StartTimer(Timer, 0)
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	  CancelTimer(0)
EndEvent

Event OnTimer(int aiTimerID)
			 		 			 
			 If (aiTimerID == 0)              
				    If PlayerRef.HasMagicEffect(MGF_EnviroCoating) == False
	                   Float Scale = DegradeScale()
	                   Float HandyDandyBonus = HandyDandyMult()
				       Float WeatherDMG = PlanetaryWeatherDMGCalc()	
					   Float EnvironmentDMG = GV_EnvironmentDMG.GetValue()	
					   PlayerRef.DamageValue(AV_DegradeLevel, EnvironmentDMG * WeatherDMG / Scale / HandyDandyBonus)
				 EndIf
				 Float Timer = GV_Timer.GetValue()
				 StartTimer(Timer, 0)
		  EndIf

EndEvent

Float Function PlanetaryWeatherDMGCalc()

	 Float PlanetaryWeatherActive = GV_WeatherDMG.GetValue()
     Float PlanetaryWeatherOff = 1.0 	 
 
		
		If ConditionFormPlanetaryWeather.IsTrue(PlayerRef, None) || ConditionFormPlanetaryWeather02.IsTrue(PlayerRef, None)     
		   Return PlanetaryWeatherActive  
Else	
           Return PlanetaryWeatherOff
     EndIf

EndFunction

Float Function DegradeScale()
     
	 Float Mult00 = 1.00
     Float Mult01 = 1.20 	 
     Float Mult02 = 1.30 
     Float Mult03 = 1.40 
     Float Mult04 = 1.50 	 
		
		If ConditionFormDegradeLess04.IsTrue(PlayerRef, None)     
		   Return Mult04 
	ElseIf ConditionFormDegradeLess03.IsTrue(PlayerRef, None)  
	       Return Mult03
	ElseIf ConditionFormDegradeLess02.IsTrue(PlayerRef, None)	 
           Return Mult02
	ElseIf ConditionFormDegradeLess01.IsTrue(PlayerRef, None)
           Return Mult01 
     Else	
           Return Mult00
     EndIf

EndFunction

Float Function HandyDandyMult()
     
	 Float Mult00 = 1.00
     Float Mult01 = 1.30 	 	 
		
		If PlayerRef.HasmagicEffect(MGC_HandyDandy)    
		   Return Mult01 
      Else	
           Return Mult00
     EndIf

EndFunction