ScriptName SISA_RoverMenu Extends Perk Const hidden

Actor Property PlayerRef Auto Const
ActorValue Property AV_RoverFuel Auto Const
ActorValue Property AV_RoverMaintenance Auto Const
ActorValue Property AV_ToolHealth Auto Const
ObjectReference Property ObjRef_Trunk Auto Const
ObjectReference Property ObjRef_Hood Auto Const
Message Property MSG_StatusMenu Auto Const
Message Property MSG_RefuelMenu Auto Const
Message Property MSG_MaintenanceMenu Auto Const
Message Property MSG_RoverFuelInfo Auto Const
Message Property MSG_RoverMaintenanceInfo Auto Const
Message Property MSG_RoverFuelTankFull Auto Const
Message Property MSG_RoverMaintenanceAtMax Auto Const
Message Property MSG_RoverNoFuel Auto Const
Message Property MSG_RoverNoKits Auto Const
Message Property MSG_RoverCantRepair Auto Const
Message Property MSG_RoverCantRepairFurther Auto Const
Message Property MSG_RoverCantRepairToolBroken Auto Const
Message Property MSG_RoverMustBeUnsheathedFuel Auto Const
Message Property MSG_RoverMustBeUnsheathedKit Auto Const
Weapon Property MiscObj_RoverFuel Auto Const
Weapon Property MiscObj_RoverMaintenanceKit Auto Const
GlobalVariable Property GV_ConsumeTimeInterval Auto Const
GlobalVariable Property GV_ConsumeAmountMin Auto Const
GlobalVariable Property GV_ConsumeAmountMax Auto Const
GlobalVariable Property GV_DamageTimeInterval Auto Const
GlobalVariable Property GV_DamageAmountMin Auto Const
GlobalVariable Property GV_DamageAmountMax Auto Const
GlobalVariable Property GV_RepairKitThresholdMin Auto Const
GlobalVariable Property GV_RepairKitThresholdMax Auto Const
GlobalVariable Property GV_RepairKitRestoreBase Auto Const
GlobalVariable Property GV_EquipDegradeToggle Auto Const
wwiseevent Property SoundFX_RefuelingStart Auto Const
wwiseevent Property SoundFX_RefuelingEnd Auto Const
wwiseevent Property SoundFX_RefuelingBeepSuccess Auto Const
wwiseevent Property SoundFX_RefuelingBeepFail Auto Const
wwiseevent Property SoundFX_RepairingStart Auto Const
wwiseevent Property SoundFX_RepairingEnd Auto Const
wwiseevent Property SoundFX_RepairingSuccess Auto Const
Effectshader Property VFX_FireMembrane Auto Const Mandatory
Effectshader Property VFX_RepairMembrane Auto Const Mandatory
Effectshader Property VFX_Maintenance Auto Const mandatory
Conditionform Property CF_EngineSystems01 Auto Const Mandatory
Conditionform Property CF_EngineSystems02 Auto Const Mandatory
Conditionform Property CF_EngineSystems03 Auto Const Mandatory
Conditionform Property CF_EngineSystems04 Auto Const Mandatory
Keyword Property KWD_WearResistant Auto Const

Float Property FLT_ToolHealthDMGMin = 1.0 Auto Const
Float Property FLT_ToolHealthDMGMax = 1.0 Auto Const

Function Fragment_Entry_00(ObjectReference akTargetRef, Actor akActor)
			
			If PlayerRef.IsWeaponDrawn() 	     
               RefuelMenu(akTargetRef)	
               SoundFX_RefuelingBeepSuccess.Play(PlayerRef, None, None)
         Else
		       MSG_RoverMustBeUnsheathedFuel.Show()
               SoundFX_RefuelingBeepFail.Play(PlayerRef, None, None)
		 EndIf

EndFunction

Function Fragment_Entry_01(ObjectReference akTargetRef, Actor akActor)
		    
			If PlayerRef.IsWeaponDrawn()
               MaintenanceMenu(akTargetRef)	
               SoundFX_RefuelingBeepSuccess.Play(PlayerRef, None, None)
         Else
		       MSG_RoverMustBeUnsheathedKit.Show()
               SoundFX_RefuelingBeepFail.Play(PlayerRef, None, None)
		 EndIf

EndFunction

Function Fragment_Entry_02(ObjectReference akTargetRef, Actor akActor)
    
               akTargetRef.BlockActivation(True, True)
		       ObjRef_Trunk.Activate(PlayerRef, False)
               akTargetRef.BlockActivation(False, False)

EndFunction

Function Fragment_Entry_03(ObjectReference akTargetRef, Actor akActor)
			
			;If PlayerRef.IsWeaponDrawn()     
               akTargetRef.BlockActivation(True, True)
		       ObjRef_Hood.Activate(PlayerRef, False)
               akTargetRef.BlockActivation(False, False)
         ;Else
		       ;MSG_RoverMustBeUnsheathed.Show()
		 ;EndIf

EndFunction

Function Fragment_Entry_04(ObjectReference akTargetRef, Actor akActor)    
		 StatusMenu(akTargetRef)
EndFunction

Function StatusMenu(ObjectReference akTargetRef, Int MenuType = 0, Int Button = 0)
		 			 
		 If Button == -1		 
     
	 ElseIf MenuType == 0

			Int TrunkKits = 0                                                                             
			Int PlayerInventoryKits = 0                		  
 			Int OverallKits = 0
			  
			PlayerInventoryKits = PlayerRef.GetItemCount(MiscObj_RoverMaintenanceKit)
			TrunkKits = ObjRef_Hood.GetItemCount(MiscObj_RoverMaintenanceKit)
			OverallKits = PlayerInventoryKits + TrunkKits

			Int TrunkFuel = 0                                                                             
			Int PlayerInventoryFuel = 0                		  
 			Int OverallFuel = 0
			  
			PlayerInventoryFuel = PlayerRef.GetItemCount(MiscObj_RoverFuel)
			TrunkFuel = ObjRef_Hood.GetItemCount(MiscObj_RoverFuel)
			OverallFuel = PlayerInventoryFuel + TrunkFuel
		    			
			Button = MSG_StatusMenu.Show(OverallFuel, PlayerRef.GetValue(AV_RoverFuel), PlayerRef.GetBaseValue(AV_RoverFuel), OverallKits, PlayerRef.GetValue(AV_RoverMaintenance), PlayerRef.GetBaseValue(AV_RoverMaintenance), 0, 0, 0)	 
                   
				   If Button == 0	                     
				      ; Exit
				EndIf
      EndIf

EndFunction

Function RefuelMenu(ObjectReference akTargetRef, Int MenuType = 0, Int Button = 0)
		 			 
		 If Button == -1		 
     
	 ElseIf MenuType == 0

			Int Trunk = 0                                                                             
			Int PlayerInventory = 0                		  
 			Int Overall = 0
			  
			PlayerInventory = PlayerRef.GetItemCount(MiscObj_RoverFuel)
			Trunk = ObjRef_Hood.GetItemCount(MiscObj_RoverFuel)
			Overall = PlayerInventory + Trunk
		    			
			Button = MSG_RefuelMenu.Show(Overall, PlayerRef.GetValue(AV_RoverFuel), PlayerRef.GetBaseValue(AV_RoverFuel), GV_ConsumeAmountMin.GetValue(), GV_ConsumeAmountMax.GetValue(), GV_ConsumeTimeInterval.GetValue(), 0, 0, 0)	 
                   
				   If Button == 0
	                     
						 If PlayerRef.GetValue(AV_RoverFuel) >= 99.9
					        MSG_RoverFuelTankFull.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)   
					        SoundFX_RefuelingBeepSuccess.Play(PlayerRef, None, None)
					 ElseIf PlayerRef.GetItemCount(MiscObj_RoverFuel) <= 0 && ObjRef_Hood.GetItemCount(MiscObj_RoverFuel) <= 0
					        MSG_RoverNoFuel.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) 
					        SoundFX_RefuelingBeepFail.Play(PlayerRef, None, None)
					   Else		   
                            BeginRefuel()  
			          EndIf

			   ElseIf Button == 1 
				      ; Exit
				EndIf
      EndIf

EndFunction

Function BeginRefuel()
		 
		 Int FuelToFillWith = 0					  		 
		 FuelToFillWith = Math.Ceiling(PlayerRef.GetBaseValue(AV_RoverFuel) - PlayerRef.GetValue(AV_RoverFuel))		         
		 RemoveFuel(FuelToFillWith)
         RefuelFinalization()

EndFunction

Function RemoveFuel(Int Amount)
		
		Int Hood = 0                                                                             
		Int PlayerInventory = 0                		  
		Int Overall = 0  			  
	    Int FuelNeeded = 0		
		
		PlayerInventory = PlayerRef.GetItemCount(MiscObj_RoverFuel)
		Hood = ObjRef_Hood.GetItemCount(MiscObj_RoverFuel)
		Overall = PlayerInventory + Hood		  				   		
        FuelNeeded = Amount		
		
				   If PlayerInventory < FuelNeeded 
				      PlayerRef.RemoveItem(MiscObj_RoverFuel, PlayerInventory, True, None)
		              ObjRef_Hood.RemoveItem(MiscObj_RoverFuel, FuelNeeded - PlayerInventory, True, None)
                      PlayerRef.RestoreValue(AV_RoverFuel, Overall)
	           ElseIf PlayerInventory >= FuelNeeded 
				      PlayerRef.RemoveItem(MiscObj_RoverFuel, FuelNeeded, True, None)	        
                      PlayerRef.RestoreValue(AV_RoverFuel, FuelNeeded)
				EndIf

EndFunction

Function RefuelFinalization()
		
		 SoundFX_RefuelingStart.PlayAndWait(PlayerRef, None, None)
		 SoundFX_RefuelingEnd.PlayAndWait(PlayerRef, None, None)
		 MSG_RoverFuelInfo.show(GV_ConsumeTimeInterval.GetValue(), PlayerRef.GetValue(AV_RoverFuel), PlayerRef.GetBaseValue(AV_RoverFuel), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) 					

EndFunction

Function MaintenanceMenu(ObjectReference akTargetRef, Int MenuType = 0, Int Button = 0)
		 			 
		 If Button == -1		 
     
	 ElseIf MenuType == 0

			Int Trunk = 0                                                                             
			Int PlayerInventory = 0                		  
 			Int Overall = 0
			  
			PlayerInventory = PlayerRef.GetItemCount(MiscObj_RoverMaintenanceKit)
			Trunk = ObjRef_Hood.GetItemCount(MiscObj_RoverMaintenanceKit)
			Overall = PlayerInventory + Trunk

		    Float EngineSystemsBonusThresholds = BonusThresholds()
		    Float EngineSystemsBonusRepair = BonusRepair()
		    Float ThresholdMin = GV_RepairKitThresholdMin.GetValue() - EngineSystemsBonusThresholds 
            Float ThresholdMax = GV_RepairKitThresholdMax.GetValue() + EngineSystemsBonusThresholds
            Float RestoreBase = GV_RepairKitRestoreBase.GetValue() + EngineSystemsBonusRepair
		    			
			Button = MSG_MaintenanceMenu.Show(Overall, PlayerRef.GetValue(AV_RoverMaintenance), PlayerRef.GetBaseValue(AV_RoverMaintenance), ThresholdMin, ThresholdMax, RestoreBase, GV_DamageAmountMin.GetValue(), GV_DamageAmountMax.GetValue(), GV_DamageTimeInterval.GetValue())	 
                   
				   If Button == 0	                     
		                 If GV_EquipDegradeToggle.GetValue() == 1
		                        If PlayerRef.GetValue(AV_ToolHealth) < FLT_ToolHealthDMGMax
			                       MSG_RoverCantRepairToolBroken.Show()
                                   SoundFX_RefuelingBeepFail.Play(PlayerRef, None, None)
                                   Return
							 EndIf
					  EndIf
						 If PlayerRef.GetValue(AV_RoverMaintenance) >= 99.9
					        MSG_RoverMaintenanceAtMax.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)   
					        SoundFX_RepairingSuccess.Play(PlayerRef, None, None)
				     ElseIf PlayerRef.GetValue(AV_RoverMaintenance) >= ThresholdMax
					        MSG_RoverCantRepairFurther.show(ThresholdMax, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)   
					        SoundFX_RepairingSuccess.Play(PlayerRef, None, None)					 
					 ElseIf PlayerRef.GetItemCount(MiscObj_RoverMaintenanceKit) <= 0 && ObjRef_Hood.GetItemCount(MiscObj_RoverMaintenanceKit) <= 0
					        MSG_RoverNoKits.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) 
					        SoundFX_RefuelingBeepFail.Play(PlayerRef, None, None)
					   Else		   
							BeginRepair(akTargetRef)							            	
					  EndIf

			   ElseIf Button == 1 
				      ; Exit
				EndIf
      EndIf

EndFunction

Float Function BonusRepair()

      Float EngineSystems00 = 0.0
      Float EngineSystems01 = 5.0
      Float EngineSystems02 = 10.0
      Float EngineSystems03 = 15.0
      Float EngineSystems04 = 20.0

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

Float Function BonusThresholds()

      Float EngineSystems00 = 0.0
      Float EngineSystems01 = 4.0
      Float EngineSystems02 = 8.0
      Float EngineSystems03 = 12.0
      Float EngineSystems04 = 15.0

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

Function BeginRepair(ObjectReference akTargetRef)
         
		 Float EngineSystemsBonusThresholds = BonusThresholds()
		 Float EngineSystemsBonusRepair = BonusRepair()
		 Float ThresholdMin = GV_RepairKitThresholdMin.GetValue() - EngineSystemsBonusThresholds 
         Float ThresholdMax = GV_RepairKitThresholdMax.GetValue() + EngineSystemsBonusThresholds
         Float RestoreBase = GV_RepairKitRestoreBase.GetValue() 
	     
		 If PlayerRef.GetValue(AV_RoverMaintenance) < ThresholdMin		 
		    MSG_RoverCantRepair.show()
			Return 
	  EndIf
		 
		 PlayerRef.Restorevalue(AV_RoverMaintenance, RestoreBase + EngineSystemsBonusRepair)

		 If PlayerRef.GetValue(AV_RoverMaintenance) > ThresholdMax						
            PlayerRef.Restorevalue(AV_RoverMaintenance, 999)
            PlayerRef.Damagevalue(AV_RoverMaintenance, 100 - ThresholdMax)
      EndIf

		 If GV_EquipDegradeToggle.GetValue() == 1
		    Float DamageToolsHealth = Utility.RandomFloat(FLT_ToolHealthDMGMin, FLT_ToolHealthDMGMax)
		    Float DamageToolsHealthBonus = Utility.RandomFloat(FLT_ToolHealthDMGMin / 2, FLT_ToolHealthDMGMax / 2) 
		    If !PlayerRef.Wornhaskeyword(KWD_WearResistant)
		        PlayerRef.DamageValue(AV_ToolHealth, DamageToolsHealth)
         Else
		        PlayerRef.DamageValue(AV_ToolHealth, DamageToolsHealthBonus)
		 EndIf
      EndIf
	     
		 RemoveKit()
		 MaintenanceFinalization(akTargetRef)
		 
EndFunction

Function RemoveKit()
		
		Int Hood = 0                                                                             
		Int PlayerInventory = 0                		  
			  
		PlayerInventory = PlayerRef.GetItemCount(MiscObj_RoverMaintenanceKit)
		Hood = ObjRef_Hood.GetItemCount(MiscObj_RoverMaintenanceKit)
		  				   		
		If PlayerInventory < 1 
		   ObjRef_Hood.RemoveItem(MiscObj_RoverMaintenanceKit, 1, False, None)
    ElseIf PlayerInventory >= 1 
		   PlayerRef.RemoveItem(MiscObj_RoverMaintenanceKit, 1, False, None)
     EndIf

EndFunction

Function MaintenanceFinalization(ObjectReference akTargetRef)
		
		akTargetRef.BlockActivation(True, True)
		VFX_Maintenance.Play(akTargetRef, 10.0)
		SoundFX_RepairingStart.Play(PlayerRef, None, None)
		SoundFX_RepairingEnd.PlayAndWait(PlayerRef, None, None)
		VFX_FireMembrane.Stop(akTargetRef)
		VFX_RepairMembrane.Play(akTargetRef, 3.0)
		akTargetRef.BlockActivation(False, False)
		SoundFX_RepairingSuccess.Play(PlayerRef, None, None)
		MSG_RoverMaintenanceInfo.show(GV_DamageTimeInterval.GetValue(), PlayerRef.GetValue(AV_RoverMaintenance), PlayerRef.GetBaseValue(AV_RoverMaintenance), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)					

EndFunction