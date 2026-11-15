ScriptName SISA_AdrenalineAftermath extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Spell Property SPL_AdrenalineAftermath Auto Const
GlobalVariable Property GV_DebuffChance Auto Const

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
                      
           int TriggerChance = Utility.RandomInt(1, 100)
           int DebuffChance = GV_DebuffChance.GetValueInt()
		   
		    If TriggerChance < DebuffChance    
               PlayerRef.AddSpell(SPL_AdrenalineAftermath, False)
         EndIf

EndEvent