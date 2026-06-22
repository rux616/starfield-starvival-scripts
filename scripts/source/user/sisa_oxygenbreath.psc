ScriptName SISA_OxygenBreath extends ActiveMagicEffect

Float Property CastTimerIntervalAudio = 10.0 const auto
Actor Property PlayerRef Auto const
Keyword Property DialogueSubTopicToSay Auto const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)

	  StartTimer(CastTimerIntervalAudio, 0)

EndEvent

Event OnTimer(int aiTimerID)

         If (aiTimerID == 0) 
			PlayerRef.SayCustom(DialogueSubTopicToSay, None, False, None)
			StartTimer(CastTimerIntervalAudio, 0)
	  EndIf

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)

	  CancelTimer(0)

EndEvent