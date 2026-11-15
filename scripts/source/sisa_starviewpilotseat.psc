ScriptName SISA_StarviewPilotSeat Extends Perk Const hidden

Quest Property QuestSpaceshipSystems Auto Const
Actor Property PlayerRef Auto Const
ObjectReference Property StarviewTerminalFaster Auto Const

Function Fragment_Entry_00(ObjectReference akTargetRef, Actor akActor)
      SISA_SpaceshipFuel SpaceshipSystemsScript = QuestSpaceshipSystems as SISA_SpaceshipFuel        
      StarviewTerminalFaster.Activate(PlayerRef, False)
      If SpaceshipSystemsScript
         SpaceshipSystemsScript.Starview()
   EndIf  
EndFunction

Function Fragment_Entry_01(ObjectReference akTargetRef, Actor akActor)
      SISA_SpaceshipFuel SpaceshipSystemsScript = QuestSpaceshipSystems as SISA_SpaceshipFuel        
      StarviewTerminalFaster.Activate(PlayerRef, False)
      If SpaceshipSystemsScript
         SpaceshipSystemsScript.Starview()
   EndIf  
EndFunction