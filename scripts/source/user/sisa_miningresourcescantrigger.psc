Scriptname SISA_MiningResourceScanTrigger extends ObjectReference

Actor Property PlayerRef Auto Const
Keyword Property KWD_ResourceTypeSolid Auto Const
Keyword Property KWD_ResourceTypeGas Auto Const
Keyword Property KWD_ResourceTypeLiquid Auto Const
EffectShader Property EffectShaderToApply Auto Const Mandatory
EffectShader Property EffectShaderToApply02 Auto Const Mandatory
Weapon Property ArgosScannerWeaponMK1 Auto Const
Weapon Property ArgosScannerWeaponMK2 Auto Const
Weapon Property ArgosScannerWeaponMK3 Auto Const
Weapon Property ArgosLaserWeaponMK1 Auto Const
Weapon Property ArgosLaserWeaponMK2 Auto Const
Weapon Property ArgosLaserWeaponMK3 Auto Const
Message Property MSG_NotEnoughSpaceInTheCargo Auto Const
Message Property MSG_ScanningFoundNone Auto Const
ImageSpaceModifier Property IMAD_SensorWave Auto Const
LeveledItem Property LVL_MiningAsteroidOnHit Auto Const
LeveledItem Property LVL_MiningPriorityAluminum Auto Const
LeveledItem Property LVL_MiningPriorityCopper Auto Const
LeveledItem Property LVL_MiningPriorityIron Auto Const
LeveledItem Property LVL_MiningPriorityLead Auto Const	
LeveledItem Property LVL_MiningPriorityNickel Auto Const	
LeveledItem Property LVL_MiningPriorityUranium Auto Const
wwiseevent Property SFX_ArgosScanner Auto Const
wwiseevent Property SFX_ArgosScanner02 Auto Const
wwiseevent Property SFX_ArgosScanner03 Auto Const
wwiseevent Property SFX_Error Auto Const
GlobalVariable Property GV_SpaceMiningToggle Auto Const
GlobalVariable Property GV_SpaceMiningLootMult Auto Const

sq_playershipscript Property SQ_PlayerShip Auto

Float Property FLT_DetectionTimeMK1 Auto
Float Property FLT_DetectionTimeMK2 Auto
Float Property FLT_DetectionTimeMK3 Auto

Float Property FLT_RevealTimeMK1 Auto
Float Property FLT_RevealTimeMK2 Auto
Float Property FLT_RevealTimeMK3 Auto

Int Property INT_CrackTimeMK1 Auto
Int Property INT_CrackTimeMK2 Auto
Int Property INT_CrackTimeMK3 Auto
Int Property INT_ObjectSize Auto

Float DetectionTimeStore
Float MessageTimer

Int Property INT_ChanceToBeGolden Auto

Int MineCounter = 0

Bool bListening = false
Bool bApprovedForMining = false
Bool bScanningInTheProcess = false

LeveledItem PrioritizedLoot 

Event OnCellLoad()         
   If GV_SpaceMiningToggle.GetValue() == 1	  
	  Register()		  
		  
		  Int ChanceToBeGolden = Utility.RandomInt(0, 100)
	      If ChanceToBeGolden <= INT_ChanceToBeGolden
	         LeveledItem PriorityLoot = ApplyPriorityLoot()
			 PrioritizedLoot = PriorityLoot
			 bApprovedForMining = True
			 MineCounter = 0
       EndIf
EndIf
EndEvent

Event OnCellAttach()		  
   If GV_SpaceMiningToggle.GetValue() == 1	
	  Register()

		  Int ChanceToBeGolden = Utility.RandomInt(0, 100)
	      If ChanceToBeGolden <= INT_ChanceToBeGolden
	         LeveledItem PriorityLoot = ApplyPriorityLoot()
			 PrioritizedLoot = PriorityLoot
	         bApprovedForMining = True
	         MineCounter = 0
       EndIf
EndIf
EndEvent

Event OnCellDetach()
   If GV_SpaceMiningToggle.GetValue() == 1	
      Unregister()
EndIf
EndEvent

Event OnHit(ObjectReference akTarget, ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked, string apMaterial)
      
	  If bApprovedForMining == True   				
			If akSource == ArgosLaserWeaponMK1 as Weapon
	           OnHitLoot(INT_CrackTimeMK1)
		ElseIf akSource == ArgosLaserWeaponMK2 as Weapon
               OnHitLoot(INT_CrackTimeMK2)
		ElseIf akSource == ArgosLaserWeaponMK3 as Weapon
               OnHitLoot(INT_CrackTimeMK3)
		 EndIf
     
			If akSource == ArgosScannerWeaponMK1 as Weapon
               ScanFoundGold(FLT_DetectionTimeMK1, FLT_RevealTimeMK1)
		ElseIf akSource == ArgosScannerWeaponMK2 as Weapon
               ScanFoundGold(FLT_DetectionTimeMK2, FLT_RevealTimeMK2)
		ElseIf akSource == ArgosScannerWeaponMK3 as Weapon
               ScanFoundGold(FLT_DetectionTimeMK3, FLT_RevealTimeMK3)
		 EndIf
    Else						
			If akSource == ArgosScannerWeaponMK1 as Weapon               
			   ScanFoundNone(FLT_RevealTimeMK1)
		ElseIf akSource == ArgosScannerWeaponMK2 as Weapon
			   ScanFoundNone(FLT_RevealTimeMK2)
		ElseIf akSource == ArgosScannerWeaponMK3 as Weapon
			   ScanFoundNone(FLT_RevealTimeMK3)
		 EndIf        
   EndIf
		 
		 RegisterForHitEvent(Self, None, None, None, -1, -1, -1, -1, True)

EndEvent

Function OnHitLoot(Int CrackTime)
		 
		 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()          
		 Int WarmUpPhase = CrackTime + INT_ObjectSize
		 
		 If akShip.GetWeightInContainer() > akShip.GetShipMaxCargoWeight() 
			akShip.setpartpower(0, 0, 0)
		    akShip.setpartpower(0, 1, 0)		  
		    akShip.setpartpower(0, 2, 0)
			SFX_Error.PlayAndWait(akShip)
			MSG_NotEnoughSpaceInTheCargo.Show()
	 Else
               If MineCounter < WarmUpPhase
			      MineCounter += 1
			      Return
			EndIf
			bListening = true
			RegisterForRemoteEvent(PlayerRef, "OnItemAdded")
			Int LootMult = GV_SpaceMiningLootMult.GetValueInt()
			PlayerRef.AddItem(PrioritizedLoot, LootMult, False)
            Utility.Wait(0.1)
            UnregisterForRemoteEvent(PlayerRef, "OnItemAdded")
            bListening = false
	  EndIf	

EndFunction

Event ObjectReference.OnItemAdded(ObjectReference akSource, Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer, int aiTransferReason)
       If !bListening
           return
    EndIf
       If akBaseItem.HasKeyword(KWD_ResourceTypeSolid) || akBaseItem.HasKeyword(KWD_ResourceTypeGas) || akBaseItem.HasKeyword(KWD_ResourceTypeLiquid)
		  SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
          PlayerRef.RemoveItem(akBaseItem, aiItemCount, True, akShip)
    EndIf
EndEvent

Event OnTimer(int aiTimerID)
		     
			 SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()	       	 
		     
			 If (aiTimerID == 0)
				IMAD_SensorWave.Apply(1.0)
		        SFX_ArgosScanner.Play(akShip)		 
		        Utility.Wait(0.5)
		        EffectShaderToApply.Play(Self, DetectionTimeStore)		        
		 
		 ElseIf (aiTimerID == 1)
                  If MessageTimer > 0
				     MessageTimer -= 1.0
		             EffectShaderToApply02.Play(Self, 0.1)
					 SFX_ArgosScanner03.Play(akShip)
		             StartTimer(1, 1)
		      Else
                     MSG_ScanningFoundNone.Show()
		             bScanningInTheProcess = False
		       EndIf
		 
		 ElseIf (aiTimerID == 2)
                  If MessageTimer > 0
				     MessageTimer -= 1.0
		             EffectShaderToApply02.Play(Self, 0.1)
					 SFX_ArgosScanner03.Play(akShip)
					 StartTimer(1, 2)
		      Else
		             bScanningInTheProcess = False
                     StartTimer(0, 0)
		       EndIf
		  EndIf
EndEvent

Function Register()
         RegisterForHitEvent(Self, None, None, None, -1, -1, -1, -1, True)
		 AddInventoryEventFilter(KWD_ResourceTypeSolid) 
         AddInventoryEventFilter(KWD_ResourceTypeGas) 
         AddInventoryEventFilter(KWD_ResourceTypeLiquid) 
EndFunction

Function Unregister()
	     bApprovedForMining = False
	     MineCounter = 0
         EffectShaderToApply.Stop(Self)
	     UnregisterForHitEvent(Self, None, None, None, -1, -1, -1, -1, True)
         RemoveAllInventoryEventFilters()
EndFunction

LeveledItem Function ApplyPriorityLoot()

    Int Chance = Utility.RandomInt(0, 100)  
    Int ChooseList = Utility.RandomInt(0, 5)
    
	LeveledItem PriorityBalanced = LVL_MiningAsteroidOnHit
    LeveledItem PriorityAluminum = LVL_MiningPriorityAluminum
    LeveledItem PriorityCopper = LVL_MiningPriorityCopper
    LeveledItem PriorityIron = LVL_MiningPriorityIron
    LeveledItem PriorityLead = LVL_MiningPriorityLead
    LeveledItem PriorityNickel = LVL_MiningPriorityNickel
    LeveledItem PriorityUranium = LVL_MiningPriorityUranium
        
		If Chance <= 75
		   Return PriorityBalanced
    Else         
			If ChooseList == 0		   
		       Return PriorityAluminum 
	    ElseIf ChooseList == 1	
		       Return PriorityCopper 
	    ElseIf ChooseList == 2	
		       Return PriorityIron 
	    ElseIf ChooseList == 3	
		       Return PriorityLead 
	    ElseIf ChooseList == 4	
		       Return PriorityNickel 
	    ElseIf ChooseList == 5	
		       Return PriorityUranium 
         EndIf
     EndIf

EndFunction

Function ScanFoundNone(Float RevealTime)

		SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()

        SFX_ArgosScanner02.Play(akShip)
		If bScanningInTheProcess == False
		   bScanningInTheProcess = True
		   MessageTimer = RevealTime
		   StartTimer(1, 1)
	 EndIf
EndFunction

Function ScanFoundGold(Float DetectionTime, Float RevealTime)

		SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()	

        SFX_ArgosScanner02.Play(akShip)
		If bScanningInTheProcess == False
		   bScanningInTheProcess = True
		   MessageTimer = RevealTime
		   DetectionTimeStore = DetectionTime		
		   StartTimer(1, 2)
	 EndIf
EndFunction