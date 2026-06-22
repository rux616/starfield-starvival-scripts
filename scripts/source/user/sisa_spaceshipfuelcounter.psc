ScriptName SISA_SpaceshipFuelCounter extends ObjectReference

Actor Property PlayerRef Auto Const
ActorValue Property AV_GravJumpFuel Auto Const
ActorValue Property AV_Cargo Auto Const
MiscObject Property MSC_FuelDummy Auto Const
ReferenceAlias Property HomeShip Auto Const mandatory
GlobalVariable Property GV_StoreFuelConsumage Auto Const
Quest Property SpaceshipSystemsQuest Auto Const

Event OnWorkshopObjectPlaced(ObjectReference akReference)
      SpaceShipReference akShip = HomeShip.GetShipRef()
	  Float BaseFuelCapacity = akShip.GetBaseValue(AV_GravJumpFuel) 
      Float ActualFuelInTanks = akShip.GetValue(AV_GravJumpFuel) 
	  SetValue(AV_Cargo, BaseFuelCapacity)
	  Additem(MSC_FuelDummy, ActualFuelInTanks as Int, True)
	  RegisterForActorValueChangedEvent(akShip, AV_GravJumpFuel)	
EndEvent

Event OnWorkshopObjectRemoved(ObjectReference akReference)	
	  SpaceShipReference akShip = HomeShip.GetShipRef()
	  (SpaceshipSystemsQuest as SISA_SpaceshipFuel).RemoveDummyFuel()
	  UnregisterForActorValueChangedEvent(akShip, AV_GravJumpFuel)
EndEvent

Event OnActorValueChanged(ObjectReference akObjRef, ActorValue akActorValue)    
	   
        SpaceShipReference akShip = HomeShip.GetShipRef()	   
	    Float BaseFuelCapacity = akShip.GetBaseValue(AV_GravJumpFuel) 
        Float ActualFuelInTanks = akShip.GetValue(AV_GravJumpFuel)
	    Float FuelConsumage = GV_StoreFuelConsumage.GetValue()

	   If akObjRef == akShip && akActorValue == AV_GravJumpFuel
	      SetValue(AV_Cargo, BaseFuelCapacity)
	EndIf
		
	   If akObjRef == akShip && akActorValue == AV_GravJumpFuel
		    If ActualFuelInTanks < ActualFuelInTanks
		       Removeitem(MSC_FuelDummy, FuelConsumage as Int, True)          
         Else
		       RemoveAllItems()
               Additem(MSC_FuelDummy, ActualFuelInTanks as Int, True)
         EndIf
	EndIf
	RegisterForActorValueChangedEvent(akShip, AV_GravJumpFuel)
EndEvent