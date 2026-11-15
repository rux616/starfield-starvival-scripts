ScriptName SISA_RefuelingStationTerminal Extends TerminalMenu

Actor Property RefuelingStation Auto Const mandatory
TopicInfo Property TopicInfo_CustomRefuelShipMenu Auto Const
TopicInfo Property TopicInfo_CustomRefuelVehicleMenu Auto Const
TopicInfo Property TopicInfo_CustomRepairShipMenu Auto Const
TopicInfo Property TopicInfo_CustomRepairVehicleMenu Auto Const

Function OPENBARTER_00(ObjectReference akTerminalRef)
         RefuelingStation.ShowBarterMenu()
EndFunction

Function REFUELSHIP_01(ObjectReference akTerminalRef)
	  SISA_ShipTechCustomRefuelMenu CustomRefuelShipTechScript = TopicInfo_CustomRefuelShipMenu as SISA_ShipTechCustomRefuelMenu         
      If CustomRefuelShipTechScript
         CustomRefuelShipTechScript.ShipTechnicianMenu()
   EndIf
EndFunction

Function REFUELVEHICLE_02(ObjectReference akTerminalRef)
	  SISA_ShipVendorVehicleRefuel CustomRefuelVehicleTechScript = TopicInfo_CustomRefuelVehicleMenu as SISA_ShipVendorVehicleRefuel         
      If CustomRefuelVehicleTechScript
         CustomRefuelVehicleTechScript.RefuelMenu()
   EndIf
EndFunction

Function REPAIRSHIP_03(ObjectReference akTerminalRef)
	  SISA_ShipTechCustomRepairMenu CustomRepairShipTechScript = TopicInfo_CustomRepairShipMenu as SISA_ShipTechCustomRepairMenu         
      If CustomRepairShipTechScript
         CustomRepairShipTechScript.ShipTechnicianMenu()
   EndIf
EndFunction

Function REPAIRVEHICLE_04(ObjectReference akTerminalRef)
	  SISA_ShipVendorVehicleRepair CustomRepairVehicleTechScript = TopicInfo_CustomRepairVehicleMenu as SISA_ShipVendorVehicleRepair         
      If CustomRepairVehicleTechScript
         CustomRepairVehicleTechScript.RepairMenu()
   EndIf
EndFunction
