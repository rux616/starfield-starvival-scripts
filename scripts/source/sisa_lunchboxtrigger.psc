ScriptName SISA_LunchboxTrigger extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ObjectReference Property Lunchbox Auto Const
Potion Property LunchboxConsumable Auto Const
Message Property MSG_CombatRestriction Auto Const
GlobalVariable Property GV_CombatRestriction Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
      If GV_CombatRestriction.GetValue() == 1     
	       If !PlayerRef.IsInCombat()
	          Lunchbox.Activate(PlayerRef, False)
         Else
              PlayerRef.Additem(LunchboxConsumable, 1, True)
              MSG_CombatRestriction.Show()
        EndIf
   Else
        Lunchbox.Activate(PlayerRef, False)
   EndIf

EndEvent