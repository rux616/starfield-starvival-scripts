ScriptName SISA_LandingFeeTermMenuText Extends TerminalMenu Conditional

TerminalMenu property _SISA_TerminalMenu_LandingFeeTerminal_Main auto const mandatory
Quest Property EconomyQuest Auto Const
Location Property LocNeon Auto Const
Location Property LocAkila Auto Const
Location Property LocNewAtlantis Auto Const
Location Property LocCydonia Auto Const
Location Property LocHopeTown Auto Const
Location Property LocGagarin Auto Const
Location Property LocNewHomestead Auto Const
Location Property LocDazra Auto Const 
Location Property LocRedMile Auto Const 
sq_playershipscript Property SQ_PlayerShip Auto

Event OnTerminalMenuEnter(TerminalMenu akTerminalBase, ObjectReference akTerminalRef)

    If akTerminalBase == _SISA_TerminalMenu_LandingFeeTerminal_Main   
       (EconomyQuest as SISA_Economy).LandingFeeLocationForStarview()
	   UpdateTextReplacement(akTerminalRef)
 EndIf

EndEvent

Function UpdateTextReplacement(ObjectReference akTerminalRef)
        
		Actor player = Game.GetPlayer()	
		MiscObject TotalCreditsAmount = Game.GetCredits()												
		Int AvailableCredits = player.GetItemCount(TotalCreditsAmount)
		Int LandingDebt = (EconomyQuest as SISA_Economy).LandingFeeDebt

		Int LandingFeeNeon = (EconomyQuest as SISA_Economy).FinalFeeNeon	         
		Int LandingFeeAkila = (EconomyQuest as SISA_Economy).FinalFeeAkila	
		Int LandingFeeAtlantis = (EconomyQuest as SISA_Economy).FinalFeeAtlantis	
		Int LandingFeeCydonia = (EconomyQuest as SISA_Economy).FinalFeeCydonia	 	         
		Int LandingFeeHopetown = (EconomyQuest as SISA_Economy).FinalFeeHopetown	 
		Int LandingFeeGagarin = (EconomyQuest as SISA_Economy).FinalFeeGagarin	 
		Int LandingFeeNewHomestead = (EconomyQuest as SISA_Economy).FinalFeeNewHomestead	 
		Int LandingFeeDazra = (EconomyQuest as SISA_Economy).FinalFeeDazra			
		Int LandingFeeRedMile = (EconomyQuest as SISA_Economy).FinalFeeRedMile
   
        akTerminalRef.AddTextReplacementValue("Credits", AvailableCredits)
        akTerminalRef.AddTextReplacementValue("DebtCost", LandingDebt)
                 
				 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
				 If akShip.IsInLocation(LocNeon)
			        akTerminalRef.AddTextReplacementValue("LandingFee", LandingFeeNeon)
			 ElseIf akShip.IsInLocation(LocAkila)
			        akTerminalRef.AddTextReplacementValue("LandingFee", LandingFeeAkila)
			 ElseIf akShip.IsInLocation(LocNewAtlantis)
			        akTerminalRef.AddTextReplacementValue("LandingFee", LandingFeeAtlantis)
			 ElseIf akShip.IsInLocation(LocCydonia)
			        akTerminalRef.AddTextReplacementValue("LandingFee", LandingFeeCydonia)
			 ElseIf akShip.IsInLocation(LocHopeTown)
			        akTerminalRef.AddTextReplacementValue("LandingFee", LandingFeeHopetown)
			 ElseIf akShip.IsInLocation(LocGagarin)
			        akTerminalRef.AddTextReplacementValue("LandingFee", LandingFeeGagarin)
			 ElseIf akShip.IsInLocation(LocNewHomestead)
			        akTerminalRef.AddTextReplacementValue("LandingFee", LandingFeeNewHomestead)
			 ElseIf akShip.IsInLocation(LocDazra)
			        akTerminalRef.AddTextReplacementValue("LandingFee", LandingFeeDazra)
			 ElseIf akShip.IsInLocation(LocRedMile)
			        akTerminalRef.AddTextReplacementValue("LandingFee", LandingFeeRedMile)
              EndIf

EndFunction