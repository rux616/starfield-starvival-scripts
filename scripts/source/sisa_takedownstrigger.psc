Scriptname SISA_TakedownsTrigger extends ActiveMagicEffect

Quest Property QST_TakedownsMain Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)            
	  (QST_TakedownsMain as SISA_TakedownsQuest).Execute() 	           
EndEvent
