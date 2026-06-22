ScriptName SISA_OutpostBeaconCalcUnlock extends ActiveMagicEffect

GlobalVariable Property GV_OutpostBeaconCalcUnlock Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      GV_OutpostBeaconCalcUnlock.SetValue(0)
EndEvent