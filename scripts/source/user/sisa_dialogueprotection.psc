ScriptName SISA_DialogueProtection extends ActiveMagicEffect

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      	 
         Debug.SetGodMode(true)		          

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
         
		 Debug.SetGodMode(false)	 

EndEvent

