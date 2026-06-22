ScriptName SISA_ReputationRankMSG extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Message Property MSG_Rank Auto Const
wwiseevent Property SFX_Rank Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      Float RandomTimer = Utility.RandomFloat(2.5, 5.0)
	  StartTimer(RandomTimer, 0)
EndEvent

Event OnTimer(int aiTimerID)	       	 
		     If (aiTimerID == 0)
	            If !PlayerRef.IsInCombat()
				   SFX_Rank.PlayAndWait(PlayerRef)
				   MSG_Rank.Show()
		     Else
			       Float RandomTimer = Utility.RandomFloat(2.5, 5.0)
				   StartTimer(RandomTimer, 0)
			 EndIf
		  EndIf
EndEvent