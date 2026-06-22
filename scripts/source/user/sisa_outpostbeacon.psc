ScriptName SISA_OutpostBeacon extends ObjectReference Const

Quest Property EconomyQuest Auto Const
GlobalVariable Property EconomyToggle Auto Const
GlobalVariable Property EconomyOutpostCostCredits Auto Const

Event OnWorkshopObjectPlaced(ObjectReference akReference)
	
	;If EconomyToggle.GetValue() == 1 && EconomyOutpostCostCredits.GetValue() == 1  	   
	   ;(EconomyQuest as SISA_Economy).OutpostHasBeenDeployed()
 ;EndIf

EndEvent

Event OnWorkshopObjectRemoved(ObjectReference akReference)
	
	;If EconomyToggle.GetValue() == 1 && EconomyOutpostCostCredits.GetValue() == 1  	  	   
       ;(EconomyQuest as SISA_Economy).OutpostHasBeenRemoved()
 ;EndIf

EndEvent