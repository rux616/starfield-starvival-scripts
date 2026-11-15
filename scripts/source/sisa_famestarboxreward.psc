ScriptName SISA_FameStarboxReward extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Container Property StarboxContainer Auto Const
LeveledItem Property FameLegendaryItem Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)      
	  PlayerRef.Placeatme(StarboxContainer as Form, 1, False, False, True, None, None, True)
	  PlayerRef.Additem(FameLegendaryItem, 1, True)
EndEvent
