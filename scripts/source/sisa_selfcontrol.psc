Scriptname SISA_SelfControl extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_SelfControl Auto Const

Float Property FLT_ShakeTime = 1.0 Auto Const
Float Property FLT_ShakePower = 1.0 Auto Const
Float Property FLT_ShakeMotor = 1.0 Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, float afMagnitude, float afDuration)

	  StartTimer(0, 0)

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, float afMagnitude, float afDuration)
  		
		CancelTimer(0)

EndEvent

Event OnTimer(int aiTimerID)
       
	   If aiTimerID == 0
                     
          Game.ShakeCamera(PlayerRef, FLT_ShakePower, FLT_ShakeTime)
          Game.ShakeController(FLT_ShakeMotor, FLT_ShakeMotor, FLT_ShakeTime)
          StartTimer(1, 0)
	
	EndIf

EndEvent
