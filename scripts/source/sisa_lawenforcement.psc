ScriptName SISA_LawEnforcement Extends Perk Const hidden

Quest Property LawEnforcementQuest Auto Const

Function Arrest_00(ObjectReference akTargetRef, Actor akActor)   		 
	   SISA_LawEnforcementQuest LawEnforcementScript = LawEnforcementQuest as SISA_LawEnforcementQuest     
       If LawEnforcementScript
          LawEnforcementScript.Arrest(akTargetRef)
    EndIf
EndFunction

Function LawEnforcementMenu_01(ObjectReference akTargetRef, Actor akActor)         
	   SISA_LawEnforcementQuest LawEnforcementScript = LawEnforcementQuest as SISA_LawEnforcementQuest     
       If LawEnforcementScript
          LawEnforcementScript.LawEnforcementMenu()
    EndIf	                 		 
EndFunction



	
