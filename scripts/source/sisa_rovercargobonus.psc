ScriptName SISA_RoverCargoBonus extends ActiveMagicEffect

ActorValue Property AV_CargoWeight Auto Const
ObjectReference Property OBJ_Ref Auto Const

Float Property FLT_BonusAmount = 1.0 Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
       OBJ_Ref.ModValue(AV_CargoWeight, FLT_BonusAmount)
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)      
       OBJ_Ref.ModValue(AV_CargoWeight, -FLT_BonusAmount)
EndEvent