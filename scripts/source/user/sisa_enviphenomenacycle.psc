ScriptName SISA_EnviPhenomenaCycle extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
GlobalVariable Property GV_StormActive Auto Const
GlobalVariable Property GV_AnomalyActive Auto Const
ImageSpaceModifier Property IMAD_Type1 Auto Const
ImageSpaceModifier Property IMAD_Type2 Auto Const
Spell Property SPL_StormSlowmo Const Auto
wwiseevent Property SFX_StormExplosion Auto Const

Float Property FLT_TimeEnd = 1.0 const auto

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)  
      StartWeatherEffects()
EndEvent

Event OnTimer(int aiTimerID)
                         		 
		 If (aiTimerID == 0) 
			 CleanupWeatherFromTimer()
	  EndIf

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)	     
      CleanupWeatherOnEffectFinish()
EndEvent

Function StartWeatherEffects()
	     StartTimer(FLT_TimeEnd, 0)
	     GV_StormActive.SetValue(1)
		 SPL_StormSlowmo.cast(PlayerRef, PlayerRef)
		 IMAD_Type1.Apply(0.5)
         IMAD_Type2.Apply(0.5)
         SFX_StormExplosion.Play(PlayerRef, None, None) 
	     Game.ShakeCamera(PlayerRef, 3.0, 3.0)       
EndFunction

Function CleanupWeatherOnEffectFinish()
         GV_StormActive.SetValue(0)
         GV_AnomalyActive.SetValue(0)
         Weather.ReleaseOverride()
EndFunction

Function CleanupWeatherFromTimer()
		 GV_StormActive.SetValue(0)
         GV_AnomalyActive.SetValue(0)
		 Weather.ReleaseOverride()
		 SPL_StormSlowmo.cast(PlayerRef, PlayerRef)
		 IMAD_Type1.Apply(0.5)
         IMAD_Type2.Apply(0.5)
         SFX_StormExplosion.Play(PlayerRef, None, None) 
	     Game.ShakeCamera(PlayerRef, 3.0, 3.0) 
EndFunction