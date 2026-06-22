ScriptName SISA_EnviPhenomenaFrost extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
GlobalVariable Property GV_PermafrostActive Auto Const
ImageSpaceModifier Property IMAD_Permafrost Auto Const
ImageSpaceModifier Property IMAD_Permafrost02 Auto Const
Spell Property SPL_PermafrostDMG Const Auto
Spell Property SPL_PermafrostWarning Const Auto
Spell Property SPL_PermafrostSlowmo Const Auto
wwiseevent Property SFX_PermafrostExplosion Auto Const
wwiseevent Property SFX_PermafrostWarning Auto Const
Conditionform Property CF_HiddenFromEnvironment Auto Const Mandatory
VisualEffect Property VFX_Permafrost Auto Const mandatory

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
			 If GV_PermafrostActive.GetValue() == 0    
				PlayerRef.AddSpell(SPL_PermafrostWarning, False)
				StartTimer(0, 4)
				StartTimer(FLT_TimeTillTrigger, 3)
		  EndIf
     ElseIf (aiTimerID == 1) 
             CleanupStormFromTimer()
     ElseIf (aiTimerID == 2) 
	         If GV_PermafrostActive.GetValue() == 1 
				Int RandomTimer = Utility.RandomInt(15, 45)
	            AdditionalEffectsForTimer()
	            StartTimer(RandomTimer, 2)
          EndIf	 
	 ElseIf (aiTimerID == 3) 
				    StartPermafrost()
                    wwiseevent.StopInstance(AlertSoundInstance)
		            AlertSoundInstance = -1
			        StartTimer(FLT_TimeEnd, 1) 
	 ElseIf (aiTimerID == 4) 
	         If GV_PermafrostActive.GetValue() == 0 
                AlertSoundInstance = SFX_PermafrostWarning.Play(PlayerRef, None, None)
			    StartTimer(2, 5)
         Else
                wwiseevent.StopInstance(AlertSoundInstance)
		        AlertSoundInstance = -1
          EndIf
	 ElseIf (aiTimerID == 5) 
	         If GV_PermafrostActive.GetValue() == 0 
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

Function StartPermafrost()
	      GV_PermafrostActive.SetValue(1)  
          PlayerRef.RemoveSpell(SPL_PermafrostWarning)
		  SFX_PermafrostExplosion.Play(PlayerRef, None, None) 
		  SPL_PermafrostSlowmo.cast(PlayerRef, PlayerRef)
          SPL_PermafrostDMG.cast(PlayerRef, PlayerRef)
	      Game.ShakeCamera(PlayerRef, 0.2, 3.0)
             If CF_HiddenFromEnvironment.IsTrue(PlayerRef, None)
		        VFX_Permafrost.Play(PlayerRef, FLT_TimeEnd, None)
		        IMAD_Permafrost.Apply(0.8)
                IMAD_Permafrost02.Apply(0.8)
          EndIf
		  StartTimer(30, 2)         
EndFunction

Function AdditionalEffectsForTimer()
             If CF_HiddenFromEnvironment.IsTrue(PlayerRef, None)
		        Float RandomValue = Utility.RandomFloat(0.4, 0.8)
		        VFX_Permafrost.Play(PlayerRef, FLT_TimeEnd, None)
				IMAD_Permafrost.Apply(RandomValue)
                IMAD_Permafrost02.Apply(RandomValue)
                SFX_PermafrostExplosion.Play(PlayerRef, None, None)
	            Game.ShakeCamera(PlayerRef, 0.2, 3.0)
		  EndIf
EndFunction

Function CleanupStormOnEffectFinish()	     
         PlayerRef.RemoveSpell(SPL_PermafrostWarning)	
         GV_PermafrostActive.SetValue(0)
         wwiseevent.StopInstance(AlertSoundInstance)
         AlertSoundInstance = -1
         VFX_Permafrost.Stop(PlayerRef)
         CancelTimer(0)
         CancelTimer(1)
         CancelTimer(2)
         CancelTimer(3)
         CancelTimer(4)
         CancelTimer(5)
         CancelTimer(6)
EndFunction

Function CleanupStormFromTimer()	     
         GV_PermafrostActive.SetValue(0)
            If CF_HiddenFromEnvironment.IsTrue(PlayerRef, None)
		       SPL_PermafrostSlowmo.cast(PlayerRef, PlayerRef)
			   IMAD_Permafrost.Apply(0.8)
               IMAD_Permafrost02.Apply(0.8)
		 EndIf
         VFX_Permafrost.Stop(PlayerRef)
		 SFX_PermafrostExplosion.Play(PlayerRef, None, None) 
	     Game.ShakeCamera(PlayerRef, 0.2, 3.0)
         wwiseevent.StopInstance(AlertSoundInstance)
         AlertSoundInstance = -1
         CancelTimer(1)
         CancelTimer(2)
         CancelTimer(3)
         CancelTimer(4)
         CancelTimer(5)
         CancelTimer(6)
EndFunction