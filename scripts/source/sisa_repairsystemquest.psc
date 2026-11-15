Scriptname SISA_RepairSystemQuest extends Quest

Actor Property PlayerRef Auto Const
ActorValue Property AV_WeaponDegradationPistols Auto Const
ActorValue Property AV_WeaponDegradationPistolsAuto Auto Const
ActorValue Property AV_WeaponDegradationPistolsLaser Auto Const
ActorValue Property AV_WeaponDegradationPistolsAutoLaser Auto Const
ActorValue Property AV_WeaponDegradationPistolsParticle Auto Const
ActorValue Property AV_WeaponDegradationPistolsAutoParticle Auto Const
ActorValue Property AV_WeaponDegradationRiflesLaser Auto Const
ActorValue Property AV_WeaponDegradationRiflesAutoLaser Auto Const
ActorValue Property AV_WeaponDegradationRiflesParticle Auto Const
ActorValue Property AV_WeaponDegradationRiflesAutoParticle Auto Const
ActorValue Property AV_WeaponDegradationRifles Auto Const
ActorValue Property AV_WeaponDegradationRiflesAuto Auto Const
ActorValue Property AV_WeaponDegradationRiflesEM Auto Const
ActorValue Property AV_WeaponDegradationShotguns Auto Const
ActorValue Property AV_WeaponDegradationShotgunsParticle Auto Const
ActorValue Property AV_WeaponDegradationExplosives Auto Const
ActorValue Property AV_WeaponDegradationExplosivesParticle Auto Const
ActorValue Property AV_WeaponDegradationHeavy Auto Const
ActorValue Property AV_WeaponDegradationHeavyParticle Auto Const
ActorValue Property AV_WeaponDegradationMelee Auto Const
ActorValue Property AV_WeaponDegradationTool Auto Const
ActorValue Property AV_WeaponDegradationSniper Auto Const
ActorValue Property AV_WeaponDegradationSniperLaser Auto Const
ActorValue Property AV_WeaponDegradationSniperParticle Auto Const
ActorValue Property AV_SuitDegradationBoostpack Auto Const
ActorValue Property AV_SuitDegradationOutfit Auto Const
ActorValue Property AV_SuitDegradationHelmet Auto Const
ActorValue Property AV_DismantleWeaponsRifleAuto Auto Const
ActorValue Property AV_DismantleWeaponsRifleAutoLaser Auto Const
ActorValue Property AV_DismantleWeaponsRifleAutoParticle Auto Const
ActorValue Property AV_DismantleWeaponsRifleSemi Auto Const
ActorValue Property AV_DismantleWeaponsRifleSemiLaser Auto Const
ActorValue Property AV_DismantleWeaponsRifleSemiParticle Auto Const
ActorValue Property AV_DismantleWeaponsRifleEM Auto Const
ActorValue Property AV_DismantleWeaponsHandgunAuto Auto Const
ActorValue Property AV_DismantleWeaponsHandgunAutoLaser Auto Const
ActorValue Property AV_DismantleWeaponsHandgunAutoParticle Auto Const
ActorValue Property AV_DismantleWeaponsHandgunSemi Auto Const
ActorValue Property AV_DismantleWeaponsHandgunSemiLaser Auto Const
ActorValue Property AV_DismantleWeaponsHandgunSemiParticle Auto Const
ActorValue Property AV_DismantleWeaponsLauncher Auto Const
ActorValue Property AV_DismantleWeaponsLauncherParticle Auto Const
ActorValue Property AV_DismantleWeaponsMinigun Auto Const
ActorValue Property AV_DismantleWeaponsMinigunParticle Auto Const
ActorValue Property AV_DismantleWeaponsMelee Auto Const
ActorValue Property AV_DismantleWeaponsShotgun Auto Const
ActorValue Property AV_DismantleWeaponsShotgunParticle Auto Const
ActorValue Property AV_DismantleWeaponsSniper Auto Const
ActorValue Property AV_DismantleWeaponsSniperLaser Auto Const
ActorValue Property AV_DismantleWeaponsSniperParticle Auto Const
ActorValue Property AV_DismantleTools Auto Const
ActorValue Property AV_DismantleSpacesuits Auto Const
ActorValue Property AV_DismantleBoostpacks Auto Const
ActorValue Property AV_DismantleHelmets Auto Const
ActorValue Property AV_ToolHealthImpactDriver Auto Const
ActorValue Property AV_ToolHealthWelder Auto Const
Perk Property WeaponDegradationExplosivePerk Auto Const
Perk Property WeaponDegradationExplosivePerkParticle Auto Const
Perk Property WeaponDegradationHeavyPerk Auto Const
Perk Property WeaponDegradationHeavyPerkParticle Auto Const
Perk Property WeaponDegradationMeleePerk Auto Const
Perk Property WeaponDegradationHandgunsPerk Auto Const
Perk Property WeaponDegradationHandgunsPerkLaser Auto Const
Perk Property WeaponDegradationHandgunsPerkParticle Auto Const
Perk Property WeaponDegradationHandgunsAutoPerk Auto Const
Perk Property WeaponDegradationHandgunsAutoPerkLaser Auto Const
Perk Property WeaponDegradationHandgunsAutoPerkParticle Auto Const
Perk Property WeaponDegradationRiflesPerk Auto Const
Perk Property WeaponDegradationRiflesPerkLaser Auto Const
Perk Property WeaponDegradationRiflesPerkParticle Auto Const
Perk Property WeaponDegradationRiflesAutoPerk Auto Const
Perk Property WeaponDegradationRiflesAutoPerkLaser Auto Const
Perk Property WeaponDegradationRiflesAutoPerkParticle Auto Const
Perk Property WeaponDegradationRiflesEMPerk Auto Const
Perk Property WeaponDegradationShotgunsPerk Auto Const
Perk Property WeaponDegradationShotgunsPerkParticle Auto Const
Perk Property WeaponDegradationToolsPerk Auto Const
Perk Property WeaponDegradationSniperPerk Auto Const
Perk Property WeaponDegradationSniperPerkLaser Auto Const
Perk Property WeaponDegradationSniperPerkParticle Auto Const
Perk Property SuitDegradationOutfitPerk Auto Const
Perk Property SuitDegradationBoostpackPerk Auto Const
Perk Property SuitDegradationHelmetPerk Auto Const
Perk Property RepairVendorPerk Auto Const
Perk Property DismantlePerk Auto Const
Perk Property DismantlePerkNotGated Auto Const
GlobalVariable Property GV_PercentageTracker_BoostpackCond Auto Const
GlobalVariable Property GV_PercentageTracker_SpacesuitCond Auto Const
GlobalVariable Property GV_PercentageTracker_HelmetCond Auto Const
GlobalVariable Property GV_PercentageTracker_ExplosiveCond Auto Const
GlobalVariable Property GV_PercentageTracker_ExplosiveCondParticle Auto Const
GlobalVariable Property GV_PercentageTracker_HeavyCond Auto Const
GlobalVariable Property GV_PercentageTracker_HeavyCondParticle Auto Const
GlobalVariable Property GV_PercentageTracker_MeleeCond Auto Const
GlobalVariable Property GV_PercentageTracker_HandgunsAutoCond Auto Const
GlobalVariable Property GV_PercentageTracker_HandgunsAutoCondLaser Auto Const
GlobalVariable Property GV_PercentageTracker_HandgunsAutoCondParticle Auto Const
GlobalVariable Property GV_PercentageTracker_HandgunsSemiCond Auto Const
GlobalVariable Property GV_PercentageTracker_HandgunsSemiCondLaser Auto Const
GlobalVariable Property GV_PercentageTracker_HandgunsSemiCondParticle Auto Const
GlobalVariable Property GV_PercentageTracker_RiflesAutoCond Auto Const
GlobalVariable Property GV_PercentageTracker_RiflesAutoCondLaser Auto Const
GlobalVariable Property GV_PercentageTracker_RiflesAutoCondParticle Auto Const
GlobalVariable Property GV_PercentageTracker_RiflesSemiCond Auto Const
GlobalVariable Property GV_PercentageTracker_RiflesSemiCondLaser Auto Const
GlobalVariable Property GV_PercentageTracker_RiflesSemiCondParticle Auto Const
GlobalVariable Property GV_PercentageTracker_RiflesEMCond Auto Const
GlobalVariable Property GV_PercentageTracker_ShotgunsCond Auto Const
GlobalVariable Property GV_PercentageTracker_ShotgunsCondParticle Auto Const
GlobalVariable Property GV_PercentageTracker_ToolsCond Auto Const
GlobalVariable Property GV_PercentageTracker_SniperCond Auto Const
GlobalVariable Property GV_PercentageTracker_SniperCondLaser Auto Const
GlobalVariable Property GV_PercentageTracker_SniperCondParticle Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusBoostpack Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusSpacesuit Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusHelmet Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusExplosive Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusExplosiveParticle Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusHeavy Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusHeavyParticle Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusMelee Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusHandgunsAuto Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusHandgunsAutoLaser Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusHandgunsAutoParticle Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusHandgunsSemi Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusHandgunsSemiLaser Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusHandgunsSemiParticle Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusRiflesAuto Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusRiflesAutoLaser Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusRiflesAutoParticle Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusRiflesSemi Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusRiflesSemiLaser Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusRiflesSemiParticle Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusRiflesEM Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusShotguns Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusShotgunsParticle Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusTools Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusSniper Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusSniperLaser Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusSniperParticle Auto Const
GlobalVariable Property GV_DebuffTokenOutfit Auto Const
GlobalVariable Property GV_DebuffTokenBoostpack Auto Const
GlobalVariable Property GV_DebuffTokenHelmet Auto Const
GlobalVariable Property GV_DebuffTokenExplosive Auto Const
GlobalVariable Property GV_DebuffTokenExplosiveParticle Auto Const
GlobalVariable Property GV_DebuffTokenHandgunsAuto Auto Const
GlobalVariable Property GV_DebuffTokenHandgunsAutoLaser Auto Const
GlobalVariable Property GV_DebuffTokenHandgunsAutoParticle Auto Const
GlobalVariable Property GV_DebuffTokenHandgunsSemi Auto Const
GlobalVariable Property GV_DebuffTokenHandgunsSemiLaser Auto Const
GlobalVariable Property GV_DebuffTokenHandgunsSemiParticle Auto Const
GlobalVariable Property GV_DebuffTokenHeavy Auto Const
GlobalVariable Property GV_DebuffTokenHeavyParticle Auto Const
GlobalVariable Property GV_DebuffTokenHeavyTool Auto Const
GlobalVariable Property GV_DebuffTokenMelee Auto Const
GlobalVariable Property GV_DebuffTokenRifleAuto Auto Const
GlobalVariable Property GV_DebuffTokenRifleAutoLaser Auto Const
GlobalVariable Property GV_DebuffTokenRifleAutoParticle Auto Const
GlobalVariable Property GV_DebuffTokenRifleSemi Auto Const
GlobalVariable Property GV_DebuffTokenRifleSemiLaser Auto Const
GlobalVariable Property GV_DebuffTokenRifleSemiParticle Auto Const
GlobalVariable Property GV_DebuffTokenRifleEM Auto Const
GlobalVariable Property GV_DebuffTokenShotguns Auto Const
GlobalVariable Property GV_DebuffTokenShotgunsParticle Auto Const
GlobalVariable Property GV_DebuffTokenSniper Auto Const
GlobalVariable Property GV_DebuffTokenSniperLaser Auto Const
GlobalVariable Property GV_DebuffTokenSniperParticle Auto Const
GlobalVariable Property GV_FieldDismantleRepairMode Auto Const
Spell Property WeaponInspectorSpell Auto Const
Spell Property RepairKitStatusSpell Auto Const

Function RepairSystemStart()
         
		 Utility.Wait(1.0)		 
         RegisterForMenuOpenCloseEvent("DataMenu")
         PlayerRef.Addspell(WeaponInspectorSpell, False)		 
         PlayerRef.Addspell(RepairKitStatusSpell, False)	
		 PlayerRef.RestoreValue(AV_WeaponDegradationPistols, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationPistolsLaser, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationPistolsParticle, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationPistolsAuto, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationPistolsAutoLaser, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationPistolsAutoParticle, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationRifles, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationRiflesLaser, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationRiflesParticle, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationRiflesAuto, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationRiflesAutoLaser, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationRiflesAutoParticle, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationRiflesEM, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationShotguns, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationShotgunsParticle, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationExplosives, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationExplosivesParticle, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationHeavy, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationHeavyParticle, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationMelee, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationTool, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationSniper, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationSniperLaser, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationSniperParticle, 999)
		 PlayerRef.RestoreValue(AV_SuitDegradationBoostpack, 999)
		 PlayerRef.RestoreValue(AV_SuitDegradationOutfit, 999)         		 
		 PlayerRef.RestoreValue(AV_SuitDegradationHelmet, 999)     		 
		 PlayerRef.RestoreValue(AV_ToolHealthImpactDriver, 999)
		 PlayerRef.RestoreValue(AV_ToolHealthWelder, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsRifleAuto, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsRifleAutoLaser, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsRifleAutoParticle, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsRifleSemi, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsRifleSemiLaser, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsRifleSemiParticle, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsRifleEM, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsHandgunAuto, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsHandgunAutoLaser, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsHandgunAutoParticle, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsHandgunSemi, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsHandgunSemiLaser, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsHandgunSemiParticle, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsLauncher, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsLauncherParticle, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsMinigun, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsMinigunParticle, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsMelee, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsShotgun, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsShotgunParticle, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsSniper, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsSniperLaser, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsSniperParticle, 999)
		 PlayerRef.DamageValue(AV_DismantleTools, 999)
		 PlayerRef.DamageValue(AV_DismantleSpacesuits, 999)
		 PlayerRef.DamageValue(AV_DismantleBoostpacks, 999)
		 PlayerRef.DamageValue(AV_DismantleHelmets, 999)
		 
		 PercentageTracker()
		 
		 PlayerRef.Addperk(RepairVendorPerk, False)
		 PlayerRef.Addperk(DismantlePerk, False)
         PlayerRef.Addperk(WeaponDegradationExplosivePerk, False)
         PlayerRef.Addperk(WeaponDegradationExplosivePerkParticle, False)
         PlayerRef.Addperk(WeaponDegradationHandgunsPerk, False)
         PlayerRef.Addperk(WeaponDegradationHandgunsPerkLaser, False)
         PlayerRef.Addperk(WeaponDegradationHandgunsPerkParticle, False)
         PlayerRef.Addperk(WeaponDegradationHandgunsAutoPerk, False)
         PlayerRef.Addperk(WeaponDegradationHandgunsAutoPerkLaser, False)
         PlayerRef.Addperk(WeaponDegradationHandgunsAutoPerkParticle, False)
         PlayerRef.Addperk(WeaponDegradationHeavyPerk, False)
         PlayerRef.Addperk(WeaponDegradationHeavyPerkParticle, False)
         PlayerRef.Addperk(WeaponDegradationToolsPerk, False)
         PlayerRef.Addperk(WeaponDegradationMeleePerk, False)
         PlayerRef.Addperk(WeaponDegradationRiflesPerk, False)
         PlayerRef.Addperk(WeaponDegradationRiflesPerkLaser, False)
         PlayerRef.Addperk(WeaponDegradationRiflesPerkParticle, False)
         PlayerRef.Addperk(WeaponDegradationRiflesAutoPerk, False)
         PlayerRef.Addperk(WeaponDegradationRiflesAutoPerkLaser, False)
         PlayerRef.Addperk(WeaponDegradationRiflesAutoPerkParticle, False)
         PlayerRef.Addperk(WeaponDegradationRiflesEMPerk, False)
         PlayerRef.Addperk(WeaponDegradationShotgunsPerk, False)		 
         PlayerRef.Addperk(WeaponDegradationShotgunsPerkParticle, False)
         PlayerRef.Addperk(WeaponDegradationSniperPerk, False)
         PlayerRef.Addperk(WeaponDegradationSniperPerkLaser, False)
         PlayerRef.Addperk(WeaponDegradationSniperPerkParticle, False)
         PlayerRef.Addperk(SuitDegradationOutfitPerk, False)
         PlayerRef.Addperk(SuitDegradationBoostpackPerk, False)
         PlayerRef.Addperk(SuitDegradationHelmetPerk, False)

	     RegisterForActorValueChangedEvent(PlayerRef, AV_SuitDegradationBoostpack)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_SuitDegradationOutfit)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_SuitDegradationHelmet)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationExplosives)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationExplosivesParticle)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationHeavy)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationHeavyParticle)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationMelee)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistolsAuto)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistolsAutoLaser)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistolsAutoParticle)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistols)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistolsLaser)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistolsParticle)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRiflesAuto)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRiflesAutoLaser)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRiflesAutoParticle)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRifles)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRiflesLaser)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRiflesParticle)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRiflesEM)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationShotguns)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationShotgunsParticle)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationTool)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationSniper)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationSniperLaser)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationSniperParticle)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleAuto)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleAutoLaser)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleAutoParticle)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleSemi)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleSemiLaser)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleSemiParticle)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleEM)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunAuto)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunAutoLaser)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunAutoParticle)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunSemi)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunSemiLaser)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunSemiParticle)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsLauncher)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsLauncherParticle)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsMinigun)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsMinigunParticle)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsMelee)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsShotgun)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsShotgunParticle)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsSniper)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsSniperLaser)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsSniperParticle)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleTools)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleSpacesuits)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleBoostpacks)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleHelmets)

EndFunction

Function FieldRepairDismantleMode()
         If GV_FieldDismantleRepairMode.GetValue() == 0
		    PlayerRef.RemovePerk(DismantlePerkNotGated)
            PlayerRef.AddPerk(DismantlePerk, False)
            GV_FieldDismantleRepairMode.SetValue(1)
     ElseIf GV_FieldDismantleRepairMode.GetValue() == 1
		    PlayerRef.RemovePerk(DismantlePerk)
            PlayerRef.AddPerk(DismantlePerkNotGated, False)
            GV_FieldDismantleRepairMode.SetValue(0)
      EndIf
EndFunction

Event OnMenuOpenCloseEvent(String asMenuName, Bool abOpening)
         	     	 			 
		 If asMenuName == "DataMenu"    
			       If abOpening == True														      					   
                      ;PercentageTracker()		              
					  PlayerRef.AddSpell(WeaponInspectorSpell, False)				      
					  PlayerRef.AddSpell(RepairKitStatusSpell, False)
				Else
                            If (PlayerRef.HasSpell(WeaponInspectorSpell))
                                PlayerRef.RemoveSpell(WeaponInspectorSpell)
                         EndIf				
                            If (PlayerRef.HasSpell(RepairKitStatusSpell))
                                PlayerRef.RemoveSpell(RepairKitStatusSpell)
                         EndIf	
				EndIf
      EndIf

EndEvent

Event OnActorValueChanged(ObjectReference akObjRef, ActorValue akActorValue)    
	   
	   If akObjRef == PlayerRef && akActorValue == AV_SuitDegradationBoostpack
	      RegisterForActorValueChangedEvent(PlayerRef, AV_SuitDegradationBoostpack)
          GV_PercentageTracker_BoostpackCond.SetValue(PlayerRef.GetValue(AV_SuitDegradationBoostpack))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_SuitDegradationOutfit
	      RegisterForActorValueChangedEvent(PlayerRef, AV_SuitDegradationOutfit)
          GV_PercentageTracker_SpacesuitCond.SetValue(PlayerRef.GetValue(AV_SuitDegradationOutfit))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_SuitDegradationHelmet
	      RegisterForActorValueChangedEvent(PlayerRef, AV_SuitDegradationHelmet)
          GV_PercentageTracker_HelmetCond.SetValue(PlayerRef.GetValue(AV_SuitDegradationHelmet))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationExplosives
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationExplosives)
          GV_PercentageTracker_ExplosiveCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationExplosives))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationExplosivesParticle
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationExplosivesParticle)
          GV_PercentageTracker_ExplosiveCondParticle.SetValue(PlayerRef.GetValue(AV_WeaponDegradationExplosivesParticle))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationHeavy
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationHeavy)
          GV_PercentageTracker_HeavyCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationHeavy))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationHeavyParticle
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationHeavyParticle)
          GV_PercentageTracker_HeavyCondParticle.SetValue(PlayerRef.GetValue(AV_WeaponDegradationHeavyParticle))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationMelee
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationMelee)
          GV_PercentageTracker_MeleeCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationMelee))	
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationPistolsAuto
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistolsAuto)
          GV_PercentageTracker_HandgunsAutoCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationPistolsAuto))	
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationPistolsAutoLaser
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistolsAutoLaser)
          GV_PercentageTracker_HandgunsAutoCondLaser.SetValue(PlayerRef.GetValue(AV_WeaponDegradationPistolsAutoLaser))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationPistolsAutoParticle
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistolsAutoParticle)
          GV_PercentageTracker_HandgunsAutoCondParticle.SetValue(PlayerRef.GetValue(AV_WeaponDegradationPistolsAutoParticle))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationPistols
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistols)
          GV_PercentageTracker_HandgunsSemiCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationPistols))	
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationPistolsLaser
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistolsLaser)
          GV_PercentageTracker_HandgunsSemiCondLaser.SetValue(PlayerRef.GetValue(AV_WeaponDegradationPistolsLaser))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationPistolsParticle
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistolsParticle)
          GV_PercentageTracker_HandgunsSemiCondParticle.SetValue(PlayerRef.GetValue(AV_WeaponDegradationPistolsParticle))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationRiflesAuto
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRiflesAuto)
          GV_PercentageTracker_RiflesAutoCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationRiflesAuto))	
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationRiflesAutoLaser
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRiflesAutoLaser)
          GV_PercentageTracker_RiflesAutoCondLaser.SetValue(PlayerRef.GetValue(AV_WeaponDegradationRiflesAutoLaser))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationRiflesAutoParticle
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRiflesAutoParticle)
          GV_PercentageTracker_RiflesAutoCondParticle.SetValue(PlayerRef.GetValue(AV_WeaponDegradationRiflesAutoParticle))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationRifles
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRifles)
          GV_PercentageTracker_RiflesSemiCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationRifles))	
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationRiflesLaser
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRiflesLaser)
          GV_PercentageTracker_RiflesSemiCondLaser.SetValue(PlayerRef.GetValue(AV_WeaponDegradationRiflesLaser))	
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationRiflesParticle
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRiflesParticle)
          GV_PercentageTracker_RiflesSemiCondParticle.SetValue(PlayerRef.GetValue(AV_WeaponDegradationRiflesParticle))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationRiflesEM
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRiflesEM)
          GV_PercentageTracker_RiflesEMCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationRiflesEM))	
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationShotguns
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationShotguns)
          GV_PercentageTracker_ShotgunsCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationShotguns))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationShotgunsParticle
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationShotgunsParticle)
          GV_PercentageTracker_ShotgunsCondParticle.SetValue(PlayerRef.GetValue(AV_WeaponDegradationShotgunsParticle))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationTool
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationTool)
          GV_PercentageTracker_ToolsCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationTool))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationSniper
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationSniper)
          GV_PercentageTracker_SniperCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationSniper))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationSniperLaser
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationSniperLaser)
          GV_PercentageTracker_SniperCondLaser.SetValue(PlayerRef.GetValue(AV_WeaponDegradationSniperLaser))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationSniperParticle
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationSniperParticle)
          GV_PercentageTracker_SniperCondParticle.SetValue(PlayerRef.GetValue(AV_WeaponDegradationSniperParticle))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsRifleAuto
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleAuto)
          GV_PercentageTracker_RKStatusRiflesAuto.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsRifleAuto))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsRifleAutoLaser
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleAutoLaser)
          GV_PercentageTracker_RKStatusRiflesAutoLaser.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsRifleAutoLaser))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsRifleAutoParticle
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleAutoParticle)
          GV_PercentageTracker_RKStatusRiflesAutoParticle.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsRifleAutoParticle))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsRifleSemi
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleSemi)
          GV_PercentageTracker_RKStatusRiflesSemi.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsRifleSemi))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsRifleSemiLaser
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleSemiLaser)
          GV_PercentageTracker_RKStatusRiflesSemiLaser.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsRifleSemiLaser))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsRifleSemiParticle
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleSemiParticle)
          GV_PercentageTracker_RKStatusRiflesSemiParticle.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsRifleSemiParticle))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsRifleEM
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleEM)
          GV_PercentageTracker_RKStatusRiflesEM.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsRifleEM))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsHandgunAuto
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunAuto)
          GV_PercentageTracker_RKStatusHandgunsAuto.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsHandgunAuto))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsHandgunAutoLaser
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunAutoLaser)
          GV_PercentageTracker_RKStatusHandgunsAutoLaser.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsHandgunAutoLaser))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsHandgunAutoParticle
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunAutoParticle)
          GV_PercentageTracker_RKStatusHandgunsAutoParticle.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsHandgunAutoParticle))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsHandgunSemi
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunSemi)
          GV_PercentageTracker_RKStatusHandgunsSemi.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsHandgunSemi))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsHandgunSemiLaser
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunSemiLaser)
          GV_PercentageTracker_RKStatusHandgunsSemiLaser.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsHandgunSemiLaser))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsHandgunSemiParticle
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunSemiParticle)
          GV_PercentageTracker_RKStatusHandgunsSemiParticle.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsHandgunSemiParticle))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsLauncher
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsLauncher)
          GV_PercentageTracker_RKStatusExplosive.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsLauncher))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsLauncherParticle
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsLauncherParticle)
          GV_PercentageTracker_RKStatusExplosiveParticle.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsLauncherParticle))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsMinigun
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsMinigun)
          GV_PercentageTracker_RKStatusHeavy.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsMinigun))	
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsMinigunParticle
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsMinigunParticle)
          GV_PercentageTracker_RKStatusHeavyParticle.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsMinigunParticle))	
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsMelee
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsMelee)
          GV_PercentageTracker_RKStatusMelee.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsMelee))	
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsShotgun
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsShotgun)
          GV_PercentageTracker_RKStatusShotguns.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsShotgun))	
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsShotgunParticle
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsShotgunParticle)
          GV_PercentageTracker_RKStatusShotgunsParticle.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsShotgunParticle))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsSniper
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsSniper)
          GV_PercentageTracker_RKStatusSniper.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsSniper))	
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsSniperLaser
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsSniperLaser)
          GV_PercentageTracker_RKStatusSniperLaser.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsSniperLaser))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsSniperParticle
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsSniperParticle)
          GV_PercentageTracker_RKStatusSniperParticle.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsSniperParticle))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleTools
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleTools)
          GV_PercentageTracker_RKStatusTools.SetValue(PlayerRef.GetValue(AV_DismantleTools))	
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleSpacesuits
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleSpacesuits)
          GV_PercentageTracker_RKStatusSpacesuit.SetValue(PlayerRef.GetValue(AV_DismantleSpacesuits))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleBoostpacks
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleBoostpacks)
          GV_PercentageTracker_RKStatusBoostpack.SetValue(PlayerRef.GetValue(AV_DismantleBoostpacks))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleHelmets
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleHelmets)
          GV_PercentageTracker_RKStatusHelmet.SetValue(PlayerRef.GetValue(AV_DismantleHelmets))
    EndIf

EndEvent

Function PercentageTracker()
         		 
         GV_PercentageTracker_BoostpackCond.SetValue(PlayerRef.GetValue(AV_SuitDegradationBoostpack))		 
         GV_PercentageTracker_SpacesuitCond.SetValue(PlayerRef.GetValue(AV_SuitDegradationOutfit))	
         GV_PercentageTracker_HelmetCond.SetValue(PlayerRef.GetValue(AV_SuitDegradationHelmet))	
         GV_PercentageTracker_ExplosiveCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationExplosives))		 
         GV_PercentageTracker_ExplosiveCondParticle.SetValue(PlayerRef.GetValue(AV_WeaponDegradationExplosivesParticle))
         GV_PercentageTracker_HeavyCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationHeavy))	
         GV_PercentageTracker_HeavyCondParticle.SetValue(PlayerRef.GetValue(AV_WeaponDegradationHeavyParticle))	
         GV_PercentageTracker_MeleeCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationMelee))		 
         GV_PercentageTracker_HandgunsAutoCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationPistolsAuto))	
         GV_PercentageTracker_HandgunsAutoCondLaser.SetValue(PlayerRef.GetValue(AV_WeaponDegradationPistolsAutoLaser))	
         GV_PercentageTracker_HandgunsAutoCondParticle.SetValue(PlayerRef.GetValue(AV_WeaponDegradationPistolsAutoParticle))	
         GV_PercentageTracker_HandgunsSemiCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationPistols))		 
         GV_PercentageTracker_HandgunsSemiCondLaser.SetValue(PlayerRef.GetValue(AV_WeaponDegradationPistolsLaser))
         GV_PercentageTracker_HandgunsSemiCondParticle.SetValue(PlayerRef.GetValue(AV_WeaponDegradationPistolsParticle))
         GV_PercentageTracker_RiflesAutoCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationRiflesAuto))	
         GV_PercentageTracker_RiflesAutoCondLaser.SetValue(PlayerRef.GetValue(AV_WeaponDegradationRiflesAutoLaser))	
         GV_PercentageTracker_RiflesAutoCondParticle.SetValue(PlayerRef.GetValue(AV_WeaponDegradationRiflesAutoParticle))	
         GV_PercentageTracker_RiflesSemiCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationRifles))		 
         GV_PercentageTracker_RiflesSemiCondLaser.SetValue(PlayerRef.GetValue(AV_WeaponDegradationRiflesLaser))
         GV_PercentageTracker_RiflesSemiCondParticle.SetValue(PlayerRef.GetValue(AV_WeaponDegradationRiflesParticle))
         GV_PercentageTracker_RiflesEMCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationRiflesEM))
         GV_PercentageTracker_ShotgunsCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationShotguns))	
         GV_PercentageTracker_ShotgunsCondParticle.SetValue(PlayerRef.GetValue(AV_WeaponDegradationShotgunsParticle))
         GV_PercentageTracker_ToolsCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationTool))	
         GV_PercentageTracker_SniperCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationSniper))
         GV_PercentageTracker_SniperCondLaser.SetValue(PlayerRef.GetValue(AV_WeaponDegradationSniperLaser))
         GV_PercentageTracker_SniperCondParticle.SetValue(PlayerRef.GetValue(AV_WeaponDegradationSniperParticle))
         GV_PercentageTracker_RKStatusBoostpack.SetValue(PlayerRef.GetValue(AV_DismantleBoostpacks))		 
         GV_PercentageTracker_RKStatusSpacesuit.SetValue(PlayerRef.GetValue(AV_DismantleSpacesuits))	
         GV_PercentageTracker_RKStatusHelmet.SetValue(PlayerRef.GetValue(AV_DismantleHelmets))	
         GV_PercentageTracker_RKStatusExplosive.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsLauncher))		 
         GV_PercentageTracker_RKStatusExplosiveParticle.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsLauncherParticle))
         GV_PercentageTracker_RKStatusHeavy.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsMinigun))	
         GV_PercentageTracker_RKStatusHeavyParticle.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsMinigunParticle))
         GV_PercentageTracker_RKStatusMelee.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsMelee))		 
         GV_PercentageTracker_RKStatusHandgunsAuto.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsHandgunAuto))	
         GV_PercentageTracker_RKStatusHandgunsAutoLaser.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsHandgunAutoLaser))	
         GV_PercentageTracker_RKStatusHandgunsAutoParticle.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsHandgunAutoParticle))	
         GV_PercentageTracker_RKStatusHandgunsSemi.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsHandgunSemi))		 
         GV_PercentageTracker_RKStatusHandgunsSemiLaser.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsHandgunSemiLaser))	
         GV_PercentageTracker_RKStatusHandgunsSemiParticle.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsHandgunSemiParticle))	
         GV_PercentageTracker_RKStatusRiflesAuto.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsRifleAuto))	
         GV_PercentageTracker_RKStatusRiflesAutoLaser.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsRifleAutoLaser))	
         GV_PercentageTracker_RKStatusRiflesAutoParticle.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsRifleAutoParticle))	
         GV_PercentageTracker_RKStatusRiflesSemi.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsRifleSemi))		 
         GV_PercentageTracker_RKStatusRiflesSemiLaser.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsRifleSemiLaser))	
         GV_PercentageTracker_RKStatusRiflesSemiParticle.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsRifleSemiParticle))	
         GV_PercentageTracker_RKStatusRiflesEM.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsRifleEM))
         GV_PercentageTracker_RKStatusShotguns.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsShotgun))	
         GV_PercentageTracker_RKStatusShotgunsParticle.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsShotgunParticle))	
         GV_PercentageTracker_RKStatusTools.SetValue(PlayerRef.GetValue(AV_DismantleTools))	
         GV_PercentageTracker_RKStatusSniper.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsSniper))
         GV_PercentageTracker_RKStatusSniperLaser.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsSniperLaser))
         GV_PercentageTracker_RKStatusSniperParticle.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsSniperParticle))

EndFunction

Function RepairSystemStop()
         UnregisterForMenuOpenCloseEvent("DataMenu")        
		 PlayerRef.Removespell(WeaponInspectorSpell)		 
		 PlayerRef.Removespell(RepairKitStatusSpell)
		 PlayerRef.RestoreValue(AV_WeaponDegradationPistols, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationPistolsLaser, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationPistolsParticle, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationPistolsAuto, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationPistolsAutoLaser, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationPistolsAutoParticle, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationRifles, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationRiflesLaser, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationRiflesParticle, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationRiflesAuto, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationRiflesAutoLaser, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationRiflesAutoParticle, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationRiflesEM, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationShotguns, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationShotgunsParticle, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationExplosives, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationExplosivesParticle, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationHeavy, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationHeavyParticle, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationMelee, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationTool, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationSniper, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationSniperLaser, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationSniperParticle, 999)
		 PlayerRef.RestoreValue(AV_SuitDegradationBoostpack, 999)
		 PlayerRef.RestoreValue(AV_SuitDegradationOutfit, 999)
		 PlayerRef.RestoreValue(AV_SuitDegradationHelmet, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsRifleAuto, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsRifleAutoLaser, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsRifleAutoParticle, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsRifleSemi, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsRifleSemiLaser, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsRifleSemiParticle, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsRifleEM, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsHandgunAuto, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsHandgunAutoLaser, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsHandgunAutoParticle, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsHandgunSemi, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsHandgunSemiLaser, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsHandgunSemiParticle, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsLauncher, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsLauncherParticle, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsMinigun, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsMinigunParticle, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsMelee, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsShotgun, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsShotgunParticle, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsSniper, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsSniperLaser, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsSniperParticle, 999)
		 PlayerRef.RestoreValue(AV_DismantleTools, 999)
		 PlayerRef.RestoreValue(AV_DismantleSpacesuits, 999)
		 PlayerRef.RestoreValue(AV_DismantleBoostpacks, 999)
		 PlayerRef.RestoreValue(AV_DismantleHelmets, 999)       		 
		 PlayerRef.RestoreValue(AV_ToolHealthImpactDriver, 999)
		 PlayerRef.RestoreValue(AV_ToolHealthWelder, 999)

		 PlayerRef.RemovePerk(WeaponDegradationExplosivePerk)
		 PlayerRef.RemovePerk(WeaponDegradationExplosivePerkParticle)
		 PlayerRef.RemovePerk(WeaponDegradationHeavyPerk)
		 PlayerRef.RemovePerk(WeaponDegradationHeavyPerkParticle)
		 PlayerRef.RemovePerk(WeaponDegradationMeleePerk)
		 PlayerRef.RemovePerk(WeaponDegradationHandgunsPerk)
		 PlayerRef.RemovePerk(WeaponDegradationHandgunsPerkLaser)
		 PlayerRef.RemovePerk(WeaponDegradationHandgunsPerkParticle)
		 PlayerRef.RemovePerk(WeaponDegradationHandgunsAutoPerk)		   
		 PlayerRef.RemovePerk(WeaponDegradationHandgunsAutoPerkLaser)
		 PlayerRef.RemovePerk(WeaponDegradationHandgunsAutoPerkParticle)
		 PlayerRef.RemovePerk(WeaponDegradationRiflesPerk)
		 PlayerRef.RemovePerk(WeaponDegradationRiflesPerkLaser)
		 PlayerRef.RemovePerk(WeaponDegradationRiflesPerkParticle)
		 PlayerRef.RemovePerk(WeaponDegradationRiflesAutoPerk)
		 PlayerRef.RemovePerk(WeaponDegradationRiflesAutoPerkLaser)
		 PlayerRef.RemovePerk(WeaponDegradationRiflesAutoPerkParticle)
		 PlayerRef.RemovePerk(WeaponDegradationRiflesEMPerk)
		 PlayerRef.RemovePerk(WeaponDegradationShotgunsPerk)
		 PlayerRef.RemovePerk(WeaponDegradationShotgunsPerkParticle)
		 PlayerRef.RemovePerk(WeaponDegradationToolsPerk)
		 PlayerRef.RemovePerk(WeaponDegradationSniperPerk)
		 PlayerRef.RemovePerk(WeaponDegradationSniperPerkLaser)
		 PlayerRef.RemovePerk(WeaponDegradationSniperPerkParticle)
		 PlayerRef.RemovePerk(SuitDegradationOutfitPerk)
		 PlayerRef.RemovePerk(SuitDegradationBoostpackPerk)
		 PlayerRef.RemovePerk(SuitDegradationHelmetPerk)
		 PlayerRef.RemovePerk(RepairVendorPerk)
		 PlayerRef.RemovePerk(DismantlePerk)
		 PlayerRef.RemovePerk(DismantlePerkNotGated)

	     UnregisterForActorValueChangedEvent(PlayerRef, AV_SuitDegradationBoostpack)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_SuitDegradationOutfit)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_SuitDegradationHelmet)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationExplosives)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationExplosivesParticle)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationHeavy)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationHeavyParticle)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationMelee)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistolsAuto)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistolsAutoLaser)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistolsAutoParticle)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistols)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistolsLaser)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistolsParticle)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRiflesAuto)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRiflesAutoLaser)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRiflesAutoParticle)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRifles)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRiflesLaser)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRiflesParticle)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRiflesEM)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationShotguns)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationShotgunsParticle)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationTool)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationSniper)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationSniperLaser)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationSniperParticle)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleAuto)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleAutoLaser)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleAutoParticle)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleSemi)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleSemiLaser)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleSemiParticle)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleEM)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunAuto)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunAutoLaser)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunAutoParticle)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunSemi)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunSemiLaser)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunSemiParticle)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsLauncher)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsLauncherParticle)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsMinigun)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsMinigunParticle)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsMelee)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsShotgun)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsShotgunParticle)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsSniper)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsSniperLaser)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsSniperParticle)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleTools)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleSpacesuits)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleBoostpacks)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleHelmets)
         
		 GV_DebuffTokenOutfit.SetValue(0)		 
         GV_DebuffTokenBoostpack.SetValue(0)	
		 GV_DebuffTokenHelmet.SetValue(0)
		 GV_DebuffTokenExplosive.SetValue(0)		 
		 GV_DebuffTokenExplosiveParticle.SetValue(0)
         GV_DebuffTokenHandgunsAuto.SetValue(0)
         GV_DebuffTokenHandgunsAutoLaser.SetValue(0)
         GV_DebuffTokenHandgunsAutoParticle.SetValue(0)
		 GV_DebuffTokenHandgunsSemi.SetValue(0)		 
		 GV_DebuffTokenHandgunsSemiLaser.SetValue(0)	
		 GV_DebuffTokenHandgunsSemiParticle.SetValue(0)	
         GV_DebuffTokenHeavy.SetValue(0)
         GV_DebuffTokenHeavyParticle.SetValue(0)
		 GV_DebuffTokenHeavyTool.SetValue(0)		 
         GV_DebuffTokenMelee.SetValue(0)
		 GV_DebuffTokenRifleAuto.SetValue(0)		 
		 GV_DebuffTokenRifleAutoLaser.SetValue(0)
		 GV_DebuffTokenRifleAutoParticle.SetValue(0)
         GV_DebuffTokenRifleSemi.SetValue(0)
         GV_DebuffTokenRifleSemiLaser.SetValue(0)
         GV_DebuffTokenRifleSemiParticle.SetValue(0)
         GV_DebuffTokenRifleEM.SetValue(0)
         GV_DebuffTokenShotguns.SetValue(0)
         GV_DebuffTokenShotgunsParticle.SetValue(0)
         GV_DebuffTokenSniper.SetValue(0)
         GV_DebuffTokenSniperLaser.SetValue(0)
         GV_DebuffTokenSniperParticle.SetValue(0)

EndFunction

Function Update()

         PlayerRef.Addperk(WeaponDegradationShotgunsPerkParticle, False)
         PlayerRef.Addperk(WeaponDegradationRiflesEMPerk, False)
         PlayerRef.Addperk(WeaponDegradationHeavyPerkParticle, False)
         PlayerRef.Addperk(WeaponDegradationHandgunsPerkLaser, False)
         PlayerRef.Addperk(WeaponDegradationHandgunsPerkParticle, False)
         PlayerRef.Addperk(WeaponDegradationHandgunsAutoPerkLaser, False)
         PlayerRef.Addperk(WeaponDegradationHandgunsAutoPerkParticle, False)
         PlayerRef.Addperk(WeaponDegradationRiflesPerkLaser, False)
         PlayerRef.Addperk(WeaponDegradationRiflesPerkParticle, False)
		 PlayerRef.Addperk(WeaponDegradationRiflesAutoPerkLaser, False)
		 PlayerRef.Addperk(WeaponDegradationRiflesAutoPerkParticle, False)
		 PlayerRef.Addperk(WeaponDegradationExplosivePerkParticle, False)
		 PlayerRef.Addperk(WeaponDegradationSniperPerkLaser, False)
		 PlayerRef.Addperk(WeaponDegradationSniperPerkParticle, False)

		 PlayerRef.RestoreValue(AV_WeaponDegradationHeavyParticle, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsMinigunParticle, 999)		 
		 PlayerRef.RestoreValue(AV_WeaponDegradationShotgunsParticle, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsShotgunParticle, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationRiflesEM, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsRifleEM, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationPistolsLaser, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsHandgunSemiLaser, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationPistolsParticle, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsHandgunSemiParticle, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationPistolsAutoLaser, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsHandgunAutoLaser, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationPistolsAutoParticle, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsHandgunAutoParticle, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationRiflesLaser, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsRifleSemiLaser, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationRiflesParticle, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsRifleSemiParticle, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationRiflesAutoLaser, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsRifleAutoLaser, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationRiflesAutoParticle, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsRifleAutoParticle, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationExplosivesParticle, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsLauncherParticle, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationSniperLaser, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsSniperLaser, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationSniperParticle, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsSniperParticle, 999)

		 RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationHeavyParticle)	     
		 RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsMinigunParticle)
		 RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationShotgunsParticle)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsShotgunParticle)	 
		 RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRiflesEM)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleEM) 
		 RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistolsLaser)	     
		 RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunSemiLaser)
		 RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistolsParticle)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunSemiParticle)	 
		 RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistolsAutoLaser)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunAutoLaser)
		 RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistolsAutoParticle)	     
		 RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunAutoParticle)
		 RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRiflesLaser)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleSemiLaser)	 
		 RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRiflesParticle)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleSemiParticle)
		 RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRiflesAutoLaser)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleAutoLaser)	 
		 RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRiflesAutoParticle)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleAutoParticle)
		 RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationExplosivesParticle)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsLauncherParticle)
		 RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationSniperLaser)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsSniperLaser)
		 RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationSniperParticle)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsSniperParticle)
 
		 Utility.Wait(1.0) 
		 PlayerRef.RemoveSpell(RepairKitStatusSpell)            
		 PlayerRef.RemoveSpell(WeaponInspectorSpell)
         Utility.Wait(1.0) 
		 PlayerRef.AddSpell(RepairKitStatusSpell, False)       		 
		 PlayerRef.AddSpell(WeaponInspectorSpell, False) 
		 PercentageTracker()

EndFunction  