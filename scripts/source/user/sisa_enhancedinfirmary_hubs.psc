ScriptName SISA_EnhancedInfirmary_Hubs Extends Perk Const hidden

Quest Property EnhancedInfirmaryQuest Auto Const

Function Fragment_Entry_00(ObjectReference akTargetRef, Actor akActor)
       
    (EnhancedInfirmaryQuest as SISA_EnhancedInfirmary).StartRehab()

EndFunction