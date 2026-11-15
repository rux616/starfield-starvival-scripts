ScriptName SISA_AdrenalineAlias extends ReferenceAlias

Actor Property PlayerRef Auto Const
Spell Property SPL_AdrenalineAftermath Auto Const

Event OnAliasInit()	
	Register()
EndEvent

Event OnPlayerLoadGame()	
	  Register()
EndEvent

Function Register() 	     
         RegisterForPlayerSleep()
EndFunction

Event OnPlayerSleepStop(bool abInterrupted, ObjectReference akBed)
	
        If PlayerRef.HasSpell(SPL_AdrenalineAftermath) == True
           PlayerRef.RemoveSpell(SPL_AdrenalineAftermath)
     EndIf

EndEvent