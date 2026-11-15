ScriptName SISA_Dismantle Extends Perk Const hidden

Actor Property PlayerRef Auto Const
ActorValue Property AV_SPMHelmet Auto Const
ActorValue Property AV_SPMBoostpack Auto Const
ActorValue Property AV_SPMSpacesuit Auto Const
ActorValue Property AV_SPMWeaponsRifleAuto Auto Const
ActorValue Property AV_SPMWeaponsRifleAutoLaser Auto Const
ActorValue Property AV_SPMWeaponsRifleAutoParticle Auto Const
ActorValue Property AV_SPMWeaponsRifleSemi Auto Const
ActorValue Property AV_SPMWeaponsRifleSemiLaser Auto Const
ActorValue Property AV_SPMWeaponsRifleSemiParticle Auto Const
ActorValue Property AV_SPMWeaponsHandgunAuto Auto Const
ActorValue Property AV_SPMWeaponsHandgunAutoLaser Auto Const
ActorValue Property AV_SPMWeaponsHandgunAutoParticle Auto Const
ActorValue Property AV_SPMWeaponsHandgunSemi Auto Const
ActorValue Property AV_SPMWeaponsHandgunSemiLaser Auto Const
ActorValue Property AV_SPMWeaponsHandgunSemiParticle Auto Const
ActorValue Property AV_SPMWeaponsLauncher Auto Const
ActorValue Property AV_SPMWeaponsLauncherParticle Auto Const
ActorValue Property AV_SPMWeaponsMinigun Auto Const
ActorValue Property AV_SPMWeaponsMinigunParticle Auto Const
ActorValue Property AV_SPMWeaponsMelee Auto Const
ActorValue Property AV_SPMWeaponsShotgun Auto Const
ActorValue Property AV_SPMWeaponsShotgunParticle Auto Const
ActorValue Property AV_SPMWeaponsSniper Auto Const
ActorValue Property AV_SPMWeaponsSniperLaser Auto Const
ActorValue Property AV_SPMWeaponsSniperParticle Auto Const
ActorValue Property AV_SPMWeaponsEM Auto Const
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
Potion Property POTI_FieldRepairKitWeaponsShotgunsParticle Auto Const
Potion Property POTI_FieldRepairKitWeaponsMelee Auto Const
Potion Property POTI_FieldRepairKitWeaponsMiniguns Auto Const
Potion Property POTI_FieldRepairKitWeaponsMinigunsParticle Auto Const
Potion Property POTI_FieldRepairKitWeaponsLaunchers Auto Const
Potion Property POTI_FieldRepairKitWeaponsLaunchersParticle Auto Const
Potion Property POTI_FieldRepairKitWeaponsHandgunsAuto Auto Const
Potion Property POTI_FieldRepairKitWeaponsHandgunsAutoLaser Auto Const
Potion Property POTI_FieldRepairKitWeaponsHandgunsAutoParticle Auto Const
Potion Property POTI_FieldRepairKitWeaponsHandgunsSemi Auto Const
Potion Property POTI_FieldRepairKitWeaponsHandgunsSemiLaser Auto Const
Potion Property POTI_FieldRepairKitWeaponsHandgunsSemiParticle Auto Const
Potion Property POTI_FieldRepairKitWeaponsRiflesAuto Auto Const
Potion Property POTI_FieldRepairKitWeaponsRiflesAutoLaser Auto Const
Potion Property POTI_FieldRepairKitWeaponsRiflesAutoParticle Auto Const
Potion Property POTI_FieldRepairKitWeaponsRiflesSemi Auto Const
Potion Property POTI_FieldRepairKitWeaponsRiflesSemiLaser Auto Const
Potion Property POTI_FieldRepairKitWeaponsRiflesSemiParticle Auto Const
Potion Property POTI_FieldRepairKitWeaponsSniper Auto Const
Potion Property POTI_FieldRepairKitWeaponsSniperLaser Auto Const
Potion Property POTI_FieldRepairKitWeaponsSniperParticle Auto Const
Potion Property POTI_FieldRepairKitWeaponsEM Auto Const
Potion Property POTI_FieldRepairKitTool Auto Const
Potion Property POTI_FieldRepairKitSpacesuit Auto Const
Potion Property POTI_FieldRepairKitBoostpack Auto Const
Potion Property POTI_FieldRepairKitHelmet Auto Const
Potion Property POTI_DismantleToken_Armor Auto Const
Potion Property POTI_DismantleToken_Weapon Auto Const
Message Property MSG_CollectedPartsWeaponRifleAuto Auto Const
Message Property MSG_CollectedPartsWeaponRifleAutoLaser Auto Const
Message Property MSG_CollectedPartsWeaponRifleAutoParticle Auto Const
Message Property MSG_CollectedPartsWeaponRifleSemi Auto Const
Message Property MSG_CollectedPartsWeaponRifleSemiLaser Auto Const
Message Property MSG_CollectedPartsWeaponRifleSemiParticle Auto Const
Message Property MSG_CollectedPartsWeaponHandgunAuto Auto Const
Message Property MSG_CollectedPartsWeaponHandgunAutoLaser Auto Const
Message Property MSG_CollectedPartsWeaponHandgunAutoParticle Auto Const
Message Property MSG_CollectedPartsWeaponHandgunSemi Auto Const
Message Property MSG_CollectedPartsWeaponHandgunSemiLaser Auto Const
Message Property MSG_CollectedPartsWeaponHandgunSemiParticle Auto Const
Message Property MSG_CollectedPartsWeaponLauncher Auto Const
Message Property MSG_CollectedPartsWeaponLauncherParticle Auto Const
Message Property MSG_CollectedPartsWeaponMinigun Auto Const
Message Property MSG_CollectedPartsWeaponMinigunParticle Auto Const
Message Property MSG_CollectedPartsWeaponMelee Auto Const
Message Property MSG_CollectedPartsWeaponShotgun Auto Const
Message Property MSG_CollectedPartsWeaponShotgunParticle Auto Const
Message Property MSG_CollectedPartsWeaponSniper Auto Const
Message Property MSG_CollectedPartsWeaponSniperLaser Auto Const
Message Property MSG_CollectedPartsWeaponSniperParticle Auto Const
Message Property MSG_CollectedPartsWeaponEM Auto Const
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
Conditionform Property CFPerkRankArmor01 Auto Const Mandatory
Conditionform Property CFPerkRankArmor02 Auto Const Mandatory
Conditionform Property CFPerkRankArmor03 Auto Const Mandatory
Conditionform Property CFPerkRankArmor04 Auto Const Mandatory
Conditionform Property CFPerkRankWeapon01 Auto Const Mandatory
Conditionform Property CFPerkRankWeapon02 Auto Const Mandatory
Conditionform Property CFPerkRankWeapon03 Auto Const Mandatory
Conditionform Property CFPerkRankWeapon04 Auto Const Mandatory

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
		       Float PerkBonus = PerkBonusWeapon()
			   Dismantle(FLT_RestoreMinWPN, FLT_RestoreMaxWPN, PerkBonus, AV_SPMWeaponsRifleAuto, akTargetRef, POTI_FieldRepairKitWeaponsRiflesAuto, MSG_CollectedPartsWeaponRifleAuto, SFX_DismantleImpactDriver, POTI_DismantleToken_Weapon)
          EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function DismantleForWeaponsPartsRifleAutoLaser(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
		  Else
		       Float PerkBonus = PerkBonusWeapon()
			   Dismantle(FLT_RestoreMinWPN, FLT_RestoreMaxWPN, PerkBonus, AV_SPMWeaponsRifleAutoLaser, akTargetRef, POTI_FieldRepairKitWeaponsRiflesAutoLaser, MSG_CollectedPartsWeaponRifleAutoLaser, SFX_DismantleImpactDriver, POTI_DismantleToken_Weapon)
          EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function DismantleForWeaponsPartsRifleAutoParticle(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
		  Else
		       Float PerkBonus = PerkBonusWeapon()
			   Dismantle(FLT_RestoreMinWPN, FLT_RestoreMaxWPN, PerkBonus, AV_SPMWeaponsRifleAutoParticle, akTargetRef, POTI_FieldRepairKitWeaponsRiflesAutoParticle, MSG_CollectedPartsWeaponRifleAutoParticle, SFX_DismantleImpactDriver, POTI_DismantleToken_Weapon)
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
		       Float PerkBonus = PerkBonusWeapon()
		       Dismantle(FLT_RestoreMinWPN, FLT_RestoreMaxWPN, PerkBonus, AV_SPMWeaponsRifleSemi, akTargetRef, POTI_FieldRepairKitWeaponsRiflesSemi, MSG_CollectedPartsWeaponRifleSemi, SFX_DismantleImpactDriver, POTI_DismantleToken_Weapon)
          EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function DismantleForWeaponsPartsRifleSemiLaser(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
		  Else
		       Float PerkBonus = PerkBonusWeapon()
		       Dismantle(FLT_RestoreMinWPN, FLT_RestoreMaxWPN, PerkBonus, AV_SPMWeaponsRifleSemiLaser, akTargetRef, POTI_FieldRepairKitWeaponsRiflesSemiLaser, MSG_CollectedPartsWeaponRifleSemiLaser, SFX_DismantleImpactDriver, POTI_DismantleToken_Weapon)
          EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function DismantleForWeaponsPartsRifleSemiParticle(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
		  Else
		       Float PerkBonus = PerkBonusWeapon()
		       Dismantle(FLT_RestoreMinWPN, FLT_RestoreMaxWPN, PerkBonus, AV_SPMWeaponsRifleSemiParticle, akTargetRef, POTI_FieldRepairKitWeaponsRiflesSemiParticle, MSG_CollectedPartsWeaponRifleSemiParticle, SFX_DismantleImpactDriver, POTI_DismantleToken_Weapon)
          EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function DismantleForWeaponsPartsRifleEM(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
		  Else
		       Float PerkBonus = PerkBonusWeapon()
		       Dismantle(FLT_RestoreMinWPN, FLT_RestoreMaxWPN, PerkBonus, AV_SPMWeaponsEM, akTargetRef, POTI_FieldRepairKitWeaponsEM, MSG_CollectedPartsWeaponEM, SFX_DismantleImpactDriver, POTI_DismantleToken_Weapon)
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
		       Float PerkBonus = PerkBonusWeapon()
		       Dismantle(FLT_RestoreMinWPN, FLT_RestoreMaxWPN, PerkBonus, AV_SPMWeaponsHandgunAuto, akTargetRef, POTI_FieldRepairKitWeaponsHandgunsAuto, MSG_CollectedPartsWeaponHandgunAuto, SFX_DismantleImpactDriver, POTI_DismantleToken_Weapon)
          EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function DismantleForWeaponsPartsHandgunAutoLaser(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
		  Else
		       Float PerkBonus = PerkBonusWeapon()
		       Dismantle(FLT_RestoreMinWPN, FLT_RestoreMaxWPN, PerkBonus, AV_SPMWeaponsHandgunAutoLaser, akTargetRef, POTI_FieldRepairKitWeaponsHandgunsAutoLaser, MSG_CollectedPartsWeaponHandgunAutoLaser, SFX_DismantleImpactDriver, POTI_DismantleToken_Weapon)
          EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function DismantleForWeaponsPartsHandgunAutoParticle(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
		  Else
		       Float PerkBonus = PerkBonusWeapon()
		       Dismantle(FLT_RestoreMinWPN, FLT_RestoreMaxWPN, PerkBonus, AV_SPMWeaponsHandgunAutoParticle, akTargetRef, POTI_FieldRepairKitWeaponsHandgunsAutoParticle, MSG_CollectedPartsWeaponHandgunAutoParticle, SFX_DismantleImpactDriver, POTI_DismantleToken_Weapon)
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
		       Float PerkBonus = PerkBonusWeapon()
		       Dismantle(FLT_RestoreMinWPN, FLT_RestoreMaxWPN, PerkBonus, AV_SPMWeaponsHandgunSemi, akTargetRef, POTI_FieldRepairKitWeaponsHandgunsSemi, MSG_CollectedPartsWeaponHandgunSemi, SFX_DismantleImpactDriver, POTI_DismantleToken_Weapon)
          EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function DismantleForWeaponsPartsHandgunSemiLaser(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
		  Else
		       Float PerkBonus = PerkBonusWeapon()
		       Dismantle(FLT_RestoreMinWPN, FLT_RestoreMaxWPN, PerkBonus, AV_SPMWeaponsHandgunSemiLaser, akTargetRef, POTI_FieldRepairKitWeaponsHandgunsSemiLaser, MSG_CollectedPartsWeaponHandgunSemiLaser, SFX_DismantleImpactDriver, POTI_DismantleToken_Weapon)
          EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function DismantleForWeaponsPartsHandgunSemiParticle(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
		  Else
		       Float PerkBonus = PerkBonusWeapon()
		       Dismantle(FLT_RestoreMinWPN, FLT_RestoreMaxWPN, PerkBonus, AV_SPMWeaponsHandgunSemiParticle, akTargetRef, POTI_FieldRepairKitWeaponsHandgunsSemiParticle, MSG_CollectedPartsWeaponHandgunSemiParticle, SFX_DismantleImpactDriver, POTI_DismantleToken_Weapon)
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
		       Float PerkBonus = PerkBonusWeapon()
		       Dismantle(FLT_RestoreMinWPNLauncher, FLT_RestoreMaxWPNLauncher, PerkBonus, AV_SPMWeaponsLauncher, akTargetRef, POTI_FieldRepairKitWeaponsLaunchers, MSG_CollectedPartsWeaponLauncher, SFX_DismantleImpactDriver, POTI_DismantleToken_Weapon)
          EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function DismantleForWeaponsPartsLauncherParticle(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
		  Else
		       Float PerkBonus = PerkBonusWeapon()
		       Dismantle(FLT_RestoreMinWPNLauncher, FLT_RestoreMaxWPNLauncher, PerkBonus, AV_SPMWeaponsLauncherParticle, akTargetRef, POTI_FieldRepairKitWeaponsLaunchersParticle, MSG_CollectedPartsWeaponLauncherParticle, SFX_DismantleImpactDriver, POTI_DismantleToken_Weapon)
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
		       Float PerkBonus = PerkBonusWeapon()
		       Dismantle(FLT_RestoreMinWPNMinigun, FLT_RestoreMaxWPNMinigun, PerkBonus, AV_SPMWeaponsMinigun, akTargetRef, POTI_FieldRepairKitWeaponsMiniguns, MSG_CollectedPartsWeaponMinigun, SFX_DismantleImpactDriver, POTI_DismantleToken_Weapon)
          EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function DismantleForWeaponsPartsMinigunParticle(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
		  Else
		       Float PerkBonus = PerkBonusWeapon()
		       Dismantle(FLT_RestoreMinWPNMinigun, FLT_RestoreMaxWPNMinigun, PerkBonus, AV_SPMWeaponsMinigunParticle, akTargetRef, POTI_FieldRepairKitWeaponsMinigunsParticle, MSG_CollectedPartsWeaponMinigunParticle, SFX_DismantleImpactDriver, POTI_DismantleToken_Weapon)
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
		       Float PerkBonus = PerkBonusWeapon()
		       Dismantle(FLT_RestoreMinWPN, FLT_RestoreMaxWPN, PerkBonus, AV_SPMWeaponsMelee, akTargetRef, POTI_FieldRepairKitWeaponsMelee, MSG_CollectedPartsWeaponMelee, SFX_DismantleImpactDriver, POTI_DismantleToken_Weapon)
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
		       Float PerkBonus = PerkBonusWeapon()
		       Dismantle(FLT_RestoreMinWPN, FLT_RestoreMaxWPN, PerkBonus, AV_SPMWeaponsShotgun, akTargetRef, POTI_FieldRepairKitWeaponsShotguns, MSG_CollectedPartsWeaponShotgun, SFX_DismantleImpactDriver, POTI_DismantleToken_Weapon)
          EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function DismantleForWeaponsPartsShotgunParticle(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
		  Else
		       Float PerkBonus = PerkBonusWeapon()
		       Dismantle(FLT_RestoreMinWPN, FLT_RestoreMaxWPN, PerkBonus, AV_SPMWeaponsShotgunParticle, akTargetRef, POTI_FieldRepairKitWeaponsShotgunsParticle, MSG_CollectedPartsWeaponShotgunParticle, SFX_DismantleImpactDriver, POTI_DismantleToken_Weapon)
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
		       Float PerkBonus = PerkBonusWeapon()
               Dismantle(FLT_RestoreMinTool, FLT_RestoreMaxTool, PerkBonus, AV_SPMTools, akTargetRef, POTI_FieldRepairKitTool, MSG_CollectedPartsTool, SFX_DismantleImpactDriver, POTI_DismantleToken_Weapon)
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
		       Float PerkBonus = PerkBonusWeapon()
		       Dismantle(FLT_RestoreMinWPN, FLT_RestoreMaxWPN, PerkBonus, AV_SPMWeaponsSniper, akTargetRef, POTI_FieldRepairKitWeaponsSniper, MSG_CollectedPartsWeaponSniper, SFX_DismantleImpactDriver, POTI_DismantleToken_Weapon)
          EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function DismantleForWeaponsPartsSniperLaser(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
		  Else
		       Float PerkBonus = PerkBonusWeapon()
		       Dismantle(FLT_RestoreMinWPN, FLT_RestoreMaxWPN, PerkBonus, AV_SPMWeaponsSniperLaser, akTargetRef, POTI_FieldRepairKitWeaponsSniperLaser, MSG_CollectedPartsWeaponSniperLaser, SFX_DismantleImpactDriver, POTI_DismantleToken_Weapon)
          EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function DismantleForWeaponsPartsSniperParticle(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
		  Else
		       Float PerkBonus = PerkBonusWeapon()
		       Dismantle(FLT_RestoreMinWPN, FLT_RestoreMaxWPN, PerkBonus, AV_SPMWeaponsSniperParticle, akTargetRef, POTI_FieldRepairKitWeaponsSniperParticle, MSG_CollectedPartsWeaponSniperParticle, SFX_DismantleImpactDriver, POTI_DismantleToken_Weapon)
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
		       Float PerkBonus = PerkBonusArmor()
               Dismantle(FLT_RestoreMinSpacesuit, FLT_RestoreMaxSpacesuit, PerkBonus, AV_SPMSpacesuit, akTargetRef, POTI_FieldRepairKitSpacesuit, MSG_CollectedPartsSpacesuit, SFX_DismantlePipeWrench, POTI_DismantleToken_Armor)
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
		       Float PerkBonus = PerkBonusArmor()
               Dismantle(FLT_RestoreMinBoostpack, FLT_RestoreMaxBoostpack, PerkBonus, AV_SPMBoostpack, akTargetRef, POTI_FieldRepairKitBoostpack, MSG_CollectedPartsBoostpack, SFX_DismantleRatchet, POTI_DismantleToken_Armor)
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
		       Float PerkBonus = PerkBonusArmor()
               Dismantle(FLT_RestoreMinHelmet, FLT_RestoreMaxHelmet, PerkBonus, AV_SPMHelmet, akTargetRef, POTI_FieldRepairKitHelmet, MSG_CollectedPartsHelmet, SFX_DismantleHammer, POTI_DismantleToken_Armor)
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

Function RepairRifleSemiLaser(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthImpactDriver) <= 0
		       MSG_ImpactDrillBatteryStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitWeaponsRiflesSemiLaser) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithImpactDriver(POTI_FieldRepairKitWeaponsRiflesSemiLaser, akTargetRef, SFX_DismantleImpactDriver, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
         EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function RepairRifleSemiParticle(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthImpactDriver) <= 0
		       MSG_ImpactDrillBatteryStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitWeaponsRiflesSemiParticle) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithImpactDriver(POTI_FieldRepairKitWeaponsRiflesSemiParticle, akTargetRef, SFX_DismantleImpactDriver, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
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

Function RepairRifleAutoLaser(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthImpactDriver) <= 0
		       MSG_ImpactDrillBatteryStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitWeaponsRiflesAutoLaser) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithImpactDriver(POTI_FieldRepairKitWeaponsRiflesAutoLaser, akTargetRef, SFX_DismantleImpactDriver, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
         EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function RepairRifleAutoParticle(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthImpactDriver) <= 0
		       MSG_ImpactDrillBatteryStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitWeaponsRiflesAutoParticle) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithImpactDriver(POTI_FieldRepairKitWeaponsRiflesAutoParticle, akTargetRef, SFX_DismantleImpactDriver, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
         EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function RepairRifleEM(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthImpactDriver) <= 0
		       MSG_ImpactDrillBatteryStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitWeaponsEM) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithImpactDriver(POTI_FieldRepairKitWeaponsEM, akTargetRef, SFX_DismantleImpactDriver, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
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

Function RepairMinigunParticle(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthImpactDriver) <= 0
		       MSG_ImpactDrillBatteryStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitWeaponsMinigunsParticle) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithImpactDriver(POTI_FieldRepairKitWeaponsMinigunsParticle, akTargetRef, SFX_DismantleImpactDriver, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
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

Function RepairLauncherParticle(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthImpactDriver) <= 0
		       MSG_ImpactDrillBatteryStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitWeaponsLaunchersParticle) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithImpactDriver(POTI_FieldRepairKitWeaponsLaunchersParticle, akTargetRef, SFX_DismantleImpactDriver, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
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

Function RepairShotgunParticle(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthImpactDriver) <= 0
		       MSG_ImpactDrillBatteryStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitWeaponsShotgunsParticle) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithImpactDriver(POTI_FieldRepairKitWeaponsShotgunsParticle, akTargetRef, SFX_DismantleImpactDriver, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
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

Function RepairHandgunAutoLaser(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthImpactDriver) <= 0
		       MSG_ImpactDrillBatteryStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitWeaponsHandgunsAutoLaser) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithImpactDriver(POTI_FieldRepairKitWeaponsHandgunsAutoLaser, akTargetRef, SFX_DismantleImpactDriver, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
         EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function RepairHandgunAutoParticle(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthImpactDriver) <= 0
		       MSG_ImpactDrillBatteryStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitWeaponsHandgunsAutoParticle) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithImpactDriver(POTI_FieldRepairKitWeaponsHandgunsAutoParticle, akTargetRef, SFX_DismantleImpactDriver, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
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

Function RepairHandgunSemiLaser(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthImpactDriver) <= 0
		       MSG_ImpactDrillBatteryStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitWeaponsHandgunsSemiLaser) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithImpactDriver(POTI_FieldRepairKitWeaponsHandgunsSemiLaser, akTargetRef, SFX_DismantleImpactDriver, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
         EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function RepairHandgunSemiParticle(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthImpactDriver) <= 0
		       MSG_ImpactDrillBatteryStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitWeaponsHandgunsSemiParticle) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithImpactDriver(POTI_FieldRepairKitWeaponsHandgunsSemiParticle, akTargetRef, SFX_DismantleImpactDriver, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
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

Function RepairSniperLaser(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthImpactDriver) <= 0
		       MSG_ImpactDrillBatteryStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitWeaponsSniperLaser) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithImpactDriver(POTI_FieldRepairKitWeaponsSniperLaser, akTargetRef, SFX_DismantleImpactDriver, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
         EndIf
          akTargetRef.BlockActivation(False, False)
  Else
          MSG_ToolUnsheath.Show()
  EndIf
EndFunction

Function RepairSniperParticle(ObjectReference akTargetRef, Actor akActor)		     
     If PlayerRef.IsWeaponDrawn()
          akTargetRef.BlockActivation(True, True) 
			If PlayerRef.GetValue(AV_WeaponDegradeTool) <= 0
		       MSG_ToolIsBroken.Show()
        ElseIf PlayerRef.GetValue(AV_ToolHealthImpactDriver) <= 0
		       MSG_ImpactDrillBatteryStatusEmpty.Show()
        ElseIf PlayerRef.GetItemCount(POTI_FieldRepairKitWeaponsSniperParticle) <= 0
		       MSG_FieldKitNone.Show()
		  Else
		       RepairWithImpactDriver(POTI_FieldRepairKitWeaponsSniperParticle, akTargetRef, SFX_DismantleImpactDriver, FLT_RestoreMinWPN, FLT_RestoreMaxWPN)
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

Float Function PerkBonusArmor()

      Float Rank01 = 1.0
      Float Rank02 = 1.15
      Float Rank03 = 1.30
      Float Rank04 = 1.50
      
		If CFPerkRankArmor04.IsTrue(PlayerRef, None)    
		   Return Rank04 
	ElseIf CFPerkRankArmor03.IsTrue(PlayerRef, None)  
	       Return Rank03
	ElseIf CFPerkRankArmor02.IsTrue(PlayerRef, None)  	 
           Return Rank02
	ElseIf CFPerkRankArmor01.IsTrue(PlayerRef, None) 
           Return Rank01 
     Else	
           Return 1.0
     EndIf

EndFunction

Float Function PerkBonusWeapon()

      Float Rank01 = 1.0
      Float Rank02 = 1.15
      Float Rank03 = 1.30
      Float Rank04 = 1.50
      
		If CFPerkRankWeapon04.IsTrue(PlayerRef, None)    
		   Return Rank04 
	ElseIf CFPerkRankWeapon03.IsTrue(PlayerRef, None)  
	       Return Rank03
	ElseIf CFPerkRankWeapon02.IsTrue(PlayerRef, None)  	 
           Return Rank02
	ElseIf CFPerkRankWeapon01.IsTrue(PlayerRef, None) 
           Return Rank01 
     Else	
           Return 1.0
     EndIf

EndFunction

Function Dismantle(Float Min, Float Max, Float PerkBonus, ActorValue AV, ObjectReference akTargetRef, Potion FieldRepairKit, Message Status, WwiseEvent SFX, Potion Token)
		 Float Restore = Utility.RandomFloat(Min, Max)
		 Float RestoreBonus = Utility.RandomFloat(Min * 1.5, Max * 1.5)
		 Float Quality = QualityBonus(akTargetRef) 
		 Float DamageToolsHealth = Utility.RandomFloat(FLT_ToolHealthDMGMin, FLT_ToolHealthDMGMax)
		 Float DamageToolsHealthBonus = Utility.RandomFloat(FLT_ToolHealthDMGMin / 2, FLT_ToolHealthDMGMax / 2) 
		    If !PlayerRef.Wornhaskeyword(KWD_EnhancedDisassembler)
		        PlayerRef.RestoreValue(AV, Restore * Quality * PerkBonus)
		        Status.Show(PlayerRef.GetValue(AV)) 
		 Else
		        PlayerRef.RestoreValue(AV, RestoreBonus * Quality * PerkBonus)		 
		       	Status.Show(PlayerRef.GetValue(AV)) 
		 EndIf
		    If !PlayerRef.Wornhaskeyword(KWD_WearResistant)
		        PlayerRef.DamageValue(AV_WeaponDegradeTool, DamageToolsHealth)
         Else
		        PlayerRef.DamageValue(AV_WeaponDegradeTool, DamageToolsHealthBonus)
		 EndIf
		 FeedbackFromDismantle(akTargetRef, SFX)
		 PlayerRef.EquipItem(Token, False, True)
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