ScriptName SISA_AmmoBackpack extends ObjectReference

Actor Property PlayerRef Auto Const

GlobalVariable Property AmmoTotalPossibleRifle Auto Const
GlobalVariable Property AmmoTotalPossibleRifleHigh Auto Const
GlobalVariable Property AmmoTotalPossibleRifleHeavy Auto Const
GlobalVariable Property AmmoTotalPossibleExplosive Auto Const
GlobalVariable Property AmmoTotalPossiblePistol Auto Const
GlobalVariable Property AmmoTotalPossiblePistolHigh Auto Const
GlobalVariable Property AmmoTotalPossiblePistolHeavy Auto Const
GlobalVariable Property AmmoTotalPossibleShotgun Auto Const
GlobalVariable Property AmmoTotalPossibleShotgunHigh Auto Const
GlobalVariable Property AmmoTotalPossibleGrenade Auto Const
GlobalVariable Property AmmoTotalPossibleMine Auto Const
GlobalVariable Property AmmoTransferNotifier Auto Const
GlobalVariable Property AmmoStoreMode Auto Const

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

Message Property AmmocaseFullSpaceship Auto Const

Potion Property AmmoBackpackConsumable Auto Const

ReferenceAlias Property PlayerShip Auto

Event OnInit()
	  
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

EndEvent

Event OnActivate(ObjectReference akActionRef)

    If akActionRef == PlayerRef
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
       If PlayerRef.GetitemCount(AmmoBackpackConsumable) <= 0
          PlayerRef.Additem(AmmoBackpackConsumable, 1, True)
    EndIf
 EndIf

EndEvent

Event OnItemAdded(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer, Int aiTransferReason)

        Int TotalAmmoPossibleRifle = AmmoTotalPossibleRifle.Getvalue() as Int
        Int TotalAmmoPossibleRifleHigh = AmmoTotalPossibleRifleHigh.Getvalue() as Int
        Int TotalAmmoPossibleRifleHeavy = AmmoTotalPossibleRifleHeavy.Getvalue() as Int
        Int TotalAmmoPossibleExplosive = AmmoTotalPossibleExplosive.Getvalue() as Int
        Int TotalAmmoPossiblePistol = AmmoTotalPossiblePistol.Getvalue() as Int
        Int TotalAmmoPossiblePistolHigh = AmmoTotalPossiblePistolHigh.Getvalue() as Int
        Int TotalAmmoPossiblePistolHeavy = AmmoTotalPossiblePistolHeavy.Getvalue() as Int
        Int TotalAmmoPossibleShotgun = AmmoTotalPossibleShotgun.Getvalue() as Int
        Int TotalAmmoPossibleShotgunHigh = AmmoTotalPossibleShotgunHigh.Getvalue() as Int
        Int TotalAmmoPossibleGrenade = AmmoTotalPossibleGrenade.Getvalue() as Int
        Int TotalAmmoPossibleMine = AmmoTotalPossibleMine.Getvalue() as Int

        Int RifleAmmoDropCount = GetitemCount(akBaseItem) - TotalAmmoPossibleRifle
	    Int ExplosiveAmmoDropCount = GetitemCount(akBaseItem) - TotalAmmoPossibleExplosive
        Int PistolAmmoDropCount = GetitemCount(akBaseItem) - TotalAmmoPossiblePistol
        Int PistolHighAmmoDropCount = GetitemCount(akBaseItem) - TotalAmmoPossiblePistolHigh
        Int PistolHeavyAmmoDropCount = GetitemCount(akBaseItem) - TotalAmmoPossiblePistolHeavy
        Int RifleHighAmmoDropCount = GetitemCount(akBaseItem) - TotalAmmoPossibleRifleHigh
        Int RifleHeavyAmmoDropCount = GetitemCount(akBaseItem) - TotalAmmoPossibleRifleHeavy
        Int ShotgunAmmoDropCount = GetitemCount(akBaseItem) - TotalAmmoPossibleShotgun
        Int ShotgunHighAmmoDropCount = GetitemCount(akBaseItem) - TotalAmmoPossibleShotgunHigh
        Int GrenadeAmmoDropCount = GetitemCount(akBaseItem) - TotalAmmoPossibleGrenade
        Int MineAmmoDropCount = GetitemCount(akBaseItem) - TotalAmmoPossibleMine
	  
	  If akBaseItem.HasKeyword(KeywordAmmoObject)
        
		If akBaseItem.HasKeyword(KeywordAmmoCaliberRifleAssault)
           TransferAmmo(akBaseItem, TotalAmmoPossibleRifle, RifleAmmoDropCount, akSourceContainer)    
	ElseIf akBaseItem.HasKeyword(KeywordAmmoCaliberExplosive)
           TransferAmmo(akBaseItem, TotalAmmoPossibleExplosive, ExplosiveAmmoDropCount, akSourceContainer)    
	ElseIf akBaseItem.HasKeyword(KeywordAmmoCaliberPistol)
           TransferAmmo(akBaseItem, TotalAmmoPossiblePistol, PistolAmmoDropCount, akSourceContainer)
    ElseIf akBaseItem.HasKeyword(KeywordAmmoCaliberPistolHigh)
           TransferAmmo(akBaseItem, TotalAmmoPossiblePistolHigh, PistolHighAmmoDropCount, akSourceContainer)
    ElseIf akBaseItem.HasKeyword(KeywordAmmoCaliberPistolHeavy)
           TransferAmmo(akBaseItem, TotalAmmoPossiblePistolHeavy, PistolHeavyAmmoDropCount, akSourceContainer)
    ElseIf akBaseItem.HasKeyword(KeywordAmmoCaliberRifleSniper)
           TransferAmmo(akBaseItem, TotalAmmoPossibleRifleHigh, RifleHighAmmoDropCount, akSourceContainer)
    ElseIf akBaseItem.HasKeyword(KeywordAmmoCaliberRifleHeavy)
           TransferAmmo(akBaseItem, TotalAmmoPossibleRifleHeavy, RifleHeavyAmmoDropCount, akSourceContainer)
    ElseIf akBaseItem.HasKeyword(KeywordAmmoCaliberRifleShotgun)
           TransferAmmo(akBaseItem, TotalAmmoPossibleShotgun, ShotgunAmmoDropCount, akSourceContainer)
    ElseIf akBaseItem.HasKeyword(KeywordAmmoCaliberRifleShotgunHigh)
           TransferAmmo(akBaseItem, TotalAmmoPossibleShotgunHigh, ShotgunHighAmmoDropCount, akSourceContainer)
     EndIf
  
 ElseIf akBaseItem.HasKeyword(KeywordWeaponExplosive)    
	    
		If akBaseItem.HasKeyword(KeywordAmmoGrenades)	
           TransferAmmo(akBaseItem, TotalAmmoPossibleGrenade, GrenadeAmmoDropCount, akSourceContainer)    
	ElseIf akBaseItem.HasKeyword(KeywordAmmoMines)
           TransferAmmo(akBaseItem, TotalAmmoPossibleMine, MineAmmoDropCount, akSourceContainer)
     EndIf
 EndIf
EndEvent

Function TransferAmmo(Form Item, Int TotalAmount, Int DropAmount, ObjectReference SourceContainer)	
          
		  SpaceShipReference akShip = PlayerShip.getShipRef()     
          	  
	      If GetitemCount(Item) > TotalAmount
               If AmmoStoreMode.GetValue() == 0
			      RemoveItem(Item, DropAmount, True, akShip)
           ElseIf AmmoStoreMode.GetValue() == 1
			      If SourceContainer == PlayerRef 
					 RemoveItem(Item, DropAmount, True, PlayerRef)
					 PlayerRef.DropObject(Item, DropAmount)
			   Else 
				     RemoveItem(Item, DropAmount, True, SourceContainer)
		       EndIf
		   ElseIf AmmoStoreMode.GetValue() == 2
			      RemoveItem(Item, DropAmount, True, None)
			EndIf
			TransferMessageMode()
       EndIf
EndFunction

Function TransferMessageMode()	
     
	 If AmmoTransferNotifier.GetValue() == 0
        AmmocaseFullSpaceship.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) 
  EndIf

EndFunction