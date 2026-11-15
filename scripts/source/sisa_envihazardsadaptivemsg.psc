ScriptName SISA_EnviHazardsAdaptiveMSG extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_AdaptiveProtectionAirborne Auto Const
ActorValue Property AV_AdaptiveProtectionCorrosive Auto Const
ActorValue Property AV_AdaptiveProtectionRadiation Auto Const
ActorValue Property AV_AdaptiveProtectionThermal Auto Const
Quest Property QuestEnviHazards Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	  RegisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveProtectionAirborne)
	  RegisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveProtectionCorrosive)
	  RegisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveProtectionRadiation)
	  RegisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveProtectionThermal)
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	  UnregisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveProtectionAirborne)
	  UnregisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveProtectionCorrosive)
	  UnregisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveProtectionRadiation)
	  UnregisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveProtectionThermal)
EndEvent

Event OnActorValueChanged(ObjectReference akObjRef, ActorValue akActorValue)    
	   
	   If akObjRef == PlayerRef && akActorValue == AV_AdaptiveProtectionAirborne
	      RegisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveProtectionAirborne)
          MSGPopUp(AV_AdaptiveProtectionAirborne)
   ElseIf akObjRef == PlayerRef && akActorValue == AV_AdaptiveProtectionCorrosive
	      RegisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveProtectionCorrosive)
          MSGPopUp(AV_AdaptiveProtectionCorrosive)
   ElseIf akObjRef == PlayerRef && akActorValue == AV_AdaptiveProtectionRadiation
	      RegisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveProtectionRadiation)
          MSGPopUp(AV_AdaptiveProtectionRadiation)
   ElseIf akObjRef == PlayerRef && akActorValue == AV_AdaptiveProtectionThermal
	      RegisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveProtectionThermal)
          MSGPopUp(AV_AdaptiveProtectionThermal)
    EndIf

EndEvent

Function MSGPopUp(ActorValue AV)
				 If PlayerRef.GetValuePercentage(AV) < 0.1			
				    (QuestEnviHazards as SISA_EnviHazardsQuest).AdapterNotificationChecks()	          
			 ElseIf PlayerRef.GetValuePercentage(AV) < 0.2		  
				    (QuestEnviHazards as SISA_EnviHazardsQuest).AdapterNotificationChecks()
			 ElseIf PlayerRef.GetValuePercentage(AV) < 0.3				  
				    (QuestEnviHazards as SISA_EnviHazardsQuest).AdapterNotificationChecks()
			 ElseIf PlayerRef.GetValuePercentage(AV) < 0.4				  
                    (QuestEnviHazards as SISA_EnviHazardsQuest).AdapterNotificationChecks()
			 ElseIf PlayerRef.GetValuePercentage(AV) < 0.5	
                    (QuestEnviHazards as SISA_EnviHazardsQuest).AdapterNotificationChecks() 
			 ElseIf PlayerRef.GetValuePercentage(AV) == 1.0	
                    (QuestEnviHazards as SISA_EnviHazardsQuest).AdapterNotificationChecks() 
		      EndIf
EndFunction
