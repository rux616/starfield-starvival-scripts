Scriptname SISA_ContrabandAlarmSender extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Faction Property SecurityFaction Auto Const
Faction Property CrimsonFleetFaction Auto Const
Quest Property QuestFameAndRep Auto Const
Conditionform Property CFDeception01 Auto Const Mandatory
Conditionform Property CFDeception02 Auto Const Mandatory
Conditionform Property CFDeception03 Auto Const Mandatory
Conditionform Property CFDeception04 Auto Const Mandatory
GlobalVariable Property GV_ContrabandCaughtRep Auto Const

Int Function DeceptionBonus()
     
	 Int Rank00 = 0
     Int Rank01 = 4 	 
     Int Rank02 = 8 
     Int Rank03 = 12 
     Int Rank04 = 16 	 
		
		If CFDeception04.IsTrue(PlayerRef, None)    
		   Return Rank04 
	ElseIf CFDeception03.IsTrue(PlayerRef, None)  
	       Return Rank03
	ElseIf CFDeception02.IsTrue(PlayerRef, None)  	 
           Return Rank02
	ElseIf CFDeception01.IsTrue(PlayerRef, None) 
           Return Rank01 
Else	
           Return Rank00
     EndIf

EndFunction

Float Function ReputationCalculator()
	  
	  Float IfReputation00 = 1.20 	   
	  Float IfReputation10 = 1.16      
	  Float IfReputation20 = 1.12
	  Float IfReputation30 = 1.08      
	  Float IfReputation40 = 1.04 
	  Float IfReputation50 = 1.00
	  Float IfReputation60 = 0.96      
	  Float IfReputation70 = 0.92
	  Float IfReputation80 = 0.88      
	  Float IfReputation90 = 0.84 
	  Float IfReputation100 = 0.80
      
	  ActorValue AVCheck = (QuestFameAndRep as SISA_FameAndRepMB).CheckForAV()  

      If PlayerRef.GetValue(AVCheck) < 10
         Return IfReputation00
  ElseIf PlayerRef.GetValue(AVCheck) >= 10 && PlayerRef.GetValue(AVCheck) < 20
         Return IfReputation10
  ElseIf PlayerRef.GetValue(AVCheck) >= 20 && PlayerRef.GetValue(AVCheck) < 30
         Return IfReputation20
  ElseIf PlayerRef.GetValue(AVCheck) >= 30 && PlayerRef.GetValue(AVCheck) < 40
         Return IfReputation30
  ElseIf PlayerRef.GetValue(AVCheck) >= 40 && PlayerRef.GetValue(AVCheck) < 50
         Return IfReputation40
  ElseIf PlayerRef.GetValue(AVCheck) >= 50 && PlayerRef.GetValue(AVCheck) < 60
         Return IfReputation50
  ElseIf PlayerRef.GetValue(AVCheck) >= 60 && PlayerRef.GetValue(AVCheck) < 70
         Return IfReputation60
  ElseIf PlayerRef.GetValue(AVCheck) >= 70 && PlayerRef.GetValue(AVCheck) < 80
         Return IfReputation70
  ElseIf PlayerRef.GetValue(AVCheck) >= 80 && PlayerRef.GetValue(AVCheck) < 90
         Return IfReputation80
  ElseIf PlayerRef.GetValue(AVCheck) >= 90 && PlayerRef.GetValue(AVCheck) < 100
         Return IfReputation90
  ElseIf PlayerRef.GetValue(AVCheck) >= 100
         Return IfReputation100
   Else
         Return IfReputation50
   EndIf

EndFunction

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)         
     
	 Actor GuardActor = akTarget as Actor
     Int Chance = Utility.RandomInt(0, 100)
	 
			 If GuardActor.IsInFaction(SecurityFaction) == True && GuardActor.IsInFaction(CrimsonFleetFaction) == False
                   If Game.IsPlayerInDialogue() == False
				           Int Deception = DeceptionBonus()
						   Float ReputationCalc = ReputationCalculator()
						   Float RepDMGOnCaught = GV_ContrabandCaughtRep.GetValue()
						   ActorValue AVCheck = (QuestFameAndRep as SISA_FameAndRepMB).CheckForAVPickpocket()  
					       If PlayerRef.GetValue(AVCheck) >= 75.0				        
								If Chance <= math.round(25*ReputationCalc - Deception)
					               PlayerRef.DamageValue(AVCheck, RepDMGOnCaught)
								   GuardActor.SendSmugglingAlarm(PlayerRef)
		                     EndIf							   
					   ElseIf PlayerRef.GetValue(AVCheck) >= 50.0 && PlayerRef.GetValue(AVCheck) < 75.0					            
								If Chance <= math.round(45*ReputationCalc - Deception)
								   PlayerRef.DamageValue(AVCheck, RepDMGOnCaught)
					               GuardActor.SendSmugglingAlarm(PlayerRef)
		                     EndIf				       					
					   ElseIf PlayerRef.GetValue(AVCheck) >= 25.0 && PlayerRef.GetValue(AVCheck) < 50.0				        
								If Chance <= math.round(65*ReputationCalc - Deception)
					               PlayerRef.DamageValue(AVCheck, RepDMGOnCaught)
					               GuardActor.SendSmugglingAlarm(PlayerRef)
		                     EndIf
					   ElseIf PlayerRef.GetValue(AVCheck) < 25.0				        
								If Chance <= math.round(85*ReputationCalc - Deception)
					               PlayerRef.DamageValue(AVCheck, RepDMGOnCaught)
					               GuardActor.SendSmugglingAlarm(PlayerRef)
		                     EndIf						
						EndIf
				EndIf
		  EndIf

EndEvent