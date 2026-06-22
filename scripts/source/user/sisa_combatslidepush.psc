Scriptname SISA_CombatSlidePush extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
GlobalVariable Property GV_Magnitude Auto Const
GlobalVariable Property GV_SlowmoCooldown Auto Const
GlobalVariable Property GV_AdditionalFeedback Auto Const
Spell Property SPL_SlowTime Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, float afMagnitude, float afDuration)
	
	Actor targetActor = akTarget as Actor
	Float Magnitude = GV_Magnitude.GetValue()
	
	 If targetActor
		AdditionalFeedback()
		akCaster.PushActorAway(targetActor, Magnitude)
		GV_SlowmoCooldown.SetValue(1)
		SPL_SlowTime.Cast(PlayerRef, PlayerRef) 
  EndIf

EndEvent

Function AdditionalFeedback()
        
		If GV_AdditionalFeedback.GetValue() == 1
		   Game.ShakeCamera(PlayerRef, 0.7, 0.7)
		   Game.ShakeController(2.0, 2.0, 1.0)
     EndIf

EndFunction
