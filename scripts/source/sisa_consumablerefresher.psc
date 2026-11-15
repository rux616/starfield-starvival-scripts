ScriptName SISA_ConsumableRefresher extends ObjectReference

Keyword Property KeywordFood Auto Const
Keyword Property KeywordDrink Auto Const
Keyword Property KeywordChem Auto Const
Keyword Property KeywordAid Auto Const
Keyword Property KeywordAmmo Auto Const
Keyword Property KeywordThrowable Auto Const

Actor Property PlayerRef Auto Const

Event OnInit()
        
	  AddInventoryEventFilter(KeywordFood)       
      AddInventoryEventFilter(KeywordDrink)    
      AddInventoryEventFilter(KeywordChem) 
      AddInventoryEventFilter(KeywordAid)
      AddInventoryEventFilter(KeywordAmmo)
      AddInventoryEventFilter(KeywordThrowable)

EndEvent

Event OnActivate(ObjectReference akActionRef)

    If akActionRef == PlayerRef
	   AddInventoryEventFilter(KeywordFood)       
       AddInventoryEventFilter(KeywordDrink)    
       AddInventoryEventFilter(KeywordChem) 
       AddInventoryEventFilter(KeywordAid)
       AddInventoryEventFilter(KeywordAmmo)
       AddInventoryEventFilter(KeywordThrowable)
 EndIf

EndEvent

Event OnItemAdded(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer, Int aiTransferReason)

	     If akBaseItem.HasKeyword(KeywordFood)
            RemoveItem(akBaseItem, 999999, True, PlayerRef)
	 ElseIf akBaseItem.HasKeyword(KeywordDrink)
            RemoveItem(akBaseItem, 999999, True, PlayerRef)
	 ElseIf akBaseItem.HasKeyword(KeywordAid)
            RemoveItem(akBaseItem, 999999, True, PlayerRef)
	 ElseIf akBaseItem.HasKeyword(KeywordChem)
            RemoveItem(akBaseItem, 999999, True, PlayerRef)
	 ElseIf akBaseItem.HasKeyword(KeywordAmmo)
            RemoveItem(akBaseItem, 999999, True, PlayerRef)
	 ElseIf akBaseItem.HasKeyword(KeywordThrowable)
            RemoveItem(akBaseItem, 999999, True, PlayerRef)
	  EndIf

EndEvent

