ScriptName SISA_BasicNeedsShowerDevice extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Activator Property ACT_PortableShower Auto Const
Potion Property POTI_PortableShower Auto Const
Message Property MSG_CantAssemble Auto Const
Conditionform Property CF_AssemblingRestrictions Auto Const Mandatory

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	      If CF_AssemblingRestrictions.IsTrue(PlayerRef, None) 
	         MSG_CantAssemble.Show()
	  	     PlayerRef.Additem(POTI_PortableShower, 1, False)
	   Else
	         PlayerRef.Placeatme(ACT_PortableShower, 1, False, False, True, None, None, True)
       EndIf
EndEvent