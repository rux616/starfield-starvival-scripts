ScriptName SISA_ReputationTermMenu Extends TerminalMenu Conditional

ActorValue Property AV_ReputationCF Auto Const
ActorValue Property AV_ReputationFC Auto Const
ActorValue Property AV_ReputationUC Auto Const
GlobalVariable Property GV_ReputationClearanceCost Auto Const

Function RESTOREREPUTATION_UC_01(ObjectReference akTerminalRef)
      
	  Int ServiceCostAmount = GV_ReputationClearanceCost.GetValue() as Int
	  MiscObject credits = Game.GetCredits()
      Actor player = Game.GetPlayer()     
	     
		 If player.GetValue(AV_ReputationUC) < 50 
              If player.GetItemCount(credits) >= ServiceCostAmount
			     player.RemoveItem(credits, ServiceCostAmount)  
                 player.RestoreValue(AV_ReputationUC, 5)
           EndIf	  	  	  
      EndIf

	     If player.GetValue(AV_ReputationUC) > 50   
            player.RestoreValue(AV_ReputationUC, 999)
            player.DamageValue(AV_ReputationUC, 50)
	  EndIf
	 	  
	  UpdateTextReplacement(akTerminalRef)

EndFunction

Function RESTOREREPUTATION_FC_02(ObjectReference akTerminalRef)
      
	  Int ServiceCostAmount = GV_ReputationClearanceCost.GetValue() as Int
	  MiscObject credits = Game.GetCredits()
      Actor player = Game.GetPlayer()     
	     
		 If player.GetValue(AV_ReputationFC) < 50 
              If player.GetItemCount(credits) >= ServiceCostAmount
			     player.RemoveItem(credits, ServiceCostAmount)  
                 player.RestoreValue(AV_ReputationFC, 5)
           EndIf	  	  	  
      EndIf

	     If player.GetValue(AV_ReputationFC) > 50   
            player.RestoreValue(AV_ReputationFC, 999)
            player.DamageValue(AV_ReputationFC, 50)
	  EndIf
	 	  
	  UpdateTextReplacement(akTerminalRef)

EndFunction

Function RESTOREREPUTATION_CF_03(ObjectReference akTerminalRef)
      
	  Int ServiceCostAmount = GV_ReputationClearanceCost.GetValue() as Int
	  MiscObject credits = Game.GetCredits()
      Actor player = Game.GetPlayer()     
	     
		 If player.GetValue(AV_ReputationCF) < 50 
              If player.GetItemCount(credits) >= ServiceCostAmount
			     player.RemoveItem(credits, ServiceCostAmount)  
                 player.RestoreValue(AV_ReputationCF, 5)
           EndIf	  	  	  
      EndIf

	     If player.GetValue(AV_ReputationCF) > 50   
            player.RestoreValue(AV_ReputationCF, 999)
            player.DamageValue(AV_ReputationCF, 50)
	  EndIf
	 	  
	  UpdateTextReplacement(akTerminalRef)

EndFunction

Function UpdateTextReplacement(ObjectReference akTerminalRef)
        
		Actor player = Game.GetPlayer()	
		MiscObject TotalCreditsAmount = Game.GetCredits()												
		Int AvailableCredits = player.GetItemCount(TotalCreditsAmount)
		Int ServiceCostAmount = GV_ReputationClearanceCost.GetValue() as Int
		Float TotalReputationAmount = player.GetValue(AV_ReputationCF)
		Float TotalReputationAmountFC = player.GetValue(AV_ReputationFC)
		Float TotalReputationAmountUC = player.GetValue(AV_ReputationUC)   
        
        akTerminalRef.AddTextReplacementValue("ReputationCF", TotalReputationAmount)
        akTerminalRef.AddTextReplacementValue("ReputationFC", TotalReputationAmountFC)
        akTerminalRef.AddTextReplacementValue("ReputationUC", TotalReputationAmountUC)
        akTerminalRef.AddTextReplacementValue("Credits", AvailableCredits)
        akTerminalRef.AddTextReplacementValue("ServiceCost", ServiceCostAmount)

EndFunction