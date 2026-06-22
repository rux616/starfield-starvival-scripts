ScriptName SISA_EMHUDDisable extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_ENVDMG Auto Const

Int HudBlinkTries = 0

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)  
      RegisterForMenuOpenCloseEvent("ContainerMenu")
      RegisterForMenuOpenCloseEvent("PauseMenu")
      RegisterForMenuOpenCloseEvent("DataMenu")
	  StartTimer(0, 0)
EndEvent

Event OnMenuOpenCloseEvent(String asMenuName, Bool abOpening)
         	     	 			 
		 If asMenuName == "DataMenu" || asMenuName == "PauseMenu" || asMenuName == "ContainerMenu"    
			       If abOpening == True														      					   
					  Debug.EnableMenus(True)
                      Game.SetCharGenHUDMode(0)	
			    Else	 
		              Debug.EnableMenus(False)
                      Game.SetCharGenHUDMode(3)
			    EndIf 
      EndIf

EndEvent

Event OnTimer(int aiTimerID)
                         		 
	     If (aiTimerID == 0) 
                   If HudBlinkTries < 25      
				      Float TimerHUD = Utility.RandomFloat(0.05, 0.7)
			          HudBlinkTries += 1
			          Debug.EnableMenus(False)
				      Game.SetCharGenHUDMode(3)
                      PlayerRef.DamageValue(AV_ENVDMG, 0.08)
					  StartTimer(TimerHUD, 1)
                 Else
			          Debug.EnableMenus(True)
				      Game.SetCharGenHUDMode(0)                                      
			          HudBlinkTries = 0
			    EndIf 
	 ElseIf (aiTimerID == 1) 
                  If HudBlinkTries < 25
                     Float TimerHUD = Utility.RandomFloat(0.05, 0.4)
			         HudBlinkTries += 1
				     Debug.EnableMenus(True)
				     Game.SetCharGenHUDMode(0)
                     PlayerRef.DamageValue(AV_ENVDMG, 0.08)
                     StartTimer(TimerHUD, 0)
                Else
			         Debug.EnableMenus(True)
				     Game.SetCharGenHUDMode(0)                                      
			         HudBlinkTries = 0
			   EndIf 
	  EndIf

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)	     
      HudBlinkTries = 0
      Debug.EnableMenus(True)
      Game.SetCharGenHUDMode(0)
      UnregisterForAllMenuOpenCloseEvents()
      CancelTimer(0)
      CancelTimer(1)
EndEvent
