ScriptName SISA_Intoxication extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Spell Property SpellToCast const auto mandatory
wwiseevent Property SoundEvent Auto Const
ImageSpaceModifier Property theImod Auto Const
Message Property Notification Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)

	  CastSpellAndStartTimer()

EndEvent

Function CastSpellAndStartTimer()

	      If IsBoundGameObjectAvailable()
		     actor actorRef = GetTargetActor()
		     SpellToCast.cast(actorRef, actorRef)	
             SoundEvent.Play(PlayerRef, None, None)
             theImod.Apply(1.0)
             ;Notification.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	   EndIf

EndFunction