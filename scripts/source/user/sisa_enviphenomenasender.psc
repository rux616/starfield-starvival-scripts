ScriptName SISA_EnviPhenomenaSender extends ActiveMagicEffect

Actor Property PlayerRef Auto Const

Weather Property TargetWeather01 Mandatory Const Auto
Weather Property TargetWeather02 Mandatory Const Auto
Weather Property TargetWeather03 Mandatory Const Auto
Weather Property TargetWeather04 Mandatory Const Auto

Conditionform Property CF_WithAtmo Auto Const Mandatory
Conditionform Property CF_WithFauna Auto Const Mandatory
Conditionform Property CF_WithFlora Auto Const Mandatory

GlobalVariable Property GV_AnomalyActive Auto Const

Float Property FLT_TimeCycleMin = 1.0 const auto
Float Property FLT_TimeCycleMax = 1.0 const auto
Int Property INT_TriggerChance = 1 const auto

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)  
      StartTimer(10, 4)
EndEvent

Event OnTimer(int aiTimerID)
                         		 
		 If (aiTimerID == 0)   
				If GV_AnomalyActive.GetValue() == 0
			       Int RollDiceToChooseWeather = Utility.RandomInt(0, 2)			 
			       Int RollDiceToChooseWeatherVariant = Utility.RandomInt(0, 1)
			               If  RollDiceToChooseWeather == 0			 
			                   TargetWeather01.SetActive(True, True)
					   ElseIf  RollDiceToChooseWeather == 1					 
			                   TargetWeather02.SetActive(True, True)
					   ElseIf  RollDiceToChooseWeather == 2				 
			                      If RollDiceToChooseWeatherVariant == 0
							         TargetWeather03.SetActive(True, True)
		                      Else
							         TargetWeather04.SetActive(True, True)
						       EndIf
						EndIf	 
			            GV_AnomalyActive.SetValue(1)
	         EndIf
			 
	 ElseIf (aiTimerID == 1) 
				If GV_AnomalyActive.GetValue() == 0
			       Int RollDiceToChooseWeather = Utility.RandomInt(0, 1)			 
			               If  RollDiceToChooseWeather == 0			 
			                   TargetWeather01.SetActive(True, True)
					   ElseIf  RollDiceToChooseWeather == 1					 
			                   TargetWeather02.SetActive(True, True)
						EndIf	 
			            GV_AnomalyActive.SetValue(1)
	         EndIf
		  
	 ElseIf (aiTimerID == 2)  
				If GV_AnomalyActive.GetValue() == 0
			       Int RollDiceToChooseWeather = Utility.RandomInt(0, 1)			 
			       Int RollDiceToChooseWeatherVariant = Utility.RandomInt(0, 1)
			               If  RollDiceToChooseWeather == 0			 
			                   TargetWeather01.SetActive(True, True)
					   ElseIf  RollDiceToChooseWeather == 1				 
			                      If RollDiceToChooseWeatherVariant == 0
							         TargetWeather03.SetActive(True, True)
		                      Else
							         TargetWeather04.SetActive(True, True)
						       EndIf
						EndIf 
			            GV_AnomalyActive.SetValue(1)
	         EndIf
	 
	 ElseIf (aiTimerID == 3) 
				If GV_AnomalyActive.GetValue() == 0
			       TargetWeather01.SetActive(True, True)
			       GV_AnomalyActive.SetValue(1)
	         EndIf
	  	 
	 ElseIf (aiTimerID == 4) 
  			 Int RollDiceToTrigger = Utility.RandomInt(0, 100)		    
  			 Float TriggerTime = Utility.RandomFloat(FLT_TimeCycleMin, FLT_TimeCycleMax)
			 If RollDiceToTrigger <= INT_TriggerChance      
				    If CF_WithAtmo.IsTrue(PlayerRef, None) && CF_WithFauna.IsTrue(PlayerRef, None) && CF_WithFlora.IsTrue(PlayerRef, None)   
                       StartTimer(TriggerTime, 0)
	            ElseIf CF_WithAtmo.IsTrue(PlayerRef, None) && CF_WithFauna.IsTrue(PlayerRef, None)
                       StartTimer(TriggerTime, 1)
	            ElseIf CF_WithAtmo.IsTrue(PlayerRef, None) && CF_WithFlora.IsTrue(PlayerRef, None)	 
                       StartTimer(TriggerTime, 2)
	            ElseIf CF_WithAtmo.IsTrue(PlayerRef, None)
                       StartTimer(TriggerTime, 3)
                 EndIf
	      EndIf
	  EndIf

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)	     
      GV_AnomalyActive.SetValue(0)
      CancelTimer(0)
      CancelTimer(1)
      CancelTimer(2)
      CancelTimer(3)
      CancelTimer(4)
EndEvent