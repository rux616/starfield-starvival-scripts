ScriptName SISA_JunkRecyclerAllIn extends ObjectReference

Quest Property QuestSurvival Auto Const
Actor Property PlayerRef Auto Const
Keyword Property KWD_SupportedJunkItems Auto Const
ReferenceAlias Property HomeShip Auto Const mandatory
FormList Property List_SupportedJunkItems Auto Const
Potion Property AllInPotion Auto Const

Event OnInit()
      	  
	  AddInventoryEventFilter(KWD_SupportedJunkItems)       
      
EndEvent

Event OnActivate(ObjectReference akActionRef)
      	  
    If akActionRef == PlayerRef
       AddInventoryEventFilter(KWD_SupportedJunkItems) 
         If GetItemCount(AllInPotion) <= 0
	        Additem(AllInPotion, 1, True)
      EndIf
 EndIf      

EndEvent

Event OnItemRemoved(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer, Int aiTransferReason)
	
	SpaceShipReference homeShipRef = HomeShip.GetShipRef()
    
	If akBaseItem.HasKeyword(KWD_SupportedJunkItems)
       (QuestSurvival as SISA_Survival).JunkRecycleMode()
	   Additem(AllInPotion, 1, True)
	   PlayerRef.RemoveItem(List_SupportedJunkItems, 99999, True, self) 
	   homeShipRef.RemoveItem(List_SupportedJunkItems, 99999, True, self) 
 EndIf

EndEvent
