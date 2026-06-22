ScriptName SISA_SpaceshipOpenDoorsMalf extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
FormList Property ObjectList Auto
FormList Property ObjectList2 Auto
GlobalVariable Property ObjectDistanceCheck Auto mandatory
Explosion Property EXPL_Electric Auto Const

ObjectReference[] AllObjects
ObjectReference[] AllObjects2

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
            
	  StartTimer(1, 0)	  
	           
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
            
	  CancelTimer(0)	  
	  CancelTimer(1)	       

EndEvent

Event OnTimer(int aiTimerID)
                             	     
	  If (aiTimerID == 0)
		 
		    AllObjects.Clear()
		    AllObjects = PlayerRef.FindAllReferencesOfType(ObjectList, ObjectDistanceCheck.GetValue())	
			
			If AllObjects
				int index = 0
				While (index < AllObjects.Length)
					ObjectReference ClosestObject = AllObjects[index]
					index = index + 1				
						      Int OpenState = ClosestObject.GetOpenState()
						      If OpenState <= 2 && OpenState != 0			
						         Int ActivateChance = Utility.RandomInt(0, 100)
								 If ActivateChance < 50
							        ClosestObject.SetOpen(false)
								    ClosestObject.PlaceAtMe(EXPL_Electric, 1, False, False, True, None, None, True)
						      EndIf
						   EndIf						
				EndWhile	
			EndIf

			AllObjects2 = PlayerRef.FindAllReferencesOfType(ObjectList2, ObjectDistanceCheck.GetValue())					 
			If AllObjects2					    						
			   int index = 0					    
			   While (index < AllObjects2.Length)
			   ObjectReference ClosestObject = AllObjects2[index]
			   index = index + 1					            				          
						  Int ActivateChance = Utility.RandomInt(0, 100)
					      If ActivateChance < 75
					         ClosestObject.PlaceAtMe(EXPL_Electric, 1, False, False, True, None, None, True)
			           EndIf			   				 					 	
			   EndWhile					 					          
		 EndIf	

		    StartTimer(60, 1)	   

  ElseIf (aiTimerID == 1)
		 
		 AllObjects.Clear()
		 AllObjects = PlayerRef.FindAllReferencesOfType(ObjectList, ObjectDistanceCheck.GetValue())	
			If AllObjects
				int index = 0
				While (index < AllObjects.Length)
					ObjectReference ClosestObject = AllObjects[index]
					index = index + 1				
						      Int OpenState = ClosestObject.GetOpenState()
						      If OpenState >= 3 && OpenState != 0			
						         Int ActivateChance = Utility.RandomInt(0, 100)
								 If ActivateChance < 50
							        ClosestObject.SetOpen()
								    ClosestObject.PlaceAtMe(EXPL_Electric, 1, False, False, True, None, None, True)
						      EndIf
						   EndIf					
				EndWhile	
			EndIf

			AllObjects2 = PlayerRef.FindAllReferencesOfType(ObjectList2, ObjectDistanceCheck.GetValue())					 
			If AllObjects2					    						
			   int index = 0					    
			   While (index < AllObjects2.Length)
			   ObjectReference ClosestObject = AllObjects2[index]
			   index = index + 1					            				          
						  Int ActivateChance = Utility.RandomInt(0, 100)
					      If ActivateChance < 75
					         ClosestObject.PlaceAtMe(EXPL_Electric, 1, False, False, True, None, None, True)
			           EndIf			   				 					 	
			   EndWhile					 					          
		 EndIf

		    StartTimer(60, 0)
   EndIf

EndEvent				 