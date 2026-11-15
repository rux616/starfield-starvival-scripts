ScriptName SISA_ConcealmentVisualOutroFX extends ActiveMagicEffect

Effectshader Property ConcealmentOutroFX Auto Const

Bool ConcealmentVFX = false

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
		
		      Actor TargetActor = akTarget As Actor 	  
			
		      If ConcealmentVFX == False							                                   
                 ConcealmentOutroFX.Play(TargetActor)
                 ConcealmentVFX = True
		   EndIf

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
        
		      Actor TargetActor = akTarget As Actor
						
		      If ConcealmentVFX == True									                                   
                 ConcealmentOutroFX.Stop(TargetActor)
                 ConcealmentVFX = False
           EndIf

EndEvent

		        