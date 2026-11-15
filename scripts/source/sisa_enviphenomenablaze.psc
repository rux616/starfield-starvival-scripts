ScriptName SISA_EnviPhenomenaBlaze extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
GlobalVariable Property GV_ShatteringBlazeActive Auto Const
ImageSpaceModifier Property IMAD_ShatteringBlaze Auto Const
ImageSpaceModifier Property IMAD_ShatteringBlaze02 Auto Const
Spell Property SPL_ShatteringBlazeDMG Const Auto
Spell Property SPL_ShatteringBlazeWarning Const Auto
Spell Property SPL_ShatteringBlazeSlowmo Const Auto
wwiseevent Property SFX_ShatteringBlazeExplosion Auto Const
wwiseevent Property SFX_ShatteringBlazeWarning Auto Const
Conditionform Property CF_HiddenFromEnvironment Auto Const Mandatory
VisualEffect Property VFX_ShatteringBlaze Auto Const mandatory

Float Property FLT_TimeCycleMin = 1.0 const auto
Float Property FLT_TimeCycleMax = 1.0 const auto
Float Property FLT_TimeTillTrigger = 1.0 const auto
Float Property FLT_TimeEnd = 1.0 const auto
Int Property INT_ChanceToTrigger = 1 const auto

Int AlertSoundInstance = -1

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)  
	  StartTimer(10, 6)
EndEvent

Event OnTimer(int aiTimerID)
                         		 
		 If (aiTimerID == 0) 
			 If GV_ShatteringBlazeActive.GetValue() == 0    
				PlayerRef.AddSpell(SPL_ShatteringBlazeWarning, False)
				StartTimer(0, 4)
				StartTimer(FLT_TimeTillTrigger, 3)
		  EndIf
     ElseIf (aiTimerID == 1) 
             CleanupStormFromTimer()
     ElseIf (aiTimerID == 2) 
	         If GV_ShatteringBlazeActive.GetValue() == 1 
	            AdditionalEffectsForTimer()
	            StartTimer(5, 2)
          EndIf	 
	 ElseIf (aiTimerID == 3) 
				    StartShatteringBlaze()
                    wwiseevent.StopInstance(AlertSoundInstance)
		            AlertSoundInstance = -1
			        StartTimer(FLT_TimeEnd, 1) 
	 ElseIf (aiTimerID == 4) 
	         If GV_ShatteringBlazeActive.GetValue() == 0 
                AlertSoundInstance = SFX_ShatteringBlazeWarning.Play(PlayerRef, None, None)
			    StartTimer(2, 5)
         Else
                wwiseevent.StopInstance(AlertSoundInstance)
		        AlertSoundInstance = -1
          EndIf
	 ElseIf (aiTimerID == 5) 
	         If GV_ShatteringBlazeActive.GetValue() == 0 
                wwiseevent.StopInstance(AlertSoundInstance)
		        AlertSoundInstance = -1
			    StartTimer(2, 4)
         Else
                wwiseevent.StopInstance(AlertSoundInstance)
		        AlertSoundInstance = -1
          EndIf
	 ElseIf (aiTimerID == 6) 
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

Function StartShatteringBlaze()
	      GV_ShatteringBlazeActive.SetValue(1)  
          PlayerRef.RemoveSpell(SPL_ShatteringBlazeWarning)
		  SPL_ShatteringBlazeSlowmo.cast(PlayerRef, PlayerRef)
          SPL_ShatteringBlazeDMG.cast(PlayerRef, PlayerRef)
		  SFX_ShatteringBlazeExplosion.Play(PlayerRef, None, None) 
             If CF_HiddenFromEnvironment.IsTrue(PlayerRef, None)
		        VFX_ShatteringBlaze.Play(PlayerRef, FLT_TimeEnd, None)
		        IMAD_ShatteringBlaze.Apply(0.5)
                IMAD_ShatteringBlaze02.Apply(0.5)
          EndIf
		  StartTimer(5, 2)         
EndFunction

Function AdditionalEffectsForTimer()
             If CF_HiddenFromEnvironment.IsTrue(PlayerRef, None)
		        Float RandomValue = Utility.RandomFloat(0.2, 0.5)
		        VFX_ShatteringBlaze.Play(PlayerRef, FLT_TimeEnd, None)
				IMAD_ShatteringBlaze.Apply(RandomValue)
                IMAD_ShatteringBlaze02.Apply(RandomValue)
		  EndIf
EndFunction

Function CleanupStormOnEffectFinish()	     
         PlayerRef.RemoveSpell(SPL_ShatteringBlazeWarning)	
         GV_ShatteringBlazeActive.SetValue(0)
         wwiseevent.StopInstance(AlertSoundInstance)
         AlertSoundInstance = -1
         VFX_ShatteringBlaze.Stop(PlayerRef)
         CancelTimer(0)
         CancelTimer(1)
         CancelTimer(2)
         CancelTimer(3)
         CancelTimer(4)
         CancelTimer(5)
         CancelTimer(6)
EndFunction

Function CleanupStormFromTimer()	     
         GV_ShatteringBlazeActive.SetValue(0)
            If CF_HiddenFromEnvironment.IsTrue(PlayerRef, None)
		       SPL_ShatteringBlazeSlowmo.cast(PlayerRef, PlayerRef)
			   IMAD_ShatteringBlaze.Apply(0.5)
               IMAD_ShatteringBlaze02.Apply(0.5)
		 EndIf
         VFX_ShatteringBlaze.Stop(PlayerRef)
		 SFX_ShatteringBlazeExplosion.Play(PlayerRef, None, None) 
	     Game.ShakeCamera(PlayerRef, 0.1, 1.5)
         wwiseevent.StopInstance(AlertSoundInstance)
         AlertSoundInstance = -1
         CancelTimer(1)
         CancelTimer(2)
         CancelTimer(3)
         CancelTimer(4)
         CancelTimer(5)
         CancelTimer(6)
EndFunction