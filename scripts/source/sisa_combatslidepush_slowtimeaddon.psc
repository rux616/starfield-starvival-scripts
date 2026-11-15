Scriptname SISA_CombatSlidePush_SlowTimeAddon extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_AnimSpeed Auto Const
GlobalVariable Property GV_SlowmoMag Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, float afMagnitude, float afDuration)	
	  AnimationSpeedMod()
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      AnimationSpeedReset()
EndEvent

Function AnimationSpeedMod()
        
		Float AnimSpeed = GV_SlowmoMag.GetValue() * 100
        Float fMotion = PlayerRef.GetValue(AV_AnimSpeed) - AnimSpeed
        PlayerRef.ModValue(AV_AnimSpeed, -fMotion)

Endfunction

Function AnimationSpeedReset()

        Float fMotionRestore = 100 - PlayerRef.GetValue(AV_AnimSpeed)
        PlayerRef.ModValue(AV_AnimSpeed, fMotionRestore)

Endfunction
