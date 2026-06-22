ScriptName SISA_PharmaKitTrigger extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ObjectReference Property PharmaKit Auto Const
Potion Property PharmaKitConsumable Auto Const
Message Property MSG_CombatRestriction Auto Const
GlobalVariable Property GV_CombatRestriction Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)

      If GV_CombatRestriction.GetValue() == 1     
	       If !PlayerRef.IsInCombat()
	          PharmaKit.Activate(PlayerRef, False)
         Else
              PlayerRef.Additem(PharmaKitConsumable, 1, True)
              MSG_CombatRestriction.Show()
        EndIf
   Else
        PharmaKit.Activate(PlayerRef, False)
   EndIf

EndEvent