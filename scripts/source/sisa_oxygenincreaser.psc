ScriptName SISA_OxygenIncreaser extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property Oxygen Auto Const

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
      If PlayerRef.GetValue(Oxygen) > 100  
         PlayerRef.DamageValue(Oxygen, 99999)
         PlayerRef.RestoreValue(Oxygen, 100)
   EndIf

EndEvent