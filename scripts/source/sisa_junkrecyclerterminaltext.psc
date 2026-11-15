ScriptName SISA_JunkRecyclerTerminalText Extends TerminalMenu Conditional

Actor Property PlayerRef Auto Const
ActorValue Property AV_JunkRecycleEnergy Auto Const
TerminalMenu property _SISA_TerminalMenu_JunkRecycleTerminal_Main auto const mandatory
FormList Property List_VacuumTape Auto Const
FormList Property List_Cosmetics Auto Const
FormList Property List_EmptyPacks Auto Const
FormList Property List_Tools Auto Const
FormList Property List_DataWires Auto Const
FormList Property List_AluminumTrays Auto Const
FormList Property List_PolymerTrays Auto Const
FormList Property List_CircuitBoards Auto Const
FormList Property List_Microscopes Auto Const
FormList Property List_FireExtinguishers Auto Const
FormList Property List_GymInventory Auto Const
FormList Property List_PlushyToys Auto Const
FormList Property List_EmergencyPowerCells Auto Const
GlobalVariable Property GV_Hacked Auto Const
GlobalVariable Property GV_Empty Auto Const
ReferenceAlias Property HomeShip Auto Const mandatory
ObjectReference Property JunkRecyclerCompartmentRef02 Auto Const mandatory

Int VacuumTapeAmount = 1
Int CosmeticsAmount1 = 1
Int CosmeticsAmount2 = 2
Int EmptyPacksAmount = 1
Int ToolsAmount1 = 1
Int ToolsAmount2 = 1
Int WiresAmount1 = 2
Int WiresAmount2 = 3
Int WiresAmount3 = 3
Int AluminumTraysAmount = 1
Int PolymerTraysAmount = 1
Int CircuitBoardsAmount1 = 2
Int CircuitBoardsAmount2 = 2
Int CircuitBoardsAmount3 = 2
Int MicroscopesAmount1 = 3
Int MicroscopesAmount2 = 1
Int MicroscopesAmount3 = 2
Int FireExtinguishersAmount1 = 1
Int FireExtinguishersAmount2 = 1
Int FireExtinguishersAmount3 = 1
Int GymInventoryAmount1 = 2
Int GymInventoryAmount2 = 3
Int GymInventoryAmount3 = 1
Int PlushyToysAmount1 = 1
Int PlushyToysAmount2 = 2
Int PowerCellAmount1 = 3
Int PowerCellAmount2 = 3
Int PowerCellAmount3 = 3

Float DepleteChargeAdhesive = 0.1
Float DepleteChargeCosmetics = 0.2
Float DepleteChargeEmptyPacks = 0.1
Float DepleteChargeIronJunk = 0.6
Float DepleteChargeWires = 0.7
Float DepleteChargeAluminumJunk = 0.5
Float DepleteChargePolymerJunk = 0.15
Float DepleteChargeCircuitBoards = 0.8
Float DepleteChargeMicroscopes = 1.0
Float DepleteChargeFireExtinguishers = 1.2
Float DepleteChargeGymInventory = 1.8
Float DepleteChargePlushyToys = 0.15
Float DepleteChargePowerCells = 1.5

Event OnTerminalMenuEnter(TerminalMenu akTerminalBase, ObjectReference akTerminalRef)

    If akTerminalBase == _SISA_TerminalMenu_JunkRecycleTerminal_Main   
       UpdateTextReplacement(akTerminalRef)
		      If PlayerRef.GetValue(AV_JunkRecycleEnergy) <= 0
		         GV_Empty.SetValue(1)
		   EndIf
 EndIf

EndEvent

Int Function OutputAmount()
    
	  Int Mult = 1 
	  Int MultHacked = 3    
	
	  If GV_Hacked.GetValue() == 0
         Return Mult
  Else
         Return MultHacked
   EndIf

EndFunction

Float Function ChargeToDeplete()
    
	  Float ChargeMult = 1.5 
	  Float ChargeMultHacked = 3.5    
	
	  If GV_Hacked.GetValue() == 0
         Return ChargeMult
  Else
         Return ChargeMultHacked
   EndIf

EndFunction

Function UpdateTextReplacement(ObjectReference akTerminalRef)
        
		Float ChargeDepleteMult = ChargeToDeplete()				
		Float TotalChargeAmount = PlayerRef.GetValue(AV_JunkRecycleEnergy)
		Float TotalVacuumTapeCharge = DepleteChargeAdhesive * JunkRecyclerCompartmentRef02.GetItemCount(List_VacuumTape) * ChargeDepleteMult		
		Float TotalCosmeticsCharge = DepleteChargeCosmetics * JunkRecyclerCompartmentRef02.GetItemCount(List_Cosmetics) * ChargeDepleteMult		
		Float TotalEmptyPacksCharge = DepleteChargeEmptyPacks * JunkRecyclerCompartmentRef02.GetItemCount(List_EmptyPacks) * ChargeDepleteMult		
		Float TotalToolsCharge = DepleteChargeIronJunk * JunkRecyclerCompartmentRef02.GetItemCount(List_Tools) * ChargeDepleteMult		
		Float TotalDataWiresCharge = DepleteChargeWires * JunkRecyclerCompartmentRef02.GetItemCount(List_DataWires) * ChargeDepleteMult
		Float TotalAluminumTraysCharge = DepleteChargeAluminumJunk * JunkRecyclerCompartmentRef02.GetItemCount(List_AluminumTrays) * ChargeDepleteMult
		Float TotalPolymerTraysCharge = DepleteChargePolymerJunk * JunkRecyclerCompartmentRef02.GetItemCount(List_PolymerTrays) * ChargeDepleteMult
		Float TotalCircuitBoardsCharge = DepleteChargeCircuitBoards * JunkRecyclerCompartmentRef02.GetItemCount(List_CircuitBoards) * ChargeDepleteMult
		Float TotalMiscroscopesCharge = DepleteChargeMicroscopes * JunkRecyclerCompartmentRef02.GetItemCount(List_Microscopes) * ChargeDepleteMult
		Float TotalFireExtinguishersCharge = DepleteChargeFireExtinguishers * JunkRecyclerCompartmentRef02.GetItemCount(List_FireExtinguishers) * ChargeDepleteMult
		Float TotalGymInventoryCharge = DepleteChargeGymInventory * JunkRecyclerCompartmentRef02.GetItemCount(List_GymInventory) * ChargeDepleteMult
		Float TotalPlushyToysCharge = DepleteChargePlushyToys * JunkRecyclerCompartmentRef02.GetItemCount(List_PlushyToys) * ChargeDepleteMult
		Float TotalEmergencyPowerCellsCharge = DepleteChargePowerCells * JunkRecyclerCompartmentRef02.GetItemCount(List_EmergencyPowerCells) * ChargeDepleteMult
		Float TotalRecAllCharge = TotalVacuumTapeCharge + TotalCosmeticsCharge + TotalEmptyPacksCharge + TotalToolsCharge + TotalDataWiresCharge + TotalAluminumTraysCharge + TotalPolymerTraysCharge + TotalCircuitBoardsCharge + TotalMiscroscopesCharge + TotalFireExtinguishersCharge + TotalGymInventoryCharge + TotalPlushyToysCharge + TotalEmergencyPowerCellsCharge  
		
		Int OutputMultiplier = OutputAmount()				
		Int TotalVacuumTape = JunkRecyclerCompartmentRef02.GetItemCount(List_VacuumTape)
		Int TotalVacuumTapeOutput = VacuumTapeAmount * JunkRecyclerCompartmentRef02.GetItemCount(List_VacuumTape) * OutputMultiplier		
		Int TotalCosmetics = JunkRecyclerCompartmentRef02.GetItemCount(List_Cosmetics)
		Int TotalCosmeticsOutput1 = CosmeticsAmount1 * JunkRecyclerCompartmentRef02.GetItemCount(List_Cosmetics) * OutputMultiplier
		Int TotalCosmeticsOutput2 = CosmeticsAmount2 * JunkRecyclerCompartmentRef02.GetItemCount(List_Cosmetics) * OutputMultiplier				
		Int TotalEmptyPacks = JunkRecyclerCompartmentRef02.GetItemCount(List_EmptyPacks)
		Int TotalEmptyPacksOutput = EmptyPacksAmount * JunkRecyclerCompartmentRef02.GetItemCount(List_EmptyPacks) * OutputMultiplier				
		Int TotalTools = JunkRecyclerCompartmentRef02.GetItemCount(List_Tools)
		Int TotalToolsOutput1 = ToolsAmount1 * JunkRecyclerCompartmentRef02.GetItemCount(List_Tools) * OutputMultiplier
		Int TotalToolsOutput2 = ToolsAmount2 * JunkRecyclerCompartmentRef02.GetItemCount(List_Tools) * OutputMultiplier								
		Int TotalDataWires = JunkRecyclerCompartmentRef02.GetItemCount(List_DataWires)
		Int TotalDataWiresOutput1 = WiresAmount1 * JunkRecyclerCompartmentRef02.GetItemCount(List_DataWires) * OutputMultiplier		
		Int TotalDataWiresOutput2 = WiresAmount2 * JunkRecyclerCompartmentRef02.GetItemCount(List_DataWires) * OutputMultiplier		
		Int TotalDataWiresOutput3 = WiresAmount3 * JunkRecyclerCompartmentRef02.GetItemCount(List_DataWires) * OutputMultiplier								
		Int TotalAluminumTrays = JunkRecyclerCompartmentRef02.GetItemCount(List_AluminumTrays)
		Int TotalAluminumTraysOutput = AluminumTraysAmount * JunkRecyclerCompartmentRef02.GetItemCount(List_AluminumTrays) * OutputMultiplier
		Int TotalPolymerTrays = JunkRecyclerCompartmentRef02.GetItemCount(List_PolymerTrays)
		Int TotalPolymerTraysOutput = PolymerTraysAmount * JunkRecyclerCompartmentRef02.GetItemCount(List_PolymerTrays) * OutputMultiplier				
		Int TotalCircuitBoards = JunkRecyclerCompartmentRef02.GetItemCount(List_CircuitBoards)
		Int TotalCircuitBoardsOutput1 = CircuitBoardsAmount1 * JunkRecyclerCompartmentRef02.GetItemCount(List_CircuitBoards) * OutputMultiplier		
		Int TotalCircuitBoardsOutput2 = CircuitBoardsAmount2 * JunkRecyclerCompartmentRef02.GetItemCount(List_CircuitBoards) * OutputMultiplier		
		Int TotalCircuitBoardsOutput3 = CircuitBoardsAmount3 * JunkRecyclerCompartmentRef02.GetItemCount(List_CircuitBoards) * OutputMultiplier				
		Int TotalMiscroscopes = JunkRecyclerCompartmentRef02.GetItemCount(List_Microscopes)
		Int TotalMiscroscopesOutput1 = MicroscopesAmount1 * JunkRecyclerCompartmentRef02.GetItemCount(List_Microscopes) * OutputMultiplier		
		Int TotalMiscroscopesOutput2 = MicroscopesAmount2 * JunkRecyclerCompartmentRef02.GetItemCount(List_Microscopes) * OutputMultiplier		
		Int TotalMiscroscopesOutput3 = MicroscopesAmount3 * JunkRecyclerCompartmentRef02.GetItemCount(List_Microscopes) * OutputMultiplier
		Int TotalFireExtinguishers = JunkRecyclerCompartmentRef02.GetItemCount(List_FireExtinguishers)
		Int TotalFireExtinguishersOutput1 = FireExtinguishersAmount1 * JunkRecyclerCompartmentRef02.GetItemCount(List_FireExtinguishers) * OutputMultiplier		
		Int TotalFireExtinguishersOutput2 = FireExtinguishersAmount2 * JunkRecyclerCompartmentRef02.GetItemCount(List_FireExtinguishers) * OutputMultiplier		
		Int TotalFireExtinguishersOutput3 = FireExtinguishersAmount3 * JunkRecyclerCompartmentRef02.GetItemCount(List_FireExtinguishers) * OutputMultiplier				
		Int TotalGymInventory = JunkRecyclerCompartmentRef02.GetItemCount(List_GymInventory)
		Int TotalGymInventoryOutput1 = GymInventoryAmount1 * JunkRecyclerCompartmentRef02.GetItemCount(List_GymInventory) * OutputMultiplier		
		Int TotalGymInventoryOutput2 = GymInventoryAmount2 * JunkRecyclerCompartmentRef02.GetItemCount(List_GymInventory) * OutputMultiplier		
		Int TotalGymInventoryOutput3 = GymInventoryAmount3 * JunkRecyclerCompartmentRef02.GetItemCount(List_GymInventory) * OutputMultiplier						
		Int TotalPlushyToys = JunkRecyclerCompartmentRef02.GetItemCount(List_PlushyToys)
		Int TotalPlushyToysOutput1 = PlushyToysAmount1 * JunkRecyclerCompartmentRef02.GetItemCount(List_PlushyToys) * OutputMultiplier		
		Int TotalPlushyToysOutput2 = PlushyToysAmount2 * JunkRecyclerCompartmentRef02.GetItemCount(List_PlushyToys) * OutputMultiplier				
		Int TotalEmergencyPowerCells = JunkRecyclerCompartmentRef02.GetItemCount(List_EmergencyPowerCells)
		Int TotalEmergencyPowerCellsOutput1 = PowerCellAmount1 * JunkRecyclerCompartmentRef02.GetItemCount(List_EmergencyPowerCells) * OutputMultiplier		
		Int TotalEmergencyPowerCellsOutput2 = PowerCellAmount2 * JunkRecyclerCompartmentRef02.GetItemCount(List_EmergencyPowerCells) * OutputMultiplier		
		Int TotalEmergencyPowerCellsOutput3 = PowerCellAmount3 * JunkRecyclerCompartmentRef02.GetItemCount(List_EmergencyPowerCells) * OutputMultiplier
        
		akTerminalRef.AddTextReplacementValue("VacuumTape", TotalVacuumTape)
        akTerminalRef.AddTextReplacementValue("VacuumTapeNum", TotalVacuumTapeOutput)        
        akTerminalRef.AddTextReplacementValue("VacuumTapeCharge", TotalVacuumTapeCharge)
		akTerminalRef.AddTextReplacementValue("Cosmetics", TotalCosmetics)
        akTerminalRef.AddTextReplacementValue("CosmeticsNum1", TotalCosmeticsOutput1)        
        akTerminalRef.AddTextReplacementValue("CosmeticsNum2", TotalCosmeticsOutput2)				
        akTerminalRef.AddTextReplacementValue("CosmeticsCharge", TotalCosmeticsCharge)
		akTerminalRef.AddTextReplacementValue("EmptyPacks", TotalEmptyPacks)
        akTerminalRef.AddTextReplacementValue("EmptyPacksNum", TotalEmptyPacksOutput)        		
        akTerminalRef.AddTextReplacementValue("EmptyPacksCharge", TotalEmptyPacksCharge) 
		akTerminalRef.AddTextReplacementValue("Tools", TotalTools)
        akTerminalRef.AddTextReplacementValue("ToolsNum1", TotalToolsOutput1)        
        akTerminalRef.AddTextReplacementValue("ToolsNum2", TotalToolsOutput2)				
        akTerminalRef.AddTextReplacementValue("ToolsCharge", TotalToolsCharge)
		akTerminalRef.AddTextReplacementValue("DataWires", TotalDataWires)
        akTerminalRef.AddTextReplacementValue("DataWiresNum1", TotalDataWiresOutput1)        
        akTerminalRef.AddTextReplacementValue("DataWiresNum2", TotalDataWiresOutput2)		
        akTerminalRef.AddTextReplacementValue("DataWiresNum3", TotalDataWiresOutput3)		
        akTerminalRef.AddTextReplacementValue("DataWiresCharge", TotalDataWiresCharge)
		akTerminalRef.AddTextReplacementValue("AluminumTrays", TotalAluminumTrays)
        akTerminalRef.AddTextReplacementValue("AluminumTraysNum", TotalAluminumTraysOutput)        		
        akTerminalRef.AddTextReplacementValue("AluminumTraysCharge", TotalAluminumTraysCharge)
		akTerminalRef.AddTextReplacementValue("PolymerTrays", TotalPolymerTrays)
        akTerminalRef.AddTextReplacementValue("PolymerTraysNum", TotalPolymerTraysOutput)         		
        akTerminalRef.AddTextReplacementValue("PolymerTraysCharge", TotalPolymerTraysCharge)
		akTerminalRef.AddTextReplacementValue("CircuitBoards", TotalCircuitBoards)
        akTerminalRef.AddTextReplacementValue("CircuitBoardsNum1", TotalCircuitBoardsOutput1)        
        akTerminalRef.AddTextReplacementValue("CircuitBoardsNum2", TotalCircuitBoardsOutput2)		
        akTerminalRef.AddTextReplacementValue("CircuitBoardsNum3", TotalCircuitBoardsOutput3)				
        akTerminalRef.AddTextReplacementValue("CircuitBoardsCharge", TotalCircuitBoardsCharge)
		akTerminalRef.AddTextReplacementValue("Microscopes", TotalMiscroscopes)
        akTerminalRef.AddTextReplacementValue("MicroscopesNum1", TotalMiscroscopesOutput1)        
        akTerminalRef.AddTextReplacementValue("MicroscopesNum2", TotalMiscroscopesOutput2)		
        akTerminalRef.AddTextReplacementValue("MicroscopesNum3", TotalMiscroscopesOutput3)        		
        akTerminalRef.AddTextReplacementValue("MicroscopesCharge", TotalMiscroscopesCharge)
		akTerminalRef.AddTextReplacementValue("FireExtinguishers", TotalFireExtinguishers)
        akTerminalRef.AddTextReplacementValue("FireExtinguishersNum1", TotalFireExtinguishersOutput1)        
        akTerminalRef.AddTextReplacementValue("FireExtinguishersNum2", TotalFireExtinguishersOutput2)		
        akTerminalRef.AddTextReplacementValue("FireExtinguishersNum3", TotalFireExtinguishersOutput3)        		
        akTerminalRef.AddTextReplacementValue("FireExtinguishersCharge", TotalFireExtinguishersCharge) 
		akTerminalRef.AddTextReplacementValue("GymInventory", TotalGymInventory)
        akTerminalRef.AddTextReplacementValue("GymInventoryNum1", TotalGymInventoryOutput1)        
        akTerminalRef.AddTextReplacementValue("GymInventoryNum2", TotalGymInventoryOutput2)		
        akTerminalRef.AddTextReplacementValue("GymInventoryNum3", TotalGymInventoryOutput3) 
        akTerminalRef.AddTextReplacementValue("GymInventoryCharge", TotalGymInventoryCharge) 
        akTerminalRef.AddTextReplacementValue("PlushyToys", TotalPlushyToys)
        akTerminalRef.AddTextReplacementValue("PlushyToysNum1", TotalPlushyToysOutput1)        
        akTerminalRef.AddTextReplacementValue("PlushyToysNum2", TotalPlushyToysOutput2)	        		
        akTerminalRef.AddTextReplacementValue("PlushyToysCharge", TotalPlushyToysCharge)
		akTerminalRef.AddTextReplacementValue("PowerCells", TotalEmergencyPowerCells)
        akTerminalRef.AddTextReplacementValue("PowerCellsNum1", TotalEmergencyPowerCellsOutput1)        
        akTerminalRef.AddTextReplacementValue("PowerCellsNum2", TotalEmergencyPowerCellsOutput2)		
        akTerminalRef.AddTextReplacementValue("PowerCellsNum3", TotalEmergencyPowerCellsOutput3) 
        akTerminalRef.AddTextReplacementValue("PowerCellsCharge", TotalEmergencyPowerCellsCharge) 
        akTerminalRef.AddTextReplacementValue("RecAllCharge", TotalRecAllCharge)
        akTerminalRef.AddTextReplacementValue("ChargeAmount", TotalChargeAmount)       
        akTerminalRef.AddTextReplacementValue("ChargeLeft", TotalChargeAmount)

EndFunction



