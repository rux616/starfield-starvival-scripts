Scriptname SISA_Pocketpants_DetectionEvent extends ActiveMagicEffect

Actor Property PlayerRef Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)         

     If PlayerRef.IsDetectedBy(akCaster) 
        akCaster.StartCombat(PlayerRef, False)
        ;akCaster.SendStealAlarm(PlayerRef)
  Else
        Utility.Wait(3.0)
		PlayerRef.CreateDetectionEvent(akCaster, 100)
  EndIf

EndEvent  