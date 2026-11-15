ScriptName SISA_SnowGlobes extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
GlobalVariable Property GV_Trigger Auto Const
Message Property MSG_Congratulations Auto Const
Perk Property PRK_SnowGlobeBonus Auto Const
Spell Property SPL_Remove Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
	  GV_Trigger.SetValue(1)
	  Utility.Wait(1.0)
      PlayerRef.AddPerk(PRK_SnowGlobeBonus, False)
      MSG_Congratulations.Show()
      
	  Utility.Wait(1.0)
      PlayerRef.RemoveSpell(SPL_Remove)

EndEvent