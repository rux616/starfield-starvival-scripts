ScriptName SISA_SpaceshipFuelPlayerAlias extends ReferenceAlias

Actor Property PlayerRef Auto
ActorValue Property SpaceshipShieldEnergy Auto
ActorValue Property SpaceshipBoostActive Auto
ActorValue Property SpaceshipHealth Auto
ActorValue Property SpaceshipEnginesPower Auto
ActorValue Property SpaceshipGravDrivePower Auto
ActorValue Property SpaceshipShieldPower Auto
ActorValue Property SpaceshipWeaponGroup01Power Auto
ActorValue Property SpaceshipWeaponGroup02Power Auto
ActorValue Property SpaceshipWeaponGroup03Power Auto
ActorValue Property SpaceshipWeaponHealth Auto Const
ActorValue Property SpaceshipWeaponHealth02 Auto Const
ActorValue Property SpaceshipWeaponHealth03 Auto Const
ActorValue Property SpaceshipShieldHealth Auto Const
ActorValue Property SpaceshipSystemEngineHealth Auto Const
ActorValue Property SpaceshipSystemGravDriveHealth Auto Const
Conditionform Property ConditionFormMaintenanceAmount01 Auto Const Mandatory
Conditionform Property ConditionFormMaintenanceAmount02 Auto Const Mandatory
Conditionform Property ConditionFormMaintenanceAmount03 Auto Const Mandatory
Conditionform Property ConditionFormMaintenanceAmount04 Auto Const Mandatory
Quest Property SpaceshipSystemsQuest Auto
LocationRefType Property Ship_PilotSeat_RefType Auto
GlobalVariable Property GV_SpaceshipSystemsToggle Auto Const
GlobalVariable Property GV_SpaceshipMaintenanceToggle Auto Const
GlobalVariable Property GV_SpaceshipAutoFuel Auto Const
GlobalVariable Property GV_SpaceshipAutoRepairDronesToggle Auto Const
GlobalVariable Property GV_SpaceshipMaintenanceDMGCombat Auto Const
GlobalVariable Property GV_SpaceshipShieldFXToggle Auto Const
ReferenceAlias Property SimShip Auto Const mandatory
ReferenceAlias Property PlayerShipPilotSeat Auto mandatory
MiscObject Property SpaceshipAutoRepairBotsMisc Auto Const 
EffectShader Property VFXShipRecharger Auto Const Mandatory
Keyword Property KWD_SpaceshipDebuffRepairCombatBot Auto Const

Keyword Property KeywordSpaceshipAutoDelivery Auto Const
GlobalVariable Property SpaceshipAutoDeliverer Auto Const
ReferenceAlias Property HomeShip Auto Const mandatory

Bool Busy = false
Bool Cooldown = false
Bool CruiseCheck = false

inputEnableLayer FastTravel

Event OnAliasInit()

	Utility.Wait(0.01)
	PlayerOnPilotSeat(PlayerRef.GetFurnitureUsing())
    AddInventoryEventFilter(KeywordSpaceshipAutoDelivery)

EndEvent

Event OnInit()	
	  AddInventoryEventFilter(KeywordSpaceshipAutoDelivery)
EndEvent

Event OnPlayerLoadGame()

	Utility.Wait(0.01)
	PlayerOnPilotSeat(PlayerRef.GetFurnitureUsing())
    AddInventoryEventFilter(KeywordSpaceshipAutoDelivery)

EndEvent

Event OnSit(ObjectReference akFurniture)

      PlayerOnPilotSeat(akFurniture)

EndEvent

Event OnGetUp(ObjectReference akFurniture)
    
          If akFurniture.HasRefType(Ship_PilotSeat_RefType)
		     SpaceShipReference SimulatorShip = SimShip.GetShipRef()
			 SpaceShipReference akShip = PlayerRef.GetCurrentShipRef()

		      If akShip != SimulatorShip
			     	If !Game.IsCruiseModeActive()
				       (SpaceshipSystemsQuest as SISA_SpaceshipFuel).CheckSystemsAtGetUp()
                       CruiseCheck = False
					   CancelTimer(1)
				 EndIf
		   EndIf

       EndIf

EndEvent

Function PlayerOnPilotSeat(ObjectReference akFurniture)

          If akFurniture.HasRefType(Ship_PilotSeat_RefType)
		     SpaceShipReference SimulatorShip = SimShip.GetShipRef()
			 SpaceShipReference akShip = PlayerRef.GetCurrentShipRef()
	         Float TriggerPoint = akShip.GetBaseValue(SpaceshipHealth) / 3
	   	   
		      If akShip != SimulatorShip
                 RegisterForRemoteEvent(akShip, "OnShipSystemPowerChange")
                 RegisterForRemoteEvent(akShip, "OnShipSystemDamaged")
                 RegisterForRemoteEvent(akShip, "OnShipUndock")
				 RegisterForHitEvent(akShip, None, None, None, -1, -1, -1, -1, True)
                 RegisterForActorValueLessThanEvent(akShip, SpaceshipHealth, TriggerPoint)
				 (SpaceshipSystemsQuest as SISA_SpaceshipFuel).CheckSystems()
		         CruiseCheck = False
				 StartTimer(0, 1)
		   EndIf

       EndIf

EndFunction

Event OnItemAdded(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer, Int aiTransferReason)

    SpaceShipReference akShip = HomeShip.getShipRef()

    If SpaceshipAutoDeliverer.GetValue() == 1      
             If akBaseItem.HasKeyword(KeywordSpaceshipAutoDelivery)              
			      If PlayerRef.GetItemCount(akBaseItem) > 0
				     PlayerRef.RemoveItem(akBaseItem, 999999, True, akShip)			   
	           EndIf	   
          EndIf
 EndIf

EndEvent

Event SpaceShipReference.OnShipUndock(SpaceShipReference akShip, Bool abComplete, SpaceshipReference akUndocking, SpaceshipReference akParent)

	If abComplete
		(SpaceshipSystemsQuest as SISA_SpaceshipFuel).FuelConsumptionStartOnUndock()
		(SpaceshipSystemsQuest as SISA_SpaceshipFuel).MalfDockerTriggerOnDocking()
 EndIf

EndEvent

Event SpaceShipReference.OnShipSystemPowerChange(SpaceShipReference akShip, ActorValue akSystem, Bool abAddPower, Bool abDamagedRelated)

        If GV_SpaceshipSystemsToggle.GetValue() == 1

			If !abDamagedRelated && !Busy

		          If abAddPower   
		                If akSystem == SpaceshipEnginesPower
					      (SpaceshipSystemsQuest as SISA_SpaceshipFuel).EngineUp()
					 EndIf

		                If akSystem == SpaceshipGravDrivePower
					      (SpaceshipSystemsQuest as SISA_SpaceshipFuel).GravDriveStagesUp()
					 EndIf
		      Else
		                If akSystem == SpaceshipEnginesPower
					      (SpaceshipSystemsQuest as SISA_SpaceshipFuel).EngineDown()
					 EndIf

		                If akSystem == SpaceshipGravDrivePower
					      (SpaceshipSystemsQuest as SISA_SpaceshipFuel).GravDriveStagesDown()
					EndIf
			   EndIf

         EndIf
     EndIf
EndEvent

Event SpaceShipReference.OnShipSystemDamaged(SpaceShipReference akShip, ActorValue akSystem, Int aBlocksLost, Bool aElectromagneticDamage, Bool aFullyDamaged)

     SpaceShipReference InsideShip = PlayerRef.GetCurrentShipRef()

     If GV_SpaceshipSystemsToggle.GetValue() == 1
        If akShip == InsideShip
	     			 
			 If akSystem == SpaceshipGravDrivePower  									 
					 If aFullyDamaged
						(SpaceshipSystemsQuest as SISA_SpaceshipFuel).MaintenanceMalfunctionTriggerOnSubSystemGravDriveDestroy()

							If ConditionFormMaintenanceAmount04.IsTrue(PlayerRef, None)
					           (SpaceshipSystemsQuest as SISA_SpaceshipFuel).EmergencySystemRepair(SpaceshipSystemGravDriveHealth)
					     EndIf
				  EndIf                    		  
		  EndIf

		     If akSystem == SpaceshipEnginesPower
	                 If aFullyDamaged
                        (SpaceshipSystemsQuest as SISA_SpaceshipFuel).MaintenanceMalfunctionTriggerOnSubSystemEngineDestroy()
						(SpaceshipSystemsQuest as SISA_SpaceshipFuel).SpaceshipFuelConsumptionOff()
                         	
							If ConditionFormMaintenanceAmount04.IsTrue(PlayerRef, None)
					           (SpaceshipSystemsQuest as SISA_SpaceshipFuel).EmergencySystemRepair(SpaceshipSystemEngineHealth)
					     EndIf
				  EndIf
          EndIf

		     If akSystem == SpaceshipShieldPower
	                 If aFullyDamaged
                        (SpaceshipSystemsQuest as SISA_SpaceshipFuel).MaintenanceMalfunctionTriggerOnSubSystemShieldsDestroy() 	
							If ConditionFormMaintenanceAmount04.IsTrue(PlayerRef, None)
					           (SpaceshipSystemsQuest as SISA_SpaceshipFuel).EmergencySystemRepair(SpaceshipShieldHealth)
					     EndIf
				  EndIf
          EndIf

		     If akSystem == SpaceshipWeaponGroup01Power
	                 If aFullyDamaged
                        (SpaceshipSystemsQuest as SISA_SpaceshipFuel).MaintenanceMalfunctionTriggerOnSubSystemWeaponDestroy() 	
							If ConditionFormMaintenanceAmount04.IsTrue(PlayerRef, None)
					           (SpaceshipSystemsQuest as SISA_SpaceshipFuel).EmergencySystemRepair(SpaceshipWeaponHealth)
					     EndIf
				  EndIf
          EndIf

		     If akSystem == SpaceshipWeaponGroup02Power
	                 If aFullyDamaged
                        (SpaceshipSystemsQuest as SISA_SpaceshipFuel).MaintenanceMalfunctionTriggerOnSubSystemWeaponDestroy() 	
							If ConditionFormMaintenanceAmount04.IsTrue(PlayerRef, None)
					           (SpaceshipSystemsQuest as SISA_SpaceshipFuel).EmergencySystemRepair(SpaceshipWeaponHealth02)
					     EndIf
				  EndIf
          EndIf

		     If akSystem == SpaceshipWeaponGroup03Power
	                 If aFullyDamaged
                        (SpaceshipSystemsQuest as SISA_SpaceshipFuel).MaintenanceMalfunctionTriggerOnSubSystemWeaponDestroy() 	
							If ConditionFormMaintenanceAmount04.IsTrue(PlayerRef, None)
					           (SpaceshipSystemsQuest as SISA_SpaceshipFuel).EmergencySystemRepair(SpaceshipWeaponHealth03)
					     EndIf
				  EndIf
          EndIf
     EndIf
 EndIf

EndEvent

Float Function OptimizationCheck(Perk ShipUpgrade)
	  
      Float OptimizationON = 1.30
	  Float OptimizationOFF = 1.0
	  
	  If PlayerRef.HasPerk(ShipUpgrade)
         Return OptimizationON  
   Else
         Return OptimizationOFF
   EndIf

EndFunction

Float Function MaintenanceDMGCalc()
		
		Perk HullOptimization = Game.GetFormFromFile(0x00034CC9, "SFBGS00D.esm") as Perk 
	    
		Float OptimizationCheck = OptimizationCheck(HullOptimization)
		Float MaintenanceDMG = GV_SpaceshipMaintenanceDMGCombat.GetValue()/ OptimizationCheck
	    Float MaintenanceDMGPerk01 = GV_SpaceshipMaintenanceDMGCombat.GetValue() / 1.25 / OptimizationCheck
	    Float MaintenanceDMGPerk02 = GV_SpaceshipMaintenanceDMGCombat.GetValue() / 1.50 / OptimizationCheck
	    Float MaintenanceDMGPerk03 = GV_SpaceshipMaintenanceDMGCombat.GetValue() / 1.75 / OptimizationCheck
	    Float MaintenanceDMGPerk04 = GV_SpaceshipMaintenanceDMGCombat.GetValue() / 2.00 / OptimizationCheck

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

Event OnHit(ObjectReference akTarget, ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked, string apMaterial)
     
	 SpaceShipReference akShip = PlayerRef.GetCurrentShipRef()
     ActorValue CheckMaintenanceClass = (SpaceshipSystemsQuest as SISA_SpaceshipFuel).SetProperMaitenanceClass() 
	 Float MaintenanceValues = PlayerRef.GetValue(CheckMaintenanceClass)
	 Float MaintenanceCombatDMG = MaintenanceDMGCalc()
	 
	 If akTarget == akShip
      		       			  
			  If akTarget.GetValue(SpaceshipShieldEnergy) > 0
				    If GV_SpaceshipShieldFXToggle.GetValue() == 1
				       VFXShipRecharger.Play(akTarget, 0.1) 
				       RegisterForHitEvent(akTarget, None, None, None, -1, -1, -1, -1, True)
				 EndIf		  
		  Else 
				    If GV_SpaceshipShieldFXToggle.GetValue() == 1
                       VFXShipRecharger.Stop(akTarget)
				       RegisterForHitEvent(akTarget, None, None, None, -1, -1, -1, -1, True)
				 EndIf
	       EndIf
             
			 If GV_SpaceshipMaintenanceToggle.GetValue() == 1
			        If PlayerRef.GetValue(CheckMaintenanceClass) >= 0
				    	     If akTarget.GetValue(SpaceshipShieldEnergy) <= 0
				                (SpaceshipSystemsQuest as SISA_SpaceshipFuel).MaintenanceMalfunctionTriggerOnHitHull(CheckMaintenanceClass)
								PlayerRef.DamageValue(CheckMaintenanceClass, MaintenanceCombatDMG)
				          EndIf
				          RegisterForHitEvent(akTarget, None, None, None, -1, -1, -1, -1, True)		  
	             EndIf	   
          EndIf
  EndIf     

EndEvent

Event OnTimer(int aiTimerID)
	  
	  SpaceShipReference akShip = PlayerRef.GetCurrentShipRef()
     	     
			 If (aiTimerID == 0)   
		         Cooldown = False
     	 ElseIf (aiTimerID == 1)   
		             If Game.IsCruiseModeActive()   
				        ;DisableFastTravel()
				  Else
		                ;EnableFastTravel()   
						   If !PlayerRef.GetFurnitureUsing() == PlayerShipPilotSeat.GetRef()
						      CruiseCheck = True
							  (SpaceshipSystemsQuest as SISA_SpaceshipFuel).CheckSystemsAtGetUp()
						EndIf
				  EndIf
				  If CruiseCheck == False
				     StartTimer(2, 1)
		       EndIf
		  EndIf
	  
EndEvent

Function DisableFastTravel()	

	  FastTravel.EnableFastTravel(False) 
	  FastTravel.Reset()
	  FastTravel.Delete()
	  FastTravel = inputEnableLayer.Create()
	  FastTravel.EnableFastTravel(False)

EndFunction

Function EnableFastTravel()	

	  FastTravel.EnableFastTravel(True) 
	  FastTravel.Reset()
	  FastTravel.Delete()
	  FastTravel = inputEnableLayer.Create()
	  FastTravel.EnableFastTravel(True)

EndFunction

Event OnActorValueLessThan(ObjectReference akObjRef, ActorValue akActorValue)
    
	   SpaceShipReference akShip = PlayerRef.GetCurrentShipRef()
	   Float TriggerPoint = akShip.GetBaseValue(SpaceshipHealth) / 2
	   
	   RegisterForActorValueLessThanEvent(akShip, SpaceshipHealth, TriggerPoint)
       
	   If (akObjRef as SpaceshipReference) == akShip
          If Cooldown == False
		     DeployAutoRepairBots()
       EndIf
	EndIf

EndEvent

Function DeployAutoRepairBots()
                            
							SpaceShipReference akShip = PlayerRef.GetCurrentShipRef()
				            If akShip.Haskeyword(KWD_SpaceshipDebuffRepairCombatBot) == False    
								  If GV_SpaceshipAutoRepairDronesToggle.GetValue() == 1  
										      If akShip.GetItemCount(SpaceshipAutoRepairBotsMisc) > 0
				                                 (SpaceshipSystemsQuest as SISA_SpaceshipFuel).EmergencyRepairBotsAuto()
							                     Cooldown = True
										         StartTimer(5, 0)
										   EndIf
							   EndIf	
                         EndIf
EndFunction
