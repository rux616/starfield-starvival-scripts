ScriptName SISA_RoverHood extends ObjectReference

Actor Property PlayerRef Auto Const
ActorValue Property AV_CargoWeight Auto Const
ActorValue Property AV_EnviroDomeCharge Auto Const
Keyword Property KeywordRoverModuleResourceStalker Auto Const
Keyword Property KeywordRoverModuleResourceStalkerUI Auto Const
Keyword Property KeywordRoverModuleStuncloud Auto Const
Keyword Property KeywordRoverModuleStuncloudUI Auto Const
Keyword Property KeywordRoverModuleShocker Auto Const
Keyword Property KeywordRoverModuleShockerUI Auto Const
Keyword Property KeywordRoverModuleCompartments Auto Const
Keyword Property KeywordRoverModuleCompartmentsUI Auto Const
Keyword Property KeywordRoverModuleInvisibility Auto Const
Keyword Property KeywordRoverModuleInvisibilityUI Auto Const
Keyword Property KeywordRoverModuleEnhancedTurret Auto Const
Keyword Property KeywordRoverModuleEnhancedTurretUI Auto Const
Keyword Property KeywordRoverModuleHornetAmmo Auto Const
Keyword Property KeywordRoverModuleHornetAmmoUI Auto Const
Keyword Property KeywordRoverModuleAutoFuelPump Auto Const
Keyword Property KeywordRoverModuleAutoFuelPumpUI Auto Const
Keyword Property KeywordRoverModuleAdvancedBlock Auto Const
Keyword Property KeywordRoverModuleAdvancedBlockUI Auto Const
Keyword Property KeywordRoverModuleAutoRepair Auto Const
Keyword Property KeywordRoverModuleAutoRepairUI Auto Const
Keyword Property KeywordRoverModuleEnviroDome Auto Const
Keyword Property KeywordRoverModuleEnviroDomeUI Auto Const
Keyword Property KeywordRoverModuleProtectiveCoating Auto Const
Keyword Property KeywordRoverModuleProtectiveCoatingUI Auto Const
Keyword Property KeywordRoverEnviroDomeBattery Auto Const
Message Property MSG_RoverEnviroDomeChargeStatus Auto Const
wwiseevent Property SoundFX_BeepSuccess Auto Const
wwiseevent Property SoundFX_ModuleInstall Auto Const
wwiseevent Property SoundFX_ModuleRemove Auto Const
GlobalVariable Property RoverSystems_ResourceStalkerToggle Auto Const
GlobalVariable Property RoverSystems_StuncloudToggle Auto Const
GlobalVariable Property RoverSystems_ShockerToggle Auto Const
GlobalVariable Property RoverSystems_InvisibilityToggle Auto Const
GlobalVariable Property RoverSystems_EnhancedTurretToggle Auto Const
GlobalVariable Property RoverSystems_HornetAmmoToggle Auto Const
GlobalVariable Property RoverSystems_AutoFuelPumpToggle Auto Const
GlobalVariable Property RoverSystems_AutoRepairToggle Auto Const
GlobalVariable Property RoverSystems_EnviroDomeToggle Auto Const
GlobalVariable Property RoverSystems_ProtectiveCoatingToggle Auto Const
MiscObject Property MiscObject_RoverModuleResourceStalker Auto Const
MiscObject Property MiscObject_RoverModuleResourceStalkerUI Auto Const
MiscObject Property MiscObject_RoverModuleShocker Auto Const
MiscObject Property MiscObject_RoverModuleShockerUI Auto Const
MiscObject Property MiscObject_RoverStuncloud Auto Const
MiscObject Property MiscObject_RoverStuncloudUI Auto Const
MiscObject Property MiscObject_RoverCompartments Auto Const
MiscObject Property MiscObject_RoverCompartmentsUI Auto Const
MiscObject Property MiscObject_RoverInvisibility Auto Const
MiscObject Property MiscObject_RoverInvisibilityUI Auto Const
MiscObject Property MiscObject_RoverEnhancedTurret Auto Const
MiscObject Property MiscObject_RoverEnhancedTurretUI Auto Const
MiscObject Property MiscObject_RoverHornetAmmo Auto Const
MiscObject Property MiscObject_RoverHornetAmmoUI Auto Const
MiscObject Property MiscObject_RoverAutoFuelPump Auto Const
MiscObject Property MiscObject_RoverAutoFuelPumpUI Auto Const
MiscObject Property MiscObject_RoverAdvancedBlock Auto Const
MiscObject Property MiscObject_RoverAdvancedBlockUI Auto Const
MiscObject Property MiscObject_RoverAutoRepair Auto Const
MiscObject Property MiscObject_RoverAutoRepairUI Auto Const
MiscObject Property MiscObject_RoverEnviroDome Auto Const
MiscObject Property MiscObject_RoverEnviroDomeUI Auto Const
MiscObject Property MiscObject_RoverProtectiveCoating Auto Const
MiscObject Property MiscObject_RoverProtectiveCoatingUI Auto Const
ObjectReference Property OBJ_Trunk Auto Const

Event OnInit()
      	        
       AddInventoryEventFilter(KeywordRoverModuleResourceStalker) 
       AddInventoryEventFilter(KeywordRoverModuleStuncloud) 
       AddInventoryEventFilter(KeywordRoverModuleShocker) 
       AddInventoryEventFilter(KeywordRoverModuleCompartments) 
       AddInventoryEventFilter(KeywordRoverModuleInvisibility) 
       AddInventoryEventFilter(KeywordRoverModuleEnhancedTurret) 
       AddInventoryEventFilter(KeywordRoverModuleHornetAmmo)
       AddInventoryEventFilter(KeywordRoverModuleAutoFuelPump)
       AddInventoryEventFilter(KeywordRoverModuleAdvancedBlock)
       AddInventoryEventFilter(KeywordRoverModuleAutoRepair)
       AddInventoryEventFilter(KeywordRoverModuleEnviroDome)
       AddInventoryEventFilter(KeywordRoverModuleProtectiveCoating)
       AddInventoryEventFilter(KeywordRoverModuleResourceStalkerUI) 
       AddInventoryEventFilter(KeywordRoverModuleStuncloudUI) 
       AddInventoryEventFilter(KeywordRoverModuleShockerUI) 
       AddInventoryEventFilter(KeywordRoverModuleCompartmentsUI)
       AddInventoryEventFilter(KeywordRoverModuleInvisibilityUI)
       AddInventoryEventFilter(KeywordRoverModuleEnhancedTurretUI)
       AddInventoryEventFilter(KeywordRoverModuleHornetAmmoUI)
       AddInventoryEventFilter(KeywordRoverModuleAutoFuelPumpUI)
       AddInventoryEventFilter(KeywordRoverModuleAdvancedBlockUI)
       AddInventoryEventFilter(KeywordRoverModuleAutoRepairUI)
       AddInventoryEventFilter(KeywordRoverModuleEnviroDomeUI)
       AddInventoryEventFilter(KeywordRoverModuleProtectiveCoatingUI)
       AddInventoryEventFilter(KeywordRoverEnviroDomeBattery)

EndEvent

Event OnActivate(ObjectReference akActionRef)
      	  
    If akActionRef == PlayerRef
       AddInventoryEventFilter(KeywordRoverModuleResourceStalker) 
       AddInventoryEventFilter(KeywordRoverModuleStuncloud) 
       AddInventoryEventFilter(KeywordRoverModuleShocker) 
       AddInventoryEventFilter(KeywordRoverModuleCompartments) 
       AddInventoryEventFilter(KeywordRoverModuleInvisibility) 
       AddInventoryEventFilter(KeywordRoverModuleEnhancedTurret) 
       AddInventoryEventFilter(KeywordRoverModuleHornetAmmo)
       AddInventoryEventFilter(KeywordRoverModuleAutoFuelPump)
       AddInventoryEventFilter(KeywordRoverModuleAdvancedBlock)
       AddInventoryEventFilter(KeywordRoverModuleAutoRepair)
       AddInventoryEventFilter(KeywordRoverModuleEnviroDome)
       AddInventoryEventFilter(KeywordRoverModuleProtectiveCoating)
       AddInventoryEventFilter(KeywordRoverModuleResourceStalkerUI) 
       AddInventoryEventFilter(KeywordRoverModuleStuncloudUI) 
       AddInventoryEventFilter(KeywordRoverModuleShockerUI) 
       AddInventoryEventFilter(KeywordRoverModuleCompartmentsUI)
       AddInventoryEventFilter(KeywordRoverModuleInvisibilityUI)
       AddInventoryEventFilter(KeywordRoverModuleEnhancedTurretUI)
       AddInventoryEventFilter(KeywordRoverModuleHornetAmmoUI)
       AddInventoryEventFilter(KeywordRoverModuleAutoFuelPumpUI)
       AddInventoryEventFilter(KeywordRoverModuleAdvancedBlockUI)
       AddInventoryEventFilter(KeywordRoverModuleAutoRepairUI)
       AddInventoryEventFilter(KeywordRoverModuleEnviroDomeUI)
       AddInventoryEventFilter(KeywordRoverModuleProtectiveCoatingUI)
       AddInventoryEventFilter(KeywordRoverEnviroDomeBattery)
	   SoundFX_BeepSuccess.Play(PlayerRef, None, None)
 EndIf      

EndEvent

Event OnItemAdded(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer, Int aiTransferReason)

    If akBaseItem.HasKeyword(KeywordRoverModuleResourceStalker)
       RoverSystems_ResourceStalkerToggle.SetValue(1)
       RemoveItem(akBaseItem, aiItemCount, True, None)
	   Additem(MiscObject_RoverModuleResourceStalkerUI, aiItemCount, True)
	   SoundFX_ModuleInstall.Play(PlayerRef, None, None)
ElseIf akBaseItem.HasKeyword(KeywordRoverModuleStuncloud)
       RoverSystems_StuncloudToggle.SetValue(1)
       RemoveItem(akBaseItem, aiItemCount, True, None)
	   Additem(MiscObject_RoverStuncloudUI, aiItemCount, True)
	   SoundFX_ModuleInstall.Play(PlayerRef, None, None)
ElseIf akBaseItem.HasKeyword(KeywordRoverModuleShocker)
       RoverSystems_ShockerToggle.SetValue(1)
       RemoveItem(akBaseItem, aiItemCount, True, None)
	   Additem(MiscObject_RoverModuleShockerUI, aiItemCount, True)
	   SoundFX_ModuleInstall.Play(PlayerRef, None, None)
ElseIf akBaseItem.HasKeyword(KeywordRoverModuleCompartments)
       RemoveItem(akBaseItem, aiItemCount, True, None)
	   Additem(MiscObject_RoverCompartmentsUI, aiItemCount, True)
       OBJ_Trunk.ModValue(AV_CargoWeight, 150)
	   SoundFX_ModuleInstall.Play(PlayerRef, None, None)
ElseIf akBaseItem.HasKeyword(KeywordRoverModuleInvisibility)
       RoverSystems_InvisibilityToggle.SetValue(1)
       RemoveItem(akBaseItem, aiItemCount, True, None)
	   Additem(MiscObject_RoverInvisibilityUI, aiItemCount, True)
	   SoundFX_ModuleInstall.Play(PlayerRef, None, None)
ElseIf akBaseItem.HasKeyword(KeywordRoverModuleEnhancedTurret)
       RoverSystems_EnhancedTurretToggle.SetValue(1)
       RemoveItem(akBaseItem, aiItemCount, True, None)
	   Additem(MiscObject_RoverEnhancedTurretUI, aiItemCount, True)
	   SoundFX_ModuleInstall.Play(PlayerRef, None, None)
ElseIf akBaseItem.HasKeyword(KeywordRoverModuleHornetAmmo)
       RoverSystems_HornetAmmoToggle.SetValue(1)
       RemoveItem(akBaseItem, aiItemCount, True, None)
	   Additem(MiscObject_RoverHornetAmmoUI, aiItemCount, True)
	   SoundFX_ModuleInstall.Play(PlayerRef, None, None)
ElseIf akBaseItem.HasKeyword(KeywordRoverModuleAutoFuelPump)
       RoverSystems_AutoFuelPumpToggle.SetValue(1)
       RemoveItem(akBaseItem, aiItemCount, True, None)
	   Additem(MiscObject_RoverAutoFuelPumpUI, aiItemCount, True)
	   SoundFX_ModuleInstall.Play(PlayerRef, None, None)
ElseIf akBaseItem.HasKeyword(KeywordRoverModuleAdvancedBlock)
       RemoveItem(akBaseItem, aiItemCount, True, None)
	   Additem(MiscObject_RoverAdvancedBlockUI, aiItemCount, True)
       ModValue(AV_CargoWeight, 50)
	   SoundFX_ModuleInstall.Play(PlayerRef, None, None)
ElseIf akBaseItem.HasKeyword(KeywordRoverModuleAutoRepair)
       RoverSystems_AutoRepairToggle.SetValue(1)
	   RemoveItem(akBaseItem, aiItemCount, True, None)
	   Additem(MiscObject_RoverAutoRepairUI, aiItemCount, True)
	   SoundFX_ModuleInstall.Play(PlayerRef, None, None)
ElseIf akBaseItem.HasKeyword(KeywordRoverModuleEnviroDome)
       RoverSystems_EnviroDomeToggle.SetValue(1)
	   RemoveItem(akBaseItem, aiItemCount, True, None)
	   Additem(MiscObject_RoverEnviroDomeUI, aiItemCount, True)
	   SoundFX_ModuleInstall.Play(PlayerRef, None, None)
ElseIf akBaseItem.HasKeyword(KeywordRoverModuleProtectiveCoating)
       RoverSystems_ProtectiveCoatingToggle.SetValue(1)
	   RemoveItem(akBaseItem, aiItemCount, True, None)
	   Additem(MiscObject_RoverProtectiveCoatingUI, aiItemCount, True)
	   SoundFX_ModuleInstall.Play(PlayerRef, None, None)
ElseIf akBaseItem.HasKeyword(KeywordRoverEnviroDomeBattery)
          If PlayerRef.GetValue(AV_EnviroDomeCharge) <= 0
	         RemoveItem(akBaseItem, aiItemCount, True, None)
             PlayerRef.RestoreValue(AV_EnviroDomeCharge, 999)
	         SoundFX_ModuleInstall.Play(PlayerRef, None, None)
			 MSG_RoverEnviroDomeChargeStatus.show(PlayerRef.GetValue(AV_EnviroDomeCharge), PlayerRef.GetBaseValue(AV_EnviroDomeCharge), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
       EndIf
 EndIf

EndEvent

Event OnItemRemoved(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer, Int aiTransferReason)

    If akBaseItem.HasKeyword(KeywordRoverModuleResourceStalkerUI)
       PlayerRef.Removeitem(MiscObject_RoverModuleResourceStalkerUI, aiItemCount, True, None)
	   PlayerRef.Additem(MiscObject_RoverModuleResourceStalker, 1, True)
	   RoverSystems_ResourceStalkerToggle.SetValue(0)
       SoundFX_ModuleRemove.Play(PlayerRef, None, None)
ElseIf akBaseItem.HasKeyword(KeywordRoverModuleStuncloudUI)
       PlayerRef.Removeitem(MiscObject_RoverStuncloudUI, aiItemCount, True, None)
	   PlayerRef.Additem(MiscObject_RoverStuncloud, 1, True)
	   RoverSystems_StuncloudToggle.SetValue(0)
       SoundFX_ModuleRemove.Play(PlayerRef, None, None)
ElseIf akBaseItem.HasKeyword(KeywordRoverModuleShockerUI)
       PlayerRef.Removeitem(MiscObject_RoverModuleShockerUI, aiItemCount, True, None)
	   PlayerRef.Additem(MiscObject_RoverModuleShocker, 1, True)
	   RoverSystems_ShockerToggle.SetValue(0)
       SoundFX_ModuleRemove.Play(PlayerRef, None, None)
ElseIf akBaseItem.HasKeyword(KeywordRoverModuleCompartmentsUI)
       PlayerRef.Removeitem(MiscObject_RoverCompartmentsUI, aiItemCount, True, None)
	   PlayerRef.Additem(MiscObject_RoverCompartments, 1, True)
	   OBJ_Trunk.ModValue(AV_CargoWeight, -150)
       SoundFX_ModuleRemove.Play(PlayerRef, None, None)
ElseIf akBaseItem.HasKeyword(KeywordRoverModuleInvisibilityUI)
       PlayerRef.Removeitem(MiscObject_RoverInvisibilityUI, aiItemCount, True, None)
	   PlayerRef.Additem(MiscObject_RoverInvisibility, 1, True)
	   RoverSystems_InvisibilityToggle.SetValue(0)
       SoundFX_ModuleRemove.Play(PlayerRef, None, None)
ElseIf akBaseItem.HasKeyword(KeywordRoverModuleEnhancedTurretUI)
       PlayerRef.Removeitem(MiscObject_RoverEnhancedTurretUI, aiItemCount, True, None)
	   PlayerRef.Additem(MiscObject_RoverEnhancedTurret, 1, True)
	   RoverSystems_EnhancedTurretToggle.SetValue(0)
       SoundFX_ModuleRemove.Play(PlayerRef, None, None)
ElseIf akBaseItem.HasKeyword(KeywordRoverModuleHornetAmmoUI)
       PlayerRef.Removeitem(MiscObject_RoverHornetAmmoUI, aiItemCount, True, None)
	   PlayerRef.Additem(MiscObject_RoverHornetAmmo, 1, True)
	   RoverSystems_HornetAmmoToggle.SetValue(0)
       SoundFX_ModuleRemove.Play(PlayerRef, None, None)
ElseIf akBaseItem.HasKeyword(KeywordRoverModuleAutoFuelPumpUI)
       PlayerRef.Removeitem(MiscObject_RoverAutoFuelPumpUI, aiItemCount, True, None)
	   PlayerRef.Additem(MiscObject_RoverAutoFuelPump, 1, True)
	   RoverSystems_AutoFuelPumpToggle.SetValue(0)
       SoundFX_ModuleRemove.Play(PlayerRef, None, None)
ElseIf akBaseItem.HasKeyword(KeywordRoverModuleAdvancedBlockUI)
       PlayerRef.Removeitem(MiscObject_RoverAdvancedBlockUI, aiItemCount, True, None)
	   PlayerRef.Additem(MiscObject_RoverAdvancedBlock, 1, True)
	   ModValue(AV_CargoWeight, -50)
       SoundFX_ModuleRemove.Play(PlayerRef, None, None)
ElseIf akBaseItem.HasKeyword(KeywordRoverModuleAutoRepairUI)
       PlayerRef.Removeitem(MiscObject_RoverAutoRepairUI, aiItemCount, True, None)
	   PlayerRef.Additem(MiscObject_RoverAutoRepair, 1, True)
	   RoverSystems_AutoRepairToggle.SetValue(0)
       SoundFX_ModuleRemove.Play(PlayerRef, None, None)
ElseIf akBaseItem.HasKeyword(KeywordRoverModuleEnviroDomeUI)
       PlayerRef.Removeitem(MiscObject_RoverEnviroDomeUI, aiItemCount, True, None)
	   PlayerRef.Additem(MiscObject_RoverEnviroDome, 1, True)
	   RoverSystems_EnviroDomeToggle.SetValue(0)
       SoundFX_ModuleRemove.Play(PlayerRef, None, None)
ElseIf akBaseItem.HasKeyword(KeywordRoverModuleProtectiveCoatingUI)
       PlayerRef.Removeitem(MiscObject_RoverProtectiveCoatingUI, aiItemCount, True, None)
	   PlayerRef.Additem(MiscObject_RoverProtectiveCoating, 1, True)
	   RoverSystems_ProtectiveCoatingToggle.SetValue(0)
       SoundFX_ModuleRemove.Play(PlayerRef, None, None)
 EndIf
	
EndEvent
