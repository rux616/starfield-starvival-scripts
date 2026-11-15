ScriptName SISA_Toggler extends Quest

Quest Property Quest_SISA_Survival Auto Const
Quest Property Quest_SISA_BasicNeeds Auto Const
Quest Property Quest_SISA_Intoxaddiction Auto Const
Quest Property Quest_SISA_LawEnforcement Auto Const
Quest Property Quest_SISA_CrewMorale Auto Const
Quest Property Quest_SISA_NGPlusPreparations Auto Const
Quest Property Quest_SISA_SpaceshipSystems Auto Const
Quest Property Quest_SISA_SpaceshipSystemsText Auto Const
Quest Property Quest_SISA_Economy Auto Const
Quest Property Quest_SISA_InfirmaryEnhanced Auto Const
Quest Property Quest_SISA_ItemInjector Auto Const
Quest Property Quest_SISA_ItemRestrictorAmmo Auto Const
Quest Property Quest_SISA_ItemRestrictorAid Auto Const
Quest Property Quest_SISA_RoverSystems Auto Const
Quest Property Quest_SISA_UpdateMonitor Auto Const
Quest Property Quest_SISA_DegradeSystem Auto Const
Quest Property Quest_SISA_OnHitStagger Auto Const
Quest Property Quest_SISA_AmmoBreakdown Auto Const
Quest Property Quest_SISA_FameAndRep Auto Const
Quest Property Quest_SISA_Takedowns Auto Const
Quest Property Quest_SISA_Adrenaline Auto Const
Quest Property Quest_SISA_EnviHazards Auto Const
Quest Property Quest_SISA_HarsherAfflictions Auto Const
Quest Property Quest_SISA_Oxygen Auto Const
Message Property MSG_PreparingPhase Auto Const

GlobalVariable Property StartStarvival Auto Const

struct OptionDatum
    GameplayOption Option
    GlobalVariable ValueGlobal
endstruct

struct OptionGlobalDatum
    GlobalVariable GlobalToCheck
    float ValueToCheck
    GlobalVariable GlobalToSet
    float ValueToSet
    GlobalVariable ValueToSetFromGlobal
endstruct

GameplayOption Property GPO_StarvivalStart Mandatory Const Auto
OptionDatum[] Property OptionData Mandatory Const Auto
OptionGlobalDatum[] Property OptionGlobalData Mandatory Const Auto RequiresGuard(GlobalArrayGuard)
Guard GlobalArrayGuard

Event OnQuestShutdown()
      UnregisterForGameplayOptionChangedEvent()
EndEvent

Event OnQuestInit()                           	  
	  RegisterForGameplayOptionChangedEvent()
EndEvent

Event OnGameplayOptionChanged(gameplayoption[] aChangedOptions)
  
  GlobalVariable[] globalsToUpdate = UpdateOptionsAndGetGlobals(aChangedOptions)
  UpdateSpecificOptions(globalsToUpdate)
  
EndEvent

GlobalVariable[] Function UpdateOptionsAndGetGlobals(GameplayOption[] OptionsToUpdateAndGetGlobalsFor)
    GlobalVariable[] globalsToGet = new GlobalVariable[0]
    int i = 0
    While (i < OptionsToUpdateAndGetGlobalsFor.length)
        GameplayOption currentGameplayOption = OptionsToUpdateAndGetGlobalsFor[i]
        GlobalVariable matchingGlobal = GetMatchingGlobalForOption(currentGameplayOption)
        if matchingGlobal
            if currentGameplayOption == GPO_StarvivalStart

			       If currentGameplayOption.GetValue() == 1					  
						If StartStarvival.GetValue() == 0
						   StartTimer(2.0, 2)			         
					 EndIf
			   ElseIf currentGameplayOption.GetValue() == 0
					    If StartStarvival.GetValue() == 1
						   StartTimer(2.0, 1)
			         EndIf			
				EndIf
            
			EndIf            
			globalsToGet.Add(matchingGlobal)
        EndIf        
        i += 1
    EndWhile
    RETURN globalsToGet
EndFunction

GlobalVariable Function GetMatchingGlobalForOption(GameplayOption OptionToCheck)
    
	int iFound = OptionData.FindStruct("Option", OptionToCheck)
    OptionDatum foundOptionDatum
    
	If iFound > -1
       foundOptionDatum = OptionData[iFound]
       RETURN foundOptionDatum.ValueGlobal
 Else 
       RETURN none
 EndIf

EndFunction

Function UpdateSpecificOptions(GlobalVariable[] GlobalsToUpdate = None) Private

    UpdateGlobalVariables(GlobalsToUpdate)

EndFunction

Function UpdateGlobalVariables(GlobalVariable[] GlobalsToUpdate = None) Private
    LockGuard GlobalArrayGuard
        
		int index_GlobalsToUpdate = 0
        While (index_GlobalsToUpdate < GlobalsToUpdate.length)
            GlobalVariable currentGlobal = GlobalsToUpdate[index_GlobalsToUpdate]
            OptionGlobalDatum[] matchingData =  OptionGlobalData.GetAllMatchingStructs("GlobalToCheck", currentGlobal)

            int index_GlobalData = 0
            While (index_GlobalData < matchingData.length)
                OptionGlobalDatum currentDatum = matchingData[index_GlobalData]

                GlobalVariable currentOptionGlobal = currentDatum.GlobalToCheck
                float currentValueToCheck = currentDatum.ValueToCheck
                GlobalVariable currentGlobalToSet = currentDatum.GlobalToSet
                float currentValueToSet = currentDatum.ValueToSet
                GlobalVariable currentValueToSetFromGlobal = currentDatum.ValueToSetFromGlobal

                float currentActualValue = currentOptionGlobal.GetValue()

                if currentActualValue == currentValueToCheck                   
                    if currentValueToSetFromGlobal
                        currentValueToSet = currentValueToSetFromGlobal.GetValue()
                    endif
                    
                    currentGlobalToSet.SetValue(currentValueToSet)
                endif
            
                index_GlobalData += 1
            EndWhile

            index_GlobalsToUpdate += 1
        EndWhile
    EndLockGuard
EndFunction

Event OnTimer(int aiTimerID)

      	     If (aiTimerID == 1)   
                (Quest_SISA_Survival as SISA_Survival).MissionExterminatus()
      	 ElseIf (aiTimerID == 2)  
		        MSG_PreparingPhase.Show() 
		  		StartQuest()  			   
		  EndIf		
        
EndEvent

Function StartQuest()

		   Quest_SISA_UpdateMonitor.Start()		 
		   Quest_SISA_Survival.Start()		 
		   Quest_SISA_BasicNeeds.Start()		 
		   Quest_SISA_Intoxaddiction.Start()		 
		   Quest_SISA_SpaceshipSystems.Start()		 
		   Quest_SISA_SpaceshipSystemsText.Start()		 
		   Quest_SISA_Economy.Start()		 
		   Quest_SISA_InfirmaryEnhanced.Start()		 
		   Quest_SISA_ItemInjector.Start()		   
		   ;Quest_SISA_ItemRestrictorAmmo.Start()		 
		   ;Quest_SISA_ItemRestrictorAid.Start()		  
		   Quest_SISA_RoverSystems.Start()		 
		   Quest_SISA_DegradeSystem.Start()		  
		   Quest_SISA_OnHitStagger.Start()		 
		   Quest_SISA_AmmoBreakdown.Start()		 
		   Quest_SISA_FameAndRep.Start()		 
		   Quest_SISA_Takedowns.Start()		 
		   Quest_SISA_Adrenaline.Start()		  
		   Quest_SISA_LawEnforcement.Start()		 
		   Quest_SISA_CrewMorale.Start()		  
		   Quest_SISA_EnviHazards.Start()		 
		   Quest_SISA_HarsherAfflictions.Start()		 
		   Quest_SISA_Oxygen.Start()		 
		   Quest_SISA_NGPlusPreparations.Start()		 
           Utility.Wait(3.0)
           (Quest_SISA_Survival as SISA_Survival).StartStarvival()

EndFunction	

Function StopQuest()
		 Quest_SISA_UpdateMonitor.Stop()
         Quest_SISA_Survival.Stop()
         Quest_SISA_BasicNeeds.Stop()
         Quest_SISA_Intoxaddiction.Stop()
         Quest_SISA_SpaceshipSystems.Stop()
         Quest_SISA_SpaceshipSystemsText.Stop()
		 Quest_SISA_Economy.Stop()
		 Quest_SISA_InfirmaryEnhanced.Stop()
		 Quest_SISA_ItemInjector.Stop()
		 Quest_SISA_ItemRestrictorAmmo.Stop()
		 Quest_SISA_ItemRestrictorAid.Stop()
		 Quest_SISA_RoverSystems.Stop()
		 Quest_SISA_DegradeSystem.Stop()
		 Quest_SISA_OnHitStagger.Stop()
		 Quest_SISA_AmmoBreakdown.Stop()
		 Quest_SISA_FameAndRep.Stop()
		 Quest_SISA_Takedowns.Stop()
		 Quest_SISA_Adrenaline.Stop()
		 Quest_SISA_LawEnforcement.Stop()
		 Quest_SISA_CrewMorale.Stop()
		 Quest_SISA_EnviHazards.Stop()
		 Quest_SISA_HarsherAfflictions.Stop()
		 Quest_SISA_Oxygen.Stop()
		 Quest_SISA_NGPlusPreparations.Stop()
EndFunction			