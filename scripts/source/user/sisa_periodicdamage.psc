ScriptName SISA_PeriodicDamage extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property Health Auto Const
Spell Property SpellToCast const auto mandatory
Float Property CastTimerInterval = 45.0 const auto

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)

	  StartTimer(CastTimerInterval, 0)

EndEvent

Function CastSpellAndStartTimer()

	      If IsBoundGameObjectAvailable()
		     actor actorRef = GetTargetActor()
	         Float DMGHealth = PlayerRef.GetBaseValue(Health) * 0.06
	         PlayerRef.DamageValue(Health, DMGHealth)
			 Game.ShakeCamera(PlayerRef, 0.3, 0.3)
             Game.ShakeController(0.3, 0.3, 0.3)
		     SpellToCast.cast(actorRef, actorRef)	
             StartTimer(CastTimerInterval, 0)
	   EndIf

EndFunction

Event OnTimer(int aiTimerID)

      	 If (aiTimerID == 0) 
	        CastSpellAndStartTimer()
      EndIf

EndEvent