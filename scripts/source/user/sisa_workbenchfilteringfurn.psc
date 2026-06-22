ScriptName SISA_WorkbenchFilteringFurn extends ObjectReference

Actor Property PlayerRef Auto Const
GlobalVariable Property GV_Filter_Ammo Auto Const
GlobalVariable Property GV_Filter_Clothing Auto Const
GlobalVariable Property GV_Filter_Industrial Auto Const

Event OnActivate(ObjectReference akActionRef)
      
	  If akActionRef == PlayerRef
         StartTimer(1, 0) 	
		 GV_Filter_Clothing.SetValue(1)
		 GV_Filter_Ammo.SetValue(0)
		 GV_Filter_Industrial.SetValue(0)
   EndIf
   
EndEvent

Event OnTimer(int aiTimerID)
	
	ObjectReference OutfitWorkbench = PlayerRef.GetFurnitureUsing()
	
	If (aiTimerID == 0)
            
			If OutfitWorkbench
               StartTimer(1, 0)
        Else
               GV_Filter_Clothing.SetValue(0) 
	           GV_Filter_Ammo.SetValue(1)
               GV_Filter_Industrial.SetValue(1)			  
			   CancelTimer(0)         
		 EndIf
 EndIf

EndEvent