ScriptName SISA_AidRestricter extends ReferenceAlias

Actor Property PlayerRef Auto Const
ObjectReference Property PharmaKit Auto Const
Potion Property PharmaKitPotion Auto Const
Keyword Property KeywordObjectTypeAid Auto Const
Keyword Property KeywordObjectTypeChem Auto Const
Keyword Property KeywordObjectTypeMedpacks Auto Const
Keyword Property KeywordObjectTypeTraumaPacks Auto Const
Keyword Property KeywordObjectTypeEmergencyKits Auto Const
Keyword Property KeywordObjectTypeHeartPlus Auto Const
GlobalVariable Property AidChemRestrictionToggle Auto Const
GlobalVariable Property AidChemStoreMode Auto Const
GlobalVariable Property AidChemPossibleAmount Auto Const
GlobalVariable Property AidChemNotifier Auto Const
Message Property AidChemSupplyFullPlayer Auto Const
Message Property AidChemSupplyFullSpaceship Auto Const
ReferenceAlias Property HomeShip Auto Const mandatory

Bool InBarterMenu = False
Bool InContainerMenu = False
Bool InWorkbench = False

Event OnAliasInit()	
	Register()
EndEvent

Event OnInit()	
	Register()
EndEvent

Event OnPlayerLoadGame()	
	  Register()
EndEvent

Function Register()
 	     
      AddInventoryEventFilter(KeywordObjectTypeAid)
      AddInventoryEventFilter(KeywordObjectTypeChem)       
      AddInventoryEventFilter(KeywordObjectTypeMedpacks)
      AddInventoryEventFilter(KeywordObjectTypeTraumaPacks)
      AddInventoryEventFilter(KeywordObjectTypeEmergencyKits)	  
      AddInventoryEventFilter(KeywordObjectTypeHeartPlus)
	  
	  RegisterForMenuOpenCloseEvent("BarterMenu")	
	  RegisterForMenuOpenCloseEvent("ContainerMenu")

EndFunction

Event OnSit(ObjectReference akFurniture)
    
		 Keyword WorkbenchKeyword = Game.GetFormFromFile(0x00091FD4, "Starfield.esm") as Keyword 
         
		        If akFurniture.HasKeyword(WorkbenchKeyword) 
                   If InWorkbench == False
				      InWorkbench = True
				EndIf				   
             EndIf

EndEvent

Event OnGetUp(ObjectReference akFurniture)

		 Keyword WorkbenchKeyword = Game.GetFormFromFile(0x00091FD4, "Starfield.esm") as Keyword 
                
		         If akFurniture.HasKeyword(WorkbenchKeyword) 
                   If InWorkbench == True
				      InWorkbench = False
				EndIf					
              EndIf

EndEvent

Event OnMenuOpenCloseEvent(String asMenuName, Bool abOpening)
			 
		 If asMenuName == "BarterMenu"
                  
				  If abOpening == True
                     InBarterMenu = True
			   Else 
                     InBarterMenu = False
			   EndIf

	 ElseIf asMenuName == "ContainerMenu"
                  
				  If abOpening == True
                     InContainerMenu = True
			   Else 
                     InContainerMenu = False
			   EndIf

	  EndIf

EndEvent

Event OnItemAdded(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer, Int aiTransferReason)
    	   
	   Int TotalPosibleAid = AidChemPossibleAmount.Getvalue() as Int
       Int TotalAidDropCount = PlayerRef.GetitemCount(akBaseItem) - TotalPosibleAid
	   
	   If akBaseItem.HasKeyword(KeywordObjectTypeAid) || akBaseItem.HasKeyword(KeywordObjectTypeChem)          
                 If akBaseItem.HasKeyword(KeywordObjectTypeMedpacks)
		            TransferAidChem(akBaseItem, TotalPosibleAid, TotalAidDropCount, akSourceContainer)    
             ElseIf akBaseItem.HasKeyword(KeywordObjectTypeTraumaPacks)
		            TransferAidChem(akBaseItem, TotalPosibleAid, TotalAidDropCount, akSourceContainer)          
             ElseIf akBaseItem.HasKeyword(KeywordObjectTypeEmergencyKits)
		            TransferAidChem(akBaseItem, TotalPosibleAid, TotalAidDropCount, akSourceContainer)
             ElseIf akBaseItem.HasKeyword(KeywordObjectTypeHeartPlus)
		            TransferAidChem(akBaseItem, TotalPosibleAid, TotalAidDropCount, akSourceContainer)
		      EndIf
	EndIf

EndEvent

Function TransferAidChem(Form Item, Int TotalAmount, Int DropAmount, ObjectReference SourceContainer)	
          
		  SpaceShipReference akShip = HomeShip.getShipRef()     
     
	      If PlayerRef.GetitemCount(Item) > TotalAmount
                    
					If InBarterMenu == True || InWorkbench == True
				       PlayerRef.RemoveItem(Item, DropAmount, True, akShip)
			           Return
				ElseIf InContainerMenu == True
				       PlayerRef.RemoveItem(Item, DropAmount, True, SourceContainer)
					   Return
				 EndIf
					
					If AidChemStoreMode.GetValue() == 0 || AidChemStoreMode.GetValue() == 1 || AidChemStoreMode.GetValue() == 2
                          If PlayerRef.GetItemCount(PharmaKitPotion) <= 0
					         PlayerRef.RemoveItem(Item, DropAmount, True, akShip)
					   Else
					         PlayerRef.RemoveItem(Item, DropAmount, True, PharmaKit)
				       EndIf
				 EndIf
                 TransferMessageModeAidChem()
       EndIf

EndFunction
	  
Function TransferMessageModeAidChem()	
     
	 If AidChemNotifier.GetValue() == 1
                If AidChemStoreMode.GetValue() == 0 || AidChemStoreMode.GetValue() == 1 || AidChemStoreMode.GetValue() == 2
                   AidChemSupplyFullPlayer.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)                  
             EndIf
  EndIf
EndFunction

