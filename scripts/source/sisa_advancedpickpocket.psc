Scriptname SISA_AdvancedPickpocket extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Spell Property SPL_StealAlarm Auto Const
Spell Property SPL_DetectionAlarm Auto Const
Conditionform Property CF_Theft01 Auto Const Mandatory
Conditionform Property CF_Theft02 Auto Const Mandatory
Conditionform Property CF_Theft03 Auto Const Mandatory
Conditionform Property CF_Theft04 Auto Const Mandatory

Bool PickpocketActive = False

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)         
	  RegisterForTutorialEvent("PickpocketingEntered")
	  RegisterForTutorialEvent("PickpocketingExited")
EndEvent  

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)         
      PickpocketActive = False
	  CancelTimer(0)
	  CancelTimer(1)
	  UnregisterForTutorialEvent("PickpocketingEntered")
	  UnregisterForTutorialEvent("PickpocketingExited")
EndEvent  

Event OnTutorialEvent(String asEventName, Message aMessage)

	   If (asEventName == "PickpocketingEntered")
		  PickpocketActive = True
		  Float AlarmTimer = AlarmTime()
          StartTimer(AlarmTimer, 0)
             If CF_Theft04.IsTrue(PlayerRef, None)
		        StartTimer(3, 1)
	      Else
		        StartTimer(0, 1)
		  EndIf
		  RegisterForTutorialEvent("PickpocketingEntered")
   ElseIf (asEventName == "PickpocketingExited")
	      PickpocketActive = False
		  CancelTimer(0)
	      CancelTimer(1)
	      RegisterForTutorialEvent("PickpocketingExited")
	EndIf

EndEvent

Event OnTimer(int aiTimerID)
	 	  	      
     	     If (aiTimerID == 0)       
				   If PickpocketActive == True
				      SPL_StealAlarm.Cast(PlayerRef, PlayerRef)
		              Float AlarmTimer = AlarmTime()
				      StartTimer(AlarmTimer, 0)
     	        EndIf
		 ElseIf (aiTimerID == 1)       
				   If PickpocketActive == True
				      SPL_DetectionAlarm.Cast(PlayerRef, PlayerRef)
				      StartTimer(1, 1)
		        EndIf
		  EndIf		 

EndEvent

Float Function AlarmTime()
     
     Float StealTime01 = 2.0 	 
     Float StealTime02 = 3.0 
     Float StealTime03 = 4.0 
     Float StealTime04 = 5.0 	 
		
		If CF_Theft04.IsTrue(PlayerRef, None)    
		   Return StealTime04 
	ElseIf CF_Theft03.IsTrue(PlayerRef, None)  
	       Return StealTime03
	ElseIf CF_Theft02.IsTrue(PlayerRef, None)  	 
           Return StealTime02
	ElseIf CF_Theft01.IsTrue(PlayerRef, None) 
           Return StealTime01 
     EndIf

EndFunction