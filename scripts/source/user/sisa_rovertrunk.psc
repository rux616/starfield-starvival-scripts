ScriptName SISA_RoverTrunk extends ObjectReference

Actor Property PlayerRef Auto Const
Keyword Property KeywordContraband Auto Const
Keyword Property KeywordItemTransfer Auto Const
wwiseevent Property SoundFX_BeepFail Auto Const
wwiseevent Property SoundFX_BeepSuccess Auto Const
wwiseevent Property SoundFX_ModuleRemove Auto Const
Spell Property SPL_ContrabandFail Auto Const
GlobalVariable Property RoverSystems_ContrabandStorage Auto Const
Potion Property POTI_ItemTransfer Auto Const
Potion Property POTI_RoverDeployer Auto Const
ReferenceAlias Property HomeShip Auto Const mandatory
Message Property MSG_ItemTransferAbort Auto Const
Message Property MSG_CargoHoldFull Auto Const
Message Property MSG_CloseTrunk Auto Const
Spell Property SPL_RoverFinder Auto Const
Keyword Property KWD_VehicleKeyword Auto Const mandatory
ReferenceAlias Property MyVehicle Auto mandatory

ObjectReference currentVehicle
Bool InContainer = False

Event OnInit()
      	  
	  AddInventoryEventFilter(KeywordContraband)       
	  AddInventoryEventFilter(KeywordItemTransfer) 
      RegisterForMenuOpenCloseEvent("ContainerMenu") 

EndEvent

Event OnMenuOpenCloseEvent(String asMenuName, Bool abOpening)

	     If asMenuName == "ContainerMenu" 
                   If abOpening == True	
                      InContainer = True
                           If GetItemCount(POTI_ItemTransfer) <= 0
                              Additem(POTI_ItemTransfer, 1, True)
                        EndIf
	            Else
                      InContainer = False
	            EndIf
	  EndIf

EndEvent

Event OnActivate(ObjectReference akActionRef)
      	  
    If akActionRef == PlayerRef
	   AddInventoryEventFilter(KeywordContraband) 
	   AddInventoryEventFilter(KeywordItemTransfer)
	   RegisterForMenuOpenCloseEvent("ContainerMenu")
	   SoundFX_BeepSuccess.Play(PlayerRef, None, None)
          If PlayerRef.GetItemCount(POTI_RoverDeployer) <= 0
             PlayerRef.Additem(POTI_RoverDeployer, 1, False)
	   EndIf      
 EndIf

EndEvent

Event OnItemAdded(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer, Int aiTransferReason)
	
	If RoverSystems_ContrabandStorage.GetValue() == 0
	     If akBaseItem.HasKeyword(KeywordContraband)
			SoundFX_BeepFail.Play(PlayerRef, None, None)
			RemoveItem(akBaseItem, aiItemCount, True, PlayerRef) 	         
			 
			 If IsBoundGameObjectAvailable()
		        Utility.Wait(0.1)
				SPL_ContrabandFail.cast(PlayerRef, PlayerRef)	
	      EndIf
            
	  EndIf
 EndIf

EndEvent

Event OnItemRemoved(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer, Int aiTransferReason)

If InContainer == True
    If akBaseItem.HasKeyword(KeywordItemTransfer)
	   PlayerRef.Removeitem(POTI_ItemTransfer, aiItemCount, True, None)
	   SpaceShipReference homeShipRef = HomeShip.GetShipRef()
       Float CargoHoldCapacity = homeShipRef.GetShipMaxCargoWeight() - homeShipRef.GetWeightInContainer()
       Float CargoHoldNeededCapacity = GetWeightInContainer()	
	   Float CargoHoldOvercapacity = homeShipRef.GetWeightInContainer() - homeShipRef.GetShipMaxCargoWeight()
       Float CargoHoldNeededCapacityWeight = GetWeightInContainer() + CargoHoldOvercapacity		
	   MSG_CloseTrunk.Show()
	   Utility.Wait(0.1)
	   FindVehicle()	
		If currentVehicle.GetDistance(homeShipRef) <= 30
		       If GetWeightInContainer() > CargoHoldCapacity
                  SoundFX_BeepFail.Play(PlayerRef, None, None)
	                 If homeShipRef.GetWeightInContainer() > homeShipRef.GetShipMaxCargoWeight()   
				        MSG_CargoHoldFull.show(CargoHoldNeededCapacity, 0.00, CargoHoldNeededCapacityWeight, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
			      Else 
				        MSG_CargoHoldFull.show(CargoHoldNeededCapacity, CargoHoldCapacity, CargoHoldNeededCapacity, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
			      EndIf
			 Else
			      RemoveAllItems(homeShipRef, False, False)
				  SoundFX_ModuleRemove.Play(PlayerRef, None, None)
            EndIf
	 Else
           SoundFX_BeepFail.Play(PlayerRef, None, None)
	       MSG_ItemTransferAbort.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	 EndIf
 
 EndIf
EndIf

EndEvent

Function FindVehicle()
     
	 SPL_RoverFinder.Cast(PlayerRef, None)
     currentVehicle = MyVehicle.GetReference()
	 MyVehicle.ClearAndRefillAlias()
	 MyVehicle.ForceRefTo(currentVehicle)     
	 Utility.Wait(0.1)
    
     If !currentVehicle.HasKeyword(KWD_VehicleKeyword)
        currentVehicle = MyVehicle.GetReference()
	    MyVehicle.ClearAndRefillAlias()
	    MyVehicle.ForceRefTo(currentVehicle)  
        Int I = 0
        Int maxLoops = 1
        While currentVehicle == None && I < maxLoops
        currentVehicle = MyVehicle.GetReference()
	    MyVehicle.ClearAndRefillAlias()
	    MyVehicle.ForceRefTo(currentVehicle)  
        Utility.Wait(0.1)
        I += 1
        EndWhile
  EndIf
     
EndFunction