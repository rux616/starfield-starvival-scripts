ScriptName SISA_PharmaKit extends ObjectReference

Quest Property QuestSurvival Auto Const

Potion Property TakeToBackpackDisabled Auto Const
Potion Property TakeToBackpackEnabled Auto Const
Potion Property PharmaKitConsumable Auto Const

Keyword Property KeywordAid Auto Const
Keyword Property KeywordChem Auto Const
Keyword Property KeywordMedpacks Auto Const
Keyword Property KeywordTraumaPacks Auto Const
Keyword Property KeywordEmergencyKits Auto Const
Keyword Property KeywordHeartPlus Auto Const
Keyword Property KeywordTakeToBackpackOff Auto Const
Keyword Property KeywordTakeToBackpackOn Auto Const

GlobalVariable Property AidChemToggle Auto Const
GlobalVariable Property AidChemStoreMode Auto Const
GlobalVariable Property AidChemNotifier Auto Const
GlobalVariable Property AidChemPossibleAmount Auto Const

Message Property PharmaKitFullSpaceship Auto Const

Actor Property PlayerRef Auto Const

ReferenceAlias Property PlayerShip Auto

Bool BlockConsumage = False

Event OnInit()
      
	  RegisterFormenuOpenCloseEvent("ContainerMenu")	  
	  AddInventoryEventFilter(KeywordAid)       
      AddInventoryEventFilter(KeywordChem)    
	  AddInventoryEventFilter(KeywordMedpacks)       
      AddInventoryEventFilter(KeywordTraumaPacks) 
	  AddInventoryEventFilter(KeywordEmergencyKits)       	  
	  AddInventoryEventFilter(KeywordHeartPlus)
      AddInventoryEventFilter(KeywordTakeToBackpackOff)
      AddInventoryEventFilter(KeywordTakeToBackpackOn)
	  Additem(TakeToBackpackDisabled, 1, True)

EndEvent

Event OnActivate(ObjectReference akActionRef)

    If akActionRef == PlayerRef
	   AddInventoryEventFilter(KeywordAid)       
       AddInventoryEventFilter(KeywordChem)    
	   AddInventoryEventFilter(KeywordMedpacks)       
       AddInventoryEventFilter(KeywordTraumaPacks) 
	   AddInventoryEventFilter(KeywordEmergencyKits)
	   AddInventoryEventFilter(KeywordHeartPlus)
       AddInventoryEventFilter(KeywordTakeToBackpackOff)
       AddInventoryEventFilter(KeywordTakeToBackpackOn)
       If PlayerRef.GetitemCount(PharmaKitConsumable) <= 0
          PlayerRef.Additem(PharmaKitConsumable, 1, True)
    EndIf
 EndIf

EndEvent

Event OnMenuOpenCloseEvent(String asMenuName, Bool abOpening)
    If (asMenuName == "ContainerMenu")
           If (!abOpening)
              Removeitem(TakeToBackpackEnabled, 1, True, None) 
		      BlockConsumage = true
		Else
		      BlockConsumage = false
		EndIf      
 EndIf    
EndEvent

Event OnItemAdded(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer, Int aiTransferReason)

        Int TotalPosibleAid = AidChemPossibleAmount.Getvalue() as Int
        Int TotalAidDropCount = GetitemCount(akBaseItem) - TotalPosibleAid
	    
		If AidChemToggle.GetValue() == 1
	            If akBaseItem.HasKeyword(KeywordAid) || akBaseItem.HasKeyword(KeywordChem)            
                        If akBaseItem.HasKeyword(KeywordMedpacks)
		                   TransferAidChem(akBaseItem, TotalPosibleAid, TotalAidDropCount, akSourceContainer)    
                    ElseIf akBaseItem.HasKeyword(KeywordTraumaPacks)
		                   TransferAidChem(akBaseItem, TotalPosibleAid, TotalAidDropCount, akSourceContainer)          
                    ElseIf akBaseItem.HasKeyword(KeywordEmergencyKits)
		                   TransferAidChem(akBaseItem, TotalPosibleAid, TotalAidDropCount, akSourceContainer)
                    ElseIf akBaseItem.HasKeyword(KeywordHeartPlus)
		                   TransferAidChem(akBaseItem, TotalPosibleAid, TotalAidDropCount, akSourceContainer)
		             EndIf
             EndIf
    EndIf

EndEvent

Function TransferAidChem(Form Item, Int TotalAmount, Int DropAmount, ObjectReference SourceContainer)	
          
		  SpaceShipReference akShip = PlayerShip.getShipRef()     
          	  
	      If GetitemCount(Item) > TotalAmount
               If AidChemStoreMode.GetValue() == 0
			      RemoveItem(Item, DropAmount, True, akShip)
           ElseIf AidChemStoreMode.GetValue() == 1
			      If SourceContainer == PlayerRef 
					 RemoveItem(Item, DropAmount, True, PlayerRef)
					 PlayerRef.DropObject(Item, DropAmount)
			   Else 
				     RemoveItem(Item, DropAmount, True, SourceContainer)
		       EndIf
           ElseIf AidChemStoreMode.GetValue() == 2
			      RemoveItem(Item, DropAmount, True, None)
			EndIf
			TransferMessageMode()
       EndIf
EndFunction

Function TransferMessageMode()	
     
	 If AidChemNotifier.GetValue() == 1
        PharmaKitFullSpaceship.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) 
  EndIf

EndFunction

Event OnItemRemoved(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer, Int aiTransferReason)

	     If akBaseItem.HasKeyword(KeywordTakeToBackpackOff)
            Additem(TakeToBackpackEnabled, 1, True) 
		    BlockConsumage = True
            (QuestSurvival as SISA_Survival).PharmaKitMode()
	 ElseIf akBaseItem.HasKeyword(KeywordTakeToBackpackOn)
            Additem(TakeToBackpackDisabled, 1, True) 
		    BlockConsumage = False
            (QuestSurvival as SISA_Survival).PharmaKitMode()
	  EndIf
  
    If BlockConsumage == False      
	     If akBaseItem.HasKeyword(KeywordAid)
            AutoConsume(akBaseItem, 1)
     ElseIf akBaseItem.HasKeyword(KeywordChem)
            AutoConsume(akBaseItem, 1)
      EndIf
 EndIf

EndEvent

Function AutoConsume(Form Item, Int TotalAmount)	                    	  
         PlayerRef.EquipItem(Item, 1, True)
EndFunction