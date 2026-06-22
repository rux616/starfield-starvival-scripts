ScriptName SISA_EnviPhenomenaDispel extends ActiveMagicEffect

Spell Property SPL_Dispel Const Auto
GlobalVariable Property GV_PhenomenaActive Auto Const

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)  
	  If GV_PhenomenaActive.GetValue() == 0
	     akTarget.DispelSpell(SPL_Dispel)
   EndIf
EndEvent