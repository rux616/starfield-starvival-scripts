ScriptName SISA_EnviPhenomenaSolar extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
GlobalVariable Property GV_SolarFlareActive Auto Const
ImageSpaceModifier Property IMAD_SolarFlare Auto Const
ImageSpaceModifier Property IMAD_SolarFlare02 Auto Const
ImageSpaceModifier Property IMAD_SolarFlare03 Auto Const
Spell Property SPL_SolarStormEMP Const Auto
Spell Property SPL_SolarStormWarning Const Auto
Spell Property SPL_SolarStormSlowmo Const Auto
wwiseevent Property SFX_SolarExplosion Auto Const
wwiseevent Property SFX_SolarStormWarning Auto Const
Conditionform Property CF_HiddenFromEnvironment Auto Const Mandatory
VisualEffect Property VFX_SolarFlare Auto Const mandatory

Float Property FLT_TimeCycleMin = 1.0 const auto
Float Property FLT_TimeCycleMax = 1.0 const auto
Float Property FLT_TimeTillTrigger = 1.0 const auto
Float Property FLT_TimeEnd = 1.0 const auto
Int Property INT_ChanceToTrigger = 1 const auto

Int HudBlinkTries = 0
Int AlertSoundInstance = -1

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)  
	  StartTimer(10, 8)
EndEvent

Event OnMenuOpenCloseEvent(String asMenuName, Bool abOpening)
         	     	 			 
		 If asMenuName == "DataMenu"    
			       If abOpening == True														      					   
				        If GV_SolarFlareActive.GetValue() == 1
						   Debug.EnableMenus(True)
				           Game.SetCharGenHUDMode(0)
				     EndIf
				EndIf
      EndIf

EndEvent

Event OnTimer(int aiTimerID)
                         		 
		 If (aiTimerID == 0) 
			 If GV_SolarFlareActive.GetValue() == 0    
	            RegisterForMenuOpenCloseEvent("DataMenu")
				PlayerRef.AddSpell(SPL_SolarStormWarning, False)
				StartTimer(0, 6)
				StartTimer(FLT_TimeTillTrigger, 5)
		  EndIf
     ElseIf (aiTimerID == 1) 
             CleanupStormFromTimer()
     ElseIf (aiTimerID == 2) 
	         If GV_SolarFlareActive.GetValue() == 1 
			    Int RandomTimer = Utility.RandomInt(9, 18)
	            AdditionalEffectsForTimer()
	            StartTimer(RandomTimer, 2)
          EndIf
	 ElseIf (aiTimerID == 3) 
	         If GV_SolarFlareActive.GetValue() == 1 
                   If HudBlinkTries < 15      
				      Float TimerHUD = Utility.RandomFloat(0.05, 0.7)
			          HudBlinkTries += 1
			          Debug.EnableMenus(False)
				      Game.SetCharGenHUDMode(3)
                      StartTimer(TimerHUD, 4)
                 Else
			          Debug.EnableMenus(True)
				      Game.SetCharGenHUDMode(0)                                      
			          HudBlinkTries = 0
			    EndIf 
          EndIf
	 ElseIf (aiTimerID == 4) 
	         If GV_SolarFlareActive.GetValue() == 1 
                  If HudBlinkTries < 15
                     Float TimerHUD = Utility.RandomFloat(0.05, 0.4)
			         HudBlinkTries += 1
				     Debug.EnableMenus(True)
				     Game.SetCharGenHUDMode(0)
                     StartTimer(TimerHUD, 3)
                Else
			         Debug.EnableMenus(True)
				     Game.SetCharGenHUDMode(0)                                      
			         HudBlinkTries = 0
			   EndIf 
          EndIf
	 ElseIf (aiTimerID == 5) 
				    StartSolarStorm()
                    wwiseevent.StopInstance(AlertSoundInstance)
		            AlertSoundInstance = -1
			        StartTimer(FLT_TimeEnd, 1) 
	 ElseIf (aiTimerID == 6) 
	         If GV_SolarFlareActive.GetValue() == 0 
                AlertSoundInstance = SFX_SolarStormWarning.Play(PlayerRef, None, None)
			    StartTimer(2, 7)
         Else
                wwiseevent.StopInstance(AlertSoundInstance)
		        AlertSoundInstance = -1
          EndIf
	 ElseIf (aiTimerID == 7) 
	         If GV_SolarFlareActive.GetValue() == 0 
                wwiseevent.StopInstance(AlertSoundInstance)
		        AlertSoundInstance = -1
			    StartTimer(2, 6)
         Else
                wwiseevent.StopInstance(AlertSoundInstance)
		        AlertSoundInstance = -1
          EndIf
	 ElseIf (aiTimerID == 8) 
  			 Int RollDiceToTrigger = Utility.RandomInt(0, 100)		    
  			 Float TriggerTime = Utility.RandomFloat(FLT_TimeCycleMin, FLT_TimeCycleMax)
			 If RollDiceToTrigger <= INT_ChanceToTrigger   
	            StartTimer(TriggerTime, 0)
	      EndIf
	  EndIf

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)	     
      CleanupStormOnEffectFinish()
EndEvent

Function StartSolarStorm()
	      GV_SolarFlareActive.SetValue(1)  
          PlayerRef.RemoveSpell(SPL_SolarStormWarning)
		  VFX_SolarFlare.Play(PlayerRef, FLT_TimeEnd, None)
			 If CF_HiddenFromEnvironment.IsTrue(PlayerRef, None)
		        SPL_SolarStormSlowmo.cast(PlayerRef, PlayerRef)
				IMAD_SolarFlare.Apply(1.0)
                IMAD_SolarFlare02.Apply(0.95)
                IMAD_SolarFlare03.Apply(0.95)
                SPL_SolarStormEMP.cast(PlayerRef, PlayerRef)
		  EndIf
		  SFX_SolarExplosion.Play(PlayerRef, None, None) 
	      Game.ShakeCamera(PlayerRef, 0.1, 1.5)
          Int RandomTimer = Utility.RandomInt(9, 18)
		  StartTimer(RandomTimer, 2)
 		  StartTimer(0.1, 3)         
EndFunction

Function AdditionalEffectsForTimer()
             If CF_HiddenFromEnvironment.IsTrue(PlayerRef, None)
		        SPL_SolarStormSlowmo.cast(PlayerRef, PlayerRef)
		        Float RandomValue = Utility.RandomFloat(0.2, 1.0)
				IMAD_SolarFlare.Apply(RandomValue)
                IMAD_SolarFlare02.Apply(RandomValue)
                IMAD_SolarFlare03.Apply(RandomValue)
                SPL_SolarStormEMP.cast(PlayerRef, PlayerRef)
		  EndIf
		  SFX_SolarExplosion.Play(PlayerRef, None, None) 
	      Game.ShakeCamera(PlayerRef, 0.1, 1.5)
 		  StartTimer(0.1, 3)
EndFunction

Function CleanupStormOnEffectFinish()	     
         HudBlinkTries = 0
         PlayerRef.RemoveSpell(SPL_SolarStormWarning)	
         Debug.EnableMenus(True)
         Game.SetCharGenHUDMode(0)
         UnregisterForMenuOpenCloseEvent("DataMenu")
         GV_SolarFlareActive.SetValue(0)
         wwiseevent.StopInstance(AlertSoundInstance)
         AlertSoundInstance = -1
         VFX_SolarFlare.Stop(PlayerRef)
         CancelTimer(0)
         CancelTimer(1)
         CancelTimer(2)
         CancelTimer(3)
         CancelTimer(4)
         CancelTimer(6)
         CancelTimer(7)
         CancelTimer(8)
EndFunction

Function CleanupStormFromTimer()	     
         GV_SolarFlareActive.SetValue(0)
         HudBlinkTries = 0
            If CF_HiddenFromEnvironment.IsTrue(PlayerRef, None)
		       SPL_SolarStormSlowmo.cast(PlayerRef, PlayerRef)
			   IMAD_SolarFlare.Apply(1.0)
               IMAD_SolarFlare02.Apply(0.95)
               IMAD_SolarFlare03.Apply(0.95)
               SPL_SolarStormEMP.cast(PlayerRef, PlayerRef)
		 EndIf
         Debug.EnableMenus(True)
         Game.SetCharGenHUDMode(0)
         UnregisterForMenuOpenCloseEvent("DataMenu")
         VFX_SolarFlare.Stop(PlayerRef)
		 SFX_SolarExplosion.Play(PlayerRef, None, None) 
	     Game.ShakeCamera(PlayerRef, 0.1, 1.5)
         wwiseevent.StopInstance(AlertSoundInstance)
         AlertSoundInstance = -1
         CancelTimer(1)
         CancelTimer(2)
         CancelTimer(3)
         CancelTimer(4)
         CancelTimer(6)
         CancelTimer(7)
         CancelTimer(8)
EndFunction