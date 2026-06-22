ScriptName SISA_FameCredits extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
MiscObject Property Credits Auto Const
Potion Property StarboxReward Auto Const
Message Property FameRankTriggered Auto Const
LeveledItem Property FameLegendaryItem Auto Const
wwiseevent Property SFX_Rank Auto Const

Int Property CreditsAmount = 1 Auto Const 

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)      
	  Float RandomTimer = Utility.RandomFloat(2.5, 5.0)
	  StartTimer(RandomTimer, 0)	  	  	  
EndEvent

Event OnTimer(int aiTimerID)	       	 
		     If (aiTimerID == 0)
	            If !PlayerRef.IsInCombat()
	                Int CreditsWin = CreditsAmount	  
	                SFX_Rank.PlayAndWait(PlayerRef)
					FameRankTriggered.Show(CreditsWin, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	                PlayerRef.Additem(Credits, CreditsAmount, False) 
	                PlayerRef.Additem(StarboxReward, 1, True)
	                PlayerRef.Additem(FameLegendaryItem, 1, True)
		     Else
			       Float RandomTimer = Utility.RandomFloat(2.5, 5.0)
				   StartTimer(RandomTimer, 0)
			 EndIf
		  EndIf
EndEvent
