ScriptName SISA_ItemInjector extends Quest

LeveledItem Property LootListForAddingAidItems_Loot Auto Const
LeveledItem Property LootListForAddingAidItems_MedChemKits01 Auto Const
LeveledItem Property LootListForAddingAidItems_MedChemKits02 Auto Const
LeveledItem Property LootListForAddingAidItems_Vendors01 Auto Const
LeveledItem Property LootListForAddingAidItems_Vendors02 Auto Const
LeveledItem Property LootListForAddingAidItems_Vendors03 Auto Const
LeveledItem Property LootListForAddingAidItems_Vendors04 Auto Const
LeveledItem Property LootListForAddingAidItems_Vendors05 Auto Const
LeveledItem Property LootListForAddingAidItems_Vendors06 Auto Const

LeveledItem Property LootListForAddingRepairItems_WeaponVendor01 Auto Const
LeveledItem Property LootListForAddingRepairItems_WeaponVendor02 Auto Const
LeveledItem Property LootListForAddingRepairItems_WeaponVendor03 Auto Const
LeveledItem Property LootListForAddingRepairItems_WeaponVendor04 Auto Const
LeveledItem Property LootListForAddingRepairItems_WeaponVendor05 Auto Const
LeveledItem Property LootListForAddingRepairItems_WeaponVendor06 Auto Const
LeveledItem Property LootListForAddingRepairItems_WeaponVendor07 Auto Const
LeveledItem Property LootListForAddingRepairItems_WeaponVendor08 Auto Const

LeveledItem Property LootListForAddingRepairItems_GeneralVendor01 Auto Const
LeveledItem Property LootListForAddingRepairItems_GeneralVendor02 Auto Const
LeveledItem Property LootListForAddingRepairItems_GeneralVendor03 Auto Const
LeveledItem Property LootListForAddingRepairItems_GeneralVendor04 Auto Const
LeveledItem Property LootListForAddingRepairItems_GeneralVendor05 Auto Const
LeveledItem Property LootListForAddingRepairItems_GeneralVendor06 Auto Const
LeveledItem Property LootListForAddingRepairItems_GeneralVendor07 Auto Const
LeveledItem Property LootListForAddingRepairItems_GeneralVendor08 Auto Const
LeveledItem Property LootListForAddingRepairItems_GeneralVendor09 Auto Const
LeveledItem Property LootListForAddingRepairItems_GeneralVendor10 Auto Const

LeveledItem Property LootListForAddingRepairItems_WeaponAndArmorVendor01 Auto Const

LeveledItem Property LootListForAddingRepairItems_ArmorVendor01 Auto Const

LeveledItem Property LootListForAddingRepairItems_ToolVendor01 Auto Const
LeveledItem Property LootListForAddingRepairItems_ToolVendor02 Auto Const
LeveledItem Property LootListForAddingRepairItems_ToolVendor03 Auto Const

LeveledItem Property LootListForAddingRepairItems_ToolAndArmorVendor01 Auto Const

LeveledItem Property LootListForAddingAidItems_LLD_BountyHunter Auto Const
LeveledItem Property LootListForAddingAidItems_LLD_CrimsonFleet Auto Const
LeveledItem Property LootListForAddingAidItems_LLD_Ecliptic Auto Const
LeveledItem Property LootListForAddingAidItems_LLD_Freestar Auto Const
LeveledItem Property LootListForAddingAidItems_LLD_Scum Auto Const
LeveledItem Property LootListForAddingAidItems_LLD_Settler Auto Const
LeveledItem Property LootListForAddingAidItems_LLD_Spacer Auto Const
LeveledItem Property LootListForAddingAidItems_LLD_Syndicate Auto Const
LeveledItem Property LootListForAddingAidItems_LLD_TheFirst Auto Const
LeveledItem Property LootListForAddingAidItems_LLD_UCMarine Auto Const
LeveledItem Property LootListForAddingAidItems_LLD_UCMarineSysDef Auto Const
LeveledItem Property LootListForAddingAidItems_LLD_Varuun Auto Const
LeveledItem Property LootListForAddingAidItems_LLD_VaruunDLC Auto Const
LeveledItem Property LootListForAddingAidItems_LLD_VaruunDLCRedeemed Auto Const

LeveledItem Property LootListForAddingFuel_CargoA Auto Const
LeveledItem Property LootListForAddingFuel_CargoB Auto Const
LeveledItem Property LootListForAddingFuel_CargoC Auto Const
LeveledItem Property LootListForAddingFuel_TankerA Auto Const
LeveledItem Property LootListForAddingFuel_TankerB Auto Const
LeveledItem Property LootListForAddingFuel_TankerC Auto Const
LeveledItem Property LootListForAddingFuel_TransportA Auto Const
LeveledItem Property LootListForAddingFuel_TransportB Auto Const
LeveledItem Property LootListForAddingFuel_TransportC Auto Const
LeveledItem Property LootListForAddingFuel_CombatA Auto Const
LeveledItem Property LootListForAddingFuel_CombatB Auto Const
LeveledItem Property LootListForAddingFuel_CombatC Auto Const
LeveledItem Property LootListForAddingFuel_StabornC Auto Const
LeveledItem Property LootListForAddinInfirmaryItems_Vendors01 Auto Const
LeveledItem Property LootListForAddinInfirmaryItems_Vendors02 Auto Const
LeveledItem Property LootListWithAidItemsForLoot Auto Const
LeveledItem Property LootListWithAidItemsForVendors Auto Const
LeveledItem Property LootListWithInfirmaryItemsForVendors Auto Const
LeveledItem Property LootListWithFuelItemsForShips Auto Const
LeveledItem Property LootListWithAmmoForShips Auto Const
LeveledItem Property LootListWithRepairItems_FieldWeaponKit Auto Const
LeveledItem Property LootListWithRepairItems_FieldArmorKit Auto Const
LeveledItem Property LootListWithRepairItems_FieldToolKit Auto Const
LeveledItem Property LootListWithRepairItems_FieldToolAndArmorKit Auto Const
LeveledItem Property LootListWithRepairItems_FieldWeaponAndArmorKits Auto Const
LeveledItem Property LootListWithRepairItems_AllFieldKits Auto Const

LeveledItem Property LootListWithIngotItems_AllIngots Auto Const

Function InjectItemsToTheseLists()
	  
	LootListForAddingAidItems_Loot.AddForm(LootListWithAidItemsForLoot, 1, 1)																	   															
	LootListForAddingAidItems_MedChemKits01.AddForm(LootListWithAidItemsForLoot, 1, 1)					   															
	LootListForAddingAidItems_MedChemKits02.AddForm(LootListWithAidItemsForLoot, 1, 1)				 															
	LootListForAddingAidItems_Vendors01.AddForm(LootListWithAidItemsForVendors, 1, 1)				   															
	LootListForAddingAidItems_Vendors02.AddForm(LootListWithAidItemsForVendors, 1, 1)					   															
	LootListForAddingAidItems_Vendors03.AddForm(LootListWithAidItemsForVendors, 1, 1)																			
	LootListForAddingAidItems_Vendors04.AddForm(LootListWithAidItemsForVendors, 1, 1)				  															
	LootListForAddingAidItems_Vendors05.AddForm(LootListWithAidItemsForVendors, 1, 1)				  															
	LootListForAddingAidItems_Vendors06.AddForm(LootListWithAidItemsForVendors, 1, 1)				    																		
 	LootListForAddinInfirmaryItems_Vendors01.AddForm(LootListWithInfirmaryItemsForVendors, 1, 1)		    															
	LootListForAddinInfirmaryItems_Vendors02.AddForm(LootListWithInfirmaryItemsForVendors, 1, 1)   
	LootListForAddingAidItems_LLD_BountyHunter.AddForm(LootListWithAidItemsForLoot, 1, 1) 
	LootListForAddingAidItems_LLD_CrimsonFleet.AddForm(LootListWithAidItemsForLoot, 1, 1) 
	LootListForAddingAidItems_LLD_Ecliptic.AddForm(LootListWithAidItemsForLoot, 1, 1) 
	LootListForAddingAidItems_LLD_Freestar.AddForm(LootListWithAidItemsForLoot, 1, 1) 
	LootListForAddingAidItems_LLD_Scum.AddForm(LootListWithAidItemsForLoot, 1, 1) 
	LootListForAddingAidItems_LLD_Settler.AddForm(LootListWithAidItemsForLoot, 1, 1) 
	LootListForAddingAidItems_LLD_Spacer.AddForm(LootListWithAidItemsForLoot, 1, 1) 
	LootListForAddingAidItems_LLD_Syndicate.AddForm(LootListWithAidItemsForLoot, 1, 1) 
	LootListForAddingAidItems_LLD_TheFirst.AddForm(LootListWithAidItemsForLoot, 1, 1) 
	LootListForAddingAidItems_LLD_UCMarine.AddForm(LootListWithAidItemsForLoot, 1, 1) 
	LootListForAddingAidItems_LLD_UCMarineSysDef.AddForm(LootListWithAidItemsForLoot, 1, 1) 
	LootListForAddingAidItems_LLD_Varuun.AddForm(LootListWithAidItemsForLoot, 1, 1) 
	LootListForAddingAidItems_LLD_VaruunDLC.AddForm(LootListWithAidItemsForLoot, 1, 1) 
	LootListForAddingAidItems_LLD_VaruunDLCRedeemed.AddForm(LootListWithAidItemsForLoot, 1, 1) 	
	LootListForAddingRepairItems_WeaponVendor01.AddForm(LootListWithRepairItems_FieldWeaponKit, 1, 1) 
	LootListForAddingRepairItems_WeaponVendor02.AddForm(LootListWithRepairItems_FieldWeaponKit, 1, 1) 
	LootListForAddingRepairItems_WeaponVendor03.AddForm(LootListWithRepairItems_FieldWeaponKit, 1, 1) 
	LootListForAddingRepairItems_WeaponVendor04.AddForm(LootListWithRepairItems_FieldWeaponKit, 1, 1) 
	LootListForAddingRepairItems_WeaponVendor05.AddForm(LootListWithRepairItems_FieldWeaponKit, 1, 1) 
	LootListForAddingRepairItems_WeaponVendor06.AddForm(LootListWithRepairItems_FieldWeaponKit, 1, 1) 
	LootListForAddingRepairItems_WeaponVendor07.AddForm(LootListWithRepairItems_FieldWeaponKit, 1, 1)
	LootListForAddingRepairItems_WeaponVendor08.AddForm(LootListWithRepairItems_FieldWeaponKit, 1, 1)
	LootListForAddingRepairItems_GeneralVendor01.AddForm(LootListWithRepairItems_AllFieldKits, 1, 1) 
	LootListForAddingRepairItems_GeneralVendor02.AddForm(LootListWithRepairItems_AllFieldKits, 1, 1) 
	LootListForAddingRepairItems_GeneralVendor03.AddForm(LootListWithRepairItems_AllFieldKits, 1, 1) 
	LootListForAddingRepairItems_GeneralVendor04.AddForm(LootListWithRepairItems_AllFieldKits, 1, 1) 
	LootListForAddingRepairItems_GeneralVendor05.AddForm(LootListWithRepairItems_AllFieldKits, 1, 1) 
	LootListForAddingRepairItems_GeneralVendor06.AddForm(LootListWithRepairItems_AllFieldKits, 1, 1) 
	LootListForAddingRepairItems_GeneralVendor07.AddForm(LootListWithRepairItems_AllFieldKits, 1, 1)
	LootListForAddingRepairItems_GeneralVendor08.AddForm(LootListWithRepairItems_AllFieldKits, 1, 1) 
	LootListForAddingRepairItems_GeneralVendor09.AddForm(LootListWithRepairItems_AllFieldKits, 1, 1)	
	LootListForAddingRepairItems_GeneralVendor10.AddForm(LootListWithRepairItems_AllFieldKits, 1, 1)
	LootListForAddingRepairItems_WeaponAndArmorVendor01.AddForm(LootListWithRepairItems_FieldWeaponAndArmorKits, 1, 1)
	LootListForAddingRepairItems_ArmorVendor01.AddForm(LootListWithRepairItems_FieldArmorKit, 1, 1)
	LootListForAddingRepairItems_ToolVendor01.AddForm(LootListWithRepairItems_FieldToolKit, 1, 1)
	LootListForAddingRepairItems_ToolVendor02.AddForm(LootListWithRepairItems_FieldToolKit, 1, 1)
	LootListForAddingRepairItems_ToolVendor03.AddForm(LootListWithRepairItems_FieldToolKit, 1, 1)
	LootListForAddingRepairItems_ToolAndArmorVendor01.AddForm(LootListWithRepairItems_FieldToolAndArmorKit, 1, 1)

	LootListForAddingRepairItems_ToolAndArmorVendor01.AddForm(LootListWithIngotItems_AllIngots, 1, 1)
	LootListForAddingRepairItems_ToolVendor01.AddForm(LootListWithIngotItems_AllIngots, 1, 1)
	LootListForAddingRepairItems_ToolVendor02.AddForm(LootListWithIngotItems_AllIngots, 1, 1)
	LootListForAddingRepairItems_ToolVendor03.AddForm(LootListWithIngotItems_AllIngots, 1, 1)	
	LootListForAddingRepairItems_GeneralVendor01.AddForm(LootListWithIngotItems_AllIngots, 1, 1)
	LootListForAddingRepairItems_GeneralVendor06.AddForm(LootListWithIngotItems_AllIngots, 1, 1)
	LootListForAddingRepairItems_GeneralVendor07.AddForm(LootListWithIngotItems_AllIngots, 1, 1)
EndFunction

Function InjectFuelItemsToTheseLists()
	  															
    LootListForAddingFuel_CargoA.AddForm(LootListWithFuelItemsForShips, 1, 1)																				
	LootListForAddingFuel_CargoB.AddForm(LootListWithFuelItemsForShips, 1, 1)																		
	LootListForAddingFuel_CargoC.AddForm(LootListWithFuelItemsForShips, 1, 1)																			
	LootListForAddingFuel_TankerA.AddForm(LootListWithFuelItemsForShips, 1, 1)																			
	LootListForAddingFuel_TankerB.AddForm(LootListWithFuelItemsForShips, 1, 1)																			
	LootListForAddingFuel_TankerC.AddForm(LootListWithFuelItemsForShips, 1, 1)																			
	LootListForAddingFuel_TransportA.AddForm(LootListWithFuelItemsForShips, 1, 1)																	
	LootListForAddingFuel_TransportB.AddForm(LootListWithFuelItemsForShips, 1, 1)																				
	LootListForAddingFuel_TransportC.AddForm(LootListWithFuelItemsForShips, 1, 1)																			
	LootListForAddingFuel_CombatA.AddForm(LootListWithFuelItemsForShips, 1, 1)																			
	LootListForAddingFuel_CombatB.AddForm(LootListWithFuelItemsForShips, 1, 1)																	
	LootListForAddingFuel_CombatC.AddForm(LootListWithFuelItemsForShips, 1, 1)																			
	LootListForAddingFuel_StabornC.AddForm(LootListWithFuelItemsForShips, 1, 1)		
    
EndFunction

Function InjectSpaceshipAmmoToTheseLists()

    LootListForAddingFuel_CargoA.AddForm(LootListWithAmmoForShips, 1, 1)																				
	LootListForAddingFuel_CargoB.AddForm(LootListWithAmmoForShips, 1, 1)																		
	LootListForAddingFuel_CargoC.AddForm(LootListWithAmmoForShips, 1, 1)																			
	LootListForAddingFuel_TankerA.AddForm(LootListWithAmmoForShips, 1, 1)																			
	LootListForAddingFuel_TankerB.AddForm(LootListWithAmmoForShips, 1, 1)																			
	LootListForAddingFuel_TankerC.AddForm(LootListWithAmmoForShips, 1, 1)																			
	LootListForAddingFuel_TransportA.AddForm(LootListWithAmmoForShips, 1, 1)																	
	LootListForAddingFuel_TransportB.AddForm(LootListWithAmmoForShips, 1, 1)																				
	LootListForAddingFuel_TransportC.AddForm(LootListWithAmmoForShips, 1, 1)																			
	LootListForAddingFuel_CombatA.AddForm(LootListWithAmmoForShips, 1, 1)																			
	LootListForAddingFuel_CombatB.AddForm(LootListWithAmmoForShips, 1, 1)																	
	LootListForAddingFuel_CombatC.AddForm(LootListWithAmmoForShips, 1, 1)																			
	LootListForAddingFuel_StabornC.AddForm(LootListWithAmmoForShips, 1, 1)	
    
EndFunction

Function RefreshLists()
 
	LootListForAddingAidItems_Loot.Revert()																
	LootListForAddingAidItems_MedChemKits01.Revert()    																				
	LootListForAddingAidItems_MedChemKits02.Revert()    																		
	LootListForAddingAidItems_Vendors01.Revert()    																			
	LootListForAddingAidItems_Vendors02.Revert()    																				
	LootListForAddingAidItems_Vendors03.Revert()    																				
	LootListForAddingAidItems_Vendors04.Revert()    																			
	LootListForAddingAidItems_Vendors05.Revert()    																				
	LootListForAddingAidItems_Vendors06.Revert()    																		   															
 	LootListForAddinInfirmaryItems_Vendors01.Revert() 		    															
	LootListForAddinInfirmaryItems_Vendors02.Revert()  
	LootListForAddingAidItems_LLD_BountyHunter.Revert()
	LootListForAddingAidItems_LLD_CrimsonFleet.Revert() 
	LootListForAddingAidItems_LLD_Ecliptic.Revert()
	LootListForAddingAidItems_LLD_Freestar.Revert()
	LootListForAddingAidItems_LLD_Scum.Revert()
	LootListForAddingAidItems_LLD_Settler.Revert()
	LootListForAddingAidItems_LLD_Spacer.Revert() 
	LootListForAddingAidItems_LLD_Syndicate.Revert() 
	LootListForAddingAidItems_LLD_TheFirst.Revert()
	LootListForAddingAidItems_LLD_UCMarine.Revert()
	LootListForAddingAidItems_LLD_UCMarineSysDef.Revert() 
	LootListForAddingAidItems_LLD_Varuun.Revert()
	LootListForAddingAidItems_LLD_VaruunDLC.Revert()
	LootListForAddingAidItems_LLD_VaruunDLCRedeemed.Revert()
	LootListForAddingRepairItems_WeaponVendor01.Revert()
	LootListForAddingRepairItems_WeaponVendor02.Revert() 
	LootListForAddingRepairItems_WeaponVendor03.Revert() 
	LootListForAddingRepairItems_WeaponVendor04.Revert()
	LootListForAddingRepairItems_WeaponVendor05.Revert() 
	LootListForAddingRepairItems_WeaponVendor06.Revert()
	LootListForAddingRepairItems_WeaponVendor07.Revert()
	LootListForAddingRepairItems_WeaponVendor08.Revert()
	LootListForAddingRepairItems_GeneralVendor01.Revert() 
	LootListForAddingRepairItems_GeneralVendor02.Revert()
	LootListForAddingRepairItems_GeneralVendor03.Revert() 
	LootListForAddingRepairItems_GeneralVendor04.Revert()
	LootListForAddingRepairItems_GeneralVendor05.Revert()
	LootListForAddingRepairItems_GeneralVendor06.Revert() 
	LootListForAddingRepairItems_GeneralVendor07.Revert()
	LootListForAddingRepairItems_GeneralVendor08.Revert()
	LootListForAddingRepairItems_GeneralVendor09.Revert()	
	LootListForAddingRepairItems_GeneralVendor10.Revert()
	LootListForAddingRepairItems_WeaponAndArmorVendor01.Revert()
	LootListForAddingRepairItems_ArmorVendor01.Revert()
	LootListForAddingRepairItems_ToolVendor01.Revert()
	LootListForAddingRepairItems_ToolVendor02.Revert()
	LootListForAddingRepairItems_ToolVendor03.Revert()
	LootListForAddingRepairItems_ToolAndArmorVendor01.Revert()
    InjectItemsToTheseLists()
    
	Debug.Notification("[Survival Items] leveled lists have been refreshed") 

EndFunction

Function RefreshListsFuel()
 
	LootListForAddingFuel_CargoA.Revert()    																			
	LootListForAddingFuel_CargoB.Revert()																		
	LootListForAddingFuel_CargoC.Revert()																				
	LootListForAddingFuel_TankerA.Revert()																					
	LootListForAddingFuel_TankerB.Revert()																				
	LootListForAddingFuel_TankerC.Revert()																			
	LootListForAddingFuel_TransportA.Revert()																			
	LootListForAddingFuel_TransportB.Revert()																			
	LootListForAddingFuel_TransportC.Revert()																								
	LootListForAddingFuel_CombatA.Revert()																			
	LootListForAddingFuel_CombatB.Revert()																				
	LootListForAddingFuel_CombatC.Revert()																		
	LootListForAddingFuel_StabornC.Revert()																	
    InjectFuelItemsToTheseLists()

	If (Game.IsPluginInstalled("Starvival - SpaceshipsUseAmmo.esm"))
       InjectSpaceshipAmmoToTheseLists()
 EndIf
    
	Debug.Notification("[Spaceship Items] leveled lists have been refreshed")

EndFunction

Function RevertListsFuel()
 
	LootListForAddingFuel_CargoA.Revert()    																			
	LootListForAddingFuel_CargoB.Revert()																		
	LootListForAddingFuel_CargoC.Revert()																				
	LootListForAddingFuel_TankerA.Revert()																					
	LootListForAddingFuel_TankerB.Revert()																				
	LootListForAddingFuel_TankerC.Revert()																			
	LootListForAddingFuel_TransportA.Revert()																			
	LootListForAddingFuel_TransportB.Revert()																			
	LootListForAddingFuel_TransportC.Revert()																								
	LootListForAddingFuel_CombatA.Revert()																			
	LootListForAddingFuel_CombatB.Revert()																				
	LootListForAddingFuel_CombatC.Revert()																		
	LootListForAddingFuel_StabornC.Revert()																	

EndFunction

Function RevertAllLists()

	LootListForAddingAidItems_Loot.Revert()																
	LootListForAddingAidItems_MedChemKits01.Revert()    																				
	LootListForAddingAidItems_MedChemKits02.Revert()    																		
	LootListForAddingAidItems_Vendors01.Revert()    																			
	LootListForAddingAidItems_Vendors02.Revert()    																				
	LootListForAddingAidItems_Vendors03.Revert()    																				
	LootListForAddingAidItems_Vendors04.Revert()    																			
	LootListForAddingAidItems_Vendors05.Revert()    																				
	LootListForAddingAidItems_Vendors06.Revert()    																		   															
 	LootListForAddinInfirmaryItems_Vendors01.Revert() 		    															
	LootListForAddinInfirmaryItems_Vendors02.Revert()  
	LootListForAddingAidItems_LLD_BountyHunter.Revert()
	LootListForAddingAidItems_LLD_CrimsonFleet.Revert() 
	LootListForAddingAidItems_LLD_Ecliptic.Revert()
	LootListForAddingAidItems_LLD_Freestar.Revert()
	LootListForAddingAidItems_LLD_Scum.Revert()
	LootListForAddingAidItems_LLD_Settler.Revert()
	LootListForAddingAidItems_LLD_Spacer.Revert() 
	LootListForAddingAidItems_LLD_Syndicate.Revert() 
	LootListForAddingAidItems_LLD_TheFirst.Revert()
	LootListForAddingAidItems_LLD_UCMarine.Revert()
	LootListForAddingAidItems_LLD_UCMarineSysDef.Revert() 
	LootListForAddingAidItems_LLD_Varuun.Revert()
	LootListForAddingAidItems_LLD_VaruunDLC.Revert()
	LootListForAddingAidItems_LLD_VaruunDLCRedeemed.Revert()
	LootListForAddingRepairItems_WeaponVendor01.Revert()
	LootListForAddingRepairItems_WeaponVendor02.Revert() 
	LootListForAddingRepairItems_WeaponVendor03.Revert() 
	LootListForAddingRepairItems_WeaponVendor04.Revert()
	LootListForAddingRepairItems_WeaponVendor05.Revert() 
	LootListForAddingRepairItems_WeaponVendor06.Revert()
	LootListForAddingRepairItems_WeaponVendor07.Revert()
	LootListForAddingRepairItems_WeaponVendor08.Revert()
	LootListForAddingRepairItems_GeneralVendor01.Revert() 
	LootListForAddingRepairItems_GeneralVendor02.Revert()
	LootListForAddingRepairItems_GeneralVendor03.Revert() 
	LootListForAddingRepairItems_GeneralVendor04.Revert()
	LootListForAddingRepairItems_GeneralVendor05.Revert()
	LootListForAddingRepairItems_GeneralVendor06.Revert() 
	LootListForAddingRepairItems_GeneralVendor07.Revert()
	LootListForAddingRepairItems_GeneralVendor08.Revert()
	LootListForAddingRepairItems_GeneralVendor09.Revert()	
	LootListForAddingRepairItems_GeneralVendor10.Revert()
	LootListForAddingRepairItems_WeaponAndArmorVendor01.Revert()
	LootListForAddingRepairItems_ArmorVendor01.Revert()
	LootListForAddingRepairItems_ToolVendor01.Revert()
	LootListForAddingRepairItems_ToolVendor02.Revert()
	LootListForAddingRepairItems_ToolVendor03.Revert()
	LootListForAddingRepairItems_ToolAndArmorVendor01.Revert() 
	LootListForAddingFuel_CargoA.Revert()    																			
	LootListForAddingFuel_CargoB.Revert()																		
	LootListForAddingFuel_CargoC.Revert()																				
	LootListForAddingFuel_TankerA.Revert()																					
	LootListForAddingFuel_TankerB.Revert()																				
	LootListForAddingFuel_TankerC.Revert()																			
	LootListForAddingFuel_TransportA.Revert()																			
	LootListForAddingFuel_TransportB.Revert()																			
	LootListForAddingFuel_TransportC.Revert()																								
	LootListForAddingFuel_CombatA.Revert()																			
	LootListForAddingFuel_CombatB.Revert()																				
	LootListForAddingFuel_CombatC.Revert()																		
	LootListForAddingFuel_StabornC.Revert()																	

EndFunction			