ScriptName SISA_FameStarboxSpawner extends ObjectReference

Explosion Property StorageFX Auto Const

Event OnInit()

	SetAngle(0, 0, GetAngleZ())
    PlaceAtMe(StorageFX, 1, False, False, True, None, None, True)
    StartTimer(60, 0) 

EndEvent

Event OnTimer(int aiTimerID)

     	     If (aiTimerID == 0)     

			    PlaceAtMe(StorageFX, 1, False, False, True, None, None, True)	
                Disable(False)
 		        Delete()
		  
		  EndIf
	  
EndEvent
