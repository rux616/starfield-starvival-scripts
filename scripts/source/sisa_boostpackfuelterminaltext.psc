ScriptName SISA_BoostpackFuelTerminalText Extends TerminalMenu Conditional

Actor Property PlayerRef Auto Const
ActorValue Property BoostpackFuelAV Auto Const
TerminalMenu property _SISA_TerminalMenu_BoostpackFuelTerminal_Main auto const mandatory
GlobalVariable Property FuelCooldownCounts Auto Const
MiscObject Property BoostpackFuelCanisterEmpty Auto Const
MiscObject Property Helium3Resource Auto Const
MiscObject Property BenzeneResource Auto Const
ObjectReference Property BoostpackReplenisherBoxRef Auto Const mandatory

Event OnTerminalMenuEnter(TerminalMenu akTerminalBase, ObjectReference akTerminalRef)

    If akTerminalBase == _SISA_TerminalMenu_BoostpackFuelTerminal_Main   
        UpdateTextReplacement(akTerminalRef)
 EndIf

EndEvent

function UpdateTextReplacement(ObjectReference akTerminalRef)
        
		Int TotalFuel = PlayerRef.GetValue(BoostpackFuelAV) as Int
		Int TotalEmptyCanisters = BoostpackReplenisherBoxRef.GetItemCount(BoostpackFuelCanisterEmpty)
		Int TotalHelium3 = BoostpackReplenisherBoxRef.GetItemCount(Helium3Resource)
		Int TotalBenzene = BoostpackReplenisherBoxRef.GetItemCount(BenzeneResource)
		Float Cooldown = FuelCooldownCounts.GetValue()      
        
		akTerminalRef.AddTextReplacementValue("Fuel", TotalFuel)
        akTerminalRef.AddTextReplacementValue("Time", Cooldown)
        akTerminalRef.AddTextReplacementValue("Canister", TotalEmptyCanisters)
        akTerminalRef.AddTextReplacementValue("Helium3", TotalHelium3)
        akTerminalRef.AddTextReplacementValue("Benzene", TotalBenzene)

EndFunction



