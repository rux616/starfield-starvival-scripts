ScriptName SISA_BasicNeedsWatchHUD extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Spell Property SPL_WatchHUD Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	  Utility.Wait(1.0)
      SPL_WatchHUD.Cast(PlayerRef, PlayerRef)	
EndEvent