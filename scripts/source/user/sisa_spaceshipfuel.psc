ScriptName SISA_SpaceshipFuel extends Quest

Group SISAQuests
    Quest Property DialogueShipServices Auto Const
    Quest Property DialogueRedMileShip Auto Const
    Quest Property FameAndRepQuest Auto Const
    Quest Property ItemInjector Auto Const
    Quest Property EconomyQuest Auto Const
    Quest Property SpaceshipSystemsStoreTextQuest Auto Const
EndGroup

Group SISAActors
    Actor Property PlayerRef Auto Const
EndGroup

Group SISAActorValues
    ActorValue Property SpaceshipMass Auto Const
    ActorValue Property SpaceshipEngineThrust Auto Const
    ActorValue Property SpaceshipBoostSpeed Auto Const
    ActorValue Property SpaceshipBoostActive Auto Const
    ActorValue Property SpaceshipFuelTank Auto Const
    ActorValue Property SpaceshipGravDriveInitiated Auto Const
    ActorValue Property SpaceshipGravDriveHealth Auto Const
    ActorValue Property SpaceshipGravThrust Auto Const
    ActorValue Property SpaceshipWeaponHealth Auto Const
    ActorValue Property SpaceshipWeaponHealth02 Auto Const
    ActorValue Property SpaceshipWeaponHealth03 Auto Const
    ActorValue Property SpaceshipShieldHealth Auto Const
    ActorValue Property SpaceshipSystemEngineHealth Auto Const
    ActorValue Property SpaceshipSystemGravdriveHealth Auto Const
    ActorValue Property SpaceshipHealth Auto Const
    ActorValue Property SpaceshipEnginePower Auto Const
    ActorValue Property SpaceshipReactorClassA Auto Const
    ActorValue Property SpaceshipReactorClassB Auto Const
    ActorValue Property SpaceshipReactorClassC Auto Const
    ActorValue Property SpaceshipReactorClassM Auto Const
EndGroup

Group SISAConditionForms
    Conditionform Property ConditionFormMaintenanceAmount01 Auto Const Mandatory
    Conditionform Property ConditionFormMaintenanceAmount02 Auto Const Mandatory
    Conditionform Property ConditionFormMaintenanceAmount03 Auto Const Mandatory
    Conditionform Property ConditionFormMaintenanceAmount04 Auto Const Mandatory
    Conditionform Property ConditionFormFuelDiscount01 Auto Const Mandatory
    Conditionform Property ConditionFormFuelDiscount02 Auto Const Mandatory
    Conditionform Property ConditionFormFuelDiscount03 Auto Const Mandatory
    Conditionform Property ConditionFormFuelDiscount04 Auto Const Mandatory
    Conditionform Property ConditionFormAstroDynamics01 Auto Const Mandatory
    Conditionform Property ConditionFormAstroDynamics02 Auto Const Mandatory
    Conditionform Property ConditionFormAstroDynamics03 Auto Const Mandatory
    Conditionform Property ConditionFormAstroDynamics04 Auto Const Mandatory
EndGroup

Group SISAActivators
    Activator Property SpaceshipEmergencyBeaconActivator Auto Const
EndGroup

Group SISAAmmo
    Ammo Property AMauler Auto Const
    Ammo Property AAtatl Auto Const
    Ammo Property ADragon Auto Const
EndGroup

Group SISAPerks
    Perk Property SpaceshipEmergencyRepairBotsPerk Auto Const
    Perk Property SpaceshipFuelDiscountPerk Auto Const
    Perk Property SpaceshipCrewPiloting Auto Const
    Perk Property SpaceshipCrewAstroDynamics Auto Const
    Perk Property SpaceshipStarviewOpenizer Auto Const
    Perk Property SpaceshipCrewSpaceshipEngineering Auto Const
    Perk Property SpaceshipMalf_DebuffAutoRepair Auto Const
    Perk Property SpaceshipMalf_DebuffAutoRepairRate Auto Const
    Perk Property SpaceshipMalf_DebuffCargoCapacity Auto Const
    Perk Property SpaceshipMalf_DebuffTopSpeed Auto Const
    Perk Property SpaceshipMalf_DebuffGravDriveFuel Auto Const
    Perk Property SpaceshipMalf_DebuffGravDriveRange Auto Const
    Perk Property SpaceshipMalf_DebuffEngineBoost Auto Const
    Perk Property SpaceshipMalf_DebuffLongerTargeting Auto Const
    Perk Property SpaceshipMalf_DebuffManeuverability Auto Const
    Perk Property SpaceshipMalf_DebuffShieldMaxHealth Auto Const
    Perk Property SpaceshipMalf_DebuffSystemMitigation Auto Const
    Perk Property SpaceshipMalf_DebuffWeaponRechargeRate Auto Const
    Perk Property SpaceshipMalf_DebuffLowWeaponDamage Auto Const
    Perk Property SpaceshipMalf_DebuffTargetingAPCost Auto Const
    Perk Property SpaceshipBoostBuff01 Auto Const
    Perk Property SpaceshipBoostBuff02 Auto Const
    Perk Property SpaceshipBoostBuff03 Auto Const
    Perk Property SpaceshipBoostBuff04 Auto Const
    Perk Property SpaceshipOnBoostPerk Auto Const
    Perk Property SpaceshipMaintenanceStationPerk Auto Const
EndGroup

Group SISAArmors
    Armor Property BlockCalculation Auto Const
    Armor Property GravDrivePowerLevel Auto Const
EndGroup

Group SISAPotions
    Potion Property SpaceshipAnalizer Auto Const
    Potion Property SpaceshipEmergencyBeaconPotion Auto Const
    Potion Property SpaceshipEmergencyCallPotion Auto Const
    Potion Property SpaceshipTeleporter Auto Const
    Potion Property SpaceshipShipParts Auto Const
EndGroup

Group SISAExplosions
    Explosion Property ImpulseExplosion Auto Const
EndGroup

Group SISAFormLists
    FormList Property SpaceshipLandingMarkers Auto
    FormList Property LandingLocationsFT Auto Const
    FormList Property StarfarerLocations Auto Const
EndGroup

Group SISASpells
    Spell Property SPL_HeatleechSpawn Auto
    Spell Property SPL_GravDriveCooldown Auto
    Spell Property SpaceshipMaintenanceRepairSpell Auto Const
    Spell Property SpaceshipMaintenanceRepairSpellUI Auto Const
    Spell Property SPL_FarTravelDisabler Auto Const
EndGroup

Group SISAMessages
    Message Property MSG_SpaceshipOutOfFuel Auto Const
    Message Property MSG_StarviewMain Auto Const
    Message Property MSG_StarviewAdditional Auto Const
    Message Property MSG_StarviewFuelManagement Auto Const
    Message Property MSG_StarviewMalfunctionList Auto Const
    Message Property MSG_StarviewMalfunctionNotEnoughParts Auto Const
    Message Property MSG_StarviewMalfunctionNotEnoughToxin Auto Const
    Message Property MSG_StarviewLandingFees Auto Const
    Message Property MSG_StarviewLandingFeesDebt Auto Const
    Message Property MSG_StarviewEmergencyResponder Auto Const
    Message Property MSG_StarviewEmergencyResponderUseBeacon Auto Const
    Message Property MSG_StarviewEmergencyResponderHelpIsOnTheWay Auto Const
    Message Property MSG_StarviewEmergencyResponderPayment Auto Const
    Message Property MSG_StarviewEmergencyResponderNotEnoughCredits Auto Const
    Message Property MSG_StarviewEmergencyResponderDeptCover Auto Const
    Message Property MSG_SpaceshipSystemsTurnedOff Auto Const
    Message Property MSG_SpaceshipAnalizerCheckerInfo Auto Const
    Message Property MSG_SpaceshipFuelInfo Auto Const
    Message Property MSG_SpaceshipFullFuelTanks Auto Const
    Message Property MSG_SpaceshipNoFuelTanks Auto Const
    Message Property MSG_SpaceshipCantGravJump Auto Const
    Message Property MSG_SpaceshipInformation Auto Const
    Message Property MSG_SpaceshipInformationCapacity Auto Const
    Message Property MSG_SpaceshipInformationSubSystems Auto Const
    Message Property MSG_SpaceshipInformationTech Auto Const
    Message Property MSG_SpaceshipSystemsCheck Auto Const
    Message Property MSG_SpaceshipSystemsAreReady Auto Const
    Message Property MSG_SpaceshipSystemsCheckFailed Auto Const
    Message Property MSG_SpaceshipSystemsPilotSeat Auto Const
    Message Property MSG_Tutorial_Main Auto Const
    Message Property MSG_Tutorial_EmergencyBeacon Auto Const
    Message Property MSG_Tutorial_Refueling Auto Const
    Message Property MSG_Tutorial_RefuelingHelper Auto Const
    Message Property MSG_Tutorial_RefuelingApply Auto Const
    Message Property MSG_Tutorial_RefuelingApplyHelper Auto Const
    Message Property MSG_Tutorial_RescueCall Auto Const
    Message Property MSG_Tutorial_RescueCall02 Auto Const
    Message Property MSG_Tutorial_RefuelingDone Auto Const
    Message Property MSG_Tutorial_RefuelingDoneHelper Auto Const
    Message Property MSG_Tutorial_BeaconPrepareHelper Auto Const
    Message Property MSG_Tutorial_AdditionalInfo Auto Const
    Message Property MSG_EmergencyGroupIsOnTheirWay Auto Const
    Message Property MSG_SpaceshipCallAbort Auto Const
    Message Property MSG_SpaceshipCallAbort02 Auto Const
    Message Property MSG_SpaceshipCallAbort03 Auto Const
    Message Property MSG_SpaceshipCallAbort04 Auto Const
    Message Property MSG_SpaceshipChargeExceeded Auto Const
    Message Property MSG_SpaceshipGravDriveOff Auto Const
    Message Property MSG_SpaceshipInRefuelProcess Auto Const
    Message Property MSG_SpaceshipNoPowerInGravDrive Auto Const
    Message Property MSG_SpaceshipMustBeInPilotSeat Auto Const
    Message Property MSG_SpaceshipNotEnoughFuel Auto Const
    Message Property MSG_SpaceshipGravDriveEnginesOff Auto Const
    Message Property MSG_SpaceshipCalculateRout Auto Const
    Message Property MSG_SpaceshipCalculateRoutCancelled Auto Const
    Message Property MSG_SpaceshipDistanceToSystem Auto Const
    Message Property MSG_BotsAlreadyInUse Auto Const
    Message Property MSG_MaintenanceKitAlreadyInUse Auto Const
    Message Property MSG_NoRepairBotsAvailable Auto Const
    Message Property MSG_NoMaintenanceKitsAvailable Auto Const
    Message Property MSG_TooLateToMaintain Auto Const
    Message Property MSG_MaintainLimit Auto Const
    Message Property MSG_MaintenanceRules Auto Const
    Message Property MSG_SpaceshipTeleporter Auto Const
    Message Property MSG_GravJumpCostOnPowerChange Auto Const
    Message Property MSG_GravDriveOfflineMalf Auto Const
    Message Property MSG_LandingGearMalf Auto Const
    Message Property MSG_DockerMalf Auto Const
EndGroup

Group SISAGlobalVariables
    GlobalVariable Property GV_FuelConsumeDMGOnPower Auto Const
    GlobalVariable Property GV_FuelConsumeTimeOnMove Auto Const
    GlobalVariable Property GV_RescuePayment Auto Const
    GlobalVariable Property GV_RescueTeamTime Auto Const
    GlobalVariable Property GV_PrepareFuelStandBy Auto Const
    GlobalVariable Property GV_SpawnDistanceOffset Auto Const mandatory
    GlobalVariable Property GV_BeaconTrigger Auto Const
    GlobalVariable Property GV_SpaceshipSystemsToggle Auto Const
    GlobalVariable Property GV_SpaceshipSystemsTutorial01 Auto Const
    GlobalVariable Property GV_SpaceshipTutorial02 Auto Const
    GlobalVariable Property GV_SpaceshipTutorial03 Auto Const
    GlobalVariable Property GV_AutoInjector Auto Const
    GlobalVariable Property GV_AutoRepairBots Auto Const
    GlobalVariable Property GV_SpaceshipFuelCheckerType Auto Const
    GlobalVariable Property GV_SpaceshipFuelConsumptionType Auto Const
    GlobalVariable Property GV_SpaceshipAmmoAntiSpawner Auto Const
    GlobalVariable Property GV_ShipServiceFuelCost Auto Const
    GlobalVariable Property GV_ShipServiceRepairCost Auto Const
    GlobalVariable Property GV_SpaceshipRefuelingType Auto Const
    GlobalVariable Property GV_SpaceshipMaintenanceDMG Auto Const
    GlobalVariable Property GV_SpaceshipMaintenanceDMGOnGravJump Auto Const
    GlobalVariable Property GV_SpaceshipMaintenanceAtWork Auto Const
    GlobalVariable Property GV_SpaceshipSystemDamaged Auto Const
    GlobalVariable Property GV_SpaceshipRepairHullCostPerUnit Auto Const
    GlobalVariable Property GV_SpaceshipRepairSystemCostPerUnit Auto Const
    GlobalVariable Property GV_SpaceshipRepairMaintenanceCostPerUnit Auto Const
    GlobalVariable Property GV_SpaceshipFuelCalculationMode Auto Const
    GlobalVariable Property GV_SpaceshipFuelCalculationManual Auto Const
    GlobalVariable Property GV_SpaceshipFuelCalculationManualOnBoost Auto Const
    GlobalVariable Property GV_SpaceshipFuelCalculationManualOnLanding Auto Const
    GlobalVariable Property GV_SpaceshipFuelCalculationManualOnTakeoff Auto Const
    GlobalVariable Property GV_SpaceshipChargeCalculationManual Auto Const
    GlobalVariable Property GV_SpaceshipGravityToggle Auto Const
    GlobalVariable Property GV_SpaceshipDisableCrewBuffs Auto Const
    GlobalVariable Property GV_SpaceshipNeedsRefueling Auto Const
    GlobalVariable Property GV_SpaceshipNeedsMaintenanceToggle Auto Const
    GlobalVariable Property GV_SpaceshipDramaticGravJumpToggle Auto Const
    GlobalVariable Property GV_SpaceshipSystemCheckMessages Auto Const
    GlobalVariable Property GV_SpaceshipFuelPriceMult Auto Const
    GlobalVariable Property GV_SpaceshipAutoDeliverer Auto Const
    GlobalVariable Property GV_SpaceshipArsenal Auto Const
    GlobalVariable Property GV_SpaceshipVanguardSim Auto Const
    GlobalVariable Property GV_SpaceshipVanillaFastTravelRules Auto Const
    GlobalVariable Property GV_SpaceshipSettlementFastTravel Auto Const
    GlobalVariable Property GV_SpaceshipGravDriveAutoPowerAlloc Auto Const
    GlobalVariable Property GV_SpaceshipStarfarerMode Auto Const
    GlobalVariable Property GV_SpaceshipCassiopeia Auto Const
    GlobalVariable Property GV_SpaceshipAutoRefuelBlock Auto Const
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
    GlobalVariable Property GV_SpaceshipDebuffRepairCombatBot Auto Const
    GlobalVariable Property GV_SpaceshipDebuffRadiationLeak Auto Const
    GlobalVariable Property GV_SpaceshipMaintBeginSubSystemDMGThreshold Auto Const
    GlobalVariable Property GV_SpaceshipMaintBeginHullDMGThreshold Auto Const
    GlobalVariable Property GV_SpaceshipMaintBeginBoostDMGThreshold Auto Const
    GlobalVariable Property GV_SpaceshipMaintBeginGravJumpDMGThreshold Auto Const
    GlobalVariable Property GV_SpaceshipMaintBeginFuelUsageDMGThreshold Auto Const
    GlobalVariable Property GV_SpaceshipMaintBeginRefuelDMGThreshold Auto Const
    GlobalVariable Property GV_SpaceshipMaintBeginRandomDMGThreshold Auto Const
    GlobalVariable Property GV_SpaceshipMaintMalfOnDestroyChance Auto Const
    GlobalVariable Property GV_SpaceshipMaintMalfOnHullHitChance Auto Const
    GlobalVariable Property GV_SpaceshipMaintMalfOnBoostChance Auto Const
    GlobalVariable Property GV_SpaceshipMaintMalfOnFuelUsageChance Auto Const
    GlobalVariable Property GV_SpaceshipMaintMalfOnGravJumpChance Auto Const
    GlobalVariable Property GV_SpaceshipMaintMalfOnRandomChance Auto Const
    GlobalVariable Property GV_SpaceshipMaintMalfOnRefuelChance Auto Const
    GlobalVariable Property GV_SpaceshipMaintMalfOnHeatleechOnLandChance Auto Const
    GlobalVariable Property GV_SpaceshipMaintMalfGained Auto Const
    GlobalVariable Property GV_SpaceshipMaintMalfMeter Auto Const
    GlobalVariable Property GV_SpaceshipMaintStatusMenuToggle Auto Const
    GlobalVariable Property GV_SpaceshipOnBoostTime Auto Const
    GlobalVariable Property GV_SpaceshipGravJumpWormhole Auto Const
    GlobalVariable Property GV_SpaceshipTakeOffRestriction Auto Const
    GlobalVariable Property GV_SpaceshipCruiseFarTravelToggle Auto Const
    GlobalVariable Property FameAndReputationToggle Auto Const
    GlobalVariable Property GV_StarjackerQuest Auto Const
    GlobalVariable Property GV_StoreFuelConsumage Auto Const
    GlobalVariable Property GV_StoreMaintenanceConsumage Auto Const
EndGroup

Group SISAMiscObjects
    MiscObject Property SpaceshipFuel Auto Const
    MiscObject Property Credits Auto Const
    MiscObject Property SpaceshipEmergencyRepairBotsMisc Auto Const 
    MiscObject Property SpaceshipMaintenanceKitMisc Auto Const 
    MiscObject Property GravJumpLimiter Auto Const  
    MiscObject Property DummyFuel Auto Const 
    MiscObject Property DummyMaintenance Auto Const  
EndGroup

Group SISAResources
    Resource Property Resource_Toxin Auto Const
EndGroup

Group SISAReferenceAliases
    ReferenceAlias Property PlayerShip Auto mandatory
    ReferenceAlias Property GeneralMarker Auto Const mandatory
    ReferenceAlias Property HomeShip Auto Const mandatory
    ReferenceAlias Property PlayerShipPilotSeat Auto mandatory
    ReferenceAlias Property SimShip Auto Const mandatory
    ReferenceAlias Property MyShip Auto Const mandatory
    ReferenceAlias Property PlayerHomeShip Auto
EndGroup

Group SISAReferenceAliasesCol
    RefCollectionAlias Property PlayerShips Auto Const mandatory
    RefCollectionAlias Property CurrentCrew Auto Const mandatory
EndGroup

Group SISALeveledItems
    LeveledItem Property SpaceshipResourcePackage Auto Const
    LeveledItem Property SpaceshipNPCRandomAmmo Auto Const
    LeveledItem Property SpaceshipSpareParts Auto Const
EndGroup

Group SISAKeywords
    Keyword Property SpaceshipEnabledLandingLink Auto Const mandatory
    Keyword Property SpaceshipTypeStarborn Auto Const
    Keyword Property SpaceshipLinkedInterior Auto Const
    Keyword Property SpaceshipModuleClassA Auto Const
    Keyword Property SpaceshipModuleClassB Auto Const
    Keyword Property SpaceshipModuleClassC Auto Const
    Keyword Property SpaceshipModuleClassM Auto Const
    Keyword Property NotSealedEnvironment Auto Const    
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
    Keyword Property KWD_SpaceshipDebuffRepairCombatBot Auto Const
    Keyword Property KWD_SpaceshipDebuffRadiationLeak Auto Const
EndGroup

Group SISAObjectReferences
    ObjectReference Property EmergencyResponderREF Auto Const mandatory
    ObjectReference Property MaintenanceStationRef Auto Const mandatory
EndGroup

Group SISAFurniture
    Furniture Property ShipLandingMarker Auto Const mandatory
EndGroup

Group SISALocations
    Location Property CurrentLoc Auto
EndGroup

Group SISALocationAliases
    LocationAlias Property playerShipInteriorLocation Auto Const mandatory
    LocationAlias Property playerShipInteriorLocation02 Auto Const mandatory
    LocationAlias Property Frontier Auto Const mandatory
EndGroup

Group SISAWwise
    wwiseevent Property SoundEventFuelFillEnd Auto Const
    wwiseevent Property SoundEventFuelFillInTheProcess Auto Const
    wwiseevent Property SoundEventFuelFillBeep Auto Const
    wwiseevent Property SoundEventFuelFillStart Auto Const
    wwiseevent Property SoundEventChargeStart Auto Const
    wwiseevent Property SoundEventChargeInTheProcess Auto Const
    wwiseevent Property SoundEventChargeEnd Auto Const
    wwiseevent Property SoundEventChargeBeep Auto Const
    wwiseevent Property SoundEventChargeTakeoutEnd Auto Const
    wwiseevent Property SoundEventClick Auto Const
    wwiseevent Property SoundEventAlert Auto Const
    wwiseevent Property SoundEventGravDrivePrepare Auto Const
    wwiseevent Property SoundEventEngineOff Auto Const
    wwiseevent Property SoundEventEngineOn Auto Const
    wwiseevent Property SoundEventBotsRepairStart Auto Const
    wwiseevent Property SoundEventBotsRepairEnd Auto Const
    wwiseevent Property SoundEventCallChatter Auto Const
    wwiseevent Property SoundEventCallChatterOff Auto Const
    wwiseevent Property SoundEventMaintenanceEmergency Auto Const
    wwiseevent Property SoundEventMaintenanceNormalized Auto Const
    wwiseevent Property SoundEventMaintenanceAtWork Auto Const
    wwiseevent Property SoundEventMaintenanceAtWork02 Auto Const
    wwiseevent Property SoundEventWormhole Auto Const
    wwiseevent Property SoundEventWormhole02 Auto Const
EndGroup

Group SISAVisualFX
    VisualEffect Property GravJumpOutroFX Auto Const Mandatory
    VisualEffect Property SpaceshipGravDriveStartFX Auto Const mandatory
    VisualEffect Property SpaceshipGravDriveStartFX02 Auto Const mandatory
    VisualEffect Property SpaceshipGravDriveStartFX03 Auto Const mandatory
    VisualEffect Property SpaceshipMaintenanceFX Auto Const mandatory
    VisualEffect Property ShipOnFire Auto Const mandatory
EndGroup

Group SISAEffectShaders
    EffectShader Property GravDriveRechargeFX Auto Const Mandatory
    EffectShader Property RepairBotsVisualFX Auto Const Mandatory
EndGroup

Struct FriendShipDatum
  spaceshipbase ShipToSpawn
  { Leveled list we want to spawn }
  GlobalVariable MinFriends
  { Minimum number of enemy ships to spawn }
  GlobalVariable MaxFriends
  { Maximum number of enemy ships to spawn }
EndStruct

SISA_SpaceshipFuel:Friendshipdatum[] Property FriendsShipData Auto mandatory
sq_playershipscript Property SQ_PlayerShip Auto

inputEnableLayer GravJump
inputEnableLayer TakeOff
inputEnableLayer FastTravel
inputEnableLayer FarTravel
inputEnableLayer CruiseFarTravel

Bool SpaceshipPowerValueStored = False
Bool SpaceshipEngineIgnited = False
Bool TutorialIntroduction = False
Bool TutorialEmergencyBeacon = False
Bool TutorialRefueling = False
Bool TutorialRefuelingApply = False
Bool TutorialRefuelingDone = False
Bool TutorialRescueCall = False
Bool TutorialRescueCallOnLand = False
Bool TutorialRescueCallTrigger = False
Bool TutorialAdditionalInfo = False
Bool TutorialFillFuel = False
Bool TutorialFillCharge = False
Bool EmergencyIsOnTheirWay = False
Bool SpaceshipPower = False
Bool EnginePowerRestricted = False
Bool GravJumpInitiated = False
Bool RefuelFuelStarted = False
Bool RefuelChargeStarted = False
Bool CameraShakeOnFuelFill = False
Bool MaintenanceEmergency = False
Bool LandingPad = False
Bool ShipOnTheWay = False

Int HeatleechTrigger = 0
Int TotalEnabledMalfunctions = 0
Int StoreShipCharge
Int ShipPowerEngine
Int ShipGravDrivePowerStore
Int RescueDebt = 0
int Property PlayerLevel_InjectList Auto Const
int Property PlayerLevel = 1 Auto Const
Int Property FriendIndex Auto
Int Property OffsetRandomizer = 30 Auto Const
Int Property OffsetDistanceY = 100 Auto Const
Int Property maxRetries = 4 Auto Const
Int AlertSoundInstance = -1
Int GravDrivePrepareSoundInstance = -1
Int EngineOnSoundInstance = -1
Int BotsStartSoundInstance = -1
Int BotsEndSoundInstance = -1
Int MaintenanceEmergencySoundInstance = -1
Int EstimatedTime = 0

Int Property JunkerShipAcquired = 1900 auto const
Int Property TheStarJackerCompleted = 2000 auto const

Float Property StoreGalaxyMapFuelRout = 0.0 Auto

Float Property DebugShipSpawnOffset = 250.0 Auto Const
Float StoreShipFuel
Float StoreShipFuelAdditional
Float StoreFuelGravDriveConsumptionValues
Float StoreChargeConsumptionValues
Float StoreShipHealthWeapon1
Float StoreShipHealthWeapon2
Float StoreShipHealthWeapon3
Float StoreShipHealthEngine
Float StoreShipHealthShield
Float StoreShipHealthGravDrive

Location playerShipInteriorLoc
Guard GravityGuard ProtectsFunctionLogic
CustomEvent LandingRequested

Import CassiopeiaPapyrusExtender

Event Actor.OnPlayerLoadGame(Actor akSender)
                                 
			   SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
               ActorValue CheckMaintenanceClass = SetProperMaitenanceClass()
               
			   StoreValuesSpaceshipPower()
               GravDriveAbortOnLoad()
			   
			   If GV_SpaceshipCassiopeia.GetValue() == 1
			      CassiopeiaRegistration()
            EndIf 
			   
			   If GV_SpaceshipNeedsMaintenanceToggle.GetValue() == 1     				        
						If PlayerRef.GetValue(CheckMaintenanceClass) > 30.00 
			               ShipOnFire.Stop(akShip)
						   wwiseevent.StopInstance(MaintenanceEmergencySoundInstance)
			               MaintenanceEmergencySoundInstance = -1
						   MaintenanceEmergency = False
                     EndIf
           EndIf

              If akShip.GetValue(SpaceshipHealth) < akShip.GetBaseValue(SpaceshipHealth) || akShip.GetValue(SpaceshipWeaponHealth) < akShip.GetBaseValue(SpaceshipWeaponHealth) || akShip.GetValue(SpaceshipWeaponHealth02) < akShip.GetBaseValue(SpaceshipWeaponHealth02) || akShip.GetValue(SpaceshipWeaponHealth03) < akShip.GetBaseValue(SpaceshipWeaponHealth03) || akShip.GetValue(SpaceshipShieldHealth) < akShip.GetBaseValue(SpaceshipShieldHealth) || akShip.GetValue(SpaceshipSystemEngineHealth) < akShip.GetBaseValue(SpaceshipSystemEngineHealth) || akShip.GetValue(SpaceshipSystemGravdriveHealth) < akShip.GetBaseValue(SpaceshipSystemGravdriveHealth) || PlayerRef.GetValue(CheckMaintenanceClass) < PlayerRef.GetBaseValue(CheckMaintenanceClass)    
                 GV_SpaceshipSystemDamaged.SetValue(1)
          Else
                 GV_SpaceshipSystemDamaged.SetValue(0)	      
	       EndIf
       		   
EndEvent

Function CassiopeiaRegistration()	     
		 RegisterForNativeEvent("SISA_SpaceshipFuel", "OnPlayerPlotRoute")	
EndFunction

Function CassiopeiaUnregistration()	     
		 UnregisterForNativeEvent("SISA_SpaceshipFuel", "OnPlayerPlotRoute")	
EndFunction

Event OnActorValueLessThan(ObjectReference akObjRef, ActorValue akActorValue)
    
	   SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
	   Float TriggerPoint = akShip.GetBaseValue(SpaceshipFuelTank) / 5
	   
	   RegisterForActorValueLessThanEvent(akShip, SpaceshipFuelTank, TriggerPoint)     
	   
	   If (akObjRef as SpaceshipReference) == akShip
          AutoRefuelingFuel()
    EndIf

EndEvent

Event ReferenceAlias.OnLocationChange(ReferenceAlias akSender, Location akOldLoc, Location akNewLoc)
    		
	If akSender == PlayerShip    
	      
		  SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()    		  
	 	  			   				   
		  If akShip.IsInSpace() == True
			 RegisterForRemoteEvent(PlayerShip, "OnShipLanding")
	   EndIf
				   
          If akShip && IsShipInLocationList(akShip, LandingLocationsFT)
				If GV_SpaceshipTakeOffRestriction.GetValue() == 0
				   EnableFastTravel()
             EndIf
     Else
			DisableFastTravel()
	   EndIf	
 
 EndIf

EndEvent

Event Actor.OnLocationChange(Actor akSender, Location akOldLoc, Location akNewLoc)
         	         	     
		 If GV_SpaceshipVanillaFastTravelRules.GetValue() == 0  
	            If akSender == PlayerRef				   		 
                       If PlayerRef && IsPlayerInLocationList(LandingLocationsFT)
								If GV_SpaceshipTakeOffRestriction.GetValue() == 0
								   EnableFastTravel()
                             EndIf
                   Else
						  DisableFastTravel()
				    EndIf
            EndIf
      EndIf

EndEvent

Function OnPlayerPlotRoute(ObjectReference akHomeshipRef, Int aeFailedPlotReason, Int aiJumps, Float afShipGravJumpRange, Float afDistance, Float afCargoWeight, Float afCargoCapacity, Float afFuelConsumption, Float afMaxFuel) Global
	     		        
		 SISA_SpaceshipFuel QuestScript = GetQuestScript()		 
		 StoreGalaxyFuelRout(GetQuestScript(), afFuelConsumption)

EndFunction

Function StoreGalaxyFuelRout(SISA_SpaceshipFuel akQuestScript, Float Amount) Global
		 
		 ActorValue Fuel = akQuestScript.SpaceshipFuelTank
		 SpaceShipReference akShip = akQuestScript.SQ_PlayerShip.PlayerShip.GetShipRef()      
		 Float FuelInTheTank = akShip.GetValue(Fuel) 
		 
		 If FuelInTheTank >= Amount		 
		    akQuestScript.StoreGalaxyMapFuelRout = Amount
            akQuestScript.MSG_SpaceshipDistanceToSystem.Show(Amount, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
      EndIf

EndFunction

SISA_SpaceshipFuel Function GetQuestScript() Global	     
		 SISA_SpaceshipFuel QuestScript = (Game.GetFormFromFile(0xFC0, "Starvival - Immersive Survival Addon.esm") as Quest) as SISA_SpaceshipFuel
	     Return QuestScript
EndFunction

Bool Function IsShipInLocationList(SpaceShipReference ship, FormList locList)
    Int count = locList.GetSize()
    While count > 0
        count -= 1
        Location loc = locList.GetAt(count) as Location
        If loc && ship.IsInLocation(loc)
            Return True
        EndIf
    EndWhile
    Return False
EndFunction

Bool Function IsPlayerInLocationList(FormList locList)
    Int count = locList.GetSize()
    While count > 0
        count -= 1
        Location loc = locList.GetAt(count) as Location
        If loc && PlayerRef.IsInLocation(loc)
            Return True
        EndIf
    EndWhile
    Return False
EndFunction

Event OnMenuOpenCloseEvent(String asMenuName, Bool abOpening)

         SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
         	     	 			 
		 If asMenuName == "GalaxyStarMapMenu"    
			       If abOpening == True														      					   

							  If GV_SpaceshipCassiopeia.GetValue() == 1
				                 CassiopeiaRegistration()				  	
                           EndIf
					       
						   StoreGalaxyMapFuelRout = 0.0						   							   
	  
							  If PlayerRef.GetFurnitureUsing() == PlayerShipPilotSeat.GetRef() && akShip.IsInSpace() == True
								 GravdrivePowerStorage()
								 TravelPosibilityCheck()
				          Else
                                        If akShip && IsShipInLocationList(akShip, LandingLocationsFT)
											  If GV_SpaceshipTakeOffRestriction.GetValue() == 0
												 EnableFastTravel()
                                           EndIf
                                     Else
										   DisableFastTravel()
									 EndIf	   					           
						   EndIf
		        EndIf
	 
	 ElseIf asMenuName == "SpaceshipEditorMenu"
                   If abOpening == True				      					 	 
		              					  
					  Float FuelInTheTank = akShip.GetValue(SpaceshipFuelTank) 
		              Float TotalWeaponHealth1 = akShip.GetValue(SpaceshipWeaponHealth) 
     	              Float TotalWeaponHealth2 = akShip.GetValue(SpaceshipWeaponHealth02) 
		              Float TotalWeaponHealth3 = akShip.GetValue(SpaceshipWeaponHealth03) 
     	              Float TotalEngineHealth = akShip.GetValue(SpaceshipSystemEngineHealth) 
		              Float TotalShieldHealth = akShip.GetValue(SpaceshipShieldHealth) 
     	              Float TotalGravDriveHealth = akShip.GetValue(SpaceshipSystemGravdriveHealth)	
					  
					  StoreShipFuel = FuelInTheTank
					     If StoreShipFuel > 0.0
					        StoreShipFuelAdditional = FuelInTheTank 
					  EndIf
					  StoreShipHealthWeapon1 = TotalWeaponHealth1
                      StoreShipHealthWeapon2 = TotalWeaponHealth2				  
					  StoreShipHealthWeapon3 = TotalWeaponHealth3
					  StoreShipHealthEngine = TotalEngineHealth
					  StoreShipHealthShield = TotalShieldHealth 
					  StoreShipHealthGravDrive = TotalGravDriveHealth
					    
						 If akShip.haskeyword(KWD_SpaceshipDebuffGravDriveDistanceDecrease) == True	 
						    PlayerRef.RemovePerk(SpaceshipMalf_DebuffGravDriveRange)
					  EndIf	 
						 
						 If GV_SpaceshipAmmoAntiSpawner.GetValue() == 0
                            GV_SpaceshipAmmoAntiSpawner.SetValue(1)
					  EndIf

						 If GV_SpaceshipAutoRefuelBlock.GetValue() == 0
                            GV_SpaceshipAutoRefuelBlock.SetValue(1)
					  EndIf

			 Else					     					 	 

						 If akShip.haskeyword(KWD_SpaceshipDebuffGravDriveDistanceDecrease) == True	 
						    PlayerRef.AddPerk(SpaceshipMalf_DebuffGravDriveRange, False)
					  EndIf	

						 If GV_SpaceshipAmmoAntiSpawner.GetValue() == 1
                            GV_SpaceshipAmmoAntiSpawner.SetValue(0)
					  EndIf

						 If GV_SpaceshipAutoRefuelBlock.GetValue() == 1
                            GV_SpaceshipAutoRefuelBlock.SetValue(0)
					  EndIf

			   EndIf           
	 ElseIf asMenuName == "LoadingMenu"
				     String ChooseBink = ChooseWormloopBink()
					 SoundEventWormhole.Play(PlayerRef)
	                 SoundEventWormhole02.Play(PlayerRef)
				     Game.PlayBinkNoWait(ChooseBink, abMuteAudio=False, abMuteMusic=False, aPlayDuringLoadingScreen=False)				 
				     StartTimer(2, 25)
	  EndIf
EndEvent

String Function ChooseWormloopBink()

	   Int RandomChance = Utility.RandomInt(0, 2)
       String Option01 = "StarvivalWormhole.bk2"
       String Option02 = "StarvivalWormhole02.bk2"      
       String Option03 = "StarvivalWormhole03.bk2"
		
		If RandomChance == 0
		   Return Option01
    ElseIf RandomChance == 1
		   Return Option02
    ElseIf RandomChance == 2				 
		   Return Option03			 
     EndIf

EndFunction

Event Actor.OnPlayerModifiedShip(Actor akSender, spaceshipreference akShip)
      	  
	  Float HealthAmount = akShip.GetValue(SpaceshipHealth) 
	  Float HealthAmountBase = akShip.GetBaseValue(SpaceshipHealth) 	  
	  Float FuelTankCapacity = akShip.GetBaseValue(SpaceshipFuelTank) 
	  Float FuelInTheTank = akShip.GetValue(SpaceshipFuelTank) 
      Float RetrieveFuel = StoreShipFuel - FuelTankCapacity

	  Float TotalWeaponHealth1 = akShip.GetValue(SpaceshipWeaponHealth) 
      Float TotalWeaponHealth2 = akShip.GetValue(SpaceshipWeaponHealth02) 
	  Float TotalWeaponHealth3 = akShip.GetValue(SpaceshipWeaponHealth03) 
      Float TotalEngineHealth = akShip.GetValue(SpaceshipSystemEngineHealth) 
	  Float TotalShieldHealth = akShip.GetValue(SpaceshipShieldHealth) 
      Float TotalGravDriveHealth = akShip.GetValue(SpaceshipSystemGravdriveHealth)	  
	  
	  ActorValue CheckMaintenanceClass = SetProperMaitenanceClass()	  
	  
	  If akSender == PlayerRef
	           	 				 
		 akShip.DamageValue(SpaceshipFuelTank, FuelInTheTank)                		   			   
	     akShip.DamageValue(SpaceshipWeaponHealth, TotalWeaponHealth1)
		 akShip.DamageValue(SpaceshipWeaponHealth02, TotalWeaponHealth2) 
		 akShip.DamageValue(SpaceshipWeaponHealth03, TotalWeaponHealth3) 
		 akShip.DamageValue(SpaceshipSystemEngineHealth, TotalEngineHealth)
		 akShip.DamageValue(SpaceshipShieldHealth, TotalShieldHealth) 
		 akShip.DamageValue(SpaceshipSystemGravdriveHealth, TotalGravDriveHealth) 		 

	     Float RestoreFuelIfNegative = - akShip.GetValue(SpaceshipFuelTank)		 
		 If akShip.GetValue(SpaceshipFuelTank) < 0 
            akShip.RestoreValue(SpaceshipFuelTank, RestoreFuelIfNegative)
            akShip.RestoreValue(SpaceshipFuelTank, StoreShipFuelAdditional)
      EndIf
         
		 If StoreShipFuel > FuelTankCapacity		 
		    akShip.Additem(SpaceshipFuel, RetrieveFuel as Int, True)
			akShip.RestoreValue(SpaceshipFuelTank, FuelTankCapacity)		 
	 Else
			akShip.RestoreValue(SpaceshipFuelTank, StoreShipFuel)
      EndIf
		 
		 akShip.RestoreValue(SpaceshipWeaponHealth, StoreShipHealthWeapon1)
		 akShip.RestoreValue(SpaceshipWeaponHealth02, StoreShipHealthWeapon2) 
		 akShip.RestoreValue(SpaceshipWeaponHealth03, StoreShipHealthWeapon3) 
		 akShip.RestoreValue(SpaceshipSystemEngineHealth, StoreShipHealthEngine)
		 akShip.RestoreValue(SpaceshipShieldHealth, StoreShipHealthShield) 
		 akShip.RestoreValue(SpaceshipSystemGravdriveHealth, StoreShipHealthGravDrive)

			   If FuelInTheTank < FuelTankCapacity
				  GV_SpaceshipNeedsRefueling.SetValue(1)
		   ElseIf FuelInTheTank == FuelTankCapacity
				  GV_SpaceshipNeedsRefueling.SetValue(0)
			EndIf
            							   
              If akShip.GetValue(SpaceshipHealth) < akShip.GetBaseValue(SpaceshipHealth) || akShip.GetValue(SpaceshipWeaponHealth) < akShip.GetBaseValue(SpaceshipWeaponHealth) || akShip.GetValue(SpaceshipWeaponHealth02) < akShip.GetBaseValue(SpaceshipWeaponHealth02) || akShip.GetValue(SpaceshipWeaponHealth03) < akShip.GetBaseValue(SpaceshipWeaponHealth03) || akShip.GetValue(SpaceshipShieldHealth) < akShip.GetBaseValue(SpaceshipShieldHealth) || akShip.GetValue(SpaceshipSystemEngineHealth) < akShip.GetBaseValue(SpaceshipSystemEngineHealth) || akShip.GetValue(SpaceshipSystemGravdriveHealth) < akShip.GetBaseValue(SpaceshipSystemGravdriveHealth) || PlayerRef.GetValue(CheckMaintenanceClass) < PlayerRef.GetBaseValue(CheckMaintenanceClass)    
                 GV_SpaceshipSystemDamaged.SetValue(1)
          Else
                 GV_SpaceshipSystemDamaged.SetValue(0)	      
	       EndIf   
           OnHomeshipChangeMalfCheck()
   EndIf
EndEvent

Event Actor.OnHomeShipSet(Actor akSource, spaceshipReference akShip, spaceshipReference akPrevious)
     	   
	 Float FuelTankAmount = akShip.GetBaseValue(SpaceshipFuelTank) 
	 Float FuelInTheTank = akShip.GetValue(SpaceshipFuelTank)   	 		 	 	 
	 
	 ActorValue CheckMaintenanceClass = SetProperMaitenanceClass()	 
	 
	 If akSource == PlayerRef
			   
			   If FuelInTheTank < FuelTankAmount
				  GV_SpaceshipNeedsRefueling.SetValue(1)
		   ElseIf FuelInTheTank == FuelTankAmount
				  GV_SpaceshipNeedsRefueling.SetValue(0)
			EndIf

              If akShip.GetValue(SpaceshipHealth) < akShip.GetBaseValue(SpaceshipHealth) || akShip.GetValue(SpaceshipWeaponHealth) < akShip.GetBaseValue(SpaceshipWeaponHealth) || akShip.GetValue(SpaceshipWeaponHealth02) < akShip.GetBaseValue(SpaceshipWeaponHealth02) || akShip.GetValue(SpaceshipWeaponHealth03) < akShip.GetBaseValue(SpaceshipWeaponHealth03) || akShip.GetValue(SpaceshipShieldHealth) < akShip.GetBaseValue(SpaceshipShieldHealth) || akShip.GetValue(SpaceshipSystemEngineHealth) < akShip.GetBaseValue(SpaceshipSystemEngineHealth) || akShip.GetValue(SpaceshipSystemGravdriveHealth) < akShip.GetBaseValue(SpaceshipSystemGravdriveHealth) || PlayerRef.GetValue(CheckMaintenanceClass) < PlayerRef.GetBaseValue(CheckMaintenanceClass)    
                 GV_SpaceshipSystemDamaged.SetValue(1)
          Else
                 GV_SpaceshipSystemDamaged.SetValue(0)	      
	       EndIf
		   
		   SpaceShipReference CurrentShipName = HomeShip.GetShipRef()
		   MyShip.ForceRefTo(CurrentShipName)     
           MyShip.GetRef()
           OnHomeshipChangeMalfCheck()
  EndIf

EndEvent

Event Actor.OnEnterShipInterior(Actor akSender, ObjectReference akShip)
     
	 SpaceShipReference SimulatorShip = SimShip.GetShipRef() 
	 
	 If akSender == PlayerRef && akShip == PlayerRef.GetCurrentShipRef()
	    OnHomeshipChangeMalfCheck() 
	    Float TriggerPoint = akShip.GetBaseValue(SpaceshipFuelTank) / 5	    
		
		RegisterForActorValueLessThanEvent(akShip, SpaceshipFuelTank, TriggerPoint)
        		
			If SimulatorShip
					If GV_SpaceshipVanguardSim.GetValue() == 0
					   GV_SpaceshipVanguardSim.SetValue(1)
				 EndIf	
		Else
		      CalculateRandomValuesForSpaceships()				 	   
		 EndIf
  EndIf

EndEvent

Event Actor.OnExitShipInterior(Actor akSender, ObjectReference akShip)

     If akSender == PlayerRef && akShip == SQ_PlayerShip.PlayerShip.GetShipRef()
		CancelFuelTimerOnLeavingSpaceship()
        GV_SpaceshipMaintenanceAtWork.SetValue(0)
        SpaceshipEngineIgnited = False
        CheckAndStoreFuelValuesForTech()    				
  EndIf

	 If GV_SpaceshipVanguardSim.GetValue() == 1
		GV_SpaceshipVanguardSim.SetValue(0)
  EndIf

EndEvent

Event ReferenceAlias.OnShipLanding(ReferenceAlias akSender, Bool abComplete)

     spaceshipreference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
     Int GravDrivePower = PlayerRef.GetItemCount(GravDrivePowerLevel)
     Int HeatleechChance = Utility.RandomInt(0, 100) 
	 Int HeatleechOnLandChance = GV_SpaceshipMaintMalfOnHeatleechOnLandChance.GetValue() as int
	 
	 If GV_SpaceshipAmmoAntiSpawner.GetValue() == 1
        GV_SpaceshipAmmoAntiSpawner.SetValue(0)
  EndIf
     	 
	 If akSender == PlayerShip
        
		StartTimer(1, 6)		
		GravDriveAbort()        
        akShip.SetPartPower(3, 0, GravDrivePower)
           
		   If akShip.haskeyword(KWD_SpaceshipDebuffHeatleechAttack) == False             				
		          If HeatleechChance < HeatleechOnLandChance ; 10         
		             HeatleechTrigger += 1  
					   If HeatleechTrigger >= 5
					      GV_SpaceshipDebuffHeatleechAttack.SetValue(1)
		                  akShip.addkeyword(KWD_SpaceshipDebuffHeatleechAttack)
	                      HeatleechTrigger = 0
					EndIf
			   EndIf	
        EndIf
		
	    If abComplete				  
		   CancelFuelTimerOnLeavingSpaceship()
		   FuelConsumptionOnLandTakeOff()
		   UnregisterForRemoteEvent(PlayerShip, "OnShipLanding") 
	 EndIf

  EndIf	

EndEvent

Event ReferenceAlias.OnShipTakeOff(ReferenceAlias akSender, Bool abComplete)

     spaceshipreference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
     
	 Int Engine = akShip.GetPartPower(1, 0)
     Float ConsumeFuelCycle = GV_FuelConsumeTimeOnMove.GetValue()
     
	 RegisterForRemoteEvent(PlayerShip, "OnShipLanding")  
     
	 If akSender == PlayerShip
			     If Engine <= 0
			        akShip.SetPartPower(1, 0, 1)
			        GV_FuelConsumeDMGOnPower.SetValue(1)
		     Else
			        GV_FuelConsumeDMGOnPower.SetValue(Engine)
			  EndIf
	       If abComplete
              MalfDockerTriggerOnTakeoff()
			  FuelConsumptionOnLandTakeOff()	
			  StartTimer(ConsumeFuelCycle, 1)	  

                 If MaintenanceEmergency == True
                    StartTimer(2, 3)
		            wwiseevent.StopInstance(MaintenanceEmergencySoundInstance)
					MaintenanceEmergencySoundInstance = -1
					MaintenanceEmergencySoundInstance = SoundEventMaintenanceEmergency.Play(akShip, None, None)
			  EndIf
		
		EndIf
  EndIf	

EndEvent

Event ReferenceAlias.OnShipGravJump(ReferenceAlias akSender, Location aDestination, Int aState)
		                                
										Perk GravDriveFuelOptimization = Game.GetFormFromFile(0x00034CCA, "SFBGS00D.esm") as Perk 
                                        spaceshipreference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
										
										Int GravDrive = akShip.GetPartPower(3, 0)
                                        Int Engine = akShip.GetPartPower(1, 0)	                                        										
										
										Float PerkCheck = FuelConsumptionCalcOnFlight()
										Float OptimizationCheck = OptimizationCheck(GravDriveFuelOptimization)
										
										Float GravJumpChargeCostAdvanced = StoreGalaxyMapFuelRout / OptimizationCheck
										Float GravJumpChargeCostAdvancedAstro = StoreGalaxyMapFuelRout / 1.25 / OptimizationCheck                                       										
										
										Float GravJumpChargeCostAlt = Math.Round(akShip.GetValue(SpaceshipMass) / akShip.GetValue(SpaceshipGravThrust) / PerkCheck / OptimizationCheck)
										Float GravJumpChargeCostAltAstro = Math.Round(akShip.GetValue(SpaceshipMass) / akShip.GetValue(SpaceshipGravThrust) / 1.25 / PerkCheck / OptimizationCheck)
										
										Float GravJumpChargeCostManual = GV_SpaceshipChargeCalculationManual.GetValue() / PerkCheck / OptimizationCheck
										Float GravJumpChargeCostManualAstro = GV_SpaceshipChargeCalculationManual.GetValue() / 1.25 / PerkCheck / OptimizationCheck

   If akSender == PlayerShip		

		If aState == 0 	   		   			              
		      If GV_SpaceshipGravJumpWormhole.GetValue() == 1
		         RegisterForMenuOpenCloseEvent("LoadingMenu")
		   EndIf
		   TravelPosibilityCheck()		     
			 
			 If GV_SpaceshipCassiopeia.GetValue() == 1
			          If StoreGalaxyMapFuelRout <= 0.0 
		                 StoreGalaxyMapFuelRout = GravJumpChargeCostAlt
		           EndIf 
	      EndIf
			 
			 If GravDrive <= 0
		        MSG_SpaceshipGravDriveEnginesOff.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
				akShip.setvalue(SpaceshipGravDriveInitiated, -1)
	               If GV_SpaceshipDramaticGravJumpToggle.GetValue() == 1
		              SpaceshipGravDriveStartFX.Stop(akShip)
		              SpaceshipGravDriveStartFX02.Stop(akShip)
	            EndIf
		Else		   
				   If GravJumpInitiated == False
				      GravJumpInitiated = True		              
		        EndIf

		           If GV_SpaceshipGravDriveAutoPowerAlloc.GetValue() == 1
				         If GravDrive > 0
				            akShip.setpartpower(3, 0, 1)					        
					  EndIf
				EndIf  
				
				GravDriveCalculatePreparation()   				   
				   
				   If GV_SpaceshipDramaticGravJumpToggle.GetValue() == 1
			          If akShip.IsInSpace() == True
						   If GV_SpaceshipDramaticGravJumpToggle.GetValue() == 1
						      SpaceshipGravDriveStartFX.Play(akShip, -1, None)
						      SpaceshipGravDriveStartFX02.Play(akShip, -1, None)
                        EndIf
				   EndIf
			    EndIf					
				   
				   If akShip.IsInSpace() == True
				      GravDrivePrepareSoundInstance = SoundEventGravDrivePrepare.Play(PlayerRef, None, None)
		        EndIf				
													      					   
				   If GV_SpaceshipFuelCalculationMode.GetValue() == 0								      					   
                         If GV_SpaceshipCassiopeia.GetValue() == 1 
					        GravJumpCostsPreliminaryCalculation(GravJumpChargeCostAdvancedAstro, GravJumpChargeCostAdvanced)						   							   							   
			         Else
					        GravJumpCostsPreliminaryCalculation(GravJumpChargeCostAltAstro, GravJumpChargeCostAlt)
			          EndIf
			   ElseIf GV_SpaceshipFuelCalculationMode.GetValue() == 3
                      GravJumpCostsPreliminaryCalculation(GravJumpChargeCostManualAstro, GravJumpChargeCostManual)								
			    EndIf							   							   													 
          
		  EndIf
	 EndIf	

		If aState == 1 					   
		       
			   wwiseevent.StopInstance(GravDrivePrepareSoundInstance)
               GravDrivePrepareSoundInstance = -1
		       CancelTimer(15)	
	           If GV_SpaceshipDramaticGravJumpToggle.GetValue() == 1
		          SpaceshipGravDriveStartFX02.Stop(akShip)
		          Utility.Wait(5.0)
		          SpaceshipGravDriveStartFX.Stop(akShip)
		          ;SpaceshipGravDriveStartFX02.Stop(akShip)
			EndIf
	 
	 EndIf	

		If aState == 2                
			   
			   If akShip						           
				  GravJumpMaintenanceDamage() 												      					   
			            
						If akShip.haskeyword(KWD_SpaceshipDebuffDisabledGravDrive) == True		 				 
				          GravDriveOvercharge()
		             EndIf 						
						
						If GV_SpaceshipFuelCalculationMode.GetValue() == 0								      					   
                               If GV_SpaceshipCassiopeia.GetValue() == 1 
                                  GravJumpCostsCalculation(GravJumpChargeCostAdvancedAstro, GravJumpChargeCostAdvanced)						   							   						   
					       Else
                                  GravJumpCostsCalculation(GravJumpChargeCostAltAstro, GravJumpChargeCostAlt)
					        EndIf
					ElseIf GV_SpaceshipFuelCalculationMode.GetValue() == 3
                           GravJumpCostsCalculation(GravJumpChargeCostManualAstro, GravJumpChargeCostManual)								
					 EndIf						   							   			  				  

						If GravJumpInitiated == True
						   GravJumpInitiated = False		                   
					 EndIf
		                				        
						If akShip.IsInSpace() == True  
                              If GV_SpaceshipDramaticGravJumpToggle.GetValue() == 1
						         SpaceshipGravDriveStartFX03.Play(akShip, 2.3, None)
								 GravJumpOutroFX.Play(akShip, 2.3, None)
					             ; or GravJumpOutroFX.Play(akShip, 2.5, None)
						   EndIf
					 EndIf			

			EndIf
            
			   If GV_SpaceshipNeedsRefueling.GetValue() == 0
			      GV_SpaceshipNeedsRefueling.SetValue(1)
	        EndIf	 
		    StoreGalaxyMapFuelRout = 0.0

			FuelThresholdsGD()
	        
			ActorValue ReactorClassCheck = SetProperMaitenanceClass()			
			MaintenanceMalfunctionTriggerOnGravJump(ReactorClassCheck) 	        
	        GravDriveAbortOnLoad()
	 EndIf	
EndIf	

EndEvent

Actor Function GetShipAstroDynamics()

	int i = 0
    While i < CurrentCrew.GetCount()
        Actor Astro = CurrentCrew.GetAt(i) as Actor
        if Astro && Astro.HasPerk(SpaceshipCrewAstroDynamics) 
            return Astro
        EndIf
        i += 1
    EndWhile
    return none
EndFunction

Float Function FuelCheckFromMap()
 	
	spaceshipreference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
 
	Float ConsumeFuelDMGOnMoveAdvanced = akShip.GetValue(SpaceshipMass) / akShip.GetValue(SpaceshipEngineThrust) * 30
	Float ConsumeFuelDMGOnMoveAdvancedAstro = akShip.GetValue(SpaceshipMass) / akShip.GetValue(SpaceshipEngineThrust) * 30 / 1.35 			   
	Float ConsumeFuelDMGOnMoveManual = GV_SpaceshipFuelCalculationManual.GetValue() * 30
	Float ConsumeFuelDMGOnMoveManualAstro = GV_SpaceshipFuelCalculationManual.GetValue() * 30 / 1.35 	
	
	int i = 0
    
	While i < CurrentCrew.GetCount()
        Actor Astro = CurrentCrew.GetAt(i) as Actor
        If Astro && Astro.HasPerk(SpaceshipCrewAstroDynamics) 								      					   
						
						If GV_SpaceshipFuelCalculationMode.GetValue() == 0								      					   
                           return ConsumeFuelDMGOnMoveAdvancedAstro						   							   							   
					ElseIf GV_SpaceshipFuelCalculationMode.GetValue() == 3
                           return ConsumeFuelDMGOnMoveManualAstro								
					 EndIf						   							   	
		EndIf
        i += 1
    EndWhile							      					   
    
						If GV_SpaceshipFuelCalculationMode.GetValue() == 0								      					   
                           return ConsumeFuelDMGOnMoveAdvanced							   							   					   
					ElseIf GV_SpaceshipFuelCalculationMode.GetValue() == 3
                           return ConsumeFuelDMGOnMoveManual								
					 EndIf							   							   

EndFunction

Float Function FuelCheckFromMapManualMode()
 	
	spaceshipreference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
 			   
	Float GravJumpChargeCostManual = GV_SpaceshipChargeCalculationManual.GetValue()
	Float GravJumpChargeCostManualAstro = GV_SpaceshipChargeCalculationManual.GetValue() / 1.35 	
	
	int i = 0
    
	While i < CurrentCrew.GetCount()
        Actor Astro = CurrentCrew.GetAt(i) as Actor
        If Astro && Astro.HasPerk(SpaceshipCrewAstroDynamics) 								      					   
           return GravJumpChargeCostManualAstro													   							   	
		EndIf
        i += 1
    EndWhile							      					   
           
		   return GravJumpChargeCostManual								
						   							   
EndFunction

Function TravelPosibilityCheck()

                            SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()                               
                            Int GravDrivePower = akShip.GetPartPower(3, 0)           
						    Float TotalFuelInTheTank = akShip.GetValue(SpaceshipFuelTank)
						    Float CalcFuel = FuelCheckFromMap()								
						    Float CalcFuelManualMode = FuelCheckFromMapManualMode()							

                            If TotalFuelInTheTank >= CalcFuel						 
							       If GV_PrepareFuelStandBy.GetValue() == 0
							                If GV_SpaceshipTakeOffRestriction.GetValue() == 0
									           EnableFastTravel()
							             EndIf
							   Else
							          MSG_SpaceshipInRefuelProcess.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
							          DisableFastTravel()
							    EndIf
					    Else
							  DisableFastTravel()
							  MSG_SpaceshipNotEnoughFuel.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
						 EndIf
			
			If akShip.haskeyword(KWD_SpaceshipDebuffDisabledGravDrive) == False				
							
							If GravDrivePower > 0						 							       
								   If GV_PrepareFuelStandBy.GetValue() == 0							            
									  EnableGravJump()
							   Else
									       DisableGravJump()
							               MSG_SpaceshipInRefuelProcess.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
								EndIf
                        Else
                                           DisableGravJump()
							               akShip.setvalue(SpaceshipGravDriveInitiated, -1)
							               MSG_SpaceshipNoPowerInGravDrive.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
						 EndIf

                            If GV_SpaceshipFuelCalculationMode.GetValue() == 0
                                  If TotalFuelInTheTank < CalcFuelManualMode
									 DisableGravJump()
							         akShip.setvalue(SpaceshipGravDriveInitiated, -1)
									 MSG_SpaceshipNotEnoughFuel.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
                               EndIf
                        
						ElseIf GV_SpaceshipFuelCalculationMode.GetValue() == 3
                                  If TotalFuelInTheTank < CalcFuelManualMode
									 DisableGravJump()
							         akShip.setvalue(SpaceshipGravDriveInitiated, -1)
									 MSG_SpaceshipNotEnoughFuel.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
                               EndIf
                         EndIf
         Else
		       MSG_GravDriveOfflineMalf.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
		 EndIf

EndFunction

Function GravJumpCostsPreliminaryCalculation(Float CostCharge, Float CostChargeNoCrew)

                                        spaceshipreference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
                                        Actor Astro = GetShipAstroDynamics()							     
									 
									 If Astro										                                  										                                        
										StoreChargeConsumptionValues = CostCharge
                                Else
										StoreChargeConsumptionValues = CostChargeNoCrew
                                  EndIf

EndFunction

Function GravJumpCostsCalculation(Float CostCharge, Float CostChargeNoCrew)

                                        spaceshipreference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
                                        Actor Astro = GetShipAstroDynamics()							     
									 
									 If Astro										                                  										                                        
										akShip.Damagevalue(SpaceshipFuelTank, CostCharge)
										StoreChargeConsumptionValues = CostCharge
                                Else
										akShip.Damagevalue(SpaceshipFuelTank, CostChargeNoCrew)
										StoreChargeConsumptionValues = CostChargeNoCrew
                                  EndIf

EndFunction

Event OnTimer(int aiTimerID)

             SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef() 
                     			 
			 CurrentLoc = PlayerRef.GetCurrentlocation()
                          
     	     If (aiTimerID == 1)
                 FuelConsumption()              
				 MaintenanceSystem()             

     	 ElseIf (aiTimerID == 3)       

                If akShip.IsLanded() == True 
				   ShipOnFire.Stop(akShip)				   
		           wwiseevent.StopInstance(MaintenanceEmergencySoundInstance)
				   MaintenanceEmergencySoundInstance = -1
				   CancelTimer(3)
			
			ElseIf MaintenanceEmergency == True && akShip.IsLanded() == False
				   ShipOnFire.Play(akShip, -1, None)
                   StartTimer(8, 3)
             EndIf   
     	 
		 ElseIf (aiTimerID == 4)       				  
			    SpawnEmergencyResponder()

     	 ElseIf (aiTimerID == 5)       
                DebtChecker()

     	 ElseIf (aiTimerID == 6)                       

				CheckAndStoreFuelValuesForTech()
                CheckSystems()
     	 
		 ElseIf (aiTimerID == 7)       				
				MaintenanceKitService()

     	 ElseIf (aiTimerID == 8)       

                If CameraShakeOnFuelFill == True
                   Game.ShakeCamera(PlayerRef, 0.02, 2)
                   Game.ShakeController(0.02, 0.02, 2)
                   StartTimer(1, 8)
            Else
                   CancelTimer(8)
             EndIf

     	 ElseIf (aiTimerID == 10)
                akShip.setvalue(SpaceshipGravDriveInitiated, 1)
                CancelTimer(10)

		 ElseIf (aiTimerID == 11)       
                
				If TutorialAdditionalInfo == True
                   CancelTimer(11)
            Else
                   SpaceshipSystemsTutorials()		  
                   StartTimer(1, 11)
             EndIf

     	 ElseIf (aiTimerID == 12)       
		  				                 
				If TutorialIntroduction == False
			            
						ObjectReference PilotSeat = PlayerShipPilotSeat.GetRef()
					    
						If CurrentLoc == playerShipInteriorLocation.GetLocation() == True
							 If PlayerRef.GetDistance(PilotSeat) <= 5
                                SpaceshipSystemsIntroduction()				   
				                CancelTimer(12)
                          EndIf
					EndIf
             		StartTimer(2, 12)
			 EndIf

     	 ElseIf (aiTimerID == 14)       
				
				RepairBotsVisualFX.Play(akShip, 5) 				    
				Perk MaintenanceOptimization = Game.GetFormFromFile(0x00034CC7, "SFBGS00D.esm") as Perk 
	    				
				Float OptimizationCheck = OptimizationCheck(MaintenanceOptimization)
				Float Hull = akShip.GetBaseValue(SpaceshipHealth) / 1.7 * OptimizationCheck 
				Float Engine = akShip.GetBaseValue(SpaceshipSystemEngineHealth) / 1.7 * OptimizationCheck 
				Float GravDrive = akShip.GetBaseValue(SpaceshipSystemGravdriveHealth) / 1.7 * OptimizationCheck 
				Float Shields = akShip.GetBaseValue(SpaceshipShieldHealth) / 1.7 * OptimizationCheck 
				Float Weapon1 = akShip.GetBaseValue(SpaceshipWeaponHealth) / 1.7 * OptimizationCheck 
				Float Weapon2 = akShip.GetBaseValue(SpaceshipWeaponHealth02) / 1.7 * OptimizationCheck 
				Float Weapon3 = akShip.GetBaseValue(SpaceshipWeaponHealth03) / 1.7 * OptimizationCheck 				
				
				akShip.RestoreValue(SpaceshipHealth, Hull)
		        akShip.RestoreValue(SpaceshipSystemEngineHealth, Engine) 
				akShip.RestoreValue(SpaceshipShieldHealth, Shields) 
				akShip.RestoreValue(SpaceshipSystemGravdriveHealth, GravDrive) 
				akShip.RestoreValue(SpaceshipWeaponHealth, Weapon1) 
				akShip.RestoreValue(SpaceshipWeaponHealth02, Weapon2)
				akShip.RestoreValue(SpaceshipWeaponHealth03, Weapon3)	            
															
				Utility.Wait(5.0)
		        wwiseevent.StopInstance(BotsStartSoundInstance)
                BotsStartSoundInstance = -1
                BotsEndSoundInstance = SoundEventBotsRepairEnd.Play(akShip, None, None)               				
				Utility.Wait(5.0)
				wwiseevent.StopInstance(BotsEndSoundInstance)
                BotsEndSoundInstance = -1
				
				CalculateRepairCost()				
				PlayerRef.RemovePerk(SpaceshipEmergencyRepairBotsPerk)
     	 
		 ElseIf (aiTimerID == 15)                       
				
				Perk GravDriveFuelOptimization = Game.GetFormFromFile(0x00034CCA, "SFBGS00D.esm") as Perk 
				ActorValue CheckMaintenanceClass = SetProperMaitenanceClass() 
                Float PerkCheck = FuelConsumptionCalcOnFlight()
				Float OptimizationCheck = OptimizationCheck(GravDriveFuelOptimization) 
				Float TotalFuelInTheTank = akShip.GetValue(SpaceshipFuelTank)
                Float MaintenanceLeft = PlayerRef.GetValue(CheckMaintenanceClass)
				Float MaitenanceDMG = MaintenanceDMGAfterGravJumpCalcForInfo()
				Float ManualRout = GV_SpaceshipChargeCalculationManual.GetValue() / PerkCheck / OptimizationCheck
				Float ManualRoutAstro = GV_SpaceshipChargeCalculationManual.GetValue() / 1.25 / PerkCheck / OptimizationCheck
                Float ManualRoutAlt = Math.Round(akShip.GetValue(SpaceshipMass) / akShip.GetValue(SpaceshipGravThrust) / PerkCheck / OptimizationCheck)  
                Float ManualRoutAltAstro = Math.Round(akShip.GetValue(SpaceshipMass) / akShip.GetValue(SpaceshipGravThrust) / 1.25 / PerkCheck / OptimizationCheck) 
				   
				   If GV_SpaceshipCassiopeia.GetValue() == 1      
							  If StoreGalaxyMapFuelRout <= 0.0 
		                         StoreGalaxyMapFuelRout = ManualRoutAlt
		                   EndIf 
		       Else	 
			               StoreGalaxyMapFuelRout = 0.0
						   If GV_SpaceshipFuelCalculationMode.GetValue() == 0								      					   
                                   
								   Actor Astro = GetShipAstroDynamics()
								   If Astro
								      StoreGalaxyMapFuelRout = ManualRoutAltAstro						   							   							   
			                   Else
					                  StoreGalaxyMapFuelRout = ManualRoutAlt
					            EndIf
					   
					   ElseIf GV_SpaceshipFuelCalculationMode.GetValue() == 3
								   
								   Actor Astro = GetShipAstroDynamics()
								   If Astro
								      StoreGalaxyMapFuelRout = ManualRoutAstro						   							   							   
			                   Else
					                  StoreGalaxyMapFuelRout = ManualRout
					            EndIf								
			            
						EndIf
					    
	            EndIf
				
				MSG_GravJumpCostOnPowerChange.Show(StoreGalaxyMapFuelRout, TotalFuelInTheTank, EstimatedTime, MaitenanceDMG, MaintenanceLeft, 0.0, 0.0, 0.0, 0.0)
     	 
		 ElseIf (aiTimerID == 16)       			    
				If GV_SpaceshipMaintenanceAtWork.GetValue() >= 1
				   SpaceshipMaintenanceFX.Play(akShip, 10.0, None)
                   SoundEventMaintenanceAtWork02.Play(akShip, None, None)
				   StartTimer(0.5, 16)
            Else
		           CancelTimer(16)
		           SoundEventFuelFillStart.Play(akShip, None, None) 
			       SoundEventChargeEnd.Play(akShip, None, None) 
				   RepairBotsVisualFX.Play(akShip, 5) 
			 EndIf		  
		 		 
		 ElseIf (aiTimerID == 18)  
										
		        Float TotalFuelInTheTank = akShip.GetValue(SpaceshipFuelTank)									
                Float FuelTankAmount = akShip.GetBaseValue(SpaceshipFuelTank)
		        Float FuelConsumption = FuelConsumptionDataView()                                      		  		  		         
		        Float ConsumeFuelCycle = GV_FuelConsumeTimeOnMove.GetValue() 

		        MSG_SpaceshipFuelInfo.show(ConsumeFuelCycle, FuelConsumption, TotalFuelInTheTank, FuelTankAmount, 0.0, 0.0, 0.0, 0.0, 0.0)		  
		 
		 ElseIf (aiTimerID == 20) 		  
                 MaintenanceSpaceshipZegoGOff()		  

		 ElseIf (aiTimerID == 21)
		         MaintenanceStationRef.Activate(PlayerRef, False) 
		 
		 ElseIf (aiTimerID == 22)
                 
				 Float OnBoostTime = GV_SpaceshipOnBoostTime.GetValue() 
				 
				 If akShip.GetValue(SpaceshipBoostActive) > 0
				    OnBoost()
                    OnBoostBuff()
				    StartTimer(OnBoostTime, 22)
		      Else
		            OnBoostBuffRemover()
                    CancelTimer(22)		  
		      EndIf
		 
		 ElseIf (aiTimerID == 23)		  
		          If GV_SpaceshipTakeOffRestriction.GetValue() == 0
				     EnableTakeoff()
		       EndIf
		 ElseIf (aiTimerID == 24)
		          If GV_SpaceshipTakeOffRestriction.GetValue() == 0
				     EnableTakeoff()
		       EndIf
		 ElseIf (aiTimerID == 25)
				 UnregisterForMenuOpenCloseEvent("LoadingMenu")
		 ElseIf (aiTimerID == 26)

	                GravJumpInitiated = False
	                akShip.setvalue(SpaceshipGravDriveInitiated, -1)
	                wwiseevent.StopInstance(GravDrivePrepareSoundInstance)
                    GravDrivePrepareSoundInstance = -1
	                   If GV_SpaceshipGravJumpWormhole.GetValue() == 1
		                  StartTimer(2, 25)
	                EndIf
	                CancelTimer(10)
	                CancelTimer(15)					 
 		 
		 ElseIf (aiTimerID == 27) 		  
		  		MaintenanceKitServiceHullOnly()
		  EndIf
EndEvent

Function CancelFuelTimerOnLeavingSpaceship()

         CancelTimer(1)	

EndFunction

Function CheckSystemsMessageControl()

          spaceshipreference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
          Float TotalFuelInTheTank = akShip.GetValue(SpaceshipFuelTank)  
	
	If GV_SpaceshipSystemCheckMessages.GetValue() == 1
          SpaceshipSystemStatusOnRefuel()
		  If akShip.IsDocked() == True || akShip.IsLanded() == True 
                If TotalFuelInTheTank > 0
				     If PlayerRef.GetFurnitureUsing() == PlayerShipPilotSeat.GetRef()
				        MSG_SpaceshipSystemsCheck.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
                        Utility.Wait(2.0)
                        MSG_SpaceshipSystemsAreReady.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
				  EndIf
            Else
				     If PlayerRef.GetFurnitureUsing() == PlayerShipPilotSeat.GetRef()
	                    Utility.Wait(0.5)
				        MSG_SpaceshipSystemsCheckFailed.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	              EndIf
			 EndIf
	   EndIf
 EndIf
EndFunction

Function CheckSystems()

                         SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
                         Float TotalFuelInTheTank = akShip.GetValue(SpaceshipFuelTank)
						 ObjectReference PilotSeat = PlayerRef.GetFurnitureUsing()
		
		If GV_SpaceshipSystemsToggle.GetValue() == 1 && TutorialIntroduction == True
							                             							  
							  If akShip.IsLanded() == True && akShip.haskeyword(KWD_SpaceshipDebuffLandingGearThrustLoss) == True 
							     MSG_LandingGearMalf.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
						         DisableTakeoff()
								 StartTimer(30, 24)
						  ElseIf akShip.IsDocked() == True && akShip.haskeyword(KWD_SpaceshipDebuffLongerUndocking) == True 
							     MSG_DockerMalf.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
						         DisableTakeoff()
						         StartTimer(30, 23)
						   Else
						         	If GV_SpaceshipTakeOffRestriction.GetValue() == 0
								       DisableCruiseFarTravel()
									   DisableFarTravel()
									   EnableTakeoff()
						         EndIf
						   EndIf
							  
							  If GV_SpaceshipMaintenanceAtWork.GetValue() == 1
				                       If PilotSeat 
	                                      PilotSeat.Activate(PlayerRef, False)
			                              Return
									EndIf								  
						   EndIf	  
							  
							  If TotalFuelInTheTank > 0
                                    If EnginePowerRestricted == True
								       EnginePowerRestricted = False
							     EndIf
								 CheckSystemsMessageControl()				                 
								 AllPowerOn()						  
						  Else                                  								
								Utility.Wait(1.0)
								   If PilotSeat 
	                                  PilotSeat.Activate(PlayerRef, False)
						        EndIf										
								   If EnginePowerRestricted == False
                                      EnginePowerRestricted = True
                                 EndIf  
                                 CheckSystemsMessageControl()									                               
								 AllPowerOff()
						   EndIf

			                  If akShip.IsLanded() == True 
                                        If akShip
                                           Int i = LandingLocationsFT.GetSize()
                                           While i > 0
                                                 i -= 1
                                                 If akShip.IsInLocation(LandingLocationsFT.GetAt(i) as Location)
                                                        If GV_SpaceshipTakeOffRestriction.GetValue() == 0
													        EnableFastTravel()                                      			            
                                                     EndIf
											         Return
											  Else
                                      			    DisableFastTravel()
                                      			    Return
                                      		  EndIf
                                           EndWhile
                                     EndIf		   
                           EndIf		  

                              If GV_AutoInjector.GetValue() == 1
                                 AutoRefuelingFuel()
		                   EndIf
                           StoreValuesSpaceshipPower()
                              
    EndIf

EndFunction

Event Quest.OnStageSet(Quest akSender, int auiStageID, int auiItemID)
       Quest TheStarjackerDLC = Game.GetFormFromFile(0x0000492D, "SFBGS003.esm") as Quest          
	   If akSender == TheStarjackerDLC && auiStageID == JunkerShipAcquired
		  Utility.Wait(2.0)
		  JunkerShipDLCBugFix()
   ElseIf akSender == TheStarjackerDLC && auiStageID == TheStarJackerCompleted
		  GV_StarjackerQuest.SetValue(0)
		  UnregisterForRemoteEvent(TheStarjackerDLC, "OnStageSet")
    EndIf
EndEvent

Int Function GravDriveCalculatePreparationMalf()
         
		 Int MalfActive = 10
		 Int MalfDisabled = 0
		 
		 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
         
		 If akShip.haskeyword(KWD_SpaceshipDebuffAbnormalSpoolingPhase) == True
            Return MalfActive
     Else
            Return MalfDisabled           
      EndIf

EndFunction

Int Function GravDriveMaxPower()

    SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
    Int GravDrive = akShip.GetPartPower(3, 0)
    Int Max = 12

    If GravDrive > 12
       Return Max 
 Else
       Return GravDrive
 EndIf

EndFunction

Function GravDriveCalculatePreparation()

         SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
         Int GravDrive = akShip.GetPartPower(3, 0)
         Int MaxPower = GravDriveMaxPower()
		 Int MalfAddMoreTime = GravDriveCalculatePreparationMalf() 
   
   If GravJumpInitiated == True
         
		 akShip.setvalue(SpaceshipGravDriveInitiated, -1)		 
		 CancelTimer(10)    
         CancelTimer(15)  
         		 
		 If GravDrive == GravDrive
            EstimatedTime = 12 - MaxPower + MalfAddMoreTime			 
	  EndIf
      StartTimer(EstimatedTime, 10) 
	  StartTimer(0.3, 15) 
Else         
		 If GravDrive == GravDrive
            EstimatedTime = 12 - MaxPower + MalfAddMoreTime			 
	  EndIf
	  StartTimer(0.3, 15)		
EndIf
EndFunction

Function AutoRefuelingFuel()

      SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
	  
	  Float TotalFuelInTheTank = akShip.GetValue(SpaceshipFuelTank)
      Float FuelTankAmount = akShip.GetBaseValue(SpaceshipFuelTank) / 3

   If GV_SpaceshipAutoRefuelBlock.GetValue() == 0	  
	  If GV_AutoInjector.GetValue() == 1
           If akShip.IsDocked() == False
				 If TotalFuelInTheTank <= FuelTankAmount
                    If akShip.GetItemCount(SpaceshipFuel) > 0
				       FuelFillExecute()
                 EndIf
              EndIf
        EndIf
   EndIf
EndIf

EndFunction

Function FuelFillSpecialFX()

                                  If GV_SpaceshipRefuelingType.GetValue() == 0      
							            If CameraShakeOnFuelFill == False
									       CameraShakeOnFuelFill = True
									 EndIf
									 StartTimer(0, 8)
         						     SoundEventChargeInTheProcess.PlayAndWait(PlayerRef, None, None) 
                                        If CameraShakeOnFuelFill == True
									       CameraShakeOnFuelFill = False
         						     EndIf
									 SoundEventFuelFillEnd.Play(PlayerRef, None, None) 
                                     SoundEventFuelFillBeep.Play(PlayerRef, None, None) 
                                     SoundEventChargeEnd.PlayAndWait(PlayerRef, None, None)
									 ;GravDriveRechargeFX.Play(PlayerRef, 0.3)
							  Else
         						     SoundEventFuelFillEnd.Play(PlayerRef, None, None) 
                               EndIf
EndFunction

Function FuelFillSpecialFXOutside()

                                  SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()

                                  If GV_SpaceshipRefuelingType.GetValue() == 0      
         						     SoundEventChargeInTheProcess.PlayAndWait(akShip, None, None) 
         						     SoundEventFuelFillEnd.Play(akShip, None, None) 
                                     SoundEventFuelFillBeep.Play(akShip, None, None) 
                                     SoundEventChargeEnd.PlayAndWait(akShip, None, None)
									 ;GravDriveRechargeFX.Play(akShip, 0.3)
							  Else
         						     SoundEventFuelFillEnd.Play(akShip, None, None) 
                               EndIf
EndFunction

Function MaintenanceSpecialFX()

                 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
                 
				 StartTimer(0, 16)
				 RepairBotsVisualFX.Play(akShip, 5)
				 SoundEventBotsRepairStart.Play(akShip, None, None)
		         SoundEventMaintenanceAtWork.Play(PlayerRef, None, None)

EndFunction

Float Function BrokenRefuelerMalfunctionCheck()
      
	  SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
      
	  Float Broken = 2.0
      Float NotBroken = 1.0

      If akShip.haskeyword(KWD_SpaceshipDebuffBrokenRefueler) == True
         Return	Broken
	Else	 
         Return NotBroken
   EndIf

EndFunction

Function FuelFillExecute()

                                     SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
                                     
									 Int FuelInTheCargo = akShip.GetItemCount(SpaceshipFuel)
						             Float BrokenRefuelerCheck = BrokenRefuelerMalfunctionCheck() 
									 Float FuelTankAmount = akShip.GetBaseValue(SpaceshipFuelTank)                        
						             Float TotalFuelInTheTank = akShip.GetValue(SpaceshipFuelTank)
									 Float FuelToFillWith = 0.0
	                                 ActorValue ReactorClassCheck = SetProperMaitenanceClass()
									 
									 If RefuelFuelStarted == False
                                        RefuelFuelStarted = True
                                        FuelFillSpecialFX()
																				
										FuelToFillWith = Math.Round(akShip.GetBaseValue(SpaceshipFuelTank) - akShip.GetValue(SpaceshipFuelTank))
										
										If FuelToFillWith >= FuelInTheCargo									
										   FuelToFillWith = FuelInTheCargo
										   akShip.Restorevalue(SpaceshipFuelTank, FuelToFillWith / BrokenRefuelerCheck)							          
										   akShip.RemoveItem(SpaceshipFuel, FuelToFillWith as Int, True, None)
								    ElseIf FuelToFillWith < FuelInTheCargo 										  										   										   
										   akShip.Restorevalue(SpaceshipFuelTank, FuelTankAmount / BrokenRefuelerCheck)							          
										   akShip.RemoveItem(SpaceshipFuel, FuelToFillWith as Int, True, None)										   
									 EndIf	   
										   
										   If TotalFuelInTheTank == FuelTankAmount
										   	  GV_SpaceshipNeedsRefueling.SetValue(0)
										EndIf
								   						                           
						                CheckSystems()
						                SpaceshipSystemStatusOnRefuel()
                                        Utility.Wait(0.01)
										   If RefuelFuelStarted == True
										      RefuelFuelStarted = False
						                EndIf
										   If TutorialFillFuel == False
										      TutorialFillFuel = True
                                        EndIf
										GV_PrepareFuelStandBy.SetValue(0) 
                                        MaintenanceMalfunctionTriggerOnRefuelProcess(ReactorClassCheck)
								  EndIf
EndFunction 

Function FuelPumpoutExecute()
                                        
										SpaceShipReference CurrentHomeship = HomeShip.GetShipRef()
                                        SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
                                     
                                        Float TotalFuelInTheTank = akShip.GetValue(SpaceshipFuelTank)
								     
									    FuelConsumptionStopOnPumpOut()
                                        FuelFillSpecialFX() 
									       If CurrentHomeship.IsDockedWith(akShip)										
										      CurrentHomeship.AddItem(SpaceshipFuel, TotalFuelInTheTank as Int, True)						        
										Else
										      akShip.AddItem(SpaceshipFuel, TotalFuelInTheTank as Int, True)
										EndIf
										akShip.Damagevalue(SpaceshipFuelTank, TotalFuelInTheTank)						          										
                                        GV_PrepareFuelStandBy.SetValue(0)
										GV_SpaceshipNeedsRefueling.SetValue(1)						           
								        SpaceshipSystemStatusOnRefuel()
                                        CheckSystems()
EndFunction

Function SpaceshipFuelConsumptionOff()

      SpaceShipReference akShip = PlayerRef.GetCurrentShipRef()
      Int Engine = akShip.GetPartPower(1, 0)
          
		  If SpaceshipEngineIgnited == True
             SpaceshipEngineIgnited = False
       EndIf
	   CancelTimer(1)
	   GV_FuelConsumeDMGOnPower.SetValue(Engine)

EndFunction

Float Function FuelConsumptionCalcOnFlight()

      Float PlayerAstroDynamics0 = 1.0
      Float PlayerAstroDynamics1 = 1.10
      Float PlayerAstroDynamics2 = 1.20
      Float PlayerAstroDynamics3 = 1.30
      Float PlayerAstroDynamics4 = 1.50

		If ConditionFormAstroDynamics04.IsTrue(PlayerRef, None)     
		   Return PlayerAstroDynamics4 
	ElseIf ConditionFormAstroDynamics03.IsTrue(PlayerRef, None)  
	       Return PlayerAstroDynamics3
	ElseIf ConditionFormAstroDynamics02.IsTrue(PlayerRef, None)	 
           Return PlayerAstroDynamics2
	ElseIf ConditionFormAstroDynamics01.IsTrue(PlayerRef, None)
           Return PlayerAstroDynamics1 
Else	
           Return PlayerAstroDynamics0
     EndIf      

EndFunction

Float Function FuelLeakCalc()
      
	  SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
      
	  Float FuelLeakActive = 0.75
      Float FuelLeakDisabled = 0.0

		        If akShip.haskeyword(KWD_SpaceshipDebuffFuelLeak) == True    
		           Return FuelLeakActive 
            Else	
                   Return FuelLeakDisabled
             EndIf      

EndFunction

Function FuelConsumption()
	     
		 Perk EngineOptimization = Game.GetFormFromFile(0x00034CC2, "SFBGS00D.esm") as Perk 
         SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()            
			   
         CurrentLoc = PlayerRef.GetCurrentlocation()
		 ActorValue ReactorClassCheck = SetProperMaitenanceClass()
		 
		 Float FuelLeak = FuelLeakCalc()
	     Float OptimizationCheck = OptimizationCheck(EngineOptimization)
		 Float PerkCheck = FuelConsumptionCalcOnFlight()
		 
		 Float ConsumeFuelCycle = GV_FuelConsumeTimeOnMove.GetValue() 
		 Float ConsumeFuelDMGOnMoveAdvanced = akShip.GetValue(SpaceshipMass) / akShip.GetValue(SpaceshipEngineThrust) * GV_FuelConsumeDMGOnPower.GetValue() / PerkCheck / OptimizationCheck + FuelLeak
		 Float ConsumeFuelDMGOnMoveAdvancedAstro = akShip.GetValue(SpaceshipMass) / akShip.GetValue(SpaceshipEngineThrust) * GV_FuelConsumeDMGOnPower.GetValue() / 1.25	/ PerkCheck / OptimizationCheck	+ FuelLeak	   
		 Float ConsumeFuelDMGOnMoveManual = GV_SpaceshipFuelCalculationManual.GetValue() * GV_FuelConsumeDMGOnPower.GetValue() / PerkCheck / OptimizationCheck + FuelLeak
		 Float ConsumeFuelDMGOnMoveManualAstro = GV_SpaceshipFuelCalculationManual.GetValue() * GV_FuelConsumeDMGOnPower.GetValue() / 1.25 / PerkCheck / OptimizationCheck + FuelLeak               
	     
		 If CurrentLoc == playerShipInteriorLocation02.GetLocation() == True || CurrentLoc == playerShipInteriorLocation.GetLocation() == True                                       
		                     If akShip.IsDocked() == False && akShip.IsInSpace() == True                         					    							          									  										    								 
								
								MaintenanceMalfunctionTriggerOnFuelUsage(ReactorClassCheck)	  
									  
									  If GV_SpaceshipFuelCalculationMode.GetValue() == 0										    								 
                                         FuelConsumptionDamage(ConsumeFuelDMGOnMoveAdvancedAstro, ConsumeFuelDMGOnMoveAdvanced)        						
						          ElseIf GV_SpaceshipFuelCalculationMode.GetValue() == 3
					                     FuelConsumptionDamage(ConsumeFuelDMGOnMoveManualAstro, ConsumeFuelDMGOnMoveManual) 	
                                   EndIf      									                                     							 																	        
								   StartTimer(ConsumeFuelCycle, 1)    								   								   						                   									                        			
						 Else
								   CancelTimer(1)
								   CheckSystems()					
					      EndIf
    Else
           CancelTimer(1)
     EndIf

EndFunction

Float Function OptimizationCheck(Perk ShipUpgrade)
	  
      Float OptimizationON = 1.30
	  Float OptimizationOFF = 1.0
	  
	  If PlayerRef.HasPerk(ShipUpgrade)
         Return OptimizationON  
   Else
         Return OptimizationOFF
   EndIf

EndFunction

Function FuelConsumptionOnLandTakeOff()
			   
	           Perk ThrusterOptimization = Game.GetFormFromFile(0x00034CC3, "SFBGS00D.esm") as Perk 			   
			   SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()			   
		       
			   Float FuelLeak = FuelLeakCalc()
			   Float OptimizationCheck = OptimizationCheck(ThrusterOptimization)
			   ActorValue ReactorClassCheck = SetProperMaitenanceClass()
			   
			   Float PerkCheck = FuelConsumptionCalcOnFlight()			   
			   Float ConsumeFuelDMGOnMoveAdvanced = akShip.GetValue(SpaceshipMass) / akShip.GetValue(SpaceshipEngineThrust) / PerkCheck * 60 / OptimizationCheck + FuelLeak
			   Float ConsumeFuelDMGOnMoveAdvancedAstro = akShip.GetValue(SpaceshipMass) / akShip.GetValue(SpaceshipEngineThrust) / 1.25 / PerkCheck * 60 / OptimizationCheck + FuelLeak			   
			   Float ConsumeFuelDMGOnMoveManual = GV_SpaceshipFuelCalculationManual.GetValue() / PerkCheck * 60 / OptimizationCheck + FuelLeak
			   Float ConsumeFuelDMGOnMoveManualAstro = GV_SpaceshipFuelCalculationManual.GetValue() / 1.25 / PerkCheck * 60 / OptimizationCheck + FuelLeak																    								 
			   
			   MaintenanceMalfunctionTriggerOnFuelUsage(ReactorClassCheck)
			   
			   If GV_SpaceshipFuelCalculationMode.GetValue() == 0										    								 
                  FuelConsumptionDamage(ConsumeFuelDMGOnMoveAdvancedAstro, ConsumeFuelDMGOnMoveAdvanced)       						
		   ElseIf GV_SpaceshipFuelCalculationMode.GetValue() == 3
				  FuelConsumptionDamage(ConsumeFuelDMGOnMoveManualAstro, ConsumeFuelDMGOnMoveManual) 	
            EndIf       

EndFunction

Function FuelConsumptionDamage(Float FuelCost, Float FuelCostNoCrew)
               
			   SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
               
               Actor Astro = GetShipAstroDynamics()
			   
			   If Astro
                  akShip.Damagevalue(SpaceshipFuelTank, FuelCost)
		          GV_StoreFuelConsumage.SetValue(FuelCost)
		  Else
			      akShip.Damagevalue(SpaceshipFuelTank, FuelCostNoCrew)
		          GV_StoreFuelConsumage.SetValue(FuelCostNoCrew)
			EndIf								

			   If GV_SpaceshipNeedsRefueling.Getvalue() == 0
				  GV_SpaceshipNeedsRefueling.SetValue(1)
			EndIf

			  If akShip.GetValue(SpaceshipFuelTank) <= 0 					
					If SpaceshipPowerValueStored == False
					   StoreValuesSpaceshipPower()
				 EndIf
				 AllPowerOff()
				 CancelTimer(1)
				 CheckSystems()                                           
					If EnginePowerRestricted == False
                       EnginePowerRestricted = True
                 EndIf							 			                            																        										
				 MSG_SpaceshipOutOfFuel.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
           EndIf
		   FuelThresholds()
EndFunction

Function FuelConsumptionStartOnUndock()
        
		SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
        
		Float ConsumeFuelCycle = GV_FuelConsumeTimeOnMove.GetValue() 
	    Int Engine = akShip.GetPartPower(1, 0)
        
		If GV_SpaceshipSystemsToggle.GetValue() == 1              
			     
				 If Engine <= 0
			        akShip.SetPartPower(1, 0, 1)
			        GV_FuelConsumeDMGOnPower.SetValue(1)
		     Else
			        GV_FuelConsumeDMGOnPower.SetValue(Engine)
			  EndIf
			  StartTimer(ConsumeFuelCycle, 1)
                 
				 If MaintenanceEmergency == True && akShip.IsInSpace() == True
                    wwiseevent.StopInstance(MaintenanceEmergencySoundInstance)
					MaintenanceEmergencySoundInstance = -1
					MaintenanceEmergencySoundInstance = SoundEventMaintenanceEmergency.Play(akShip, None, None)
					StartTimer(2, 3)	      
			  EndIf
	 EndIf					 														
EndFunction
										 										 										 				                               									                 
Function FuelConsumptionStopOnPumpOut()

				CancelTimer(1)
                If SpaceshipPowerValueStored == False
				   StoreValuesSpaceshipPower()
			 EndIf
				AllPowerOff()
                If EnginePowerRestricted == False
                   EnginePowerRestricted = True
             EndIf							 
														
EndFunction

Function OnBoostStartTimer()
         
		 Float OnBoostTime = GV_SpaceshipOnBoostTime.GetValue()
         
		 StartTimer(OnBoostTime, 22)

EndFunction

Function OnBoostStopTimer()
         
		 OnBoostBuffRemover()
         CancelTimer(22)

EndFunction

Function OnBoost()
		    
			Perk BoosterOptimization = Game.GetFormFromFile(0x00034CC4, "SFBGS00D.esm") as Perk 
            SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
			
			Float PerkCheck = FuelConsumptionCalcOnFlight()
			Float OptimizationCheck = OptimizationCheck(BoosterOptimization)
            Float FuelLeak = FuelLeakCalc()
			Float ConsumeFuelDMGOnBoostAdvanced = akShip.GetValue(SpaceshipMass) / akShip.GetValue(SpaceshipEngineThrust) * akShip.GetValue(SpaceshipBoostSpeed) * GV_FuelConsumeDMGOnPower.GetValue() / PerkCheck / OptimizationCheck + FuelLeak
			Float ConsumeFuelDMGOnBoostAdvancedAstro = akShip.GetValue(SpaceshipMass) / akShip.GetValue(SpaceshipEngineThrust) * akShip.GetValue(SpaceshipBoostSpeed) * GV_FuelConsumeDMGOnPower.GetValue() / 1.25 / PerkCheck / OptimizationCheck + FuelLeak           
			Float ConsumeFuelDMGOnBoostManual = GV_SpaceshipFuelCalculationManualOnBoost.GetValue()* akShip.GetValue(SpaceshipBoostSpeed) * GV_FuelConsumeDMGOnPower.GetValue() / PerkCheck / OptimizationCheck + FuelLeak
			Float ConsumeFuelDMGOnBoostManualAstro = GV_SpaceshipFuelCalculationManualOnBoost.GetValue() * akShip.GetValue(SpaceshipBoostSpeed) * GV_FuelConsumeDMGOnPower.GetValue() / 1.25 / PerkCheck / OptimizationCheck + FuelLeak
            ActorValue ReactorClassCheck = SetProperMaitenanceClass()
	  
	  If GV_SpaceshipSystemsToggle.GetValue() == 1              				          						  
						  If GV_SpaceshipFuelCalculationMode.GetValue() == 0
							 FuelConsumptionDamage(ConsumeFuelDMGOnBoostAdvancedAstro, ConsumeFuelDMGOnBoostAdvanced)									    					   							   						   
					  ElseIf GV_SpaceshipFuelCalculationMode.GetValue() == 3
							 FuelConsumptionDamage(ConsumeFuelDMGOnBoostManualAstro, ConsumeFuelDMGOnBoostManual)								
					   EndIf								    					   							   
					      
						  If GV_SpaceshipNeedsMaintenanceToggle.GetValue() == 1
					         MaintenanceSystem()
					         MaintenanceMalfunctionTriggerOnBoost(ReactorClassCheck)

					   EndIf

   EndIf
EndFunction	

Function OnBoostBuff()
                       SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()

                       Int GravDrive = akShip.GetPartPower(3, 0)

                       If GravDrive >= 3

				                If PlayerRef.HasPerk(SpaceshipBoostBuff01) == False
					               PlayerRef.Addperk(SpaceshipBoostBuff01, False)
				             EndIf	
                    EndIf
                       If GravDrive >= 6

				                If PlayerRef.HasPerk(SpaceshipBoostBuff02) == False
					               PlayerRef.Addperk(SpaceshipBoostBuff02, False)
				             EndIf	
                    EndIf
                       If GravDrive >= 9

				                If PlayerRef.HasPerk(SpaceshipBoostBuff03) == False
					               PlayerRef.Addperk(SpaceshipBoostBuff03, False)
				             EndIf	
                    EndIf
                       If GravDrive >= 12

				                If PlayerRef.HasPerk(SpaceshipBoostBuff04) == False
					               PlayerRef.Addperk(SpaceshipBoostBuff04, False)
				             EndIf	
                    EndIf

EndFunction

Function OnBoostBuffRemover()

				                If PlayerRef.HasPerk(SpaceshipBoostBuff01) == True
					               PlayerRef.Removeperk(SpaceshipBoostBuff01)
				             EndIf	

				                If PlayerRef.HasPerk(SpaceshipBoostBuff02) == True
					               PlayerRef.Removeperk(SpaceshipBoostBuff02)
				             EndIf	

				                If PlayerRef.HasPerk(SpaceshipBoostBuff03) == True
					               PlayerRef.Removeperk(SpaceshipBoostBuff03)
				             EndIf	

				                If PlayerRef.HasPerk(SpaceshipBoostBuff04) == True
					               PlayerRef.Removeperk(SpaceshipBoostBuff04)
				             EndIf	

EndFunction

Function GravJumpMaintenanceDamage()

                               SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef() 
   
                               If GV_SpaceshipNeedsMaintenanceToggle.GetValue() == 1	                     
				                         If akShip.GetReactorClassKeyword() == SpaceshipModuleClassA
                                            MaintenanceSystemDMGGravJumpTrigger(SpaceshipReactorClassA)
									 ElseIf akShip.GetReactorClassKeyword() == SpaceshipModuleClassB
									        MaintenanceSystemDMGGravJumpTrigger(SpaceshipReactorClassB)
									 ElseIf akShip.GetReactorClassKeyword() == SpaceshipModuleClassC
									        MaintenanceSystemDMGGravJumpTrigger(SpaceshipReactorClassC)
									 ElseIf akShip.GetReactorClassKeyword() == SpaceshipModuleClassM
									        MaintenanceSystemDMGGravJumpTrigger(SpaceshipReactorClassM)
									  EndIf
                                      
									  MaintenanceSystem()             	  
                            EndIf
EndFunction

Function OnHomeshipChangeMalfCheck()

			  ;SpaceShipReference akShip = HomeShip.GetShipRef()
              SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef() 			  
			  
			  Int MalfCount = 0
			  Int Round = 0			  
			  
			  While Round < 1
			  If akShip.haskeyword(KWD_SpaceshipDebuffLowerWeaponDamage) == True				 
				 MalfCount += 1
		   EndIf		  
		      If akShip.haskeyword(KWD_SpaceshipDebuffLowerCargoCapacity) == True				 
				 MalfCount += 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffDecreasedBoost) == True					 
				 MalfCount += 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffLessShields) == True					 
				 MalfCount += 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffGravDriveFuelIncrease) == True		  				 
				 MalfCount += 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffGravDriveDistanceDecrease) == True		  				 
				 MalfCount += 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffLongerTargeting) == True		  				 
				 MalfCount += 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffTargetingOff) == True		  				 
				 MalfCount += 1		   
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffThrustersOff) == True		  				 
				 MalfCount += 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffSlowAutoRepair) == True		  				 
				 MalfCount += 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffAutoRepair) == True		  				 
				 MalfCount += 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffFuelLeak) == True		 				 
				 MalfCount += 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffHeatleechAttack) == True		 				 
				 MalfCount += 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffSlowerWPNRechargeRate) == True		 				 
				 MalfCount += 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffManeuverability) == True		 				 
				 MalfCount += 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffSystemMitigation) == True		 				 
				 MalfCount += 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffGravDriveZeroGravity) == True	 				
				 MalfCount += 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffHullBreach) == True		 				 
				 MalfCount += 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffSystemFailure) == True		 				 
				 MalfCount += 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffBrokenRefueler) == True		 				 
				 MalfCount += 1
		   EndIf		      
			  If akShip.haskeyword(KWD_SpaceshipDebuffDisabledO2) == True		 				 
				 MalfCount += 1
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffDisabledGravDrive) == True		 				 
				 MalfCount += 1
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffLandingGearThrustLoss) == True		 				 
				 MalfCount += 1
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffLongerUndocking) == True		 				 
				 MalfCount += 1
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffDoorShortCircuit) == True		 				 
				 MalfCount += 1
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffGasLeak) == True		 				 
				 MalfCount += 1
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffAbnormalSpoolingPhase) == True		 				 
				 MalfCount += 1
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffTargetingAPCost) == True		 				 
				 MalfCount += 1
		   EndIf 
			  If akShip.haskeyword(KWD_SpaceshipDebuffRepairCombatBot) == True		 				 
				 MalfCount += 1
		   EndIf            
			  If akShip.haskeyword(KWD_SpaceshipDebuffRadiationLeak) == True		 				 
				 MalfCount += 1
		   EndIf
		   Round += 1
		   EndWhile   
		   
		   If MalfCount > 0
              GV_SpaceshipMaintMalfGained.SetValue(1)
        Else
              GV_SpaceshipMaintMalfGained.SetValue(0)		
		EndIf
        
		GV_SpaceshipMaintMalfMeter.SetValue(0)           
		   
		   ActorValue CheckMaintenanceClass = SetProperMaitenanceClass()
           
              If akShip.GetValue(SpaceshipHealth) < akShip.GetBaseValue(SpaceshipHealth) || akShip.GetValue(SpaceshipWeaponHealth) < akShip.GetBaseValue(SpaceshipWeaponHealth) || akShip.GetValue(SpaceshipWeaponHealth02) < akShip.GetBaseValue(SpaceshipWeaponHealth02) || akShip.GetValue(SpaceshipWeaponHealth03) < akShip.GetBaseValue(SpaceshipWeaponHealth03) || akShip.GetValue(SpaceshipShieldHealth) < akShip.GetBaseValue(SpaceshipShieldHealth) || akShip.GetValue(SpaceshipSystemEngineHealth) < akShip.GetBaseValue(SpaceshipSystemEngineHealth) || akShip.GetValue(SpaceshipSystemGravdriveHealth) < akShip.GetBaseValue(SpaceshipSystemGravdriveHealth) || PlayerRef.GetValue(CheckMaintenanceClass) < PlayerRef.GetBaseValue(CheckMaintenanceClass)    
                 GV_SpaceshipSystemDamaged.SetValue(1)
          Else
                 GV_SpaceshipSystemDamaged.SetValue(0)	      
	       EndIf   

EndFunction

Function MaintenanceSystem()

    SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef() 
     
	If GV_SpaceshipNeedsMaintenanceToggle.GetValue() == 1                     
        If CurrentLoc == playerShipInteriorLocation.GetLocation() == True || CurrentLoc == playerShipInteriorLocation02.GetLocation() == True                     
		               If akShip.IsDocked() == False && akShip.IsInSpace() == True

										 If GV_SpaceshipSystemDamaged.GetValue() == 0
                                            GV_SpaceshipSystemDamaged.SetValue(1)
                                      EndIf	
                                		 								                         
										 If akShip.GetReactorClassKeyword() == SpaceshipModuleClassA
                                            MaintenanceSystemDMGTrigger(SpaceshipReactorClassA)
									        MaintenanceSystemAlarmTrigger(SpaceshipReactorClassA)
									        MaintenanceSystemDamageSubSystems(SpaceshipReactorClassA)
									        MaintenanceSystemMalfunctionTrigger(SpaceshipReactorClassA)
									 ElseIf akShip.GetReactorClassKeyword() == SpaceshipModuleClassB
									        MaintenanceSystemDMGTrigger(SpaceshipReactorClassB)
											MaintenanceSystemAlarmTrigger(SpaceshipReactorClassB)
									        MaintenanceSystemDamageSubSystems(SpaceshipReactorClassB)
									        MaintenanceSystemMalfunctionTrigger(SpaceshipReactorClassB)
									 ElseIf akShip.GetReactorClassKeyword() == SpaceshipModuleClassC
									        MaintenanceSystemDMGTrigger(SpaceshipReactorClassC)
											MaintenanceSystemAlarmTrigger(SpaceshipReactorClassC)
									        MaintenanceSystemDamageSubSystems(SpaceshipReactorClassC)
									        MaintenanceSystemMalfunctionTrigger(SpaceshipReactorClassC)
									 ElseIf akShip.GetReactorClassKeyword() == SpaceshipModuleClassM
									        MaintenanceSystemDMGTrigger(SpaceshipReactorClassM)
											MaintenanceSystemAlarmTrigger(SpaceshipReactorClassM)
									        MaintenanceSystemDamageSubSystems(SpaceshipReactorClassM)									        
									        MaintenanceSystemMalfunctionTrigger(SpaceshipReactorClassM)
									  EndIf
								         						   					                                                 
                                      MaintenanceThresholds()					
					EndIf

   EndIf
EndIf                                              
EndFunction

Function EmergencySystemRepair(ActorValue AV)

                                     SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
                                     int RandomRepair = Utility.RandomInt(0,100)                                                                          

										If (RandomRepair <= 15)
									        akShip.RestoreValue(AV, 99999.0) 
                                     EndIf
EndFunction

Function MaintenanceSpaceshipZegoGOn()

    LockGuard (GravityGuard)
		 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
		 ;SpaceShipReference akShip = PlayerRef.GetCurrentShipRef()  
		 Cell shipInterior = akShip.GetLinkedCell(SpaceshipLinkedInterior)
		 Float gravity = 0
		 shipInterior.SetGravityScale(gravity)	 
		 CheckSystemsAtGetUp()
		 SoundEventChargeBeep.Play(PlayerRef, None, None)
		 PlayerRef.Placeatme(ImpulseExplosion, 1, False, false, true, none, none, True)
	     GravDriveRechargeFX.Play(akShip, 0.3)
		 AlertSoundInstance = SoundEventAlert.Play(akShip, None, None)   
		 ShakeAndRumble02()
         StartTimer(30, 20)
EndLockGuard

EndFunction

Function MaintenanceSpaceshipZegoGOff()

    LockGuard (GravityGuard)
         SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
		 ;SpaceShipReference akShip = PlayerRef.GetCurrentShipRef()  
		 Cell shipInterior = akShip.GetLinkedCell(SpaceshipLinkedInterior)
		 Float gravity = 1
		 shipInterior.SetGravityScale(gravity)
		 SoundEventChargeBeep.Play(akShip, None, None)
		 PlayerRef.Placeatme(ImpulseExplosion, 1, False, false, true, none, none, True)
	     GravDriveRechargeFX.Play(akShip, 0.3)
		 wwiseevent.StopInstance(AlertSoundInstance)
		 AlertSoundInstance = -1
		 ShakeAndRumble02()
EndLockGuard

EndFunction

Function EnableO2InShipEnvironment()

     playerShipInteriorLoc = playerShipInteriorLocation.GetLocation()
     
     If playerShipInteriorLoc
        playerShipInteriorLoc.Removekeyword(NotSealedEnvironment)
  EndIf

Endfunction

Function DisableO2InShipEnvironment()

     playerShipInteriorLoc = playerShipInteriorLocation.GetLocation()
     
     If playerShipInteriorLoc
        playerShipInteriorLoc.addkeyword(NotSealedEnvironment)
  EndIf

Endfunction

Function GravDriveOvercharge()
		 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
         SPL_GravDriveCooldown.cast(PlayerRef, PlayerRef)
         akShip.Placeatme(ImpulseExplosion, 1, False, false, true, none, none, True)
	     SoundEventChargeBeep.Play(PlayerRef, None, None)
		 GravDriveRechargeFX.Play(akShip, 0.3)
		 DisableGravJump()
		 ShakeAndRumble02()
EndFunction

Function GravDriveRestart()
		 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
         akShip.Placeatme(ImpulseExplosion, 1, False, false, true, none, none, True)
	     SoundEventChargeBeep.Play(PlayerRef, None, None)
		 GravDriveRechargeFX.Play(akShip, 0.3)
		 EnableGravJump()
		 ShakeAndRumble02()
EndFunction

GlobalVariable Function MalfunctionType()
          
		  SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
          
		  int RandomType = Utility.RandomInt(0, 29)        
          
		  GlobalVariable WeaponDamage = GV_SpaceshipDebuffLowerWeaponDamage
		  GlobalVariable LowerCargoCapacity = GV_SpaceshipDebuffLowerCargoCapacity
		  GlobalVariable DecreasedBoost = GV_SpaceshipDebuffDecreasedBoost
		  GlobalVariable LessShields = GV_SpaceshipDebuffLessShields
		  GlobalVariable GravDriveFuelIncrease = GV_SpaceshipDebuffGravDriveFuelIncrease
		  GlobalVariable GravDriveDistanceDecrease = GV_SpaceshipDebuffGravDriveDistanceDecrease
		  GlobalVariable LongerTargeting = GV_SpaceshipDebuffLongerTargeting
		  GlobalVariable DisabledTargeting = GV_SpaceshipDebuffTargetingOff
		  GlobalVariable DisabledThrusters = GV_SpaceshipDebuffThrustersOff
		  GlobalVariable SlowAutoRepair = GV_SpaceshipDebuffSlowAutoRepair
		  GlobalVariable DisableAutoRepair = GV_SpaceshipDebuffAutoRepair
		  GlobalVariable FuelLeak = GV_SpaceshipDebuffFuelLeak
		  GlobalVariable HeatleechAttack = GV_SpaceshipDebuffHeatleechAttack		  
		  GlobalVariable AmmoFeeder = GV_SpaceshipDebuffSlowerWPNRechargeRate
		  GlobalVariable Maneuverability = GV_SpaceshipDebuffManeuverability
		  GlobalVariable SystemMitigation = GV_SpaceshipDebuffSystemMitigation
		  GlobalVariable ZeroGravity = GV_SpaceshipDebuffGravDriveZeroGravity
		  GlobalVariable HullBreach = GV_SpaceshipDebuffHullBreach
		  GlobalVariable SystemFailure = GV_SpaceshipDebuffSystemFailure
		  GlobalVariable BrokenRefueler = GV_SpaceshipDebuffBrokenRefueler
		  GlobalVariable DisabledO2 = GV_SpaceshipDebuffDisabledO2
		  GlobalVariable DisabledGravDrive = GV_SpaceshipDebuffDisabledGravDrive
		  GlobalVariable DisabledLandingGear = GV_SpaceshipDebuffLandingGearThrustLoss
		  GlobalVariable DisabledDocker = GV_SpaceshipDebuffLongerUndocking
		  GlobalVariable ShortCircuit = GV_SpaceshipDebuffDoorShortCircuit
		  GlobalVariable GasLeak = GV_SpaceshipDebuffGasLeak
		  GlobalVariable AbnormalSpooling = GV_SpaceshipDebuffAbnormalSpoolingPhase
		  GlobalVariable TargetingAP = GV_SpaceshipDebuffTargetingAPCost
		  GlobalVariable CombatBot = GV_SpaceshipDebuffRepairCombatBot
		  GlobalVariable RadiationLeak = GV_SpaceshipDebuffRadiationLeak
 			  
			  If RandomType == 0
				 akShip.addkeyword(KWD_SpaceshipDebuffLowerWeaponDamage)
				 Return WeaponDamage                                
		  ElseIf RandomType == 1
				 akShip.addkeyword(KWD_SpaceshipDebuffLowerCargoCapacity)
				 Return LowerCargoCapacity
		  ElseIf RandomType == 2
				 akShip.addkeyword(KWD_SpaceshipDebuffDecreasedBoost)
				 Return	DecreasedBoost								  
		  ElseIf RandomType == 3
				 akShip.addkeyword(KWD_SpaceshipDebuffLessShields)
				 Return	LessShields								  									  									  
		  ElseIf RandomType == 4		  
				 akShip.addkeyword(KWD_SpaceshipDebuffGravDriveFuelIncrease)
				 Return	GravDriveFuelIncrease								  									  									  
		  ElseIf RandomType == 5		  
				 akShip.addkeyword(KWD_SpaceshipDebuffGravDriveDistanceDecrease)
				 Return	GravDriveDistanceDecrease
		  ElseIf RandomType == 6		  
				 akShip.addkeyword(KWD_SpaceshipDebuffLongerTargeting)
				 Return	LongerTargeting
		  ElseIf RandomType == 7		  
				 akShip.addkeyword(KWD_SpaceshipDebuffTargetingOff)
				 Return	DisabledTargeting
		  ElseIf RandomType == 8		  
				 akShip.addkeyword(KWD_SpaceshipDebuffThrustersOff)
				 Return	DisabledThrusters
		  ElseIf RandomType == 9		  
				 akShip.addkeyword(KWD_SpaceshipDebuffSlowAutoRepair)
				 Return	SlowAutoRepair
		  ElseIf RandomType == 10		  
				 akShip.addkeyword(KWD_SpaceshipDebuffAutoRepair)
				 Return	DisableAutoRepair
		  ElseIf RandomType == 11		 
				 akShip.addkeyword(KWD_SpaceshipDebuffFuelLeak)
				 Return	FuelLeak
		  ElseIf RandomType == 12		 
				 akShip.addkeyword(KWD_SpaceshipDebuffHeatleechAttack)
				 Return	HeatleechAttack
		  ElseIf RandomType == 13		 
				 akShip.addkeyword(KWD_SpaceshipDebuffSlowerWPNRechargeRate)
				 Return	AmmoFeeder
		  ElseIf RandomType == 14		 
				 akShip.addkeyword(KWD_SpaceshipDebuffManeuverability)
				 Return	Maneuverability
		  ElseIf RandomType == 15		 
				 akShip.addkeyword(KWD_SpaceshipDebuffSystemMitigation)
				 Return	SystemMitigation
		  ElseIf RandomType == 16		 
				    If GV_SpaceshipGravityToggle.GetValue() == 1
				       akShip.addkeyword(KWD_SpaceshipDebuffGravDriveZeroGravity)
				       MaintenanceSpaceshipZegoGOn()
				       Return ZeroGravity
				 EndIf
		  ElseIf RandomType == 17		 
				 akShip.addkeyword(KWD_SpaceshipDebuffHullBreach)
				 Return	HullBreach
		  ElseIf RandomType == 18		 
				 akShip.addkeyword(KWD_SpaceshipDebuffSystemFailure)
				 Return	SystemFailure
		  ElseIf RandomType == 19		 
				 akShip.addkeyword(KWD_SpaceshipDebuffBrokenRefueler)
				 Return	BrokenRefueler
		  ElseIf RandomType == 20		 
				 akShip.addkeyword(KWD_SpaceshipDebuffDisabledO2)
				 DisableO2InShipEnvironment()
				 Return	DisabledO2
		  ElseIf RandomType == 21		 
				 akShip.addkeyword(KWD_SpaceshipDebuffDisabledGravDrive)
				 GravDriveOvercharge()
				 Return	DisabledGravDrive
		  ElseIf RandomType == 22		 
				 akShip.addkeyword(KWD_SpaceshipDebuffLandingGearThrustLoss)
				 DisableTakeoff()
				 Return	DisabledLandingGear
		  ElseIf RandomType == 23		 
				 akShip.addkeyword(KWD_SpaceshipDebuffLongerUndocking)
				 DisableTakeoff()
				 Return	DisabledDocker
		  ElseIf RandomType == 24		 
				 akShip.addkeyword(KWD_SpaceshipDebuffDoorShortCircuit)
				 Return	ShortCircuit
		  ElseIf RandomType == 25		 
				 akShip.addkeyword(KWD_SpaceshipDebuffGasLeak)
				 Return	GasLeak
		  ElseIf RandomType == 26		 
				 akShip.addkeyword(KWD_SpaceshipDebuffAbnormalSpoolingPhase)
				 Return	AbnormalSpooling
		  ElseIf RandomType == 27		 
				 akShip.addkeyword(KWD_SpaceshipDebuffTargetingAPCost)
				 Return	TargetingAP
		  ElseIf RandomType == 28		 
				 akShip.addkeyword(KWD_SpaceshipDebuffRepairCombatBot)
				 Return	CombatBot
		  ElseIf RandomType == 29		 
				 akShip.addkeyword(KWD_SpaceshipDebuffRadiationLeak)
				 Return	RadiationLeak
           EndIf         

EndFunction

Function MaintenanceSystemMalfunctionTrigger(ActorValue ReactorClass)
                                       
										 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
	                                     
										 int RandomSystem = Utility.RandomInt(0, 100) 
                                         int OnRandomChance = GV_SpaceshipMaintMalfOnRandomChance.GetValue() as int
										 Float Threshold = GV_SpaceshipMaintBeginRandomDMGThreshold.GetValue()
										 										 				                               
											   If RandomSystem < OnRandomChance ; 10
									                If PlayerRef.GetValuePercentage(ReactorClass) < Threshold ; 0.50 
													   GlobalVariable Trigger = MalfunctionType()
															 If Trigger.GetValue() == 0
											                    Trigger.SetValue(1)                               
												                If GV_SpaceshipMaintMalfGained.GetValue() == 0
																   GV_SpaceshipMaintMalfGained.SetValue(1)
														     EndIf
														  EndIf
									             EndIf
											EndIf

EndFunction

Function MaintenanceMalfunctionTriggerOnRefuelProcess(ActorValue ReactorClass)
                                         
										 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
	                                     
										 int RandomChance = Utility.RandomInt(0, 100) 
										 int OnRefuelChance = GV_SpaceshipMaintMalfOnRefuelChance.GetValue() as int
										 Float Threshold = GV_SpaceshipMaintBeginRefuelDMGThreshold.GetValue()										 
										 
										 If GV_SpaceshipNeedsMaintenanceToggle.GetValue() == 1
				                              If RandomChance < OnRefuelChance ; 10	
									                  If PlayerRef.GetValuePercentage(ReactorClass) < Threshold ; 0.50								                								                         
													        If GV_SpaceshipDebuffBrokenRefueler.GetValue() == 0
											                   GV_SpaceshipDebuffBrokenRefueler.SetValue(1)                               
                                                               akShip.addkeyword(KWD_SpaceshipDebuffBrokenRefueler)
												         		  If GV_SpaceshipMaintMalfGained.GetValue() == 0
																     GV_SpaceshipMaintMalfGained.SetValue(1)
														       EndIf
														 EndIf											
											       EndIf
                                           EndIf
									   EndIf
EndFunction

Function MaintenanceMalfunctionTriggerOnFuelUsage(ActorValue ReactorClass)
                                         
										 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
	                                     int RandomChance = Utility.RandomInt(1, 100) 										 										 
										 int OnFuelUsageChance = GV_SpaceshipMaintMalfOnFuelUsageChance.GetValue() as int
										 Float Threshold = GV_SpaceshipMaintBeginFuelUsageDMGThreshold.GetValue()
										 
										 If GV_SpaceshipNeedsMaintenanceToggle.GetValue() == 1    								                         
											  If RandomChance < OnFuelUsageChance ; 10   
									                  If PlayerRef.GetValuePercentage(ReactorClass) < Threshold ; 0.50
														     If GV_SpaceshipDebuffFuelLeak.GetValue() == 0
											                    GV_SpaceshipDebuffFuelLeak.SetValue(1)                               
                                                                akShip.addkeyword(KWD_SpaceshipDebuffFuelLeak)
												         		  If GV_SpaceshipMaintMalfGained.GetValue() == 0
																     GV_SpaceshipMaintMalfGained.SetValue(1)
														       EndIf
												          EndIf
										           EndIf
										  EndIf
                                       EndIf
EndFunction

Function MaintenanceMalfunctionTriggerOnBoost(ActorValue ReactorClass)
                                        
										 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
	                                     int RandomChance = Utility.RandomInt(1, 100) 										 										 
										 int OnBoostChance = GV_SpaceshipMaintMalfOnBoostChance.GetValue() as int
										 Float Threshold = GV_SpaceshipMaintBeginBoostDMGThreshold.GetValue()   								                         
									         
											 If RandomChance < OnBoostChance ; 10   
									                  If PlayerRef.GetValuePercentage(ReactorClass) < Threshold ; 0.50      
															  If GV_SpaceshipDebuffDecreasedBoost.GetValue() == 0
											                     GV_SpaceshipDebuffDecreasedBoost.SetValue(1)                               
                                                                 akShip.addkeyword(KWD_SpaceshipDebuffDecreasedBoost)
												         		  If GV_SpaceshipMaintMalfGained.GetValue() == 0
																     GV_SpaceshipMaintMalfGained.SetValue(1)
														       EndIf
														   EndIf
										           EndIf
										  EndIf

EndFunction

Function MaintenanceMalfunctionTriggerOnGravJump(ActorValue ReactorClass)
                                         
										 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
	                                     
										 int RandomSystem = Utility.RandomInt(0, 100) 
	                                     int RandomType = Utility.RandomInt(0, 4)                                         
										 int OnGravJumpChance = GV_SpaceshipMaintMalfOnGravJumpChance.GetValue() as int
										 
										 Float Threshold = GV_SpaceshipMaintBeginGravJumpDMGThreshold.GetValue()
										 
										 If GV_SpaceshipNeedsMaintenanceToggle.GetValue() == 1										 
				                               If RandomSystem < OnGravJumpChance ; 10
									                If PlayerRef.GetValuePercentage(ReactorClass) < Threshold ; 0.50
												         
														 If GV_SpaceshipMaintMalfGained.GetValue() == 0
															GV_SpaceshipMaintMalfGained.SetValue(1)
													  EndIf
														 
														 If RandomType == 0
													              If GV_SpaceshipDebuffGravDriveFuelIncrease.GetValue() == 0
											                         GV_SpaceshipDebuffGravDriveFuelIncrease.SetValue(1)                               
                                                                     akShip.addkeyword(KWD_SpaceshipDebuffGravDriveFuelIncrease)
														       EndIf
									                 ElseIf RandomType == 1
													              If GV_SpaceshipDebuffGravDriveDistanceDecrease.GetValue() == 0
											                         GV_SpaceshipDebuffGravDriveDistanceDecrease.SetValue(1)                               
                                                                     akShip.addkeyword(KWD_SpaceshipDebuffGravDriveDistanceDecrease)
														       EndIf
									                 ElseIf RandomType == 2
													              If GV_SpaceshipDebuffGravDriveZeroGravity.GetValue() == 0 && GV_SpaceshipGravityToggle.GetValue() == 1
											                         GV_SpaceshipDebuffGravDriveZeroGravity.SetValue(1)                               
                                                                     akShip.addkeyword(KWD_SpaceshipDebuffGravDriveZeroGravity)
				                                                     MaintenanceSpaceshipZegoGOn()
														       EndIf
									                 ElseIf RandomType == 3
													              If GV_SpaceshipDebuffDisabledGravDrive.GetValue() == 0
											                         GV_SpaceshipDebuffDisabledGravDrive.SetValue(1)                               
                                                                     akShip.addkeyword(KWD_SpaceshipDebuffDisabledGravDrive)
																     GravDriveOvercharge()
														       EndIf
									                 ElseIf RandomType == 4
													              If GV_SpaceshipDebuffAbnormalSpoolingPhase.GetValue() == 0
											                         GV_SpaceshipDebuffAbnormalSpoolingPhase.SetValue(1)                               
                                                                     akShip.addkeyword(KWD_SpaceshipDebuffAbnormalSpoolingPhase)
														       EndIf
									                  EndIf
											     EndIf
											EndIf
											   
											   If akShip.haskeyword(KWD_SpaceshipDebuffGravDriveZeroGravity) == True && GV_SpaceshipGravityToggle.GetValue() == 1                               
                                                      If RandomSystem < 35
				                                         MaintenanceSpaceshipZegoGOn()
											       EndIf
											EndIf
                                      EndIf

EndFunction

Function MaintenanceMalfunctionTriggerOnSubSystemWeaponDestroy()
                                         
										 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
	                                     
										 int RandomSystem = Utility.RandomInt(0, 100) 
                                         int RandomType = Utility.RandomInt(0, 4)
										 int OnDestroyChance = GV_SpaceshipMaintMalfOnDestroyChance.GetValue() as int
										 
										 GlobalVariable MalfunctionTrigger = MalfunctionType()
										 
										 If GV_SpaceshipNeedsMaintenanceToggle.GetValue() == 1
				                               If RandomSystem < OnDestroyChance ; 75

												    If GV_SpaceshipMaintMalfGained.GetValue() == 0
													   GV_SpaceshipMaintMalfGained.SetValue(1)
												 EndIf
									                
													If RandomType == 0									                         
															 If GV_SpaceshipDebuffLowerWeaponDamage.GetValue() == 0
											                    GV_SpaceshipDebuffLowerWeaponDamage.SetValue(1)                               
                                                                akShip.addkeyword(KWD_SpaceshipDebuffLowerWeaponDamage)
														  EndIf
									            ElseIf RandomType == 1	
															 If GV_SpaceshipDebuffLongerTargeting.GetValue() == 0
											                    GV_SpaceshipDebuffLongerTargeting.SetValue(1)                               
                                                                akShip.addkeyword(KWD_SpaceshipDebuffLongerTargeting)
														  EndIf
									            ElseIf RandomType == 2
															 If GV_SpaceshipDebuffTargetingOff.GetValue() == 0
											                    GV_SpaceshipDebuffTargetingOff.SetValue(1)                               
                                                                akShip.addkeyword(KWD_SpaceshipDebuffTargetingOff)
														  EndIf									        
									            ElseIf RandomType == 3
															 If GV_SpaceshipDebuffSlowerWPNRechargeRate.GetValue() == 0
											                    GV_SpaceshipDebuffSlowerWPNRechargeRate.SetValue(1)                               
                                                                akShip.addkeyword(KWD_SpaceshipDebuffSlowerWPNRechargeRate)
														  EndIf	
									            ElseIf RandomType == 4
															 If GV_SpaceshipDebuffTargetingAPCost.GetValue() == 0
											                    GV_SpaceshipDebuffTargetingAPCost.SetValue(1)                               
                                                                akShip.addkeyword(KWD_SpaceshipDebuffTargetingAPCost)
														  EndIf	
											     EndIf
											
											EndIf
                                      EndIf
EndFunction

Function MaintenanceMalfunctionTriggerOnSubSystemEngineDestroy()
                                         
										 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
	                                     
										 int RandomSystem = Utility.RandomInt(0, 100) 
                                         int RandomType = Utility.RandomInt(0, 3)
										 int OnDestroyChance = GV_SpaceshipMaintMalfOnDestroyChance.GetValue() as int
										 
										 If GV_SpaceshipNeedsMaintenanceToggle.GetValue() == 1										 										 
				                               If RandomSystem < OnDestroyChance ; 75

												    If GV_SpaceshipMaintMalfGained.GetValue() == 0
													   GV_SpaceshipMaintMalfGained.SetValue(1)
												 EndIf

									                If RandomType == 0
									                          If GV_SpaceshipDebuffDecreasedBoost.GetValue() == 0
											                     GV_SpaceshipDebuffDecreasedBoost.SetValue(1)                               
                                                                 akShip.addkeyword(KWD_SpaceshipDebuffDecreasedBoost)
														   EndIf
									            ElseIf RandomType == 1
									                          If GV_SpaceshipDebuffThrustersOff.GetValue() == 0
											                     GV_SpaceshipDebuffThrustersOff.SetValue(1)                               
                                                                 akShip.addkeyword(KWD_SpaceshipDebuffThrustersOff)
														   EndIf									        
									            ElseIf RandomType == 2
									                          If GV_SpaceshipDebuffManeuverability.GetValue() == 0
											                     GV_SpaceshipDebuffManeuverability.SetValue(1)                               
                                                                 akShip.addkeyword(KWD_SpaceshipDebuffManeuverability)
														   EndIf									        
									            ElseIf RandomType == 3
									                          If GV_SpaceshipDebuffLandingGearThrustLoss.GetValue() == 0
											                     GV_SpaceshipDebuffLandingGearThrustLoss.SetValue(1)                               
                                                                 akShip.addkeyword(KWD_SpaceshipDebuffLandingGearThrustLoss)
														         ;DisableTakeoff()
														   EndIf
											     EndIf
											EndIf
                                      EndIf
EndFunction

Function MaintenanceMalfunctionTriggerOnSubSystemShieldsDestroy()
                                         
										 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
	                                     
										 int RandomSystem = Utility.RandomInt(0, 100) 
										 int RandomType = Utility.RandomInt(0, 5)
										 int OnDestroyChance = GV_SpaceshipMaintMalfOnDestroyChance.GetValue() as int
										 
										 If GV_SpaceshipNeedsMaintenanceToggle.GetValue() == 1                                         										 
				                               If RandomSystem < OnDestroyChance ; 75

												    If GV_SpaceshipMaintMalfGained.GetValue() == 0
													   GV_SpaceshipMaintMalfGained.SetValue(1)
												 EndIf

									                If RandomType == 0
													          If GV_SpaceshipDebuffLessShields.GetValue() == 0
											                     GV_SpaceshipDebuffLessShields.SetValue(1)                               
                                                                 akShip.addkeyword(KWD_SpaceshipDebuffLessShields)
												             EndIf
									            ElseIf RandomType == 1
									                          If GV_SpaceshipDebuffSystemMitigation.GetValue() == 0
											                     GV_SpaceshipDebuffSystemMitigation.SetValue(1)                               
                                                                 akShip.addkeyword(KWD_SpaceshipDebuffSystemMitigation)
														   EndIf
									            ElseIf RandomType == 2
									                          If GV_SpaceshipDebuffSystemFailure.GetValue() == 0
											                     GV_SpaceshipDebuffSystemFailure.SetValue(1)                               
                                                                 akShip.addkeyword(KWD_SpaceshipDebuffSystemFailure)
														   EndIf
									            ElseIf RandomType == 3
									                          If GV_SpaceshipDebuffLongerUndocking.GetValue() == 0
											                     GV_SpaceshipDebuffLongerUndocking.SetValue(1)                               
                                                                 akShip.addkeyword(KWD_SpaceshipDebuffLongerUndocking)
														   EndIf
									            ElseIf RandomType == 4
									                          If GV_SpaceshipDebuffDoorShortCircuit.GetValue() == 0
											                     GV_SpaceshipDebuffDoorShortCircuit.SetValue(1)                               
                                                                 akShip.addkeyword(KWD_SpaceshipDebuffDoorShortCircuit)
														   EndIf
									            ElseIf RandomType == 5
									                          If GV_SpaceshipDebuffRepairCombatBot.GetValue() == 0
											                     GV_SpaceshipDebuffRepairCombatBot.SetValue(1)                               
                                                                 akShip.addkeyword(KWD_SpaceshipDebuffRepairCombatBot)
														   EndIf
									                 EndIf
											EndIf
                                      EndIf

EndFunction

Function MaintenanceMalfunctionTriggerOnSubSystemGravDriveDestroy()
                                         
										 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef() 
	                                     
										 int RandomSystem = Utility.RandomInt(0, 100) 
	                                     int RandomType = Utility.RandomInt(0, 4)                                         
										 int OnDestroyChance = GV_SpaceshipMaintMalfOnDestroyChance.GetValue() as int
										 
										 If GV_SpaceshipNeedsMaintenanceToggle.GetValue() == 1										 										 
				                               If RandomSystem < OnDestroyChance ; 75

												    If GV_SpaceshipMaintMalfGained.GetValue() == 0
													   GV_SpaceshipMaintMalfGained.SetValue(1)
												 EndIf

									                If RandomType == 0
													         If GV_SpaceshipDebuffGravDriveFuelIncrease.GetValue() == 0
											                    GV_SpaceshipDebuffGravDriveFuelIncrease.SetValue(1)                               
                                                                akShip.addkeyword(KWD_SpaceshipDebuffGravDriveFuelIncrease)
														  EndIf
									            ElseIf RandomType == 1
													         If GV_SpaceshipDebuffGravDriveDistanceDecrease.GetValue() == 0
											                    GV_SpaceshipDebuffGravDriveDistanceDecrease.SetValue(1)                               
                                                                akShip.addkeyword(KWD_SpaceshipDebuffGravDriveDistanceDecrease)
														  EndIf
									            ElseIf RandomType == 2
													         If GV_SpaceshipDebuffGravDriveZeroGravity.GetValue() == 0 && GV_SpaceshipGravityToggle.GetValue() == 1
											                    GV_SpaceshipDebuffGravDriveZeroGravity.SetValue(1)                               
                                                                akShip.addkeyword(KWD_SpaceshipDebuffGravDriveZeroGravity)				                                                        
				                                                MaintenanceSpaceshipZegoGOn()
														  EndIf
									            ElseIf RandomType == 3
													         If GV_SpaceshipDebuffDisabledGravDrive.GetValue() == 0
											                    GV_SpaceshipDebuffDisabledGravDrive.SetValue(1)                               
                                                                akShip.addkeyword(KWD_SpaceshipDebuffDisabledGravDrive)
																GravDriveOvercharge()
														  EndIf
									            ElseIf RandomType == 4
													         If GV_SpaceshipDebuffAbnormalSpoolingPhase.GetValue() == 0
											                    GV_SpaceshipDebuffAbnormalSpoolingPhase.SetValue(1)                               
                                                                akShip.addkeyword(KWD_SpaceshipDebuffAbnormalSpoolingPhase)
														  EndIf
									             EndIf
											EndIf
											   
											   If akShip.haskeyword(KWD_SpaceshipDebuffGravDriveZeroGravity) == True && GV_SpaceshipGravityToggle.GetValue() == 1                             
                                                      If RandomSystem < 35
				                                         MaintenanceSpaceshipZegoGOn()
											       EndIf
											EndIf
                                      EndIf

EndFunction

Function MaintenanceMalfunctionTriggerOnHitHull(ActorValue ReactorClass)
                                         
										 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
	                                     
										 int RandomSystem = Utility.RandomInt(0, 100) 
                                         int RandomType = Utility.RandomInt(0, 11) 
										 int OnHullHitChance = GV_SpaceshipMaintMalfOnHullHitChance.GetValue() as int
										 
										 Float Threshold = GV_SpaceshipMaintBeginHullDMGThreshold.GetValue()
										 
										 If GV_SpaceshipNeedsMaintenanceToggle.GetValue() == 1										 										 
				                               If RandomSystem < OnHullHitChance ; 15
									                If PlayerRef.GetValuePercentage(ReactorClass) < Threshold ; 0.70

												         If GV_SpaceshipMaintMalfGained.GetValue() == 0
													        GV_SpaceshipMaintMalfGained.SetValue(1)
												      EndIf

									                     If RandomType == 0
													               If GV_SpaceshipDebuffLowerCargoCapacity.GetValue() == 0
											                          GV_SpaceshipDebuffLowerCargoCapacity.SetValue(1)                               
                                                                      akShip.addkeyword(KWD_SpaceshipDebuffLowerCargoCapacity)
														        EndIf
									                 ElseIf RandomType == 1
													               If GV_SpaceshipDebuffFuelLeak.GetValue() == 0
											                          GV_SpaceshipDebuffFuelLeak.SetValue(1)                               
                                                                      akShip.addkeyword(KWD_SpaceshipDebuffFuelLeak)
														        EndIf
									                 ElseIf RandomType == 2
													               If GV_SpaceshipDebuffSlowAutoRepair.GetValue() == 0
											                          GV_SpaceshipDebuffSlowAutoRepair.SetValue(1)                               
                                                                      akShip.addkeyword(KWD_SpaceshipDebuffSlowAutoRepair)
														        EndIf
									                 ElseIf RandomType == 3
													               If GV_SpaceshipDebuffAutoRepair.GetValue() == 0
											                          GV_SpaceshipDebuffAutoRepair.SetValue(1)                               
                                                                      akShip.addkeyword(KWD_SpaceshipDebuffAutoRepair)
														        EndIf
									                 ElseIf RandomType == 4
									                               If GV_SpaceshipDebuffHullBreach.GetValue() == 0
											                          GV_SpaceshipDebuffHullBreach.SetValue(1)                               
                                                                      akShip.addkeyword(KWD_SpaceshipDebuffHullBreach)
														        EndIf
									                 ElseIf RandomType == 5
									                               If GV_SpaceshipDebuffDisabledO2.GetValue() == 0
											                          GV_SpaceshipDebuffDisabledO2.SetValue(1)                               
                                                                      akShip.addkeyword(KWD_SpaceshipDebuffDisabledO2)
																      DisableO2InShipEnvironment()
														        EndIf
									                 ElseIf RandomType == 6
									                               If GV_SpaceshipDebuffLandingGearThrustLoss.GetValue() == 0
											                          GV_SpaceshipDebuffLandingGearThrustLoss.SetValue(1)                               
                                                                      akShip.addkeyword(KWD_SpaceshipDebuffLandingGearThrustLoss)
																      ;DisableTakeoff()
														        EndIf
									                 ElseIf RandomType == 7
									                               If GV_SpaceshipDebuffLongerUndocking.GetValue() == 0
											                          GV_SpaceshipDebuffLongerUndocking.SetValue(1)                               
                                                                      akShip.addkeyword(KWD_SpaceshipDebuffLongerUndocking)
																      ;DisableTakeoff()
														        EndIf
									                 ElseIf RandomType == 8
									                               If GV_SpaceshipDebuffDoorShortCircuit.GetValue() == 0
											                          GV_SpaceshipDebuffDoorShortCircuit.SetValue(1)                               
                                                                      akShip.addkeyword(KWD_SpaceshipDebuffDoorShortCircuit)
														        EndIf
									                 ElseIf RandomType == 9
									                               If GV_SpaceshipDebuffGasLeak.GetValue() == 0
											                          GV_SpaceshipDebuffGasLeak.SetValue(1)                               
                                                                      akShip.addkeyword(KWD_SpaceshipDebuffGasLeak)
														        EndIf
									                 ElseIf RandomType == 10
									                               If GV_SpaceshipDebuffRepairCombatBot.GetValue() == 0
											                          GV_SpaceshipDebuffRepairCombatBot.SetValue(1)                               
                                                                      akShip.addkeyword(KWD_SpaceshipDebuffRepairCombatBot)
														        EndIf
									                 ElseIf RandomType == 11
									                               If GV_SpaceshipDebuffRadiationLeak.GetValue() == 0
											                          GV_SpaceshipDebuffRadiationLeak.SetValue(1)                               
                                                                      akShip.addkeyword(KWD_SpaceshipDebuffRadiationLeak)
														        EndIf
									                  EndIf
											     EndIf
											EndIf
                                      EndIf

EndFunction

Function MaintenanceSystemDMGTrigger(ActorValue ReactorClass)
                                         
										 Perk MaintenanceOptimization = Game.GetFormFromFile(0x00034CC7, "SFBGS00D.esm") as Perk 
                                         SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
										 
										 Float OptimizationCheck = OptimizationCheck(MaintenanceOptimization)
	                                     Float MaintenanceDMG = GV_SpaceshipMaintenanceDMG.GetValue() / OptimizationCheck	
	                                     Float MaintenanceDMGPerk01 = GV_SpaceshipMaintenanceDMG.GetValue() / 1.25 / OptimizationCheck
	                                     Float MaintenanceDMGPerk02 = GV_SpaceshipMaintenanceDMG.GetValue() / 1.50 / OptimizationCheck
	                                     Float MaintenanceDMGPerk03 = GV_SpaceshipMaintenanceDMG.GetValue() / 1.75 / OptimizationCheck
	                                     Float MaintenanceDMGPerk04 = GV_SpaceshipMaintenanceDMG.GetValue() / 2.00 / OptimizationCheck

				                         If ConditionFormMaintenanceAmount04.IsTrue(PlayerRef, None)
									        PlayerRef.Damagevalue(ReactorClass, MaintenanceDMGPerk04)                               
							                GV_StoreMaintenanceConsumage.SetValue(MaintenanceDMGPerk04)
									 ElseIf ConditionFormMaintenanceAmount03.IsTrue(PlayerRef, None)
									        PlayerRef.Damagevalue(ReactorClass, MaintenanceDMGPerk03)
							                GV_StoreMaintenanceConsumage.SetValue(MaintenanceDMGPerk03)
							         ElseIf ConditionFormMaintenanceAmount02.IsTrue(PlayerRef, None)
									        PlayerRef.Damagevalue(ReactorClass, MaintenanceDMGPerk02)									  
							                GV_StoreMaintenanceConsumage.SetValue(MaintenanceDMGPerk02)
							         ElseIf ConditionFormMaintenanceAmount01.IsTrue(PlayerRef, None)
									        PlayerRef.Damagevalue(ReactorClass, MaintenanceDMGPerk01)									  									  									  
							                GV_StoreMaintenanceConsumage.SetValue(MaintenanceDMGPerk01)
						             Else		  
									        PlayerRef.Damagevalue(ReactorClass, MaintenanceDMG)									  									  									  
							                GV_StoreMaintenanceConsumage.SetValue(MaintenanceDMG)
									  EndIf

									     If PlayerRef.GetValue(ReactorClass) <= 0.00                               
							                akShip.Kill(None) 
									  EndIf

EndFunction

Float Function MaintenanceDMGAfterGravJumpCalcForInfo()
										 
										 Perk MaintenanceOptimization = Game.GetFormFromFile(0x00034CC7, "SFBGS00D.esm") as Perk 
                                         Int PowerLevel = PlayerRef.GetItemCount(GravDrivePowerLevel)                                         
										 
										 Float OptimizationCheck = OptimizationCheck(MaintenanceOptimization)                                         
										 Float MaintenanceDMG = GV_SpaceshipMaintenanceDMGOnGravJump.GetValue() * PowerLevel / OptimizationCheck
                                         Float MaintenanceDMGPerk01 = GV_SpaceshipMaintenanceDMGOnGravJump.GetValue() * PowerLevel / 1.25 / OptimizationCheck
                                         Float MaintenanceDMGPerk02 = GV_SpaceshipMaintenanceDMGOnGravJump.GetValue() * PowerLevel / 1.50 / OptimizationCheck
                                         Float MaintenanceDMGPerk03 = GV_SpaceshipMaintenanceDMGOnGravJump.GetValue() * PowerLevel / 1.70 / OptimizationCheck
                                         Float MaintenanceDMGPerk04 = GV_SpaceshipMaintenanceDMGOnGravJump.GetValue() * PowerLevel / 2.00 / OptimizationCheck

				                         If ConditionFormMaintenanceAmount04.IsTrue(PlayerRef, None)
									        Return MaintenanceDMGPerk04                                                           		  
				                     ElseIf ConditionFormMaintenanceAmount03.IsTrue(PlayerRef, None)
									        Return MaintenanceDMGPerk03                               			                                  		  
				                     ElseIf ConditionFormMaintenanceAmount02.IsTrue(PlayerRef, None)
									        Return MaintenanceDMGPerk02                               
							         ElseIf ConditionFormMaintenanceAmount01.IsTrue(PlayerRef, None)
									        Return MaintenanceDMGPerk01							   						   
							          Else
									        Return MaintenanceDMG
									  EndIf

EndFunction

Function MaintenanceSystemDMGGravJumpTrigger(ActorValue ReactorClass)
			                             
										 Perk MaintenanceOptimization = Game.GetFormFromFile(0x00034CC7, "SFBGS00D.esm") as Perk 
                                         Int PowerLevel = PlayerRef.GetItemCount(GravDrivePowerLevel)                                         
                                         
										 Float OptimizationCheck = OptimizationCheck(MaintenanceOptimization)
										 Float MaintenanceDMG = GV_SpaceshipMaintenanceDMGOnGravJump.GetValue() * PowerLevel / OptimizationCheck
                                         Float MaintenanceDMGPerk01 = GV_SpaceshipMaintenanceDMGOnGravJump.GetValue() * PowerLevel / 1.25 / OptimizationCheck
                                         Float MaintenanceDMGPerk02 = GV_SpaceshipMaintenanceDMGOnGravJump.GetValue() * PowerLevel / 1.50 / OptimizationCheck
                                         Float MaintenanceDMGPerk03 = GV_SpaceshipMaintenanceDMGOnGravJump.GetValue() * PowerLevel / 1.70 / OptimizationCheck
                                         Float MaintenanceDMGPerk04 = GV_SpaceshipMaintenanceDMGOnGravJump.GetValue() * PowerLevel / 2.00 / OptimizationCheck

				                         If ConditionFormMaintenanceAmount04.IsTrue(PlayerRef, None)
									        PlayerRef.Damagevalue(ReactorClass, MaintenanceDMGPerk04)                                                           		  
				                     ElseIf ConditionFormMaintenanceAmount03.IsTrue(PlayerRef, None)
									        PlayerRef.Damagevalue(ReactorClass, MaintenanceDMGPerk03)                               			                                  		  
				                     ElseIf ConditionFormMaintenanceAmount02.IsTrue(PlayerRef, None)
									        PlayerRef.Damagevalue(ReactorClass, MaintenanceDMGPerk02)                               
							         ElseIf ConditionFormMaintenanceAmount01.IsTrue(PlayerRef, None)
									        PlayerRef.Damagevalue(ReactorClass, MaintenanceDMGPerk01)							   						   
							          Else
									        PlayerRef.Damagevalue(ReactorClass, MaintenanceDMG)
									  EndIf	

EndFunction

Function MaintenanceSystemAlarmTrigger(ActorValue ReactorClass)

                                         SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()

				                         If PlayerRef.GetValuePercentage(ReactorClass) < 0.20
										           If GV_SpaceshipMaintenanceAtWork.GetValue() == 0
									                  If MaintenanceEmergency == False
														 StartTimer(2, 3)
														 wwiseevent.StopInstance(MaintenanceEmergencySoundInstance)
									                     MaintenanceEmergencySoundInstance = -1
														 MaintenanceEmergencySoundInstance = SoundEventMaintenanceEmergency.Play(akShip, None, None)
									                     MaintenanceEmergency = True
								                   EndIf
								                EndIf
                                     Else
									              If MaintenanceEmergency == True
													 CancelTimer(3)
													 wwiseevent.StopInstance(MaintenanceEmergencySoundInstance)
													 MaintenanceEmergencySoundInstance = -1
									                 MaintenanceEmergency = False
								               EndIf								
								      EndIf
EndFunction

Function MaintenanceSystemDamageSubSystems(ActorValue ReactorClass)
										 
										 Perk MaintenanceOptimization = Game.GetFormFromFile(0x00034CC7, "SFBGS00D.esm") as Perk 
                                         SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef() 
	                                     
										 int RandomSystem = Utility.RandomInt(0, 7)
                                         
										 Float Threshold = GV_SpaceshipMaintBeginSubSystemDMGThreshold.GetValue()
										 Float OptimizationCheck = OptimizationCheck(MaintenanceOptimization)										 
										 Float fPercentDamageWeapons = 6 / OptimizationCheck	
                                         Float fPercentDamageEngines = 12 / OptimizationCheck	
                                         Float fPercentDamageGravDrive = 10 / OptimizationCheck    
                                         Float fPercentDamageShields = 8 / OptimizationCheck    	
                                         Float fPercentDamageHull = 2 / OptimizationCheck 	
	
                                         Float DamageWeapon1 = (akShip.GetValue(SpaceshipWeaponHealth) / 100) * fPercentDamageWeapons
                                         Float DamageWeapon2 = (akShip.GetValue(SpaceshipWeaponHealth02) / 100) * fPercentDamageWeapons	
                                         Float DamageWeapon3 = (akShip.GetValue(SpaceshipWeaponHealth03) / 100) * fPercentDamageWeapons
                                         Float DamageEngine = (akShip.GetValue(SpaceshipSystemEngineHealth) / 100) * fPercentDamageEngines
                                         Float DamageShield = (akShip.GetValue(SpaceshipShieldHealth) / 100) * fPercentDamageShields	
                                         Float DamageGravJump = (akShip.GetValue(SpaceshipSystemGravdriveHealth) / 100) * fPercentDamageGravDrive
                                         Float DamageHealth = (akShip.GetValue(SpaceshipHealth) / 100) * fPercentDamageHull

				                         If PlayerRef.GetValuePercentage(ReactorClass) < Threshold ; 0.70
        													
													If (RandomSystem == 0)
									                    akShip.DamageValue(SpaceshipWeaponHealth, DamageWeapon1)
									            ElseIf (RandomSystem == 1)
									                    akShip.DamageValue(SpaceshipWeaponHealth02, DamageWeapon2)
									            ElseIf (RandomSystem == 2)
									                    akShip.DamageValue(SpaceshipWeaponHealth03, DamageWeapon3)									  
									            ElseIf (RandomSystem == 3)
                                                        akShip.DamageValue(SpaceshipSystemEngineHealth, DamageEngine)
									            ElseIf (RandomSystem == 4)
                                                        akShip.DamageValue(SpaceshipShieldHealth, DamageShield)
									            ElseIf (RandomSystem == 5)
                                                        akShip.DamageValue(SpaceshipSystemGravdriveHealth, DamageGravJump)
									            ElseIf (RandomSystem == 6)
                                                        akShip.DamageValue(SpaceshipHealth, DamageHealth)
									            ElseIf (RandomSystem == 7)
									                    akShip.DamageValue(SpaceshipHealth, DamageHealth)
											            akShip.DamageValue(SpaceshipWeaponHealth, DamageWeapon1)
											            akShip.DamageValue(SpaceshipWeaponHealth02, DamageWeapon2)
                                                        akShip.DamageValue(SpaceshipWeaponHealth03, DamageWeapon3)
											            akShip.DamageValue(SpaceshipSystemEngineHealth, DamageEngine)
											            akShip.DamageValue(SpaceshipShieldHealth, DamageShield)
											            akShip.DamageValue(SpaceshipSystemGravdriveHealth, DamageGravJump)
                                                 EndIf							
								      EndIf
EndFunction

Function MalfDockerTriggerOnDocking()
        
										 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
	                                     ActorValue ReactorClassCheck = SetProperMaitenanceClass()
										 int RandomSystem = Utility.RandomInt(0, 100) 
										 int OnRandomChance = GV_SpaceshipMaintMalfOnRandomChance.GetValue() as int
										 Float Threshold = GV_SpaceshipMaintBeginRandomDMGThreshold.GetValue()
										 
										 If GV_SpaceshipNeedsMaintenanceToggle.GetValue() == 1                                         										 
				                               If RandomSystem < OnRandomChance ; 10
                                                      If PlayerRef.GetValuePercentage(ReactorClassCheck) < Threshold ; 0.50
												            If GV_SpaceshipMaintMalfGained.GetValue() == 0
													           GV_SpaceshipMaintMalfGained.SetValue(1)
												         EndIf
									                
													        If GV_SpaceshipDebuffLongerUndocking.GetValue() == 0
											                   GV_SpaceshipDebuffLongerUndocking.SetValue(1)                               
                                                               akShip.addkeyword(KWD_SpaceshipDebuffLongerUndocking)
												         EndIf
											       EndIf
											EndIf
                                      EndIf				 														
EndFunction

Function MalfDockerTriggerOnTakeoff()
        
										 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
	                                     ActorValue ReactorClassCheck = SetProperMaitenanceClass()
										 int RandomSystem = Utility.RandomInt(0, 100) 
										 int OnRandomChance = GV_SpaceshipMaintMalfOnRandomChance.GetValue() as int
										 Float Threshold = GV_SpaceshipMaintBeginRandomDMGThreshold.GetValue()
										 
										 If GV_SpaceshipNeedsMaintenanceToggle.GetValue() == 1                                         										 
				                               If RandomSystem < OnRandomChance ; 10
                                                      If PlayerRef.GetValuePercentage(ReactorClassCheck) < Threshold ; 0.50
												            If GV_SpaceshipMaintMalfGained.GetValue() == 0
													           GV_SpaceshipMaintMalfGained.SetValue(1)
												         EndIf
									                
													        If GV_SpaceshipDebuffLandingGearThrustLoss.GetValue() == 0
											                   GV_SpaceshipDebuffLandingGearThrustLoss.SetValue(1)                               
                                                               akShip.addkeyword(KWD_SpaceshipDebuffLandingGearThrustLoss)
												         EndIf
											       EndIf
											EndIf
                                      EndIf					 														
EndFunction

Function EmergencyRepairBots()

              SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
       
	          If PlayerRef.Hasperk(SpaceshipEmergencyRepairBotsPerk) == False
			     PlayerRef.AddPerk(SpaceshipEmergencyRepairBotsPerk, False)
                 akShip.Removeitem(SpaceshipEmergencyRepairBotsMisc, 1, True, None)
				 BotsStartSoundInstance = SoundEventBotsRepairStart.Play(akShip, None, None)	
				 StartTimer(2, 14)
	      Else
                 MSG_BotsAlreadyInUse.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)  
           EndIf

EndFunction

Function EmergencyRepairBotsAuto()

              SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
       
	          If PlayerRef.Hasperk(SpaceshipEmergencyRepairBotsPerk) == False
			     PlayerRef.AddPerk(SpaceshipEmergencyRepairBotsPerk, False)
                 akShip.Removeitem(SpaceshipEmergencyRepairBotsMisc, 1, True, None)
				 BotsStartSoundInstance = SoundEventBotsRepairStart.Play(akShip, None, None)	
				 StartTimer(2, 14)   
           EndIf

EndFunction

Float Function BonusThresholds()

      Float SpaceshipEngineering00 = 0.0
      Float SpaceshipEngineering01 = 0.04
      Float SpaceshipEngineering02 = 0.08
      Float SpaceshipEngineering03 = 0.12
      Float SpaceshipEngineering04 = 0.15

		If ConditionFormMaintenanceAmount04.IsTrue(PlayerRef, None)    
		   Return SpaceshipEngineering04 
	ElseIf ConditionFormMaintenanceAmount03.IsTrue(PlayerRef, None)  
	       Return SpaceshipEngineering03
	ElseIf ConditionFormMaintenanceAmount02.IsTrue(PlayerRef, None)  	 
           Return SpaceshipEngineering02
	ElseIf ConditionFormMaintenanceAmount01.IsTrue(PlayerRef, None) 
           Return SpaceshipEngineering01 
Else	
           Return SpaceshipEngineering00
     EndIf

EndFunction

Function MaintenanceRepairKit()

   SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()  
   ActorValue CheckMaintenanceClass = SetProperMaitenanceClass() 
   Float MaintenanceValues = PlayerRef.GetValuePercentage(CheckMaintenanceClass)
   
   Float EngineSystemsBonusThresholds = BonusThresholds()     
   Float ThresholdMin = 0.25 - EngineSystemsBonusThresholds 
   Float ThresholdMax = 0.75 + EngineSystemsBonusThresholds
    
   If akShip.GetItemCount(SpaceshipMaintenanceKitMisc) > 0        
		If MaintenanceValues < ThresholdMin 
		   MSG_TooLateToMaintain.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)                  
    ElseIf MaintenanceValues >= ThresholdMax
           MSG_MaintainLimit.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
      Else
				  If ConditionFormMaintenanceAmount03.IsTrue(PlayerRef, None)
                     MaintenanceKitTrigger()
             Else
		                 If akShip.IsDocked() == True || akShip.IsLanded() == True
                            MaintenanceKitTrigger()
	                 Else
                            MSG_MaintenanceRules.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	                  EndIf
               EndIf

     EndIf
Else
    MSG_NoMaintenanceKitsAvailable.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
EndIf

EndFunction

Function MaintenanceRepairKitHullOnly()

   SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()  
    
   If akShip.GetItemCount(SpaceshipMaintenanceKitMisc) > 0        
		   If ConditionFormMaintenanceAmount03.IsTrue(PlayerRef, None)
              MaintenanceKitTriggerHullOnly()
        Else
		          If akShip.IsDocked() == True || akShip.IsLanded() == True
                     MaintenanceKitTriggerHullOnly()
	           Else
                     MSG_MaintenanceRules.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	           EndIf
        EndIf
Else
    MSG_NoMaintenanceKitsAvailable.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
EndIf

EndFunction

Function MaintenanceKitTrigger()

                  SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()      
				  
				  If GV_SpaceshipMaintenanceAtWork.GetValue() == 0
                     GV_SpaceshipMaintenanceAtWork.SetValue(1)
	  			     akShip.Removeitem(SpaceshipMaintenanceKitMisc, 1, True, None)
			 		 MaintenanceSpecialFX()					 
						 If ConditionFormMaintenanceAmount03.IsTrue(PlayerRef, None)
					        StartTimer(20, 7)
			          Else
			                StartTimer(60, 7)
			          EndIf
			  Else
         	         MSG_MaintenanceKitAlreadyInUse.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)  
         	   EndIf

EndFunction

Function MaintenanceKitTriggerHullOnly()

                  SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()      
				  
				  If GV_SpaceshipMaintenanceAtWork.GetValue() == 0
                     GV_SpaceshipMaintenanceAtWork.SetValue(1)
	  			     akShip.Removeitem(SpaceshipMaintenanceKitMisc, 1, True, None)
			 		 MaintenanceSpecialFX()					 
						 If ConditionFormMaintenanceAmount03.IsTrue(PlayerRef, None)
					        StartTimer(10, 27)
			          Else
			                StartTimer(30, 27)
			          EndIf
			  Else
         	         MSG_MaintenanceKitAlreadyInUse.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)  
         	   EndIf

EndFunction

Function MaintenanceAtShipService()
                                     
	SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
						             									 
	GV_SpaceshipMaintenanceAtWork.SetValue(0) 									 
	GV_SpaceshipSystemDamaged.SetValue(0)
    
	   If MaintenanceEmergency == True
	      ShipOnFire.Stop(akShip)
		  MaintenanceEmergency = False								     
	      wwiseevent.StopInstance(MaintenanceEmergencySoundInstance)
          MaintenanceEmergencySoundInstance = -1
	EndIf
	   If akShip.GetReactorClassKeyword() == SpaceshipModuleClassA
	      PlayerRef.RestoreValue(SpaceshipReactorClassA, 99999.0)                               
   ElseIf akShip.GetReactorClassKeyword() == SpaceshipModuleClassB
	      PlayerRef.RestoreValue(SpaceshipReactorClassB, 99999.0)
   ElseIf akShip.GetReactorClassKeyword() == SpaceshipModuleClassC
	      PlayerRef.RestoreValue(SpaceshipReactorClassC, 99999.0)									  
   ElseIf akShip.GetReactorClassKeyword() == SpaceshipModuleClassM
	      PlayerRef.RestoreValue(SpaceshipReactorClassM, 99999.0)	
    EndIf
	akShip.RestoreValue(SpaceshipHealth, 99999.0)
	akShip.RestoreValue(SpaceshipSystemEngineHealth, 99999.0) 
	akShip.RestoreValue(SpaceshipShieldHealth, 99999.0) 
	akShip.RestoreValue(SpaceshipSystemGravdriveHealth, 99999.0) 
	akShip.RestoreValue(SpaceshipWeaponHealth, 99999.0) 
	akShip.RestoreValue(SpaceshipWeaponHealth02, 99999.0)
	akShip.RestoreValue(SpaceshipWeaponHealth03, 99999.0) 									 									 
	SoundEventBotsRepairStart.Play(akShip, None, None)
    CalculateRepairCost()

EndFunction

Function MaintenanceKitService()
                                     
	SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
    						             									 
	GV_SpaceshipMaintenanceAtWork.SetValue(0) 									 
	GV_SpaceshipSystemDamaged.SetValue(0)					                                                       									 
	   	   
	   If akShip.GetReactorClassKeyword() == SpaceshipModuleClassA
	      MaintenanceKitServiceRestore(SpaceshipReactorClassA)
   ElseIf akShip.GetReactorClassKeyword() == SpaceshipModuleClassB
	      MaintenanceKitServiceRestore(SpaceshipReactorClassB)
   ElseIf akShip.GetReactorClassKeyword() == SpaceshipModuleClassC
	      MaintenanceKitServiceRestore(SpaceshipReactorClassC)		
   ElseIf akShip.GetReactorClassKeyword() == SpaceshipModuleClassM
	      MaintenanceKitServiceRestore(SpaceshipReactorClassM)	
    EndIf
	
	akShip.RestoreValue(SpaceshipHealth, 99999.0)
	akShip.RestoreValue(SpaceshipSystemEngineHealth, 99999.0) 
	akShip.RestoreValue(SpaceshipShieldHealth, 99999.0) 
	akShip.RestoreValue(SpaceshipSystemGravdriveHealth, 99999.0) 
	akShip.RestoreValue(SpaceshipWeaponHealth, 99999.0) 
	akShip.RestoreValue(SpaceshipWeaponHealth02, 99999.0)
	akShip.RestoreValue(SpaceshipWeaponHealth03, 99999.0) 									 									 
		
	SoundEventBotsRepairStart.Play(akShip, None, None)
    CalculateRepairCost()

EndFunction

Function MaintenanceKitServiceHullOnly()
                                     
	SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
    						             									 
	GV_SpaceshipMaintenanceAtWork.SetValue(0)					                                                       									 	   	   	
	akShip.RestoreValue(SpaceshipHealth, 99999.0)								 									 		
	SoundEventBotsRepairStart.Play(akShip, None, None)
    CalculateRepairCost()

EndFunction

Float Function SpaceshipEngineeringBuff()

      Float PlayerSpaceshipEngineer0 = 20.0
      Float PlayerSpaceshipEngineer1 = 25.0
      Float PlayerSpaceshipEngineer2 = 30.0
      Float PlayerSpaceshipEngineer3 = 35.0
      Float PlayerSpaceshipEngineer4 = 40.0

		If ConditionFormMaintenanceAmount04.IsTrue(PlayerRef, None)     
		   Return PlayerSpaceshipEngineer4 
	ElseIf ConditionFormMaintenanceAmount03.IsTrue(PlayerRef, None)  
	       Return PlayerSpaceshipEngineer3
	ElseIf ConditionFormMaintenanceAmount02.IsTrue(PlayerRef, None)	 
           Return PlayerSpaceshipEngineer2
	ElseIf ConditionFormMaintenanceAmount01.IsTrue(PlayerRef, None)
           Return PlayerSpaceshipEngineer1 
Else	
           Return PlayerSpaceshipEngineer0
     EndIf 

EndFunction

Actor Function FindActorSpaceshipEngineering()

	int i = 0
    While i < CurrentCrew.GetCount()
        Actor Engineer = CurrentCrew.GetAt(i) as Actor
        if Engineer && Engineer.HasPerk(SpaceshipCrewSpaceshipEngineering) 
            return Engineer
        EndIf
        i += 1
    EndWhile
    return none
EndFunction

Function MaintenanceKitServiceRestore(ActorValue ReactorClass)
           
		   Actor FindSpaceshipEngineer = FindActorSpaceshipEngineering()
		   Float BuffAmountFromPlayer = SpaceshipEngineeringBuff()
		   
		   If FindSpaceshipEngineer 		   
		      PlayerRef.RestoreValue(ReactorClass, BuffAmountFromPlayer + 10.0)          
         Else          		   	                                      
		      PlayerRef.RestoreValue(ReactorClass, BuffAmountFromPlayer)		   
		EndIf
		   
		   Float FinalResult = 0.0		   
		   FinalResult = (PlayerRef.GetBaseValue(ReactorClass) * PlayerRef.GetValuePercentage(ReactorClass)) - (PlayerRef.GetBaseValue(ReactorClass) * 0.85) 
		   
		   If PlayerRef.GetValuePercentage(ReactorClass) > 0.85                           
		      PlayerRef.DamageValue(ReactorClass, FinalResult)						 
        EndIf

EndFunction

Function CalculateRepairCost()

     SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
     ActorValue CheckMaintenanceClass = SetProperMaitenanceClass()
	 Float RepBonus = RepCalculator()
	 Float DiscountCalculate = DiscountCost()      
     Float RepairHullCostPerUnit = GV_SpaceshipRepairHullCostPerUnit.GetValue()
     Float RepairSystemCostPerUnit = GV_SpaceshipRepairSystemCostPerUnit.GetValue()
     Float MaintenanceCostPerUnit = GV_SpaceshipRepairMaintenanceCostPerUnit.GetValue()
	 Float HullDMGAmount = 0.0
     Float MaintenanceDMGAmount = 0.0
     Float SystemDMGAmountWeapon01 = 0.0
     Float SystemDMGAmountWeapon02 = 0.0
     Float SystemDMGAmountWeapon03 = 0.0
     Float SystemDMGAmountEngine = 0.0
     Float SystemDMGAmountShield = 0.0
     Float SystemDMGAmountGravDrive = 0.0
     Float AdditionalClassCostMult = 0.0
     Float MaintenanceKitDiscount = 0.0
     Float RepairCost = 0.0
	 	
	If akShip

	   If akShip.GetReactorClassKeyword() == SpaceshipModuleClassA                     
		  MaintenanceDMGAmount = PlayerRef.GetBaseValue(SpaceshipReactorClassA) - PlayerRef.GetValue(SpaceshipReactorClassA)
          AdditionalClassCostMult = 1.0
   ElseIf akShip.GetReactorClassKeyword() == SpaceshipModuleClassB                     
		  MaintenanceDMGAmount = PlayerRef.GetBaseValue(SpaceshipReactorClassB) - PlayerRef.GetValue(SpaceshipReactorClassB)
          AdditionalClassCostMult = 1.40
   ElseIf akShip.GetReactorClassKeyword() == SpaceshipModuleClassC                     
		  MaintenanceDMGAmount = PlayerRef.GetBaseValue(SpaceshipReactorClassC) - PlayerRef.GetValue(SpaceshipReactorClassC)
          AdditionalClassCostMult = 1.80
   ElseIf akShip.GetReactorClassKeyword() == SpaceshipModuleClassM                     
		  MaintenanceDMGAmount = PlayerRef.GetBaseValue(SpaceshipReactorClassM) - PlayerRef.GetValue(SpaceshipReactorClassM)
          AdditionalClassCostMult = 2.40
    EndIf
	   
	   If akShip.GetValue(SpaceshipHealth) > akShip.GetBaseValue(SpaceshipHealth)	   
	      HullDMGAmount = akShip.GetValue(SpaceshipHealth) - akShip.GetBaseValue(SpaceshipHealth)
   Else
	      HullDMGAmount = akShip.GetBaseValue(SpaceshipHealth) - akShip.GetValue(SpaceshipHealth)
	EndIf
	   
	   If akShip.GetValue(SpaceshipWeaponHealth) > akShip.GetBaseValue(SpaceshipWeaponHealth)	   
	      SystemDMGAmountWeapon01 = akShip.GetValue(SpaceshipWeaponHealth) - akShip.GetBaseValue(SpaceshipWeaponHealth)
   Else
          SystemDMGAmountWeapon01 = akShip.GetBaseValue(SpaceshipWeaponHealth) - akShip.GetValue(SpaceshipWeaponHealth)
    EndIf

	   If akShip.GetValue(SpaceshipWeaponHealth02) > akShip.GetBaseValue(SpaceshipWeaponHealth02)	   
	      SystemDMGAmountWeapon02 = akShip.GetValue(SpaceshipWeaponHealth02) - akShip.GetBaseValue(SpaceshipWeaponHealth02)
   Else
          SystemDMGAmountWeapon02 = akShip.GetBaseValue(SpaceshipWeaponHealth02) - akShip.GetValue(SpaceshipWeaponHealth02)
    EndIf

	   If akShip.GetValue(SpaceshipWeaponHealth03) > akShip.GetBaseValue(SpaceshipWeaponHealth03)	   
	      SystemDMGAmountWeapon03 = akShip.GetValue(SpaceshipWeaponHealth03) - akShip.GetBaseValue(SpaceshipWeaponHealth03)
   Else
          SystemDMGAmountWeapon03 = akShip.GetBaseValue(SpaceshipWeaponHealth03) - akShip.GetValue(SpaceshipWeaponHealth03)
    EndIf

	   If akShip.GetValue(SpaceshipSystemEngineHealth) > akShip.GetBaseValue(SpaceshipSystemEngineHealth)	   
	      SystemDMGAmountEngine = akShip.GetValue(SpaceshipSystemEngineHealth) - akShip.GetBaseValue(SpaceshipSystemEngineHealth)
   Else
          SystemDMGAmountEngine = akShip.GetBaseValue(SpaceshipSystemEngineHealth) - akShip.GetValue(SpaceshipSystemEngineHealth)
    EndIf

	   If akShip.GetValue(SpaceshipShieldHealth) > akShip.GetBaseValue(SpaceshipShieldHealth)	   
	      SystemDMGAmountShield = akShip.GetValue(SpaceshipShieldHealth) - akShip.GetBaseValue(SpaceshipShieldHealth)
   Else
          SystemDMGAmountShield = akShip.GetBaseValue(SpaceshipShieldHealth) - akShip.GetValue(SpaceshipShieldHealth)
    EndIf

	   If akShip.GetValue(SpaceshipSystemGravdriveHealth) > akShip.GetBaseValue(SpaceshipSystemGravdriveHealth)	   
	      SystemDMGAmountGravDrive = akShip.GetValue(SpaceshipSystemGravdriveHealth) - akShip.GetBaseValue(SpaceshipSystemGravdriveHealth)
   Else
          SystemDMGAmountGravDrive = akShip.GetBaseValue(SpaceshipSystemGravdriveHealth) - akShip.GetValue(SpaceshipSystemGravdriveHealth)
    EndIf

	   If akShip.GetItemCount(SpaceshipMaintenanceKitMisc) > 0   
	      MaintenanceKitDiscount = 1.5
   Else
          MaintenanceKitDiscount = 1.0
    EndIf
       
	   RepairCost = Math.Round((((MaintenanceDMGAmount * MaintenanceCostPerUnit) + (HullDMGAmount * RepairHullCostPerUnit) + ((SystemDMGAmountWeapon01 + SystemDMGAmountWeapon02 + SystemDMGAmountWeapon03 + SystemDMGAmountEngine + SystemDMGAmountShield + SystemDMGAmountGravDrive) * RepairSystemCostPerUnit)) * AdditionalClassCostMult / MaintenanceKitDiscount) / DiscountCalculate / RepBonus) as Float	   
EndIf
      
   GV_ShipServiceRepairCost.SetValue(RepairCost)   
   (DialogueRedMileShip.UpdateCurrentInstanceGlobal(GV_ShipServiceRepairCost))

EndFunction

Function CheckAndStoreFuelValuesForTech()
     
	 spaceshipreference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
	     
	 Float FuelTankAmount = akShip.GetBaseValue(SpaceshipFuelTank) 
	 Float TotalFuelInTheTank = akShip.GetValue(SpaceshipFuelTank)      
     
	 ActorValue CheckMaintenanceClass = SetProperMaitenanceClass()
			   
			   If TotalFuelInTheTank < FuelTankAmount
				  GV_SpaceshipNeedsRefueling.SetValue(1)
		   ElseIf TotalFuelInTheTank == FuelTankAmount
				  GV_SpaceshipNeedsRefueling.SetValue(0)
			EndIf
            
              If akShip.GetValue(SpaceshipHealth) < akShip.GetBaseValue(SpaceshipHealth) || akShip.GetValue(SpaceshipWeaponHealth) < akShip.GetBaseValue(SpaceshipWeaponHealth) || akShip.GetValue(SpaceshipWeaponHealth02) < akShip.GetBaseValue(SpaceshipWeaponHealth02) || akShip.GetValue(SpaceshipWeaponHealth03) < akShip.GetBaseValue(SpaceshipWeaponHealth03) || akShip.GetValue(SpaceshipShieldHealth) < akShip.GetBaseValue(SpaceshipShieldHealth) || akShip.GetValue(SpaceshipSystemEngineHealth) < akShip.GetBaseValue(SpaceshipSystemEngineHealth) || akShip.GetValue(SpaceshipSystemGravdriveHealth) < akShip.GetBaseValue(SpaceshipSystemGravdriveHealth) || PlayerRef.GetValue(CheckMaintenanceClass) < PlayerRef.GetBaseValue(CheckMaintenanceClass)    
                 GV_SpaceshipSystemDamaged.SetValue(1)
          Else
                 GV_SpaceshipSystemDamaged.SetValue(0)	      
	       EndIf

EndFunction

Float Function DiscountCost()
     
	 Float DiscountPercent00 = 1.00
     Float DiscountPercent01 = 1.15 	 
     Float DiscountPercent02 = 1.25 
     Float DiscountPercent03 = 1.35 
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

Function CalculateFuelCost()

     SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
     
	 Float RepBonus = RepCalculator()     
	 Float DiscountCalculate = DiscountCost() 	      
	 Float fuelCostPerUnit = SpaceshipFuel.GetGoldValue() * GV_SpaceshipFuelPriceMult.GetValue()
	 Float FuelAmount = 0.0
     Float FuelCost = 0.0

     If akShip
        FuelAmount = akShip.GetBaseValue(SpaceshipFuelTank) - akShip.GetValue(SpaceshipFuelTank)      
	    FuelCost = Math.Round((FuelAmount * fuelCostPerUnit) / DiscountCalculate / RepBonus)
  EndIf

  GV_ShipServiceFuelCost.SetValue(fuelCost)  
  (DialogueRedMileShip.UpdateCurrentInstanceGlobal(GV_ShipServiceFuelCost))

EndFunction

Function RefuelAtShipService()

        SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
		Float FuelTankAmount = akShip.GetBaseValue(SpaceshipFuelTank) 
		Float FuelTankAmountCurrent = akShip.GetValue(SpaceshipFuelTank)
		Float BrokenRefuelerCheck = BrokenRefuelerMalfunctionCheck()							 								  

		ActorValue ReactorClassCheck = SetProperMaitenanceClass()
		
		FuelFillSpecialFXOutside()									 
		akShip.Restorevalue(SpaceshipFuelTank, FuelTankAmount / BrokenRefuelerCheck)									                                                                          			                     						                  										           
		   If FuelTankAmountCurrent >= FuelTankAmount
		      GV_SpaceshipNeedsRefueling.SetValue(0)									 
        EndIf
		GV_PrepareFuelStandBy.SetValue(0)       		
		CalculateFuelCost()
        MaintenanceMalfunctionTriggerOnRefuelProcess(ReactorClassCheck)

EndFunction

Float Function FameAndRepCheck()

      Float FameAndRepEnabled = 1.0
      Float FameAndRepDisabled = 0.0

      If FameAndReputationToggle.GetValue() == 1
         return FameAndRepEnabled
  Else
         return FameAndRepDisabled   
   EndIf

EndFunction

Float Function RepCalculator()
	  
	  Float IfReputation00 = 0.50 	   
	  Float IfReputation10 = 0.60      
	  Float IfReputation20 = 0.70
	  Float IfReputation30 = 0.80      
	  Float IfReputation40 = 0.90 
	  Float IfReputation50 = 1.00
	  Float IfReputation60 = 1.10      
	  Float IfReputation70 = 1.20
	  Float IfReputation80 = 1.30      
	  Float IfReputation90 = 1.40 
	  Float IfReputation100 = 1.50
	  Float IfFameAndRepDisabled = FameAndRepCheck()
	  
	  If IfFameAndRepDisabled == 0.0
         Return IfReputation50 	  
   EndIf       
	  
	  ActorValue AVCheck = (FameAndRepQuest as SISA_FameAndRepMB).CheckForAV()
	  
      If PlayerRef.GetValue(AVCheck) < 10
         Return IfReputation00
  ElseIf PlayerRef.GetValue(AVCheck) >= 10 && PlayerRef.GetValue(AVCheck) < 20
         Return IfReputation10
  ElseIf PlayerRef.GetValue(AVCheck) >= 20 && PlayerRef.GetValue(AVCheck) < 30
         Return IfReputation20
  ElseIf PlayerRef.GetValue(AVCheck) >= 30 && PlayerRef.GetValue(AVCheck) < 40
         Return IfReputation30
  ElseIf PlayerRef.GetValue(AVCheck) >= 40 && PlayerRef.GetValue(AVCheck) < 50
         Return IfReputation40
  ElseIf PlayerRef.GetValue(AVCheck) >= 50 && PlayerRef.GetValue(AVCheck) < 60
         Return IfReputation50
  ElseIf PlayerRef.GetValue(AVCheck) >= 60 && PlayerRef.GetValue(AVCheck) < 70
         Return IfReputation60
  ElseIf PlayerRef.GetValue(AVCheck) >= 70 && PlayerRef.GetValue(AVCheck) < 80
         Return IfReputation70
  ElseIf PlayerRef.GetValue(AVCheck) >= 80 && PlayerRef.GetValue(AVCheck) < 90
         Return IfReputation80
  ElseIf PlayerRef.GetValue(AVCheck) >= 90 && PlayerRef.GetValue(AVCheck) < 100
         Return IfReputation90
  ElseIf PlayerRef.GetValue(AVCheck) >= 100
         Return IfReputation100
   EndIf

EndFunction

Function DebtChecker()

                        If PlayerRef.GetItemCount(Credits) >= RescueDebt
                           PlayerRef.RemoveItem(Credits, RescueDebt, False, None)
						   RescueDebt = 0
						   MSG_StarviewEmergencyResponderDeptCover.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)			 
					       CancelTimer(5)
					Else
                           StartTimer(60, 5)
                     EndIf
EndFunction

Function TeleporterDebug()
           		
		   SpaceShipReference akShip = PlayerShip.getShipRef()
		   
		   PlayerRef.moveto(akShip, 0.0, 0.0, 0.0, false, false)

EndFunction

Function EngineUp()
 
    SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
    Float ConsumeFuelCycle = GV_FuelConsumeTimeOnMove.GetValue()
    Int Engine = akShip.GetPartPower(1, 0)
    Float TotalFuelInTheTank = akShip.GetValue(SpaceshipFuelTank) 
	Float CalcFuel = FuelCheckFromMap() 
					   
					       If EnginePowerRestricted == True
                              akShip.SetPartPower(1, 0, 0)
                              return
					    EndIf

					       If akShip.IsDocked() == False && akShip.IsInSpace() == True

							     If Engine > 0
                                       If SpaceshipEngineIgnited == False
									      SpaceshipEngineIgnited = True
										  StartTimer(ConsumeFuelCycle, 1)                           
                                    EndIf
							        SpaceshipSystemFuelStatus()
							  EndIf

							     If Engine > 0 && Engine < 2
		                               If TotalFuelInTheTank > CalcFuel
                                            If GV_SpaceshipTakeOffRestriction.GetValue() == 0
										       EnableFastTravel()
                                         EndIf
									EndIf
							  EndIf
                              GV_FuelConsumeDMGOnPower.SetValue(Engine)
						EndIf
                    
EndFunction

Function EngineDown()
 
    SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
    Float ConsumeFuelCycle = GV_FuelConsumeTimeOnMove.GetValue()
    Int Engine = akShip.GetPartPower(1, 0)
                      
					       If akShip.IsDocked() == False && akShip.IsInSpace() == True
					   	         
								 If Engine > 0                                                           
                                    SpaceshipSystemFuelStatus()
								 
							 ElseIf Engine <= 0
                                    CancelTimer(1)                            
									   If SpaceshipEngineIgnited == True
									      SpaceshipEngineIgnited = False
							        EndIf
									DisableFastTravel()
							        SpaceshipSystemFuelStatus()
							  EndIf
                              GV_FuelConsumeDMGOnPower.SetValue(Engine)
						EndIf

EndFunction

Function GravDriveStagesUp()

    SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
    Int GravDrive = akShip.GetPartPower(3, 0)
               				 
					  If akShip.IsDocked() == False && akShip.IsInSpace() == True                        
								If GravDrive > 0                                                           
                                   GravdrivePowerStorage()
                                   GravDriveCalculatePreparation()
							 EndIf
				   EndIf
EndFunction

Function GravDriveStagesDown()

    SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
    Int GravDrive = akShip.GetPartPower(3, 0)
                 				 
					  If akShip.IsDocked() == False && akShip.IsInSpace() == True                                               
								If GravDrive > 0                                                           
								   GravdrivePowerStorage()
								   GravDriveCalculatePreparation()
							ElseIf GravDrive <= 0      
								   GravDriveAbort()
							 EndIf
                   EndIf

EndFunction

Function GravdrivePowerStorage()
    
	SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
    Int GravDrive = akShip.GetPartPower(3, 0)

               If GravDrive >= 12
                  PlayerRef.Removeitem(GravDrivePowerLevel, 999, True, None)
                  PlayerRef.Additem(GravDrivePowerLevel, 12, True)
           ElseIf GravDrive == 11
                  PlayerRef.Removeitem(GravDrivePowerLevel, 999, True, None)
                  PlayerRef.Additem(GravDrivePowerLevel, 11, True)
           ElseIf GravDrive == 10
                  PlayerRef.Removeitem(GravDrivePowerLevel, 999, True, None)
                  PlayerRef.Additem(GravDrivePowerLevel, 10, True)
           ElseIf GravDrive == 9
                  PlayerRef.Removeitem(GravDrivePowerLevel, 999, True, None)
                  PlayerRef.Additem(GravDrivePowerLevel, 9, True)
           ElseIf GravDrive == 8
                  PlayerRef.Removeitem(GravDrivePowerLevel, 999, True, None)
                  PlayerRef.Additem(GravDrivePowerLevel, 8, True)
           ElseIf GravDrive == 7
                  PlayerRef.Removeitem(GravDrivePowerLevel, 999, True, None)
                  PlayerRef.Additem(GravDrivePowerLevel, 7, True)
           ElseIf GravDrive == 6
                  PlayerRef.Removeitem(GravDrivePowerLevel, 999, True, None)
                  PlayerRef.Additem(GravDrivePowerLevel, 6, True)
           ElseIf GravDrive == 5
                  PlayerRef.Removeitem(GravDrivePowerLevel, 999, True, None)
                  PlayerRef.Additem(GravDrivePowerLevel, 5, True)
           ElseIf GravDrive == 4
                  PlayerRef.Removeitem(GravDrivePowerLevel, 999, True, None)
                  PlayerRef.Additem(GravDrivePowerLevel, 4, True)
           ElseIf GravDrive == 3
                  PlayerRef.Removeitem(GravDrivePowerLevel, 999, True, None)
                  PlayerRef.Additem(GravDrivePowerLevel, 3, True)
           ElseIf GravDrive == 2
                  PlayerRef.Removeitem(GravDrivePowerLevel, 999, True, None)
                  PlayerRef.Additem(GravDrivePowerLevel, 2, True)
           ElseIf GravDrive == 1
                  PlayerRef.Removeitem(GravDrivePowerLevel, 999, True, None)
                  PlayerRef.Additem(GravDrivePowerLevel, 1, True)
            EndIf

EndFunction

Function GravDriveAbort()

    SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()

	SpaceshipGravDriveStartFX.Stop(akShip)
	SpaceshipGravDriveStartFX02.Stop(akShip)
	akShip.setvalue(SpaceshipGravDriveInitiated, -1)
	wwiseevent.StopInstance(GravDrivePrepareSoundInstance)
    GravDrivePrepareSoundInstance = -1
	   If GravJumpInitiated == True
	      GravJumpInitiated = False
	       If GV_SpaceshipGravJumpWormhole.GetValue() == 1
		      StartTimer(2, 25)
	    EndIf
	EndIf
	CancelTimer(10)
	CancelTimer(15)					 

EndFunction

Function GravDriveAbortOnLoad()
	StartTimer(3, 26)
EndFunction
						 
Function AllPowerOff()

    SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
    Int Engine = akShip.GetPartPower(1, 0)

     If SpaceshipPower == False
		SpaceshipPower = True
		Utility.Wait(0.1)
		akShip.SetPartPower(1, 0, 0)
	    GV_FuelConsumeDMGOnPower.SetValue(Engine)
        EngineSoundFX()
   EndIf

EndFunction

Function AllPowerOn()

        SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()

     If SpaceshipPower == True
		SpaceshipPower = False
		Utility.Wait(0.1)
		akShip.SetPartPower(1, 0, ShipPowerEngine)
           If SpaceshipPowerValueStored == True
		      SpaceshipPowerValueStored = False
	    EndIf
		GV_FuelConsumeDMGOnPower.SetValue(ShipPowerEngine)
        EngineSoundFX()
   EndIf

EndFunction

Function EngineSoundFX()

        SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()

        EngineOnSoundInstance = SoundEventEngineOn.Play(akShip, None, None)
        Utility.Wait(2.0)
		wwiseevent.StopInstance(EngineOnSoundInstance)
        EngineOnSoundInstance = -1

EndFunction

Function StoreValuesSpaceshipPower()

        SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
        Int Engine = akShip.GetPartPower(1, 0)

        ShipPowerEngine = Engine
           If SpaceshipPowerValueStored == False
		      SpaceshipPowerValueStored = True
	    EndIf
		GV_FuelConsumeDMGOnPower.SetValue(Engine)

EndFunction

Function CheckSystemsAtGetUp()

        If GV_SpaceshipSystemsToggle.GetValue() == 1
           StoreValuesSpaceshipPower()
              If SpaceshipEngineIgnited == True
		         SpaceshipEngineIgnited = False
           EndIf
		   CancelTimer(1)        
	       CancelTimer(23)
	 EndIf

EndFunction

;================================

Function DisableCruiseFarTravel()	

   If GV_StarjackerQuest.GetValue() == 1
      Return
EndIf

   If GV_SpaceshipCruiseFarTravelToggle.GetValue() == 0
	  CruiseFarTravel.SetCruiseModeRequiresFarTravel(False) 
	  CruiseFarTravel.Reset()
	  CruiseFarTravel.Delete()
	  CruiseFarTravel = inputEnableLayer.Create()
	  CruiseFarTravel.SetCruiseModeRequiresFarTravel(False)
EndIf

EndFunction

Function DisableFarTravel()	

   If GV_StarjackerQuest.GetValue() == 1
      Return
EndIf

   If GV_SpaceshipCruiseFarTravelToggle.GetValue() == 0
	  FarTravel.EnableFarTravel(False) 
	  FarTravel.Reset()
	  FarTravel.Delete()
	  FarTravel = inputEnableLayer.Create()
	  FarTravel.EnableFarTravel(False)
EndIf

EndFunction

Function DisableFastTravel()	

   If GV_StarjackerQuest.GetValue() == 1
      Return
EndIf
   
   If GV_SpaceshipVanillaFastTravelRules.GetValue() == 0
	  FastTravel.EnableFastTravel(False) 
	  FastTravel.Reset()
	  FastTravel.Delete()
	  FastTravel = inputEnableLayer.Create()
	  FastTravel.EnableFastTravel(False)
EndIf

EndFunction

Function EnableFastTravel()	

   If GV_SpaceshipVanillaFastTravelRules.GetValue() == 0
	  FastTravel.EnableFastTravel(True) 
	  FastTravel.Reset()
	  FastTravel.Delete()
	  FastTravel = inputEnableLayer.Create()
	  FastTravel.EnableFastTravel(True)
EndIf

EndFunction

Function EnableGravJump()
   
   If GV_SpaceshipVanillaFastTravelRules.GetValue() == 0
	  GravJump.EnableGravJump(True) 
	  GravJump.Reset()
	  GravJump.Delete()
	  GravJump = inputEnableLayer.Create()
	  GravJump.EnableGravJump(True)
EndIf

Endfunction

Function DisableGravJump()

   If GV_StarjackerQuest.GetValue() == 1
      Return
EndIf

   If GV_SpaceshipVanillaFastTravelRules.GetValue() == 0
	  GravJump.EnableGravJump(False) 
	  GravJump.Reset()
	  GravJump.Delete()
	  GravJump = inputEnableLayer.Create()
	  GravJump.EnableGravJump(False)
EndIf

Endfunction

Function EnableTakeoff()
   
   If GV_SpaceshipVanillaFastTravelRules.GetValue() == 0
	  TakeOff.EnableTakeOff(True) 
	  TakeOff.Reset()
	  TakeOff.Delete()
	  TakeOff = inputEnableLayer.Create()
	  TakeOff.EnableTakeOff(True)
EndIf

Endfunction

Function DisableTakeoff()

   If GV_StarjackerQuest.GetValue() == 1
      Return
EndIf

   If GV_SpaceshipVanillaFastTravelRules.GetValue() == 0
	  TakeOff.EnableTakeOff(False) 
	  TakeOff.Reset()
	  TakeOff.Delete()
	  TakeOff = inputEnableLayer.Create()
	  TakeOff.EnableTakeOff(False)
EndIf

Endfunction

Function ReturnVanillaFastTravel()	
	
	FastTravel.EnableFastTravel(True) 
	FastTravel.Reset()
	FastTravel.Delete()
	FastTravel = inputEnableLayer.Create()
	FastTravel.EnableFastTravel(True)
	
	TakeOff.EnableTakeOff(True) 
	TakeOff.Reset()
	TakeOff.Delete()
	TakeOff = inputEnableLayer.Create()
	TakeOff.EnableTakeOff(True)
	
	GravJump.EnableGravJump(True) 
	GravJump.Reset()
	GravJump.Delete()
	GravJump = inputEnableLayer.Create()
	GravJump.EnableGravJump(True)

    GV_SpaceshipCruiseFarTravelToggle.SetValue(1)
	
	CruiseFarTravel.SetCruiseModeRequiresFarTravel(True) 
	CruiseFarTravel.Reset()
	CruiseFarTravel.Delete()
	CruiseFarTravel = inputEnableLayer.Create()
	CruiseFarTravel.SetCruiseModeRequiresFarTravel(True)
	  
	FarTravel.EnableFarTravel(True) 
	FarTravel.Reset()
	FarTravel.Delete()
	FarTravel = inputEnableLayer.Create()
	FarTravel.EnableFarTravel(True)

EndFunction

Function JunkerShipDLCBugFix()	
    
	GV_StarjackerQuest.SetValue(1)		
	
	FastTravel.EnableFastTravel(True) 
	FastTravel.Reset()
	FastTravel.Delete()
	FastTravel = inputEnableLayer.Create()
	FastTravel.EnableFastTravel(True)
	
	TakeOff.EnableTakeOff(True) 
	TakeOff.Reset()
	TakeOff.Delete()
	TakeOff = inputEnableLayer.Create()
	TakeOff.EnableTakeOff(True)
	
	GravJump.EnableGravJump(True) 
	GravJump.Reset()
	GravJump.Delete()
	GravJump = inputEnableLayer.Create()
	GravJump.EnableGravJump(True)
	
	CruiseFarTravel.SetCruiseModeRequiresFarTravel(True) 
	CruiseFarTravel.Reset()
	CruiseFarTravel.Delete()
	CruiseFarTravel = inputEnableLayer.Create()
	CruiseFarTravel.SetCruiseModeRequiresFarTravel(True)
	  
	FarTravel.EnableFarTravel(True) 
	FarTravel.Reset()
	FarTravel.Delete()
	FarTravel = inputEnableLayer.Create()
	FarTravel.EnableFarTravel(True)

	SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
	akShip.Additem(SpaceshipFuel, 75, True)

EndFunction

;=======================

Function CalculateRandomValuesForSpaceships()
                                        
										SpaceShipReference homeShipRef = HomeShip.GetShipRef()
                                        SpaceShipReference akShip = PlayerRef.GetCurrentShipRef()                                      
											                                    
										Int RandomMult = Utility.RandomInt(2, 10)
                                        Int RandomFuelAmount = Utility.RandomInt(0, 50)                                    
										Int RandomChanceRepairDrones = Utility.RandomInt(0, 100)
										Int RandomChanceMaintenanceKits = Utility.RandomInt(0, 100)
										Int RandomChanceSpareParts = Utility.RandomInt(0, 100)
										Int RandomAmountRepairDrones = Utility.RandomInt(1, 3)
										Int RandomAmountMaintenanceKits = Utility.RandomInt(1, 3)										
										Int RandomAmountSpareParts = Utility.RandomInt(1, 3)
										
										Float FuelAmount = 0.0
	                                    Float MaintenanceAmount = 0.0
                                
								If PlayerShips.Find(akShip) > -1   
                                   Return							
							Else
                               			   If akShip != homeShipRef

											   If akShip.GetItemCount(BlockCalculation) <= 0
				                                  akShip.Additem(BlockCalculation, 1, True)
	            		                          akShip.Additem(SpaceshipFuel, RandomFuelAmount, True)
												  
												  FuelAmount = akShip.GetBaseValue(SpaceshipFuelTank) / RandomMult * 2
				                                  akShip.DamageValue(SpaceshipFuelTank, FuelAmount)
	            				                                  					                                      
													  If RandomChanceRepairDrones <= 7
                                                         akShip.Additem(SpaceshipEmergencyRepairBotsMisc, RandomAmountRepairDrones, True)
												   EndIf
													  
													  If RandomChanceMaintenanceKits <= 7
				                                         akShip.Additem(SpaceshipMaintenanceKitMisc, RandomAmountMaintenanceKits, True)
												   EndIf	  

													  If RandomChanceSpareParts <= 7
				                                         akShip.Additem(SpaceshipSpareParts, RandomAmountSpareParts, True)
												   EndIf

		                                    EndIf
                                        EndIf      
                              EndIf
EndFunction

ActorValue Function SetProperMaitenanceClass()
	        
      SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()	  
	  
	  ActorValue MaitenanceClassA = SpaceshipReactorClassA
	  ActorValue MaitenanceClassB = SpaceshipReactorClassB	  
	  ActorValue MaitenanceClassC = SpaceshipReactorClassC
	  ActorValue MaitenanceClassM = SpaceshipReactorClassM
	           
			   If akShip.GetReactorClassKeyword() == SpaceshipModuleClassA
			      Return MaitenanceClassA                              
           ElseIf akShip.GetReactorClassKeyword() == SpaceshipModuleClassB
			      Return MaitenanceClassB 
           ElseIf akShip.GetReactorClassKeyword() == SpaceshipModuleClassC
			      Return MaitenanceClassC 									  
           ElseIf akShip.GetReactorClassKeyword() == SpaceshipModuleClassM
			      Return MaitenanceClassM 
            EndIf

Endfunction

Float Function FuelConsumptionDataView()
								   
								   Perk EngineOptimization = Game.GetFormFromFile(0x00034CC2, "SFBGS00D.esm") as Perk 
                                   SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()            
                              	   
								   Float FuelLeak = FuelLeakCalc()
								   Float PerkCheck = FuelConsumptionCalcOnFlight()
			                       Float OptimizationCheck = OptimizationCheck(EngineOptimization)
								   Float ConsumeFuelDMGOnMoveAdvanced = akShip.GetValue(SpaceshipMass) / akShip.GetValue(SpaceshipEngineThrust) * GV_FuelConsumeDMGOnPower.GetValue() / PerkCheck / OptimizationCheck + FuelLeak
			                       Float ConsumeFuelDMGOnMoveAdvancedAstro = akShip.GetValue(SpaceshipMass) / akShip.GetValue(SpaceshipEngineThrust) * GV_FuelConsumeDMGOnPower.GetValue() / 1.25 / PerkCheck / OptimizationCheck + FuelLeak			                 
			                       Float ConsumeFuelDMGOnMoveManual = GV_SpaceshipFuelCalculationManual.GetValue() * GV_FuelConsumeDMGOnPower.GetValue() / PerkCheck / OptimizationCheck + FuelLeak
			                       Float ConsumeFuelDMGOnMoveManualAstro = GV_SpaceshipFuelCalculationManual.GetValue() * GV_FuelConsumeDMGOnPower.GetValue() / 1.25 / PerkCheck / OptimizationCheck + FuelLeak
			                  
			                       Actor Astro = GetShipAstroDynamics()
	
						           If GV_SpaceshipFuelCalculationMode.GetValue() == 0
								      									    
										       If Astro
                                                  Return ConsumeFuelDMGOnMoveAdvancedAstro
                                          Else
												  Return ConsumeFuelDMGOnMoveAdvanced
											EndIf
					   							   							   
							   ElseIf GV_SpaceshipFuelCalculationMode.GetValue() == 3
											   
										       If Astro
                                                  Return ConsumeFuelDMGOnMoveManualAstro
                                          Else
												  Return ConsumeFuelDMGOnMoveManual
											EndIf
								
								EndIf
Endfunction

Function Starview(Int MenuType = 0, Int Button = 0, Bool MenuOpened = True)

  While MenuOpened
  SoundEventClick.Play(PlayerRef, None, None)

	 If Button == -1

 ElseIf MenuType == 0

                                        SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()                                      
		                                SpaceShipReference CurrentHomeship = SQ_PlayerShip.DebugGetHomeShip()
		                                PlayerHomeShip.ForceRefTo(CurrentHomeship)																				
										
										CurrentLoc = PlayerRef.GetCurrentlocation()
										
										ActorValue CheckMaintenanceClass = SetProperMaitenanceClass() 
										
										Int RepairDronesAmount = akShip.GetItemCount(SpaceshipEmergencyRepairBotsMisc)
                                        Int ShipPartsAmount = akShip.GetItemCount(SpaceshipShipParts)                                      
										
										Float FuelTankAmount = akShip.GetBaseValue(SpaceshipFuelTank)                               
										Float TotalFuelInTheTank = akShip.GetValue(SpaceshipFuelTank)										
										Float MaintenanceValues = PlayerRef.GetValue(CheckMaintenanceClass)
                                        Float MaintenanceValuesMax = PlayerRef.GetBaseValue(CheckMaintenanceClass)		
		                                Float CalculateMaintenance = MaintenanceValues / MaintenanceValuesMax * 100
		                                Float CalculateFuel = TotalFuelInTheTank / FuelTankAmount * 100
		
		button = MSG_StarviewMain.show(CalculateFuel, CalculateMaintenance, RepairDronesAmount, ShipPartsAmount, 0.0, 0.0, 0.0, 0.0, 0.0)

	                                    If (button == 0)

	                                             If CurrentLoc == playerShipInteriorLocation02.GetLocation() == True || CurrentLoc == playerShipInteriorLocation.GetLocation() == True      
		                                            MenuType = 1
	                                         ElseIf CurrentLoc == playerShipInteriorLocation02.GetLocation() == False || CurrentLoc == playerShipInteriorLocation.GetLocation() == False
		                                              If PlayerRef.GetFurnitureUsing() == PlayerShipPilotSeat.GetRef()
													     MenuType = 1    
	                                              Else
											             MSG_SpaceshipSystemsPilotSeat.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
											       EndIf
											  EndIf								

									ElseIf (button == 1)
		                                    
											MenuType = 22
																			                                                                                                          
									ElseIf (button == 2)
	                                        
											MenuType = 90																		

									ElseIf (button == 3)
	                                        
											MenuType = 100

									ElseIf (button == 4)
	                                        
											MenuType = 200

									ElseIf (button == 5)
									        MenuOpened = False	
											FuelEmergencyServiceFuelOfProblems()									
									ElseIf (button == 6)
                                           ; Exit
                                           MenuOpened = False									 
									 EndIf

 ElseIf MenuType == 90				

                                        SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()                                     									
										Float TriggerPoint = akShip.GetBaseValue(SpaceshipFuelTank) / 5

		button = MSG_StarviewAdditional.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)

	                                    If (button == 0)

                                            GV_AutoInjector.SetValue(0)
						                    UnregisterForActorValueLessThanEvent(akShip, SpaceshipFuelTank, TriggerPoint)
									
									ElseIf (button == 1)

                                            GV_AutoInjector.SetValue(1)                                            
			                                RegisterForActorValueLessThanEvent(akShip, SpaceshipFuelTank, TriggerPoint)
                 
	                                ElseIf (button == 2)
									
                                            GV_AutoRepairBots.SetValue(0)		
									
	                                ElseIf (button == 3)

                                            GV_AutoRepairBots.SetValue(1)

									ElseIf (button == 4)
									        
											GV_SpaceshipAutoDeliverer.SetValue(0)
									
									ElseIf (button == 5)
                                            
											GV_SpaceshipAutoDeliverer.SetValue(1)
                                            PlayerRef.Additem(SpaceshipFuel, 1, True)                                            
											akShip.Removeitem(SpaceshipFuel, 1, True, None)
																		
									ElseIf (button == 6)
									
									        MenuType = 0
																		
									ElseIf (button == 7)

                                           ; Exit
                                           MenuOpened = False
									 
									 EndIf

 ElseIf MenuType == 22
                                        
										SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
										
										ActorValue CheckMaintenanceClass = SetProperMaitenanceClass() 
										Float MaintenanceValues = PlayerRef.GetValue(CheckMaintenanceClass)
                                        Float MaintenanceValuesMax = PlayerRef.GetBaseValue(CheckMaintenanceClass)

        button = MSG_SpaceshipInformation.show(MaintenanceValues, MaintenanceValuesMax, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)

	                                    If (button == 0)

										   MenuType = 231

									ElseIf (button == 1)

                                           MenuType = 232

									ElseIf (button == 2)

                                           MenuType = 233

									ElseIf (button == 3)

                                           MenuType = 0

									ElseIf (button == 4)

                                           ; Exit
                                           MenuOpened = False
                                           
									 EndIf

 ElseIf MenuType == 231
                                        
										SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()																				
										ActorValue CheckMaintenanceClass = SetProperMaitenanceClass() 
										Int AvailableFuelInTheCargo = akShip.GetItemCount(SpaceshipFuel)
                                        Float FuelConsumption = FuelConsumptionDataView()										
										Float ConsumeFuelCycle = GV_FuelConsumeTimeOnMove.GetValue()					                
										Float TotalFuelInTheTank = akShip.GetValue(SpaceshipFuelTank)
										Float TotalMaintenance = PlayerRef.GetValue(CheckMaintenanceClass)
                                        Float FuelTankAmount = akShip.GetBaseValue(SpaceshipFuelTank)

        button = MSG_SpaceshipInformationCapacity.show(AvailableFuelInTheCargo, TotalFuelInTheTank, FuelTankAmount, FuelConsumption, ConsumeFuelCycle, 0.0, 0.0, 0.0, 0.0)

	                                    If (button == 0)

										   MenuType = 22

									ElseIf (button == 1)

                                           ; Exit
                                           MenuOpened = False
                                           
									 EndIf

 ElseIf MenuType == 232

										SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()	
		                                										
										Float GravDriveChargeAmount = akShip.GetValue(SpaceshipGravDriveHealth)
                                        Float Mass = akShip.GetValue(SpaceshipMass)
                                        Float FuelTankAmount = akShip.GetBaseValue(SpaceshipFuelTank)									
		                                Float EngineThrust = akShip.GetValue(SpaceshipEngineThrust)
		                                Float GravDriveThrust = akShip.GetValue(SpaceshipGravThrust)
		                                Float BoostPower = akShip.GetValue(SpaceshipBoostSpeed)

        button = MSG_SpaceshipInformationTech.show(Mass, FuelTankAmount, GravDriveChargeAmount, EngineThrust, GravDriveThrust, BoostPower, 0.0, 0.0, 0.0)

	                                    If (button == 0)

										   MenuType = 22

									ElseIf (button == 1)

                                           ; Exit
                                           MenuOpened = False
                                           
									 EndIf

 ElseIf MenuType == 233

										SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()	
                                        
										Float CalculateWeaponHealthInPercent01 = akShip.GetValue(SpaceshipWeaponHealth) / akShip.GetBaseValue(SpaceshipWeaponHealth) * 100
                                        Float CalculateWeaponHealthInPercent02 = akShip.GetValue(SpaceshipWeaponHealth02) / akShip.GetBaseValue(SpaceshipWeaponHealth02) * 100
                                        Float CalculateWeaponHealthInPercent03 = akShip.GetValue(SpaceshipWeaponHealth03) / akShip.GetBaseValue(SpaceshipWeaponHealth03) * 100
                                        Float CalculateEngineHealthInPercent = akShip.GetValue(SpaceshipSystemEngineHealth) / akShip.GetBaseValue(SpaceshipSystemEngineHealth) * 100
                                        Float CalculateShieldHealthInPercent = akShip.GetValue(SpaceshipShieldHealth) / akShip.GetBaseValue(SpaceshipShieldHealth) * 100
                                        Float CalculateGravDriveHealthInPercent = akShip.GetValue(SpaceshipSystemGravdriveHealth) / akShip.GetBaseValue(SpaceshipSystemGravdriveHealth) * 100

        button = MSG_SpaceshipInformationSubSystems.show(CalculateWeaponHealthInPercent01, CalculateWeaponHealthInPercent02, CalculateWeaponHealthInPercent03, CalculateEngineHealthInPercent, CalculateShieldHealthInPercent, CalculateGravDriveHealthInPercent, 0.0, 0.0, 0.0)

	                                    If (button == 0)
										    MenuType = 22
									ElseIf (button == 1)
                                           ; Exit
                                           MenuOpened = False                                           
									 EndIf
                              
 ElseIf MenuType == 1

                                        SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()								
										
										Int AvailableFuelInTheCargo = akShip.GetItemCount(SpaceshipFuel)                                                                             
										Float FuelConsumption = FuelConsumptionDataView()										
										Float FuelTankAmount = akShip.GetBaseValue(SpaceshipFuelTank)                                  
										Float TotalFuelInTheTank = akShip.GetValue(SpaceshipFuelTank)
										Float ConsumeFuelCycle = GV_FuelConsumeTimeOnMove.GetValue() 										

		  button = MSG_StarviewFuelManagement.show(AvailableFuelInTheCargo, TotalFuelInTheTank, FuelTankAmount, FuelConsumption, ConsumeFuelCycle, 0.0, 0.0, 0.0, 0.0)
         
	                                    If (button == 0)

                                                        If TotalFuelInTheTank < FuelTankAmount && AvailableFuelInTheCargo > 0
                                                           GV_PrepareFuelStandBy.SetValue(1)
                                                           FuelFillExecute()
											               MenuOpened = False
										           Else
										                      If AvailableFuelInTheCargo <= 0
											                     MSG_SpaceshipNoFuelTanks.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
										                  ElseIf TotalFuelInTheTank == FuelTankAmount
	                                                             MSG_SpaceshipFullFuelTanks.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
										                   EndIf										 
										             EndIf
																		                                           	                               
	                                ElseIf (button == 1)

                                                       If TotalFuelInTheTank > 0
                                                          GV_PrepareFuelStandBy.SetValue(1)
											              FuelPumpoutExecute()
											              MenuOpened = False
										            EndIf  

	                                ElseIf (button == 2)
                                          
                                            MenuType = 0
                                            	                                
									ElseIf (button == 3)

                                           ; Exit
                                           MenuOpened = False
                                           
									 EndIf

 ElseIf MenuType == 100																		  
		button = MSG_StarviewMalfunctionList.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)

	                                    If (button == 0)
                                            GV_SpaceshipMaintStatusMenuToggle.SetValue(0)
									ElseIf (button == 1)
	                                        GV_SpaceshipMaintStatusMenuToggle.SetValue(1)
									ElseIf (button == 2)
                                            ; Empty
									ElseIf (button == 3)
                                            ; Empty
	                                ElseIf (button == 4)
                                            ; Empty
	                                ElseIf (button == 5)
                                            ; Empty
	                                ElseIf (button == 6)
                                            ; Empty
	                                ElseIf (button == 7)
                                            ; Empty
	                                ElseIf (button == 8)
                                            ; Empty
	                                ElseIf (button == 9)
                                            ; Empty
	                                ElseIf (button == 10)
                                            ; Empty
	                                ElseIf (button == 11)
                                            ; Empty
	                                ElseIf (button == 12)
                                            ; Empty
	                                ElseIf (button == 13)
                                            ; Empty
	                                ElseIf (button == 14)
	                                        ; Empty
	                                ElseIf (button == 15)
	                                        ; Empty
	                                ElseIf (button == 16)
	                                        ; Empty
	                                ElseIf (button == 17)
	                                        ; Empty
	                                ElseIf (button == 18)
	                                        ; Empty
	                                ElseIf (button == 19)
	                                        ; Empty
	                                ElseIf (button == 20)
	                                        ; Empty
	                                ElseIf (button == 21)
	                                        ; Empty
	                                ElseIf (button == 22)
	                                        ; Empty
	                                ElseIf (button == 23)
	                                        ; Empty
	                                ElseIf (button == 24)
	                                        ; Empty
	                                ElseIf (button == 25)
	                                        ; Empty
	                                ElseIf (button == 26)
	                                        ; Empty
	                                ElseIf (button == 27)
	                                        ; Empty
	                                ElseIf (button == 28)
	                                        ; Empty
	                                ElseIf (button == 29)
	                                        ; Empty
	                                ElseIf (button == 30)
	                                        ; Empty
	                                ElseIf (button == 31)
	                                        ; Empty
									ElseIf (button == 32)
                                            MenuType = 0
	                                ElseIf (button == 33)
                                                                                      	                                
                                           ; Exit
                                           MenuOpened = False
                                           
									 EndIf

 ElseIf MenuType == 200																		  
		
			                            Int FinalFeeNeon = (EconomyQuest as SISA_Economy).FinalFeeNeon	         
			                            Int FinalFeeAkila = (EconomyQuest as SISA_Economy).FinalFeeAkila	
			                            Int FinalFeeAtlantis = (EconomyQuest as SISA_Economy).FinalFeeAtlantis	
			                            Int FinalFeeCydonia = (EconomyQuest as SISA_Economy).FinalFeeCydonia	 	         
			                            Int FinalFeeHopetown = (EconomyQuest as SISA_Economy).FinalFeeHopetown	 
			                            Int FinalFeeGagarin = (EconomyQuest as SISA_Economy).FinalFeeGagarin	 
			                            Int FinalFeeNewHomestead = (EconomyQuest as SISA_Economy).FinalFeeNewHomestead	 
			                            Int FinalFeeDazra = (EconomyQuest as SISA_Economy).FinalFeeDazra			
			                            Int FinalFeeRedMile = (EconomyQuest as SISA_Economy).FinalFeeRedMile
		
		(EconomyQuest as SISA_Economy).LandingFeeLocationForStarview()				
		button = MSG_StarviewLandingFees.show(FinalFeeAkila, FinalFeeCydonia, FinalFeeDazra, FinalFeeGagarin, FinalFeeHopetown, FinalFeeNeon, FinalFeeAtlantis, FinalFeeNewHomestead, FinalFeeRedMile)
	                                    
										If (button == 0)
	                                        MenuType = 201
									ElseIf (button == 1)
                                           (EconomyQuest as SISA_Economy).LandingFeeLocationTerminal()
									ElseIf (button == 2)
                                            MenuType = 0
									ElseIf (button == 3)                                                                                     	                                
                                           ; Exit
                                           MenuOpened = False
                                     EndIf

 ElseIf MenuType == 201																		  
		
				                        Int LandingDebt = (EconomyQuest as SISA_Economy).LandingFeeDebt
		
		button = MSG_StarviewLandingFeesDebt.show(LandingDebt, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	                                    
										If (button == 0)
	                                       (EconomyQuest as SISA_Economy).PayLandingDebt()
									ElseIf (button == 1)
                                            MenuType = 200
									ElseIf (button == 2)                                                                                     	                                
                                           ; Exit
                                           MenuOpened = False
                                     EndIf

  EndIf

EndWhile
EndFunction

Actor Function GetShipPilot()
        
	int i = 0
    While i < CurrentCrew.GetCount()
        Actor Pilot = CurrentCrew.GetAt(i) as Actor
        if Pilot && Pilot.HasPerk(SpaceshipCrewPiloting)
            return Pilot
        EndIf
        i += 1
    EndWhile
    return none
EndFunction

Function CallShip()
	
	ObjectReference markerRef = FindLandingMarker()  
	SpaceShipReference homeShipRef = HomeShip.GetShipRef()
	
	RegisterForCustomEvent(self, "LandingRequested")
	 
	Var[] akArgs = new Var[1]
	akArgs[0] = markerRef
	   
	   If LandingPad == False
	      markerRef.MoveTo(playerRef, 0.0, 0.0, 0.0, True, False)
    EndIf
	
	SendCustomEvent("LandingRequested", akArgs)

EndFunction

Event SISA_SpaceshipFuel.LandingRequested(SISA_SpaceshipFuel akSender, Var[] akArgs)
	
	ObjectReference landingMarker = akArgs[0] As ObjectReference
	SpaceShipReference homeShipRef = HomeShip.GetShipRef()

	homeShipRef.TakeOff()	
	Utility.Wait(35.0)
	homeShipRef.MoveTo(landingMarker, 0, 0, 0, True, False)
	homeShipRef.SetLinkedRef(landingMarker, SpaceshipEnabledLandingLink, True)
	homeShipRef.Enable(False)
	homeShipRef.EnableWithLanding()
    
	If ShipOnTheWay == True
	   ShipOnTheWay = False
 EndIf
	
	If LandingPad == True
       LandingPad = False
 EndIf

EndEvent

ObjectReference Function FindLandingMarker()

	Float[] offsets = new Float[6]
    offsets[0] = 0.0
    offsets[1] = 30.0
    offsets[2] = 0.0
    offsets[3] = 0.0
    offsets[4] = 0.0
    offsets[5] = 180.0
	
	ObjectReference PadlandingMarker = Game.FindClosestReferenceOfAnyTypeInListFromRef(SpaceshipLandingMarkers, playerRef, 300)
    ObjectReference PlayerlandingMarker = PlayerRef.PlaceAtMe(ShipLandingMarker, 1, False, False, True, offsets, None, True)
    SpaceShipReference homeShipRef = HomeShip.GetShipRef()    

	   If PadlandingMarker && homeShipRef.CanLandAtMarker(PadlandingMarker) && !PadlandingMarker.IsFurnitureInUse(False)
		  LandingPad = True
		  Return PadlandingMarker
	Else
          Return PlayerlandingMarker	
	EndIf
 
EndFunction

Function RequestShipLanding()
                               
        SpaceShipReference homeShipRef = HomeShip.GetShipRef()										 
		Float TotalFuelInTheTank = homeShipRef.GetValue(SpaceshipFuelTank)
        Actor Pilot = GetShipPilot()
		CurrentLoc = Pilot.GetCurrentlocation()	
        SoundEventCallChatter.PlayAndWait(PlayerRef, None, None)  
								 
		If ShipOnTheWay == False	
				If PlayerRef.GetDistance(homeShipRef) >= 1000
					  If GV_SpaceshipSystemsToggle.GetValue() == 1 

									 If Pilot && Pilot.GetDistance(PlayerRef) >= 1000
									        If TotalFuelInTheTank > 10
				                               ShipOnTheWay = True
											   CallShip()
	                                    Else
                                               MSG_SpaceshipCallAbort02.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
			                             EndIf
			                      Else
						                MSG_SpaceshipCallAbort03.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
						          EndIf

				   Else
			            ShipOnTheWay = True
						CallShip()
			       EndIf
			  Else
                    MSG_SpaceshipCallAbort.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
              EndIf
      Else
		      MSG_SpaceshipCallAbort04.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	 EndIf

EndFunction

Function FuelEmergencyServiceFuelOfProblems(Int MenuType = 0, Int Button = 0, Bool MenuOpened = True)
                               
  While MenuOpened

	 If Button == -1

 ElseIf MenuType == 0
	
        SoundEventCallChatter.PlayAndWait(PlayerRef, None, None) 
                
				If EmergencyIsOnTheirWay == False
		           MenuType = 1
            Else
	               MenuOpened = False
				   MSG_EmergencyGroupIsOnTheirWay.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
			       Starview()
			 EndIf

 ElseIf MenuType == 1
		button = MSG_StarviewEmergencyResponder.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	                                    If (button == 0)
                                           SoundEventCallChatter.PlayAndWait(PlayerRef, None, None) 
                                           MenuType = 2									
									ElseIf (button == 1)
                                           SoundEventCallChatterOff.Play(PlayerRef, None, None) 
                                           ; Exit
                                           MenuOpened = False
									       Starview()
									 EndIf

 ElseIf MenuType == 2
                                        SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()

                                        Int Payment = GV_RescuePayment.GetValue() As Int

		button = MSG_StarviewEmergencyResponderPayment.show(Payment, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)

	                                    If (button == 0)
                                           SoundEventCallChatter.PlayAndWait(PlayerRef, None, None) 
										   If TutorialRescueCallTrigger == False
                                                      If PlayerRef.IsInSpace() == True
														 MenuType = 3
												   Else
										                 MenuType = 4
										           EndIf
                                        Else
                                                      If PlayerRef.IsInSpace() == True
														   If PlayerRef.GetItemCount(Credits) >= Payment
															  PlayerRef.RemoveItem(Credits, Payment, False, None)
															  MenuType = 3
										               Else
													          MSG_StarviewEmergencyResponderNotEnoughCredits.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
													    EndIf
												   Else
										                   If PlayerRef.GetItemCount(Credits) >= Payment
														      PlayerRef.RemoveItem(Credits, Payment, False, None)
															  MenuType = 4
										               Else
												              MSG_StarviewEmergencyResponderNotEnoughCredits.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
												        EndIf
												   EndIf

                                        EndIf
	                                
									ElseIf (button == 1)
                                            SoundEventCallChatter.PlayAndWait(PlayerRef, None, None) 
                                            	If PlayerRef.IsInSpace() == True
												   MenuType = 3
										           RescueDebt += Payment
		                                           StartTimer(0, 5)
											Else
										           MenuType = 4
										           RescueDebt += Payment
		                                           StartTimer(0, 5)
											 EndIf                                

									ElseIf (button == 2)
                                           SoundEventCallChatterOff.Play(PlayerRef, None, None) 
                                           ; Exit
                                           MenuOpened = False
									 EndIf

 ElseIf MenuType == 3
                                        										
                                        Int RescueTime = GV_RescueTeamTime.GetValue() As Int

		button = MSG_StarviewEmergencyResponderHelpIsOnTheWay.show(RescueTime, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)

	                                    If (button == 0)
                                            SoundEventCallChatterOff.Play(PlayerRef, None, None)  
									           EmergencyIsOnTheirWay = True
                                               StartTimer(RescueTime, 4)

                                               ; Exit
                                               MenuOpened = False
								 
									 EndIf

 ElseIf MenuType == 4
		button = MSG_StarviewEmergencyResponderUseBeacon.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)

	                                    If (button == 0)
                                           SoundEventCallChatterOff.Play(PlayerRef, None, None) 
									       EmergencyIsOnTheirWay = True
                                           GV_BeaconTrigger.SetValue(1)
                                           MSG_Tutorial_BeaconPrepareHelper.ShowAsHelpMessage("None", 10.0, 0.0, 1, "", 0, None)
                                           ; Exit
                                           MenuOpened = False
									 EndIf

  EndIf

 
EndWhile

EndFunction

Function TutorialIntroduction(Int MenuType = 0, Int Button = 0, Bool MenuOpened = True)

  While MenuOpened

	 If Button == -1

 ElseIf MenuType == 0										
		button = MSG_Tutorial_Main.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)

	                                    If (button == 0)
                                           TakeOff.EnableTakeOff(False) 
	                                       TakeOff.Reset()
	                                       TakeOff.Delete()
	                                       TakeOff = inputEnableLayer.Create()
	                                       TakeOff.EnableTakeOff(False)
										   GV_SpaceshipSystemsToggle.SetValue(1)
                                           PrepareSystemsTutorial()
									       TutorialIntroduction = True
                                           CancelTimer(12)
										   StartTimer(1, 11)
									       AllPowerOff()
										   MenuOpened = False
									
									ElseIf (button == 1)
                                           TutorialIntroduction = True
                                           TutorialRescueCallTrigger = True
										   CancelTimer(12)
										   GV_SpaceshipSystemsToggle.SetValue(1)
										   GV_SpaceshipSystemsTutorial01.SetValue(1)
                                           GV_SpaceshipTutorial03.SetValue(1)
										   PrepareSystems()										   
                                           AllPowerOff()
										   TakeOff.EnableTakeOff(True) 
	                                       TakeOff.Reset()
	                                       TakeOff.Delete()
	                                       TakeOff = inputEnableLayer.Create()
	                                       TakeOff.EnableTakeOff(True)
										   ; Exit                                           
                                           MenuOpened = False

									ElseIf (button == 2)
										   GV_SpaceshipSystemsToggle.SetValue(0)                                           
										   CancelTimer(12)
										   TutorialIntroduction = True
										   ; Exit                                           
                                           MenuOpened = False

									 EndIf

  EndIf

EndWhile
EndFunction

Function SpawnEmergencyResponder()

     Int iDatumIndex = FriendIndex

     If iDatumIndex < 0 || iDatumIndex >= FriendsShipData.Length
        iDatumIndex = 0
  EndIf 

  SISA_SpaceshipFuel:Friendshipdatum currFriend = FriendsShipData[iDatumIndex]
  Int iNumFriendsToSpawn = Utility.RandomInt(currFriend.MinFriends.GetValueInt(), currFriend.MaxFriends.GetValueInt())
  Int I = 0

       ObjectReference currSpawn = GeneralMarker.GetRef()
       Float[] offsets = new Float[6]

       Int iRandY = Utility.RandomInt(0, 2)
       Int iRandomizerValue = 0
       Int iRandomizer = Utility.RandomInt(0, 2)

      If iRandomizer < 1
        iRandomizerValue = OffsetRandomizer
      ElseIf iRandomizer == 1
        iRandomizerValue = OffsetRandomizer * -1
      Else
        iRandomizerValue = 0 
      EndIf

      If iRandY < 1
        offsets[0] = (OffsetDistanceY + iRandomizerValue) as Float
      ElseIf iRandY == 1
        offsets[0] = (OffsetDistanceY * -1 + iRandomizerValue) as Float
      Else
        offsets[0] = (OffsetDistanceY * (I + iNumFriendsToSpawn) + iRandomizerValue) as Float
      EndIf

      offsets[1] = (GV_SpawnDistanceOffset.GetValueInt() + iRandomizer) as Float
      currSpawn = PlayerShip.GetRef()
      SpaceShipReference akShip = PlayerRef.GetCurrentShipRef()

      spaceshipreference newShip01 = currSpawn.PlaceShipAtMe(currFriend.ShipToSpawn as Form, 4, True, False, False, True, offsets, None, None, True)
	  Utility.Wait(3.0)
      ;newShip01.InstantDock(PlayerShip.GetShipReference())
      SoundEventFuelFillEnd.Play(akShip, None, None) 
	  akShip.Additem(SpaceshipResourcePackage, 1, False)
	  Utility.Wait(3.0)
      newShip01.DisableWithGravJump() 

      EmergencyCallReset()
      TutorialFinishInSpace()

EndFunction

Function EmergencyBeaconActivator()

       PlayerRef.Placeatme(SpaceshipEmergencyBeaconActivator as Form, 1, False, False, True, None, None, True)

       If TutorialEmergencyBeacon == False
          TutorialEmergencyBeacon = True
		  Utility.Wait(1.0)
		  MSG_Tutorial_EmergencyBeacon.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	EndIf

EndFunction

Function EmergencyCallReset()

         If EmergencyIsOnTheirWay == True
            EmergencyIsOnTheirWay = False
      EndIf

EndFunction

Function TutorialFinishInSpace()

         If TutorialRescueCallTrigger == False
			TutorialRescueCallTrigger = True
	        Utility.Wait(2.0)
			MSG_Tutorial_RescueCall.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
      EndIf

EndFunction

Function TutorialFinishOnLand()

         If TutorialRescueCallTrigger == False
			TutorialRescueCallTrigger = True
      EndIf

EndFunction

Function ShakeAndRumble02()

       Game.ShakeCamera(PlayerRef, 0.3, 1)
       Game.ShakeController(0.01, 0.01, 0.5)

EndFunction

Function FuelThresholds()
         
		 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
	 
	     Float RestoreFuelIfNegative = - akShip.GetValue(SpaceshipFuelTank)
		 
		 If akShip.GetValue(SpaceshipFuelTank) < 0 
            akShip.RestoreValue(SpaceshipFuelTank, RestoreFuelIfNegative)
      EndIf

      SpaceshipSystemStatus()

EndFunction

Function FuelThresholdsGD()
         
		 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
	 
	     Float RestoreFuelIfNegative = - akShip.GetValue(SpaceshipFuelTank)
		 
		 If akShip.GetValue(SpaceshipFuelTank) < 0 
            akShip.RestoreValue(SpaceshipFuelTank, RestoreFuelIfNegative)
      EndIf

EndFunction

Function MaintenanceThresholds()

    SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()

    Float DamageWeapon1 = - akShip.GetValue(SpaceshipWeaponHealth)
    Float DamageWeapon2 = - akShip.GetValue(SpaceshipWeaponHealth02)
    Float DamageWeapon3 = - akShip.GetValue(SpaceshipWeaponHealth03)

    Float DamageEngine = - akShip.GetValue(SpaceshipSystemEngineHealth)
    Float DamageShield = - akShip.GetValue(SpaceshipShieldHealth)
    Float DamageGravJump = - akShip.GetValue(SpaceshipSystemGravdriveHealth)
    Float DamageHealth = - akShip.GetValue(SpaceshipHealth)

		 If akShip.GetValue(SpaceshipSystemEngineHealth) < 0
			akShip.RestoreValue(SpaceshipSystemEngineHealth, DamageEngine)          
	  EndIf

		 If akShip.GetValue(SpaceshipShieldHealth) < 0
			akShip.RestoreValue(SpaceshipShieldHealth, DamageShield)          
	  EndIf

		 If akShip.GetValue(SpaceshipSystemGravdriveHealth) < 0
			akShip.RestoreValue(SpaceshipSystemGravdriveHealth, DamageGravJump)          
	  EndIf

		 If akShip.GetValue(SpaceshipWeaponHealth) < 0
			akShip.RestoreValue(SpaceshipWeaponHealth, DamageWeapon1)          
	  EndIf

		 If akShip.GetValue(SpaceshipWeaponHealth02) < 0
			akShip.RestoreValue(SpaceshipWeaponHealth02, DamageWeapon2)          
	  EndIf

		 If akShip.GetValue(SpaceshipWeaponHealth03) < 0
			akShip.RestoreValue(SpaceshipWeaponHealth03, DamageWeapon3)          
	  EndIf

EndFunction

Function SpaceshipSystemStatus()

                                        SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
										
										Float TotalFuelInTheTank = akShip.GetValue(SpaceshipFuelTank)									
                                        Float FuelTankAmount = akShip.GetBaseValue(SpaceshipFuelTank)
                                        Float FuelTankAmount02 = akShip.GetBaseValue(SpaceshipFuelTank) / 3
        		   		  
		  Utility.Wait(0.1)
		         
				 If GV_SpaceshipFuelConsumptionType.GetValue() == 1
				    MSG_SpaceshipAnalizerCheckerInfo.show(TotalFuelInTheTank, FuelTankAmount, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
		     
			 ElseIf GV_SpaceshipFuelConsumptionType.GetValue() == 2
                         If TotalFuelInTheTank < FuelTankAmount02
						    MSG_SpaceshipAnalizerCheckerInfo.show(TotalFuelInTheTank, FuelTankAmount, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
                      EndIf
              EndIf

EndFunction

Function SpaceshipSystemFuelStatus()

        StartTimer(0.3, 18)

EndFunction

Function SpaceshipSystemStatusOnRefuel()

                                        SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
										
										Float TotalFuelInTheTank = akShip.GetValue(SpaceshipFuelTank)									
                                        Float FuelTankAmount = akShip.GetBaseValue(SpaceshipFuelTank)
        		   		  
		  Utility.Wait(0.1)		         
		  MSG_SpaceshipAnalizerCheckerInfo.show(TotalFuelInTheTank, FuelTankAmount, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)

EndFunction

Function SpaceshipSystemsIntroduction()

         CurrentLoc = PlayerRef.GetCurrentlocation()

        If CurrentLoc == playerShipInteriorLocation.GetLocation() == True
              
               If TutorialIntroduction == False
                  Utility.Wait(0.5)
				  TutorialIntroduction()
			EndIf

     EndIf

EndFunction

Function SpaceshipSystemsTutorials()

         spaceshipreference homeShipRef = HomeShip.GetShipRef()
		 
		 ObjectReference PilotSeat = PlayerRef.GetFurnitureUsing()
		          
		 Float FuelTankAmount = homeShipRef.GetBaseValue(SpaceshipFuelTank)
	     Float TotalFuelInTheTank = homeShipRef.GetValue(SpaceshipFuelTank)
        
		 CurrentLoc = PlayerRef.GetCurrentlocation()

     If GV_SpaceshipSystemsToggle.GetValue() == 1

        If CurrentLoc == playerShipInteriorLocation.GetLocation() == True

               If TutorialRefueling == False
			      MSG_Tutorial_Refueling.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
				  Utility.Wait(0.4)                
				  MSG_Tutorial_RefuelingHelper.ShowAsHelpMessage("None", 10.0, 0.0, 1, "", 0, None)
				  PlayerRef.Additem(SpaceshipFuel, 100, False)
				  homeShipRef.Additem(SpaceshipEmergencyRepairBotsMisc, 2, False)
				  homeShipRef.Additem(SpaceshipMaintenanceKitMisc, 2, False)
				  homeShipRef.Additem(SpaceshipSpareParts, 5, False)
				  homeShipRef.DamageValue(SpaceshipFuelTank, TotalFuelInTheTank)
				  TutorialRefueling = True

	       ElseIf TutorialRefuelingApply == False

                       If homeShipRef.GetItemCount(SpaceshipFuel) > 0
				          Utility.Wait(1.0)
			              PlayerRef.Additem(SpaceshipAnalizer, 1, False)
						  MSG_Tutorial_RefuelingApply.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
                          MSG_Tutorial_RefuelingApplyHelper.ShowAsHelpMessage("None", 10.0, 0.0, 1, "", 0, None)
						  TutorialRefuelingApply = True
                    EndIf

	       ElseIf TutorialRefuelingDone == False

                     If TutorialFillFuel == True
				        homeShipRef.Removeitem(SpaceshipFuel, 99999, True, None)
				        PlayerRef.Additem(SpaceshipEmergencyCallPotion, 1, False)
						PlayerRef.Additem(SpaceshipEmergencyBeaconPotion, 1, False)
						homeShipRef.DamageValue(SpaceshipFuelTank, TotalFuelInTheTank)
						MSG_Tutorial_RefuelingDone.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)                       
                        MSG_Tutorial_RefuelingDoneHelper.ShowAsHelpMessage("None", 10.0, 0.0, 1, "", 0, None)
						TutorialRefuelingDone = True
                        GV_SpaceshipSystemsTutorial01.SetValue(1)
				  EndIf

	       ElseIf TutorialRescueCall == False

                       If TutorialRescueCallTrigger == True
						  GV_SpaceshipTutorial03.SetValue(1)
						  TutorialRescueCall = True
					EndIf

            EndIf

     EndIf

	          If TutorialAdditionalInfo == False && TutorialRescueCall == True || TutorialRescueCallOnLand == True

                          CancelTimer(11)
				          Utility.Wait(2.0)
						  MSG_Tutorial_AdditionalInfo.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
                          TutorialAdditionalInfo = True
                          homeShipRef.RestoreValue(SpaceshipFuelTank, FuelTankAmount)
	                      PlayerRef.Additem(SpaceshipTeleporter, 3, False)
		                  (ItemInjector as SISA_ItemInjector).InjectFuelItemsToTheseLists()
	                      TakeOff.EnableTakeOff(True) 
	                      TakeOff.Reset()
	                      TakeOff.Delete()
	                      TakeOff = inputEnableLayer.Create()
	                      TakeOff.EnableTakeOff(True)
	                       If GV_SpaceshipArsenal.GetValue() == 1
			                  homeShipRef.Additem(AMauler, 1000, True)
                              homeShipRef.Additem(AAtatl, 30, True)
                              homeShipRef.Additem(ADragon, 1000, True)
                        EndIf
		  
		  ElseIf TutorialRescueCallOnLand == False

                       If GV_SpaceshipTutorial02.GetValue() == 1
				          Utility.Wait(1.0)
						  MSG_Tutorial_RescueCall02.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
                          GV_SpaceshipTutorial03.SetValue(1)
						  TutorialRescueCallOnLand = True
					EndIf

            EndIf

  EndIf

EndFunction

Function SpaceshipSystemStart()
  
  StartTimer(2, 12) 
  
EndFunction

Function Register()

  RegisterForMenuOpenCloseEvent("GalaxyStarMapMenu")
  RegisterForMenuOpenCloseEvent("SpaceshipEditorMenu")    
  RegisterForRemoteEvent(PlayerRef, "OnPlayerLoadGame")
  RegisterForRemoteEvent(PlayerShip, "OnShipGravJump")	 
  RegisterForRemoteEvent(PlayerShip, "OnShipLanding") 
  RegisterForRemoteEvent(PlayerShip, "OnShipTakeOff")
  RegisterForRemoteEvent(PlayerShip, "OnLocationChange")   
  RegisterForRemoteEvent(PlayerRef, "OnEnterShipInterior") 
  RegisterForRemoteEvent(PlayerRef, "OnExitShipInterior")  
  RegisterForRemoteEvent(PlayerRef, "OnHomeShipSet")
  RegisterForRemoteEvent(PlayerRef, "OnPlayerModifiedShip")
  RegisterForRemoteEvent(PlayerRef, "OnLocationChange")    
  
  Quest TheStarjackerDLC = Game.GetFormFromFile(0x0000492D, "SFBGS003.esm") as Quest
  RegisterForRemoteEvent(TheStarjackerDLC, "OnStageSet")  
  
  Utility.Wait(0.2)
  PlayerRef.AddSpell(SpaceshipMaintenanceRepairSpell, False) 
  PlayerRef.AddSpell(SpaceshipMaintenanceRepairSpellUI, False) 
  PlayerRef.AddSpell(SPL_FarTravelDisabler, False) 
  
  PlayerRef.Addperk(SpaceshipFuelDiscountPerk, False)
  PlayerRef.Addperk(SpaceshipStarviewOpenizer, False)
  PlayerRef.AddPerk(SpaceshipOnBoostPerk, False)
  
  RegisterMaintenance()
  		
		If SpaceshipSystemsStoreTextQuest.IsRunning() == False  
		   SpaceshipSystemsStoreTextQuest.Start()		 
     EndIf

EndFunction

Function Unregister()

 
		        SpaceshipReference homeShipRef = HomeShip.GetShipRef() 
                
				UnregisterForMenuOpenCloseEvent("GalaxyStarMapMenu")
                UnregisterForMenuOpenCloseEvent("SpaceshipEditorMenu")                
				UnregisterForMenuOpenCloseEvent("LoadingMenu")
				UnregisterForRemoteEvent(PlayerRef, "OnPlayerLoadGame")
                UnregisterForRemoteEvent(PlayerShip, "OnShipGravJump")	 
                UnregisterForRemoteEvent(PlayerShip, "OnShipLanding") 
                UnregisterForRemoteEvent(PlayerShip, "OnShipTakeOff")
                UnregisterForRemoteEvent(PlayerShip, "OnLocationChange")                 
				UnregisterForRemoteEvent(PlayerRef, "OnEnterShipInterior") 
                UnregisterForRemoteEvent(PlayerRef, "OnExitShipInterior")  
                UnregisterForRemoteEvent(PlayerRef, "OnHomeShipSet")
                UnregisterForRemoteEvent(PlayerRef, "OnPlayerModifiedShip")          
                UnregisterForRemoteEvent(PlayerRef, "OnLocationChange")  		        
                
				Quest TheStarjackerDLC = Game.GetFormFromFile(0x0000492D, "SFBGS003.esm") as Quest
                UnregisterForRemoteEvent(TheStarjackerDLC, "OnStageSet")				
				
				PlayerRef.RemoveSpell(SpaceshipMaintenanceRepairSpell)
				PlayerRef.RemoveSpell(SpaceshipMaintenanceRepairSpellUI)
				PlayerRef.RemoveSpell(SPL_FarTravelDisabler)	            
				
				PlayerRef.Removeperk(SpaceshipFuelDiscountPerk)
	            PlayerRef.Removeperk(SpaceshipStarviewOpenizer)
	            PlayerRef.Removeperk(SpaceshipOnBoostPerk)
	            PlayerRef.Removeperk(SpaceshipMaintenanceStationPerk)				   
				   
				   If PlayerRef.GetItemCount(SpaceshipAnalizer) > 0
                      PlayerRef.Removeitem(SpaceshipAnalizer, 9999, True, None)                                       
				EndIf

                   If PlayerRef.GetItemCount(SpaceshipFuel) > 0
                      PlayerRef.Removeitem(SpaceshipFuel, 9999, True, None)                                       
				EndIf
			
                   If PlayerRef.GetItemCount(SpaceshipEmergencyBeaconPotion) > 0
                      PlayerRef.Removeitem(SpaceshipEmergencyBeaconPotion, 9999, True, None)                                       
				EndIf		

                   If PlayerRef.GetItemCount(SpaceshipEmergencyRepairBotsMisc) > 0
                      PlayerRef.Removeitem(SpaceshipEmergencyRepairBotsMisc, 9999, True, None)                                       
				EndIf	

                   If PlayerRef.GetItemCount(SpaceshipEmergencyCallPotion) > 0
                      PlayerRef.Removeitem(SpaceshipEmergencyCallPotion, 9999, True, None)                                       
				EndIf	

                   If PlayerRef.GetItemCount(SpaceshipMaintenanceKitMisc) > 0
                      PlayerRef.Removeitem(SpaceshipMaintenanceKitMisc, 9999, True, None)                                       
				EndIf

                   If PlayerRef.GetItemCount(SpaceshipTeleporter) > 0
                      PlayerRef.Removeitem(SpaceshipTeleporter, 9999, True, None)                                       
				EndIf

                   If homeShipRef.GetItemCount(SpaceshipAnalizer) > 0
                      homeShipRef.Removeitem(SpaceshipAnalizer, 9999, True, None)                                       
				EndIf

                   If homeShipRef.GetItemCount(SpaceshipEmergencyBeaconPotion) > 0
                      homeShipRef.Removeitem(SpaceshipEmergencyBeaconPotion, 9999, True, None)                                       
				EndIf		

                   If homeShipRef.GetItemCount(SpaceshipEmergencyCallPotion) > 0
                      homeShipRef.Removeitem(SpaceshipEmergencyCallPotion, 9999, True, None)                                       
				EndIf	
			
                   If homeShipRef.GetItemCount(SpaceshipFuel) > 0
                      homeShipRef.Removeitem(SpaceshipFuel, 9999, True, None)                                       
				EndIf	

                   If homeShipRef.GetItemCount(SpaceshipEmergencyRepairBotsMisc) > 0
                      homeShipRef.Removeitem(SpaceshipEmergencyRepairBotsMisc, 9999, True, None)                                       
				EndIf	

                   If homeShipRef.GetItemCount(SpaceshipMaintenanceKitMisc) > 0
                      homeShipRef.Removeitem(SpaceshipMaintenanceKitMisc, 9999, True, None)                                       
				EndIf

                   If homeShipRef.GetItemCount(SpaceshipTeleporter) > 0
                      homeShipRef.Removeitem(SpaceshipTeleporter, 9999, True, None)                                       
				EndIf

                   GV_SpaceshipNeedsMaintenanceToggle.SetValue(0)

                   ReturnVanillaFastTravel()

                   SpaceshipPowerValueStored = False
                   SpaceshipEngineIgnited = False
                   TutorialIntroduction = False
                   TutorialEmergencyBeacon = False
                   TutorialRefueling = False
                   TutorialRefuelingApply = False
                   TutorialRefuelingDone = False
                   TutorialRescueCall = False
                   TutorialRescueCallOnLand = False
                   TutorialRescueCallTrigger = False
                   TutorialAdditionalInfo = False
                   TutorialFillFuel = False
                   EmergencyIsOnTheirWay = False
                   SpaceshipPower = False
                   EnginePowerRestricted = False
                   GravJumpInitiated = False
                   RefuelFuelStarted = False
                   CameraShakeOnFuelFill = False
                   MaintenanceEmergency = False
                   LandingPad = False

                   CancelTimer(1)
                   CancelTimer(3)
                   CancelTimer(4)
                   CancelTimer(5)
                   CancelTimer(6)
                   CancelTimer(7)
                   CancelTimer(8)
                   CancelTimer(10)
				   CancelTimer(11)
                   CancelTimer(12)	
                   CancelTimer(14)
				   CancelTimer(15)
                   CancelTimer(16)		
                   CancelTimer(18)
                   CancelTimer(20)
                   CancelTimer(21)
                   CancelTimer(22)

		           wwiseevent.StopInstance(AlertSoundInstance)
		           AlertSoundInstance = -1	

		           wwiseevent.StopInstance(GravDrivePrepareSoundInstance)
		           GravDrivePrepareSoundInstance = -1	

		           wwiseevent.StopInstance(EngineOnSoundInstance)
		           EngineOnSoundInstance = -1	

		           wwiseevent.StopInstance(BotsStartSoundInstance)
		           BotsStartSoundInstance = -1	

		           wwiseevent.StopInstance(BotsEndSoundInstance)
		           BotsEndSoundInstance = -1
                   
				   (ItemInjector as SISA_ItemInjector).RevertListsFuel()                   
		            SpaceshipSystemsStoreTextQuest.Stop()
		            Self.Stop()
EndFunction

Function SpaceshipSystemExterminatus()
         
		 SpaceshipSystemsStoreTextQuest.Stop()
         Self.Stop()

EndFunction

Function UnregisterMaintenance()
        
                SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()       
				
				GV_SpaceshipNeedsMaintenanceToggle.SetValue(0)
			    GV_SpaceshipSystemDamaged.SetValue(0)		  
                GV_SpaceshipMaintMalfGained.SetValue(0)
                GV_SpaceshipDebuffThrustersOff.SetValue(0)
                GV_SpaceshipDebuffTargetingOff.SetValue(0)
                GV_SpaceshipDebuffLowerWeaponDamage.SetValue(0)
                GV_SpaceshipDebuffLowerCargoCapacity.SetValue(0)
                GV_SpaceshipDebuffDecreasedBoost.SetValue(0)
                GV_SpaceshipDebuffLessShields.SetValue(0)
                GV_SpaceshipDebuffGravDriveFuelIncrease.SetValue(0)
                GV_SpaceshipDebuffGravDriveDistanceDecrease.SetValue(0)
                GV_SpaceshipDebuffLongerTargeting.SetValue(0)
                GV_SpaceshipDebuffSlowAutoRepair.SetValue(0)
                GV_SpaceshipDebuffFuelLeak.SetValue(0)
                GV_SpaceshipDebuffHeatleechAttack.SetValue(0)
                GV_SpaceshipDebuffAutoRepair.SetValue(0)
                GV_SpaceshipDebuffSlowerWPNRechargeRate.SetValue(0)
                GV_SpaceshipDebuffManeuverability.SetValue(0)
                GV_SpaceshipDebuffSystemMitigation.SetValue(0)
                GV_SpaceshipDebuffGravDriveZeroGravity.SetValue(0)		        
                GV_SpaceshipDebuffHullBreach.SetValue(0)
                GV_SpaceshipDebuffSystemFailure.SetValue(0)			
                GV_SpaceshipDebuffBrokenRefueler.SetValue(0)				
                GV_SpaceshipDebuffDisabledO2.SetValue(0)				
                GV_SpaceshipDebuffDisabledGravDrive.SetValue(0)
                GV_SpaceshipDebuffLandingGearThrustLoss.SetValue(0)
                GV_SpaceshipDebuffLongerUndocking.SetValue(0)
                GV_SpaceshipDebuffDoorShortCircuit.SetValue(0)
                GV_SpaceshipDebuffGasLeak.SetValue(0)
                GV_SpaceshipDebuffAbnormalSpoolingPhase.SetValue(0)
                GV_SpaceshipDebuffTargetingAPCost.SetValue(0)
                GV_SpaceshipDebuffRepairCombatBot.SetValue(0)
                GV_SpaceshipDebuffRadiationLeak.SetValue(0)

                akShip.Removekeyword(KWD_SpaceshipDebuffAutoRepair)
                akShip.Removekeyword(KWD_SpaceshipDebuffTargetingOff)
                akShip.Removekeyword(KWD_SpaceshipDebuffThrustersOff)
                akShip.Removekeyword(KWD_SpaceshipDebuffDecreasedBoost)
                akShip.Removekeyword(KWD_SpaceshipDebuffFuelLeak)
                akShip.Removekeyword(KWD_SpaceshipDebuffGravDriveFuelIncrease)
                akShip.Removekeyword(KWD_SpaceshipDebuffGravDriveDistanceDecrease)
                akShip.Removekeyword(KWD_SpaceshipDebuffLongerTargeting)
                akShip.Removekeyword(KWD_SpaceshipDebuffLowerCargoCapacity)
                akShip.Removekeyword(KWD_SpaceshipDebuffLessShields)
                akShip.Removekeyword(KWD_SpaceshipDebuffSlowAutoRepair)
                akShip.Removekeyword(KWD_SpaceshipDebuffLowerWeaponDamage)
                akShip.Removekeyword(KWD_SpaceshipDebuffHeatleechAttack)
                akShip.Removekeyword(KWD_SpaceshipDebuffSlowerWPNRechargeRate)
                akShip.Removekeyword(KWD_SpaceshipDebuffManeuverability)
                akShip.Removekeyword(KWD_SpaceshipDebuffSystemMitigation)
                akShip.Removekeyword(KWD_SpaceshipDebuffGravDriveZeroGravity)
                akShip.Removekeyword(KWD_SpaceshipDebuffHullBreach)
                akShip.Removekeyword(KWD_SpaceshipDebuffSystemFailure)
                akShip.Removekeyword(KWD_SpaceshipDebuffBrokenRefueler)
                akShip.Removekeyword(KWD_SpaceshipDebuffDisabledO2)
                akShip.Removekeyword(KWD_SpaceshipDebuffDisabledGravDrive)
                akShip.Removekeyword(KWD_SpaceshipDebuffLandingGearThrustLoss)
                akShip.Removekeyword(KWD_SpaceshipDebuffLongerUndocking)
                akShip.Removekeyword(KWD_SpaceshipDebuffDoorShortCircuit)
                akShip.Removekeyword(KWD_SpaceshipDebuffGasLeak)
                akShip.Removekeyword(KWD_SpaceshipDebuffAbnormalSpoolingPhase)
                akShip.Removekeyword(KWD_SpaceshipDebuffTargetingAPCost)
                akShip.Removekeyword(KWD_SpaceshipDebuffRepairCombatBot)
                akShip.Removekeyword(KWD_SpaceshipDebuffRadiationLeak)
				
				PlayerRef.Removeperk(SpaceshipMaintenanceStationPerk)
				PlayerRef.RemoveSpell(SpaceshipMaintenanceRepairSpell)
				PlayerRef.RemoveSpell(SpaceshipMaintenanceRepairSpellUI)
                PlayerRef.Removeperk(SpaceshipMalf_DebuffAutoRepair)
                PlayerRef.Removeperk(SpaceshipMalf_DebuffAutoRepairRate)
                PlayerRef.Removeperk(SpaceshipMalf_DebuffCargoCapacity)
                PlayerRef.Removeperk(SpaceshipMalf_DebuffTopSpeed)
                PlayerRef.Removeperk(SpaceshipMalf_DebuffGravDriveFuel)
                PlayerRef.Removeperk(SpaceshipMalf_DebuffGravDriveRange)
                PlayerRef.Removeperk(SpaceshipMalf_DebuffEngineBoost)
                PlayerRef.Removeperk(SpaceshipMalf_DebuffLongerTargeting)
                PlayerRef.Removeperk(SpaceshipMalf_DebuffManeuverability)
                PlayerRef.Removeperk(SpaceshipMalf_DebuffShieldMaxHealth)
                PlayerRef.Removeperk(SpaceshipMalf_DebuffSystemMitigation)
                PlayerRef.Removeperk(SpaceshipMalf_DebuffWeaponRechargeRate)
                PlayerRef.Removeperk(SpaceshipMalf_DebuffLowWeaponDamage)
                PlayerRef.Removeperk(SpaceshipMalf_DebuffTargetingAPCost)
                
				EnableO2InShipEnvironment()                   			
                   
				   If PlayerRef.GetItemCount(SpaceshipEmergencyRepairBotsMisc) > 0
                      PlayerRef.Removeitem(SpaceshipEmergencyRepairBotsMisc, 9999, True, None)                                       
				EndIf	

                   If akShip.GetItemCount(SpaceshipEmergencyRepairBotsMisc) > 0
                      akShip.Removeitem(SpaceshipEmergencyRepairBotsMisc, 9999, True, None)                                       
				EndIf	

                   If PlayerRef.GetItemCount(SpaceshipMaintenanceKitMisc) > 0
                      PlayerRef.Removeitem(SpaceshipMaintenanceKitMisc, 9999, True, None)                                       
				EndIf

                   If akShip.GetItemCount(SpaceshipMaintenanceKitMisc) > 0
                      akShip.Removeitem(SpaceshipMaintenanceKitMisc, 9999, True, None)                                       
				EndIf
                   	 			   
			    akShip.RestoreValue(SpaceshipHealth, 99999.0)
		        akShip.RestoreValue(SpaceshipSystemEngineHealth, 99999.0) 
			    akShip.RestoreValue(SpaceshipShieldHealth, 99999.0) 
			    akShip.RestoreValue(SpaceshipSystemGravdriveHealth, 99999.0) 
			    akShip.RestoreValue(SpaceshipWeaponHealth, 99999.0) 
			    akShip.RestoreValue(SpaceshipWeaponHealth02, 99999.0)
			    akShip.RestoreValue(SpaceshipWeaponHealth03, 99999.0) 
                   
				   If MaintenanceEmergency == True
			          MaintenanceEmergency = False
		 	    EndIf
			    
				wwiseevent.StopInstance(MaintenanceEmergencySoundInstance)
    	        MaintenanceEmergencySoundInstance = -1

EndFunction

Function RegisterMaintenance()
        
                SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()       				
				
				GV_SpaceshipNeedsMaintenanceToggle.SetValue(1)		  		        
                
				Float WaitTime = 0.5
				
				Utility.Wait(WaitTime)				
				PlayerRef.AddPerk(SpaceshipMaintenanceStationPerk, False)
				Utility.Wait(WaitTime)	
				PlayerRef.AddSpell(SpaceshipMaintenanceRepairSpell, False)
				PlayerRef.AddSpell(SpaceshipMaintenanceRepairSpellUI, False)
				Utility.Wait(WaitTime)	
                PlayerRef.AddPerk(SpaceshipMalf_DebuffAutoRepair, False)
				Utility.Wait(WaitTime)	
                PlayerRef.AddPerk(SpaceshipMalf_DebuffAutoRepairRate, False)
				Utility.Wait(WaitTime)	
                PlayerRef.AddPerk(SpaceshipMalf_DebuffCargoCapacity, False)
				Utility.Wait(WaitTime)	
                PlayerRef.AddPerk(SpaceshipMalf_DebuffTopSpeed, False)
				Utility.Wait(WaitTime)	
                PlayerRef.AddPerk(SpaceshipMalf_DebuffGravDriveFuel, False)
				Utility.Wait(WaitTime)	
                PlayerRef.AddPerk(SpaceshipMalf_DebuffGravDriveRange, False)
				Utility.Wait(WaitTime)	
                PlayerRef.AddPerk(SpaceshipMalf_DebuffEngineBoost, False)
				Utility.Wait(WaitTime)	
                PlayerRef.AddPerk(SpaceshipMalf_DebuffLongerTargeting, False)
				Utility.Wait(WaitTime)	
                PlayerRef.AddPerk(SpaceshipMalf_DebuffManeuverability, False)
				Utility.Wait(WaitTime)	
                PlayerRef.AddPerk(SpaceshipMalf_DebuffShieldMaxHealth, False)
				Utility.Wait(WaitTime)	
                PlayerRef.AddPerk(SpaceshipMalf_DebuffSystemMitigation, False)
				Utility.Wait(WaitTime)	
                PlayerRef.AddPerk(SpaceshipMalf_DebuffWeaponRechargeRate, False)
				Utility.Wait(WaitTime)	
                PlayerRef.AddPerk(SpaceshipMalf_DebuffLowWeaponDamage, False)
				Utility.Wait(WaitTime)	
                PlayerRef.AddPerk(SpaceshipMalf_DebuffTargetingAPCost, False)

                PlayerRef.RestoreValue(SpaceshipReactorClassA, 999)
                PlayerRef.RestoreValue(SpaceshipReactorClassB, 999)
                PlayerRef.RestoreValue(SpaceshipReactorClassC, 999)
                PlayerRef.RestoreValue(SpaceshipReactorClassM, 999)
                   			
                   If akShip.GetItemCount(SpaceshipEmergencyRepairBotsMisc) <= 0
                      akShip.Additem(SpaceshipEmergencyRepairBotsMisc, 2, False)                                       
				EndIf	
                   If akShip.GetItemCount(SpaceshipMaintenanceKitMisc) <= 0
                      akShip.Additem(SpaceshipMaintenanceKitMisc, 2, False)                                       
				EndIf
                   
                      akShip.Additem(SpaceshipSpareParts, 3, False)                                       

 EndFunction

Function EssentialItems()

		           SpaceshipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
				   
				   CurrentLoc = PlayerRef.GetCurrentlocation()
				   
				   akShip.Additem(SpaceshipFuel, 100, False)
                   akShip.Additem(SpaceshipMaintenanceKitMisc, 2, False)
				   akShip.Additem(SpaceshipEmergencyRepairBotsMisc, 2, False)				   
				   akShip.Additem(SpaceshipSpareParts, 3, False)
				   PlayerRef.Additem(SpaceshipAnalizer, 1, False)
				   PlayerRef.Additem(SpaceshipEmergencyCallPotion, 1, False)
				   PlayerRef.Additem(SpaceshipEmergencyBeaconPotion, 1, False)                  
				   PlayerRef.Additem(SpaceshipTeleporter, 3, False)
           
	               If GV_SpaceshipArsenal.GetValue() == 1
						If CurrentLoc == Frontier.GetLocation() == True
					       akShip.Additem(AMauler, 1000, True)
                           akShip.Additem(AAtatl, 30, True)
                           akShip.Additem(ADragon, 1000, True)
                     EndIf
				EndIf

EndFunction

Function EssentialItemsDebug()
         				   				   
				   If PlayerRef.GetItemCount(SpaceshipAnalizer) <= 0
				      PlayerRef.Additem(SpaceshipAnalizer, 1, False)
				EndIf				   
				   If PlayerRef.GetItemCount(SpaceshipEmergencyCallPotion) <= 0				   
				      PlayerRef.Additem(SpaceshipEmergencyCallPotion, 1, False)
				EndIf				   
				   If PlayerRef.GetItemCount(SpaceshipEmergencyBeaconPotion) <= 0
				      PlayerRef.Additem(SpaceshipEmergencyBeaconPotion, 1, False)
				EndIf

EndFunction

Function PrepareSystemsTutorial()

     Register()               
     
	 If EnginePowerRestricted == False
        EnginePowerRestricted = True
  EndIf

EndFunction

Function PrepareSystems()
                            
         Register()
                   
          If EnginePowerRestricted == False
             EnginePowerRestricted = True
       EndIf
                
		EssentialItems()
        CheckSystems()
		(ItemInjector as SISA_ItemInjector).InjectFuelItemsToTheseLists()

EndFunction

Function SpaceshipSystemBook()
      
	         If GV_SpaceshipSystemsToggle.GetValue() == 0
                GV_SpaceshipSystemsToggle.SetValue(1)
                TutorialIntroduction = False
                StartTimer(2, 12) 
         ElseIf GV_SpaceshipSystemsToggle.GetValue() == 1
                GV_SpaceshipSystemsToggle.SetValue(0)                
                UnregisterMaintenance()
				Unregister()
				MSG_SpaceshipSystemsTurnedOff.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
          EndIf

EndFunction

Function SpaceshipMaintenanceSystemBook()            			
			
			If GV_SpaceshipNeedsMaintenanceToggle.GetValue() == 0
               RegisterMaintenance()		
		ElseIf GV_SpaceshipNeedsMaintenanceToggle.GetValue() == 1	           
               UnregisterMaintenance()		 
		 EndIf

EndFunction

Function SpaceshipSystemDisableSystems()     
         Unregister()
EndFunction

Function StarfarerModeBook()

        If GV_SpaceshipStarfarerMode.GetValue() == 0
           GV_SpaceshipStarfarerMode.SetValue(1)
	       PlayerRef.Additem(GravJumpLimiter, 1, True)
	ElseIf GV_SpaceshipStarfarerMode.GetValue() == 1
           GV_SpaceshipStarfarerMode.SetValue(0)
		   PlayerRef.Removeitem(GravJumpLimiter, 999, True, None)
	 EndIf

EndFunction

Function CassiopeiaModeBook()

        If GV_SpaceshipCassiopeia.GetValue() == 0
           GV_SpaceshipCassiopeia.SetValue(1)
		   CassiopeiaRegistration()
	ElseIf GV_SpaceshipCassiopeia.GetValue() == 1
           GV_SpaceshipCassiopeia.SetValue(0)
		   CassiopeiaUnregistration()
	 EndIf

EndFunction

Function MaintenanceStationEnter()

         StartTimer(0.1, 21)

EndFunction

Function Debug_MaintenanceMalfunctionsAdd()

SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()

   GV_SpaceshipDebuffThrustersOff.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffThrustersOff)
   GV_SpaceshipDebuffTargetingOff.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffTargetingOff)
   GV_SpaceshipDebuffLowerWeaponDamage.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffLowerWeaponDamage)
   GV_SpaceshipDebuffLowerCargoCapacity.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffLowerCargoCapacity)
   GV_SpaceshipDebuffDecreasedBoost.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffDecreasedBoost)
   GV_SpaceshipDebuffLessShields.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffLessShields)
   GV_SpaceshipDebuffGravDriveFuelIncrease.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffGravDriveFuelIncrease)
   GV_SpaceshipDebuffGravDriveDistanceDecrease.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffGravDriveDistanceDecrease)
   GV_SpaceshipDebuffLongerTargeting.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffLongerTargeting)
   GV_SpaceshipDebuffSlowAutoRepair.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffSlowAutoRepair)
   GV_SpaceshipDebuffFuelLeak.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffFuelLeak)
   GV_SpaceshipDebuffHeatleechAttack.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffHeatleechAttack)
   GV_SpaceshipDebuffAutoRepair.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffAutoRepair)
   GV_SpaceshipDebuffSlowerWPNRechargeRate.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffSlowerWPNRechargeRate)
   GV_SpaceshipDebuffManeuverability.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffManeuverability)
   GV_SpaceshipDebuffSystemMitigation.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffSystemMitigation)
   GV_SpaceshipDebuffHullBreach.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffHullBreach)
   GV_SpaceshipDebuffSystemFailure.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffSystemFailure)
   GV_SpaceshipDebuffBrokenRefueler.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffBrokenRefueler)
   GV_SpaceshipDebuffDisabledO2.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffDisabledO2)
   GV_SpaceshipDebuffDisabledGravDrive.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffDisabledGravDrive)
   GV_SpaceshipDebuffLandingGearThrustLoss.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffLandingGearThrustLoss)
   GV_SpaceshipDebuffLongerUndocking.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffLongerUndocking)
   GV_SpaceshipDebuffDoorShortCircuit.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffDoorShortCircuit)
   GV_SpaceshipDebuffGasLeak.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffGasLeak)
   GV_SpaceshipDebuffAbnormalSpoolingPhase.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffAbnormalSpoolingPhase)
   GV_SpaceshipDebuffTargetingAPCost.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffTargetingAPCost)
   GV_SpaceshipDebuffRepairCombatBot.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffRepairCombatBot)
   GV_SpaceshipDebuffRadiationLeak.SetValue(1)
   akShip.addkeyword(KWD_SpaceshipDebuffRadiationLeak)
   GV_SpaceshipMaintMalfGained.SetValue(1)

      If GV_SpaceshipGravityToggle.GetValue() == 1
         GV_SpaceshipDebuffGravDriveZeroGravity.SetValue(1)
         akShip.addkeyword(KWD_SpaceshipDebuffGravDriveZeroGravity)
         MaintenanceSpaceshipZegoGOn()
   EndIf
   
   DisableO2InShipEnvironment()
   GravDriveOvercharge()
   DisableTakeoff()

EndFunction

Function Debug_MaintenanceMalfunctionsRemove()

SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()

   GV_SpaceshipDebuffThrustersOff.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffThrustersOff)
   GV_SpaceshipDebuffTargetingOff.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffTargetingOff)
   GV_SpaceshipDebuffLowerWeaponDamage.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffLowerWeaponDamage)
   GV_SpaceshipDebuffLowerCargoCapacity.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffLowerCargoCapacity)
   GV_SpaceshipDebuffDecreasedBoost.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffDecreasedBoost)
   GV_SpaceshipDebuffLessShields.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffLessShields)
   GV_SpaceshipDebuffGravDriveFuelIncrease.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffGravDriveFuelIncrease)
   GV_SpaceshipDebuffGravDriveDistanceDecrease.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffGravDriveDistanceDecrease)
   GV_SpaceshipDebuffLongerTargeting.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffLongerTargeting)
   GV_SpaceshipDebuffSlowAutoRepair.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffSlowAutoRepair)
   GV_SpaceshipDebuffFuelLeak.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffFuelLeak)
   GV_SpaceshipDebuffHeatleechAttack.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffHeatleechAttack)
   GV_SpaceshipDebuffAutoRepair.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffAutoRepair)
   GV_SpaceshipDebuffSlowerWPNRechargeRate.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffSlowerWPNRechargeRate)
   GV_SpaceshipDebuffManeuverability.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffManeuverability)
   GV_SpaceshipDebuffSystemMitigation.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffSystemMitigation)
   GV_SpaceshipDebuffHullBreach.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffHullBreach)
   GV_SpaceshipDebuffSystemFailure.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffSystemFailure)
   GV_SpaceshipDebuffBrokenRefueler.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffBrokenRefueler)
   GV_SpaceshipDebuffDisabledO2.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffDisabledO2)
   GV_SpaceshipDebuffDisabledGravDrive.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffDisabledGravDrive)
   GV_SpaceshipDebuffLandingGearThrustLoss.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffLandingGearThrustLoss)
   GV_SpaceshipDebuffLongerUndocking.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffLongerUndocking)
   GV_SpaceshipDebuffDoorShortCircuit.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffDoorShortCircuit)
   GV_SpaceshipDebuffGasLeak.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffGasLeak)
   GV_SpaceshipDebuffAbnormalSpoolingPhase.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffAbnormalSpoolingPhase)
   GV_SpaceshipDebuffTargetingAPCost.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffTargetingAPCost)
   GV_SpaceshipDebuffRepairCombatBot.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffRepairCombatBot)
   GV_SpaceshipDebuffRadiationLeak.SetValue(0)
   akShip.removekeyword(KWD_SpaceshipDebuffRadiationLeak)
   GV_SpaceshipMaintMalfGained.SetValue(0)

      If GV_SpaceshipGravityToggle.GetValue() == 1
         GV_SpaceshipDebuffGravDriveZeroGravity.SetValue(0)
         akShip.removekeyword(KWD_SpaceshipDebuffGravDriveZeroGravity)
         MaintenanceSpaceshipZegoGOff()
   EndIf
   
   EnableO2InShipEnvironment()   
   EnableGravJump()
   EnableTakeoff()

EndFunction

Function CruiseFarTravelBook()	

   If GV_SpaceshipCruiseFarTravelToggle.GetValue() == 0
	  GV_SpaceshipCruiseFarTravelToggle.SetValue(1)
	  CruiseFarTravel.SetCruiseModeRequiresFarTravel(True) 
	  CruiseFarTravel.Reset()
	  CruiseFarTravel.Delete()
	  CruiseFarTravel = inputEnableLayer.Create()
	  CruiseFarTravel.SetCruiseModeRequiresFarTravel(True)
	  
	  FarTravel.EnableFarTravel(True) 
	  FarTravel.Reset()
	  FarTravel.Delete()
	  FarTravel = inputEnableLayer.Create()
	  FarTravel.EnableFarTravel(True)

ElseIf GV_SpaceshipCruiseFarTravelToggle.GetValue() == 1
	  GV_SpaceshipCruiseFarTravelToggle.SetValue(0)
	  CruiseFarTravel.SetCruiseModeRequiresFarTravel(False) 
	  CruiseFarTravel.Reset()
	  CruiseFarTravel.Delete()
	  CruiseFarTravel = inputEnableLayer.Create()
	  CruiseFarTravel.SetCruiseModeRequiresFarTravel(False)

	  FarTravel.EnableFarTravel(False) 
	  FarTravel.Reset()
	  FarTravel.Delete()
	  FarTravel = inputEnableLayer.Create()
	  FarTravel.EnableFarTravel(False)

 EndIf

EndFunction

Function Update()     
		Quest TheStarjackerDLC = Game.GetFormFromFile(0x0000492D, "SFBGS003.esm") as Quest
		RegisterForRemoteEvent(TheStarjackerDLC, "OnStageSet")
        If TheStarjackerDLC.GetStageDone(JunkerShipAcquired)
		   Utility.Wait(2.0)
		   JunkerShipDLCBugFix()
     EndIf
EndFunction

Function RemoveDummyFuel()     
         SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef() 
		 akShip.RemoveItem(DummyFuel, akShip.GetItemCount(DummyFuel), True, None)
		 PlayerRef.RemoveItem(DummyFuel, PlayerRef.GetItemCount(DummyFuel), True, None)
EndFunction

Function RemoveDummyMaintenance()     
         SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef() 
		 akShip.RemoveItem(DummyMaintenance, akShip.GetItemCount(DummyMaintenance), True, None)
		 PlayerRef.RemoveItem(DummyMaintenance, PlayerRef.GetItemCount(DummyMaintenance), True, None)
EndFunction