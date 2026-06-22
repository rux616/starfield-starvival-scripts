ScriptName SISA_ReputationTermMenuText Extends TerminalMenu Conditional

ActorValue Property AV_ReputationFC Auto Const
ActorValue Property AV_ReputationUC Auto Const
ActorValue Property AV_ReputationCF Auto Const
TerminalMenu property _SISA_TerminalMenu_ReputationGainerTerminal_Main auto const mandatory
GlobalVariable Property GV_ReputationClearanceCost Auto Const

Event OnTerminalMenuEnter(TerminalMenu akTerminalBase, ObjectReference akTerminalRef)

    If akTerminalBase == _SISA_TerminalMenu_ReputationGainerTerminal_Main   
       UpdateTextReplacement(akTerminalRef)
 EndIf

EndEvent

Function UpdateTextReplacement(ObjectReference akTerminalRef)
        
		Actor player = Game.GetPlayer()	
		MiscObject TotalCreditsAmount = Game.GetCredits()
		Int AvailableCredits = player.GetItemCount(TotalCreditsAmount)
		Int ServiceCostAmount = GV_ReputationClearanceCost.GetValue() as Int
		Float TotalReputationAmountCF = player.GetValue(AV_ReputationCF)
		Float TotalReputationAmountFC = player.GetValue(AV_ReputationFC)
		Float TotalReputationAmountUC = player.GetValue(AV_ReputationUC)
   
        akTerminalRef.AddTextReplacementValue("ReputationCF", TotalReputationAmountCF)
        akTerminalRef.AddTextReplacementValue("ReputationFC", TotalReputationAmountFC)
        akTerminalRef.AddTextReplacementValue("ReputationUC", TotalReputationAmountUC)
        akTerminalRef.AddTextReplacementValue("Credits", AvailableCredits)
        akTerminalRef.AddTextReplacementValue("ServiceCost", ServiceCostAmount)

EndFunction