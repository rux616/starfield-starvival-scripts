ScriptName SISA_UIHUDBridges extends Quest

Actor Property PlayerRef Auto Const
Quest Property QuestBasicNeeds Auto Const
Quest Property QuestIntoxAddiction Auto Const
Quest Property QuestEnviHazards Auto Const
Quest Property QuestFameAndRep Auto Const
Quest Property QuestDegradeSystems Auto Const
Quest Property QuestMaintenance Auto Const
FormList Property FormList_UIHUDBridges Auto Const
GlobalVariable Property GV_TriggerHUDLinkageName Auto Const
GlobalVariable Property GV_TriggerESPSInStatusMenu Auto Const
GlobalVariable Property GV_StartStarvival Auto Const
GlobalVariable Property GV_StatusHUDToggle Auto Const
Message Property MSG_StatusHUD01 Auto Const
Message Property MSG_StatusHUD02 Auto Const
Message Property MSG_StatusHUD03 Auto Const
Message Property MSG_StatusHUD04 Auto Const
Message Property MSG_StatusHUD05 Auto Const
Message Property MSG_StatusHUD06 Auto Const
Message Property MSG_StatusHUD07 Auto Const
Message Property MSG_StatusHUD08 Auto Const
Message Property MSG_StatusHUD09 Auto Const

Event OnQuestInit()
      StartTimer(5, 0)
EndEvent

Event OnMenuOpenCloseEvent(string asMenuName, bool abOpening)
		 If asMenuName == "MonocleMenu"    
			       If abOpening == True														      					   
                      GV_TriggerHUDLinkageName.SetValue(1)				      
				Else
                      GV_TriggerHUDLinkageName.SetValue(0)				
				EndIf
	 ElseIf asMenuName == "StatusMenu"    
			       If abOpening == True														      					   
                      GV_TriggerESPSInStatusMenu.SetValue(1)				      
				Else			
                      GV_TriggerESPSInStatusMenu.SetValue(0)
				EndIf
      EndIf
EndEvent

Function AddUIHUDBridgesSpells()
    Int i = 0
    While i < FormList_UIHUDBridges.GetSize()
        Spell CurrentSpell = FormList_UIHUDBridges.GetAt(i) as Spell
           If CurrentSpell
			  If !PlayerRef.HasSpell(CurrentSpell)
			      PlayerRef.AddSpell(CurrentSpell, false)
           EndIf
		EndIf
        i += 1
    EndWhile
	MSG_StatusHUD02.Show()
EndFunction

Function RemoveUIHUDBridgesSpells()
	Utility.Wait(0.1)
    Int i = 0
    While i < FormList_UIHUDBridges.GetSize()
        Spell CurrentSpell = FormList_UIHUDBridges.GetAt(i) as Spell
           If CurrentSpell
			  If PlayerRef.HasSpell(CurrentSpell)
			     PlayerRef.RemoveSpell(CurrentSpell)
           EndIf
		EndIf
        i += 1
    EndWhile
    MSG_StatusHUD04.Show()
EndFunction

Event OnTimer(int aiTimerID)	       	 
		     If (aiTimerID == 0)
                   If GV_StartStarvival.GetValue() == 0 
                      StartTimer(5, 0)
		        Else
	                  HUDIntroduce()
				EndIf
		  EndIf
EndEvent

Function HUDIntroduce(Int MenuType = 0, Int Button = 0, Bool MenuOpened = True)
 
 While MenuOpened
 	 
	 If Button == -1         

 ElseIf MenuType == 0           		   
		button = MSG_StatusHUD05.show()	
	    If (button == 0)                                           
			MenuType = 1																											 
	 EndIf 
 ElseIf MenuType == 1              			  		   
		button = MSG_StatusHUD06.show()		                                    
		If (button == 0)
            MenuType = 2																											                                                                            									
    ElseIf (button == 1)                                           
			MenuType = 0
	 EndIf 
 ElseIf MenuType == 2  
		button = MSG_StatusHUD07.show()
		If (button == 0)
            MenuType = 3																											                                                                            									
    ElseIf (button == 1)                                           
			MenuType = 1
	 EndIf
 ElseIf MenuType == 3             
		button = MSG_StatusHUD08.show()																		
		If (button == 0)
            MenuType = 4																											                                                                            									
    ElseIf (button == 1)                                           
			MenuType = 2
	 EndIf
 ElseIf MenuType == 4             
		button = MSG_StatusHUD09.show()																											                                          
		If (button == 0)
			MenuOpened = False
			MSG_StatusHUD01.Show()
			Utility.Wait(0.1)
	        RegisterForMenuOpenCloseEvent("MonocleMenu") 		 
	        RegisterForMenuOpenCloseEvent("StatusMenu") 
			(QuestBasicNeeds as SISA_BasicNeeds).UIHUDBridge()	
			(QuestIntoxAddiction as SISA_Intoxaddiction).UIHUDBridge()
			(QuestEnviHazards as SISA_EnviHazardsQuest).UIHUDBridge()
			(QuestFameAndRep as SISA_FameAndRepMB).UIHUDBridge()
			(QuestDegradeSystems as SISA_RepairSystemQuest).UIHUDBridge()
			(QuestMaintenance as SISA_Survival).UIHUDBridge()																											                                                                            									
            AddUIHUDBridgesSpells()
			GV_StatusHUDToggle.SetValue(1)
	ElseIf (button == 1)                                           
			MenuType = 3
    ElseIf (button == 2)                                           
			MenuOpened = False
	 EndIf

  EndIf
		   
EndWhile
EndFunction

Function ManualToggleFromBook()
         If GV_StatusHUDToggle.GetValue() == 0
            GV_StatusHUDToggle.SetValue(1)
			HUDIntroduce()
     ElseIf GV_StatusHUDToggle.GetValue() == 1
            GV_StatusHUDToggle.SetValue(0)
	        MSG_StatusHUD03.Show()
			UnregisterForMenuOpenCloseEvent("MonocleMenu") 		 
	        UnregisterForMenuOpenCloseEvent("StatusMenu") 
			GV_TriggerHUDLinkageName.SetValue(0)
			GV_TriggerESPSInStatusMenu.SetValue(0)
			(QuestBasicNeeds as SISA_BasicNeeds).UIHUDBridgeDeconstruct()	
			(QuestIntoxAddiction as SISA_Intoxaddiction).UIHUDBridgeDeconstruct()
			(QuestEnviHazards as SISA_EnviHazardsQuest).UIHUDBridgeDeconstruct()
			(QuestFameAndRep as SISA_FameAndRepMB).UIHUDBridgeDeconstruct()
			(QuestDegradeSystems as SISA_RepairSystemQuest).UIHUDBridgeDeconstruct()
			(QuestMaintenance as SISA_Survival).UIHUDBridgeDeconstruct()
            RemoveUIHUDBridgesSpells()
      EndIf
EndFunction
