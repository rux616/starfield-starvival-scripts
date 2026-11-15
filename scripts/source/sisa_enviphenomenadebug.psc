ScriptName SISA_EnviPhenomenaDebug extends ActiveMagicEffect

Weather Property TargetWeather Mandatory Const Auto

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)  
	  TargetWeather.SetActive(True, True)
EndEvent