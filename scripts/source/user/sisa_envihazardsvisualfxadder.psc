ScriptName SISA_EnviHazardsVisualFXAdder extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Effectshader Property VisualShader Auto Const Mandatory

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
          
		  VisualShader.Play(PlayerRef)   

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
          
		  VisualShader.Stop(PlayerRef)   

EndEvent
