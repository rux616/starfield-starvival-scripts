Scriptname SISA_CombatSlidePush_GravDash extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_Health Auto Const
GlobalVariable Property GV_Magnitude Auto Const
GlobalVariable Property GV_HealthDMG Auto Const
GlobalVariable Property GV_Mode Auto Const
GlobalVariable Property GV_SlowmoCooldown Auto Const
GlobalVariable Property GV_AdditionalFeedback Auto Const
Spell Property SPL_SlowTime Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, float afMagnitude, float afDuration)
	
	Actor targetActor = akTarget as Actor
	Float Magnitude = GV_Magnitude.GetValue()
	Float HealthDMG = targetActor.GetBaseValue(AV_Health) * GV_HealthDMG.GetValue()
	
	 If targetActor
		AdditionalFeedback()
		akCaster.PushActorAway(targetActor, Magnitude)
	       If GV_Mode.GetValue() == 1 
		      targetActor.DamageValue(AV_Health, HealthDMG)
		EndIf
		GV_SlowmoCooldown.SetValue(1)
		Game.ShakeCamera(PlayerRef, 1.0, 0.5)
		Game.ShakeController(1.0, 1.0, 0.5)
		SPL_SlowTime.Cast(PlayerRef, PlayerRef) 
  EndIf
    
	 If GV_Mode.GetValue() == 1    
		    If targetActor.GetValuePercentage(AV_Health) < 0.15
               targetActor.Kill(PlayerRef)
         EndIf
  EndIf

EndEvent

Function AdditionalFeedback()
        
		If GV_AdditionalFeedback.GetValue() == 1
		   Game.ShakeCamera(PlayerRef, 1.0, 1.0)
		   Game.ShakeController(1.0, 1.0, 1.0)
     EndIf

EndFunction


