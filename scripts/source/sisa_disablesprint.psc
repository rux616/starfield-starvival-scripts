ScriptName SISA_DisableSprint extends ActiveMagicEffect

bool Property DisableSprinting const auto
bool Property DisableRunning const auto

InputEnableLayer inputLayer

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	inputLayer = InputEnableLayer.Create()

	if DisableRunning
		inputLayer.EnableRunning(false)
	elseif DisableSprinting
		inputLayer.EnableSprinting(false)
	endif

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	inputLayer.EnableRunning(true)
	inputLayer.EnableSprinting(true)
EndEvent

                      