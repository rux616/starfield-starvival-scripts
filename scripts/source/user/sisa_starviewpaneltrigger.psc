ScriptName SISA_StarviewPanelTrigger extends ObjectReference

Actor Property PlayerRef Auto Const
Quest Property SpaceshipSystemsQuest Auto Const
ObjectReference Property StarviewTerminalFaster Auto

Event OnActivate(ObjectReference akActionRef)

    If akActionRef == PlayerRef
       BlockActivation(True, True) 
	   Utility.Wait(0.5)
	   StarviewTerminalFaster.Activate(PlayerRef, False)
	   (SpaceshipSystemsQuest as SISA_SpaceshipFuel).Starview() 
       BlockActivation(False, False) 
 EndIf

EndEvent