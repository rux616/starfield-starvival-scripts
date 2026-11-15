ScriptName SISA_BasicNeedsStealthSmellAlarm extends ActiveMagicEffect

Actor Property PlayerRef Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)         
	  PlayerRef.CreateDetectionEvent(PlayerRef, 30)			       
EndEvent			