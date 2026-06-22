ScriptName SISA_SpaceshipMaintCounter extends ObjectReference

Actor Property PlayerRef Auto Const
ActorValue Property AV_MaintenanceA Auto Const
ActorValue Property AV_MaintenanceB Auto Const
ActorValue Property AV_MaintenanceC Auto Const
ActorValue Property AV_MaintenanceM Auto Const
ActorValue Property AV_Cargo Auto Const
MiscObject Property MSC_MaintenanceDummy Auto Const
ReferenceAlias Property HomeShip Auto Const mandatory
GlobalVariable Property GV_StoreMaintenanceConsumage Auto Const
Quest Property SpaceshipSystemsQuest Auto Const
Keyword Property SpaceshipModuleClassA Auto Const
Keyword Property SpaceshipModuleClassB Auto Const
Keyword Property SpaceshipModuleClassC Auto Const
Keyword Property SpaceshipModuleClassM Auto Const

Event OnWorkshopObjectPlaced(ObjectReference akReference)
	  ActorValue CheckShipForAV = CheckShipForActorValue() 
	  Float BaseMaintenanceCapacity = PlayerRef.GetBaseValue(CheckShipForAV) 
      Float ActualMaintenance = PlayerRef.GetValue(CheckShipForAV) 
	  SetValue(AV_Cargo, BaseMaintenanceCapacity)
	  Additem(MSC_MaintenanceDummy, ActualMaintenance as Int, True)	  	  
	  RegisterForActorValueChangedEvent(PlayerRef, AV_MaintenanceA)	
	  RegisterForActorValueChangedEvent(PlayerRef, AV_MaintenanceB)
	  RegisterForActorValueChangedEvent(PlayerRef, AV_MaintenanceC)
	  RegisterForActorValueChangedEvent(PlayerRef, AV_MaintenanceM)
EndEvent

Event OnWorkshopObjectRemoved(ObjectReference akReference)	
      (SpaceshipSystemsQuest as SISA_SpaceshipFuel).RemoveDummyMaintenance()
	  UnregisterForActorValueChangedEvent(PlayerRef, AV_MaintenanceA)	
	  UnregisterForActorValueChangedEvent(PlayerRef, AV_MaintenanceB)
	  UnregisterForActorValueChangedEvent(PlayerRef, AV_MaintenanceC)
	  UnregisterForActorValueChangedEvent(PlayerRef, AV_MaintenanceM)
EndEvent

Event OnActorValueChanged(ObjectReference akObjRef, ActorValue akActorValue)    
	   
        SpaceShipReference akShip = HomeShip.GetShipRef()	   
	    ActorValue CheckShipForAV = CheckShipForActorValue() 
	    Float BaseMaintenanceCapacity = PlayerRef.GetBaseValue(CheckShipForAV) 
        Float ActualMaintenance = PlayerRef.GetValue(CheckShipForAV) 
	    Float MaintenanceConsumage = GV_StoreMaintenanceConsumage.GetValue()

	   If akObjRef == PlayerRef && akActorValue == CheckShipForAV
	      SetValue(AV_Cargo, BaseMaintenanceCapacity)
	EndIf
		
	   If akObjRef == PlayerRef && akActorValue == CheckShipForAV
		    If ActualMaintenance < ActualMaintenance
		       Removeitem(MSC_MaintenanceDummy, MaintenanceConsumage as Int, True)          
         Else
		       RemoveAllItems()
               Additem(MSC_MaintenanceDummy, ActualMaintenance as Int, True)
         EndIf
	EndIf
	  
	  RegisterForActorValueChangedEvent(PlayerRef, AV_MaintenanceA)	
	  RegisterForActorValueChangedEvent(PlayerRef, AV_MaintenanceB)
	  RegisterForActorValueChangedEvent(PlayerRef, AV_MaintenanceC)
	  RegisterForActorValueChangedEvent(PlayerRef, AV_MaintenanceM)

EndEvent

ActorValue Function CheckShipForActorValue()
                                         
										 SpaceShipReference akShip = HomeShip.GetShipRef()
				                         
										 If akShip.GetReactorClassKeyword() == SpaceshipModuleClassA
                                            return AV_MaintenanceA
									 ElseIf akShip.GetReactorClassKeyword() == SpaceshipModuleClassB
                                            return AV_MaintenanceB
									 ElseIf akShip.GetReactorClassKeyword() == SpaceshipModuleClassC
                                            return AV_MaintenanceC
									 ElseIf akShip.GetReactorClassKeyword() == SpaceshipModuleClassM
                                            return AV_MaintenanceM
									  EndIf

EndFunction