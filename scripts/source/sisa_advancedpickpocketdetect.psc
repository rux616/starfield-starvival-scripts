Scriptname SISA_AdvancedPickpocketDetect extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_CrimsonFleet Auto Const
Spell Property SPL_DetectionFreakOut Auto Const
Quest Property QuestFameAndRep Auto Const

Float Property RepDMG = 1.0 Auto
Float Property RepRestore = 1.0 Auto

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)              
	 Actor WitnessActor = akTarget as Actor	 
	 ActorValue AVCheck = (QuestFameAndRep as SISA_FameAndRepMB).CheckForAVPickpocket()
	 If WitnessActor.HasDetectionLOS(PlayerRef)  
		PlayerRef.DamageValue(AVCheck, RepDMG) 
		PlayerRef.RestoreValue(AV_CrimsonFleet, RepRestore) 
		SPL_DetectionFreakOut.cast(PlayerRef, WitnessActor)
  EndIf
EndEvent