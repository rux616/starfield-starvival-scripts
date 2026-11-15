ScriptName SISA_SpaceshipHeatLeechSpawner extends ObjectReference

Explosion Property EXPL_Heatleech Auto Const

Event OnInit()   
	  
	  int RandomTime = Utility.RandomInt(10, 60)  
	  
	  SetAngle(0, 0, GetAngleZ())
	  StartTimer(5, 0)
	
EndEvent

Event OnTimer(int aiTimerID)
                          
     	     If (aiTimerID == 0)
	             	             
                 PlaceAtMe(EXPL_Heatleech, 3, False, False, True, None, None, True)
                 Disable(False)
 	             Delete()			 			 
		  
		  EndIf
		  
EndEvent		  