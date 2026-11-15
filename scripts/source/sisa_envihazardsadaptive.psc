ScriptName SISA_EnviHazardsAdaptive extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_AdaptiveProtection Auto Const
ActorValue Property AV_CurrentProtection Auto Const
Spell Property SPL_DepletedHUDWatch Auto Const
Quest Property QuestEnviHazards Auto Const
GlobalVariable Property GV_BeepsActive Auto Const

Float Property FLT_DMG = 1.0 Auto
Float Property FLT_Time = 1.0 Auto

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      Float ENVAV = PlayerRef.GetValue(AV_CurrentProtection)
	  Float Time = FLT_Time * (0.5 + 1.5 * (ENVAV / (50 + ENVAV)))
      GV_BeepsActive.SetValue(1)
	  StartTimer(Time, 0)
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      GV_BeepsActive.SetValue(0)
	  SPL_DepletedHUDWatch.Cast(PlayerRef, PlayerRef)
EndEvent

Event OnTimer(int aiTimerID)	 	  	      
     	     If (aiTimerID == 0) 
                Float ENVAV = PlayerRef.GetValue(AV_CurrentProtection)
				Float DMG = FLT_DMG * 1.5 * 50 / (50 + ENVAV)
				Float Time = FLT_Time * (0.5 + 1.8 * (ENVAV / (50 + ENVAV)))
				PlayerRef.DamageValue(AV_AdaptiveProtection, DMG)
				StartTimer(Time, 0)
		  EndIf
EndEvent
