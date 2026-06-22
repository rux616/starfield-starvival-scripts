ScriptName SISA_EnviPhenomenaAgroFlora extends ObjectReference

Actor Property PlayerRef Auto Const
Spell Property SPL_Effect Const Auto
GlobalVariable Property GV_AgrophonicResonanceActive Auto Const
Explosion Property EXPL_Poison Auto Const

Event OnActivate(ObjectReference akActionRef)

    If akActionRef == PlayerRef
       		If GV_AgrophonicResonanceActive.GetValue() == 1  
			     Int PoisonChance = Utility.RandomInt(0, 100)
				 If PoisonChance <= 35
			        Placeatme(EXPL_Poison, 1, False, false, true, none, none, True)
					SPL_Effect.cast(PlayerRef, PlayerRef)
		      EndIf
		 EndIf
 EndIf

EndEvent