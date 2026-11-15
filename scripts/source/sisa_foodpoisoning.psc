ScriptName SISA_FoodPoisoning extends ActiveMagicEffect

Spell Property SpellToCast const auto mandatory

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)

	  CastSpell()

EndEvent

Function CastSpell()

	      If IsBoundGameObjectAvailable()
		     actor actorRef = GetTargetActor()
		     SpellToCast.cast(actorRef, actorRef)	
	   EndIf

EndFunction