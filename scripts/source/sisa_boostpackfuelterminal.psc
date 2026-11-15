ScriptName SISA_BoostpackFuelTerminal Extends TerminalMenu Conditional

Actor Property PlayerRef Auto Const
ActorValue Property BoostpackFuelAV Auto Const
Quest Property MainSurvivalQuest Auto Const
wwiseevent Property SoundEvent Auto Const
wwiseevent Property SoundEvent02 Auto Const
GlobalVariable Property FuelCooldown Auto Const
GlobalVariable Property FuelCooldownCounts Auto Const
GlobalVariable Property BlockJetpacking Auto Const
MiscObject Property BoostpackFuelCanisterEmpty Auto Const
MiscObject Property Helium3Resource Auto Const
MiscObject Property BenzeneResource Auto Const
Potion Property BoostpackFuelCanisterFull Auto Const
Message Property NoResource Auto Const
Message Property NoResource02 Auto Const
ObjectReference Property BoostpackReplenisherBoxRef Auto Const mandatory
sq_playershipscript Property SQ_PlayerShip Auto

Function REPLENISHFUEL_00(ObjectReference akTerminalRef)

         ReplenishFuel()
		 UpdateTextReplacement(akTerminalRef)

EndFunction

Function REPLENISHFUELCANISTER_01(ObjectReference akTerminalRef)

         ReplenishFuelCanister()
		 UpdateTextReplacement(akTerminalRef)

EndFunction

Function OPENFEEDER_02(ObjectReference akTerminalRef)

         BoostpackReplenisherBoxRef.Activate(PlayerRef, False)
		 
EndFunction

Function TRANSFERRESOURCES_05(ObjectReference akTerminalRef)

         TransferResources()
         UpdateTextReplacement(akTerminalRef)

EndFunction

Function TRANSFERRESOURCESSHIP_06(ObjectReference akTerminalRef)

         TransferResourcesShip()
         UpdateTextReplacement(akTerminalRef)

EndFunction

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

Function ReplenishFuel()
	       
		   If BoostpackReplenisherBoxRef.GetItemCount(Helium3Resource) >= 10 && BoostpackReplenisherBoxRef.GetItemCount(BenzeneResource) >= 10      
		      BoostpackReplenisherBoxRef.RemoveItem(Helium3Resource, 10, True, None) 
		      BoostpackReplenisherBoxRef.RemoveItem(BenzeneResource, 10, True, None)       
	          FuelCooldown.SetValue(1)
              BlockJetpacking.SetValue(0)
			  (MainSurvivalQuest as SISA_Survival).BoostpackReplenishCooldown()    
	          SoundEvent.PlayAndWait(PlayerRef, None, None)	 
	          SoundEvent02.Play(PlayerRef, None, None)
	          PlayerRef.RestoreValue(BoostpackFuelAV, 999)
        Else
		      NoResource.Show()
		EndIf

EndFunction

Function ReplenishFuelCanister()
		   
		   If BoostpackReplenisherBoxRef.GetItemCount(Helium3Resource) >= 10 && BoostpackReplenisherBoxRef.GetItemCount(BenzeneResource) >= 10 && BoostpackReplenisherBoxRef.GetItemCount(BoostpackFuelCanisterEmpty) >= 1       	        	  
		      BoostpackReplenisherBoxRef.RemoveItem(Helium3Resource, 10, True, None)
		      BoostpackReplenisherBoxRef.RemoveItem(BenzeneResource, 10, True, None)
	          BoostpackReplenisherBoxRef.RemoveItem(BoostpackFuelCanisterEmpty, 1, True, None)
	          FuelCooldown.SetValue(1)
              (MainSurvivalQuest as SISA_Survival).BoostpackReplenishCooldown()    
	          SoundEvent.PlayAndWait(PlayerRef, None, None)
	          SoundEvent02.Play(PlayerRef, None, None)
		      PlayerRef.Additem(BoostpackFuelCanisterFull, 1, False)
 	    Else
		      NoResource02.Show()
	    EndIf     

EndFunction

Function TransferResources()		 
		 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()	       	        	  
		 akShip.RemoveItem(Helium3Resource, 9999, True, BoostpackReplenisherBoxRef)
		 akShip.RemoveItem(BenzeneResource, 9999, True, BoostpackReplenisherBoxRef)
	     akShip.RemoveItem(BoostpackFuelCanisterEmpty, 9999, True, BoostpackReplenisherBoxRef)
EndFunction

Function TransferResourcesShip()		 
		 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()	       	        	  
		 BoostpackReplenisherBoxRef.RemoveItem(Helium3Resource, 9999, True, akShip)
		 BoostpackReplenisherBoxRef.RemoveItem(BenzeneResource, 9999, True, akShip)
	     BoostpackReplenisherBoxRef.RemoveItem(BoostpackFuelCanisterEmpty, 9999, True, akShip)
EndFunction
