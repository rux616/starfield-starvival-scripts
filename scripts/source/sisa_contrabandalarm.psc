Scriptname SISA_ContrabandAlarm extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Spell Property CastAlarmSpell Const Auto
Quest Property QuestFameAndRep Auto Const
Conditionform Property CFDeception01 Auto Const Mandatory
Conditionform Property CFDeception02 Auto Const Mandatory
Conditionform Property CFDeception03 Auto Const Mandatory
Conditionform Property CFDeception04 Auto Const Mandatory

Float Function DeceptionBonus()
     
	 Float Rank00 = 0.0
     Float Rank01 = 1.0 	 
     Float Rank02 = 1.5 
     Float Rank03 = 2.0 
     Float Rank04 = 2.5 	 
		
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

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)         
                           
						   ActorValue AVCheck = (QuestFameAndRep as SISA_FameAndRepMB).CheckForAV()  
					       Float DeceptionTime = DeceptionBonus()
						   If PlayerRef.GetValue(AVCheck) >= 75.0				        
					          StartTimer(4.0+DeceptionTime, 0)				           
					   ElseIf PlayerRef.GetValue(AVCheck) >= 50.0 && PlayerRef.GetValue(AVCheck) < 75.0					            
			                  StartTimer(3.0+DeceptionTime, 0)
					   ElseIf PlayerRef.GetValue(AVCheck) >= 25.0 && PlayerRef.GetValue(AVCheck) < 50.0				        
                              StartTimer(2.0+DeceptionTime, 0)
					   ElseIf PlayerRef.GetValue(AVCheck) < 25.0				        
					          StartTimer(1.0+DeceptionTime, 0)
						EndIf
     
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)         
      CancelTimer(0)
EndEvent

Event OnTimer(int aiTimerID)
			 			 		 			 
			 If (aiTimerID == 0)              
						   
						   ActorValue AVCheck = (QuestFameAndRep as SISA_FameAndRepMB).CheckForAV() 
					       Float DeceptionTime = DeceptionBonus()
						   If PlayerRef.GetValue(AVCheck) >= 75.0				        
					          CastAlarmSpell.cast(PlayerRef, PlayerRef)
							  StartTimer(4.0+DeceptionTime, 0)				           
					   ElseIf PlayerRef.GetValue(AVCheck) >= 50.0 && PlayerRef.GetValue(AVCheck) < 75.0					            
			                  CastAlarmSpell.cast(PlayerRef, PlayerRef)
							  StartTimer(3.0+DeceptionTime, 0)
					   ElseIf PlayerRef.GetValue(AVCheck) >= 25.0 && PlayerRef.GetValue(AVCheck) < 50.0				        
                              CastAlarmSpell.cast(PlayerRef, PlayerRef)
							  StartTimer(2.0+DeceptionTime, 0)
					   ElseIf PlayerRef.GetValue(AVCheck) < 25.0				        
					          CastAlarmSpell.cast(PlayerRef, PlayerRef)
							  StartTimer(1.0+DeceptionTime, 0)
						EndIf
		  EndIf

EndEvent  