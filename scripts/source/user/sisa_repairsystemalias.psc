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
	                   EndIf
	                      If PlayerRef.GetItemCount(ARMOR_Boostpack) > 0
					         PlayerRef.RemoveItem(ARMOR_Boostpack, 999, True, None)		  
		               EndIf
	                      If PlayerRef.GetItemCount(ARMOR_Helmet) > 0
					         PlayerRef.RemoveItem(ARMOR_Helmet, 999, True, None)		  
		               EndIf
      
	  ElseIf akFurniture.haskeyword(KWD_WorkbenchWeapon)

	                      If PlayerRef.GetItemCount(WEAPON_Handgun) > 0
					         PlayerRef.RemoveItem(WEAPON_Handgun, 999, True, None)
	                   EndIf
	                      If PlayerRef.GetItemCount(WEAPON_HandgunAuto) > 0
					         PlayerRef.RemoveItem(WEAPON_HandgunAuto, 999, True, None)
	                   EndIf
	                      If PlayerRef.GetItemCount(WEAPON_Rifle) > 0
					         PlayerRef.RemoveItem(WEAPON_Rifle, 999, True, None)
	                   EndIf
	                      If PlayerRef.GetItemCount(WEAPON_RifleAuto) > 0
					         PlayerRef.RemoveItem(WEAPON_RifleAuto, 999, True, None)
	                   EndIf
	                      If PlayerRef.GetItemCount(WEAPON_Shotgun) > 0
					         PlayerRef.RemoveItem(WEAPON_Shotgun, 999, True, None)
	                   EndIf
	                      If PlayerRef.GetItemCount(WEAPON_Heavy) > 0
					         PlayerRef.RemoveItem(WEAPON_Heavy, 999, True, None)
	                   EndIf
	                      If PlayerRef.GetItemCount(WEAPON_Explosive) > 0
					         PlayerRef.RemoveItem(WEAPON_Explosive, 999, True, None)
	                   EndIf
	                      If PlayerRef.GetItemCount(WEAPON_Melee) > 0
					         PlayerRef.RemoveItem(WEAPON_Melee, 999, True, None)
	                   EndIf
	                      If PlayerRef.GetItemCount(WEAPON_Tool) > 0
					         PlayerRef.RemoveItem(WEAPON_Tool, 999, True, None)
	                   EndIf
	                      If PlayerRef.GetItemCount(WEAPON_Sniper) > 0
					         PlayerRef.RemoveItem(WEAPON_Sniper, 999, True, None)
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
           Repair(AV_CondSuit, ARMOR_Suit, None, MSG_SuitCond, SFX_Repair, GV_DebufTokenOutfit, None, SPL_ProtectionSpacesuit, CFSpacesuits)
	ElseIf akBaseObject.Haskeyword(KWD_Repair_Boostpack) == True
           Repair(AV_CondBoostpack, ARMOR_Boostpack, None, MSG_BoostpackCond, SFX_Repair, GV_DebufTokenBoostpack, GV_BlockJetPack, SPL_ProtectionBoostpack, CFBoostpacks)
	ElseIf akBaseObject.Haskeyword(KWD_Repair_Helmet) == True
           Repair(AV_CondHelmet, ARMOR_Helmet, None, MSG_HelmetCond, SFX_Repair, GV_DebufTokenHelmet, None, SPL_ProtectionHelmet, CFSpacesuits)
	ElseIf akBaseObject.Haskeyword(KWD_Repair_Handgun) == True
           Repair(AV_CondHandgun, None, WEAPON_Handgun, MSG_HandgunCond, SFX_Repair, GV_DebufTokenHandguns, None, SPL_ProtectionHandgunSemi, CFWeapons)
	ElseIf akBaseObject.Haskeyword(KWD_Repair_HandgunAuto) == True
           Repair(AV_CondHandgunAuto, None, WEAPON_HandgunAuto, MSG_HandgunCondAuto, SFX_Repair, GV_DebufTokenHandgunsAuto, None, SPL_ProtectionHandgunAuto, CFWeapons)
	ElseIf akBaseObject.Haskeyword(KWD_Repair_Rifle) == True
           Repair(AV_CondRifle, None, WEAPON_Rifle, MSG_RifleCond, SFX_Repair, GV_DebufTokenRifles, None, SPL_ProtectionRifleSemi, CFWeapons)
	ElseIf akBaseObject.Haskeyword(KWD_Repair_RifleAuto) == True
           Repair(AV_CondRifleAuto, None, WEAPON_RifleAuto, MSG_RifleCondAuto, SFX_Repair, GV_DebufTokenRiflesAuto, None, SPL_ProtectionRifleAuto, CFWeapons)
	ElseIf akBaseObject.Haskeyword(KWD_Repair_Shotgun) == True
           Repair(AV_CondShotgun, None, WEAPON_Shotgun, MSG_ShotgunCond, SFX_Repair, GV_DebufTokenShotguns, None, SPL_ProtectionShotgun, CFWeapons)
	ElseIf akBaseObject.Haskeyword(KWD_Repair_Heavy) == True
           Repair(AV_CondHeavy, None, WEAPON_Heavy, MSG_HeavyCond, SFX_Repair, GV_DebufTokenHeavy, None, SPL_ProtectionMinigun, CFWeapons)
	ElseIf akBaseObject.Haskeyword(KWD_Repair_Explosive) == True
           Repair(AV_CondExplosive, None, WEAPON_Explosive, MSG_ExplosiveCond, SFX_Repair, GV_DebufTokenExlosive, None, SPL_ProtectionLauncher, CFWeapons)
	ElseIf akBaseObject.Haskeyword(KWD_Repair_Melee) == True
           Repair(AV_CondMelee, None, WEAPON_Melee, MSG_MeleeCond, SFX_Repair, GV_DebufTokenMelee, None, SPL_ProtectionMelee, CFWeapons)
	ElseIf akBaseObject.Haskeyword(KWD_Repair_Tool) == True
           Repair(AV_CondTool, None, WEAPON_Tool, MSG_ToolCond, SFX_Repair, GV_DebufTokenTools, None, SPL_ProtectionTool, CFTools)
	ElseIf akBaseObject.Haskeyword(KWD_Repair_Sniper) == True
           Repair(AV_CondSniper, None, WEAPON_Sniper, MSG_SniperCond, SFX_Repair, GV_DebufTokenSniper, None, SPL_ProtectionSniper, CFWeapons)
	 EndIf

EndEvent

Function Repair(ActorValue AV, Armor ItemArmor, Weapon ItemWeapon, Message Notification, Wwiseevent SFX, GlobalVariable DebuffToken, GlobalVariable BlockBoosting, Spell Bonus, Conditionform CF)
		 
		 PlayerRef.RestoreValue(AV, 999)
	     PlayerRef.RemoveItem(ItemArmor, 999, True, None)
	     PlayerRef.RemoveItem(ItemWeapon, 999, True, None)	     		 
		 DebuffToken.SetValue(0)
		 BlockBoosting.SetValue(0)
		 SFX.Play(PlayerRef, None, None)
		    If CF.IsTrue(PlayerRef, None)  
		       Bonus.Cast(PlayerRef, PlayerRef) 
		 EndIf
		 Notification.Show(PlayerRef.GetValue(AV), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)

EndFunction
  