Scriptname SISA_RejuvenationReviveGhost extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_Health Auto Const
Conditionform Property CFRejuvenationRank01 Auto Const Mandatory
Conditionform Property CFRejuvenationRank02 Auto Const Mandatory
Conditionform Property CFRejuvenationRank03 Auto Const Mandatory
Conditionform Property CFRejuvenationRank04 Auto Const Mandatory

Float Property FLT_HPRestorePercentage01 = 1.0 Auto Const
Float Property FLT_HPRestorePercentage02 = 1.0 Auto Const
Float Property FLT_HPRestorePercentage03 = 1.0 Auto Const
Float Property FLT_HPRestorePercentage04 = 1.0 Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)         
	  Float ChoosePercentage = HPRestorationAmount()
	  Float RestoreAmount = PlayerRef.GetBaseValue(AV_Health) * ChoosePercentage
	  PlayerRef.RestoreValue(AV_Health, RestoreAmount)
	  PlayerRef.SetGhost()
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)         
	  PlayerRef.SetGhost(False)	
EndEvent

Float Function HPRestorationAmount() 		
		If CFRejuvenationRank04.IsTrue(PlayerRef, None)    
		   Return FLT_HPRestorePercentage04 
	ElseIf CFRejuvenationRank03.IsTrue(PlayerRef, None)  
	       Return FLT_HPRestorePercentage03
	ElseIf CFRejuvenationRank02.IsTrue(PlayerRef, None)  	 
           Return FLT_HPRestorePercentage02
	ElseIf CFRejuvenationRank01.IsTrue(PlayerRef, None) 
           Return FLT_HPRestorePercentage01
     EndIf
EndFunction