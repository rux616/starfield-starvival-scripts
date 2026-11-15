ScriptName SISA_NeedsStatus extends ActiveMagicEffect

Message Property NeedsStatus Auto Const
Message Property NeedsStatus02 Auto Const
GlobalVariable Property NeedsCheckerImmersiveMode Auto Const
GlobalVariable Property NeedsCheckerNotificationType Auto Const
Quest Property QuestBasicNeeds Auto Const
Actor Property PlayerRef Auto Const
ActorValue Property NeedType Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
        
	If NeedsCheckerNotificationType.GetValue() == 2
       
           If NeedsCheckerImmersiveMode.GetValue() == 1
	          NeedsStatus.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
      Else
              BasicNeedsMessagingStage()
        EndIf

EndIf

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)

    If NeedsCheckerNotificationType.GetValue() == 2

           If NeedsCheckerImmersiveMode.GetValue() == 1
	          NeedsStatus.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
                If PlayerRef.GetValue(NeedType) >=75
	               NeedsStatus02.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	         EndIf
	  Else
              BasicNeedsMessagingStage()
                If PlayerRef.GetValue(NeedType) >=75
	               NeedsStatus02.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	         EndIf
        EndIf

EndIf

EndEvent

Function BasicNeedsMessagingStage()
	   SISA_BasicNeeds BasicNeedsScript = QuestBasicNeeds as SISA_BasicNeeds
       If BasicNeedsScript
          BasicNeedsScript.NeedsMessagingSystemStage()
    EndIf
EndFunction


