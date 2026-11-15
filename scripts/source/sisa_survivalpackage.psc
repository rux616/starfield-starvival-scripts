ScriptName SISA_SurvivalPackage extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
LeveledItem Property Items Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
	  PlayerRef.Additem(Items, 1, True)

EndEvent