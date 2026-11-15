ScriptName SISA_AdrenalineQuest extends Quest

Actor Property PlayerRef Auto Const
Armor Property AdrenalineToken Auto Const
GlobalVariable Property GV_AdrenalineMax Auto Const
GlobalVariable Property GV_AdrenalineTimer Auto Const
GlobalVariable Property GV_ArenalineCountNotifier Auto Const
Spell Property SPL_AdrenalineBuff Auto Const
Message Property MSG_AdrenalineCount Auto Const
Perk Property SurvivalAdrenaline Auto Const
Spell Property AdrenalineAftermathPenalty Auto Const
Spell Property AdrenalineRushBuff Auto Const

Function AdrenalineStart()
         
		 PlayerRef.Addperk(SurvivalAdrenaline, False) 

EndFunction

Function AdrenalineStop()
         
		 PlayerRef.Removeperk(SurvivalAdrenaline) 
         PlayerRef.RemoveSpell(AdrenalineAftermathPenalty)
		 PlayerRef.DispelSpell(AdrenalineRushBuff)	
         PlayerRef.RemoveItem(AdrenalineToken, 9999, True, None)

EndFunction

Function Adrenaline()

                Float Max = GV_AdrenalineMax.GetValue()
                Float Timer = GV_AdrenalineTimer.GetValue()
                
				PlayerRef.Additem(AdrenalineToken, 1, True)
                   If PlayerRef.GetItemCount(AdrenalineToken) >= Max
                      SPL_AdrenalineBuff.Cast(PlayerRef, PlayerRef)
					  PlayerRef.RemoveItem(AdrenalineToken, 9999, True, None)
			    EndIf
                AdrenalineStatusChecker()
                StartTimer(Timer, 0)

EndFunction

Function AdrenalineStatusChecker()

           Float Max = GV_AdrenalineMax.GetValue()
           Float Count = PlayerRef.GetItemCount(AdrenalineToken)

        If GV_ArenalineCountNotifier.GetValue() == 1
           Utility.Wait(0.1)
           MSG_AdrenalineCount.show(Count, Max, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
     EndIf

EndFunction

Event OnTimer(int aiTimerID)
	 	 
             Float Timer = GV_AdrenalineTimer.GetValue()

      	     If (aiTimerID == 0)       

                   If PlayerRef.GetItemCount(AdrenalineToken) >= 1 
                      PlayerRef.RemoveItem(AdrenalineToken, 1, True, None)
                      StartTimer(Timer, 0)
                      AdrenalineStatusChecker()
                EndIf
		  EndIf		

EndEvent				