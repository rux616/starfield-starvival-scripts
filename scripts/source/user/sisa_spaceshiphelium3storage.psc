ScriptName SISA_SpaceshipHelium3Storage extends ObjectReference

Keyword Property Helium3Items Auto Const
Explosion Property StorageFX Auto Const

Event OnInit()

    AddInventoryEventFilter(Helium3Items)
	SetAngle(0, 0, GetAngleZ())
    PlaceAtMe(StorageFX, 1, False, False, True, None, None, True)

EndEvent

Event OnItemRemoved(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer, Int aiTransferReason)

          If GetItemCount(Helium3Items) <= 0
             StartTimer(3, 0)   
	   EndIf

endEvent

Event OnTimer(int aiTimerID)

     	     If (aiTimerID == 0)     

			    PlaceAtMe(StorageFX, 1, False, False, True, None, None, True)	
                Disable(False)
 		        Delete()
		  
		  EndIf
	  
EndEvent
