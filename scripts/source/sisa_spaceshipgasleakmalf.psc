ScriptName SISA_SpaceshipGasLeakMalf extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
FormList Property ObjectList Auto
GlobalVariable Property ObjectDistanceCheck Auto mandatory
Explosion Property EXPL_Gas Auto Const
Explosion Property EXPL_Gas02 Auto Const

ObjectReference[] AllObjects

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
            
	  StartTimer(1, 0)	  
	           
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
            
	  CancelTimer(0)	  
	       
EndEvent

Event OnTimer(int aiTimerID)
                             	     
	  If (aiTimerID == 0)

			AllObjects = PlayerRef.FindAllReferencesOfType(ObjectList, ObjectDistanceCheck.GetValue())					 
			If AllObjects					    						
			   int index = 0					    
			   While (index < AllObjects.Length)
			   ObjectReference ClosestObject = AllObjects[index]
			   index = index + 1					            				          
			          Int GasChance = Utility.RandomInt(0, 100)
			          If GasChance < 50
				         ClosestObject.PlaceAtMe(EXPL_Gas, 1, False, False, True, None, None, True)			   				 					 	
			       EndIf
			   EndWhile					 					          
		 EndIf	
         PlayerRef.PlaceAtMe(EXPL_Gas02, 1, False, False, True, None, None, True)
		 StartTimer(50, 0)	   

   EndIf

EndEvent				 