ScriptName SISA_OxygenDamage extends ActiveMagicEffect

Float Property CastTimerInterval = 1.0 const auto
Float Property CastTimerIntervalAudio = 2.0 const auto
Actor Property PlayerRef Auto const
ActorValue Property EnvDamage Auto const
ActorValue Property Oxygen Auto const
Keyword Property DialogueSubTopicToSay Auto const
ImageSpaceModifier Property theImod Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)

	  StartTimer(CastTimerInterval, 0)
	  StartTimer(CastTimerIntervalAudio, 1)

EndEvent

Event OnTimer(int aiTimerID)

      	 If (aiTimerID == 0) 
	          If PlayerRef.GetValue(Oxygen) <= 0
                 PlayerRef.DamageValue(EnvDamage, 2.5)
	             theImod.Apply(1.0)
				 StartTimer(CastTimerInterval, 0)
	       EndIf

     ElseIf (aiTimerID == 1) 
	          If PlayerRef.GetValue(Oxygen) <= 0
				 PlayerRef.SayCustom(DialogueSubTopicToSay, None, False, None)
				 StartTimer(CastTimerIntervalAudio, 1)
	       EndIf
	  EndIf

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)

	  CancelTimer(0)
	  CancelTimer(1)
      theImod.Remove()

EndEvent