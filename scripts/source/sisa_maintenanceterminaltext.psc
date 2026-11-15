ScriptName SISA_MaintenanceTerminalText Extends TerminalMenu Conditional

Actor Property PlayerRef Auto Const

Quest Property SpaceshipSystemsQuest Auto Const

MiscObject Property SpaceshipSparePartRefueler Auto Const
MiscObject Property SpaceshipSparePartSubSystem Auto Const
MiscObject Property SpaceshipSparePartGraviticControler Auto Const
MiscObject Property SpaceshipSparePartShieldCapacitors Auto Const
MiscObject Property SpaceshipSparePartCargoSeals Auto Const
MiscObject Property SpaceshipSparePartControlLevers Auto Const
MiscObject Property SpaceshipSparePartTargetingLenses Auto Const
MiscObject Property SpaceshipSparePartBoosters Auto Const
MiscObject Property SpaceshipSparePartFirepower Auto Const
MiscObject Property SpaceshipSparePartMaintenanceServer Auto Const
MiscObject Property SpaceshipSparePartFuelPump Auto Const
MiscObject Property SpaceshipSparePartGraviticRestrainer Auto Const
MiscObject Property SpaceshipSparePartHull Auto Const
MiscObject Property SpaceshipSparePartAmmoFeeders Auto Const
MiscObject Property SpaceshipSparePartLifeSupport Auto Const
MiscObject Property SpaceshipSparePartMaintenanceBay Auto Const
MiscObject Property SpaceshipSparePartThrusters Auto Const
MiscObject Property SpaceshipSparePartTargetingInterface Auto Const
MiscObject Property SpaceshipSparePartDashboard Auto Const
MiscObject Property SpaceshipSparePartEngines Auto Const
MiscObject Property SpaceshipSparePartGraviticGenerator Auto Const
MiscObject Property SpaceshipSparePartGravDrive Auto Const
MiscObject Property SpaceshipSparePartLandingGearThrustLoss Auto Const
MiscObject Property SpaceshipSparePartLongerUndocking Auto Const
MiscObject Property SpaceshipSparePartDoorShortCircuit Auto Const
MiscObject Property SpaceshipSparePartGasLeak Auto Const
MiscObject Property SpaceshipSparePartAbnormalSpoolingPhase Auto Const
MiscObject Property SpaceshipSparePartTargetingAPCost Auto Const
MiscObject Property SpaceshipSparePartRepairBot Auto Const
MiscObject Property SpaceshipSparePartRadiationLeak Auto Const
MiscObject Property SpaceshipMaintenanceKit Auto Const
MiscObject Property Credits Auto Const

Keyword Property KWD_SpaceshipDebuffAutoRepair Auto Const
Keyword Property KWD_SpaceshipDebuffThrustersOff Auto Const
Keyword Property KWD_SpaceshipDebuffTargetingOff Auto Const
Keyword Property KWD_SpaceshipDebuffLowerWeaponDamage Auto Const
Keyword Property KWD_SpaceshipDebuffLowerCargoCapacity Auto Const
Keyword Property KWD_SpaceshipDebuffDecreasedBoost Auto Const
Keyword Property KWD_SpaceshipDebuffLessShields Auto Const
Keyword Property KWD_SpaceshipDebuffGravDriveFuelIncrease Auto Const
Keyword Property KWD_SpaceshipDebuffGravDriveDistanceDecrease Auto Const
Keyword Property KWD_SpaceshipDebuffLongerTargeting Auto Const
Keyword Property KWD_SpaceshipDebuffSlowAutoRepair Auto Const
Keyword Property KWD_SpaceshipDebuffFuelLeak Auto Const
Keyword Property KWD_SpaceshipDebuffHeatleechAttack Auto Const
Keyword Property KWD_SpaceshipDebuffSlowerWPNRechargeRate Auto Const
Keyword Property KWD_SpaceshipDebuffManeuverability Auto Const
Keyword Property KWD_SpaceshipDebuffSystemMitigation Auto Const
Keyword Property KWD_SpaceshipDebuffGravDriveZeroGravity Auto Const
Keyword Property KWD_SpaceshipDebuffHullBreach Auto Const
Keyword Property KWD_SpaceshipDebuffSystemFailure Auto Const
Keyword Property KWD_SpaceshipDebuffBrokenRefueler Auto Const
Keyword Property KWD_SpaceshipDebuffDisabledO2 Auto Const
Keyword Property KWD_SpaceshipDebuffDisabledGravDrive Auto Const
Keyword Property KWD_SpaceshipDebuffLandingGearThrustLoss Auto Const
Keyword Property KWD_SpaceshipDebuffLongerUndocking Auto Const
Keyword Property KWD_SpaceshipDebuffDoorShortCircuit Auto Const
Keyword Property KWD_SpaceshipDebuffGasLeak Auto Const
Keyword Property KWD_SpaceshipDebuffAbnormalSpoolingPhase Auto Const
Keyword Property KWD_SpaceshipDebuffTargetingAPCost Auto Const
Keyword Property KWD_SpaceshipDebuffRepairBot Auto Const
Keyword Property KWD_SpaceshipDebuffRadiationLeak Auto Const
Keyword Property KWD_SpaceshipModuleClassA Auto Const
Keyword Property KWD_SpaceshipModuleClassB Auto Const
Keyword Property KWD_SpaceshipModuleClassC Auto Const
Keyword Property KWD_SpaceshipModuleClassM Auto Const

GlobalVariable Property GV_SpaceshipDebuffAutoRepair Auto Const
GlobalVariable Property GV_SpaceshipDebuffThrustersOff Auto Const
GlobalVariable Property GV_SpaceshipDebuffTargetingOff Auto Const
GlobalVariable Property GV_SpaceshipDebuffLowerWeaponDamage Auto Const
GlobalVariable Property GV_SpaceshipDebuffLowerCargoCapacity Auto Const
GlobalVariable Property GV_SpaceshipDebuffDecreasedBoost Auto Const
GlobalVariable Property GV_SpaceshipDebuffLessShields Auto Const
GlobalVariable Property GV_SpaceshipDebuffGravDriveFuelIncrease Auto Const
GlobalVariable Property GV_SpaceshipDebuffGravDriveDistanceDecrease Auto Const
GlobalVariable Property GV_SpaceshipDebuffLongerTargeting Auto Const
GlobalVariable Property GV_SpaceshipDebuffSlowAutoRepair Auto Const
GlobalVariable Property GV_SpaceshipDebuffFuelLeak Auto Const
GlobalVariable Property GV_SpaceshipDebuffHeatleechAttack Auto Const
GlobalVariable Property GV_SpaceshipDebuffSlowerWPNRechargeRate Auto Const
GlobalVariable Property GV_SpaceshipDebuffManeuverability Auto Const
GlobalVariable Property GV_SpaceshipDebuffSystemMitigation Auto Const
GlobalVariable Property GV_SpaceshipDebuffGravDriveZeroGravity Auto Const
GlobalVariable Property GV_SpaceshipDebuffHullBreach Auto Const
GlobalVariable Property GV_SpaceshipDebuffSystemFailure Auto Const
GlobalVariable Property GV_SpaceshipDebuffBrokenRefueler Auto Const
GlobalVariable Property GV_SpaceshipDebuffDisabledO2 Auto Const
GlobalVariable Property GV_SpaceshipDebuffDisabledGravDrive Auto Const
GlobalVariable Property GV_SpaceshipDebuffLandingGearThrustLoss Auto Const
GlobalVariable Property GV_SpaceshipDebuffLongerUndocking Auto Const
GlobalVariable Property GV_SpaceshipDebuffDoorShortCircuit Auto Const
GlobalVariable Property GV_SpaceshipDebuffGasLeak Auto Const
GlobalVariable Property GV_SpaceshipDebuffAbnormalSpoolingPhase Auto Const
GlobalVariable Property GV_SpaceshipDebuffTargetingAPCost Auto Const
GlobalVariable Property GV_SpaceshipDebuffRepairBot Auto Const
GlobalVariable Property GV_SpaceshipDebuffRadiationLeak Auto Const
GlobalVariable Property GV_CompletionMeter Auto Const
GlobalVariable Property GV_EnergyBay Auto Const
GlobalVariable Property GV_CombatBay Auto Const
GlobalVariable Property GV_InterstellarBay Auto Const
GlobalVariable Property GV_MaintenanceBay Auto Const
GlobalVariable Property GV_EnginesBay Auto Const
GlobalVariable Property GV_SpaceshipMaintMalfGained Auto Const
GlobalVariable Property GV_SpaceshipMalfCreditsMultA Auto Const
GlobalVariable Property GV_SpaceshipMalfCreditsMultB Auto Const
GlobalVariable Property GV_SpaceshipMalfCreditsMultC Auto Const
GlobalVariable Property GV_SpaceshipMalfCreditsMultM Auto Const
GlobalVariable Property GV_SpaceshipGravityToggle Auto Const
GlobalVariable Property GV_SpaceshipMalfApplyCreditMult Auto Const

Conditionform Property ConditionFormFuelDiscount01 Auto Const Mandatory
Conditionform Property ConditionFormFuelDiscount02 Auto Const Mandatory
Conditionform Property ConditionFormFuelDiscount03 Auto Const Mandatory
Conditionform Property ConditionFormFuelDiscount04 Auto Const Mandatory

ActorValue Property AV_HullHealth Auto Const
ActorValue Property AV_Mass Auto Const
ActorValue Property AV_Cargo Auto Const
ActorValue Property AV_CargoSHLD Auto Const
ActorValue Property AV_EnginesHealth Auto Const
ActorValue Property AV_EnginesThrust Auto Const
ActorValue Property AV_EnginesMaxPower Auto Const
ActorValue Property AV_FuelTanksCapacity Auto Const
ActorValue Property AV_ManeuverThrust Auto Const
ActorValue Property AV_ShieldsHealth Auto Const
ActorValue Property AV_ShieldsMaxPower Auto Const
ActorValue Property AV_ShieldsMaxHealth Auto Const
ActorValue Property AV_GravDriveHealth Auto Const
ActorValue Property AV_GravDriveThrust Auto Const
ActorValue Property AV_GravDriveMaxPower Auto Const
ActorValue Property AV_ReactorMaxPowerGenerated Auto Const
ActorValue Property AV_ReactorHealth Auto Const
ActorValue Property AV_ReactorRepairRate Auto Const
ActorValue Property AV_Weapon1Health Auto Const
ActorValue Property AV_Weapon2Health Auto Const
ActorValue Property AV_Weapon3Health Auto Const
ActorValue Property AV_WeaponMaxPower Auto Const
ActorValue Property AV_WeaponHealth Auto Const

ReferenceAlias Property MyShip Auto
ReferenceAlias Property PlayerHomeShip Auto

TerminalMenu property _SISA_TerminalMenu_MaintenanceTerminal_Main auto const mandatory
sq_playershipscript Property SQ_PlayerShip Auto

Int TotalEnabledMalfunctions = 0
Int TotalEngineMalfunctions = 0
Int TotalEnergyMalfunctions = 0
Int TotalInterstellarMalfunctions = 0
Int TotalCombatMalfunctions = 0
Int TotalMaintenanceMalfunctions = 0

Int MaintenanceProc = 1
Int NeededPartsBSC = 1 
Int NeededPartsBSOD = 1 
Int NeededPartsSF = 1 
Int NeededPartsEBM = 1
Int NeededPartsCLW = 1
Int NeededPartsSTF = 1
Int NeededPartsFL = 1
Int NeededPartsTPL = 1
Int NeededPartsBGC = 1
Int NeededPartsGL = 1
Int NeededPartsUGG = 1
Int NeededPartsHB = 1
Int NeededPartsMBB = 1
Int NeededPartsLSS = 1
Int NeededPartsCH = 1
Int NeededPartsBR = 1
Int NeededPartsFOS = 1
Int NeededPartsJAF = 1
Int NeededPartsCTL = 1
Int NeededPartsSTC = 1
Int NeededPartsFDL = 1
Int NeededPartsGDO = 1
Int NeededPartsLGTL = 1
Int NeededPartsDDM = 1
Int NeededPartsSC = 1
Int NeededPartsGas = 1
Int NeededPartsASP = 1
Int NeededPartsCPU = 1
Int NeededPartsRBCO = 1
Int NeededPartsRAD = 1

Int AllMalfSumm = 0
Int NeededCreditsBSC = 0
Int NeededCreditsBSOD = 0 
Int NeededCreditsSF = 0 
Int NeededCreditsEBM = 0
Int NeededCreditsCLW = 0
Int NeededCreditsSTF = 0
Int NeededCreditsFL = 0
Int NeededCreditsTPL = 0
Int NeededCreditsBGC = 0
Int NeededCreditsGL = 0
Int NeededCreditsUGG = 0
Int NeededCreditsHB = 0
Int NeededCreditsMBB = 0
Int NeededCreditsLSS = 0
Int NeededCreditsCH = 0
Int NeededCreditsBR = 0
Int NeededCreditsFOS = 0
Int NeededCreditsJAF = 0
Int NeededCreditsCTL = 0
Int NeededCreditsSTC = 0
Int NeededCreditsFDL = 0
Int NeededCreditsGDO = 0
Int NeededCreditsLGTL = 0
Int NeededCreditsDDM = 0
Int NeededCreditsSC = 0
Int NeededCreditsGas = 0
Int NeededCreditsASP = 0
Int NeededCreditsCPU = 0
Int NeededCreditsRBCO = 0
Int NeededCreditsRAD = 0

Event OnTerminalMenuEnter(TerminalMenu akTerminalBase, ObjectReference akTerminalRef)
	    
	If akTerminalBase == _SISA_TerminalMenu_MaintenanceTerminal_Main          	   
	   ;GV_CompletionMeter.SetValue(0)
	   ApplyCredits()
	   CheckIfShipHasMalfunction()
	   CheckShipMalfunctionCost()
	   UpdateTextReplacement(akTerminalRef) 
 EndIf

EndEvent

Function ApplyCredits()
                 
		 Float ApplyMult = GV_SpaceshipMalfApplyCreditMult.GetValue()

         NeededCreditsBSC = 0
         NeededCreditsBSOD = 0 
         NeededCreditsSF = 0 
         NeededCreditsEBM = 0
         NeededCreditsCLW = 0
         NeededCreditsSTF = 0
         NeededCreditsFL = 0
         NeededCreditsTPL = 0
         NeededCreditsBGC = 0
         NeededCreditsGL = 0
         NeededCreditsUGG = 0
         NeededCreditsHB = 0
         NeededCreditsMBB = 0
         NeededCreditsLSS = 0
         NeededCreditsCH = 0
         NeededCreditsBR = 0
         NeededCreditsFOS = 0
         NeededCreditsJAF = 0
         NeededCreditsCTL = 0
         NeededCreditsSTC = 0
         NeededCreditsFDL = 0
         NeededCreditsGDO = 0
         NeededCreditsLGTL = 0
         NeededCreditsDDM = 0
         NeededCreditsSC = 0
         NeededCreditsGas = 0
         NeededCreditsASP = 0
         NeededCreditsCPU = 0
         NeededCreditsRBCO = 0
         NeededCreditsRAD = 0
		 
         NeededCreditsBSC = math.round(8600 * ApplyMult)
         NeededCreditsBSOD = math.round(4900 * ApplyMult)
         NeededCreditsSF = math.round(2000 * ApplyMult) 
         NeededCreditsEBM = math.round(14300 * ApplyMult)
         NeededCreditsCLW = math.round(4700 * ApplyMult)
         NeededCreditsSTF = math.round(4500 * ApplyMult)
         NeededCreditsFL = math.round(6200 * ApplyMult)
         NeededCreditsTPL = math.round(10600 * ApplyMult)
         NeededCreditsBGC = math.round(12500 * ApplyMult)
         NeededCreditsGL = math.round(11700 * ApplyMult)
         NeededCreditsUGG = math.round(3300 * ApplyMult)
         NeededCreditsHB = math.round(11300 * ApplyMult)
         NeededCreditsMBB = math.round(9900 * ApplyMult)
         NeededCreditsLSS = math.round(14700 * ApplyMult)
         NeededCreditsCH = math.round(10200 * ApplyMult)
         NeededCreditsBR = math.round(4100 * ApplyMult)
         NeededCreditsFOS = math.round(9500 * ApplyMult)
         NeededCreditsJAF = math.round(8500 * ApplyMult)
         NeededCreditsCTL = math.round(3000 * ApplyMult)
         NeededCreditsSTC = math.round(2600 * ApplyMult)
         NeededCreditsFDL = math.round(15800 * ApplyMult)
         NeededCreditsGDO = math.round(12900 * ApplyMult)
         NeededCreditsLGTL = math.round(9000 * ApplyMult)
         NeededCreditsDDM = math.round(2100 * ApplyMult)
         NeededCreditsSC = math.round(12000 * ApplyMult)
         NeededCreditsGas = math.round(11100 * ApplyMult)
         NeededCreditsASP = math.round(10900 * ApplyMult)
         NeededCreditsCPU = math.round(7100 * ApplyMult)
         NeededCreditsRBCO = math.round(14000 * ApplyMult)
         NeededCreditsRAD = math.round(15600 * ApplyMult)       

EndFunction

Int Function SeMaitenanceClassMalfPartCost()
	        
      SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()	  
	  
	  Int ClassCostA = 1
	  Int ClassCostB = 2	  
	  Int ClassCostC = 3
	  Int ClassCostM = 4
	           
			   If akShip.GetReactorClassKeyword() == KWD_SpaceshipModuleClassA
			      Return ClassCostA                              
           ElseIf akShip.GetReactorClassKeyword() == KWD_SpaceshipModuleClassB
			      Return ClassCostB 
           ElseIf akShip.GetReactorClassKeyword() == KWD_SpaceshipModuleClassC
			      Return ClassCostC 									  
           ElseIf akShip.GetReactorClassKeyword() == KWD_SpaceshipModuleClassM
			      Return ClassCostM 
            EndIf

Endfunction

Float Function SeMaitenanceClassMalfCreditsCost()
	        
      SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()	  
	  
	  Float ClassCostA = GV_SpaceshipMalfCreditsMultA.GetValue()
	  Float ClassCostB = GV_SpaceshipMalfCreditsMultB.GetValue()	  
	  Float ClassCostC = GV_SpaceshipMalfCreditsMultC.GetValue()
	  Float ClassCostM = GV_SpaceshipMalfCreditsMultM.GetValue()
	           
			   If akShip.GetReactorClassKeyword() == KWD_SpaceshipModuleClassA
			      Return ClassCostA                              
           ElseIf akShip.GetReactorClassKeyword() == KWD_SpaceshipModuleClassB
			      Return ClassCostB 
           ElseIf akShip.GetReactorClassKeyword() == KWD_SpaceshipModuleClassC
			      Return ClassCostC 									  
           ElseIf akShip.GetReactorClassKeyword() == KWD_SpaceshipModuleClassM
			      Return ClassCostM 
            EndIf

Endfunction

Function UpdateTextReplacement(ObjectReference akTerminalRef)
	          		        
		SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()					
		SpaceShipReference CurrentShipName = PlayerRef.GetCurrentShipRef()
		SpaceShipReference CurrentHomeShip = SQ_PlayerShip.DebugGetHomeShip()
		
		ActorValue CheckMaintenanceClass = (SpaceshipSystemsQuest as SISA_SpaceshipFuel).SetProperMaitenanceClass()
		
		Float MaintenanceValues = PlayerRef.GetValue(CheckMaintenanceClass)
        Float MaintenanceValuesMax = PlayerRef.GetBaseValue(CheckMaintenanceClass)
		Float CalculateMaintenance = MaintenanceValues / MaintenanceValuesMax * 100
	 		
		Int TotalPartsCountRefueler = PlayerRef.GetItemCount(SpaceshipSparePartRefueler) + akShip.GetItemCount(SpaceshipSparePartRefueler)	 
		Int TotalCountSubSystem = PlayerRef.GetItemCount(SpaceshipSparePartSubSystem) + akShip.GetItemCount(SpaceshipSparePartSubSystem)		 
		Int TotalCountGraviticControler = PlayerRef.GetItemCount(SpaceshipSparePartGraviticControler) + akShip.GetItemCount(SpaceshipSparePartGraviticControler) 
		Int TotalCountShieldCapacitors = PlayerRef.GetItemCount(SpaceshipSparePartShieldCapacitors) + akShip.GetItemCount(SpaceshipSparePartShieldCapacitors)	 
		Int TotalCountCargoSeals = PlayerRef.GetItemCount(SpaceshipSparePartCargoSeals) + akShip.GetItemCount(SpaceshipSparePartCargoSeals)	 
		Int TotalCountControlLevers = PlayerRef.GetItemCount(SpaceshipSparePartControlLevers) + akShip.GetItemCount(SpaceshipSparePartControlLevers)		 
		Int TotalCountTargetingLenses = PlayerRef.GetItemCount(SpaceshipSparePartTargetingLenses) + akShip.GetItemCount(SpaceshipSparePartTargetingLenses)		 
		Int TotalCountBoosters = PlayerRef.GetItemCount(SpaceshipSparePartBoosters) + akShip.GetItemCount(SpaceshipSparePartBoosters)		 
		Int TotalCountFirepower = PlayerRef.GetItemCount(SpaceshipSparePartFirepower) + akShip.GetItemCount(SpaceshipSparePartFirepower)
		Int TotalCountMaintenanceServer = PlayerRef.GetItemCount(SpaceshipSparePartMaintenanceServer) + akShip.GetItemCount(SpaceshipSparePartMaintenanceServer)
		Int TotalCountFuelPump = PlayerRef.GetItemCount(SpaceshipSparePartFuelPump) + akShip.GetItemCount(SpaceshipSparePartFuelPump)
		Int TotalCountGraviticRestrainer = PlayerRef.GetItemCount(SpaceshipSparePartGraviticRestrainer) + akShip.GetItemCount(SpaceshipSparePartGraviticRestrainer)
		Int TotalCountHull = PlayerRef.GetItemCount(SpaceshipSparePartHull) + akShip.GetItemCount(SpaceshipSparePartHull)
		Int TotalCountAmmoFeeders = PlayerRef.GetItemCount(SpaceshipSparePartAmmoFeeders) + akShip.GetItemCount(SpaceshipSparePartAmmoFeeders)
		Int TotalCountLifeSupport = PlayerRef.GetItemCount(SpaceshipSparePartLifeSupport) + akShip.GetItemCount(SpaceshipSparePartLifeSupport)
		Int TotalCountMaintenanceBay = PlayerRef.GetItemCount(SpaceshipSparePartMaintenanceBay) + akShip.GetItemCount(SpaceshipSparePartMaintenanceBay)
		Int TotalCountThrusters = PlayerRef.GetItemCount(SpaceshipSparePartThrusters) + akShip.GetItemCount(SpaceshipSparePartThrusters)
		Int TotalCountTargetingInterface = PlayerRef.GetItemCount(SpaceshipSparePartTargetingInterface) + akShip.GetItemCount(SpaceshipSparePartTargetingInterface)
		Int TotalCountDashboard = PlayerRef.GetItemCount(SpaceshipSparePartDashboard) + akShip.GetItemCount(SpaceshipSparePartDashboard)
		Int TotalCountEngines = PlayerRef.GetItemCount(SpaceshipSparePartEngines) + akShip.GetItemCount(SpaceshipSparePartEngines)
		Int TotalCountGraviticGenerator = PlayerRef.GetItemCount(SpaceshipSparePartGraviticGenerator) + akShip.GetItemCount(SpaceshipSparePartGraviticGenerator)
		Int TotalCountGravDrive = PlayerRef.GetItemCount(SpaceshipSparePartGravDrive) + akShip.GetItemCount(SpaceshipSparePartGravDrive)
		Int TotalCountLandingGear = PlayerRef.GetItemCount(SpaceshipSparePartLandingGearThrustLoss) + akShip.GetItemCount(SpaceshipSparePartLandingGearThrustLoss)
		Int TotalCountDocker = PlayerRef.GetItemCount(SpaceshipSparePartLongerUndocking) + akShip.GetItemCount(SpaceshipSparePartLongerUndocking)
		Int TotalCountElectricity = PlayerRef.GetItemCount(SpaceshipSparePartDoorShortCircuit) + akShip.GetItemCount(SpaceshipSparePartDoorShortCircuit)
		Int TotalCountGasPipes = PlayerRef.GetItemCount(SpaceshipSparePartGasLeak) + akShip.GetItemCount(SpaceshipSparePartGasLeak)
		Int TotalCountGraviticSpooling = PlayerRef.GetItemCount(SpaceshipSparePartAbnormalSpoolingPhase) + akShip.GetItemCount(SpaceshipSparePartAbnormalSpoolingPhase)
		Int TotalCountTargetingCPU = PlayerRef.GetItemCount(SpaceshipSparePartTargetingAPCost) + akShip.GetItemCount(SpaceshipSparePartTargetingAPCost)
		Int TotalCountRepairBot = PlayerRef.GetItemCount(SpaceshipSparePartRepairBot) + akShip.GetItemCount(SpaceshipSparePartRepairBot)
		Int TotalCountRadiationLeak = PlayerRef.GetItemCount(SpaceshipSparePartRadiationLeak) + akShip.GetItemCount(SpaceshipSparePartRadiationLeak)
        Int TotalMaintenanceKits = PlayerRef.GetItemCount(SpaceshipMaintenanceKit) + akShip.GetItemCount(SpaceshipMaintenanceKit)
        Int TotalCredits = PlayerRef.GetItemCount(Credits)
		
		MyShip.ForceRefTo(CurrentShipName)
		PlayerHomeShip.ForceRefTo(CurrentHomeShip)		
		
		Float BaseMass = akShip.GetBaseValue(AV_Mass)		
		Float BaseCargo = akShip.GetBaseValue(AV_Cargo)	
		Float BaseCargoSHLD = akShip.GetBaseValue(AV_CargoSHLD)
		Float BaseHullHealth = akShip.GetBaseValue(AV_HullHealth)
		Float BaseEnginesHealth = akShip.GetBaseValue(AV_EnginesHealth)
		Float BaseEngineThrust = akShip.GetBaseValue(AV_EnginesThrust)
		Float BaseManeuverThrust = akShip.GetBaseValue(AV_ManeuverThrust)
		Float BaseEngineMaxPower = akShip.GetBaseValue(AV_EnginesMaxPower)
		Float BaseShieldsHealth = akShip.GetBaseValue(AV_ShieldsHealth)	
		Float BaseShieldsHealthMax = akShip.GetBaseValue(AV_ShieldsMaxHealth)	
		Float BaseShieldsMaxPower = akShip.GetBaseValue(AV_ShieldsMaxPower)
		Float BaseGravDriveHealth = akShip.GetBaseValue(AV_GravDriveHealth)			
		Float BaseGravDriveThrust = akShip.GetBaseValue(AV_GravDriveThrust)	
		Float BaseGravDriveMaxPower = akShip.GetBaseValue(AV_GravDriveMaxPower)
		Float BaseReactorHealth = akShip.GetBaseValue(AV_ReactorHealth)
		Float BaseReactorPower = akShip.GetBaseValue(AV_ReactorMaxPowerGenerated)
		Float BaseReactorRepair = akShip.GetBaseValue(AV_ReactorRepairRate)
		Float BaseWeapon1Health = akShip.GetBaseValue(AV_Weapon1Health)		
		Float BaseWeapon2Health = akShip.GetBaseValue(AV_Weapon2Health)		
		Float BaseWeapon3Health = akShip.GetBaseValue(AV_Weapon3Health)		
		Float BaseFuelCapacity = akShip.GetBaseValue(AV_FuelTanksCapacity)	

		Float CurrentHullHealth = akShip.GetValue(AV_HullHealth)
		Float CurrentEnginesHealth = akShip.GetValue(AV_EnginesHealth)
		Float CurrentShieldsHealth = akShip.GetValue(AV_ShieldsHealth)	
		Float CurrentGravDriveHealth = akShip.GetValue(AV_GravDriveHealth)			
		Float CurrentReactorHealth = akShip.GetValue(AV_ReactorHealth)
		Float CurrentWeapon1Health = akShip.GetValue(AV_Weapon1Health)		
		Float CurrentWeapon2Health = akShip.GetValue(AV_Weapon2Health)		
		Float CurrentWeapon3Health = akShip.GetValue(AV_Weapon3Health)
		Float CurrentFuelCapacity = akShip.GetValue(AV_FuelTanksCapacity)

		Weapon Weapon1 = akShip.GetWeaponGroupBaseObject(AV_Weapon1Health)
		Weapon Weapon2 = akShip.GetWeaponGroupBaseObject(AV_Weapon2Health)
		Weapon Weapon3 = akShip.GetWeaponGroupBaseObject(AV_Weapon3Health)		

        MaintenanceProc = 1
        NeededPartsBSC = 1 
        NeededPartsBSOD = 1 
        NeededPartsSF = 1 
        NeededPartsEBM = 1
        NeededPartsCLW = 1
        NeededPartsSTF = 1
        NeededPartsFL = 1
        NeededPartsTPL = 1
        NeededPartsBGC = 1
        NeededPartsGL = 1
        NeededPartsUGG = 1
        NeededPartsHB = 1
        NeededPartsMBB = 1
        NeededPartsLSS = 1
        NeededPartsCH = 1
        NeededPartsBR = 1
        NeededPartsFOS = 1
        NeededPartsJAF = 1
        NeededPartsCTL = 1
        NeededPartsSTC = 1
        NeededPartsFDL = 1
        NeededPartsGDO = 1
        NeededPartsLGTL = 1
        NeededPartsDDM = 1
        NeededPartsSC = 1
        NeededPartsGas = 1
        NeededPartsASP = 1
        NeededPartsCPU = 1
        NeededPartsRBCO = 1
        NeededPartsRAD = 1
				
		akTerminalRef.AddTextReplacementData("WeapType1", Weapon1)
		akTerminalRef.AddTextReplacementData("WeapType2", Weapon2)
		akTerminalRef.AddTextReplacementData("WeapType3", Weapon3)
		
		akTerminalRef.AddTextReplacementValue("BaseMass", BaseMass)		
		akTerminalRef.AddTextReplacementValue("BaseCargo", BaseCargo)
		akTerminalRef.AddTextReplacementValue("BaseCargoSHLD", BaseCargoSHLD)
		akTerminalRef.AddTextReplacementValue("BaseHullHealth", BaseHullHealth)
		akTerminalRef.AddTextReplacementValue("BaseEnginesHealth", BaseEnginesHealth)
		akTerminalRef.AddTextReplacementValue("BaseEngineThrust", BaseEngineThrust)
		akTerminalRef.AddTextReplacementValue("BaseManeuverThrust", BaseManeuverThrust)
		akTerminalRef.AddTextReplacementValue("BaseEngineMaxPower", BaseEngineMaxPower)
		akTerminalRef.AddTextReplacementValue("BaseShieldsHealth", BaseShieldsHealth)
		akTerminalRef.AddTextReplacementValue("BaseShieldsHealthMax", BaseShieldsHealthMax)
		akTerminalRef.AddTextReplacementValue("BaseShieldsMaxPower", BaseShieldsMaxPower)
		akTerminalRef.AddTextReplacementValue("BaseGravDriveHealth", BaseGravDriveHealth)
		akTerminalRef.AddTextReplacementValue("BaseGravDriveThrust", BaseGravDriveThrust)
		akTerminalRef.AddTextReplacementValue("BaseGravDriveMaxPower", BaseGravDriveMaxPower)
		akTerminalRef.AddTextReplacementValue("BaseReactorHealth", BaseReactorHealth)
		akTerminalRef.AddTextReplacementValue("BaseReactorPower", BaseReactorPower)
		akTerminalRef.AddTextReplacementValue("BaseReactorRepair", BaseReactorRepair)
		akTerminalRef.AddTextReplacementValue("BaseWeapon1Health", BaseWeapon1Health)
		akTerminalRef.AddTextReplacementValue("BaseWeapon2Health", BaseWeapon2Health)
		akTerminalRef.AddTextReplacementValue("BaseWeapon3Health", BaseWeapon3Health)
		akTerminalRef.AddTextReplacementValue("BaseFuelCapacity", BaseFuelCapacity)
		akTerminalRef.AddTextReplacementValue("CurrentHullHealth", CurrentHullHealth)
		akTerminalRef.AddTextReplacementValue("CurrentEnginesHealth", CurrentEnginesHealth)
		akTerminalRef.AddTextReplacementValue("CurrentShieldsHealth", CurrentShieldsHealth)
		akTerminalRef.AddTextReplacementValue("CurrentGravDriveHealth", CurrentGravDriveHealth)
		akTerminalRef.AddTextReplacementValue("CurrentReactorHealth", CurrentReactorHealth)
		akTerminalRef.AddTextReplacementValue("CurrentWeapon1Health", CurrentWeapon1Health)
		akTerminalRef.AddTextReplacementValue("CurrentWeapon2Health", CurrentWeapon2Health)
		akTerminalRef.AddTextReplacementValue("CurrentWeapon3Health", CurrentWeapon3Health)
		akTerminalRef.AddTextReplacementValue("CurrentFuelCapacity", CurrentFuelCapacity)
		akTerminalRef.AddTextReplacementValue("MaintenanceLevel", CalculateMaintenance)
		
		akTerminalRef.AddTextReplacementValue("PartsCountRefueler", TotalPartsCountRefueler)		 		 
		akTerminalRef.AddTextReplacementValue("PartsCountSubSystem", TotalCountSubSystem)
		akTerminalRef.AddTextReplacementValue("PartsCountGraviticControler", TotalCountGraviticControler)		 		 
		akTerminalRef.AddTextReplacementValue("PartsCountShieldCapacitors", TotalCountShieldCapacitors)		
		akTerminalRef.AddTextReplacementValue("PartsCountCargoSeals", TotalCountCargoSeals)		 		 
		akTerminalRef.AddTextReplacementValue("PartsCountControlLevers", TotalCountControlLevers)	
		akTerminalRef.AddTextReplacementValue("PartsCountTargetingLenses", TotalCountTargetingLenses)		 		 
		akTerminalRef.AddTextReplacementValue("PartsCountBoosters", TotalCountBoosters)	 	 		 
		akTerminalRef.AddTextReplacementValue("PartsCountFirepower", TotalCountFirepower)		 		 
		akTerminalRef.AddTextReplacementValue("PartsCountMaintenanceServer", TotalCountMaintenanceServer)		 
		akTerminalRef.AddTextReplacementValue("PartsCountFuelPump", TotalCountFuelPump)		 		 
		akTerminalRef.AddTextReplacementValue("PartsCountGraviticRestrainer", TotalCountGraviticRestrainer)
		akTerminalRef.AddTextReplacementValue("PartsCountHull", TotalCountHull)		 		 
		akTerminalRef.AddTextReplacementValue("PartsCountAmmoFeeders", TotalCountAmmoFeeders)
		akTerminalRef.AddTextReplacementValue("PartsCountLifeSupport", TotalCountLifeSupport)		 		 
		akTerminalRef.AddTextReplacementValue("PartsCountMaintenanceBay", TotalCountMaintenanceBay)
		akTerminalRef.AddTextReplacementValue("PartsCountThrusters", TotalCountThrusters)		 		 
		akTerminalRef.AddTextReplacementValue("PartsCountTargetingInterface", TotalCountTargetingInterface)
		akTerminalRef.AddTextReplacementValue("PartsCountDashboard", TotalCountDashboard)		 		 
		akTerminalRef.AddTextReplacementValue("PartsCountEngines", TotalCountEngines)
		akTerminalRef.AddTextReplacementValue("PartsCountGraviticGenerator", TotalCountGraviticGenerator)
		akTerminalRef.AddTextReplacementValue("PartsCountGravDrive", TotalCountGravDrive)
		akTerminalRef.AddTextReplacementValue("PartsCountLandingGear", TotalCountLandingGear)
		akTerminalRef.AddTextReplacementValue("PartsCountDocker", TotalCountDocker)
		akTerminalRef.AddTextReplacementValue("PartsCountElectro", TotalCountElectricity)
		akTerminalRef.AddTextReplacementValue("PartsCountGas", TotalCountGasPipes)
		akTerminalRef.AddTextReplacementValue("PartsCountASP", TotalCountGraviticSpooling)
		akTerminalRef.AddTextReplacementValue("PartsCountCPU", TotalCountTargetingCPU)
		akTerminalRef.AddTextReplacementValue("PartsCountRBCO", TotalCountRepairBot)
		akTerminalRef.AddTextReplacementValue("PartsCountRAD", TotalCountRadiationLeak)
		
		Int ClassPartCostCalculate = SeMaitenanceClassMalfPartCost()				
		
		akTerminalRef.AddTextReplacementValue("MalfCount", TotalEnabledMalfunctions)	     		 		         		
		akTerminalRef.AddTextReplacementValue("MalfEngineCount", TotalEngineMalfunctions)
		akTerminalRef.AddTextReplacementValue("MalfEnergyCount", TotalEnergyMalfunctions)
		akTerminalRef.AddTextReplacementValue("MalfInterstellarCount", TotalInterstellarMalfunctions)
		akTerminalRef.AddTextReplacementValue("MalfCombatCount", TotalCombatMalfunctions)
		akTerminalRef.AddTextReplacementValue("MalfMaintenanceCount", TotalMaintenanceMalfunctions)
		akTerminalRef.AddTextReplacementValue("MaintenanceKit", TotalMaintenanceKits)		
		akTerminalRef.AddTextReplacementValue("MaintenanceKitProc", MaintenanceProc)
		akTerminalRef.AddTextReplacementValue("BSCShipParts", NeededPartsBSC * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("BSODShipParts", NeededPartsBSOD * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("SFShipParts", NeededPartsSF * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("EBMShipParts", NeededPartsEBM * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("CLWShipParts", NeededPartsCLW * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("STFShipParts", NeededPartsSTF * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("TPLToxin", NeededPartsTPL * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("FLShipParts", NeededPartsFL * ClassPartCostCalculate)         
		akTerminalRef.AddTextReplacementValue("BGCShipParts", NeededPartsBGC * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("GLShipParts", NeededPartsGL * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("UGGShipParts", NeededPartsUGG * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("FOSShipParts", NeededPartsFOS * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("HBShipParts", NeededPartsHB * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("BRShipParts", NeededPartsBR * ClassPartCostCalculate)         
		akTerminalRef.AddTextReplacementValue("MBBShipParts", NeededPartsMBB * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("LSSShipParts", NeededPartsLSS * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("CHShipParts", NeededPartsCH * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("JAFShipParts", NeededPartsJAF * ClassPartCostCalculate)         
		akTerminalRef.AddTextReplacementValue("STCShipParts", NeededPartsSTC * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("CTLShipParts", NeededPartsCTL * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("FDLShipParts", NeededPartsFDL * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("GDOShipParts", NeededPartsGDO * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("LGTLShipParts", NeededPartsLGTL * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("DDMShipParts", NeededPartsDDM * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("SCShipParts", NeededPartsSC * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("GasShipParts", NeededPartsGas * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("ASPShipParts", NeededPartsASP * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("CPUShipParts", NeededPartsCPU * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("RBCOShipParts", NeededPartsRBCO * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("RADShipParts", NeededPartsRAD * ClassPartCostCalculate)

		akTerminalRef.AddTextReplacementValue("CreditsAmount", TotalCredits)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredBSC", NeededCreditsBSC)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredBSOD", NeededCreditsBSOD)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredSF", NeededCreditsSF)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredEBM", NeededCreditsEBM)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredCLW", NeededCreditsCLW)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredSTF", NeededCreditsSTF)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredTPL", NeededCreditsTPL)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredFL", NeededCreditsFL)         
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredBGC", NeededCreditsBGC)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredGL", NeededCreditsGL)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredUGG", NeededCreditsUGG)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredFOS", NeededCreditsFOS)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredHB", NeededCreditsHB)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredBR", NeededCreditsBR)         
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredMBB", NeededCreditsMBB)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredLSS", NeededCreditsLSS)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredCH", NeededCreditsCH)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredJAF", NeededCreditsJAF)         
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredSTC", NeededCreditsSTC)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredCTL", NeededCreditsCTL)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredFDL", NeededCreditsFDL)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredGDO", NeededCreditsGDO)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredLGTL", NeededCreditsLGTL)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredDDM", NeededCreditsDDM)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredSC", NeededCreditsSC)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredGas", NeededCreditsGas)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredASP", NeededCreditsASP)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredCPU", NeededCreditsCPU)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredRBCO", NeededCreditsRBCO)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredRAD", NeededCreditsRAD)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredALL", AllMalfSumm)

EndFunction

Float Function DiscountCost()
     
	    Float DiscountPercent00 = 1.00
        Float DiscountPercent01 = 1.20 	 
        Float DiscountPercent02 = 1.30 
        Float DiscountPercent03 = 1.40 
        Float DiscountPercent04 = 1.50  	 
		
		If ConditionFormFuelDiscount04.IsTrue(PlayerRef, None)     
		   Return DiscountPercent04 
	ElseIf ConditionFormFuelDiscount03.IsTrue(PlayerRef, None)  
	       Return DiscountPercent03
	ElseIf ConditionFormFuelDiscount02.IsTrue(PlayerRef, None)	 
           Return DiscountPercent02
	ElseIf ConditionFormFuelDiscount01.IsTrue(PlayerRef, None)
           Return DiscountPercent01 
Else	
           Return DiscountPercent00
     EndIf

EndFunction

Function CheckIfShipHasMalfunction()

		  SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
 		  		  
		  TotalEnabledMalfunctions = 0 
		  TotalEngineMalfunctions = 0 
		  TotalEnergyMalfunctions = 0
		  TotalInterstellarMalfunctions = 0
		  TotalCombatMalfunctions = 0
		  TotalMaintenanceMalfunctions = 0		  
			  
			  If akShip.haskeyword(KWD_SpaceshipDebuffLowerWeaponDamage) == True				 
				 GV_SpaceshipDebuffLowerWeaponDamage.SetValue(1)
				 TotalEnabledMalfunctions += 1                               
		         TotalCombatMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffLowerWeaponDamage.SetValue(0)
		   EndIf		  
		      If akShip.haskeyword(KWD_SpaceshipDebuffLowerCargoCapacity) == True				 
				 GV_SpaceshipDebuffLowerCargoCapacity.SetValue(1)
				 TotalEnabledMalfunctions += 1
		         TotalMaintenanceMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffLowerCargoCapacity.SetValue(0)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffDecreasedBoost) == True					 
				 GV_SpaceshipDebuffDecreasedBoost.SetValue(1)
				 TotalEnabledMalfunctions += 1								  
		         TotalEngineMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffDecreasedBoost.SetValue(0)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffLessShields) == True					 
				 GV_SpaceshipDebuffLessShields.SetValue(1)
				 TotalEnabledMalfunctions += 1								  									  									  
		         TotalEnergyMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffLessShields.SetValue(0)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffGravDriveFuelIncrease) == True		  				 
				 GV_SpaceshipDebuffGravDriveFuelIncrease.SetValue(1)
				 TotalEnabledMalfunctions += 1								  									  									  
		         TotalInterstellarMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffGravDriveFuelIncrease.SetValue(0)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffGravDriveDistanceDecrease) == True		  				 
				 GV_SpaceshipDebuffGravDriveDistanceDecrease.SetValue(1)
				 TotalEnabledMalfunctions += 1
		         TotalInterstellarMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffGravDriveDistanceDecrease.SetValue(0)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffLongerTargeting) == True		  				 
				 GV_SpaceshipDebuffLongerTargeting.SetValue(1)
				 TotalEnabledMalfunctions += 1 
		         TotalCombatMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffLongerTargeting.SetValue(0)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffTargetingOff) == True		  				 
				 GV_SpaceshipDebuffTargetingOff.SetValue(1)
				 TotalEnabledMalfunctions += 1
		         TotalCombatMalfunctions += 1		   
		   Else
		         GV_SpaceshipDebuffTargetingOff.SetValue(0)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffThrustersOff) == True		  				 
				 GV_SpaceshipDebuffThrustersOff.SetValue(1)
				 TotalEnabledMalfunctions += 1
		         TotalEngineMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffThrustersOff.SetValue(0)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffSlowAutoRepair) == True		  				 
				 GV_SpaceshipDebuffSlowAutoRepair.SetValue(1)
				 TotalEnabledMalfunctions += 1
		         TotalMaintenanceMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffSlowAutoRepair.SetValue(0)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffAutoRepair) == True		  				 
				 GV_SpaceshipDebuffAutoRepair.SetValue(1)
				 TotalEnabledMalfunctions += 1
		         TotalMaintenanceMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffAutoRepair.SetValue(0)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffFuelLeak) == True		 				 
				 GV_SpaceshipDebuffFuelLeak.SetValue(1)
				 TotalEnabledMalfunctions += 1
		         TotalEngineMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffFuelLeak.SetValue(0)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffHeatleechAttack) == True		 				 
				 GV_SpaceshipDebuffHeatleechAttack.SetValue(1)
				 TotalEnabledMalfunctions += 1
		         TotalEngineMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffHeatleechAttack.SetValue(0)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffSlowerWPNRechargeRate) == True		 				 
				 GV_SpaceshipDebuffSlowerWPNRechargeRate.SetValue(1)
				 TotalEnabledMalfunctions += 1
		         TotalCombatMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffSlowerWPNRechargeRate.SetValue(0)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffManeuverability) == True		 				 
				 GV_SpaceshipDebuffManeuverability.SetValue(1)
				 TotalEnabledMalfunctions += 1
		         TotalEngineMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffManeuverability.SetValue(0)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffSystemMitigation) == True		 				 
				 GV_SpaceshipDebuffSystemMitigation.SetValue(1)
				 TotalEnabledMalfunctions += 1
		         TotalEnergyMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffSystemMitigation.SetValue(0)
		   EndIf		      
              If GV_SpaceshipGravityToggle.GetValue() == 1
			           If akShip.haskeyword(KWD_SpaceshipDebuffGravDriveZeroGravity) == True	 				
				         GV_SpaceshipDebuffGravDriveZeroGravity.SetValue(1)
				         TotalEnabledMalfunctions += 1
		                 TotalInterstellarMalfunctions += 1
		           Else
		                 GV_SpaceshipDebuffGravDriveZeroGravity.SetValue(0)
		            EndIf
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffHullBreach) == True		 				 
				 GV_SpaceshipDebuffHullBreach.SetValue(1)
				 TotalEnabledMalfunctions += 1
		         TotalMaintenanceMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffHullBreach.SetValue(0)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffSystemFailure) == True		 				 
				 GV_SpaceshipDebuffSystemFailure.SetValue(1)
				 TotalEnabledMalfunctions += 1
		         TotalEnergyMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffSystemFailure.SetValue(0)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffBrokenRefueler) == True		 				 
				 GV_SpaceshipDebuffBrokenRefueler.SetValue(1)
				 TotalEnabledMalfunctions += 1
		         TotalMaintenanceMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffBrokenRefueler.SetValue(0)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffDisabledO2) == True		 				 
				 GV_SpaceshipDebuffDisabledO2.SetValue(1)
				 TotalEnabledMalfunctions += 1
                 TotalMaintenanceMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffDisabledO2.SetValue(0)
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffDisabledGravDrive) == True		 				 
				 GV_SpaceshipDebuffDisabledGravDrive.SetValue(1)
				 TotalEnabledMalfunctions += 1
                 TotalInterstellarMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffDisabledGravDrive.SetValue(0)
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffLandingGearThrustLoss) == True		 				 
				 GV_SpaceshipDebuffLandingGearThrustLoss.SetValue(1)
				 TotalEnabledMalfunctions += 1
                 TotalEngineMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffLandingGearThrustLoss.SetValue(0)
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffLongerUndocking) == True		 				 
				 GV_SpaceshipDebuffLongerUndocking.SetValue(1)
				 TotalEnabledMalfunctions += 1
                 TotalEnergyMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffLongerUndocking.SetValue(0)
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffDoorShortCircuit) == True		 				 
				 GV_SpaceshipDebuffDoorShortCircuit.SetValue(1)
				 TotalEnabledMalfunctions += 1
                 TotalEnergyMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffDoorShortCircuit.SetValue(0)
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffGasLeak) == True		 				 
				 GV_SpaceshipDebuffGasLeak.SetValue(1)
				 TotalEnabledMalfunctions += 1
                 TotalMaintenanceMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffGasLeak.SetValue(0)
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffAbnormalSpoolingPhase) == True		 				 
				 GV_SpaceshipDebuffAbnormalSpoolingPhase.SetValue(1)
				 TotalEnabledMalfunctions += 1
                 TotalInterstellarMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffAbnormalSpoolingPhase.SetValue(0)
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffTargetingAPCost) == True		 				 
				 GV_SpaceshipDebuffTargetingAPCost.SetValue(1)
				 TotalEnabledMalfunctions += 1
                 TotalCombatMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffTargetingAPCost.SetValue(0)
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffRepairBot) == True		 				 
				 GV_SpaceshipDebuffRepairBot.SetValue(1)
				 TotalEnabledMalfunctions += 1
                 TotalEnergyMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffRepairBot.SetValue(0)
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffRadiationLeak) == True		 				 
				 GV_SpaceshipDebuffRadiationLeak.SetValue(1)
				 TotalEnabledMalfunctions += 1
                 TotalMaintenanceMalfunctions += 1
		   Else
		         GV_SpaceshipDebuffRadiationLeak.SetValue(0)
		   EndIf

		      If TotalEnergyMalfunctions > 0
		         GV_EnergyBay.SetValue(1)
		   Else
		         GV_EnergyBay.SetValue(0)
		   EndIf

		      If TotalEngineMalfunctions > 0
		         GV_EnginesBay.SetValue(1)
		   Else
		         GV_EnginesBay.SetValue(0)
		   EndIf

		      If TotalInterstellarMalfunctions > 0
		         GV_InterstellarBay.SetValue(1)
		   Else
		         GV_InterstellarBay.SetValue(0)
		   EndIf

		      If TotalCombatMalfunctions > 0
		         GV_CombatBay.SetValue(1)
		   Else
		         GV_CombatBay.SetValue(0)
		   EndIf

		      If TotalMaintenanceMalfunctions > 0
		         GV_MaintenanceBay.SetValue(1)
		   Else
		         GV_MaintenanceBay.SetValue(0)
		   EndIf

              If TotalMaintenanceMalfunctions > 0 || TotalCombatMalfunctions > 0 || TotalInterstellarMalfunctions > 0 || TotalEngineMalfunctions > 0 || TotalEnergyMalfunctions > 0
                 GV_SpaceshipMaintMalfGained.SetValue(1)
           EndIf

EndFunction

Float Function FinalCostCalcWithSparePartOrFully(Int Amount, MiscObject SparePart, Keyword Token)
			  
	SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()	              
	Int ClassPartCostCalculate = SeMaitenanceClassMalfPartCost()
	Int SparePartsInCargoHold = akShip.GetItemCount(SparePart)

	Float SparePartMult = 1.25			  
	Float DiscountCalculate = DiscountCost() 		  
    Float ClassCreditsCostCalculate = SeMaitenanceClassMalfCreditsCost() 
 	Float FinalCost = math.round(Amount * ClassCreditsCostCalculate / DiscountCalculate)
 	Float FinalCostWithSparePart = math.round((Amount * ClassCreditsCostCalculate / DiscountCalculate) / (ClassPartCostCalculate * SparePartMult))
    
	If akShip.haskeyword(Token)
	          If SparePartsInCargoHold >= 4 && akShip.GetReactorClassKeyword() == KWD_SpaceshipModuleClassM
				 Return FinalCostWithSparePart
	      ElseIf SparePartsInCargoHold >= 3 && akShip.GetReactorClassKeyword() == KWD_SpaceshipModuleClassC
				 Return FinalCostWithSparePart
	      ElseIf SparePartsInCargoHold >= 2 && akShip.GetReactorClassKeyword() == KWD_SpaceshipModuleClassB
				 Return FinalCostWithSparePart
	      ElseIf SparePartsInCargoHold >= 1 && akShip.GetReactorClassKeyword() == KWD_SpaceshipModuleClassA
				 Return FinalCostWithSparePart
		    Else
                 Return FinalCost
           EndIf
 EndIf

EndFunction

Function CheckShipMalfunctionCost()		 
		 
			  SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()								             
	  			  			  			  
			  AllMalfSumm = 0			  				 
          			  			  			  
			  If akShip.haskeyword(KWD_SpaceshipDebuffLowerWeaponDamage) == True				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsFDL, SpaceshipSparePartFirepower, KWD_SpaceshipDebuffLowerWeaponDamage)
		         NeededCreditsFDL = math.round(FinalCost)
				 AllMalfSumm += math.round(FinalCost)
		   EndIf		  
		      If akShip.haskeyword(KWD_SpaceshipDebuffLowerCargoCapacity) == True				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsCH, SpaceshipSparePartCargoSeals, KWD_SpaceshipDebuffLowerCargoCapacity)
		         NeededCreditsCH = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffDecreasedBoost) == True					 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsEBM, SpaceshipSparePartBoosters, KWD_SpaceshipDebuffDecreasedBoost)
		         NeededCreditsEBM = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffLessShields) == True					 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsBSC, SpaceshipSparePartShieldCapacitors, KWD_SpaceshipDebuffLessShields)
		         NeededCreditsBSC = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffGravDriveFuelIncrease) == True		  				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsBGC, SpaceshipSparePartGraviticControler, KWD_SpaceshipDebuffGravDriveFuelIncrease)
		         NeededCreditsBGC = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffGravDriveDistanceDecrease) == True		  				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsUGG, SpaceshipSparePartGraviticGenerator, KWD_SpaceshipDebuffGravDriveDistanceDecrease)
		         NeededCreditsUGG = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffLongerTargeting) == True		  				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsCTL, SpaceshipSparePartTargetingLenses, KWD_SpaceshipDebuffLongerTargeting)
		         NeededCreditsCTL = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffTargetingOff) == True		  				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsSTC, SpaceshipSparePartTargetingInterface, KWD_SpaceshipDebuffTargetingOff)
		         NeededCreditsSTC = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffThrustersOff) == True		  				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsSTF, SpaceshipSparePartThrusters, KWD_SpaceshipDebuffThrustersOff)
		         NeededCreditsSTF = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffSlowAutoRepair) == True		  				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsFOS, SpaceshipSparePartMaintenanceServer, KWD_SpaceshipDebuffSlowAutoRepair)
		         NeededCreditsFOS = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffAutoRepair) == True		  				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsMBB, SpaceshipSparePartMaintenanceBay, KWD_SpaceshipDebuffAutoRepair)
		         NeededCreditsMBB = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffFuelLeak) == True		 				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsFL, SpaceshipSparePartFuelPump, KWD_SpaceshipDebuffFuelLeak)
		         NeededCreditsFL = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffHeatleechAttack) == True		 				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsTPL, SpaceshipSparePartEngines, KWD_SpaceshipDebuffHeatleechAttack)
		         NeededCreditsTPL = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffSlowerWPNRechargeRate) == True		 				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsJAF, SpaceshipSparePartAmmoFeeders, KWD_SpaceshipDebuffSlowerWPNRechargeRate)
		         NeededCreditsJAF = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffManeuverability) == True		 				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsCLW, SpaceshipSparePartControlLevers, KWD_SpaceshipDebuffManeuverability)
		         NeededCreditsCLW = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffSystemMitigation) == True		 				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsBSOD, SpaceshipSparePartSubSystem, KWD_SpaceshipDebuffSystemMitigation)
		         NeededCreditsBSOD = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf		      
              If GV_SpaceshipGravityToggle.GetValue() == 1
			          If akShip.haskeyword(KWD_SpaceshipDebuffGravDriveZeroGravity) == True	 				
                         Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsGL, SpaceshipSparePartGraviticRestrainer, KWD_SpaceshipDebuffGravDriveZeroGravity)
		                 NeededCreditsGL = math.round(FinalCost)
                         AllMalfSumm += math.round(FinalCost)
		           EndIf
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffHullBreach) == True		 				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsHB, SpaceshipSparePartHull, KWD_SpaceshipDebuffHullBreach)
		         NeededCreditsHB = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffSystemFailure) == True		 				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsSF, SpaceshipSparePartDashboard, KWD_SpaceshipDebuffSystemFailure)
		         NeededCreditsSF = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffBrokenRefueler) == True		 				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsBR, SpaceshipSparePartRefueler, KWD_SpaceshipDebuffBrokenRefueler)
		         NeededCreditsBR = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffDisabledO2) == True		 				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsLSS, SpaceshipSparePartLifeSupport, KWD_SpaceshipDebuffDisabledO2)
		         NeededCreditsLSS = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffDisabledGravDrive) == True		 				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsGDO, SpaceshipSparePartGravDrive, KWD_SpaceshipDebuffDisabledGravDrive)
		         NeededCreditsGDO = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffLandingGearThrustLoss) == True		 				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsLGTL, SpaceshipSparePartLandingGearThrustLoss, KWD_SpaceshipDebuffLandingGearThrustLoss)
		         NeededCreditsLGTL += math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffLongerUndocking) == True		 				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsDDM, SpaceshipSparePartLongerUndocking, KWD_SpaceshipDebuffLongerUndocking)
		         NeededCreditsDDM = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf
			  If akShip.haskeyword(KWD_SpaceshipDebuffDoorShortCircuit) == True		 				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsSC, SpaceshipSparePartDoorShortCircuit, KWD_SpaceshipDebuffDoorShortCircuit)
		         NeededCreditsSC = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf
			  If akShip.haskeyword(KWD_SpaceshipDebuffGasLeak) == True		 				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsGas, SpaceshipSparePartGasLeak, KWD_SpaceshipDebuffGasLeak)
		         NeededCreditsGas = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf
			  If akShip.haskeyword(KWD_SpaceshipDebuffAbnormalSpoolingPhase) == True		 				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsASP, SpaceshipSparePartAbnormalSpoolingPhase, KWD_SpaceshipDebuffAbnormalSpoolingPhase)
		         NeededCreditsASP = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf
			  If akShip.haskeyword(KWD_SpaceshipDebuffTargetingAPCost) == True		 				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsCPU, SpaceshipSparePartTargetingAPCost, KWD_SpaceshipDebuffTargetingAPCost)
		         NeededCreditsCPU = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf
			  If akShip.haskeyword(KWD_SpaceshipDebuffRepairBot) == True		 				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsRBCO, SpaceshipSparePartRepairBot, KWD_SpaceshipDebuffRepairBot)
		         NeededCreditsRBCO = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf
			  If akShip.haskeyword(KWD_SpaceshipDebuffRadiationLeak) == True		 				 
                 Float FinalCost = FinalCostCalcWithSparePartOrFully(NeededCreditsRAD, SpaceshipSparePartRadiationLeak, KWD_SpaceshipDebuffRadiationLeak)
		         NeededCreditsRAD = math.round(FinalCost)
                 AllMalfSumm += math.round(FinalCost)
		   EndIf

EndFunction