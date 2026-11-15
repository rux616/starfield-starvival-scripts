ScriptName SISA_ArrestingContainerSpawner extends ObjectReference

Explosion Property StorageFX Auto Const

Event OnInit()

	SetAngle(0, 0, GetAngleZ())
    StartTimer(3, 0) 

EndEvent

Event OnTimer(int aiTimerID)

     	     If (aiTimerID == 0)     

			    PlaceAtMe(StorageFX, 1, False, False, True, None, None, True)	
				Disable(False)
 		        Delete()
		  
		  EndIf
	  
EndEvent
