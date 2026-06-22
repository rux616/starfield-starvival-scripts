ScriptName SISA_MaintenanceStationPerk Extends Perk Const hidden

Actor Property PlayerRef Auto Const
ObjectReference Property MaintenanceStationRef Auto Const mandatory

Function ActivateMaintenanceStation_00(ObjectReference akTargetRef, Actor akActor)
    
		 MaintenanceStationRef.Activate(PlayerRef, False)

EndFunction
