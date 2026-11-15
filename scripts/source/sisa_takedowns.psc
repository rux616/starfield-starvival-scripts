Scriptname SISA_Takedowns extends ReferenceAlias

Actor Property PlayerRef Auto Const
ActorValue Property ExecutionPoints Auto Const
ActorValue Property ExecutionMeter Auto Const
Conditionform Property ConditionFormConcealmentRank1 Auto Const Mandatory
Conditionform Property ConditionFormConcealmentRank2 Auto Const Mandatory
Conditionform Property ConditionFormConcealmentRank3 Auto Const Mandatory
Conditionform Property ConditionFormConcealmentRank4 Auto Const Mandatory
Perk Property ConcealmentPerk Auto Const
GlobalVariable Property StealthTakeDownExecutionPoints Auto Const
wwiseevent Property SoundFX_PointAcquired Auto Const

Event OnAliasInit()	  
	  Register()			  
EndEvent

Event OnPlayerLoadGame()	  
      Register()
EndEvent

Function Register()
		 RegisterForRemoteEvent(PlayerRef, "OnKill")
         RegisterForActorValueChangedEvent(PlayerRef, ExecutionMeter)
EndFunction

Int Function ExecutionBonus()

	  Int ConcealmentRank1 = 1
	  Int ConcealmentRank4 = 2
      
		If ConditionFormConcealmentRank4.IsTrue(PlayerRef, None)    
		   Return ConcealmentRank4
     Else   
           Return 1
     EndIf

EndFunction

Event OnActorValueChanged(ObjectReference akObjRef, ActorValue akActorValue)    
	   
	   If akObjRef == PlayerRef && akActorValue == ExecutionMeter
	      Float ExecutionLevel = PlayerRef.GetValue(ExecutionMeter) 
				   If ExecutionLevel >= 100.0
				      Utility.Wait(0.3)
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


Event Actor.OnKill(Actor akSender, ObjectReference akVictim)

	   Int ExecutionIncrease = ExecutionBonus()
	   Int ExecutionAmount = StealthTakeDownExecutionPoints.GetValue() as Int * ExecutionIncrease
	   Float PointsAmount = PlayerRef.GetValue(ExecutionPoints) as Int
       Float ExecutionLevel = PlayerRef.GetValue(ExecutionMeter)       
	   
	   Actor victimActor = akVictim as Actor
	   
		   If PlayerRef.Hasperk(ConcealmentPerk) == True
				   
				   If PointsAmount == 5
				      Return
			   ElseIf PointsAmount == 4				      
				      Return 
			   ElseIf PointsAmount == 3				      
				      Return 
			   ElseIf PointsAmount == 2				      
				      Return 
				EndIf 		            
				
				PlayerRef.RestoreValue(ExecutionMeter, ExecutionAmount)
		
        EndIf
EndEvent