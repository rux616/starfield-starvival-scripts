Scriptname SISA_TakedownsQuest extends Quest

Actor Property PlayerRef Auto Const
ActorValue Property ExecutionPoints Auto Const
ActorValue Property ExecutionMeter Auto Const
Conditionform Property ConditionFormConcealmentRank1 Auto Const Mandatory
Conditionform Property ConditionFormConcealmentRank2 Auto Const Mandatory
Conditionform Property ConditionFormConcealmentRank3 Auto Const Mandatory
Conditionform Property ConditionFormConcealmentRank4 Auto Const Mandatory
Perk Property StealthTakeDownPerk Auto Const
GlobalVariable Property StealthTakeDownExecutionPoints Auto Const
wwiseevent Property SoundFX_PointAcquired Auto Const

Function TakedownsStart()		 
		 PlayerRef.RestoreValue(ExecutionMeter, 999)
         PlayerRef.DamageValue(ExecutionMeter, 999)
		 PlayerRef.RestoreValue(ExecutionPoints, 999)
         PlayerRef.DamageValue(ExecutionPoints, 999)
         PlayerRef.Addperk(StealthTakeDownPerk, False)   		 
         RegisterForActorValueChangedEvent(PlayerRef, ExecutionMeter)
EndFunction

Function TakedownsStop()		 
		 PlayerRef.RestoreValue(ExecutionMeter, 999)
         PlayerRef.DamageValue(ExecutionMeter, 999)
		 PlayerRef.RestoreValue(ExecutionPoints, 999)
         PlayerRef.DamageValue(ExecutionPoints, 999)
         PlayerRef.Removeperk(StealthTakeDownPerk)         
		 UnregisterForActorValueChangedEvent(PlayerRef, ExecutionMeter)
EndFunction

Function Execute()	   
	     Int ExecutionIncrease = ExecutionBonus()
	     Int ExecutionAmount = StealthTakeDownExecutionPoints.GetValue() as Int * ExecutionIncrease
	     Float PointsAmount = PlayerRef.GetValue(ExecutionPoints) as Int      	   	   				   
		 If PointsAmount == 5 && ConditionFormConcealmentRank4.IsTrue(PlayerRef, None)	
			Return
	 ElseIf PointsAmount == 4 && ConditionFormConcealmentRank3.IsTrue(PlayerRef, None)					      
			Return 
	 ElseIf PointsAmount == 3 && ConditionFormConcealmentRank2.IsTrue(PlayerRef, None)					      
			Return 
	 ElseIf PointsAmount == 2 && ConditionFormConcealmentRank1.IsTrue(PlayerRef, None)				      
		    Return 
	  EndIf 		            				
	  PlayerRef.RestoreValue(ExecutionMeter, ExecutionAmount)		
EndFunction

Event OnActorValueChanged(ObjectReference akObjRef, ActorValue akActorValue)    	   
	   If akObjRef == PlayerRef && akActorValue == ExecutionMeter
	      Float ExecutionLevel = PlayerRef.GetValue(ExecutionMeter) 
				   If ExecutionLevel >= 100.0
				      Utility.Wait(0.1)
					  PlayerRef.DamageValue(ExecutionMeter, 999)
				      	   If ConditionFormConcealmentRank4.IsTrue(PlayerRef, None) 
								  If PlayerRef.GetValue(ExecutionPoints) < 5
				                     PlayerRef.RestoreValue(ExecutionPoints, 1)		
							   EndIf
				       ElseIf ConditionFormConcealmentRank3.IsTrue(PlayerRef, None) 
					              If PlayerRef.GetValue(ExecutionPoints) < 4
				                     PlayerRef.RestoreValue(ExecutionPoints, 1)		
			                   EndIf
				       ElseIf ConditionFormConcealmentRank2.IsTrue(PlayerRef, None) 
					              If PlayerRef.GetValue(ExecutionPoints) < 3
				                     PlayerRef.RestoreValue(ExecutionPoints, 1)		
			                   EndIf
				       ElseIf ConditionFormConcealmentRank1.IsTrue(PlayerRef, None)
					              If PlayerRef.GetValue(ExecutionPoints) < 2
				                     PlayerRef.RestoreValue(ExecutionPoints, 1)		
			                   EndIf
			            EndIf
		                SoundFX_PointAcquired.Play(PlayerRef)		  
		        EndIf
		  RegisterForActorValueChangedEvent(PlayerRef, ExecutionMeter)
    EndIf
EndEvent

Int Function ExecutionBonus()
	    Int ConcealmentRank1 = 1
	    Int ConcealmentRank4 = 2      
		If ConditionFormConcealmentRank4.IsTrue(PlayerRef, None)    
		   Return ConcealmentRank4
     Else   
           Return 1
     EndIf
EndFunction

Function Update()
         RegisterForActorValueChangedEvent(PlayerRef, ExecutionMeter)
EndFunction