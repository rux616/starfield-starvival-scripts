ScriptName SISA_ReputationFactionQuestComp extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_Reputation Const Auto
ActorValue Property AV_ReputationFaction Const Auto
ActorValue Property AV_ReputationFactionCF Auto Const
ActorValue Property AV_ReputationFactionUC Auto Const
ActorValue Property AV_ReputationFactionFC Auto Const
Message Property MSG_ReputationDisposition Auto Const

Float Property RepAdd = 0.0 Auto
Float Property RepAddFaction = 0.0 Auto
Float Property RepAddFactionPosFleet = 0.0 Auto
Float Property RepAddFactionNegFleet = 0.0 Auto
Float Property RepAddFactionPosSysDef = 0.0 Auto
Float Property RepAddFactionNegSysDef = 0.0 Auto

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)      
	  
	  PlayerRef.RestoreValue(AV_Reputation, RepAdd)
  	  PlayerRef.RestoreValue(AV_ReputationFaction, RepAddFaction)
	  
	  PlayerRef.RestoreValue(AV_Reputation, RepAddFactionPosFleet)
	  PlayerRef.RestoreValue(AV_ReputationFactionCF, RepAddFactionPosFleet)
  	  PlayerRef.DamageValue(AV_ReputationFactionUC, RepAddFactionNegFleet)
  	  PlayerRef.DamageValue(AV_ReputationFactionFC, RepAddFactionNegFleet)      

	  PlayerRef.RestoreValue(AV_Reputation, RepAddFactionPosSysDef)
	  PlayerRef.DamageValue(AV_ReputationFactionCF, RepAddFactionNegSysDef)
  	  PlayerRef.RestoreValue(AV_ReputationFactionUC, RepAddFactionPosSysDef)
  	  PlayerRef.RestoreValue(AV_ReputationFactionFC, RepAddFactionPosSysDef)

	  MSG_ReputationDisposition.Show()

EndEvent