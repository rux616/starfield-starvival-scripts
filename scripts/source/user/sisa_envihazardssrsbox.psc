ScriptName SISA_EnviHazardsSRSBox Extends ObjectReference

Actor Property PlayerRef Auto Const
ActorValue Property AV_Charge Auto Const
MiscObject Property MSC_PositronBattery Auto Const
wwiseevent Property SFX_Recharged Auto Const
wwiseevent Property SFX_BeepSuccess Auto Const
wwiseevent Property SFX_BeepFail Auto Const
Message Property MSG_FullyCharged Auto Const
Message Property MSG_AlreadyCharged Auto Const

Event OnInit()      	        
       AddInventoryEventFilter(MSC_PositronBattery) 
EndEvent

Event OnActivate(ObjectReference akActionRef)
       If akActionRef == PlayerRef
          AddInventoryEventFilter(MSC_PositronBattery)  
	EndIf 
EndEvent

Event OnWorkshopObjectRemoved(ObjectReference akReference)      
      RemoveAllItems(PlayerRef, False, False)
EndEvent

Event OnItemAdded(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer, Int aiTransferReason)

    If akBaseItem == MSC_PositronBattery
         If PlayerRef.GetValue(AV_Charge) < 100.0
 	        RemoveItem(akBaseItem, 1, True, None)
	           If GetItemCount(akBaseItem) > 0
                  RemoveItem(akBaseItem, 999, True, PlayerRef)
			EndIf
			SFX_BeepSuccess.PlayAndWait(PlayerRef, None, None)
	        SFX_Recharged.Play(PlayerRef, None, None)
			PlayerRef.RestoreValue(AV_Charge, 999)
            MSG_FullyCharged.Show()
	  Else
	        SFX_BeepFail.Play(PlayerRef, None, None)
			RemoveItem(akBaseItem, aiItemCount, True, PlayerRef)
            MSG_AlreadyCharged.Show()
	  EndIf
 EndIf

EndEvent