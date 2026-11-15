ScriptName SISA_LandingFeePerkMenu Extends Perk Const hidden

Actor Property PlayerRef Auto Const
ObjectReference Property TERM_LandingFeeTermRef Auto Const

Function Fragment_Entry_00(ObjectReference akTargetRef, Actor akActor)
 	     
         TERM_LandingFeeTermRef.Activate(PlayerRef, False)

EndFunction