ScriptName SISA_AmmoBreakdown extends ReferenceAlias

Actor Property PlayerRef Auto Const
Keyword Property KeywordBreakdownAmmo11mmCaseless Auto Const
Keyword Property KeywordBreakdownAmmo12GShotgunShell Auto Const
Keyword Property KeywordBreakdownAmmo27Cal Auto Const
Keyword Property KeywordBreakdownAmmo40mmXPL Auto Const
Keyword Property KeywordBreakdownAmmo43Ultramag Auto Const
Keyword Property KeywordBreakdownAmmo45Cal Auto Const
Keyword Property KeywordBreakdownAmmo50Cal Auto Const
Keyword Property KeywordBreakdownAmmo65mm Auto Const
Keyword Property KeywordBreakdownAmmo75mmWhitehot Auto Const
Keyword Property KeywordBreakdownAmmo762mm Auto Const
Keyword Property KeywordBreakdownAmmo777mm Auto Const
Keyword Property KeywordBreakdownAmmo9x39mm Auto Const
Keyword Property KeywordBreakdownAmmoCaselessShotgunShell Auto Const
Keyword Property KeywordBreakdownAmmoLaser Auto Const
Keyword Property KeywordBreakdownAmmoLaserSmall Auto Const
Keyword Property KeywordBreakdownAmmoMIArray43 Auto Const
Keyword Property KeywordBreakdownAmmoMIArray50 Auto Const
Keyword Property KeywordBreakdownAmmoMIArray65 Auto Const
Keyword Property KeywordBreakdownAmmoParticleFuseHeavy Auto Const
Keyword Property KeywordBreakdownAmmoParticleFuseLight Auto Const
Keyword Property KeywordBreakdownAmmoRivet Auto Const
Keyword Property KeywordBreakdownAmmoShotshellCLL Auto Const
LeveledItem Property LVLBreakdownAmmo11mmCaseless Auto Const
LeveledItem Property LVLBreakdownAmmo12GShotgunShell Auto Const
LeveledItem Property LVLBreakdownAmmo27Cal Auto Const
LeveledItem Property LVLBreakdownAmmo40mmXPL Auto Const
LeveledItem Property LVLBreakdownAmmo43Ultramag Auto Const
LeveledItem Property LVLBreakdownAmmo45Cal Auto Const
LeveledItem Property LVLBreakdownAmmo50Cal Auto Const
LeveledItem Property LVLBreakdownAmmo65mm Auto Const
LeveledItem Property LVLBreakdownAmmo75mmWhitehot Auto Const
LeveledItem Property LVLBreakdownAmmo762mm Auto Const
LeveledItem Property LVLBreakdownAmmo777mm Auto Const
LeveledItem Property LVLBreakdownAmmo9x39mm Auto Const
LeveledItem Property LVLBreakdownAmmoCaselessShotgunShell Auto Const
LeveledItem Property LVLBreakdownAmmoLaser Auto Const
LeveledItem Property LVLBreakdownAmmoLaserSmall Auto Const
LeveledItem Property LVLBreakdownAmmoMIArray43 Auto Const
LeveledItem Property LVLBreakdownAmmoMIArray50 Auto Const
LeveledItem Property LVLBreakdownAmmoMIArray65 Auto Const
LeveledItem Property LVLBreakdownAmmoParticleFuseHeavy Auto Const
LeveledItem Property LVLBreakdownAmmoParticleFuseLight Auto Const
LeveledItem Property LVLBreakdownAmmoRivet Auto Const
LeveledItem Property LVLBreakdownAmmoShotshellCLL Auto Const

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
 	  
	  AddInventoryEventFilter(KeywordBreakdownAmmo11mmCaseless)     
	  AddInventoryEventFilter(KeywordBreakdownAmmo12GShotgunShell)       
      AddInventoryEventFilter(KeywordBreakdownAmmo27Cal)
      AddInventoryEventFilter(KeywordBreakdownAmmo40mmXPL)
      AddInventoryEventFilter(KeywordBreakdownAmmo43Ultramag)
      AddInventoryEventFilter(KeywordBreakdownAmmo45Cal)
      AddInventoryEventFilter(KeywordBreakdownAmmo50Cal)
      AddInventoryEventFilter(KeywordBreakdownAmmo65mm)
      AddInventoryEventFilter(KeywordBreakdownAmmo75mmWhitehot)
      AddInventoryEventFilter(KeywordBreakdownAmmo762mm)
      AddInventoryEventFilter(KeywordBreakdownAmmo777mm)
      AddInventoryEventFilter(KeywordBreakdownAmmo9x39mm)
      AddInventoryEventFilter(KeywordBreakdownAmmoCaselessShotgunShell)
      AddInventoryEventFilter(KeywordBreakdownAmmoLaser)    
      AddInventoryEventFilter(KeywordBreakdownAmmoLaserSmall)
      AddInventoryEventFilter(KeywordBreakdownAmmoMIArray43)       
      AddInventoryEventFilter(KeywordBreakdownAmmoMIArray50)
      AddInventoryEventFilter(KeywordBreakdownAmmoMIArray65)
      AddInventoryEventFilter(KeywordBreakdownAmmoParticleFuseHeavy)	  
      AddInventoryEventFilter(KeywordBreakdownAmmoParticleFuseLight)
      AddInventoryEventFilter(KeywordBreakdownAmmoRivet)	  
      AddInventoryEventFilter(KeywordBreakdownAmmoShotshellCLL)

EndFunction

Event OnItemAdded(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer, Int aiTransferReason)
      
	   If akBaseItem.HasKeyword(KeywordBreakdownAmmo11mmCaseless) 
          PlayerRef.RemoveItem(akBaseItem, aiItemCount, True, None)
          PlayerRef.AddItem(LVLBreakdownAmmo11mmCaseless, aiItemCount, False)
   ElseIf akBaseItem.HasKeyword(KeywordBreakdownAmmo12GShotgunShell) 
          PlayerRef.RemoveItem(akBaseItem, aiItemCount, True, None)
          PlayerRef.AddItem(LVLBreakdownAmmo12GShotgunShell, aiItemCount, False)
   ElseIf akBaseItem.HasKeyword(KeywordBreakdownAmmo27Cal) 
          PlayerRef.RemoveItem(akBaseItem, aiItemCount, True, None)
          PlayerRef.AddItem(LVLBreakdownAmmo27Cal, aiItemCount, False)
   ElseIf akBaseItem.HasKeyword(KeywordBreakdownAmmo40mmXPL) 
          PlayerRef.RemoveItem(akBaseItem, aiItemCount, True, None)
          PlayerRef.AddItem(LVLBreakdownAmmo40mmXPL, aiItemCount, False)
   ElseIf akBaseItem.HasKeyword(KeywordBreakdownAmmo43Ultramag) 
          PlayerRef.RemoveItem(akBaseItem, aiItemCount, True, None)
          PlayerRef.AddItem(LVLBreakdownAmmo43Ultramag, aiItemCount, False)
   ElseIf akBaseItem.HasKeyword(KeywordBreakdownAmmo45Cal) 
          PlayerRef.RemoveItem(akBaseItem, aiItemCount, True, None)
          PlayerRef.AddItem(LVLBreakdownAmmo45Cal, aiItemCount, False)
   ElseIf akBaseItem.HasKeyword(KeywordBreakdownAmmo50Cal) 
          PlayerRef.RemoveItem(akBaseItem, aiItemCount, True, None)
          PlayerRef.AddItem(LVLBreakdownAmmo50Cal, aiItemCount, False)
   ElseIf akBaseItem.HasKeyword(KeywordBreakdownAmmo65mm) 
          PlayerRef.RemoveItem(akBaseItem, aiItemCount, True, None)
          PlayerRef.AddItem(LVLBreakdownAmmo65mm, aiItemCount, False)
   ElseIf akBaseItem.HasKeyword(KeywordBreakdownAmmo75mmWhitehot) 
          PlayerRef.RemoveItem(akBaseItem, aiItemCount, True, None)
          PlayerRef.AddItem(LVLBreakdownAmmo75mmWhitehot, aiItemCount, False)
   ElseIf akBaseItem.HasKeyword(KeywordBreakdownAmmo762mm) 
          PlayerRef.RemoveItem(akBaseItem, aiItemCount, True, None)
          PlayerRef.AddItem(LVLBreakdownAmmo762mm, aiItemCount, False)
   ElseIf akBaseItem.HasKeyword(KeywordBreakdownAmmo777mm) 
          PlayerRef.RemoveItem(akBaseItem, aiItemCount, True, None)
          PlayerRef.AddItem(LVLBreakdownAmmo777mm, aiItemCount, False)
   ElseIf akBaseItem.HasKeyword(KeywordBreakdownAmmo9x39mm) 
          PlayerRef.RemoveItem(akBaseItem, aiItemCount, True, None)
          PlayerRef.AddItem(LVLBreakdownAmmo9x39mm, aiItemCount, False)
   ElseIf akBaseItem.HasKeyword(KeywordBreakdownAmmoCaselessShotgunShell) 
          PlayerRef.RemoveItem(akBaseItem, aiItemCount, True, None)
          PlayerRef.AddItem(LVLBreakdownAmmoCaselessShotgunShell, aiItemCount, False)
   ElseIf akBaseItem.HasKeyword(KeywordBreakdownAmmoLaser) 
          PlayerRef.RemoveItem(akBaseItem, aiItemCount, True, None)
          PlayerRef.AddItem(LVLBreakdownAmmoLaser, aiItemCount, False)
   ElseIf akBaseItem.HasKeyword(KeywordBreakdownAmmoLaserSmall) 
          PlayerRef.RemoveItem(akBaseItem, aiItemCount, True, None)
          PlayerRef.AddItem(LVLBreakdownAmmoLaserSmall, aiItemCount, False)
   ElseIf akBaseItem.HasKeyword(KeywordBreakdownAmmoMIArray43) 
          PlayerRef.RemoveItem(akBaseItem, aiItemCount, True, None)
          PlayerRef.AddItem(LVLBreakdownAmmoMIArray43, aiItemCount, False)
   ElseIf akBaseItem.HasKeyword(KeywordBreakdownAmmoMIArray50) 
          PlayerRef.RemoveItem(akBaseItem, aiItemCount, True, None)
          PlayerRef.AddItem(LVLBreakdownAmmoMIArray50, aiItemCount, False)
   ElseIf akBaseItem.HasKeyword(KeywordBreakdownAmmoMIArray65) 
          PlayerRef.RemoveItem(akBaseItem, aiItemCount, True, None)
          PlayerRef.AddItem(LVLBreakdownAmmoMIArray65, aiItemCount, False)
   ElseIf akBaseItem.HasKeyword(KeywordBreakdownAmmoParticleFuseHeavy) 
          PlayerRef.RemoveItem(akBaseItem, aiItemCount, True, None)
          PlayerRef.AddItem(LVLBreakdownAmmoParticleFuseHeavy, aiItemCount, False)
   ElseIf akBaseItem.HasKeyword(KeywordBreakdownAmmoParticleFuseLight) 
          PlayerRef.RemoveItem(akBaseItem, aiItemCount, True, None)
          PlayerRef.AddItem(LVLBreakdownAmmoParticleFuseLight, aiItemCount, False)
   ElseIf akBaseItem.HasKeyword(KeywordBreakdownAmmoRivet) 
          PlayerRef.RemoveItem(akBaseItem, aiItemCount, True, None)
          PlayerRef.AddItem(LVLBreakdownAmmoRivet, aiItemCount, False)
   ElseIf akBaseItem.HasKeyword(KeywordBreakdownAmmoShotshellCLL) 
          PlayerRef.RemoveItem(akBaseItem, aiItemCount, True, None)
          PlayerRef.AddItem(LVLBreakdownAmmoShotshellCLL, aiItemCount, False)
    EndIf

EndEvent

