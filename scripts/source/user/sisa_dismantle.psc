ScriptName SISA_Dismantle Extends Perk Const hidden

Actor Property PlayerRef Auto Const
ActorValue Property AV_SPMHelmet Auto Const
ActorValue Property AV_SPMBoostpack Auto Const
ActorValue Property AV_SPMSpacesuit Auto Const
ActorValue Property AV_SPMWeaponsRifleAuto Auto Const
ActorValue Property AV_SPMWeaponsRifleSemi Auto Const
ActorValue Property AV_SPMWeaponsHandgunAuto Auto Const
ActorValue Property AV_SPMWeaponsHandgunSemi Auto Const
ActorValue Property AV_SPMWeaponsLauncher Auto Const
ActorValue Property AV_SPMWeaponsMinigun Auto Const
ActorValue Property AV_SPMWeaponsMelee Auto Const
ActorValue Property AV_SPMWeaponsShotgun Auto Const
ActorValue Property AV_SPMWeaponsSniper Auto Const
ActorValue Property AV_SPMTools Auto Const
ActorValue Property AV_WeaponDegradeTool Auto Const
ActorValue Property AV_ToolHealthImpactDriver Auto Const
ActorValue Property AV_ToolHealthWelder Auto Const
wwiseevent Property SFX_DismantleRatchet Auto Const
wwiseevent Property SFX_DismantlePipeWrench Auto Const
wwiseevent Property SFX_DismantleImpactDriver Auto Const
wwiseevent Property SFX_DismantleHammer Auto Const
Explosion Property EXPLO_Dismantle Auto Const
Potion Property POTI_FieldRepairKitWeaponsShotguns Auto Const
Potion Property POTI_FieldRepairKitWeaponsMelee Auto Const
Potion Property POTI_FieldRepairKitWeaponsMiniguns Auto Const
Potion Property POTI_FieldRepairKitWeaponsLaunchers Auto Const
Potion Property POTI_FieldRepairKitWeaponsHandgunsAuto Auto Const
Potion Property POTI_FieldRepairKitWeaponsHandgunsSemi Auto Const
Potion Property POTI_FieldRepairKitWeaponsRiflesAuto Auto Const
Potion Property POTI_FieldRepairKitWeaponsRiflesSemi Auto Const
Potion Property POTI_FieldRepairKitWeaponsSniper Auto Const
Potion Property POTI_FieldRepairKitTool Auto Const
Potion Property POTI_FieldRepairKitSpacesuit Auto Const
Potion Property POTI_FieldRepairKitBoostpack Auto Const
Potion Property POTI_FieldRepairKitHelmet Auto Const
Message Property MSG_CollectedPartsWeaponRifleAuto Auto Const
Message Property MSG_CollectedPartsWeaponRifleSemi Auto Const
Message Property MSG_CollectedPartsWeaponHandgunAuto Auto Const
Message Property MSG_CollectedPartsWeaponHandgunSemi Auto Const
Message Property MSG_CollectedPartsWeaponLauncher Auto Const
Message Property MSG_CollectedPartsWeaponMinigun Auto Const
Message Property MSG_CollectedPartsWeaponMelee Auto Const
Message Property MSG_CollectedPartsWeaponShotgun Auto Const
Message Property MSG_CollectedPartsWeaponSniper Auto Const
Message Property MSG_CollectedPartsTool Auto Const
Message Property MSG_CollectedPartsSpacesuit Auto Const
Message Property MSG_CollectedPartsBoostpack Auto Const
Message Property MSG_CollectedPartsHelmet Auto Const
Message Property MSG_ImpactDrillBatteryStatus Auto Const
Message Property MSG_ImpactDrillBatteryStatusEmpty Auto Const
Message Property MSG_WelderGasStatus Auto Const
Message Property MSG_WelderGasStatusEmpty Auto Const
Message Property MSG_ToolIsBroken Auto Const
Message Property MSG_FieldKitNone Auto Const
Message Property MSG_ToolUnsheath Auto Const
Keyword Property KWD_EnhancedDisassembler Auto Const
Keyword Property KWD_HighCapacity Auto Const
Keyword Property KWD_WearResistant Auto Const
Keyword Property KWD_ArmorQuality02 Auto Const
Keyword Property KWD_ArmorQuality03 Auto Const
Keyword Property KWD_ArmorQuality04 Auto Const
Keyword Property KWD_ArmorQuality05 Auto Const
Keyword Property KWD_WeaponQuality02 Auto Const
Keyword Property KWD_WeaponQuality03 Auto Const
Keyword Property KWD_WeaponQuality04 Auto Const
Keyword Property KWD_WeaponQuality05 Auto Const
Keyword Property KWD_WeaponQuality06 Auto Const
Keyword Property KWD_WeaponMeleeQuality02 Auto Const
Keyword Property KWD_WeaponMeleeQuality03 Auto Const
Keyword Property KWD_WeaponMeleeQuality04 Auto Const
Keyword Property KWD_WeaponMeleeQuality05 Auto Const
Keyword Property KWD_WeaponMeleeQuality06 Auto Const

GlobalVariable Property GV_SFXBegin Auto Const
EffectShader Property VFX_Repair Auto Const Mandatory

Float Property FLT_RestoreMinWPN = 1.0 Auto Const
Float Property FLT_RestoreMaxWPN = 1.0 Auto Const
Float Property FLT_RestoreMinWPNLauncher = 1.0 Auto Const
Float Property FLT_RestoreMaxWPNLauncher = 1.0 Auto Const
Float Property FLT_RestoreMinWPNMinigun = 1.0 Auto Const
Float Property FLT_RestoreMaxWPNMinigun = 1.0 Auto Const
Float Property FLT_RestoreMinTool = 1.0 Auto Const
Float Property FLT_RestoreMaxTool = 1.0 Auto Const
Float Property FLT_RestoreMinSpacesuit = 1.0 Auto Const
Float Property FLT_RestoreMaxSpacesuit = 1.0 Auto Const
Float Property FLT_RestoreMinBoostpack = 1.0 Auto Const
Float Property FLT_RestoreMaxBoostpack = 1.0 Auto Const
Float Property FLT_RestoreMinHelmet = 1.0 Auto Const
Float Property FLT_RestoreMaxHelmet = 1.0 Auto Const
Float Property FLT_ToolHealthDMGMin = 1.0 Auto Const
Float Property FLT_ToolHealthDMGMax = 1.0 Auto Const

Function DismantleForWeaponsPartsRifleAuto(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
		  Else
		       Dismantle(FLT_RestoreMinWPN, FLT_RestoreMaxWPN, AV_SPMWeaponsRifleAuto, akTargetRef, POTI_FieldRepairKitWeaponsRiflesAuto, MSG_CollectedPartsWeaponRifleAuto, SFX_DismantleImpactDriver)
          EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function DismantleForWeaponsPartsRifleSemi(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
		  Else
		       Dismantle(FLT_RestoreMinWPN, FLT_RestoreMaxWPN, AV_SPMWeaponsRifleSemi, akTargetRef, POTI_FieldRepairKitWeaponsRiflesSemi, MSG_CollectedPartsWeaponRifleSemi, SFX_DismantleImpactDriver)
          EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function DismantleForWeaponsPartsHandgunAuto(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
		  Else
		       Dismantle(FLT_RestoreMinWPN, FLT_RestoreMaxWPN, AV_SPMWeaponsHandgunAuto, akTargetRef, POTI_FieldRepairKitWeaponsHandgunsAuto, MSG_CollectedPartsWeaponHandgunAuto, SFX_DismantleImpactDriver)
          EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function DismantleForWeaponsPartsHandgunSemi(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
		  Else
		       Dismantle(FLT_RestoreMinWPN, FLT_RestoreMaxWPN, AV_SPMWeaponsHandgunSemi, akTargetRef, POTI_FieldRepairKitWeaponsHandgunsSemi, MSG_CollectedPartsWeaponHandgunSemi, SFX_DismantleImpactDriver)
          EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function DismantleForWeaponsPartsLauncher(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
		  Else
		       Dismantle(FLT_RestoreMinWPNLauncher, FLT_RestoreMaxWPNLauncher, AV_SPMWeaponsLauncher, akTargetRef, POTI_FieldRepairKitWeaponsLaunchers, MSG_CollectedPartsWeaponLauncher, SFX_DismantleImpactDriver)
          EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function DismantleForWeaponsPartsMinigun(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
		  Else
		       Dismantle(FLT_RestoreMinWPNMinigun, FLT_RestoreMaxWPNMinigun, AV_SPMWeaponsMinigun, akTargetRef, POTI_FieldRepairKitWeaponsMiniguns, MSG_CollectedPartsWeaponMinigun, SFX_DismantleImpactDriver)
          EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function DismantleForWeaponsPartsMelee(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
		  Else
		       Dismantle(FLT_RestoreMinWPN, FLT_RestoreMaxWPN, AV_SPMWeaponsMelee, akTargetRef, POTI_FieldRepairKitWeaponsMelee, MSG_CollectedPartsWeaponMelee, SFX_DismantleImpactDriver)
          EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function DismantleForWeaponsPartsShotgun(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
		  Else
		       Dismantle(FLT_RestoreMinWPN, FLT_RestoreMaxWPN, AV_SPMWeaponsShotgun, akTargetRef, POTI_FieldRepairKitWeaponsShotguns, MSG_CollectedPartsWeaponShotgun, SFX_DismantleImpactDriver)
          EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function DismantleForToolParts(ObjectReference akTargetRef, Actor akActor)    
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
            If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
		  Else
               Dismantle(FLT_RestoreMinTool, FLT_RestoreMaxTool, AV_SPMTools, akTargetRef, POTI_FieldRepairKitTool, MSG_CollectedPartsTool, SFX_DismantleImpactDriver)
          EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function DismantleForWeaponsPartsSniper(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
		  Else
		       Dismantle(FLT_RestoreMinWPN, FLT_RestoreMaxWPN, AV_SPMWeaponsSniper, akTargetRef, POTI_FieldRepairKitWeaponsSniper, MSG_CollectedPartsWeaponSniper, SFX_DismantleImpactDriver)
          EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function DismantleForSpacesuitParts(ObjectReference akTargetRef, Actor akActor)    
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
            If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
          Else
               Dismantle(FLT_RestoreMinSpacesuit, FLT_RestoreMaxSpacesuit, AV_SPMSpacesuit, akTargetRef, POTI_FieldRepairKitSpacesuit, MSG_CollectedPartsSpacesuit, SFX_DismantlePipeWrench)
		  EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function DismantleForBoostpackParts(ObjectReference akTargetRef, Actor akActor)    
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
            If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
          Else
               Dismantle(FLT_RestoreMinBoostpack, FLT_RestoreMaxBoostpack, AV_SPMBoostpack, akTargetRef, POTI_FieldRepairKitBoostpack, MSG_CollectedPartsBoostpack, SFX_DismantleRatchet)
          EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function DismantleForHelmetParts(ObjectReference akTargetRef, Actor akActor)    
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
            If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
          Else
               Dismantle(FLT_RestoreMinHelmet, FLT_RestoreMaxHelmet, AV_SPMHelmet, akTargetRef, POTI_FieldRepairKitHelmet, MSG_CollectedPartsHelmet, SFX_DismantleHammer)
          EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function RepairRifleSemi(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthImpactDriver) <= 0
		       MSG_ImpactDrillBatteryStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitWeaponsRiflesSemi) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithImpactDriver(POTI_FieldRepairKitWeaponsRiflesSemi, akTargetRef, SFX_DismantleImpactDriver, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
         EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function RepairRifleAuto(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthImpactDriver) <= 0
		       MSG_ImpactDrillBatteryStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitWeaponsRiflesAuto) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithImpactDriver(POTI_FieldRepairKitWeaponsRiflesAuto, akTargetRef, SFX_DismantleImpactDriver, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
         EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function RepairMinigun(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthImpactDriver) <= 0
		       MSG_ImpactDrillBatteryStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitWeaponsMiniguns) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithImpactDriver(POTI_FieldRepairKitWeaponsMiniguns, akTargetRef, SFX_DismantleImpactDriver, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
         EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function RepairLauncher(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthImpactDriver) <= 0
		       MSG_ImpactDrillBatteryStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitWeaponsLaunchers) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithImpactDriver(POTI_FieldRepairKitWeaponsLaunchers, akTargetRef, SFX_DismantleImpactDriver, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
         EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function RepairMelee(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthImpactDriver) <= 0
		       MSG_ImpactDrillBatteryStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitWeaponsMelee) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithImpactDriver(POTI_FieldRepairKitWeaponsMelee, akTargetRef, SFX_DismantleImpactDriver, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
         EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function RepairShotgun(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthImpactDriver) <= 0
		       MSG_ImpactDrillBatteryStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitWeaponsShotguns) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithImpactDriver(POTI_FieldRepairKitWeaponsShotguns, akTargetRef, SFX_DismantleImpactDriver, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
         EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function RepairHandgunAuto(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthImpactDriver) <= 0
		       MSG_ImpactDrillBatteryStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitWeaponsHandgunsAuto) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithImpactDriver(POTI_FieldRepairKitWeaponsHandgunsAuto, akTargetRef, SFX_DismantleImpactDriver, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
         EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function RepairHandgunSemi(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthImpactDriver) <= 0
		       MSG_ImpactDrillBatteryStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitWeaponsHandgunsSemi) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithImpactDriver(POTI_FieldRepairKitWeaponsHandgunsSemi, akTargetRef, SFX_DismantleImpactDriver, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
         EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function RepairTools(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthImpactDriver) <= 0
		       MSG_ImpactDrillBatteryStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitTool) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithImpactDriver(POTI_FieldRepairKitTool, akTargetRef, SFX_DismantleImpactDriver, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
         EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function RepairSniper(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthImpactDriver) <= 0
		       MSG_ImpactDrillBatteryStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitWeaponsSniper) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithImpactDriver(POTI_FieldRepairKitWeaponsSniper, akTargetRef, SFX_DismantleImpactDriver, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
         EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function RepairSpacesuit(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthWelder) <= 0
		       MSG_WelderGasStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitSpacesuit) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithWelder(POTI_FieldRepairKitSpacesuit, akTargetRef, SFX_DismantlePipeWrench, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
         EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function RepairBoostpack(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthWelder) <= 0
		       MSG_WelderGasStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitBoostpack) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithWelder(POTI_FieldRepairKitBoostpack, akTargetRef, SFX_DismantleRatchet, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
         EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function RepairHelmet(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthWelder) <= 0
		       MSG_WelderGasStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitHelmet) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithWelder(POTI_FieldRepairKitHelmet, akTargetRef, SFX_DismantleHammer, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
         EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Float Function QualityBonus(ObjectReference akTargetRef)

      Float Quality01 = 1.0
      Float Quality02 = 1.6
      Float Quality03 = 2.2
      Float Quality04 = 2.8
      Float Quality05 = 3.4
      Float Quality06 = 4.0
      
	  If akTargetRef.Haskeyword(KWD_WeaponQuality06) || akTargetRef.Haskeyword(KWD_WeaponMeleeQuality06)
		 Return Quality06
  ElseIf akTargetRef.Haskeyword(KWD_WeaponQuality05) || akTargetRef.Haskeyword(KWD_WeaponMeleeQuality05) || akTargetRef.Haskeyword(KWD_ArmorQuality05)
         Return Quality05
  ElseIf akTargetRef.Haskeyword(KWD_WeaponQuality04) || akTargetRef.Haskeyword(KWD_WeaponMeleeQuality04) || akTargetRef.Haskeyword(KWD_ArmorQuality04)
         Return Quality04
  ElseIf akTargetRef.Haskeyword(KWD_WeaponQuality03) || akTargetRef.Haskeyword(KWD_WeaponMeleeQuality03) || akTargetRef.Haskeyword(KWD_ArmorQuality03)
         Return Quality03
  ElseIf akTargetRef.Haskeyword(KWD_WeaponQuality02) || akTargetRef.Haskeyword(KWD_WeaponMeleeQuality02) || akTargetRef.Haskeyword(KWD_ArmorQuality02)
         Return Quality02
    Else
         Return Quality01
   EndIf

EndFunction

Function Dismantle(Float Min, Float Max, ActorValue AV, ObjectReference akTargetRef, Potion FieldRepairKit, Message Status, WwiseEvent SFX)
		 Float Restore = Utility.RandomFloat(Min, Max)
		 Float RestoreBonus = Utility.RandomFloat(Min * 1.5, Max * 1.5)
		 Float Quality = QualityBonus(akTargetRef) 
		 Float DamageToolsHealth = Utility.RandomFloat(FLT_ToolHealthDMGMin, FLT_ToolHealthDMGMax)
		 Float DamageToolsHealthBonus = Utility.RandomFloat(FLT_ToolHealthDMGMin / 2, FLT_ToolHealthDMGMax / 2) 
		    If !PlayerRef.Wornhaskeyword(KWD_EnhancedDisassembler)
		        PlayerRef.RestoreValue(AV, Restore * Quality)
		        Status.Show(PlayerRef.GetValue(AV)) 
		 Else
		        PlayerRef.RestoreValue(AV, RestoreBonus * Quality)		 
		       	Status.Show(PlayerRef.GetValue(AV)) 
		 EndIf
		    If !PlayerRef.Wornhaskeyword(KWD_WearResistant)
		        PlayerRef.DamageValue(AV_WeaponDegradeTool, DamageToolsHealth)
         Else
		        PlayerRef.DamageValue(AV_WeaponDegradeTool, DamageToolsHealthBonus)
		 EndIf
		 FeedbackFromDismantle(akTargetRef, SFX)
		 akTargetRef.Disable(False)
         akTargetRef.Delete()   
         If PlayerRef.GetValue(AV) >= 100.0 
            PlayerRef.Additem(FieldRepairKit, 1, False)
		    PlayerRef.DamageValue(AV, 999)
      EndIf      
EndFunction

Function RepairWithWelder(Potion FieldRepairKit, ObjectReference akTargetRef, WwiseEvent SFX, Float Min, Float Max)
         If PlayerRef.GetItemCount(FieldRepairKit) > 0
			PlayerRef.EquipItem(FieldRepairKit, False, True)
            Utility.Wait(1.0)
			DMGWelderFromKit(Min, Max)
			FeedbackFromKit(akTargetRef, SFX)
	  EndIf
EndFunction

Function RepairWithImpactDriver(Potion FieldRepairKit, ObjectReference akTargetRef, WwiseEvent SFX, Float Min, Float Max)
         If PlayerRef.GetItemCount(FieldRepairKit) > 0
			PlayerRef.EquipItem(FieldRepairKit, False, True)
            Utility.Wait(1.0)
			DMGImpactDriverFromKit(Min, Max)
			FeedbackFromKit(akTargetRef, SFX)
	  EndIf
EndFunction

Function FeedbackFromDismantle(ObjectReference akTargetRef, WwiseEvent SFX)
         VFX_Repair.Play(akTargetRef, 1)
		 SFX.Play(PlayerRef, None, None)
         Game.ShakeCamera(PlayerRef, 3.0, 0.3)
         Game.ShakeController(1.0, 1.0, 0.3)
         Utility.Wait(0.7)
		 akTargetRef.Placeatme(EXPLO_Dismantle, 1, False, false, true, none, none, True) 
EndFunction

Function FeedbackFromKit(ObjectReference akTargetRef, WwiseEvent SFX)
         If GV_SFXBegin.GetValue() == 1
			SFX.Play(PlayerRef, None, None)
            VFX_Repair.Play(akTargetRef, 1)
			Game.ShakeCamera(PlayerRef, 3.0, 0.3)
            Game.ShakeController(1.0, 1.0, 0.3)
            akTargetRef.Placeatme(EXPLO_Dismantle, 1, False, false, true, none, none, True) 
      EndIf
EndFunction

Function DMGWelderFromKit(Float Min, Float Max)
      If GV_SFXBegin.GetValue() == 1		    
			Float DamageGas = Utility.RandomFloat(Min, Max)
		    Float DamageGasBonus = Utility.RandomFloat(Min / 2, Max / 2)
		    Float DamageToolsHealth = Utility.RandomFloat(FLT_ToolHealthDMGMin, FLT_ToolHealthDMGMax)
		    Float DamageToolsHealthBonus = Utility.RandomFloat(FLT_ToolHealthDMGMin / 2, FLT_ToolHealthDMGMax / 2) 		    
			If !PlayerRef.Wornhaskeyword(KWD_HighCapacity)
		        PlayerRef.DamageValue(AV_ToolHealthWelder, DamageGas)
         Else
		        PlayerRef.DamageValue(AV_ToolHealthWelder, DamageGasBonus)
		 EndIf
		    If !PlayerRef.Wornhaskeyword(KWD_WearResistant)
		        PlayerRef.DamageValue(AV_WeaponDegradeTool, DamageToolsHealth)
         Else
		        PlayerRef.DamageValue(AV_WeaponDegradeTool, DamageToolsHealthBonus)
		 EndIf
         MSG_WelderGasStatus.Show(PlayerRef.GetValue(AV_ToolHealthWelder))
   EndIf
EndFunction

Function DMGImpactDriverFromKit(Float Min, Float Max)
      If GV_SFXBegin.GetValue() == 1		    
		    Float DamageBattery = Utility.RandomFloat(Min, Max)
		    Float DamageBatteryBonus = Utility.RandomFloat(Min / 2, Max / 2)
		    Float DamageToolsHealth = Utility.RandomFloat(FLT_ToolHealthDMGMin, FLT_ToolHealthDMGMax)
		    Float DamageToolsHealthBonus = Utility.RandomFloat(FLT_ToolHealthDMGMin / 2, FLT_ToolHealthDMGMax / 2) 		    

		    If !PlayerRef.Wornhaskeyword(KWD_HighCapacity)
		        PlayerRef.DamageValue(AV_ToolHealthImpactDriver, DamageBattery)
         Else
		        PlayerRef.DamageValue(AV_ToolHealthImpactDriver, DamageBatteryBonus)
		 EndIf
		    If !PlayerRef.Wornhaskeyword(KWD_WearResistant)
		        PlayerRef.DamageValue(AV_WeaponDegradeTool, DamageToolsHealth)
         Else
		        PlayerRef.DamageValue(AV_WeaponDegradeTool, DamageToolsHealthBonus)
		 EndIf
         MSG_ImpactDrillBatteryStatus.Show(PlayerRef.GetValue(AV_ToolHealthImpactDriver))
   EndIf
EndFunction