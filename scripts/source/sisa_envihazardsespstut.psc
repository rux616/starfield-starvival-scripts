ScriptName SISA_EnviHazardsESPSTut extends ActiveMagicEffect

Message Property MSG_ESPSTutorial1 Auto Const
Message Property MSG_ESPSTutorial2 Auto Const
Message Property MSG_ESPSTutorial3 Auto Const
Message Property MSG_ESPSTutorial4 Auto Const
GlobalVariable Property GV_ESPSTutorialCheck Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      If GV_ESPSTutorialCheck.GetValue() == 0
         StartTimer(5.0, 0)
   EndIf
EndEvent

Function TutorialMenu1(Int Button = 0)	    							  			
			Button = MSG_ESPSTutorial1.Show()	 		               
				   If Button == 0
                      TutorialMenu2()
				EndIf
EndFunction

Function TutorialMenu2(Int Button = 0)	    							  			
			Button = MSG_ESPSTutorial2.Show()	 		               
				   If Button == 0
                      TutorialMenu3()
				EndIf
EndFunction

Function TutorialMenu3(Int Button = 0)	    							  			
			Button = MSG_ESPSTutorial3.Show()	 		               
				   If Button == 0
                      TutorialMenu4()
                      ;Exit
				EndIf
EndFunction

Function TutorialMenu4(Int Button = 0)	    							  			
			Button = MSG_ESPSTutorial4.Show()	 		               
				   If Button == 0
                      GV_ESPSTutorialCheck.SetValue(1)
                      ;Exit
				EndIf
EndFunction

Event OnTimer(int aiTimerID)	       	 
		     If (aiTimerID == 0)
                TutorialMenu1()
		  EndIf
EndEvent