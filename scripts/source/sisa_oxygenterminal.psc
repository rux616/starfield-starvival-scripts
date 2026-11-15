ScriptName SISA_OxygenTerminal Extends TerminalMenu Conditional

Actor Property PlayerRef Auto Const
ActorValue Property OxygenAV Auto Const
Quest Property OxygenQuest Auto Const
wwiseevent Property SoundEvent Auto Const
MagicEffect Property O2CapacityIncreaser Auto Const
GlobalVariable Property OxygenCooldown Auto Const
GlobalVariable Property OxygenCooldownCounts Auto Const
MiscObject Property OxygenBoosterEmpty Auto Const
MiscObject Property WaterResource Auto Const
MiscObject Property ArgonResource Auto Const
Potion Property OxygenBoosterFull Auto Const
Message Property NoResource Auto Const
Message Property NoResource02 Auto Const
ObjectReference Property OxygenReplenisherBoxRef Auto Const mandatory
sq_playershipscript Property SQ_PlayerShip Auto

Function REPLENISHOXYGEN_00(ObjectReference akTerminalRef)

         ReplenishOxygen()
		 UpdateTextReplacement(akTerminalRef)

EndFunction

Function REPLENISHOXYGENBOOSTER_01(ObjectReference akTerminalRef)

         ReplenishOxygenBooster()
		 UpdateTextReplacement(akTerminalRef)

EndFunction

Function OPENFEEDER_02(ObjectReference akTerminalRef)

         OxygenReplenisherBoxRef.Activate(PlayerRef, False)

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

Function ReplenishOxygen()
      
	       If OxygenReplenisherBoxRef.GetItemCount(WaterResource) >= 10 && OxygenReplenisherBoxRef.GetItemCount(ArgonResource) >= 10      
		      OxygenReplenisherBoxRef.RemoveItem(WaterResource, 10, True, None) 
		      OxygenReplenisherBoxRef.RemoveItem(ArgonResource, 10, True, None) 
			  OxygenCooldown.SetValue(1)
              (OxygenQuest as SISA_OxygenQuest).OxygenReplenishCooldown()    
	          SoundEvent.Play(PlayerRef, None, None)
	  
	              If PlayerRef.HasMagicEffect(O2CapacityIncreaser) == True
	                 PlayerRef.RestoreValue(OxygenAV, 999)
              Else
	                 PlayerRef.DamageValue(OxygenAV, 999)
	                 PlayerRef.RestoreValue(OxygenAV, 100)
               EndIf
        Else
		      NoResource.Show()
		EndIf

EndFunction

Function ReplenishOxygenBooster()
 	       
		   If OxygenReplenisherBoxRef.GetItemCount(WaterResource) >= 10 && OxygenReplenisherBoxRef.GetItemCount(ArgonResource) >= 10 && OxygenReplenisherBoxRef.GetItemCount(OxygenBoosterEmpty) >= 1      	  
		      OxygenReplenisherBoxRef.RemoveItem(WaterResource, 10, True, None)
		      OxygenReplenisherBoxRef.RemoveItem(ArgonResource, 10, True, None)
	          OxygenReplenisherBoxRef.RemoveItem(OxygenBoosterEmpty, 1, True, None)
	          OxygenCooldown.SetValue(1)
              (OxygenQuest as SISA_OxygenQuest).OxygenReplenishCooldown()    
	          SoundEvent.Play(PlayerRef, None, None)
		      PlayerRef.Additem(OxygenBoosterFull, 1, False)     
		Else
		      NoResource02.Show()
		EndIf   

EndFunction

Function TransferResources()		 
		 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()	       	        	  
		 akShip.RemoveItem(WaterResource, 9999, True, OxygenReplenisherBoxRef)
		 akShip.RemoveItem(ArgonResource, 9999, True, OxygenReplenisherBoxRef)
	     akShip.RemoveItem(OxygenBoosterEmpty, 9999, True, OxygenReplenisherBoxRef)
EndFunction

Function TransferResourcesShip()		 
		 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()	       	        	  
		 OxygenReplenisherBoxRef.RemoveItem(WaterResource, 9999, True, akShip)
		 OxygenReplenisherBoxRef.RemoveItem(ArgonResource, 9999, True, akShip)
	     OxygenReplenisherBoxRef.RemoveItem(OxygenBoosterEmpty, 9999, True, akShip)
EndFunction