ScriptName SISA_BasicNeedsRandomInfection extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Spell Property SPL_InfectionBone Auto Const
Spell Property SPL_InfectionBrain Auto Const
Spell Property SPL_InfectionIntestinal Auto Const
Spell Property SPL_InfectionLung Auto Const
Spell Property SPL_InfectionTissue Auto Const

Float Property FLT_InfectionTimer = 1.0 Auto
Float Property FLT_InfectionChance = 1.0 Auto

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      StartTimer(FLT_InfectionTimer, 0)
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      CancelTimer(0)
EndEvent

Event OnTimer(int aiTimerID)
	 	  	      
     	     If (aiTimerID == 0) 
                Int Chance = Utility.RandomInt(0, 100)
		        If Chance <= FLT_InfectionChance    
		           ChooseInfection()
		     EndIf
		     StartTimer(FLT_InfectionTimer, 0)
		  EndIf

EndEvent

Function ChooseInfection()
         Int InfectionType = Utility.RandomInt(0, 4)
         If InfectionType == 0
            SPL_InfectionBone.Cast(PlayerRef, PlayerRef)
     ElseIf InfectionType == 1
            SPL_InfectionBrain.Cast(PlayerRef, PlayerRef)
     ElseIf InfectionType == 2
            SPL_InfectionIntestinal.Cast(PlayerRef, PlayerRef)
     ElseIf InfectionType == 3
            SPL_InfectionLung.Cast(PlayerRef, PlayerRef)
     ElseIf InfectionType == 4
            SPL_InfectionTissue.Cast(PlayerRef, PlayerRef)
      EndIf
EndFunction