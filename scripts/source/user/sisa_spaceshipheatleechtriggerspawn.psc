ScriptName SISA_SpaceshipHeatLeechTriggerSpawn extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Explosion Property HeatleechSpawner Auto Const
FormList Property ObjectList Auto
GlobalVariable Property ObjectDistanceCheck Auto mandatory
GlobalVariable Property ObjectDistanceFrom Auto mandatory

ObjectReference[] AllObjects

Int SpawnCount = 0

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
            
	  StartTimer(1, 0)	  
	           
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
	  SpawnCount = 0
      
	  CancelTimer(0)	  
      CancelTimer(1)	       

EndEvent

Event OnTimer(int aiTimerID)
                             	     
	  If (aiTimerID == 0)

             Int Chance = Utility.RandomInt(0, 100)

             If Chance < 10
			    StartTimer(1, 1)
		  Else
		        StartTimer(60, 0)
		  EndIf	 

  ElseIf (aiTimerID == 1)

	    If SpawnCount < 3
					 
			AllObjects = PlayerRef.FindAllReferencesOfType(ObjectList, ObjectDistanceCheck.GetValue())
					 
			If AllObjects					    						
			   int index = 0					    
			   While (index < AllObjects.Length)
			   ObjectReference ClosestObject = AllObjects[index]
			   index = index + 1					            
			      If ClosestObject && ClosestObject.GetDistance(PlayerRef) >= ObjectDistanceFrom.GetValue()				          
						  Int SpawnChance = Utility.RandomInt(0, 100)
					      If SpawnChance < 50
					         ClosestObject.PlaceAtMe(HeatleechSpawner, 1, False, False, True, None, None, True)
			           EndIf			   
			   EndIf					 					 	
			   EndWhile					 					          
		 EndIf					 
		 SpawnCount += 1
		 StartTimer(1, 1)
	
	EndIf
   
   EndIf

EndEvent				 