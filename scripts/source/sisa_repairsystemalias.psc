Scriptname SISA_RepairSystemAlias extends ReferenceAlias

Actor Property PlayerRef Auto Const
ActorValue Property AV_CondSuit Auto Const
ActorValue Property AV_CondBoostpack Auto Const
ActorValue Property AV_CondHelmet Auto Const
ActorValue Property AV_CondHandgun Auto Const
ActorValue Property AV_CondHandgunAuto Auto Const
ActorValue Property AV_CondRifle Auto Const
ActorValue Property AV_CondRifleAuto Auto Const
ActorValue Property AV_CondShotgun Auto Const
ActorValue Property AV_CondHeavy Auto Const
ActorValue Property AV_CondExplosive Auto Const
ActorValue Property AV_CondMelee Auto Const
ActorValue Property AV_CondTool Auto Const
ActorValue Property AV_CondSniper Auto Const
Armor Property ARMOR_Suit Auto Const
Armor Property ARMOR_Boostpack Auto Const
Armor Property ARMOR_Helmet Auto Const
Weapon Property WEAPON_Handgun Auto Const
Weapon Property WEAPON_HandgunAuto Auto Const
Weapon Property WEAPON_Rifle Auto Const
Weapon Property WEAPON_RifleAuto Auto Const
Weapon Property WEAPON_Shotgun Auto Const
Weapon Property WEAPON_Heavy Auto Const
Weapon Property WEAPON_Explosive Auto Const
Weapon Property WEAPON_Melee Auto Const
Weapon Property WEAPON_Tool Auto Const
Weapon Property WEAPON_Sniper Auto Const
Message Property MSG_SuitCond Auto Const
Message Property MSG_BoostpackCond Auto Const
Message Property MSG_HelmetCond Auto Const
Message Property MSG_HandgunCond Auto Const
Message Property MSG_HandgunCondAuto Auto Const
Message Property MSG_RifleCond Auto Const
Message Property MSG_RifleCondAuto Auto Const
Message Property MSG_ShotgunCond Auto Const
Message Property MSG_HeavyCond Auto Const
Message Property MSG_ExplosiveCond Auto Const
Message Property MSG_MeleeCond Auto Const
Message Property MSG_ToolCond Auto Const
Message Property MSG_SniperCond Auto Const
Keyword Property KWD_Repair_Suit Auto Const
Keyword Property KWD_Repair_Boostpack Auto Const
Keyword Property KWD_Repair_Helmet Auto Const
Keyword Property KWD_Repair_Handgun Auto Const
Keyword Property KWD_Repair_HandgunAuto Auto Const
Keyword Property KWD_Repair_Rifle Auto Const
Keyword Property KWD_Repair_RifleAuto Auto Const
Keyword Property KWD_Repair_Shotgun Auto Const
Keyword Property KWD_Repair_Heavy Auto Const
Keyword Property KWD_Repair_Explosive Auto Const
Keyword Property KWD_Repair_Melee Auto Const
Keyword Property KWD_Repair_Tool Auto Const
Keyword Property KWD_Repair_Sniper Auto Const
Keyword Property KWD_WorkbenchArmor Auto Const
Keyword Property KWD_WorkbenchWeapon Auto Const
wwiseevent Property SFX_Repair Auto Const
GlobalVariable Property GV_BlockJetPack Auto Const
GlobalVariable Property GV_DebufTokenOutfit Auto Const
GlobalVariable Property GV_DebufTokenBoostpack Auto Const
GlobalVariable Property GV_DebufTokenHelmet Auto Const
GlobalVariable Property GV_DebufTokenExlosive Auto Const
GlobalVariable Property GV_DebufTokenHeavy Auto Const
GlobalVariable Property GV_DebufTokenHandguns Auto Const
GlobalVariable Property GV_DebufTokenHandgunsAuto Auto Const
GlobalVariable Property GV_DebufTokenRifles Auto Const
GlobalVariable Property GV_DebufTokenRiflesAuto Auto Const
GlobalVariable Property GV_DebufTokenMelee Auto Const
GlobalVariable Property GV_DebufTokenShotguns Auto Const
GlobalVariable Property GV_DebufTokenTools Auto Const
GlobalVariable Property GV_DebufTokenSniper Auto Const

GlobalVariable Property GV_RecipeHider_Boostpack Auto Const
GlobalVariable Property GV_RecipeHider_BoostpackFullyRepaired Auto Const
GlobalVariable Property GV_RecipeHider_Spacesuit Auto Const
GlobalVariable Property GV_RecipeHider_SpacesuitFullyRepaired Auto Const
GlobalVariable Property GV_RecipeHider_Helmet Auto Const
GlobalVariable Property GV_RecipeHider_HelmetFullyRepaired Auto Const
GlobalVariable Property GV_RecipeHider_Explosive Auto Const
GlobalVariable Property GV_RecipeHider_ExplosiveFullyRepaired Auto Const
GlobalVariable Property GV_RecipeHider_Heavy Auto Const
GlobalVariable Property GV_RecipeHider_HeavyFullyRepaired Auto Const
GlobalVariable Property GV_RecipeHider_Handguns Auto Const
GlobalVariable Property GV_RecipeHider_HandgunsFullyRepaired Auto Const
GlobalVariable Property GV_RecipeHider_HandgunsAuto Auto Const
GlobalVariable Property GV_RecipeHider_HandgunsAutoFullyRepaired Auto Const
GlobalVariable Property GV_RecipeHider_Rifles Auto Const
GlobalVariable Property GV_RecipeHider_RiflesFullyRepaired Auto Const
GlobalVariable Property GV_RecipeHider_RiflesAuto Auto Const
GlobalVariable Property GV_RecipeHider_RiflesAutoFullyRepaired Auto Const
GlobalVariable Property GV_RecipeHider_Melee Auto Const
GlobalVariable Property GV_RecipeHider_MeleeFullyRepaired Auto Const
GlobalVariable Property GV_RecipeHider_Shotguns Auto Const
GlobalVariable Property GV_RecipeHider_ShotgunsFullyRepaired Auto Const
GlobalVariable Property GV_RecipeHider_Tools Auto Const
GlobalVariable Property GV_RecipeHider_ToolsFullyRepaired Auto Const
GlobalVariable Property GV_RecipeHider_Sniper Auto Const
GlobalVariable Property GV_RecipeHider_SniperFullyRepaired Auto Const

Spell Property SPL_ProtectionHelmet Auto Const
Spell Property SPL_ProtectionBoostpack Auto Const
Spell Property SPL_ProtectionSpacesuit Auto Const
Spell Property SPL_ProtectionLauncher Auto Const
Spell Property SPL_ProtectionHandgunSemi Auto Const
Spell Property SPL_ProtectionHandgunAuto Auto Const
Spell Property SPL_ProtectionMinigun Auto Const
Spell Property SPL_ProtectionMelee Auto Const
Spell Property SPL_ProtectionRifleSemi Auto Const
Spell Property SPL_ProtectionRifleAuto Auto Const
Spell Property SPL_ProtectionShotgun Auto Const
Spell Property SPL_ProtectionTool Auto Const
Spell Property SPL_ProtectionSniper Auto Const

Conditionform Property CFWeapons Auto Const Mandatory
Conditionform Property CFTools Auto Const Mandatory
Conditionform Property CFSpacesuits Auto Const Mandatory
Conditionform Property CFBoostpacks Auto Const Mandatory

Potion Property POTI_RepairCountArmor Auto Const
Potion Property POTI_RepairCountWeapon Auto Const

Event OnAliasInit()	  
	  RegisterForRemoteEvent(PlayerRef, "OnPlayerModArmorWeapon")
EndEvent

Event OnPlayerLoadGame()	  
	  RegisterForRemoteEvent(PlayerRef, "OnPlayerModArmorWeapon")
EndEvent

Event OnSit(ObjectReference akFurniture)  
      UseWorkbench(akFurniture) 	
EndEvent

Event OnGetUp(ObjectReference akFurniture)          			            
      LeaveWorkbench(akFurniture)
EndEvent

Function LeaveWorkbench(ObjectReference akFurniture)

		  If akFurniture.HasKeyword(KWD_WorkbenchArmor)           

	                      If PlayerRef.GetItemCount(ARMOR_Suit) > 0
					         PlayerRef.RemoveItem(ARMOR_Suit, 999, True, None)
                             GV_RecipeHider_Spacesuit.SetValue(0)
                             GV_RecipeHider_SpacesuitFullyRepaired.SetValue(0)
	                   EndIf
	                      If PlayerRef.GetItemCount(ARMOR_Boostpack) > 0
					         PlayerRef.RemoveItem(ARMOR_Boostpack, 999, True, None)		  
                             GV_RecipeHider_Boostpack.SetValue(0)
                             GV_RecipeHider_BoostpackFullyRepaired.SetValue(0)
		               EndIf
	                      If PlayerRef.GetItemCount(ARMOR_Helmet) > 0
					         PlayerRef.RemoveItem(ARMOR_Helmet, 999, True, None)		  
                             GV_RecipeHider_Helmet.SetValue(0)
                             GV_RecipeHider_HelmetFullyRepaired.SetValue(0)
		               EndIf
	  
	  ElseIf akFurniture.haskeyword(KWD_WorkbenchWeapon)

	                      If PlayerRef.GetItemCount(WEAPON_Handgun) > 0
					         PlayerRef.RemoveItem(WEAPON_Handgun, 999, True, None)
                             GV_RecipeHider_Handguns.SetValue(0)
                             GV_RecipeHider_HandgunsFullyRepaired.SetValue(0)
	                   EndIf
	                      If PlayerRef.GetItemCount(WEAPON_HandgunAuto) > 0
					         PlayerRef.RemoveItem(WEAPON_HandgunAuto, 999, True, None)
                             GV_RecipeHider_HandgunsAuto.SetValue(0)
                             GV_RecipeHider_HandgunsAutoFullyRepaired.SetValue(0)
	                   EndIf
	                      If PlayerRef.GetItemCount(WEAPON_Rifle) > 0
					         PlayerRef.RemoveItem(WEAPON_Rifle, 999, True, None)
                             GV_RecipeHider_Rifles.SetValue(0)
                             GV_RecipeHider_RiflesFullyRepaired.SetValue(0)
	                   EndIf
	                      If PlayerRef.GetItemCount(WEAPON_RifleAuto) > 0
					         PlayerRef.RemoveItem(WEAPON_RifleAuto, 999, True, None)
                             GV_RecipeHider_RiflesAuto.SetValue(0)
                             GV_RecipeHider_RiflesAutoFullyRepaired.SetValue(0)
	                   EndIf
	                      If PlayerRef.GetItemCount(WEAPON_Shotgun) > 0
					         PlayerRef.RemoveItem(WEAPON_Shotgun, 999, True, None)
                             GV_RecipeHider_Shotguns.SetValue(0)
                             GV_RecipeHider_ShotgunsFullyRepaired.SetValue(0)
	                   EndIf
	                      If PlayerRef.GetItemCount(WEAPON_Heavy) > 0
					         PlayerRef.RemoveItem(WEAPON_Heavy, 999, True, None)
                             GV_RecipeHider_Heavy.SetValue(0)
                             GV_RecipeHider_HeavyFullyRepaired.SetValue(0)
	                   EndIf
	                      If PlayerRef.GetItemCount(WEAPON_Explosive) > 0
					         PlayerRef.RemoveItem(WEAPON_Explosive, 999, True, None)
                             GV_RecipeHider_Explosive.SetValue(0)
                             GV_RecipeHider_ExplosiveFullyRepaired.SetValue(0)
	                   EndIf
	                      If PlayerRef.GetItemCount(WEAPON_Melee) > 0
					         PlayerRef.RemoveItem(WEAPON_Melee, 999, True, None)
                             GV_RecipeHider_Melee.SetValue(0)
                             GV_RecipeHider_MeleeFullyRepaired.SetValue(0)
	                   EndIf
	                      If PlayerRef.GetItemCount(WEAPON_Tool) > 0
					         PlayerRef.RemoveItem(WEAPON_Tool, 999, True, None)
                             GV_RecipeHider_Tools.SetValue(0)
                             GV_RecipeHider_ToolsFullyRepaired.SetValue(0)	
	                   EndIf
	                      If PlayerRef.GetItemCount(WEAPON_Sniper) > 0
					         PlayerRef.RemoveItem(WEAPON_Sniper, 999, True, None)
                             GV_RecipeHider_Sniper.SetValue(0)
                             GV_RecipeHider_SniperFullyRepaired.SetValue(0)	
	                   EndIf

	   EndIf

EndFunction

Function UseWorkbench(ObjectReference akFurniture)
          
	  If akFurniture.HasKeyword(KWD_WorkbenchArmor) 
				
				If PlayerRef.GetValue(AV_CondSuit) < 100.0
		           PlayerRef.AddItem(ARMOR_Suit, 1, True)
             EndIf
	            If PlayerRef.GetValue(AV_CondBoostpack) < 100.0		 
		           PlayerRef.AddItem(ARMOR_Boostpack, 1, True)
             EndIf		 
	            If PlayerRef.GetValue(AV_CondHelmet) < 100.0		 
		           PlayerRef.AddItem(ARMOR_Helmet, 1, True)
             EndIf	  
  
  ElseIf akFurniture.haskeyword(KWD_WorkbenchWeapon)  
				
				If PlayerRef.GetValue(AV_CondHandgun) < 100.0
		           PlayerRef.AddItem(WEAPON_Handgun, 1, True)
             EndIf	 
				If PlayerRef.GetValue(AV_CondHandgunAuto) < 100.0
		           PlayerRef.AddItem(WEAPON_HandgunAuto, 1, True)
             EndIf	
				If PlayerRef.GetValue(AV_CondRifle) < 100.0
		           PlayerRef.AddItem(WEAPON_Rifle, 1, True)
             EndIf	
				If PlayerRef.GetValue(AV_CondRifleAuto) < 100.0
		           PlayerRef.AddItem(WEAPON_RifleAuto, 1, True)
             EndIf	
				If PlayerRef.GetValue(AV_CondShotgun) < 100.0
		           PlayerRef.AddItem(WEAPON_Shotgun, 1, True)
             EndIf	
				If PlayerRef.GetValue(AV_CondHeavy) < 100.0
		           PlayerRef.AddItem(WEAPON_Heavy, 1, True)
             EndIf	
				If PlayerRef.GetValue(AV_CondExplosive) < 100.0
		           PlayerRef.AddItem(WEAPON_Explosive, 1, True)
             EndIf	
				If PlayerRef.GetValue(AV_CondMelee) < 100.0
		           PlayerRef.AddItem(WEAPON_Melee, 1, True)
             EndIf	
				If PlayerRef.GetValue(AV_CondTool) < 100.0
		           PlayerRef.AddItem(WEAPON_Tool, 1, True)
             EndIf
				If PlayerRef.GetValue(AV_CondSniper) < 100.0
		           PlayerRef.AddItem(WEAPON_Sniper, 1, True)
             EndIf
   EndIf

EndFunction

Event Actor.OnPlayerModArmorWeapon(Actor akSender, Form akBaseObject, ObjectMod akModBaseObject)
	    
		If akBaseObject.Haskeyword(KWD_Repair_Suit) == True
           Repair(AV_CondSuit, MSG_SuitCond, SFX_Repair, GV_DebufTokenOutfit, None, GV_RecipeHider_Spacesuit, GV_RecipeHider_SpacesuitFullyRepaired, SPL_ProtectionSpacesuit, CFSpacesuits)
	       PlayerRef.EquipItem(POTI_RepairCountArmor, False, True)
	ElseIf akBaseObject.Haskeyword(KWD_Repair_Boostpack) == True
           Repair(AV_CondBoostpack, MSG_BoostpackCond, SFX_Repair, GV_DebufTokenBoostpack, GV_BlockJetPack, GV_RecipeHider_Boostpack, GV_RecipeHider_BoostpackFullyRepaired, SPL_ProtectionBoostpack, CFSpacesuits)
	       PlayerRef.EquipItem(POTI_RepairCountArmor, False, True)
	ElseIf akBaseObject.Haskeyword(KWD_Repair_Helmet) == True
           Repair(AV_CondHelmet, MSG_HelmetCond, SFX_Repair, GV_DebufTokenHelmet, None, GV_RecipeHider_Helmet, GV_RecipeHider_HelmetFullyRepaired, SPL_ProtectionHelmet, CFSpacesuits)
	       PlayerRef.EquipItem(POTI_RepairCountArmor, False, True)
	ElseIf akBaseObject.Haskeyword(KWD_Repair_Handgun) == True
           Repair(AV_CondHandgun, MSG_HandgunCond, SFX_Repair, GV_DebufTokenHandguns, None, GV_RecipeHider_Handguns, GV_RecipeHider_HandgunsFullyRepaired, SPL_ProtectionHandgunSemi, CFWeapons)
	       PlayerRef.EquipItem(POTI_RepairCountWeapon, False, True)
	ElseIf akBaseObject.Haskeyword(KWD_Repair_HandgunAuto) == True
           Repair(AV_CondHandgunAuto, MSG_HandgunCondAuto, SFX_Repair, GV_DebufTokenHandgunsAuto, None, GV_RecipeHider_HandgunsAuto, GV_RecipeHider_HandgunsAutoFullyRepaired, SPL_ProtectionHandgunAuto, CFWeapons)
	       PlayerRef.EquipItem(POTI_RepairCountWeapon, False, True)
	ElseIf akBaseObject.Haskeyword(KWD_Repair_Rifle) == True
           Repair(AV_CondRifle, MSG_RifleCond, SFX_Repair, GV_DebufTokenRifles, None, GV_RecipeHider_Rifles, GV_RecipeHider_RiflesFullyRepaired, SPL_ProtectionRifleSemi, CFWeapons)
	       PlayerRef.EquipItem(POTI_RepairCountWeapon, False, True)
	ElseIf akBaseObject.Haskeyword(KWD_Repair_RifleAuto) == True
           Repair(AV_CondRifleAuto, MSG_RifleCondAuto, SFX_Repair, GV_DebufTokenRiflesAuto, None, GV_RecipeHider_RiflesAuto, GV_RecipeHider_RiflesAutoFullyRepaired, SPL_ProtectionRifleAuto, CFWeapons)
	       PlayerRef.EquipItem(POTI_RepairCountWeapon, False, True)
	ElseIf akBaseObject.Haskeyword(KWD_Repair_Shotgun) == True
           Repair(AV_CondShotgun, MSG_ShotgunCond, SFX_Repair, GV_DebufTokenShotguns, None, GV_RecipeHider_Shotguns, GV_RecipeHider_ShotgunsFullyRepaired, SPL_ProtectionShotgun, CFWeapons)
	       PlayerRef.EquipItem(POTI_RepairCountWeapon, False, True)
	ElseIf akBaseObject.Haskeyword(KWD_Repair_Heavy) == True
           Repair(AV_CondHeavy, MSG_HeavyCond, SFX_Repair, GV_DebufTokenHeavy, None, GV_RecipeHider_Heavy, GV_RecipeHider_HeavyFullyRepaired, SPL_ProtectionMinigun, CFWeapons)
	       PlayerRef.EquipItem(POTI_RepairCountWeapon, False, True)
	ElseIf akBaseObject.Haskeyword(KWD_Repair_Explosive) == True
           Repair(AV_CondExplosive, MSG_ExplosiveCond, SFX_Repair, GV_DebufTokenExlosive, None, GV_RecipeHider_Explosive, GV_RecipeHider_ExplosiveFullyRepaired, SPL_ProtectionLauncher, CFWeapons)
	       PlayerRef.EquipItem(POTI_RepairCountWeapon, False, True)
	ElseIf akBaseObject.Haskeyword(KWD_Repair_Melee) == True
           Repair(AV_CondMelee, MSG_MeleeCond, SFX_Repair, GV_DebufTokenMelee, None, GV_RecipeHider_Melee, GV_RecipeHider_MeleeFullyRepaired, SPL_ProtectionMelee, CFWeapons)
	       PlayerRef.EquipItem(POTI_RepairCountWeapon, False, True)
	ElseIf akBaseObject.Haskeyword(KWD_Repair_Tool) == True
           Repair(AV_CondTool, MSG_ToolCond, SFX_Repair, GV_DebufTokenTools, None, GV_RecipeHider_Tools, GV_RecipeHider_ToolsFullyRepaired, SPL_ProtectionTool, CFWeapons)
	       PlayerRef.EquipItem(POTI_RepairCountWeapon, False, True)
	ElseIf akBaseObject.Haskeyword(KWD_Repair_Sniper) == True
           Repair(AV_CondSniper, MSG_SniperCond, SFX_Repair, GV_DebufTokenSniper, None, GV_RecipeHider_Sniper, GV_RecipeHider_SniperFullyRepaired, SPL_ProtectionSniper, CFWeapons)
	       PlayerRef.EquipItem(POTI_RepairCountWeapon, False, True)
	 EndIf

EndEvent

Function Repair(ActorValue AV, Message Notification, Wwiseevent SFX, GlobalVariable DebuffToken, GlobalVariable BlockBoosting, GlobalVariable RecipeHider, GlobalVariable RecipeFullyRepaired, Spell Bonus, Conditionform CF)
		 
		 PlayerRef.RestoreValue(AV, 999)     		 
		 DebuffToken.SetValue(0)
		 BlockBoosting.SetValue(0)
		 RecipeHider.SetValue(1)
		 RecipeFullyRepaired.SetValue(1)
		 SFX.Play(PlayerRef, None, None)
		    If CF.IsTrue(PlayerRef, None)  
		       PlayerRef.DispelSpell(Bonus)
		       Bonus.Cast(PlayerRef, PlayerRef) 
		 EndIf
		 Notification.Show(PlayerRef.GetValue(AV), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)

EndFunction
  