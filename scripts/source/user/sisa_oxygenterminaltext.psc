ScriptName SISA_OxygenTerminalText Extends TerminalMenu Conditional

Actor Property PlayerRef Auto Const
ActorValue Property OxygenAV Auto Const
TerminalMenu property _SISA_TerminalMenu_OxygenTerminal_Main auto const mandatory
GlobalVariable Property OxygenCooldownCounts Auto Const
MiscObject Property OxygenBoosterEmpty Auto Const
MiscObject Property WaterResource Auto Const
MiscObject Property ArgonResource Auto Const
ObjectReference Property OxygenReplenisherBoxRef Auto Const mandatory

Event OnTerminalMenuEnter(TerminalMenu akTerminalBase, ObjectReference akTerminalRef)

    If akTerminalBase == _SISA_TerminalMenu_OxygenTerminal_Main   
        UpdateTextReplacement(akTerminalRef)
 EndIf

EndEvent

function UpdateTextReplacement(ObjectReference akTerminalRef)
        
		Int TotalOxygen = PlayerRef.GetValue(OxygenAV) as Int
		Int TotalEmptyBoosters = OxygenReplenisherBoxRef.GetItemCount(OxygenBoosterEmpty)
		Int TotalWaterRes = OxygenReplenisherBoxRef.GetItemCount(WaterResource)
		Int TotalArgonRes = OxygenReplenisherBoxRef.GetItemCount(ArgonResource)
		Float Cooldown = OxygenCooldownCounts.GetValue()      
        
		akTerminalRef.AddTextReplacementValue("Oxygen", TotalOxygen)
        akTerminalRef.AddTextReplacementValue("Time", Cooldown)
        akTerminalRef.AddTextReplacementValue("Booster", TotalEmptyBoosters)
        akTerminalRef.AddTextReplacementValue("Water", TotalWaterRes)
        akTerminalRef.AddTextReplacementValue("Argon", TotalArgonRes)

EndFunction



