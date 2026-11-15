Scriptname SISA_RejuvenationRevive extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Spell Property SPL_Revive Auto Const
Quest Property QST_Maintenance Auto Const
Conditionform Property CFRejuvenationRank01 Auto Const Mandatory
Conditionform Property CFRejuvenationRank02 Auto Const Mandatory
Conditionform Property CFRejuvenationRank03 Auto Const Mandatory
Conditionform Property CFRejuvenationRank04 Auto Const Mandatory
GlobalVariable Property GV_GhostDuration Auto Const

Float Property FLT_GhostDuration01 = 1.0 Auto Const
Float Property FLT_GhostDuration02 = 1.0 Auto Const
Float Property FLT_GhostDuration03 = 1.0 Auto Const
Float Property FLT_GhostDuration04 = 1.0 Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)         
      Float SetDuration = GhostDuration()
	  GV_GhostDuration.SetValue(SetDuration)
	  SPL_Revive.Cast(PlayerRef, PlayerRef)	
      (QST_Maintenance as SISA_Survival).RejuvenationCooldownStart()	
EndEvent

Float Function GhostDuration() 		
		If CFRejuvenationRank04.IsTrue(PlayerRef, None)    
		   Return FLT_GhostDuration04 
	ElseIf CFRejuvenationRank03.IsTrue(PlayerRef, None)  
	       Return FLT_GhostDuration03 
	ElseIf CFRejuvenationRank02.IsTrue(PlayerRef, None)  	 
           Return FLT_GhostDuration02
	ElseIf CFRejuvenationRank01.IsTrue(PlayerRef, None) 
           Return FLT_GhostDuration01
     EndIf
EndFunction