ScriptName SISA_OxygenTracker extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property Oxygen Auto Const
Spell Property OxygenStatus Auto Const Mandatory
Keyword Property DialogueSubTopicToSay Auto Const
GlobalVariable Property OxygenNotificationToggle Auto Const
Message Property MSGOxygenLevels Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
          
		  Float OxygenAmount = PlayerRef.GetValue(Oxygen)
		  
		  If OxygenNotificationToggle.GetValue() == 1
		     MSGOxygenLevels.show(OxygenAmount, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	         PlayerRef.SayCustom(DialogueSubTopicToSay, None, False, None)
	  ElseIf OxygenNotificationToggle.GetValue() == 2
		     OxygenStatus.Cast(PlayerRef, PlayerRef)
			 PlayerRef.SayCustom(DialogueSubTopicToSay, None, False, None)
	  ElseIf OxygenNotificationToggle.GetValue() == 3
		     OxygenStatus.Cast(PlayerRef, PlayerRef)
			 MSGOxygenLevels.show(OxygenAmount, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	         PlayerRef.SayCustom(DialogueSubTopicToSay, None, False, None)
       EndIf

EndEvent