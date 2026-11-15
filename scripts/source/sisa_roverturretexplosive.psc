ScriptName SISA_RoverTurretExplosive extends ActiveMagicEffect

Ammo Property AMMO_HornetCluster Auto Const
Explosion Property Explo_Heavyblast Auto Const
ObjectReference Property OBJ_SystemBlock Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
	  If OBJ_SystemBlock.GetItemCount(AMMO_HornetCluster) > 0
	     OBJ_SystemBlock.RemoveItem(AMMO_HornetCluster, 1, True, None)
		 akTarget.Placeatme(Explo_Heavyblast, 1, False, false, true, none, none, True)
   EndIf

EndEvent
