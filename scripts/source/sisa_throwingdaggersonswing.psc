ScriptName SISA_ThrowingDaggersOnSwing extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
String Property AnimEvent Auto Const
Spell Property SPL_ThrowDagger Auto Const
Weapon Property WPN_Dagger Auto Const

Actor Target

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	  Target = akTarget as Actor
	  RegisterForAnimationEvent(PlayerRef, AnimEvent) 
EndEvent

Event OnAnimationEvent(ObjectReference akSource, string asEventName)
     	      
	 If(asEventName == AnimEvent)	        		  		  
		ThrowDagger()
  EndIf

EndEvent

Function ThrowDagger()
		 Utility.Wait(0.18)
		 SPL_ThrowDagger.Cast(PlayerRef, Target)
         PlayerRef.RemoveItem(WPN_Dagger, 1, False, None)
EndFunction