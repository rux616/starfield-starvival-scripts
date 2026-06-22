ScriptName SISA_EnviPhenomenaSolarRBT extends ActiveMagicEffect

Explosion Property ElectricExplosion Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)      
	    Actor Target = akTarget as Actor		
		Target.Placeatme(ElectricExplosion, 1, False, false, true, none, none, True)   
	    Target.SetUnconscious(True)
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)     
	    Actor Target = akTarget as Actor
		Target.SetUnconscious(False) 
EndEvent 

