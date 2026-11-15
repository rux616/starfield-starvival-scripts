ScriptName SISA_RoverAlias extends ReferenceAlias

Actor Property PlayerRef Auto
ActorValue Property AV_RoverFuel Auto
ActorValue Property AV_RoverMaintenance Auto
ActorValue Property AV_Weight Auto Const
Quest Property RoverQuest Auto Const
ObjectReference Property ObjRef_Trunk Auto Const
ObjectReference Property OBJ_RoverHoodRef Auto Const
Message Property MSG_RoverFuelInfo Auto
Message Property MSG_RoverFullyDestroyed Auto
Message Property MSG_RoverMaintenanceLevel Auto
MagicEffect Property MGK_WeldingEnhancer Auto
GlobalVariable Property GV_ConsumeTimeInterval Auto
GlobalVariable Property GV_ConsumeAmountMin Auto
GlobalVariable Property GV_ConsumeAmountMax Auto
GlobalVariable Property GV_DamageAmountMin Auto
GlobalVariable Property GV_DamageAmountMax Auto
GlobalVariable Property GV_DamageAmountOnHitEventMin Auto
GlobalVariable Property GV_DamageAmountOnHitEventMax Auto
GlobalVariable Property GV_DamageTimeInterval Auto
GlobalVariable Property GV_RoverSytems_IsInVehicle Auto
GlobalVariable Property GV_RoverSytems_TrunkAccessFromCargo Auto
GlobalVariable Property GV_RoverSytems_ProtectiveCoating Auto
GlobalVariable Property GV_IsInVehicle Auto Const
GlobalVariable Property GV_AgrophonicResonanceActive Auto Const
GlobalVariable Property GV_ExtractionTempestActive Auto Const
Explosion Property Explo_Fire Auto
Explosion Property Explo_Frag Auto
Explosion Property EXPL_Poison Auto Const
Explosion Property EXPL_Particle Auto Const
Effectshader Property VFX_FireMembrane Auto Const Mandatory
Effectshader Property VFX_ArcRepair Auto Const Mandatory
Effectshader Property VFX_ArcFullRepair Auto Const Mandatory
Spell Property SPL_Effect Const Auto
Conditionform Property ConditionFormPlanetaryHazards Auto Const Mandatory
Conditionform Property ConditionFormPlanetaryWeather Auto Const Mandatory
Conditionform Property CF_EngineSystems01 Auto Const Mandatory
Conditionform Property CF_EngineSystems02 Auto Const Mandatory
Conditionform Property CF_EngineSystems03 Auto Const Mandatory
Conditionform Property CF_EngineSystems04 Auto Const Mandatory
Conditionform Property CF_EngineSystemsSpecific Auto Const Mandatory
wwiseevent Property SoundFX_OnSit Auto Const
wwiseevent Property SoundFX_OnGetUp Auto Const
Keyword Property KeywordResourceTypeOrganic Auto Const
Keyword Property KeywordResourceTypeFlora Auto Const
Keyword Property KeywordResourceTypeGas Auto Const
Keyword Property KeywordResourceTypeSolid Auto Const
Keyword Property KeywordResourceTypeLiquid Auto Const
Keyword Property KeywordElementalBlastResource Auto Const
MiscObject Property MiscObject_RoverModuleResourceStalker Auto Const
Projectile Property PRJ_ArcWelder Auto Const
Potion Property POTI_RoverToken Auto Const

Bool VFXTriggered = False
Bool ChallengeDone01 = False
Bool ChallengeDone02 = False
Bool ChallengeDone03 = False
ObjectReference Target
Int SpentTime = 0

Event OnAliasInit()	
	  Utility.Wait(0.01)
	  PlayerOnRoverSeat(PlayerRef.GetFurnitureUsing())
	  Register()
EndEvent

Event OnPlayerLoadGame()	
	  Utility.Wait(0.01)
	  PlayerOnRoverSeat(PlayerRef.GetFurnitureUsing())
	  Register() 
EndEvent

Function Register()
  
	  RegisterForHitEvent(Target, None, None, None, -1, -1, -1, -1, True)
	  AddInventoryEventFilter(KeywordResourceTypeOrganic)     
	  AddInventoryEventFilter(KeywordResourceTypeFlora) 
	  AddInventoryEventFilter(KeywordResourceTypeGas) 
	  AddInventoryEventFilter(KeywordResourceTypeSolid) 
	  AddInventoryEventFilter(KeywordResourceTypeLiquid) 
	  AddInventoryEventFilter(KeywordElementalBlastResource)         

EndFunction

Event OnSit(ObjectReference akFurniture)   
      PlayerOnRoverSeat(akFurniture)
      Register()
EndEvent

Event OnGetUp(ObjectReference akFurniture)
          			  
		  Keyword RoverKeyword = Game.GetFormFromFile(0x00000017, "SFBGS004.esm") as Keyword   
          
		  If akFurniture.HasKeyword(RoverKeyword)          
		     GV_RoverSytems_IsInVehicle.SetValue(0)
			 CancelTimers()
			 SoundFX_OnGetUp.Play(PlayerRef, None, None)
			 MSG_RoverFuelInfo.show(GV_ConsumeTimeInterval.GetValue(), PlayerRef.GetValue(AV_RoverFuel), PlayerRef.GetBaseValue(AV_RoverFuel), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
			 MSG_RoverMaintenanceLevel.show(GV_DamageTimeInterval.GetValue(), PlayerRef.GetValue(AV_RoverMaintenance), PlayerRef.GetBaseValue(AV_RoverMaintenance), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)	 
	   EndIf

EndEvent

Event OnHit(ObjectReference akTarget, ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked, string apMaterial)
     
	 ObjectReference RoverFurniture = PlayerRef.GetFurnitureUsing() 
	 Float DamageAmountOnHitEventMin = GV_DamageAmountOnHitEventMin.GetValue()
     Float DamageAmountOnHitEventMax = GV_DamageAmountOnHitEventMax.GetValue()   
     Float OnHitDamage = OnHitDMGCalc() 
     Float RandomDMG = Utility.RandomFloat(DamageAmountOnHitEventMin, DamageAmountOnHitEventMax)

     If akTarget == Target as ObjectReference
		StartTimer(1, 4)
              		       			 
		If akProjectile == PRJ_ArcWelder as Projectile
                If PlayerRef.HasMagicEffect(MGK_WeldingEnhancer)
		           PlayerRef.Restorevalue(AV_RoverMaintenance, 0.36)			  
            Else
		           PlayerRef.Restorevalue(AV_RoverMaintenance, 0.18)
		     EndIf
		     VFX_ArcRepair.Play(Target, 0.2) 					  
				If PlayerRef.GetValue(AV_RoverMaintenance) < 100 
					  If PlayerRef.GetValue(AV_RoverMaintenance) > 25 
			               If VFXTriggered == True
						      VFX_FireMembrane.Stop(Target)   
                              VFXTriggered = False
						EndIf
				  ElseIf PlayerRef.GetValue(AV_RoverMaintenance) >= 100.0
                         VFX_ArcFullRepair.Play(Target, 1.0) 				   
				   EndIf
		     EndIf
		     RegisterForHitEvent(Target, None, None, None, -1, -1, -1, -1, True)			  
	Else		  
			  If PlayerRef.GetValue(AV_RoverMaintenance) <= 0
				 VFX_FireMembrane.Play(Target, -1) 
			     Target.Placeatme(Explo_Fire, 1, False, false, true, none, none, True)
			     Target.Placeatme(Explo_Frag, 1, False, false, true, none, none, True)
			        If RoverFurniture
		               CancelTimers()
					   PlayerRef.Kill()
				 EndIf
				 UnregisterForHitEvent(Target, None, None, None, -1, -1, -1, -1, True)
		  ElseIf PlayerRef.GetValue(AV_RoverMaintenance) > 0
                 PlayerRef.damagevalue(AV_RoverMaintenance, RandomDMG * OnHitDamage)     
					  If PlayerRef.GetValue(AV_RoverMaintenance) < 25 
			               If VFXTriggered == False
						      VFX_FireMembrane.Play(Target, -1) 
			                  Target.Placeatme(Explo_Fire, 1, False, false, true, none, none, True)	   
                              VFXTriggered = True
						EndIf
				   EndIf
				 RegisterForHitEvent(Target, None, None, None, -1, -1, -1, -1, True)
	       EndIf
	 EndIf  	   
  EndIf     

EndEvent

Function PlayerOnRoverSeat(ObjectReference akFurniture)

          Keyword RoverKeyword = Game.GetFormFromFile(0x00000017, "SFBGS004.esm") as Keyword
          Float ConsumeInterval = GV_ConsumeTimeInterval.GetValue()
          Float DamageInterval = GV_DamageTimeInterval.GetValue()
          
		  If akFurniture.HasKeyword(RoverKeyword)             			    
				Target = akFurniture
	    				
				If GV_RoverSytems_TrunkAccessFromCargo.GetValue() == 0
                   GV_RoverSytems_TrunkAccessFromCargo.SetValue(1)
             EndIf
			 
				If PlayerRef.GetValue(AV_RoverMaintenance) <= 0
                   VFX_FireMembrane.Play(Target, -1) 
				   akFurniture.Activate(PlayerRef, False) 
	               MSG_RoverFullyDestroyed.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
				   Return
			 EndIf

				If PlayerRef.GetValue(AV_RoverMaintenance) >= 25
                   VFXTriggered = False
                   VFX_FireMembrane.Stop(Target)
			 Else
			       VFX_FireMembrane.Play(Target, -1) 
			 EndIf

				If PlayerRef.GetValue(AV_RoverFuel) > 0
                   GV_RoverSytems_IsInVehicle.SetValue(1)
				   SoundFX_OnSit.Play(PlayerRef, None, None)
				   RegisterForHitEvent(Target, None, None, None, -1, -1, -1, -1, True) 
				   StartTimer(ConsumeInterval, 0)
			       StartTimer(DamageInterval, 1)
                   StartTimer(60, 3) 
			       StartTimer(180, 2)
			          If CF_EngineSystemsSpecific.IsTrue(PlayerRef, None)
				         StartTimer(60, 5)
			       EndIf
			Else
		           CancelTimers()
		           GV_RoverSytems_IsInVehicle.SetValue(0)
				   akFurniture.Activate(PlayerRef, False) 
	               Return
			 EndIf

			  MSG_RoverFuelInfo.show(GV_ConsumeTimeInterval.GetValue(), PlayerRef.GetValue(AV_RoverFuel), PlayerRef.GetBaseValue(AV_RoverFuel), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
			  MSG_RoverMaintenanceLevel.show(GV_DamageTimeInterval.GetValue(), PlayerRef.GetValue(AV_RoverMaintenance), PlayerRef.GetBaseValue(AV_RoverMaintenance), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)                 
	   EndIf

EndFunction

Event OnTimer(int aiTimerID)
             
			 ObjectReference RoverFurniture = PlayerRef.GetFurnitureUsing() 
     	     Float ConsumeAmountMin = GV_ConsumeAmountMin.GetValue() 
     	     Float ConsumeAmountMax = GV_ConsumeAmountMax.GetValue() 
			 Float ConsumeInterval = GV_ConsumeTimeInterval.GetValue()
             Float DamageAmountMin = GV_DamageAmountMin.GetValue()
             Float DamageAmountMax = GV_DamageAmountMax.GetValue()
             Float DamageInterval = GV_DamageTimeInterval.GetValue()			 

             Float Economical = EconomicalBonus()
             Float PlanetaryDMG = PlanetaryEnvironmentDMGCalc()
             Float WeatherDMG = PlanetaryWeatherDMGCalc()
             
			 Float RandomFuelDMG = Utility.RandomFloat(ConsumeAmountMin, ConsumeAmountMax)			 
			 Float RandomMaintenanceDMG = Utility.RandomFloat(DamageAmountMin, DamageAmountMax)
			 
			 If (aiTimerID == 0)   
                   If GV_RoverSytems_IsInVehicle.GetValue() == 1                     
				       If PlayerRef.GetValue(AV_RoverFuel) > 0
				          PlayerRef.DamageValue(AV_RoverFuel, RandomFuelDMG / Economical) 
					      StartTimer(ConsumeInterval, 0)
		            Else
		                  CancelTimers()
		                  RoverFurniture.Activate(PlayerRef, False) 
		            EndIf
                EndIf
	     ElseIf (aiTimerID == 1)   
                  If GV_RoverSytems_IsInVehicle.GetValue() == 1   
			          If PlayerRef.GetValue(AV_RoverMaintenance) > 0
				         PlayerRef.DamageValue(AV_RoverMaintenance, RandomMaintenanceDMG * PlanetaryDMG * WeatherDMG / Economical) 
					        If PlayerRef.GetValue(AV_RoverMaintenance) < 25
                                 If VFXTriggered == False
							        VFX_FireMembrane.Play(RoverFurniture, -1) 
					                VFXTriggered = True
						      EndIf
					     EndIf
					     StartTimer(DamageInterval, 1)
		           Else
		                 CancelTimers()
		                 VFX_FireMembrane.Play(RoverFurniture, -1) 
					     RoverFurniture.Placeatme(Explo_Fire, 1, False, false, true, none, none, True)
					     RoverFurniture.Placeatme(Explo_Frag, 1, False, false, true, none, none, True)
		                 PlayerRef.Kill()
				   EndIf
               EndIf
	     ElseIf (aiTimerID == 2)                  
				 MSG_RoverMaintenanceLevel.show(GV_DamageTimeInterval.GetValue(), PlayerRef.GetValue(AV_RoverMaintenance), PlayerRef.GetBaseValue(AV_RoverMaintenance), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
                 StartTimer(180, 2) 			       
	     ElseIf (aiTimerID == 3) 		         
				 MSG_RoverFuelInfo.show(GV_ConsumeTimeInterval.GetValue(), PlayerRef.GetValue(AV_RoverFuel), PlayerRef.GetBaseValue(AV_RoverFuel), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
		         StartTimer(60, 3)
	     ElseIf (aiTimerID == 4)                  
				 MSG_RoverMaintenanceLevel.show(GV_DamageTimeInterval.GetValue(), PlayerRef.GetValue(AV_RoverMaintenance), PlayerRef.GetBaseValue(AV_RoverMaintenance), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	     ElseIf (aiTimerID == 5)                  
	             Debug.Notification("TimerStarted")    
					 If CF_EngineSystems03.IsTrue(PlayerRef, None) && ChallengeDone03 == False    		     
		                  SpentTime += 1
						  PlayerRef.EquipItem(POTI_RoverToken, False, True)	
		                    If SpentTime >= 60 
				               SpentTime = 0
							   ChallengeDone03 = True								 		 
	                     Else
		                       StartTimer(60, 5)
	                     EndIf                   
                 ElseIf CF_EngineSystems02.IsTrue(PlayerRef, None) && ChallengeDone02 == False  	  
		                  SpentTime += 1
						  PlayerRef.EquipItem(POTI_RoverToken, False, True)	
		                    If SpentTime >= 30 
				               SpentTime = 0
							   ChallengeDone02 = True								 		 
	                     Else
		                       StartTimer(60, 5)
	                     EndIf  	          
                 ElseIf CF_EngineSystems01.IsTrue(PlayerRef, None) && ChallengeDone01 == False 
		                  SpentTime += 1
						  PlayerRef.EquipItem(POTI_RoverToken, False, True)	
							If SpentTime >= 15 
				               SpentTime = 0
							   ChallengeDone01 = True								 		 
	                     Else
		                       StartTimer(60, 5)  
						 EndIf   
                  EndIf
		  EndIf

EndEvent

Event OnItemAdded(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer, Int aiTransferReason)
       
	   If GV_IsInVehicle.GetValue() == 1 && OBJ_RoverHoodRef.GetitemCount(MiscObject_RoverModuleResourceStalker) > 0     
			  If akBaseItem.HasKeyword(KeywordResourceTypeOrganic) || akBaseItem.HasKeyword(KeywordResourceTypeFlora) || akBaseItem.HasKeyword(KeywordResourceTypeGas) || akBaseItem.HasKeyword(KeywordResourceTypeSolid) || akBaseItem.HasKeyword(KeywordResourceTypeLiquid) || akBaseItem.HasKeyword(KeywordElementalBlastResource)
       		     
				 If GV_AgrophonicResonanceActive.GetValue() == 1                  
				        If akBaseItem.HasKeyword(KeywordResourceTypeFlora) 
			               Int PoisonChance = Utility.RandomInt(0, 100)
				                 If PoisonChance <= 35
			                        ;PlayerRef.Placeatme(EXPL_Poison, 1, False, false, true, none, none, True)
					                SPL_Effect.cast(PlayerRef, PlayerRef)
		                      EndIf
		             EndIf
              EndIf      

				 If GV_ExtractionTempestActive.GetValue() == 1                  
				        If akBaseItem.HasKeyword(KeywordResourceTypeGas) || akBaseItem.HasKeyword(KeywordResourceTypeSolid) || akBaseItem.HasKeyword(KeywordResourceTypeLiquid)
                           PlayerRef.Placeatme(EXPL_Particle, 1, False, false, true, none, none, True)
						   PlayerRef.RemoveItem(akBaseItem, aiItemCount, True, None)
                           ObjRef_Trunk.RemoveItem(akBaseItem, aiItemCount, True, None)
		             EndIf
              EndIf 
				 
				 If ObjRef_Trunk.GetWeightInContainer() > ObjRef_Trunk.GetValue(AV_Weight)
				    Return    		   
		      Else
		            PlayerRef.RemoveItem(akBaseItem, aiItemCount, True, ObjRef_Trunk)
		      EndIf

		   EndIf
    EndIf

EndEvent

Float Function OnHitDMGCalc()

	 Float ProtectiveCoatingOff = 1.0
	 Float ProtectiveCoatingActive = 0.50
	 		
		If GV_RoverSytems_ProtectiveCoating.GetValue() == 1    
		   Return ProtectiveCoatingActive  
      Else	
           Return ProtectiveCoatingOff
     EndIf

EndFunction

Float Function EconomicalBonus()

      Float EngineSystems00 = 1.0
      Float EngineSystems01 = 1.15
      Float EngineSystems02 = 1.25
      Float EngineSystems03 = 1.35
      Float EngineSystems04 = 1.50

		If CF_EngineSystems04.IsTrue(PlayerRef, None)    
		   Return EngineSystems04 
	ElseIf CF_EngineSystems03.IsTrue(PlayerRef, None)  
	       Return EngineSystems03
	ElseIf CF_EngineSystems02.IsTrue(PlayerRef, None)  	 
           Return EngineSystems02
	ElseIf CF_EngineSystems01.IsTrue(PlayerRef, None) 
           Return EngineSystems01 
Else	
           Return EngineSystems00
     EndIf

EndFunction

Float Function PlanetaryEnvironmentDMGCalc()

	 Float PlanetaryHazardActive = 1.75
	 Float PlanetaryHazardActiveCoating = 1.20
     Float PlanetaryHazardOff = 1.0 	 
 
		
		If ConditionFormPlanetaryHazards.IsTrue(PlayerRef, None) && GV_RoverSytems_ProtectiveCoating.GetValue() == 0    
		   Return PlanetaryHazardActive  
    ElseIf ConditionFormPlanetaryHazards.IsTrue(PlayerRef, None) && GV_RoverSytems_ProtectiveCoating.GetValue() == 1 
		   Return PlanetaryHazardActiveCoating  
      Else	
           Return PlanetaryHazardOff
     EndIf

EndFunction

Float Function PlanetaryWeatherDMGCalc()

	 Float PlanetaryWeatherActive = 2.35
	 Float PlanetaryWeatherActiveCoating = 1.5
     Float PlanetaryWeatherOff = 1.0 	 
 
		
		If ConditionFormPlanetaryWeather.IsTrue(PlayerRef, None) && GV_RoverSytems_ProtectiveCoating.GetValue() == 0    
		   Return PlanetaryWeatherActive  
	ElseIf ConditionFormPlanetaryWeather.IsTrue(PlayerRef, None) && GV_RoverSytems_ProtectiveCoating.GetValue() == 1 
		   Return PlanetaryWeatherActiveCoating
      Else	
           Return PlanetaryWeatherOff
     EndIf

EndFunction

Function CancelTimers()

		 CancelTimer(0)
		 CancelTimer(1)
		 CancelTimer(2)
		 CancelTimer(3)
		 CancelTimer(5)

EndFunction

