ScriptName SISA_EnviHazardsSoakTracker extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property SOAK Auto Const
Spell Property SOAKStatus Auto Const Mandatory
GlobalVariable Property SOAKNotificationToggle Auto Const
Message Property MSGSOAKLevels Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
          
		  Float SoakAmount = PlayerRef.GetValue(SOAK)
		  
		  If SOAKNotificationToggle.GetValue() == 1
		     MSGSOAKLevels.show(SoakAmount, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	  ElseIf SOAKNotificationToggle.GetValue() == 2
		     SOAKStatus.Cast(PlayerRef, PlayerRef)
	  ElseIf SOAKNotificationToggle.GetValue() == 3
		     SOAKStatus.Cast(PlayerRef, PlayerRef)
			 MSGSOAKLevels.show(SoakAmount, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
       EndIf

EndEvent
