ScriptName SISA_AmmoRestricter extends ReferenceAlias

Actor Property PlayerRef Auto Const
ObjectReference Property AmmoBackpack Auto Const
Keyword Property KeywordAmmoObject Auto Const
Keyword Property KeywordAmmoCaliberExplosive Auto Const
Keyword Property KeywordAmmoCaliberPistol Auto Const
Keyword Property KeywordAmmoCaliberPistolHigh Auto Const
Keyword Property KeywordAmmoCaliberPistolHeavy Auto Const
Keyword Property KeywordAmmoCaliberRifleAssault Auto Const
Keyword Property KeywordAmmoCaliberRifleHeavy Auto Const
Keyword Property KeywordAmmoCaliberRifleSniper Auto Const
Keyword Property KeywordAmmoCaliberRifleShotgun Auto Const
Keyword Property KeywordAmmoCaliberRifleShotgunHigh Auto Const
Keyword Property KeywordAmmoGrenades Auto Const
Keyword Property KeywordAmmoMines Auto Const
Keyword Property KeywordWeaponExplosive Auto Const
GlobalVariable Property AmmoCountRifle Auto Const
GlobalVariable Property AmmoCountRifleHigh Auto Const
GlobalVariable Property AmmoCountRifleHeavy Auto Const
GlobalVariable Property AmmoCountExplosive Auto Const
GlobalVariable Property AmmoCountPistol Auto Const
GlobalVariable Property AmmoCountPistolHigh Auto Const
GlobalVariable Property AmmoCountPistolHeavy Auto Const
GlobalVariable Property AmmoCountShotgun Auto Const
GlobalVariable Property AmmoCountShotgunHigh Auto Const
GlobalVariable Property AmmoCountGrenade Auto Const
GlobalVariable Property AmmoCountMine Auto Const
GlobalVariable Property AmmunitionStoreMode Auto Const 
GlobalVariable Property AmmoTransferNotifier Auto Const
Message Property AmmoSupplyFullPlayer Auto Const
Message Property AmmoSupplyFullSpaceship Auto Const
ReferenceAlias Property HomeShip Auto Const mandatory

Bool InBarterMenu = False
Bool InContainerMenu = False
Bool InWorkbench = False

Event OnAliasInit()	
	Register()
EndEvent

Event OnInit()	
	Register()
EndEvent

Event OnPlayerLoadGame()	
	  Register()
EndEvent

Function Register()
 	  
	  AddInventoryEventFilter(KeywordAmmoObject)     
	  AddInventoryEventFilter(KeywordAmmoCaliberExplosive)       
      AddInventoryEventFilter(KeywordAmmoCaliberPistol)
      AddInventoryEventFilter(KeywordAmmoCaliberPistolHigh)
      AddInventoryEventFilter(KeywordAmmoCaliberPistolHeavy)
      AddInventoryEventFilter(KeywordAmmoCaliberRifleAssault)
      AddInventoryEventFilter(KeywordAmmoCaliberRifleHeavy)
      AddInventoryEventFilter(KeywordAmmoCaliberRifleSniper)
      AddInventoryEventFilter(KeywordAmmoCaliberRifleShotgun)
      AddInventoryEventFilter(KeywordAmmoCaliberRifleShotgunHigh)
      AddInventoryEventFilter(KeywordAmmoGrenades)
      AddInventoryEventFilter(KeywordAmmoMines)
      AddInventoryEventFilter(KeywordWeaponExplosive)
	  
	  RegisterForMenuOpenCloseEvent("BarterMenu")	
	  RegisterForMenuOpenCloseEvent("ContainerMenu")

EndFunction

Event OnSit(ObjectReference akFurniture)
    
		 Keyword WorkbenchKeyword = Game.GetFormFromFile(0x00091FD4, "Starfield.esm") as Keyword 
          
		        If akFurniture.HasKeyword(WorkbenchKeyword) 
                   If InWorkbench == False
				      InWorkbench = True
				EndIf				   
             EndIf

EndEvent

Event OnGetUp(ObjectReference akFurniture)

		 Keyword WorkbenchKeyword = Game.GetFormFromFile(0x00091FD4, "Starfield.esm") as Keyword 
                
		         If akFurniture.HasKeyword(WorkbenchKeyword) 
                   If InWorkbench == True
				      InWorkbench = False
				EndIf					
              EndIf

EndEvent

Event OnMenuOpenCloseEvent(String asMenuName, Bool abOpening)
			 
		 If asMenuName == "BarterMenu"
                  
				  If abOpening == True
                     InBarterMenu = True
			   Else 
                     InBarterMenu = False
			   EndIf

	 ElseIf asMenuName == "ContainerMenu"
                  
				  If abOpening == True
                     InContainerMenu = True
			   Else 
                     InContainerMenu = False
			   EndIf

	  EndIf

EndEvent

Event OnItemAdded(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer, Int aiTransferReason)
    
	Int TotalAmmoRifle = AmmoCountRifle.Getvalue() as Int
    Int TotalAmmoRifleHigh = AmmoCountRifleHigh.Getvalue() as Int
    Int TotalAmmoRifleHeavy = AmmoCountRifleHeavy.Getvalue() as Int
    Int TotalAmmoExplosive = AmmoCountExplosive.Getvalue() as Int
    Int TotalAmmoPistol = AmmoCountPistol.Getvalue() as Int
    Int TotalAmmoPistolHigh = AmmoCountPistolHigh.Getvalue() as Int
    Int TotalAmmoPistolHeavy = AmmoCountPistolHeavy.Getvalue() as Int
    Int TotalAmmoShotgun = AmmoCountShotgun.Getvalue() as Int
    Int TotalAmmoShotgunHigh = AmmoCountShotgunHigh.Getvalue() as Int
    Int TotalAmmoGrenade = AmmoCountGrenade.Getvalue() as Int
    Int TotalAmmoMine = AmmoCountMine.Getvalue() as Int

    Int RifleAmmoDropCount = PlayerRef.GetitemCount(akBaseItem) - TotalAmmoRifle
	Int ExplosiveAmmoDropCount = PlayerRef.GetitemCount(akBaseItem) - TotalAmmoExplosive
    Int PistolAmmoDropCount = PlayerRef.GetitemCount(akBaseItem) - TotalAmmoPistol
    Int PistolHighAmmoDropCount = PlayerRef.GetitemCount(akBaseItem) - TotalAmmoPistolHigh
    Int PistolHeavyAmmoDropCount = PlayerRef.GetitemCount(akBaseItem) - TotalAmmoPistolHeavy
    Int RifleHighAmmoDropCount = PlayerRef.GetitemCount(akBaseItem) - TotalAmmoRifleHigh
    Int RifleHeavyAmmoDropCount = PlayerRef.GetitemCount(akBaseItem) - TotalAmmoRifleHeavy
    Int ShotgunAmmoDropCount = PlayerRef.GetitemCount(akBaseItem) - TotalAmmoShotgun
    Int ShotgunHighAmmoDropCount = PlayerRef.GetitemCount(akBaseItem) - TotalAmmoShotgunHigh
    Int GrenadeAmmoDropCount = PlayerRef.GetitemCount(akBaseItem) - TotalAmmoGrenade	
    Int MineAmmoDropCount = PlayerRef.GetitemCount(akBaseItem) - TotalAmmoMine
      
       If akBaseItem.HasKeyword(KeywordAmmoObject)           
			  If akBaseItem.HasKeyword(KeywordAmmoCaliberRifleAssault)
                 TransferAmmo(akBaseItem, TotalAmmoRifle, RifleAmmoDropCount, akSourceContainer)    
	      ElseIf akBaseItem.HasKeyword(KeywordAmmoCaliberExplosive)
                 TransferAmmo(akBaseItem, TotalAmmoExplosive, ExplosiveAmmoDropCount, akSourceContainer)   		
	      ElseIf akBaseItem.HasKeyword(KeywordAmmoCaliberPistol)
                 TransferAmmo(akBaseItem, TotalAmmoPistol, PistolAmmoDropCount, akSourceContainer)    
	      ElseIf akBaseItem.HasKeyword(KeywordAmmoCaliberPistolHigh)
                 TransferAmmo(akBaseItem, TotalAmmoPistolHigh, PistolHighAmmoDropCount, akSourceContainer)    
	      ElseIf akBaseItem.HasKeyword(KeywordAmmoCaliberPistolHeavy)
                 TransferAmmo(akBaseItem, TotalAmmoPistolHeavy, PistolHeavyAmmoDropCount, akSourceContainer)    
	      ElseIf akBaseItem.HasKeyword(KeywordAmmoCaliberRifleSniper)
                 TransferAmmo(akBaseItem, TotalAmmoRifleHigh, RifleHighAmmoDropCount, akSourceContainer)    
	      ElseIf akBaseItem.HasKeyword(KeywordAmmoCaliberRifleHeavy)
                 TransferAmmo(akBaseItem, TotalAmmoRifleHeavy, RifleHeavyAmmoDropCount, akSourceContainer)
          ElseIf akBaseItem.HasKeyword(KeywordAmmoCaliberRifleShotgun)
                 TransferAmmo(akBaseItem, TotalAmmoShotgun, ShotgunAmmoDropCount, akSourceContainer)    
	      ElseIf akBaseItem.HasKeyword(KeywordAmmoCaliberRifleShotgunHigh)
                 TransferAmmo(akBaseItem, TotalAmmoShotgunHigh, ShotgunHighAmmoDropCount, akSourceContainer)	   
           EndIf

  ElseIf akBaseItem.HasKeyword(KeywordWeaponExplosive)

        If akBaseItem.HasKeyword(KeywordAmmoGrenades)
		   TransferAmmo(akBaseItem, TotalAmmoGrenade, GrenadeAmmoDropCount, akSourceContainer)
    
	ElseIf akBaseItem.HasKeyword(KeywordAmmoMines)
		   TransferAmmo(akBaseItem, TotalAmmoMine, MineAmmoDropCount, akSourceContainer)           
     EndIf  

   EndIf

EndEvent

Function TransferAmmo(Form Item, Int TotalAmount, Int DropAmount, ObjectReference SourceContainer)	
          
		  SpaceShipReference akShip = HomeShip.getShipRef()     
     
	      If PlayerRef.GetitemCount(Item) > TotalAmount
                    
					If InBarterMenu == True || InWorkbench == True
				       PlayerRef.RemoveItem(Item, DropAmount, True, akShip)
			           Return
				ElseIf InContainerMenu == True
				       PlayerRef.RemoveItem(Item, DropAmount, True, SourceContainer)
					   Return
				 EndIf
					
					If AmmunitionStoreMode.GetValue() == 0 || AmmunitionStoreMode.GetValue() == 1 || AmmunitionStoreMode.GetValue() == 2
                       PlayerRef.RemoveItem(Item, DropAmount, True, AmmoBackpack)
				ElseIf AmmunitionStoreMode.GetValue() == 3
                       PlayerRef.RemoveItem(Item, DropAmount, True, akShip)
                ElseIf AmmunitionStoreMode.GetValue() == 4
			              If SourceContainer == PlayerRef 
					         PlayerRef.DropObject(Item, DropAmount)
			           Else 
				             PlayerRef.RemoveItem(Item, DropAmount, True, SourceContainer)
		               EndIf
                ElseIf AmmunitionStoreMode.GetValue() == 5
                       PlayerRef.RemoveItem(Item, DropAmount, True, None)
				 EndIf
                 TransferMessageMode()
       EndIf

EndFunction

Function TransferMessageMode()	
     
	 If AmmoTransferNotifier.GetValue() == 1
                If AmmunitionStoreMode.GetValue() == 0 || AmmunitionStoreMode.GetValue() == 1 || AmmunitionStoreMode.GetValue() == 2
                   AmmoSupplyFullPlayer.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)                  
            ElseIf AmmunitionStoreMode.GetValue() == 3
                   AmmoSupplyFullSpaceship.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
             EndIf
  EndIf
EndFunction

