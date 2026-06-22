ScriptName SISA_MaintenanceTerminal Extends TerminalMenu Conditional

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

Message Property MSG_MalfunctionNotEnoughParts Auto Const
Message Property MSG_MalfunctionNotEnoughCredits Auto Const

wwiseevent Property SoundEventDecreasedBoost Auto Const
wwiseevent Property SoundEventStuckThrusterFlaps Auto Const
wwiseevent Property SoundEventBurntShieldCapacitors Auto Const
wwiseevent Property SoundEventSubSystemBSOD Auto Const
wwiseevent Property SoundEventSystemFailure Auto Const
wwiseevent Property SoundEventControlLeversWear Auto Const
wwiseevent Property SoundEventTorquePowerLoss Auto Const
wwiseevent Property SoundEventFuelPumpLeak Auto Const
wwiseevent Property SoundEventBuggedGraviticControler Auto Const
wwiseevent Property SoundEventGravitationLeak Auto Const
wwiseevent Property SoundEventUnresponsiveGraviticGenerator Auto Const
wwiseevent Property SoundEventBrokenRefueler Auto Const
wwiseevent Property SoundEventFriedOutServer Auto Const
wwiseevent Property SoundEventHolesInTheCargo Auto Const
wwiseevent Property SoundEventHullBreach Auto Const
wwiseevent Property SoundEventLifeSupportShutdown Auto Const
wwiseevent Property SoundEventMaintenanceBayBlackout Auto Const
wwiseevent Property SoundEventLongerTargeting Auto Const
wwiseevent Property SoundEventFirepowerLoss Auto Const
wwiseevent Property SoundEventJammedAmmoFeeders Auto Const
wwiseevent Property SoundEventSubroutinedComputer Auto Const
wwiseevent Property SoundEventGravDriveOvercharge Auto Const
wwiseevent Property SoundEventLandingGearThrustLoss Auto Const
wwiseevent Property SoundEventLongerUndocking Auto Const
wwiseevent Property SoundEventShortCircuit Auto Const
wwiseevent Property SoundEventGasLeak Auto Const
wwiseevent Property SoundEventAbnormalSpooling Auto Const
wwiseevent Property SoundEventTargetingAPCost Auto Const
wwiseevent Property SoundEventRepairBot Auto Const
wwiseevent Property SoundEventRadiationLeak Auto Const
wwiseevent Property SoundEventErrorCheckFound Auto Const
wwiseevent Property SoundEventErrorCheckNotFound Auto Const

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
TerminalMenu property _SISA_TerminalMenu_MaintenanceTerminal_ShipInfo auto const mandatory
TerminalMenu property _SISA_TerminalMenu_MaintenanceTerminal_ResolveAll auto const mandatory
TerminalMenu property _SISA_TerminalMenu_MaintenanceTerminal_EnginesBay auto const mandatory
TerminalMenu property _SISA_TerminalMenu_MaintenanceTerminal_EnginesBayParts auto const mandatory
TerminalMenu property _SISA_TerminalMenu_MaintenanceTerminal_CombatBay auto const mandatory
TerminalMenu property _SISA_TerminalMenu_MaintenanceTerminal_CombatBayParts auto const mandatory
TerminalMenu property _SISA_TerminalMenu_MaintenanceTerminal_EnergyBay auto const mandatory
TerminalMenu property _SISA_TerminalMenu_MaintenanceTerminal_EnergyBayParts auto const mandatory
TerminalMenu property _SISA_TerminalMenu_MaintenanceTerminal_InterstellarBay auto const mandatory
TerminalMenu property _SISA_TerminalMenu_MaintenanceTerminal_InterstellarBayParts auto const mandatory
TerminalMenu property _SISA_TerminalMenu_MaintenanceTerminal_MaintenanceBay auto const mandatory
TerminalMenu property _SISA_TerminalMenu_MaintenanceTerminal_MaintenanceBayParts auto const mandatory

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
	    
	 If akTerminalBase == _SISA_TerminalMenu_MaintenanceTerminal_EnginesBay         	   
		ApplyCreditsEnginesBay()
	    UpdateTextReplacementEnginesBay(akTerminalRef) 
 ElseIf akTerminalBase == _SISA_TerminalMenu_MaintenanceTerminal_EnginesBayParts         	   
	    UpdateTextReplacementEnginesBayParts(akTerminalRef) 
 ElseIf akTerminalBase == _SISA_TerminalMenu_MaintenanceTerminal_MaintenanceBay         	   
		ApplyCreditsMaintenanceBay()
	    UpdateTextReplacementMaintenanceBay(akTerminalRef) 
 ElseIf akTerminalBase == _SISA_TerminalMenu_MaintenanceTerminal_MaintenanceBayParts         	   
	    UpdateTextReplacementMaintenanceBayParts(akTerminalRef)
 ElseIf akTerminalBase == _SISA_TerminalMenu_MaintenanceTerminal_CombatBay         	   
		ApplyCreditsCombatBay()
	    UpdateTextReplacementCombatBay(akTerminalRef) 
 ElseIf akTerminalBase == _SISA_TerminalMenu_MaintenanceTerminal_CombatBayParts         	   
	    UpdateTextReplacementCombatBayParts(akTerminalRef) 
 ElseIf akTerminalBase == _SISA_TerminalMenu_MaintenanceTerminal_InterstellarBay         	   
		ApplyCreditsInterstellarBay()
	    UpdateTextReplacementInterstellarBay(akTerminalRef) 
 ElseIf akTerminalBase == _SISA_TerminalMenu_MaintenanceTerminal_InterstellarBayParts         	   
	    UpdateTextReplacementInterstellarBayParts(akTerminalRef)
 ElseIf akTerminalBase == _SISA_TerminalMenu_MaintenanceTerminal_EnergyBay         	   
		ApplyCreditsEnergyBay()
	    UpdateTextReplacementEnergyBay(akTerminalRef)
 ElseIf akTerminalBase == _SISA_TerminalMenu_MaintenanceTerminal_EnergyBayParts         	   
	    UpdateTextReplacementEnergyBayParts(akTerminalRef)
 ElseIf akTerminalBase == _SISA_TerminalMenu_MaintenanceTerminal_ResolveAll
        CreditsCalcOnlyForAll()
	    UpdateTextReplacementResolveAll(akTerminalRef) 
 ElseIf akTerminalBase == _SISA_TerminalMenu_MaintenanceTerminal_ShipInfo 
	    UpdateTextReplacementInfoOnly(akTerminalRef) 
 ElseIf akTerminalBase == _SISA_TerminalMenu_MaintenanceTerminal_Main 
	    UpdateTextReplacementMaintenanceParts(akTerminalRef) 
  EndIf

EndEvent

Function CHECKERROR_00(ObjectReference akTerminalRef)		 
		 GV_CompletionMeter.SetValue(0)
	     CheckIfShipHasMalfunction()
		 UpdateTextReplacementErrorCheck(akTerminalRef)
EndFunction

Function MaintenanceProcedure_00(ObjectReference akTerminalRef)		 
		 (SpaceshipSystemsQuest as SISA_SpaceshipFuel).MaintenanceRepairKit()
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function MaintenanceProcedureHullOnly_01(ObjectReference akTerminalRef)		 
		 (SpaceshipSystemsQuest as SISA_SpaceshipFuel).MaintenanceRepairKitHullOnly()
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function BurntShieldCapacitors_01(ObjectReference akTerminalRef)		 		 	 
		 SparePartsCalc(GV_SpaceshipDebuffLessShields, KWD_SpaceshipDebuffLessShields, NeededPartsBSC, TotalEnergyMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartShieldCapacitors, SoundEventBurntShieldCapacitors, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalEnergyMalfunctions, KWD_SpaceshipDebuffLessShields, GV_EnergyBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function BurntShieldCapacitorsTechnician_01(ObjectReference akTerminalRef)		 
		 ApplyCredits()
		 CreditsCalc(GV_SpaceshipDebuffLessShields, KWD_SpaceshipDebuffLessShields, NeededCreditsBSC, TotalEnergyMalfunctions, TotalEnabledMalfunctions, SoundEventBurntShieldCapacitors, None, SpaceshipSparePartShieldCapacitors)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalEnergyMalfunctions, KWD_SpaceshipDebuffLessShields, GV_EnergyBay)
		 UpdateTextReplacementEnergyBay(akTerminalRef)
EndFunction

Function SubSystemBSOD_02(ObjectReference akTerminalRef)		 
		 SparePartsCalc(GV_SpaceshipDebuffSystemMitigation, KWD_SpaceshipDebuffSystemMitigation, NeededPartsBSOD, TotalEnergyMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartSubSystem, SoundEventSubSystemBSOD, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalEnergyMalfunctions, KWD_SpaceshipDebuffSystemMitigation, GV_EnergyBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function SubSystemBSODTechnician_02(ObjectReference akTerminalRef)
		 ApplyCredits()
		 CreditsCalc(GV_SpaceshipDebuffSystemMitigation, KWD_SpaceshipDebuffSystemMitigation, NeededCreditsBSOD, TotalEnergyMalfunctions, TotalEnabledMalfunctions, SoundEventSubSystemBSOD, None, SpaceshipSparePartSubSystem)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalEnergyMalfunctions, KWD_SpaceshipDebuffSystemMitigation, GV_EnergyBay)
		 UpdateTextReplacementEnergyBay(akTerminalRef)
EndFunction

Function SystemFailure_03(ObjectReference akTerminalRef)		 
		 SparePartsCalc(GV_SpaceshipDebuffSystemFailure, KWD_SpaceshipDebuffSystemFailure, NeededPartsSF, TotalEnergyMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartDashboard, SoundEventSystemFailure, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalEnergyMalfunctions, KWD_SpaceshipDebuffSystemFailure, GV_EnergyBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function SystemFailureTechnician_03(ObjectReference akTerminalRef)
		 ApplyCredits()
		 CreditsCalc(GV_SpaceshipDebuffSystemFailure, KWD_SpaceshipDebuffSystemFailure, NeededCreditsSF, TotalEnergyMalfunctions, TotalEnabledMalfunctions, SoundEventSystemFailure, None, SpaceshipSparePartDashboard)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalEnergyMalfunctions, KWD_SpaceshipDebuffSystemFailure, GV_EnergyBay)
		 UpdateTextReplacementEnergyBay(akTerminalRef)
EndFunction

Function DamagedUndockingMechanism_04(ObjectReference akTerminalRef)		 
		 SparePartsCalc(GV_SpaceshipDebuffLongerUndocking, KWD_SpaceshipDebuffLongerUndocking, NeededPartsDDM, TotalEnergyMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartLongerUndocking, SoundEventLongerUndocking, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalEnergyMalfunctions, KWD_SpaceshipDebuffLongerUndocking, GV_EnergyBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function DamagedUndockingMechanismTechnician_04(ObjectReference akTerminalRef)
		 ApplyCredits()
		 CreditsCalc(GV_SpaceshipDebuffLongerUndocking, KWD_SpaceshipDebuffLongerUndocking, NeededCreditsDDM, TotalEnergyMalfunctions, TotalEnabledMalfunctions, SoundEventLongerUndocking, None, SpaceshipSparePartLongerUndocking)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalEnergyMalfunctions, KWD_SpaceshipDebuffLongerUndocking, GV_EnergyBay)
		 UpdateTextReplacementEnergyBay(akTerminalRef)
EndFunction

Function ShortCircuit_05(ObjectReference akTerminalRef)		 
		 SparePartsCalc(GV_SpaceshipDebuffDoorShortCircuit, KWD_SpaceshipDebuffDoorShortCircuit, NeededPartsSC, TotalEnergyMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartDoorShortCircuit, SoundEventShortCircuit, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalEnergyMalfunctions, KWD_SpaceshipDebuffDoorShortCircuit, GV_EnergyBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function ShortCircuitTechnician_05(ObjectReference akTerminalRef)
		 ApplyCredits()
		 CreditsCalc(GV_SpaceshipDebuffDoorShortCircuit, KWD_SpaceshipDebuffDoorShortCircuit, NeededCreditsSC, TotalEnergyMalfunctions, TotalEnabledMalfunctions, SoundEventShortCircuit, None, SpaceshipSparePartDoorShortCircuit)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalEnergyMalfunctions, KWD_SpaceshipDebuffDoorShortCircuit, GV_EnergyBay)
		 UpdateTextReplacementEnergyBay(akTerminalRef)
EndFunction

Function RepairBotCameraOutage_06(ObjectReference akTerminalRef)		 
		 SparePartsCalc(GV_SpaceshipDebuffRepairBot, KWD_SpaceshipDebuffRepairBot, NeededPartsRBCO, TotalEnergyMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartRepairBot, SoundEventRepairBot, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalEnergyMalfunctions, KWD_SpaceshipDebuffRepairBot, GV_EnergyBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function RepairBotCameraOutageTechnician_06(ObjectReference akTerminalRef)
		 ApplyCredits()
		 CreditsCalc(GV_SpaceshipDebuffRepairBot, KWD_SpaceshipDebuffRepairBot, NeededCreditsRBCO, TotalEnergyMalfunctions, TotalEnabledMalfunctions, SoundEventRepairBot, None, SpaceshipSparePartRepairBot)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalEnergyMalfunctions, KWD_SpaceshipDebuffRepairBot, GV_EnergyBay)
		 UpdateTextReplacementEnergyBay(akTerminalRef)
EndFunction

Function EnginesBlockMalfunction_01(ObjectReference akTerminalRef)		 		 	 
		 SparePartsCalc(GV_SpaceshipDebuffDecreasedBoost, KWD_SpaceshipDebuffDecreasedBoost, NeededPartsEBM, TotalEngineMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartBoosters, SoundEventDecreasedBoost, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalEngineMalfunctions, KWD_SpaceshipDebuffDecreasedBoost, GV_EnginesBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function EnginesBlockMalfunctionTechnician_01(ObjectReference akTerminalRef)		 
		 ApplyCredits()	 
		 CreditsCalc(GV_SpaceshipDebuffDecreasedBoost, KWD_SpaceshipDebuffDecreasedBoost, NeededCreditsEBM, TotalEngineMalfunctions, TotalEnabledMalfunctions, SoundEventDecreasedBoost, None, SpaceshipSparePartBoosters)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalEngineMalfunctions, KWD_SpaceshipDebuffDecreasedBoost, GV_EnginesBay)
		 UpdateTextReplacementEnginesBay(akTerminalRef)
EndFunction

Function StuckThrusterFlaps_02(ObjectReference akTerminalRef)		 		 	 
		 SparePartsCalc(GV_SpaceshipDebuffThrustersOff, KWD_SpaceshipDebuffThrustersOff, NeededPartsSTF, TotalEngineMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartThrusters, SoundEventStuckThrusterFlaps, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalEngineMalfunctions, KWD_SpaceshipDebuffThrustersOff, GV_EnginesBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function StuckThrusterFlapsTechnician_02(ObjectReference akTerminalRef)		 
		 ApplyCredits()	 
		 CreditsCalc(GV_SpaceshipDebuffThrustersOff, KWD_SpaceshipDebuffThrustersOff, NeededCreditsSTF, TotalEngineMalfunctions, TotalEnabledMalfunctions, SoundEventStuckThrusterFlaps, None, SpaceshipSparePartThrusters)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalEngineMalfunctions, KWD_SpaceshipDebuffThrustersOff, GV_EnginesBay)
		 UpdateTextReplacementEnginesBay(akTerminalRef)
EndFunction

Function ControlLeversWear_03(ObjectReference akTerminalRef)		 		 	 
		 SparePartsCalc(GV_SpaceshipDebuffManeuverability, KWD_SpaceshipDebuffManeuverability, NeededPartsCLW, TotalEngineMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartControlLevers, SoundEventControlLeversWear, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalEngineMalfunctions, KWD_SpaceshipDebuffManeuverability, GV_EnginesBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function ControlLeversWearTechnician_03(ObjectReference akTerminalRef)		 
		 ApplyCredits()	 
		 CreditsCalc(GV_SpaceshipDebuffManeuverability, KWD_SpaceshipDebuffManeuverability, NeededCreditsCLW, TotalEngineMalfunctions, TotalEnabledMalfunctions, SoundEventControlLeversWear, None, SpaceshipSparePartControlLevers)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalEngineMalfunctions, KWD_SpaceshipDebuffManeuverability, GV_EnginesBay)
		 UpdateTextReplacementEnginesBay(akTerminalRef)
EndFunction

Function TorquePowerLoss_04(ObjectReference akTerminalRef)		 		 	 
		 SparePartsCalc(GV_SpaceshipDebuffHeatleechAttack, KWD_SpaceshipDebuffHeatleechAttack, NeededPartsTPL, TotalEngineMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartEngines, SoundEventTorquePowerLoss, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalEngineMalfunctions, KWD_SpaceshipDebuffHeatleechAttack, GV_EnginesBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function TorquePowerLossTechnician_04(ObjectReference akTerminalRef)		 
		 ApplyCredits() 
		 CreditsCalc(GV_SpaceshipDebuffHeatleechAttack, KWD_SpaceshipDebuffHeatleechAttack, NeededCreditsTPL, TotalEngineMalfunctions, TotalEnabledMalfunctions, SoundEventTorquePowerLoss, None, SpaceshipSparePartEngines)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalEngineMalfunctions, KWD_SpaceshipDebuffHeatleechAttack, GV_EnginesBay)
		 UpdateTextReplacementEnginesBay(akTerminalRef)
EndFunction

Function FuelPumpLeak_05(ObjectReference akTerminalRef)		 		 	 
		 SparePartsCalc(GV_SpaceshipDebuffFuelLeak, KWD_SpaceshipDebuffFuelLeak, NeededPartsFL, TotalEngineMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartFuelPump, SoundEventFuelPumpLeak, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalEngineMalfunctions, KWD_SpaceshipDebuffFuelLeak, GV_EnginesBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function FuelPumpLeakTechnician_05(ObjectReference akTerminalRef)		 
		 ApplyCredits()	 
		 CreditsCalc(GV_SpaceshipDebuffFuelLeak, KWD_SpaceshipDebuffFuelLeak, NeededCreditsFL, TotalEngineMalfunctions, TotalEnabledMalfunctions, SoundEventFuelPumpLeak, None, SpaceshipSparePartFuelPump)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalEngineMalfunctions, KWD_SpaceshipDebuffFuelLeak, GV_EnginesBay)
		 UpdateTextReplacementEnginesBay(akTerminalRef)
EndFunction

Function LandingGearThrustLoss_06(ObjectReference akTerminalRef)		 		 	 
		 SparePartsCalc(GV_SpaceshipDebuffLandingGearThrustLoss, KWD_SpaceshipDebuffLandingGearThrustLoss, NeededPartsLGTL, TotalEngineMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartLandingGearThrustLoss, SoundEventLandingGearThrustLoss, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalEngineMalfunctions, KWD_SpaceshipDebuffLandingGearThrustLoss, GV_EnginesBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function LandingGearThrustLossTechnician_06(ObjectReference akTerminalRef)		 
		 ApplyCredits()	 
		 CreditsCalc(GV_SpaceshipDebuffLandingGearThrustLoss, KWD_SpaceshipDebuffLandingGearThrustLoss, NeededCreditsLGTL, TotalEngineMalfunctions, TotalEnabledMalfunctions, SoundEventLandingGearThrustLoss, None, SpaceshipSparePartLandingGearThrustLoss)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalEngineMalfunctions, KWD_SpaceshipDebuffLandingGearThrustLoss, GV_EnginesBay)
		 UpdateTextReplacementEnginesBay(akTerminalRef)
EndFunction

Function BuggedGraviticControler_01(ObjectReference akTerminalRef)		 		 	 
		 SparePartsCalc(GV_SpaceshipDebuffGravDriveFuelIncrease, KWD_SpaceshipDebuffGravDriveFuelIncrease, NeededPartsBGC, TotalInterstellarMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartGraviticControler, SoundEventBuggedGraviticControler, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalInterstellarMalfunctions, KWD_SpaceshipDebuffGravDriveFuelIncrease, GV_InterstellarBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function BuggedGraviticControlerTechnician_01(ObjectReference akTerminalRef)		 
		 ApplyCredits()	 
		 CreditsCalc(GV_SpaceshipDebuffGravDriveFuelIncrease, KWD_SpaceshipDebuffGravDriveFuelIncrease, NeededCreditsBGC, TotalInterstellarMalfunctions, TotalEnabledMalfunctions, SoundEventBuggedGraviticControler, None, SpaceshipSparePartGraviticControler)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalInterstellarMalfunctions, KWD_SpaceshipDebuffGravDriveFuelIncrease, GV_InterstellarBay)
		 UpdateTextReplacementInterstellarBay(akTerminalRef)
EndFunction

Function GravitationLeak_02(ObjectReference akTerminalRef)		 		 	 
		 SparePartsCalc(GV_SpaceshipDebuffGravDriveZeroGravity, KWD_SpaceshipDebuffGravDriveZeroGravity, NeededPartsGL, TotalInterstellarMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartGraviticRestrainer, SoundEventGravitationLeak, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalInterstellarMalfunctions, KWD_SpaceshipDebuffGravDriveZeroGravity, GV_InterstellarBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function GravitationLeakTechnician_02(ObjectReference akTerminalRef)		 
		 ApplyCredits()	 
		 CreditsCalc(GV_SpaceshipDebuffGravDriveZeroGravity, KWD_SpaceshipDebuffGravDriveZeroGravity, NeededCreditsGL, TotalInterstellarMalfunctions, TotalEnabledMalfunctions, SoundEventGravitationLeak, None, SpaceshipSparePartGraviticRestrainer)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalInterstellarMalfunctions, KWD_SpaceshipDebuffGravDriveZeroGravity, GV_InterstellarBay)
		 UpdateTextReplacementInterstellarBay(akTerminalRef)
EndFunction

Function UnresponsiveGraviticGenerator_03(ObjectReference akTerminalRef)		 		  
		 SparePartsCalc(GV_SpaceshipDebuffGravDriveDistanceDecrease, KWD_SpaceshipDebuffGravDriveDistanceDecrease, NeededPartsUGG, TotalInterstellarMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartGraviticGenerator, SoundEventUnresponsiveGraviticGenerator, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalInterstellarMalfunctions, KWD_SpaceshipDebuffGravDriveDistanceDecrease, GV_InterstellarBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function UnresponsiveGraviticGeneratorTechnician_03(ObjectReference akTerminalRef)		 
		 ApplyCredits()	 
		 CreditsCalc(GV_SpaceshipDebuffGravDriveDistanceDecrease, KWD_SpaceshipDebuffGravDriveDistanceDecrease, NeededCreditsUGG, TotalInterstellarMalfunctions, TotalEnabledMalfunctions, SoundEventUnresponsiveGraviticGenerator, None, SpaceshipSparePartGraviticGenerator)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalInterstellarMalfunctions, KWD_SpaceshipDebuffGravDriveDistanceDecrease, GV_InterstellarBay)
		 UpdateTextReplacementInterstellarBay(akTerminalRef)
EndFunction

Function GravDriveOvercharge_04(ObjectReference akTerminalRef)		 		 	 
		 SparePartsCalc(GV_SpaceshipDebuffDisabledGravDrive, KWD_SpaceshipDebuffDisabledGravDrive, NeededPartsGDO, TotalInterstellarMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartGravDrive, SoundEventGravDriveOvercharge, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalInterstellarMalfunctions, KWD_SpaceshipDebuffDisabledGravDrive, GV_InterstellarBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function GravDriveOverchargeTechnician_04(ObjectReference akTerminalRef)		 
		 ApplyCredits()	 
		 CreditsCalc(GV_SpaceshipDebuffDisabledGravDrive, KWD_SpaceshipDebuffDisabledGravDrive, NeededCreditsGDO, TotalInterstellarMalfunctions, TotalEnabledMalfunctions, SoundEventGravDriveOvercharge, None, SpaceshipSparePartGravDrive)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalInterstellarMalfunctions, KWD_SpaceshipDebuffDisabledGravDrive, GV_InterstellarBay)
		 UpdateTextReplacementInterstellarBay(akTerminalRef)
EndFunction

Function AbnormalSpoolingPhase_05(ObjectReference akTerminalRef)		 		 	 
		 SparePartsCalc(GV_SpaceshipDebuffAbnormalSpoolingPhase, KWD_SpaceshipDebuffAbnormalSpoolingPhase, NeededPartsASP, TotalInterstellarMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartAbnormalSpoolingPhase, SoundEventAbnormalSpooling, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalInterstellarMalfunctions, KWD_SpaceshipDebuffAbnormalSpoolingPhase, GV_InterstellarBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function AbnormalSpoolingPhaseTechnician_05(ObjectReference akTerminalRef)		 
		 ApplyCredits()	 
		 CreditsCalc(GV_SpaceshipDebuffAbnormalSpoolingPhase, KWD_SpaceshipDebuffAbnormalSpoolingPhase, NeededCreditsASP, TotalInterstellarMalfunctions, TotalEnabledMalfunctions, SoundEventAbnormalSpooling, None, SpaceshipSparePartAbnormalSpoolingPhase)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalInterstellarMalfunctions, KWD_SpaceshipDebuffAbnormalSpoolingPhase, GV_InterstellarBay)
		 UpdateTextReplacementInterstellarBay(akTerminalRef)
EndFunction

Function BrokenRefueler_01(ObjectReference akTerminalRef)		 		 	 
		 SparePartsCalc(GV_SpaceshipDebuffBrokenRefueler, KWD_SpaceshipDebuffBrokenRefueler, NeededPartsBR, TotalMaintenanceMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartRefueler, SoundEventBrokenRefueler, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalMaintenanceMalfunctions, KWD_SpaceshipDebuffBrokenRefueler, GV_MaintenanceBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function BrokenRefuelerTechnician_01(ObjectReference akTerminalRef)		 
		 ApplyCredits() 
		 CreditsCalc(GV_SpaceshipDebuffBrokenRefueler, KWD_SpaceshipDebuffBrokenRefueler, NeededCreditsBR, TotalMaintenanceMalfunctions, TotalEnabledMalfunctions, SoundEventBrokenRefueler, None, SpaceshipSparePartRefueler)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalMaintenanceMalfunctions, KWD_SpaceshipDebuffBrokenRefueler, GV_MaintenanceBay)
		 UpdateTextReplacementMaintenanceBay(akTerminalRef)
EndFunction

Function FriedOutServer_02(ObjectReference akTerminalRef)		 		 	 
		 SparePartsCalc(GV_SpaceshipDebuffSlowAutoRepair, KWD_SpaceshipDebuffSlowAutoRepair, NeededPartsFOS, TotalMaintenanceMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartMaintenanceServer, SoundEventFriedOutServer, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalMaintenanceMalfunctions, KWD_SpaceshipDebuffSlowAutoRepair, GV_MaintenanceBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function FriedOutServerTechnician_02(ObjectReference akTerminalRef)		 
		 ApplyCredits()	 
		 CreditsCalc(GV_SpaceshipDebuffSlowAutoRepair, KWD_SpaceshipDebuffSlowAutoRepair, NeededCreditsFOS, TotalMaintenanceMalfunctions, TotalEnabledMalfunctions, SoundEventFriedOutServer, None, SpaceshipSparePartMaintenanceServer)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalMaintenanceMalfunctions, KWD_SpaceshipDebuffSlowAutoRepair, GV_MaintenanceBay)
		 UpdateTextReplacementMaintenanceBay(akTerminalRef)
EndFunction

Function HolesInTheCargo_03(ObjectReference akTerminalRef)		 		 	 
		 SparePartsCalc(GV_SpaceshipDebuffLowerCargoCapacity, KWD_SpaceshipDebuffLowerCargoCapacity, NeededPartsCH, TotalMaintenanceMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartCargoSeals, SoundEventHolesInTheCargo, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalMaintenanceMalfunctions, KWD_SpaceshipDebuffLowerCargoCapacity, GV_MaintenanceBay)
		 UpdateTextReplacement(akTerminalRef)

EndFunction

Function HolesInTheCargoTechnician_03(ObjectReference akTerminalRef)		 
		 ApplyCredits()	 
		 CreditsCalc(GV_SpaceshipDebuffLowerCargoCapacity, KWD_SpaceshipDebuffLowerCargoCapacity, NeededCreditsCH, TotalMaintenanceMalfunctions, TotalEnabledMalfunctions, SoundEventHolesInTheCargo, None, SpaceshipSparePartCargoSeals)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalMaintenanceMalfunctions, KWD_SpaceshipDebuffLowerCargoCapacity, GV_MaintenanceBay)
		 UpdateTextReplacementMaintenanceBay(akTerminalRef)
EndFunction

Function HullBreach_04(ObjectReference akTerminalRef)		 		 	 
		 SparePartsCalc(GV_SpaceshipDebuffHullBreach, KWD_SpaceshipDebuffHullBreach, NeededPartsHB, TotalMaintenanceMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartHull, SoundEventHullBreach, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalMaintenanceMalfunctions, KWD_SpaceshipDebuffHullBreach, GV_MaintenanceBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function HullBreachTechnician_04(ObjectReference akTerminalRef)		 
		 ApplyCredits()	 
		 CreditsCalc(GV_SpaceshipDebuffHullBreach, KWD_SpaceshipDebuffHullBreach, NeededCreditsHB, TotalMaintenanceMalfunctions, TotalEnabledMalfunctions, SoundEventHullBreach, None, SpaceshipSparePartHull)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalMaintenanceMalfunctions, KWD_SpaceshipDebuffHullBreach, GV_MaintenanceBay)
		 UpdateTextReplacementMaintenanceBay(akTerminalRef)
EndFunction

Function LifeSupportShutdown_05(ObjectReference akTerminalRef)		 		 	 
		 SparePartsCalc(GV_SpaceshipDebuffDisabledO2, KWD_SpaceshipDebuffDisabledO2, NeededPartsLSS, TotalMaintenanceMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartLifeSupport, SoundEventLifeSupportShutdown, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalMaintenanceMalfunctions, KWD_SpaceshipDebuffDisabledO2, GV_MaintenanceBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function LifeSupportShutdownTechnician_05(ObjectReference akTerminalRef)		 
		 ApplyCredits()		 
		 CreditsCalc(GV_SpaceshipDebuffDisabledO2, KWD_SpaceshipDebuffDisabledO2, NeededCreditsLSS, TotalMaintenanceMalfunctions, TotalEnabledMalfunctions, SoundEventLifeSupportShutdown, None, SpaceshipSparePartLifeSupport)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalMaintenanceMalfunctions, KWD_SpaceshipDebuffDisabledO2, GV_MaintenanceBay)
		 UpdateTextReplacementMaintenanceBay(akTerminalRef)
EndFunction

Function MaintenanceBayBlackout_06(ObjectReference akTerminalRef)		 		 	 
		 SparePartsCalc(GV_SpaceshipDebuffAutoRepair, KWD_SpaceshipDebuffAutoRepair, NeededPartsMBB, TotalMaintenanceMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartMaintenanceBay, SoundEventMaintenanceBayBlackout, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalMaintenanceMalfunctions, KWD_SpaceshipDebuffAutoRepair, GV_MaintenanceBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function MaintenanceBayBlackoutTechnician_06(ObjectReference akTerminalRef)		 
		 ApplyCredits()	 
		 CreditsCalc(GV_SpaceshipDebuffAutoRepair, KWD_SpaceshipDebuffAutoRepair, NeededCreditsMBB, TotalMaintenanceMalfunctions, TotalEnabledMalfunctions, SoundEventMaintenanceBayBlackout, None, SpaceshipSparePartMaintenanceBay)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalMaintenanceMalfunctions, KWD_SpaceshipDebuffAutoRepair, GV_MaintenanceBay)
		 UpdateTextReplacementMaintenanceBay(akTerminalRef)
EndFunction

Function GasLeak_07(ObjectReference akTerminalRef)		 		 		 
		 SparePartsCalc(GV_SpaceshipDebuffGasLeak, KWD_SpaceshipDebuffGasLeak, NeededPartsGas, TotalMaintenanceMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartGasLeak, SoundEventGasLeak, SoundEventGravitationLeak)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalMaintenanceMalfunctions, KWD_SpaceshipDebuffGasLeak, GV_MaintenanceBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function GasLeakTechnician_07(ObjectReference akTerminalRef)		 
		 ApplyCredits()	 
		 CreditsCalc(GV_SpaceshipDebuffGasLeak, KWD_SpaceshipDebuffGasLeak, NeededCreditsGas, TotalMaintenanceMalfunctions, TotalEnabledMalfunctions, SoundEventGasLeak, SoundEventGravitationLeak, SpaceshipSparePartGasLeak)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalMaintenanceMalfunctions, KWD_SpaceshipDebuffGasLeak, GV_MaintenanceBay)
		 UpdateTextReplacementMaintenanceBay(akTerminalRef)
EndFunction

Function RadiationLeak_08(ObjectReference akTerminalRef)		 		 	 
		 SparePartsCalc(GV_SpaceshipDebuffRadiationLeak, KWD_SpaceshipDebuffRadiationLeak, NeededPartsRAD, TotalMaintenanceMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartRadiationLeak, SoundEventRadiationLeak, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalMaintenanceMalfunctions, KWD_SpaceshipDebuffRadiationLeak, GV_MaintenanceBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function RadiationLeakTechnician_08(ObjectReference akTerminalRef)		 
		 ApplyCredits()	 
		 CreditsCalc(GV_SpaceshipDebuffRadiationLeak, KWD_SpaceshipDebuffRadiationLeak, NeededCreditsRAD, TotalMaintenanceMalfunctions, TotalEnabledMalfunctions, SoundEventRadiationLeak, None, SpaceshipSparePartRadiationLeak)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalMaintenanceMalfunctions, KWD_SpaceshipDebuffRadiationLeak, GV_MaintenanceBay)
		 UpdateTextReplacementMaintenanceBay(akTerminalRef)
EndFunction

Function CrackedTargetingLenses_01(ObjectReference akTerminalRef)		 		 	 
		 SparePartsCalc(GV_SpaceshipDebuffLongerTargeting, KWD_SpaceshipDebuffLongerTargeting, NeededPartsCTL, TotalCombatMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartTargetingLenses, SoundEventLongerTargeting, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalCombatMalfunctions, KWD_SpaceshipDebuffLongerTargeting, GV_CombatBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function CrackedTargetingLensesTechnician_01(ObjectReference akTerminalRef)		 
		 ApplyCredits()	 
		 CreditsCalc(GV_SpaceshipDebuffLongerTargeting, KWD_SpaceshipDebuffLongerTargeting, NeededCreditsCTL, TotalCombatMalfunctions, TotalEnabledMalfunctions, SoundEventLongerTargeting, None, SpaceshipSparePartTargetingLenses)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalCombatMalfunctions, KWD_SpaceshipDebuffLongerTargeting, GV_CombatBay)
		 UpdateTextReplacementCombatBay(akTerminalRef)
EndFunction

Function FirepowerDistributionLoss_02(ObjectReference akTerminalRef)		 			 
		 SparePartsCalc(GV_SpaceshipDebuffLowerWeaponDamage, KWD_SpaceshipDebuffLowerWeaponDamage, NeededPartsFDL, TotalCombatMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartFirepower, SoundEventFirepowerLoss, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalCombatMalfunctions, KWD_SpaceshipDebuffLowerWeaponDamage, GV_CombatBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function FirepowerDistributionLossTechnician_02(ObjectReference akTerminalRef)		 
		 ApplyCredits()	 
		 CreditsCalc(GV_SpaceshipDebuffLowerWeaponDamage, KWD_SpaceshipDebuffLowerWeaponDamage, NeededCreditsFDL, TotalCombatMalfunctions, TotalEnabledMalfunctions, SoundEventFirepowerLoss, None, SpaceshipSparePartFirepower)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalCombatMalfunctions, KWD_SpaceshipDebuffLowerWeaponDamage, GV_CombatBay)
		 UpdateTextReplacementCombatBay(akTerminalRef)
EndFunction

Function JammedAmmoFeeders_03(ObjectReference akTerminalRef)		 		 	 
		 SparePartsCalc(GV_SpaceshipDebuffSlowerWPNRechargeRate, KWD_SpaceshipDebuffSlowerWPNRechargeRate, NeededPartsJAF, TotalCombatMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartAmmoFeeders, SoundEventJammedAmmoFeeders, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalCombatMalfunctions, KWD_SpaceshipDebuffSlowerWPNRechargeRate, GV_CombatBay)
		 UpdateTextReplacement(akTerminalRef)
EndFunction

Function JammedAmmoFeedersTechnician_03(ObjectReference akTerminalRef)		 
		 ApplyCredits()	 
		 CreditsCalc(GV_SpaceshipDebuffSlowerWPNRechargeRate, KWD_SpaceshipDebuffSlowerWPNRechargeRate, NeededCreditsJAF, TotalCombatMalfunctions, TotalEnabledMalfunctions, SoundEventJammedAmmoFeeders, None, SpaceshipSparePartAmmoFeeders)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalCombatMalfunctions, KWD_SpaceshipDebuffSlowerWPNRechargeRate, GV_CombatBay)
		 UpdateTextReplacementCombatBay(akTerminalRef)
EndFunction

Function SubroutinedTargetingComputer_04(ObjectReference akTerminalRef)		 		 	 
		 SparePartsCalc(GV_SpaceshipDebuffTargetingOff, KWD_SpaceshipDebuffTargetingOff, NeededPartsSTC, TotalCombatMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartTargetingInterface, SoundEventSubroutinedComputer, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalCombatMalfunctions, KWD_SpaceshipDebuffTargetingOff, GV_CombatBay)
		 UpdateTextReplacement(akTerminalRef)         
EndFunction

Function SubroutinedTargetingComputerTechnician_04(ObjectReference akTerminalRef)		 
		 ApplyCredits()	 
		 CreditsCalc(GV_SpaceshipDebuffTargetingOff, KWD_SpaceshipDebuffTargetingOff, NeededCreditsSTC, TotalCombatMalfunctions, TotalEnabledMalfunctions, SoundEventSubroutinedComputer, None, SpaceshipSparePartTargetingInterface)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalCombatMalfunctions, KWD_SpaceshipDebuffTargetingOff, GV_CombatBay)
		 UpdateTextReplacementCombatBay(akTerminalRef)         
EndFunction

Function TargetingCPUOverheat_05(ObjectReference akTerminalRef)		 		 	 
		 SparePartsCalc(GV_SpaceshipDebuffTargetingAPCost, KWD_SpaceshipDebuffTargetingAPCost, NeededPartsCPU, TotalCombatMalfunctions, TotalEnabledMalfunctions, SpaceshipSparePartTargetingAPCost, SoundEventTargetingAPCost, None)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalCombatMalfunctions, KWD_SpaceshipDebuffTargetingAPCost, GV_CombatBay)
		 UpdateTextReplacement(akTerminalRef)         
EndFunction

Function TargetingCPUOverheatTechnician_05(ObjectReference akTerminalRef)		 
		 ApplyCredits()	 
		 CreditsCalc(GV_SpaceshipDebuffTargetingAPCost, KWD_SpaceshipDebuffTargetingAPCost, NeededCreditsCPU, TotalCombatMalfunctions, TotalEnabledMalfunctions, SoundEventTargetingAPCost, None, SpaceshipSparePartTargetingAPCost)
		 CheckEnabledMalfunctionsAndTheirCostIndividually(TotalEnabledMalfunctions, TotalCombatMalfunctions, KWD_SpaceshipDebuffTargetingAPCost, GV_CombatBay)
		 UpdateTextReplacementCombatBay(akTerminalRef)         
EndFunction

Function Technician_RepairAll_00(ObjectReference akTerminalRef)		 		 
		 ApplyCredits()	 		  			  		 
		 CreditsCalcAll(SoundEventHullBreach)
		 CheckIfShipHasMalfunction()
		 UpdateTextReplacementAllTech(akTerminalRef) 
EndFunction

Float Function SparePartDiscount(MiscObject SparePart)
	  
	  SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()	      
	  
	  Float Mult00 = 1.0
      Float Mult01 = 1.20
      Float Mult02 = 1.30
      Float Mult03 = 1.40
      Float Mult04 = 1.50

      If akShip.GetItemCount(SparePart) >= 4
         Return Mult04
  ElseIf akShip.GetItemCount(SparePart) >= 3 
         Return Mult03 
  ElseIf akShip.GetItemCount(SparePart) >= 2
         Return Mult02 
  ElseIf akShip.GetItemCount(SparePart) >= 1
         Return Mult01 
  ElseIf akShip.GetItemCount(SparePart) <= 0
         Return Mult00 
   EndIf

EndFunction

Function SparePartRemoval(MiscObject SparePart)
	  
	  SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()	      

      If akShip.GetItemCount(SparePart) >= 4
         akShip.RemoveItem(SparePart, 4, False, None)
  ElseIf akShip.GetItemCount(SparePart) >= 3
         akShip.RemoveItem(SparePart, 3, False, None)
  ElseIf akShip.GetItemCount(SparePart) >= 2
         akShip.RemoveItem(SparePart, 2, False, None)
  ElseIf akShip.GetItemCount(SparePart) >= 1
         akShip.RemoveItem(SparePart, 1, False, None)
  ElseIf akShip.GetItemCount(SparePart) <= 0
         Return
   EndIf

EndFunction

Function ApplyCreditsEnginesBay()
                 
	     SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()	              
	     		 
		 Float ApplyMult = GV_SpaceshipMalfApplyCreditMult.GetValue()	     
	  
		 Float SparePartMultEBM = SparePartDiscount(SpaceshipSparePartBoosters)		  
		 Float SparePartMultCLW = SparePartDiscount(SpaceshipSparePartControlLevers)		     
		 Float SparePartMultSTF = SparePartDiscount(SpaceshipSparePartThrusters)		 
		 Float SparePartMultFL = SparePartDiscount(SpaceshipSparePartFuelPump)		  
		 Float SparePartMultTPL = SparePartDiscount(SpaceshipSparePartEngines)		     
		 Float SparePartMultLGTL = SparePartDiscount(SpaceshipSparePartLandingGearThrustLoss)		     
		  		     
		 Float DiscountCalculate = DiscountCost() 		  
         Float ClassCreditsCostCalculate = SeMaitenanceClassMalfCreditsCost() 
         
         NeededCreditsEBM = 0
         NeededCreditsCLW = 0
         NeededCreditsSTF = 0
         NeededCreditsFL = 0
         NeededCreditsTPL = 0
         NeededCreditsLGTL = 0
		  
         NeededCreditsEBM = math.round(14300 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultEBM)
         NeededCreditsCLW = math.round(4700 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultCLW)
         NeededCreditsSTF = math.round(4500 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultSTF)
         NeededCreditsFL = math.round(6200 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultFL)
         NeededCreditsTPL = math.round(10600 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultTPL)
         NeededCreditsLGTL = math.round(9000 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultLGTL)    

EndFunction

Function ApplyCreditsEnergyBay()
                 
	     SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()	              
	     		 
		 Float ApplyMult = GV_SpaceshipMalfApplyCreditMult.GetValue()	     

		 Float SparePartMultBSC = SparePartDiscount(SpaceshipSparePartShieldCapacitors)		  
		 Float SparePartMultBSOD = SparePartDiscount(SpaceshipSparePartSubSystem)		     
		 Float SparePartMultSF = SparePartDiscount(SpaceshipSparePartDashboard)	
		 Float SparePartMultSC = SparePartDiscount(SpaceshipSparePartDoorShortCircuit)		     
		 Float SparePartMultRBCO = SparePartDiscount(SpaceshipSparePartRepairBot)			 
		 Float SparePartMultDDM = SparePartDiscount(SpaceshipSparePartLongerUndocking)		 
		 
		 Float DiscountCalculate = DiscountCost() 		  
         Float ClassCreditsCostCalculate = SeMaitenanceClassMalfCreditsCost() 
         
		 NeededCreditsBSC = 0
         NeededCreditsBSOD = 0 
         NeededCreditsSF = 0 
         NeededCreditsSC = 0
         NeededCreditsRBCO = 0
		 NeededCreditsDDM = 0
		 
		 NeededCreditsBSC = math.round(8600 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultBSC)
         NeededCreditsBSOD = math.round(4900 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultBSOD)
         NeededCreditsSF = math.round(2000 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultSF) 
         NeededCreditsSC = math.round(12000 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultSC)
         NeededCreditsRBCO = math.round(14000 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultRBCO)  
         NeededCreditsDDM = math.round(2100 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultDDM)

EndFunction

Function ApplyCreditsCombatBay()
                 
	     SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()	              
	     		 
		 Float ApplyMult = GV_SpaceshipMalfApplyCreditMult.GetValue()	     	     	     

		 Float SparePartMultJAF = SparePartDiscount(SpaceshipSparePartAmmoFeeders)		 
		 Float SparePartMultCTL = SparePartDiscount(SpaceshipSparePartTargetingLenses)		  
		 Float SparePartMultSTC = SparePartDiscount(SpaceshipSparePartTargetingInterface)		     
		 Float SparePartMultFDL = SparePartDiscount(SpaceshipSparePartFirepower)		    	     	
		 Float SparePartMultCPU = SparePartDiscount(SpaceshipSparePartTargetingAPCost)		  
	
		 Float DiscountCalculate = DiscountCost() 		  
         Float ClassCreditsCostCalculate = SeMaitenanceClassMalfCreditsCost() 
         
         NeededCreditsJAF = 0
         NeededCreditsCTL = 0
         NeededCreditsSTC = 0
         NeededCreditsFDL = 0
         NeededCreditsCPU = 0
		 
         NeededCreditsJAF = math.round(8500 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultJAF)
         NeededCreditsCTL = math.round(3000 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultCTL)
         NeededCreditsSTC = math.round(2600 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultSTC)
         NeededCreditsFDL = math.round(15800 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultFDL)
         NeededCreditsCPU = math.round(7100 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultCPU) 

EndFunction

Function ApplyCreditsInterstellarBay()
                 
	     SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()	              
	     		 
		 Float ApplyMult = GV_SpaceshipMalfApplyCreditMult.GetValue()	     
		 	     
		 Float SparePartMultBGC = SparePartDiscount(SpaceshipSparePartGraviticControler)	
		 Float SparePartMultGL = SparePartDiscount(SpaceshipSparePartGraviticRestrainer)		  
		 Float SparePartMultUGG = SparePartDiscount(SpaceshipSparePartGraviticGenerator)		     	
		 Float SparePartMultGDO = SparePartDiscount(SpaceshipSparePartGravDrive)		  	  	     
		 Float SparePartMultASP = SparePartDiscount(SpaceshipSparePartAbnormalSpoolingPhase)	

		 Float DiscountCalculate = DiscountCost() 		  
         Float ClassCreditsCostCalculate = SeMaitenanceClassMalfCreditsCost() 
         
         NeededCreditsBGC = 0
         NeededCreditsGL = 0
         NeededCreditsUGG = 0
         NeededCreditsGDO = 0
         NeededCreditsASP = 0
		 
         NeededCreditsBGC = math.round(12500 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultBGC)
         NeededCreditsGL = math.round(11700 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultGL)
         NeededCreditsUGG = math.round(3300 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultUGG)
         NeededCreditsGDO = math.round(12900 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultGDO)
         NeededCreditsASP = math.round(10900 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultASP)

EndFunction

Function ApplyCreditsMaintenanceBay()
                 
	     SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()	              
	     		 
		 Float ApplyMult = GV_SpaceshipMalfApplyCreditMult.GetValue()	     
		 	     
		 Float SparePartMultHB = SparePartDiscount(SpaceshipSparePartHull)	
		 Float SparePartMultMBB = SparePartDiscount(SpaceshipSparePartMaintenanceBay)		  
		 Float SparePartMultLSS = SparePartDiscount(SpaceshipSparePartLifeSupport)		     
		 Float SparePartMultCH = SparePartDiscount(SpaceshipSparePartCargoSeals)	
		 Float SparePartMultBR = SparePartDiscount(SpaceshipSparePartRefueler)		  
		 Float SparePartMultFOS = SparePartDiscount(SpaceshipSparePartMaintenanceServer)		     		     		  
		 Float SparePartMultGas = SparePartDiscount(SpaceshipSparePartGasLeak)		     		     
		 Float SparePartMultRAD = SparePartDiscount(SpaceshipSparePartRadiationLeak)	
		 
		 Float DiscountCalculate = DiscountCost() 		  
         Float ClassCreditsCostCalculate = SeMaitenanceClassMalfCreditsCost() 
         
         NeededCreditsHB = 0
         NeededCreditsMBB = 0
         NeededCreditsLSS = 0
         NeededCreditsCH = 0
         NeededCreditsBR = 0
         NeededCreditsFOS = 0
         NeededCreditsGas = 0
         NeededCreditsRAD = 0
		 
         NeededCreditsHB = math.round(11300 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultHB)
         NeededCreditsMBB = math.round(9900 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultMBB)
         NeededCreditsLSS = math.round(14700 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultLSS)
         NeededCreditsCH = math.round(10200 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultCH)
         NeededCreditsBR = math.round(4100 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultBR)
         NeededCreditsFOS = math.round(9500 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultFOS)
         NeededCreditsGas = math.round(11100 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultGas)
         NeededCreditsRAD = math.round(15600 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultRAD)  

EndFunction

Function ApplyCredits()
                 
	     SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()	              
	     		 
		 Float ApplyMult = GV_SpaceshipMalfApplyCreditMult.GetValue()	     
		 Float SparePartMultBSC = SparePartDiscount(SpaceshipSparePartShieldCapacitors)		  
		 Float SparePartMultBSOD = SparePartDiscount(SpaceshipSparePartSubSystem)		     
		 Float SparePartMultSF = SparePartDiscount(SpaceshipSparePartDashboard)	
		 Float SparePartMultEBM = SparePartDiscount(SpaceshipSparePartBoosters)		  
		 Float SparePartMultCLW = SparePartDiscount(SpaceshipSparePartControlLevers)		     
		 Float SparePartMultSTF = SparePartDiscount(SpaceshipSparePartThrusters)		 
		 Float SparePartMultFL = SparePartDiscount(SpaceshipSparePartFuelPump)		  
		 Float SparePartMultTPL = SparePartDiscount(SpaceshipSparePartEngines)		     
		 Float SparePartMultBGC = SparePartDiscount(SpaceshipSparePartGraviticControler)	
		 Float SparePartMultGL = SparePartDiscount(SpaceshipSparePartGraviticRestrainer)		  
		 Float SparePartMultUGG = SparePartDiscount(SpaceshipSparePartGraviticGenerator)		     
		 Float SparePartMultHB = SparePartDiscount(SpaceshipSparePartHull)	
		 Float SparePartMultMBB = SparePartDiscount(SpaceshipSparePartMaintenanceBay)		  
		 Float SparePartMultLSS = SparePartDiscount(SpaceshipSparePartLifeSupport)		     
		 Float SparePartMultCH = SparePartDiscount(SpaceshipSparePartCargoSeals)	
		 Float SparePartMultBR = SparePartDiscount(SpaceshipSparePartRefueler)		  
		 Float SparePartMultFOS = SparePartDiscount(SpaceshipSparePartMaintenanceServer)		     
		 Float SparePartMultJAF = SparePartDiscount(SpaceshipSparePartAmmoFeeders)		 
		 Float SparePartMultCTL = SparePartDiscount(SpaceshipSparePartTargetingLenses)		  
		 Float SparePartMultSTC = SparePartDiscount(SpaceshipSparePartTargetingInterface)		     
		 Float SparePartMultFDL = SparePartDiscount(SpaceshipSparePartFirepower)	
		 Float SparePartMultGDO = SparePartDiscount(SpaceshipSparePartGravDrive)		  
		 Float SparePartMultLGTL = SparePartDiscount(SpaceshipSparePartLandingGearThrustLoss)		     
		 Float SparePartMultDDM = SparePartDiscount(SpaceshipSparePartLongerUndocking)	
		 Float SparePartMultSC = SparePartDiscount(SpaceshipSparePartDoorShortCircuit)		  
		 Float SparePartMultGas = SparePartDiscount(SpaceshipSparePartGasLeak)		     
		 Float SparePartMultASP = SparePartDiscount(SpaceshipSparePartAbnormalSpoolingPhase)	
		 Float SparePartMultCPU = SparePartDiscount(SpaceshipSparePartTargetingAPCost)		  
		 Float SparePartMultRBCO = SparePartDiscount(SpaceshipSparePartRepairBot)		     
		 Float SparePartMultRAD = SparePartDiscount(SpaceshipSparePartRadiationLeak)	
		 Float DiscountCalculate = DiscountCost() 		  
         Float ClassCreditsCostCalculate = SeMaitenanceClassMalfCreditsCost() 
         
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
		 
		 NeededCreditsBSC = math.round(8600 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultBSC)
         NeededCreditsBSOD = math.round(4900 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultBSOD)
         NeededCreditsSF = math.round(2000 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultSF) 
         NeededCreditsEBM = math.round(14300 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultEBM)
         NeededCreditsCLW = math.round(4700 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultCLW)
         NeededCreditsSTF = math.round(4500 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultSTF)
         NeededCreditsFL = math.round(6200 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultFL)
         NeededCreditsTPL = math.round(10600 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultTPL)
         NeededCreditsBGC = math.round(12500 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultBGC)
         NeededCreditsGL = math.round(11700 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultGL)
         NeededCreditsUGG = math.round(3300 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultUGG)
         NeededCreditsHB = math.round(11300 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultHB)
         NeededCreditsMBB = math.round(9900 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultMBB)
         NeededCreditsLSS = math.round(14700 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultLSS)
         NeededCreditsCH = math.round(10200 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultCH)
         NeededCreditsBR = math.round(4100 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultBR)
         NeededCreditsFOS = math.round(9500 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultFOS)
         NeededCreditsJAF = math.round(8500 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultJAF)
         NeededCreditsCTL = math.round(3000 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultCTL)
         NeededCreditsSTC = math.round(2600 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultSTC)
         NeededCreditsFDL = math.round(15800 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultFDL)
         NeededCreditsGDO = math.round(12900 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultGDO)
         NeededCreditsLGTL = math.round(9000 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultLGTL)
         NeededCreditsDDM = math.round(2100 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultDDM)
         NeededCreditsSC = math.round(12000 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultSC)
         NeededCreditsGas = math.round(11100 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultGas)
         NeededCreditsASP = math.round(10900 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultASP)
         NeededCreditsCPU = math.round(7100 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultCPU)
         NeededCreditsRBCO = math.round(14000 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultRBCO)
         NeededCreditsRAD = math.round(15600 * ApplyMult * ClassCreditsCostCalculate / DiscountCalculate / SparePartMultRAD)       

EndFunction

Function SparePartsCalc(GlobalVariable MalfunctionType, Keyword ShipToken, Int Amount, Int MalfCount, Int TotalMalfCount, MiscObject SparePart, wwiseevent AudioFX, wwiseevent AudioFX02)
              
			  SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()								
              
			  Int ClassPartCostCalculate = SeMaitenanceClassMalfPartCost()										
			  
			  Int ShipsCargoHold = 0                                                                             
			  Int PlayerInventory = 0                		  
 			  Int Overall = 0
			  Int TotalPartsNeeded = 0
			  
			  PlayerInventory = PlayerRef.GetItemCount(SparePart)
			  ShipsCargoHold = akShip.GetItemCount(SparePart)
			  Overall = PlayerInventory + ShipsCargoHold
              TotalPartsNeeded = Amount * ClassPartCostCalculate
			  
			  If Overall >= TotalPartsNeeded
				 MalfunctionType.SetValue(0)                                
	             akShip.Removekeyword(ShipToken)
				 MalfCount -= 1  
				 TotalMalfCount -= 1
				 AudioFX.Play(PlayerRef, None, None)
				 AudioFX02.Play(PlayerRef, None, None)
				   
				   If PlayerInventory < TotalPartsNeeded 
				      PlayerRef.RemoveItem(SparePart, PlayerInventory, False, None)
		              akShip.RemoveItem(SparePart, TotalPartsNeeded - PlayerInventory, False, None)
	           ElseIf PlayerInventory >= TotalPartsNeeded 
				      PlayerRef.RemoveItem(SparePart, TotalPartsNeeded, False, None)
				EndIf

			      If GV_SpaceshipDebuffDisabledO2.GetValue() == 0
			         (SpaceshipSystemsQuest as SISA_SpaceshipFuel).EnableO2InShipEnvironment()
			   EndIf
		    
			      If GV_SpaceshipDebuffDisabledGravDrive.GetValue() == 0
			         (SpaceshipSystemsQuest as SISA_SpaceshipFuel).EnableGravJump()
			   EndIf
			
			Else
                 MSG_MalfunctionNotEnoughParts.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
		   EndIf  

EndFunction

Function CreditsCalc(GlobalVariable MalfunctionType, Keyword ShipToken, Int Amount, Int MalfCount, Int TotalMalfCount, wwiseevent AudioFX, wwiseevent AudioFX02, MiscObject SparePart)
              
			  SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()								
			  Int CredisAmount = 0
              			  
			  CredisAmount = PlayerRef.GetItemCount(Credits)
			  
			  If CredisAmount >= Amount
				 MalfunctionType.SetValue(0)                                
	             akShip.Removekeyword(ShipToken)
				 MalfCount -= 1  
				 TotalMalfCount -= 1
				 AudioFX.Play(PlayerRef, None, None)
				 AudioFX02.Play(PlayerRef, None, None)
				 PlayerRef.RemoveItem(Credits, Amount as Int, False, None)				  
				 SparePartRemoval(SparePart)				  
				  
				  If GV_SpaceshipDebuffDisabledO2.GetValue() == 0
			         (SpaceshipSystemsQuest as SISA_SpaceshipFuel).EnableO2InShipEnvironment()
			   EndIf

			      If GV_SpaceshipDebuffDisabledGravDrive.GetValue() == 0
			         (SpaceshipSystemsQuest as SISA_SpaceshipFuel).EnableGravJump()
			   EndIf

		    Else
                 MSG_MalfunctionNotEnoughCredits.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
		   EndIf  

EndFunction

Function CreditsCalcOnlyForAll()
              
			  SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()								             	  			  			  			  
			  
			  ApplyCredits()
			  
			  AllMalfSumm = 0		  				 
			  
			  Int CredisAmount = 0

			  CredisAmount = PlayerRef.GetItemCount(Credits)              
			  			  
			  If akShip.haskeyword(KWD_SpaceshipDebuffLowerWeaponDamage) == True				 
		         AllMalfSumm += NeededCreditsFDL
		   EndIf		  
		      If akShip.haskeyword(KWD_SpaceshipDebuffLowerCargoCapacity) == True				 
                 AllMalfSumm += NeededCreditsCH
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffDecreasedBoost) == True					 
                 AllMalfSumm += NeededCreditsEBM
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffLessShields) == True					 
                 AllMalfSumm += NeededCreditsBSC
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffGravDriveFuelIncrease) == True		  				 
                 AllMalfSumm += NeededCreditsBGC
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffGravDriveDistanceDecrease) == True		  				 
                 AllMalfSumm += NeededCreditsUGG
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffLongerTargeting) == True		  				 
                 AllMalfSumm += NeededCreditsCTL
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffTargetingOff) == True		  				 
                 AllMalfSumm += NeededCreditsSTC
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffThrustersOff) == True		  				 
                 AllMalfSumm += NeededCreditsSTF
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffSlowAutoRepair) == True		  				 
                 AllMalfSumm += NeededCreditsFOS
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffAutoRepair) == True		  				 
                 AllMalfSumm += NeededCreditsMBB
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffFuelLeak) == True		 				 
                 AllMalfSumm += NeededCreditsFL
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffHeatleechAttack) == True		 				 
                 AllMalfSumm += NeededCreditsTPL
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffSlowerWPNRechargeRate) == True		 				 
                 AllMalfSumm += NeededCreditsJAF
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffManeuverability) == True		 				 
                 AllMalfSumm += NeededCreditsCLW
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffSystemMitigation) == True		 				 
                 AllMalfSumm += NeededCreditsBSOD
		   EndIf		      
              If GV_SpaceshipGravityToggle.GetValue() == 1
			          If akShip.haskeyword(KWD_SpaceshipDebuffGravDriveZeroGravity) == True	 				
                         AllMalfSumm += NeededCreditsGL
		           EndIf
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffHullBreach) == True		 				 
                 AllMalfSumm += NeededCreditsHB
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffSystemFailure) == True		 				 
                 AllMalfSumm += NeededCreditsSF
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffBrokenRefueler) == True		 				 
                 AllMalfSumm += NeededCreditsBR
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffDisabledO2) == True		 				 
                 AllMalfSumm += NeededCreditsLSS
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffDisabledGravDrive) == True		 				 
                 AllMalfSumm += NeededCreditsGDO
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffLandingGearThrustLoss) == True		 				 
                 AllMalfSumm += NeededCreditsLGTL
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffLongerUndocking) == True		 				 
                 AllMalfSumm += NeededCreditsDDM
		   EndIf
			  If akShip.haskeyword(KWD_SpaceshipDebuffDoorShortCircuit) == True		 				 
                 AllMalfSumm += NeededCreditsSC
		   EndIf
			  If akShip.haskeyword(KWD_SpaceshipDebuffGasLeak) == True		 				 
                 AllMalfSumm += NeededCreditsGas
		   EndIf
			  If akShip.haskeyword(KWD_SpaceshipDebuffAbnormalSpoolingPhase) == True		 				 
                 AllMalfSumm += NeededCreditsASP
		   EndIf
			  If akShip.haskeyword(KWD_SpaceshipDebuffTargetingAPCost) == True		 				 
                 AllMalfSumm += NeededCreditsCPU
		   EndIf
			  If akShip.haskeyword(KWD_SpaceshipDebuffRepairBot) == True		 				 
                 AllMalfSumm += NeededCreditsRBCO
		   EndIf
			  If akShip.haskeyword(KWD_SpaceshipDebuffRadiationLeak) == True		 				 
                 AllMalfSumm += NeededCreditsRAD
		   EndIf

EndFunction

Function CreditsCalcAll(wwiseevent AudioFX)
              
			  SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()								             	  			  			  			  
			  			  
			  AllMalfSumm = 0		  				 
			  
			  Int CredisAmount = 0

			  CredisAmount = PlayerRef.GetItemCount(Credits)              
			  			  
			  If akShip.haskeyword(KWD_SpaceshipDebuffLowerWeaponDamage) == True				 
		         AllMalfSumm += NeededCreditsFDL
		   EndIf		  
		      If akShip.haskeyword(KWD_SpaceshipDebuffLowerCargoCapacity) == True				 
                 AllMalfSumm += NeededCreditsCH
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffDecreasedBoost) == True					 
                 AllMalfSumm += NeededCreditsEBM
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffLessShields) == True					 
                 AllMalfSumm += NeededCreditsBSC
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffGravDriveFuelIncrease) == True		  				 
                 AllMalfSumm += NeededCreditsBGC
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffGravDriveDistanceDecrease) == True		  				 
                 AllMalfSumm += NeededCreditsUGG
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffLongerTargeting) == True		  				 
                 AllMalfSumm += NeededCreditsCTL
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffTargetingOff) == True		  				 
                 AllMalfSumm += NeededCreditsSTC
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffThrustersOff) == True		  				 
                 AllMalfSumm += NeededCreditsSTF
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffSlowAutoRepair) == True		  				 
                 AllMalfSumm += NeededCreditsFOS
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffAutoRepair) == True		  				 
                 AllMalfSumm += NeededCreditsMBB
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffFuelLeak) == True		 				 
                 AllMalfSumm += NeededCreditsFL
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffHeatleechAttack) == True		 				 
                 AllMalfSumm += NeededCreditsTPL
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffSlowerWPNRechargeRate) == True		 				 
                 AllMalfSumm += NeededCreditsJAF
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffManeuverability) == True		 				 
                 AllMalfSumm += NeededCreditsCLW
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffSystemMitigation) == True		 				 
                 AllMalfSumm += NeededCreditsBSOD
		   EndIf		      
              If GV_SpaceshipGravityToggle.GetValue() == 1
			          If akShip.haskeyword(KWD_SpaceshipDebuffGravDriveZeroGravity) == True	 				
                         AllMalfSumm += NeededCreditsGL
		           EndIf
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffHullBreach) == True		 				 
                 AllMalfSumm += NeededCreditsHB
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffSystemFailure) == True		 				 
                 AllMalfSumm += NeededCreditsSF
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffBrokenRefueler) == True		 				 
                 AllMalfSumm += NeededCreditsBR
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffDisabledO2) == True		 				 
                 AllMalfSumm += NeededCreditsLSS
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffDisabledGravDrive) == True		 				 
                 AllMalfSumm += NeededCreditsGDO
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffLandingGearThrustLoss) == True		 				 
                 AllMalfSumm += NeededCreditsLGTL
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffLongerUndocking) == True		 				 
                 AllMalfSumm += NeededCreditsDDM
		   EndIf
			  If akShip.haskeyword(KWD_SpaceshipDebuffDoorShortCircuit) == True		 				 
                 AllMalfSumm += NeededCreditsSC
		   EndIf
			  If akShip.haskeyword(KWD_SpaceshipDebuffGasLeak) == True		 				 
                 AllMalfSumm += NeededCreditsGas
		   EndIf
			  If akShip.haskeyword(KWD_SpaceshipDebuffAbnormalSpoolingPhase) == True		 				 
                 AllMalfSumm += NeededCreditsASP
		   EndIf
			  If akShip.haskeyword(KWD_SpaceshipDebuffTargetingAPCost) == True		 				 
                 AllMalfSumm += NeededCreditsCPU
		   EndIf
			  If akShip.haskeyword(KWD_SpaceshipDebuffRepairBot) == True		 				 
                 AllMalfSumm += NeededCreditsRBCO
		   EndIf
			  If akShip.haskeyword(KWD_SpaceshipDebuffRadiationLeak) == True		 				 
                 AllMalfSumm += NeededCreditsRAD
		   EndIf
		   	           		                          		   		  		   
		   If CredisAmount >= AllMalfSumm              
			  
			  AudioFX.Play(PlayerRef, None, None)
			  PlayerRef.RemoveItem(Credits, AllMalfSumm, False, None)
		  			  
			  If akShip.haskeyword(KWD_SpaceshipDebuffLowerWeaponDamage) == True				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffLowerWeaponDamage)
				 GV_SpaceshipDebuffLowerWeaponDamage.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartFirepower)
				 TotalEnabledMalfunctions -= 1                               
		         TotalCombatMalfunctions -= 1
		   EndIf		  
		      If akShip.haskeyword(KWD_SpaceshipDebuffLowerCargoCapacity) == True				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffLowerCargoCapacity)
				 GV_SpaceshipDebuffLowerCargoCapacity.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartCargoSeals)
				 TotalEnabledMalfunctions -= 1
		         TotalMaintenanceMalfunctions -= 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffDecreasedBoost) == True					 
				 akShip.Removekeyword(KWD_SpaceshipDebuffDecreasedBoost)
				 GV_SpaceshipDebuffDecreasedBoost.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartBoosters)
				 TotalEnabledMalfunctions -= 1								  
		         TotalEngineMalfunctions -= 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffLessShields) == True					 
				 akShip.Removekeyword(KWD_SpaceshipDebuffLessShields)
				 GV_SpaceshipDebuffLessShields.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartShieldCapacitors)
				 TotalEnabledMalfunctions -= 1								  									  									  
		         TotalEnergyMalfunctions -= 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffGravDriveFuelIncrease) == True		  				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffGravDriveFuelIncrease)
				 GV_SpaceshipDebuffGravDriveFuelIncrease.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartGraviticControler)
				 TotalEnabledMalfunctions -= 1								  									  									  
		         TotalInterstellarMalfunctions -= 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffGravDriveDistanceDecrease) == True		  				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffGravDriveDistanceDecrease)
				 GV_SpaceshipDebuffGravDriveDistanceDecrease.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartGraviticGenerator)
				 TotalEnabledMalfunctions -= 1
		         TotalInterstellarMalfunctions -= 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffLongerTargeting) == True		  				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffLongerTargeting)
				 GV_SpaceshipDebuffLongerTargeting.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartTargetingLenses)
				 TotalEnabledMalfunctions -= 1 
		         TotalCombatMalfunctions -= 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffTargetingOff) == True		  				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffTargetingOff)
				 GV_SpaceshipDebuffTargetingOff.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartTargetingInterface)
				 TotalEnabledMalfunctions -= 1
		         TotalCombatMalfunctions -= 1		   
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffThrustersOff) == True		  				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffThrustersOff)
				 GV_SpaceshipDebuffThrustersOff.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartThrusters)
				 TotalEnabledMalfunctions -= 1
		         TotalEngineMalfunctions -= 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffSlowAutoRepair) == True		  				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffSlowAutoRepair)
				 GV_SpaceshipDebuffSlowAutoRepair.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartMaintenanceServer)
				 TotalEnabledMalfunctions -= 1
		         TotalMaintenanceMalfunctions -= 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffAutoRepair) == True		  				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffAutoRepair)
				 GV_SpaceshipDebuffAutoRepair.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartMaintenanceBay)
				 TotalEnabledMalfunctions -= 1
		         TotalMaintenanceMalfunctions -= 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffFuelLeak) == True		 				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffFuelLeak)
				 GV_SpaceshipDebuffFuelLeak.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartFuelPump)
				 TotalEnabledMalfunctions -= 1
		         TotalEngineMalfunctions -= 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffHeatleechAttack) == True		 				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffHeatleechAttack)
				 GV_SpaceshipDebuffHeatleechAttack.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartEngines)
				 TotalEnabledMalfunctions -= 1
		         TotalEngineMalfunctions -= 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffSlowerWPNRechargeRate) == True		 				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffSlowerWPNRechargeRate)
				 GV_SpaceshipDebuffSlowerWPNRechargeRate.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartAmmoFeeders)
				 TotalEnabledMalfunctions -= 1
		         TotalCombatMalfunctions -= 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffManeuverability) == True		 				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffManeuverability)
				 GV_SpaceshipDebuffManeuverability.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartControlLevers)
				 TotalEnabledMalfunctions -= 1
		         TotalEngineMalfunctions -= 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffSystemMitigation) == True		 				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffSystemMitigation)
				 GV_SpaceshipDebuffSystemMitigation.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartSubSystem)
				 TotalEnabledMalfunctions -= 1
		         TotalEnergyMalfunctions -= 1
		   EndIf		      
              If GV_SpaceshipGravityToggle.GetValue() == 1
			         If akShip.haskeyword(KWD_SpaceshipDebuffGravDriveZeroGravity) == True	 				
				        akShip.Removekeyword(KWD_SpaceshipDebuffGravDriveZeroGravity)
				        GV_SpaceshipDebuffGravDriveZeroGravity.SetValue(0)
                        SparePartRemoval(SpaceshipSparePartGraviticRestrainer)
				        (SpaceshipSystemsQuest as SISA_SpaceshipFuel).MaintenanceSpaceshipZegoGOff()
						TotalEnabledMalfunctions -= 1
		                TotalInterstellarMalfunctions -= 1
		          EndIf
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffHullBreach) == True		 				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffHullBreach)
				 GV_SpaceshipDebuffHullBreach.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartHull)
				 TotalEnabledMalfunctions -= 1
		         TotalMaintenanceMalfunctions -= 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffSystemFailure) == True		 				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffSystemFailure)
				 GV_SpaceshipDebuffSystemFailure.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartDashboard)
				 TotalEnabledMalfunctions -= 1
		         TotalEnergyMalfunctions -= 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffBrokenRefueler) == True		 				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffBrokenRefueler)
				 GV_SpaceshipDebuffBrokenRefueler.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartRefueler)
				 TotalEnabledMalfunctions -= 1
		         TotalMaintenanceMalfunctions -= 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffDisabledO2) == True		 				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffDisabledO2)
				 GV_SpaceshipDebuffDisabledO2.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartLifeSupport)
				 (SpaceshipSystemsQuest as SISA_SpaceshipFuel).EnableO2InShipEnvironment()
				 TotalEnabledMalfunctions -= 1
                 TotalMaintenanceMalfunctions -= 1
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffDisabledGravDrive) == True		 				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffDisabledGravDrive)
				 GV_SpaceshipDebuffDisabledGravDrive.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartGravDrive)
				 (SpaceshipSystemsQuest as SISA_SpaceshipFuel).EnableGravJump()
				 TotalEnabledMalfunctions -= 1
                 TotalInterstellarMalfunctions -= 1
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffLandingGearThrustLoss) == True		 				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffLandingGearThrustLoss)
				 GV_SpaceshipDebuffLandingGearThrustLoss.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartLandingGearThrustLoss)
				 TotalEnabledMalfunctions -= 1
                 TotalEngineMalfunctions -= 1
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffLongerUndocking) == True		 				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffLongerUndocking)
				 GV_SpaceshipDebuffLongerUndocking.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartLongerUndocking)
				 TotalEnabledMalfunctions -= 1
                 TotalEnergyMalfunctions -= 1
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffDoorShortCircuit) == True		 				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffDoorShortCircuit)
				 GV_SpaceshipDebuffDoorShortCircuit.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartDoorShortCircuit)
				 TotalEnabledMalfunctions -= 1
                 TotalEnergyMalfunctions -= 1
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffGasLeak) == True		 				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffGasLeak)
				 GV_SpaceshipDebuffGasLeak.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartGasLeak)
				 TotalEnabledMalfunctions -= 1
                 TotalMaintenanceMalfunctions -= 1
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffAbnormalSpoolingPhase) == True		 				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffAbnormalSpoolingPhase)
				 GV_SpaceshipDebuffAbnormalSpoolingPhase.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartAbnormalSpoolingPhase)
				 TotalEnabledMalfunctions -= 1
                 TotalInterstellarMalfunctions -= 1
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffTargetingAPCost) == True		 				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffTargetingAPCost)
				 GV_SpaceshipDebuffTargetingAPCost.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartTargetingAPCost)
				 TotalEnabledMalfunctions -= 1
                 TotalCombatMalfunctions -= 1
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffRepairBot) == True		 				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffRepairBot)
				 GV_SpaceshipDebuffRepairBot.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartRepairBot)
				 TotalEnabledMalfunctions -= 1
                 TotalEnergyMalfunctions -= 1
		   EndIf
			  If akShip.haskeyword(KWD_SpaceshipDebuffRadiationLeak) == True		 				 
				 akShip.Removekeyword(KWD_SpaceshipDebuffRadiationLeak)
				 GV_SpaceshipDebuffRadiationLeak.SetValue(0)
                 SparePartRemoval(SpaceshipSparePartRadiationLeak)
				 TotalEnabledMalfunctions -= 1
                 TotalMaintenanceMalfunctions -= 1
		   EndIf
                           		 
		 Else
              MSG_MalfunctionNotEnoughCredits.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	    EndIf  

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

		      If TotalEnabledMalfunctions > 0
		         GV_CompletionMeter.SetValue(1)
		         GV_SpaceshipMaintMalfGained.SetValue(1)
				 SoundEventErrorCheckFound.Play(PlayerRef, None, None)
		   Else
		         GV_CompletionMeter.SetValue(2)
		         GV_SpaceshipMaintMalfGained.SetValue(0)
				 SoundEventErrorCheckNotFound.Play(PlayerRef, None, None)
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

Function CheckEnabledMalfunctionsAndTheirCostIndividually(Int EnabledMalfunction, Int MalfunctionCategory, Keyword MalfunctionType, GlobalVariable Toggle)
		 
		 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
         EnabledMalfunction = 0
         MalfunctionCategory = 0
			  
			  If akShip.haskeyword(MalfunctionType) == True				 
				 EnabledMalfunction += 1                               
		         MalfunctionCategory += 1
		   EndIf

		      If EnabledMalfunction > 0
		         GV_CompletionMeter.SetValue(1)
		         GV_SpaceshipMaintMalfGained.SetValue(1)
		   Else
		         GV_CompletionMeter.SetValue(2)
		         GV_SpaceshipMaintMalfGained.SetValue(0)
		   EndIf

		      If MalfunctionCategory > 0
		         Toggle.SetValue(1)
		   Else
		         Toggle.SetValue(0)
		   EndIf

EndFunction

Function UpdateTextReplacementEnginesBay(ObjectReference akTerminalRef)
			          		       						 		
        Int TotalCredits = PlayerRef.GetItemCount(Credits)							

        CheckIfShipHasMalfunction()

		akTerminalRef.AddTextReplacementValue("MalfCount", TotalEnabledMalfunctions)	     		 		         		
		akTerminalRef.AddTextReplacementValue("MalfEngineCount", TotalEngineMalfunctions)
							
		akTerminalRef.AddTextReplacementValue("CreditsAmount", TotalCredits)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredEBM", NeededCreditsEBM)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredCLW", NeededCreditsCLW)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredSTF", NeededCreditsSTF)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredTPL", NeededCreditsTPL)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredFL", NeededCreditsFL)         
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredLGTL", NeededCreditsLGTL)

EndFunction

Function UpdateTextReplacementEnginesBayParts(ObjectReference akTerminalRef)
			          		       						 		
		SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()					

        CheckIfShipHasMalfunction()
	 		
		Int TotalCountControlLevers = PlayerRef.GetItemCount(SpaceshipSparePartControlLevers) + akShip.GetItemCount(SpaceshipSparePartControlLevers)		  
		Int TotalCountBoosters = PlayerRef.GetItemCount(SpaceshipSparePartBoosters) + akShip.GetItemCount(SpaceshipSparePartBoosters)		 
		Int TotalCountFuelPump = PlayerRef.GetItemCount(SpaceshipSparePartFuelPump) + akShip.GetItemCount(SpaceshipSparePartFuelPump)
		Int TotalCountThrusters = PlayerRef.GetItemCount(SpaceshipSparePartThrusters) + akShip.GetItemCount(SpaceshipSparePartThrusters)
		Int TotalCountEngines = PlayerRef.GetItemCount(SpaceshipSparePartEngines) + akShip.GetItemCount(SpaceshipSparePartEngines)
		Int TotalCountLandingGear = PlayerRef.GetItemCount(SpaceshipSparePartLandingGearThrustLoss) + akShip.GetItemCount(SpaceshipSparePartLandingGearThrustLoss)
        Int TotalMaintenanceKits = PlayerRef.GetItemCount(SpaceshipMaintenanceKit) + akShip.GetItemCount(SpaceshipMaintenanceKit)
			
        MaintenanceProc = 1
        NeededPartsEBM = 1
        NeededPartsCLW = 1
        NeededPartsSTF = 1
        NeededPartsTPL = 1
        NeededPartsFL = 1
        NeededPartsLGTL = 1

		akTerminalRef.AddTextReplacementValue("PartsCountControlLevers", TotalCountControlLevers)		 		 		
		akTerminalRef.AddTextReplacementValue("PartsCountBoosters", TotalCountBoosters)	 	 		 	 		
		akTerminalRef.AddTextReplacementValue("PartsCountFuelPump", TotalCountFuelPump)		 		 		
		akTerminalRef.AddTextReplacementValue("PartsCountThrusters", TotalCountThrusters)		 		 	 		 		
		akTerminalRef.AddTextReplacementValue("PartsCountEngines", TotalCountEngines)
		akTerminalRef.AddTextReplacementValue("PartsCountLandingGear", TotalCountLandingGear)
		
		Int ClassPartCostCalculate = SeMaitenanceClassMalfPartCost()				
				
		akTerminalRef.AddTextReplacementValue("MalfCount", TotalEnabledMalfunctions)	     		 		         		
		akTerminalRef.AddTextReplacementValue("MalfEngineCount", TotalEngineMalfunctions)
		akTerminalRef.AddTextReplacementValue("MaintenanceKit", TotalMaintenanceKits)		
		akTerminalRef.AddTextReplacementValue("MaintenanceKitProc", MaintenanceProc)
		akTerminalRef.AddTextReplacementValue("EBMShipParts", NeededPartsEBM * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("CLWShipParts", NeededPartsCLW * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("STFShipParts", NeededPartsSTF * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("TPLToxin", NeededPartsTPL * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("FLShipParts", NeededPartsFL * ClassPartCostCalculate)         
		akTerminalRef.AddTextReplacementValue("LGTLShipParts", NeededPartsLGTL * ClassPartCostCalculate)

EndFunction

Function UpdateTextReplacementMaintenanceBay(ObjectReference akTerminalRef)
			          		       						 		
        Int TotalCredits = PlayerRef.GetItemCount(Credits)							

        CheckIfShipHasMalfunction()

		akTerminalRef.AddTextReplacementValue("MalfCount", TotalEnabledMalfunctions)	     		 		         		
		akTerminalRef.AddTextReplacementValue("MalfMaintenanceCount", TotalMaintenanceMalfunctions)
							
		akTerminalRef.AddTextReplacementValue("CreditsAmount", TotalCredits)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredHB", NeededCreditsHB)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredMBB", NeededCreditsMBB)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredLSS", NeededCreditsLSS)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredCH", NeededCreditsCH)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredBR", NeededCreditsBR)         
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredFOS", NeededCreditsFOS)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredGas", NeededCreditsGas)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredRAD", NeededCreditsRAD)

EndFunction

Function UpdateTextReplacementMaintenanceBayParts(ObjectReference akTerminalRef)
			          		       						 		
		SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()					

        CheckIfShipHasMalfunction()
	 		
		Int TotalPartsCountRefueler = PlayerRef.GetItemCount(SpaceshipSparePartRefueler) + akShip.GetItemCount(SpaceshipSparePartRefueler)	 	 
		Int TotalCountCargoSeals = PlayerRef.GetItemCount(SpaceshipSparePartCargoSeals) + akShip.GetItemCount(SpaceshipSparePartCargoSeals)	 	
		Int TotalCountMaintenanceServer = PlayerRef.GetItemCount(SpaceshipSparePartMaintenanceServer) + akShip.GetItemCount(SpaceshipSparePartMaintenanceServer)		
		Int TotalCountHull = PlayerRef.GetItemCount(SpaceshipSparePartHull) + akShip.GetItemCount(SpaceshipSparePartHull)		
		Int TotalCountLifeSupport = PlayerRef.GetItemCount(SpaceshipSparePartLifeSupport) + akShip.GetItemCount(SpaceshipSparePartLifeSupport)
		Int TotalCountMaintenanceBay = PlayerRef.GetItemCount(SpaceshipSparePartMaintenanceBay) + akShip.GetItemCount(SpaceshipSparePartMaintenanceBay)
		Int TotalCountGasPipes = PlayerRef.GetItemCount(SpaceshipSparePartGasLeak) + akShip.GetItemCount(SpaceshipSparePartGasLeak)	
		Int TotalCountRadiationLeak = PlayerRef.GetItemCount(SpaceshipSparePartRadiationLeak) + akShip.GetItemCount(SpaceshipSparePartRadiationLeak)		
        Int TotalMaintenanceKits = PlayerRef.GetItemCount(SpaceshipMaintenanceKit) + akShip.GetItemCount(SpaceshipMaintenanceKit)
			
        MaintenanceProc = 1
        NeededPartsHB = 1
        NeededPartsMBB = 1
        NeededPartsLSS = 1
        NeededPartsCH = 1
        NeededPartsBR = 1
        NeededPartsFOS = 1
        NeededPartsGas = 1
        NeededPartsRAD = 1
		
		akTerminalRef.AddTextReplacementValue("PartsCountRefueler", TotalPartsCountRefueler)		 		 	
		akTerminalRef.AddTextReplacementValue("PartsCountCargoSeals", TotalCountCargoSeals)		 		 		 		 
		akTerminalRef.AddTextReplacementValue("PartsCountMaintenanceServer", TotalCountMaintenanceServer)		 
		akTerminalRef.AddTextReplacementValue("PartsCountHull", TotalCountHull)		 		 
		akTerminalRef.AddTextReplacementValue("PartsCountLifeSupport", TotalCountLifeSupport)		 		 
		akTerminalRef.AddTextReplacementValue("PartsCountMaintenanceBay", TotalCountMaintenanceBay)
		akTerminalRef.AddTextReplacementValue("PartsCountGas", TotalCountGasPipes)
		akTerminalRef.AddTextReplacementValue("PartsCountRAD", TotalCountRadiationLeak)
		
		Int ClassPartCostCalculate = SeMaitenanceClassMalfPartCost()				
		
		akTerminalRef.AddTextReplacementValue("MalfCount", TotalEnabledMalfunctions)	     		 		         		
		akTerminalRef.AddTextReplacementValue("MalfMaintenanceCount", TotalMaintenanceMalfunctions)
		akTerminalRef.AddTextReplacementValue("MaintenanceKit", TotalMaintenanceKits)		
		akTerminalRef.AddTextReplacementValue("MaintenanceKitProc", MaintenanceProc)
		akTerminalRef.AddTextReplacementValue("HBShipParts", NeededPartsHB * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("MBBShipParts", NeededPartsMBB * ClassPartCostCalculate)				
		akTerminalRef.AddTextReplacementValue("LSSShipParts", NeededPartsLSS * ClassPartCostCalculate)		
		akTerminalRef.AddTextReplacementValue("CHShipParts", NeededPartsCH * ClassPartCostCalculate)		
		akTerminalRef.AddTextReplacementValue("BRShipParts", NeededPartsBR * ClassPartCostCalculate) 		
		akTerminalRef.AddTextReplacementValue("FOSShipParts", NeededPartsFOS * ClassPartCostCalculate)		
		akTerminalRef.AddTextReplacementValue("GasShipParts", NeededPartsGas * ClassPartCostCalculate)		
		akTerminalRef.AddTextReplacementValue("RADShipParts", NeededPartsRAD * ClassPartCostCalculate)

EndFunction

Function UpdateTextReplacementEnergyBay(ObjectReference akTerminalRef)
			          		       						 		
        Int TotalCredits = PlayerRef.GetItemCount(Credits)							

        CheckIfShipHasMalfunction()	

		akTerminalRef.AddTextReplacementValue("MalfCount", TotalEnabledMalfunctions)	     		 		         		
		akTerminalRef.AddTextReplacementValue("MalfEnergyCount", TotalEnergyMalfunctions)
							
		akTerminalRef.AddTextReplacementValue("CreditsAmount", TotalCredits)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredBSC", NeededCreditsBSC)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredBSOD", NeededCreditsBSOD)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredSF", NeededCreditsSF)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredSC", NeededCreditsSC)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredRBCO", NeededCreditsRBCO)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredDDM", NeededCreditsDDM)

EndFunction

Function UpdateTextReplacementEnergyBayParts(ObjectReference akTerminalRef)
			          		       						 		
		SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()					

        CheckIfShipHasMalfunction()
	 		
		Int TotalCountSubSystem = PlayerRef.GetItemCount(SpaceshipSparePartSubSystem) + akShip.GetItemCount(SpaceshipSparePartSubSystem)		 
		Int TotalCountShieldCapacitors = PlayerRef.GetItemCount(SpaceshipSparePartShieldCapacitors) + akShip.GetItemCount(SpaceshipSparePartShieldCapacitors)	 	 
		Int TotalCountDashboard = PlayerRef.GetItemCount(SpaceshipSparePartDashboard) + akShip.GetItemCount(SpaceshipSparePartDashboard)
		Int TotalCountDocker = PlayerRef.GetItemCount(SpaceshipSparePartLongerUndocking) + akShip.GetItemCount(SpaceshipSparePartLongerUndocking)
		Int TotalCountElectricity = PlayerRef.GetItemCount(SpaceshipSparePartDoorShortCircuit) + akShip.GetItemCount(SpaceshipSparePartDoorShortCircuit)	
		Int TotalCountRepairBot = PlayerRef.GetItemCount(SpaceshipSparePartRepairBot) + akShip.GetItemCount(SpaceshipSparePartRepairBot)
        Int TotalMaintenanceKits = PlayerRef.GetItemCount(SpaceshipMaintenanceKit) + akShip.GetItemCount(SpaceshipMaintenanceKit)
			
        MaintenanceProc = 1
        NeededPartsBSC = 1 
        NeededPartsBSOD = 1 
        NeededPartsSF = 1 
        NeededPartsSC = 1
        NeededPartsRBCO = 1        
        NeededPartsDDM = 1		

		akTerminalRef.AddTextReplacementValue("PartsCountSubSystem", TotalCountSubSystem)	 		 
		akTerminalRef.AddTextReplacementValue("PartsCountShieldCapacitors", TotalCountShieldCapacitors)		
		akTerminalRef.AddTextReplacementValue("PartsCountDashboard", TotalCountDashboard)	
		akTerminalRef.AddTextReplacementValue("PartsCountDocker", TotalCountDocker)	 
		akTerminalRef.AddTextReplacementValue("PartsCountElectro", TotalCountElectricity)
		akTerminalRef.AddTextReplacementValue("PartsCountRBCO", TotalCountRepairBot)
				 		 		
		Int ClassPartCostCalculate = SeMaitenanceClassMalfPartCost()				
				
		akTerminalRef.AddTextReplacementValue("MalfCount", TotalEnabledMalfunctions)	     		 		         		
		akTerminalRef.AddTextReplacementValue("MalfEnergyCount", TotalEnergyMalfunctions)
		akTerminalRef.AddTextReplacementValue("MaintenanceKit", TotalMaintenanceKits)		
		akTerminalRef.AddTextReplacementValue("MaintenanceKitProc", MaintenanceProc)
		akTerminalRef.AddTextReplacementValue("BSCShipParts", NeededPartsBSC * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("BSODShipParts", NeededPartsBSOD * ClassPartCostCalculate)		
		akTerminalRef.AddTextReplacementValue("SFShipParts", NeededPartsSF * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("SCShipParts", NeededPartsSC * ClassPartCostCalculate)		
		akTerminalRef.AddTextReplacementValue("RBCOShipParts", NeededPartsRBCO * ClassPartCostCalculate)		
		akTerminalRef.AddTextReplacementValue("DDMShipParts", NeededPartsDDM * ClassPartCostCalculate)

EndFunction

Function UpdateTextReplacementCombatBay(ObjectReference akTerminalRef)
			          		       						 		
        Int TotalCredits = PlayerRef.GetItemCount(Credits)							

        CheckIfShipHasMalfunction()

		akTerminalRef.AddTextReplacementValue("MalfCount", TotalEnabledMalfunctions)	     		 		         		
		akTerminalRef.AddTextReplacementValue("MalfCombatCount", TotalCombatMalfunctions)
							
		akTerminalRef.AddTextReplacementValue("CreditsAmount", TotalCredits)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredJAF", NeededCreditsJAF)         
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredCTL", NeededCreditsCTL)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredSTC", NeededCreditsSTC)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredFDL", NeededCreditsFDL)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredCPU", NeededCreditsCPU)
		
EndFunction

Function UpdateTextReplacementCombatBayParts(ObjectReference akTerminalRef)
			          		       						 		
		SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()					

        CheckIfShipHasMalfunction()
	 			 
		Int TotalCountTargetingLenses = PlayerRef.GetItemCount(SpaceshipSparePartTargetingLenses) + akShip.GetItemCount(SpaceshipSparePartTargetingLenses)		  
		Int TotalCountFirepower = PlayerRef.GetItemCount(SpaceshipSparePartFirepower) + akShip.GetItemCount(SpaceshipSparePartFirepower)
		Int TotalCountAmmoFeeders = PlayerRef.GetItemCount(SpaceshipSparePartAmmoFeeders) + akShip.GetItemCount(SpaceshipSparePartAmmoFeeders)
		Int TotalCountTargetingInterface = PlayerRef.GetItemCount(SpaceshipSparePartTargetingInterface) + akShip.GetItemCount(SpaceshipSparePartTargetingInterface)
		Int TotalCountTargetingCPU = PlayerRef.GetItemCount(SpaceshipSparePartTargetingAPCost) + akShip.GetItemCount(SpaceshipSparePartTargetingAPCost)		
        Int TotalMaintenanceKits = PlayerRef.GetItemCount(SpaceshipMaintenanceKit) + akShip.GetItemCount(SpaceshipMaintenanceKit)
			
        MaintenanceProc = 1
        NeededPartsJAF = 1
        NeededPartsCTL = 1
        NeededPartsSTC = 1
        NeededPartsFDL = 1
        NeededPartsCPU = 1
		
		akTerminalRef.AddTextReplacementValue("PartsCountTargetingLenses", TotalCountTargetingLenses)		 		  	 		 
		akTerminalRef.AddTextReplacementValue("PartsCountFirepower", TotalCountFirepower)		 		 	 		 
		akTerminalRef.AddTextReplacementValue("PartsCountAmmoFeeders", TotalCountAmmoFeeders)
		akTerminalRef.AddTextReplacementValue("PartsCountTargetingInterface", TotalCountTargetingInterface)
		akTerminalRef.AddTextReplacementValue("PartsCountCPU", TotalCountTargetingCPU)	 		 
		
		Int ClassPartCostCalculate = SeMaitenanceClassMalfPartCost()				
				
		akTerminalRef.AddTextReplacementValue("MalfCount", TotalEnabledMalfunctions)	     		 		         		
		akTerminalRef.AddTextReplacementValue("MalfCombatCount", TotalCombatMalfunctions)
		akTerminalRef.AddTextReplacementValue("MaintenanceKit", TotalMaintenanceKits)		
		akTerminalRef.AddTextReplacementValue("MaintenanceKitProc", MaintenanceProc)		
		akTerminalRef.AddTextReplacementValue("JAFShipParts", NeededPartsJAF * ClassPartCostCalculate) 
		akTerminalRef.AddTextReplacementValue("CTLShipParts", NeededPartsCTL * ClassPartCostCalculate)		
		akTerminalRef.AddTextReplacementValue("STCShipParts", NeededPartsSTC * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("FDLShipParts", NeededPartsFDL * ClassPartCostCalculate)		
		akTerminalRef.AddTextReplacementValue("CPUShipParts", NeededPartsCPU * ClassPartCostCalculate)	
		
EndFunction

Function UpdateTextReplacementInterstellarBay(ObjectReference akTerminalRef)
			          		       						 		
        Int TotalCredits = PlayerRef.GetItemCount(Credits)							

        CheckIfShipHasMalfunction()

		akTerminalRef.AddTextReplacementValue("MalfCount", TotalEnabledMalfunctions)	     		 		         		
		akTerminalRef.AddTextReplacementValue("MalfInterstellarCount", TotalInterstellarMalfunctions)
							
		akTerminalRef.AddTextReplacementValue("CreditsAmount", TotalCredits)        
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredBGC", NeededCreditsBGC)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredGL", NeededCreditsGL)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredUGG", NeededCreditsUGG)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredGDO", NeededCreditsGDO)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredASP", NeededCreditsASP)
		
EndFunction

Function UpdateTextReplacementInterstellarBayParts(ObjectReference akTerminalRef)
			          		       						 		
		SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()					

        CheckIfShipHasMalfunction()
	 				 
		Int TotalCountGraviticControler = PlayerRef.GetItemCount(SpaceshipSparePartGraviticControler) + akShip.GetItemCount(SpaceshipSparePartGraviticControler) 
		Int TotalCountGraviticRestrainer = PlayerRef.GetItemCount(SpaceshipSparePartGraviticRestrainer) + akShip.GetItemCount(SpaceshipSparePartGraviticRestrainer)
		Int TotalCountGraviticGenerator = PlayerRef.GetItemCount(SpaceshipSparePartGraviticGenerator) + akShip.GetItemCount(SpaceshipSparePartGraviticGenerator)
		Int TotalCountGravDrive = PlayerRef.GetItemCount(SpaceshipSparePartGravDrive) + akShip.GetItemCount(SpaceshipSparePartGravDrive)
		Int TotalCountGraviticSpooling = PlayerRef.GetItemCount(SpaceshipSparePartAbnormalSpoolingPhase) + akShip.GetItemCount(SpaceshipSparePartAbnormalSpoolingPhase)
        Int TotalMaintenanceKits = PlayerRef.GetItemCount(SpaceshipMaintenanceKit) + akShip.GetItemCount(SpaceshipMaintenanceKit)
			
        MaintenanceProc = 1
        NeededPartsBGC = 1
        NeededPartsGL = 1
        NeededPartsUGG = 1
        NeededPartsGDO = 1
        NeededPartsASP = 1
		
		akTerminalRef.AddTextReplacementValue("PartsCountGraviticControler", TotalCountGraviticControler)		 		 	 		 
		akTerminalRef.AddTextReplacementValue("PartsCountGraviticRestrainer", TotalCountGraviticRestrainer)
		akTerminalRef.AddTextReplacementValue("PartsCountGraviticGenerator", TotalCountGraviticGenerator)
		akTerminalRef.AddTextReplacementValue("PartsCountGravDrive", TotalCountGravDrive)
		akTerminalRef.AddTextReplacementValue("PartsCountASP", TotalCountGraviticSpooling)
		
		Int ClassPartCostCalculate = SeMaitenanceClassMalfPartCost()				
				
		akTerminalRef.AddTextReplacementValue("MalfCount", TotalEnabledMalfunctions)	     		 		         		
		akTerminalRef.AddTextReplacementValue("MalfInterstellarCount", TotalInterstellarMalfunctions)
		akTerminalRef.AddTextReplacementValue("MaintenanceKit", TotalMaintenanceKits)		
		akTerminalRef.AddTextReplacementValue("MaintenanceKitProc", MaintenanceProc)		       
		akTerminalRef.AddTextReplacementValue("BGCShipParts", NeededPartsBGC * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("GLShipParts", NeededPartsGL * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("UGGShipParts", NeededPartsUGG * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("GDOShipParts", NeededPartsGDO * ClassPartCostCalculate)
		akTerminalRef.AddTextReplacementValue("ASPShipParts", NeededPartsASP * ClassPartCostCalculate)
		
EndFunction

Function UpdateTextReplacementMaintenanceParts(ObjectReference akTerminalRef)
			          		       						 		
		SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()					
		SpaceShipReference CurrentShipName = PlayerRef.GetCurrentShipRef()
		SpaceShipReference CurrentHomeShip = SQ_PlayerShip.DebugGetHomeShip()	 				 
        		
        MaintenanceProc = 1
															
		ActorValue CheckMaintenanceClass = (SpaceshipSystemsQuest as SISA_SpaceshipFuel).SetProperMaitenanceClass()
		
		Float MaintenanceValues = PlayerRef.GetValue(CheckMaintenanceClass)
        Float MaintenanceValuesMax = PlayerRef.GetBaseValue(CheckMaintenanceClass)
		Float CalculateMaintenance = MaintenanceValues / MaintenanceValuesMax * 100
		Int TotalMaintenanceKits = akShip.GetItemCount(SpaceshipMaintenanceKit)	 				
		
		MyShip.ForceRefTo(CurrentShipName)
		PlayerHomeShip.ForceRefTo(CurrentHomeShip)		
		
		Float BaseHullHealth = akShip.GetBaseValue(AV_HullHealth)
		Float BaseEnginesHealth = akShip.GetBaseValue(AV_EnginesHealth)
		Float BaseShieldsHealth = akShip.GetBaseValue(AV_ShieldsHealth)	
		Float BaseGravDriveHealth = akShip.GetBaseValue(AV_GravDriveHealth)			
		Float BaseWeapon1Health = akShip.GetBaseValue(AV_Weapon1Health)		
		Float BaseWeapon2Health = akShip.GetBaseValue(AV_Weapon2Health)		
		Float BaseWeapon3Health = akShip.GetBaseValue(AV_Weapon3Health)		

		Float CurrentHullHealth = akShip.GetValue(AV_HullHealth)
		Float CurrentEnginesHealth = akShip.GetValue(AV_EnginesHealth)
		Float CurrentShieldsHealth = akShip.GetValue(AV_ShieldsHealth)	
		Float CurrentGravDriveHealth = akShip.GetValue(AV_GravDriveHealth)			
		Float CurrentReactorHealth = akShip.GetValue(AV_ReactorHealth)
		Float CurrentWeapon1Health = akShip.GetValue(AV_Weapon1Health)		
		Float CurrentWeapon2Health = akShip.GetValue(AV_Weapon2Health)		
		Float CurrentWeapon3Health = akShip.GetValue(AV_Weapon3Health)

		Weapon Weapon1 = akShip.GetWeaponGroupBaseObject(AV_Weapon1Health)
		Weapon Weapon2 = akShip.GetWeaponGroupBaseObject(AV_Weapon2Health)
		Weapon Weapon3 = akShip.GetWeaponGroupBaseObject(AV_Weapon3Health)		
				
		akTerminalRef.AddTextReplacementData("WeapType1", Weapon1)
		akTerminalRef.AddTextReplacementData("WeapType2", Weapon2)
		akTerminalRef.AddTextReplacementData("WeapType3", Weapon3)
		
		akTerminalRef.AddTextReplacementValue("BaseHullHealth", BaseHullHealth)
		akTerminalRef.AddTextReplacementValue("BaseEnginesHealth", BaseEnginesHealth)
		akTerminalRef.AddTextReplacementValue("BaseShieldsHealth", BaseShieldsHealth)
		akTerminalRef.AddTextReplacementValue("BaseGravDriveHealth", BaseGravDriveHealth)
		akTerminalRef.AddTextReplacementValue("BaseWeapon1Health", BaseWeapon1Health)
		akTerminalRef.AddTextReplacementValue("BaseWeapon2Health", BaseWeapon2Health)
		akTerminalRef.AddTextReplacementValue("BaseWeapon3Health", BaseWeapon3Health)
		akTerminalRef.AddTextReplacementValue("CurrentHullHealth", CurrentHullHealth)
		akTerminalRef.AddTextReplacementValue("CurrentEnginesHealth", CurrentEnginesHealth)
		akTerminalRef.AddTextReplacementValue("CurrentShieldsHealth", CurrentShieldsHealth)
		akTerminalRef.AddTextReplacementValue("CurrentGravDriveHealth", CurrentGravDriveHealth)
		akTerminalRef.AddTextReplacementValue("CurrentReactorHealth", CurrentReactorHealth)
		akTerminalRef.AddTextReplacementValue("CurrentWeapon1Health", math.round(CurrentWeapon1Health))
		akTerminalRef.AddTextReplacementValue("CurrentWeapon2Health", math.round(CurrentWeapon2Health))
		akTerminalRef.AddTextReplacementValue("CurrentWeapon3Health", math.round(CurrentWeapon3Health))
		akTerminalRef.AddTextReplacementValue("MaintenanceLevel", CalculateMaintenance)
		akTerminalRef.AddTextReplacementValue("MaintenanceKit", TotalMaintenanceKits)		
		akTerminalRef.AddTextReplacementValue("MaintenanceKitProc", MaintenanceProc)		       

EndFunction

Function UpdateTextReplacementResolveAll(ObjectReference akTerminalRef)
			          		       						 		
        Int TotalCredits = PlayerRef.GetItemCount(Credits)							
							
		akTerminalRef.AddTextReplacementValue("CreditsAmount", TotalCredits)
		akTerminalRef.AddTextReplacementValue("CreditsAmountRequiredALL", AllMalfSumm)
		
EndFunction

Function UpdateTextReplacementErrorCheck(ObjectReference akTerminalRef)
				
		akTerminalRef.AddTextReplacementValue("MalfCount", TotalEnabledMalfunctions)	     		 		         		
		akTerminalRef.AddTextReplacementValue("MalfEngineCount", TotalEngineMalfunctions)
		akTerminalRef.AddTextReplacementValue("MalfEnergyCount", TotalEnergyMalfunctions)
		akTerminalRef.AddTextReplacementValue("MalfInterstellarCount", TotalInterstellarMalfunctions)
		akTerminalRef.AddTextReplacementValue("MalfCombatCount", TotalCombatMalfunctions)
		akTerminalRef.AddTextReplacementValue("MalfMaintenanceCount", TotalMaintenanceMalfunctions)
				
EndFunction

Function UpdateTextReplacementAllTech(ObjectReference akTerminalRef)

        CheckIfShipHasMalfunction()
			          		       							 		
        Int TotalCredits = PlayerRef.GetItemCount(Credits)
								
		akTerminalRef.AddTextReplacementValue("MalfCount", TotalEnabledMalfunctions)	     		 		         		
		akTerminalRef.AddTextReplacementValue("MalfEngineCount", TotalEngineMalfunctions)
		akTerminalRef.AddTextReplacementValue("MalfEnergyCount", TotalEnergyMalfunctions)
		akTerminalRef.AddTextReplacementValue("MalfInterstellarCount", TotalInterstellarMalfunctions)
		akTerminalRef.AddTextReplacementValue("MalfCombatCount", TotalCombatMalfunctions)
		akTerminalRef.AddTextReplacementValue("MalfMaintenanceCount", TotalMaintenanceMalfunctions)
				
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

Function UpdateTextReplacement(ObjectReference akTerminalRef)
			          		       		
		SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()					

        CheckIfShipHasMalfunction()
	 		
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
				
EndFunction

Function UpdateTextReplacementInfoOnly(ObjectReference akTerminalRef)
			          		       		
		SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()					
		SpaceShipReference CurrentShipName = PlayerRef.GetCurrentShipRef()
		SpaceShipReference CurrentHomeShip = SQ_PlayerShip.DebugGetHomeShip()
		
		ActorValue CheckMaintenanceClass = (SpaceshipSystemsQuest as SISA_SpaceshipFuel).SetProperMaitenanceClass()
		
		Float MaintenanceValues = PlayerRef.GetValue(CheckMaintenanceClass)
        Float MaintenanceValuesMax = PlayerRef.GetBaseValue(CheckMaintenanceClass)
		Float CalculateMaintenance = MaintenanceValues / MaintenanceValuesMax * 100
	 				
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
		akTerminalRef.AddTextReplacementValue("CurrentWeapon1Health", math.round(CurrentWeapon1Health))
		akTerminalRef.AddTextReplacementValue("CurrentWeapon2Health", math.round(CurrentWeapon2Health))
		akTerminalRef.AddTextReplacementValue("CurrentWeapon3Health", math.round(CurrentWeapon3Health))
		akTerminalRef.AddTextReplacementValue("CurrentFuelCapacity", CurrentFuelCapacity)
		akTerminalRef.AddTextReplacementValue("MaintenanceLevel", CalculateMaintenance)

EndFunction