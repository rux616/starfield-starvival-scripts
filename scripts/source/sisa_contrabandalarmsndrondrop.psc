Scriptname SISA_ContrabandAlarmSNDROnDrop extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Faction Property SecurityFaction Auto Const
Faction Property CrimsonFleetFaction Auto Const
Quest Property QuestFameAndRep Auto Const
GlobalVariable Property GV_ContrabandCaughtRep Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)         
     
	 Actor GuardActor = akTarget as Actor
	 
	 If GuardActor.HasDetectionLOS(PlayerRef) 
			 If GuardActor.IsInFaction(SecurityFaction) && !GuardActor.IsInFaction(CrimsonFleetFaction)
				ActorValue AVCheck = (QuestFameAndRep as SISA_FameAndRepMB).CheckForAVPickpocket()
				Float RepDMGOnCaught = GV_ContrabandCaughtRep.GetValue()
				PlayerRef.DamageValue(AVCheck, RepDMGOnCaught)
				GuardActor.SendSmugglingAlarm(PlayerRef)
		  EndIf
  EndIf

EndEvent