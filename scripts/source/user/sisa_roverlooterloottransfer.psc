ScriptName SISA_RoverLooterLootTransfer extends ActiveMagicEffect

Armor Property LooterBlockToken Auto Const
ObjectReference Property RoverTrunk Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
       
	  akTarget.RemoveAllItems(RoverTrunk, False, False)
	  
	  If akTarget.GetItemCount(LooterBlockToken) <= 0
	     akTarget.AddItem(LooterBlockToken, 1, True)
   EndIf

EndEvent
