ScriptName SISA_BasicNeedsFieldHygiene extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_Hygiene Auto Const
Message Property MSG_LimitExceeded Auto Const
Potion Property POTI_FieldHygiene Auto Const
Keyword Property DialogueSubTopicToSay Auto const

Float Property FLT_BaseRestoreAmount = 20.0 Auto

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
       
	   If PlayerRef.GetValue(AV_Hygiene) >= 70 
          MSG_LimitExceeded.Show()
		  PlayerRef.Additem(POTI_FieldHygiene, 1, True)
		  Return
	EndIf
	   
	   PlayerRef.RestoreValue(AV_Hygiene, FLT_BaseRestoreAmount)
	   PlayerRef.SayCustom(DialogueSubTopicToSay, None, False, None)
	   
	   Float TotalHygiene = PlayerRef.GetValue(AV_Hygiene)
	   Float Compensate = 0.0
	   If TotalHygiene > 70.0
          Compensate = TotalHygiene - 70.0
 	      PlayerRef.DamageValue(AV_Hygiene, Compensate)         
    EndIf

EndEvent
