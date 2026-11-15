ScriptName SISA_MaintenanceStationTrigger Extends TerminalMenu Conditional

Quest Property QuestSpaceshipSystems Auto Const

Function ActivateMaintenanceStation_00(ObjectReference akTerminalRef)
         
		 EnterMaintenanceStation()

EndFunction

Function EnterMaintenanceStation()
         
         (QuestSpaceshipSystems as SISA_SpaceshipFuel).MaintenanceStationEnter()

EndFunction