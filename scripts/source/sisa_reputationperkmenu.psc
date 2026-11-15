ScriptName SISA_ReputationPerkMenu Extends Perk Const hidden

Actor Property PlayerRef Auto Const
ObjectReference Property TERM_ClearanceTermRef Auto Const

Function Fragment_Entry_00(ObjectReference akTargetRef, Actor akActor)
 	     
         TERM_ClearanceTermRef.Activate(PlayerRef, False)

EndFunction