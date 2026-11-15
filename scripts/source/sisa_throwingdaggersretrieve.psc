ScriptName SISA_ThrowingDaggersRetrieve extends ActiveMagicEffect

Quest Property QuestMaintenance Auto Const
Actor Property PlayerRef Auto Const
Weapon Property WPN_ThrowingDagger Auto Const
MiscObject Property DaggerCheckToken Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	     If PlayerRef.GetItemCount(DaggerCheckToken) <= 0
	        PlayerRef.Additem(DaggerCheckToken, 1, True)
	        akTarget.Additem(WPN_ThrowingDagger, 1, True)
	        (QuestMaintenance as SISA_Survival).DaggerCheck()
	  EndIf
EndEvent