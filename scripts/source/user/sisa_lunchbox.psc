ScriptName SISA_LunchBox extends ObjectReference

Actor Property PlayerRef Auto Const
Quest Property QuestBasicNeeds Auto Const
Potion Property TakeToBackpackDisabled Auto Const
Potion Property TakeToBackpackEnabled Auto Const
Potion Property AutoConsumeDisabled Auto Const
Potion Property AutoConsumeEnabled Auto Const
Potion Property LunchboxConsumable Auto Const
Keyword Property KeywordFood Auto Const
Keyword Property KeywordDrink Auto Const
Keyword Property KeywordTakeToBackpackOff Auto Const
Keyword Property KeywordTakeToBackpackOn Auto Const
Keyword Property KeywordAutoConsumeON Auto Const
Keyword Property KeywordAutoConsumeOFF Auto Const
GlobalVariable Property NeedsAutoConsumageToggle Auto Const
Conditionform Property ConditionFormSuppressFoodEffects Auto Const Mandatory
Message Property NeedsLocationWarning Auto Const

Bool BlockConsumage = False

Event OnInit()
      
	  RegisterFormenuOpenCloseEvent("ContainerMenu")	  
	  AddInventoryEventFilter(KeywordFood)       
      AddInventoryEventFilter(KeywordDrink)    
      AddInventoryEventFilter(KeywordTakeToBackpackOff)
      AddInventoryEventFilter(KeywordTakeToBackpackOn)
      AddInventoryEventFilter(KeywordAutoConsumeON)
      AddInventoryEventFilter(KeywordAutoConsumeOFF)
	  Additem(TakeToBackpackDisabled, 1, True)
	  Additem(AutoConsumeEnabled, 1, True)

EndEvent

Event OnActivate(ObjectReference akActionRef)

    If akActionRef == PlayerRef
	   AddInventoryEventFilter(KeywordFood)       
       AddInventoryEventFilter(KeywordDrink)    
       AddInventoryEventFilter(KeywordTakeToBackpackOff)
       AddInventoryEventFilter(KeywordTakeToBackpackOn)
       AddInventoryEventFilter(KeywordAutoConsumeON)
       AddInventoryEventFilter(KeywordAutoConsumeOFF)
       If PlayerRef.GetitemCount(LunchboxConsumable) <= 0
          PlayerRef.Additem(LunchboxConsumable, 1, True)
    EndIf
       If GetitemCount(AutoConsumeEnabled) <= 0
          If NeedsAutoConsumageToggle.GetValue() == 1
		     Additem(AutoConsumeEnabled, 1, True)
       EndIf
	EndIf
       If GetitemCount(AutoConsumeDisabled) <= 0
          If NeedsAutoConsumageToggle.GetValue() == 0
		     Additem(AutoConsumeDisabled, 1, True)
       EndIf
	EndIf
 EndIf

EndEvent

Event OnMenuOpenCloseEvent(String asMenuName, Bool abOpening)
    If (asMenuName == "ContainerMenu")
           If (!abOpening)
              Removeitem(TakeToBackpackEnabled, 1, True, None) 
                If NeedsAutoConsumageToggle.GetValue() == 1
			       (QuestBasicNeeds as SISA_BasicNeeds).AutoNeedsOnLunchboxClose()
		     EndIf
		EndIf      
 EndIf    
EndEvent

Event OnItemRemoved(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer, Int aiTransferReason)

	     If akBaseItem.HasKeyword(KeywordTakeToBackpackOff)
            Additem(TakeToBackpackEnabled, 1, True) 
		    BlockConsumage = True
            (QuestBasicNeeds as SISA_BasicNeeds).LunchBoxMode()
	 ElseIf akBaseItem.HasKeyword(KeywordTakeToBackpackOn)
            Additem(TakeToBackpackDisabled, 1, True) 
		    BlockConsumage = False
            (QuestBasicNeeds as SISA_BasicNeeds).LunchBoxMode()
	 ElseIf akBaseItem.HasKeyword(KeywordAutoConsumeOFF)
            Additem(AutoConsumeEnabled, 1, True) 
            NeedsAutoConsumageToggle.SetValue(1)
			(QuestBasicNeeds as SISA_BasicNeeds).LunchBoxModeAutoConsume()
	 ElseIf akBaseItem.HasKeyword(KeywordAutoConsumeON)
            Additem(AutoConsumeDisabled, 1, True) 
            NeedsAutoConsumageToggle.SetValue(0)
            (QuestBasicNeeds as SISA_BasicNeeds).LunchBoxModeAutoConsume()
	  EndIf
  
    If BlockConsumage == False      
	     If akBaseItem.HasKeyword(KeywordFood)
            AutoConsume(akBaseItem, 1)
     ElseIf akBaseItem.HasKeyword(KeywordDrink)
            AutoConsume(akBaseItem, 1)
      EndIf
 EndIf

EndEvent

Function AutoConsume(Form Item, Int TotalAmount)	                    	  

		   Float LocationRestrict = LocationCheck()  			
           If LocationRestrict == 0.0
			  Additem(Item, 1, True)
			  NeedsLocationWarning.Show()
		Else
              PlayerRef.EquipItem(Item, 1, True)
		EndIf

EndFunction

Float Function LocationCheck()

      Float LocationOn = 0.0
      Float LocationOff = 1.0

          If ConditionFormSuppressFoodEffects.IsTrue(PlayerRef, None)  
		     return LocationOn
       Else
			 return LocationOff   
       EndIf

EndFunction