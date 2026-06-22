Scriptname SISA_RepairSystemQuest extends Quest

Actor Property PlayerRef Auto Const
ActorValue Property AV_WeaponDegradationPistols Auto Const
ActorValue Property AV_WeaponDegradationPistolsAuto Auto Const
ActorValue Property AV_WeaponDegradationRifles Auto Const
ActorValue Property AV_WeaponDegradationRiflesAuto Auto Const
ActorValue Property AV_WeaponDegradationShotguns Auto Const
ActorValue Property AV_WeaponDegradationExplosives Auto Const
ActorValue Property AV_WeaponDegradationHeavy Auto Const
ActorValue Property AV_WeaponDegradationMelee Auto Const
ActorValue Property AV_WeaponDegradationTool Auto Const
ActorValue Property AV_WeaponDegradationSniper Auto Const
ActorValue Property AV_SuitDegradationBoostpack Auto Const
ActorValue Property AV_SuitDegradationOutfit Auto Const
ActorValue Property AV_SuitDegradationHelmet Auto Const
ActorValue Property AV_DismantleWeaponsRifleAuto Auto Const
ActorValue Property AV_DismantleWeaponsRifleSemi Auto Const
ActorValue Property AV_DismantleWeaponsHandgunAuto Auto Const
ActorValue Property AV_DismantleWeaponsHandgunSemi Auto Const
ActorValue Property AV_DismantleWeaponsLauncher Auto Const
ActorValue Property AV_DismantleWeaponsMinigun Auto Const
ActorValue Property AV_DismantleWeaponsMelee Auto Const
ActorValue Property AV_DismantleWeaponsShotgun Auto Const
ActorValue Property AV_DismantleWeaponsSniper Auto Const
ActorValue Property AV_DismantleTools Auto Const
ActorValue Property AV_DismantleSpacesuits Auto Const
ActorValue Property AV_DismantleBoostpacks Auto Const
ActorValue Property AV_DismantleHelmets Auto Const
ActorValue Property AV_ToolHealthImpactDriver Auto Const
ActorValue Property AV_ToolHealthWelder Auto Const
Perk Property WeaponDegradationExplosivePerk Auto Const
Perk Property WeaponDegradationHeavyPerk Auto Const
Perk Property WeaponDegradationMeleePerk Auto Const
Perk Property WeaponDegradationHandgunsPerk Auto Const
Perk Property WeaponDegradationHandgunsAutoPerk Auto Const
Perk Property WeaponDegradationRiflesPerk Auto Const
Perk Property WeaponDegradationRiflesAutoPerk Auto Const
Perk Property WeaponDegradationShotgunsPerk Auto Const
Perk Property WeaponDegradationToolsPerk Auto Const
Perk Property WeaponDegradationSniperPerk Auto Const
Perk Property SuitDegradationOutfitPerk Auto Const
Perk Property SuitDegradationBoostpackPerk Auto Const
Perk Property SuitDegradationHelmetPerk Auto Const
Perk Property RepairVendorPerk Auto Const
Perk Property DismantlePerk Auto Const
GlobalVariable Property GV_PercentageTracker_BoostpackCond Auto Const
GlobalVariable Property GV_PercentageTracker_SpacesuitCond Auto Const
GlobalVariable Property GV_PercentageTracker_HelmetCond Auto Const
GlobalVariable Property GV_PercentageTracker_ExplosiveCond Auto Const
GlobalVariable Property GV_PercentageTracker_HeavyCond Auto Const
GlobalVariable Property GV_PercentageTracker_MeleeCond Auto Const
GlobalVariable Property GV_PercentageTracker_HandgunsAutoCond Auto Const
GlobalVariable Property GV_PercentageTracker_HandgunsSemiCond Auto Const
GlobalVariable Property GV_PercentageTracker_RiflesAutoCond Auto Const
GlobalVariable Property GV_PercentageTracker_RiflesSemiCond Auto Const
GlobalVariable Property GV_PercentageTracker_ShotgunsCond Auto Const
GlobalVariable Property GV_PercentageTracker_ToolsCond Auto Const
GlobalVariable Property GV_PercentageTracker_SniperCond Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusBoostpack Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusSpacesuit Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusHelmet Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusExplosive Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusHeavy Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusMelee Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusHandgunsAuto Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusHandgunsSemi Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusRiflesAuto Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusRiflesSemi Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusShotguns Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusTools Auto Const
GlobalVariable Property GV_PercentageTracker_RKStatusSniper Auto Const
GlobalVariable Property GV_DebuffTokenOutfit Auto Const
GlobalVariable Property GV_DebuffTokenBoostpack Auto Const
GlobalVariable Property GV_DebuffTokenHelmet Auto Const
GlobalVariable Property GV_DebuffTokenExplosive Auto Const
GlobalVariable Property GV_DebuffTokenHandgunsAuto Auto Const
GlobalVariable Property GV_DebuffTokenHandgunsSemi Auto Const
GlobalVariable Property GV_DebuffTokenHeavy Auto Const
GlobalVariable Property GV_DebuffTokenHeavyTool Auto Const
GlobalVariable Property GV_DebuffTokenMelee Auto Const
GlobalVariable Property GV_DebuffTokenRifleAuto Auto Const
GlobalVariable Property GV_DebuffTokenRifleSemi Auto Const
GlobalVariable Property GV_DebuffTokenShotguns Auto Const
GlobalVariable Property GV_DebuffTokenSniper Auto Const
Spell Property WeaponInspectorSpell Auto Const
Spell Property RepairKitStatusSpell Auto Const

Function RepairSystemStart()
         
		 Utility.Wait(1.0)		 
         RegisterForMenuOpenCloseEvent("DataMenu")
         PlayerRef.Addspell(WeaponInspectorSpell, False)		 
         PlayerRef.Addspell(RepairKitStatusSpell, False)	
		 PlayerRef.RestoreValue(AV_WeaponDegradationPistols, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationPistolsAuto, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationRifles, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationRiflesAuto, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationShotguns, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationExplosives, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationHeavy, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationMelee, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationTool, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationSniper, 999)
		 PlayerRef.RestoreValue(AV_SuitDegradationBoostpack, 999)
		 PlayerRef.RestoreValue(AV_SuitDegradationOutfit, 999)         		 
		 PlayerRef.RestoreValue(AV_SuitDegradationHelmet, 999)     		 
		 PlayerRef.RestoreValue(AV_ToolHealthImpactDriver, 999)
		 PlayerRef.RestoreValue(AV_ToolHealthWelder, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsRifleAuto, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsRifleSemi, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsHandgunAuto, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsHandgunSemi, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsLauncher, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsMinigun, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsMelee, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsShotgun, 999)
		 PlayerRef.DamageValue(AV_DismantleWeaponsSniper, 999)
		 PlayerRef.DamageValue(AV_DismantleTools, 999)
		 PlayerRef.DamageValue(AV_DismantleSpacesuits, 999)
		 PlayerRef.DamageValue(AV_DismantleBoostpacks, 999)
		 PlayerRef.DamageValue(AV_DismantleHelmets, 999)
		 
		 PercentageTracker()
		 
		 PlayerRef.Addperk(RepairVendorPerk, False)
		 PlayerRef.Addperk(DismantlePerk, False)
         PlayerRef.Addperk(WeaponDegradationExplosivePerk, False)
         PlayerRef.Addperk(WeaponDegradationHandgunsPerk, False)
         PlayerRef.Addperk(WeaponDegradationHandgunsAutoPerk, False)
         PlayerRef.Addperk(WeaponDegradationHeavyPerk, False)
         PlayerRef.Addperk(WeaponDegradationToolsPerk, False)
         PlayerRef.Addperk(WeaponDegradationMeleePerk, False)
         PlayerRef.Addperk(WeaponDegradationRiflesPerk, False)
         PlayerRef.Addperk(WeaponDegradationRiflesAutoPerk, False)
         PlayerRef.Addperk(WeaponDegradationShotgunsPerk, False)		 
         PlayerRef.Addperk(WeaponDegradationSniperPerk, False)
         PlayerRef.Addperk(SuitDegradationOutfitPerk, False)
         PlayerRef.Addperk(SuitDegradationBoostpackPerk, False)
         PlayerRef.Addperk(SuitDegradationHelmetPerk, False)

	     RegisterForActorValueChangedEvent(PlayerRef, AV_SuitDegradationBoostpack)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_SuitDegradationOutfit)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_SuitDegradationHelmet)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationExplosives)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationHeavy)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationMelee)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistolsAuto)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistols)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRiflesAuto)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRifles)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationShotguns)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationTool)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationSniper)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleAuto)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleSemi)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunAuto)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunSemi)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsLauncher)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsMinigun)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsMelee)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsShotgun)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsSniper)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleTools)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleSpacesuits)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleBoostpacks)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleHelmets)

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
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationHeavy
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationHeavy)
          GV_PercentageTracker_HeavyCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationHeavy))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationMelee
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationMelee)
          GV_PercentageTracker_MeleeCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationMelee))	
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationPistolsAuto
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistolsAuto)
          GV_PercentageTracker_HandgunsAutoCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationPistolsAuto))	
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationPistols
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistols)
          GV_PercentageTracker_HandgunsSemiCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationPistols))	
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationRiflesAuto
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRiflesAuto)
          GV_PercentageTracker_RiflesAutoCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationRiflesAuto))	
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationRifles
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRifles)
          GV_PercentageTracker_RiflesSemiCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationRifles))	
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationShotguns
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationShotguns)
          GV_PercentageTracker_ShotgunsCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationShotguns))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationTool
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationTool)
          GV_PercentageTracker_ToolsCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationTool))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_WeaponDegradationSniper
	      RegisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationSniper)
          GV_PercentageTracker_SniperCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationSniper))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsRifleAuto
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleAuto)
          GV_PercentageTracker_RKStatusRiflesAuto.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsRifleAuto))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsRifleSemi
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleSemi)
          GV_PercentageTracker_RKStatusRiflesSemi.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsRifleSemi))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsHandgunAuto
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunAuto)
          GV_PercentageTracker_RKStatusHandgunsAuto.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsHandgunAuto))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsHandgunSemi
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunSemi)
          GV_PercentageTracker_RKStatusHandgunsSemi.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsHandgunSemi))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsLauncher
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsLauncher)
          GV_PercentageTracker_RKStatusExplosive.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsLauncher))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsMinigun
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsMinigun)
          GV_PercentageTracker_RKStatusHeavy.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsMinigun))	
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsMelee
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsMelee)
          GV_PercentageTracker_RKStatusMelee.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsMelee))	
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsShotgun
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsShotgun)
          GV_PercentageTracker_RKStatusShotguns.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsShotgun))	
   ElseIf akObjRef == PlayerRef && akActorValue == AV_DismantleWeaponsSniper
	      RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsSniper)
          GV_PercentageTracker_RKStatusSniper.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsSniper))	
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
         GV_PercentageTracker_HeavyCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationHeavy))	
         GV_PercentageTracker_MeleeCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationMelee))		 
         GV_PercentageTracker_HandgunsAutoCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationPistolsAuto))	
         GV_PercentageTracker_HandgunsSemiCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationPistols))		 
         GV_PercentageTracker_RiflesAutoCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationRiflesAuto))	
         GV_PercentageTracker_RiflesSemiCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationRifles))		 
         GV_PercentageTracker_ShotgunsCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationShotguns))	
         GV_PercentageTracker_ToolsCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationTool))	
         GV_PercentageTracker_SniperCond.SetValue(PlayerRef.GetValue(AV_WeaponDegradationSniper))
         GV_PercentageTracker_RKStatusBoostpack.SetValue(PlayerRef.GetValue(AV_DismantleBoostpacks))		 
         GV_PercentageTracker_RKStatusSpacesuit.SetValue(PlayerRef.GetValue(AV_DismantleSpacesuits))	
         GV_PercentageTracker_RKStatusHelmet.SetValue(PlayerRef.GetValue(AV_DismantleHelmets))	
         GV_PercentageTracker_RKStatusExplosive.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsLauncher))		 
         GV_PercentageTracker_RKStatusHeavy.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsMinigun))	
         GV_PercentageTracker_RKStatusMelee.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsMelee))		 
         GV_PercentageTracker_RKStatusHandgunsAuto.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsHandgunAuto))	
         GV_PercentageTracker_RKStatusHandgunsSemi.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsHandgunSemi))		 
         GV_PercentageTracker_RKStatusRiflesAuto.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsRifleAuto))	
         GV_PercentageTracker_RKStatusRiflesSemi.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsRifleSemi))		 
         GV_PercentageTracker_RKStatusShotguns.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsShotgun))	
         GV_PercentageTracker_RKStatusTools.SetValue(PlayerRef.GetValue(AV_DismantleTools))	
         GV_PercentageTracker_RKStatusSniper.SetValue(PlayerRef.GetValue(AV_DismantleWeaponsSniper))

EndFunction

Function RepairSystemStop()
         UnregisterForMenuOpenCloseEvent("DataMenu")        
		 PlayerRef.Removespell(WeaponInspectorSpell)		 
		 PlayerRef.Removespell(RepairKitStatusSpell)
		 PlayerRef.RestoreValue(AV_WeaponDegradationPistols, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationPistolsAuto, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationRifles, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationRiflesAuto, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationShotguns, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationExplosives, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationHeavy, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationMelee, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationTool, 999)
		 PlayerRef.RestoreValue(AV_WeaponDegradationSniper, 999)
		 PlayerRef.RestoreValue(AV_SuitDegradationBoostpack, 999)
		 PlayerRef.RestoreValue(AV_SuitDegradationOutfit, 999)
		 PlayerRef.RestoreValue(AV_SuitDegradationHelmet, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsRifleAuto, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsRifleSemi, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsHandgunAuto, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsHandgunSemi, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsLauncher, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsMinigun, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsMelee, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsShotgun, 999)
		 PlayerRef.RestoreValue(AV_DismantleWeaponsSniper, 999)
		 PlayerRef.RestoreValue(AV_DismantleTools, 999)
		 PlayerRef.RestoreValue(AV_DismantleSpacesuits, 999)
		 PlayerRef.RestoreValue(AV_DismantleBoostpacks, 999)
		 PlayerRef.RestoreValue(AV_DismantleHelmets, 999)       		 
		 PlayerRef.RestoreValue(AV_ToolHealthImpactDriver, 999)
		 PlayerRef.RestoreValue(AV_ToolHealthWelder, 999)

		 PlayerRef.RemovePerk(WeaponDegradationExplosivePerk)
		 PlayerRef.RemovePerk(WeaponDegradationHeavyPerk)
		 PlayerRef.RemovePerk(WeaponDegradationMeleePerk)
		 PlayerRef.RemovePerk(WeaponDegradationHandgunsPerk)
		 PlayerRef.RemovePerk(WeaponDegradationHandgunsAutoPerk)		   
		 PlayerRef.RemovePerk(WeaponDegradationRiflesPerk)
		 PlayerRef.RemovePerk(WeaponDegradationRiflesAutoPerk)
		 PlayerRef.RemovePerk(WeaponDegradationShotgunsPerk)
		 PlayerRef.RemovePerk(WeaponDegradationToolsPerk)
		 PlayerRef.RemovePerk(WeaponDegradationSniperPerk)
		 PlayerRef.RemovePerk(SuitDegradationOutfitPerk)
		 PlayerRef.RemovePerk(SuitDegradationBoostpackPerk)
		 PlayerRef.RemovePerk(SuitDegradationHelmetPerk)
		 PlayerRef.RemovePerk(RepairVendorPerk)
		 PlayerRef.RemovePerk(DismantlePerk)

	     UnregisterForActorValueChangedEvent(PlayerRef, AV_SuitDegradationBoostpack)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_SuitDegradationOutfit)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_SuitDegradationHelmet)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationExplosives)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationHeavy)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationMelee)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistolsAuto)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationPistols)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRiflesAuto)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationRifles)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationShotguns)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationTool)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_WeaponDegradationSniper)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleAuto)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleSemi)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunAuto)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunSemi)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsLauncher)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsMinigun)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsMelee)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsShotgun)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsSniper)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleTools)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleSpacesuits)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleBoostpacks)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_DismantleHelmets)
         
		 GV_DebuffTokenOutfit.SetValue(0)		 
         GV_DebuffTokenBoostpack.SetValue(0)	
		 GV_DebuffTokenHelmet.SetValue(0)
		 GV_DebuffTokenExplosive.SetValue(0)		 
         GV_DebuffTokenHandgunsAuto.SetValue(0)
		 GV_DebuffTokenHandgunsSemi.SetValue(0)		 
         GV_DebuffTokenHeavy.SetValue(0)
		 GV_DebuffTokenHeavyTool.SetValue(0)		 
         GV_DebuffTokenMelee.SetValue(0)
		 GV_DebuffTokenRifleAuto.SetValue(0)		 
         GV_DebuffTokenRifleSemi.SetValue(0)
         GV_DebuffTokenShotguns.SetValue(0)
         GV_DebuffTokenSniper.SetValue(0)

EndFunction

Function Update()
	     
		 RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleAuto)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsRifleSemi)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunAuto)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsHandgunSemi)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsLauncher)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsMinigun)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsMelee)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsShotgun)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleWeaponsSniper)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleTools)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleSpacesuits)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleBoostpacks)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_DismantleHelmets)		 

         Utility.Wait(1.0) 
         PlayerRef.AddSpell(RepairKitStatusSpell, False)       		 
		 PercentageTracker()

EndFunction  