ScriptName SISA_FamePerkPoint extends ActiveMagicEffect

GlobalVariable Property PerkPointTriggered Auto Const

Int Property PerkPoint = 1 Auto Const 

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
	  PerkPointTriggered.SetValue(1)
	  game.AddPerkPoints(PerkPoint)

EndEvent
