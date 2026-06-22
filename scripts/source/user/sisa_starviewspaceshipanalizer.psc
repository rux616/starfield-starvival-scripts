ScriptName SISA_StarviewSpaceshipAnalizer extends ActiveMagicEffect

Quest Property QuestSpaceshipSystems Auto Const
Actor Property PlayerRef Auto Const
ObjectReference Property StarviewTerminalFaster Auto
Potion Property StarviewSpaceshipAnalizer Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      SISA_SpaceshipFuel SpaceshipSystemsScript = QuestSpaceshipSystems as SISA_SpaceshipFuel       
	  PlayerRef.Additem(StarviewSpaceshipAnalizer, 1, True)
      StarviewTerminalFaster.Activate(PlayerRef, False)
      If SpaceshipSystemsScript
         SpaceshipSystemsScript.Starview()
   EndIf  
EndEvent