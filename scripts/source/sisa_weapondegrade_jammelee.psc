Scriptname SISA_WeaponDegrade_JamMelee extends ActiveMagicEffect

GlobalVariable Property GV_JamActive Auto Const

Int Property Int_JamActive = 0 Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      GV_JamActive.SetValue(Int_JamActive)
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      ;GV_JamActive.SetValue(0) 
EndEvent	