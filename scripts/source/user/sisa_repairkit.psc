ScriptName SISA_RepairKit extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_Condition Auto Const
Message Property MSG_CondStatus Auto Const
Message Property MSG_RepairFail Auto Const
Message Property MSG_WeaponRepairMenu Auto Const
Message Property MSG_SpacesuitRepairMenu Auto Const
Message Property MSG_BoostpackRepairMenu Auto Const
Message Property MSG_ToolRepairMenu Auto Const
MagicEffect Property MAGEF_RepairKitWeapon Auto Const
MagicEffect Property MAGEF_RepairKitSpacesuit Auto Const
MagicEffect Property MAGEF_RepairKitBoostpack Auto Const
MagicEffect Property MAGEF_RepairKitTool Auto Const
Potion Property POTI_RepairKit Auto Const
wwiseevent Property SFX_Repair Auto Const
Conditionform Property CF_RepairBonus01 Auto Const Mandatory
Conditionform Property CF_RepairBonus02 Auto Const Mandatory
Conditionform Property CF_RepairBonus03 Auto Const Mandatory
Conditionform Property CF_RepairBonus04 Auto Const Mandatory
GlobalVariable Property GV_RepairKitThresholdMin Auto Const
GlobalVariable Property GV_RepairKitThresholdMax Auto Const
GlobalVariable Property GV_RepairKitRestoreBase Auto Const
GlobalVariable Property GV_SFXBegin Auto Const
Keyword Property KWD_EnhancedRepair Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      	  
	  If PlayerRef.HasMagicEffect(MAGEF_RepairKitWeapon) == True
         WeaponRepairMenu()
  ElseIf PlayerRef.HasMagicEffect(MAGEF_RepairKitSpacesuit) == True
	  	 SpacesuitRepairMenu()
  ElseIf PlayerRef.HasMagicEffect(MAGEF_RepairKitBoostpack) == True
	  	 BoostpackRepairMenu()
  ElseIf PlayerRef.HasMagicEffect(MAGEF_RepairKitTool) == True
	  	 ToolRepairMenu()
   EndIf

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)      	  
	  GV_SFXBegin.SetValue(0)
EndEvent


Function WeaponRepairMenu(Int MenuType = 0, Int Button = 0, Bool MenuOpened = True)
		 			 
		 If Button == -1		 
     
	 ElseIf MenuType == 0
		    
			Float Bonus = CheckForSkillBonus()
            Float Cond = PlayerRef.GetValue(AV_Condition)
			Float BonusRepairAmount = BonusRepairAmountCalc()
			Float BonusFromMod = CheckForModBonus() 
		    Float ThresholdMin = GV_RepairKitThresholdMin.GetValue() - Bonus - BonusFromMod 
            Float ThresholdMax = GV_RepairKitThresholdMax.GetValue() + Bonus + BonusFromMod
			Float RestoreBase = GV_RepairKitRestoreBase.GetValue()		
			Float RestoreTotal = RestoreBase + BonusRepairAmount + BonusFromMod						
			Int AvailableRepairKits = PlayerRef.GetItemCount(POTI_RepairKit) + 1
			
			Button = MSG_WeaponRepairMenu.Show(Cond, ThresholdMin, ThresholdMax, RestoreTotal, AvailableRepairKits, 0.0, 0.0, 0.0, 0.0)	 
                   
				   If Button == 0
	  	              Repair(AV_Condition, MSG_RepairFail, MSG_CondStatus, SFX_Repair)			   					 
			   ElseIf Button == 1 
				      PlayerRef.AddItem(POTI_RepairKit, 1, True)
				EndIf
      EndIf

EndFunction

Function SpacesuitRepairMenu(Int MenuType = 0, Int Button = 0, Bool MenuOpened = True)
		 			 
		 If Button == -1		 
     
	 ElseIf MenuType == 0
			
			Float Bonus = CheckForSkillBonus()		    
            Float Cond = PlayerRef.GetValue(AV_Condition)
			Float BonusRepairAmount = BonusRepairAmountCalc()
			Float BonusFromMod = CheckForModBonus()
		    Float ThresholdMin = GV_RepairKitThresholdMin.GetValue() - Bonus - BonusFromMod  
            Float ThresholdMax = GV_RepairKitThresholdMax.GetValue() + Bonus + BonusFromMod   
			Float RestoreBase = GV_RepairKitRestoreBase.GetValue()			
			Float RestoreTotal = RestoreBase + BonusRepairAmount + BonusFromMod			 			
			Int AvailableRepairKits = PlayerRef.GetItemCount(POTI_RepairKit) + 1			
			
			Button = MSG_SpacesuitRepairMenu.Show(Cond, ThresholdMin, ThresholdMax, RestoreTotal, AvailableRepairKits, 0.0, 0.0, 0.0, 0.0)	 
                   
				   If Button == 0
					  Repair(AV_Condition, MSG_RepairFail, MSG_CondStatus, SFX_Repair)	 
			   ElseIf Button == 1
				      PlayerRef.AddItem(POTI_RepairKit, 1, True)
				EndIf
      EndIf

EndFunction

Function BoostpackRepairMenu(Int MenuType = 0, Int Button = 0, Bool MenuOpened = True)
		 			 
		 If Button == -1		 
     
	 ElseIf MenuType == 0
			
			Float Bonus = CheckForSkillBonus()			    
            Float Cond = PlayerRef.GetValue(AV_Condition)
			Float BonusRepairAmount = BonusRepairAmountCalc()
			Float BonusFromMod = CheckForModBonus() 
		    Float ThresholdMin = GV_RepairKitThresholdMin.GetValue() - Bonus - BonusFromMod   
            Float ThresholdMax = GV_RepairKitThresholdMax.GetValue() + Bonus + BonusFromMod  
			Float RestoreBase = GV_RepairKitRestoreBase.GetValue()		
			Float RestoreTotal = RestoreBase + BonusRepairAmount + BonusFromMod						
			Int AvailableRepairKits = PlayerRef.GetItemCount(POTI_RepairKit) + 1			
			
			Button = MSG_BoostpackRepairMenu.Show(Cond, ThresholdMin, ThresholdMax, RestoreTotal, AvailableRepairKits, 0.0, 0.0, 0.0, 0.0)	 
                   
				   If Button == 0
					  Repair(AV_Condition, MSG_RepairFail, MSG_CondStatus, SFX_Repair)	 
			   ElseIf Button == 1
				      PlayerRef.AddItem(POTI_RepairKit, 1, True)
				EndIf
      EndIf

EndFunction

Function ToolRepairMenu(Int MenuType = 0, Int Button = 0, Bool MenuOpened = True)
		 			 
		 If Button == -1		 
     
	 ElseIf MenuType == 0
			
			Float Bonus = CheckForSkillBonus()			    
            Float Cond = PlayerRef.GetValue(AV_Condition)
			Float BonusRepairAmount = BonusRepairAmountCalc()
			Float BonusFromMod = CheckForModBonus() 
		    Float ThresholdMin = GV_RepairKitThresholdMin.GetValue() - Bonus - BonusFromMod 
            Float ThresholdMax = GV_RepairKitThresholdMax.GetValue() + Bonus + BonusFromMod  			
			Float RestoreBase = GV_RepairKitRestoreBase.GetValue()		
			Float RestoreTotal = RestoreBase + BonusRepairAmount + BonusFromMod			
			Int AvailableRepairKits = PlayerRef.GetItemCount(POTI_RepairKit) + 1			
			
			Button = MSG_ToolRepairMenu.Show(Cond, ThresholdMin, ThresholdMax, RestoreTotal, AvailableRepairKits, 0.0, 0.0, 0.0, 0.0)	 
                   
				   If Button == 0
					  Repair(AV_Condition, MSG_RepairFail, MSG_CondStatus, SFX_Repair)	 
			   ElseIf Button == 1
				      PlayerRef.AddItem(POTI_RepairKit, 1, True)
				EndIf
      EndIf

EndFunction

Float Function BonusRepairAmountCalc()
	  
	  Float Perk00 = 0.0      
	  Float Perk01 = 5.0
	  Float Perk02 = 10.0
	  Float Perk03 = 15.0
	  Float Perk04 = 20.0
        
		If CF_RepairBonus04.IsTrue(PlayerRef, None)    
		   Return Perk04 		
	ElseIf CF_RepairBonus03.IsTrue(PlayerRef, None)    
		   Return Perk03 
	ElseIf CF_RepairBonus02.IsTrue(PlayerRef, None)  
	       Return Perk02
	ElseIf CF_RepairBonus01.IsTrue(PlayerRef, None)  	 
           Return Perk01
      Else	
           Return Perk00
     EndIf

EndFunction

Float Function CheckForSkillBonus()
	  
	  Float Perk00 = 0.0      
	  Float Perk01 = 4.0
	  Float Perk02 = 8.0
	  Float Perk03 = 12.0
	  Float Perk04 = 15.0
        
		If CF_RepairBonus04.IsTrue(PlayerRef, None)    
		   Return Perk04 		
	ElseIf CF_RepairBonus03.IsTrue(PlayerRef, None)    
		   Return Perk03 
	ElseIf CF_RepairBonus02.IsTrue(PlayerRef, None)  
	       Return Perk02
	ElseIf CF_RepairBonus01.IsTrue(PlayerRef, None)  	 
           Return Perk01
      Else	
           Return Perk00
     EndIf

EndFunction

Float Function CheckForModBonus()
	  
	  Float Bonus00 = 0.0      
	  Float Bonus01 = 5.0
        
		If PlayerRef.Wornhaskeyword(KWD_EnhancedRepair) 
		   Return Bonus01 		
      Else	
           Return Bonus00
     EndIf

EndFunction

Function Repair(ActorValue AV, Message MSGFail, Message MSGCond, Wwiseevent SFX)
		 
	     Float BonusFromSkill = CheckForSkillBonus() 
	     Float BonusFromMod = CheckForModBonus() 
		 Float ThresholdMin = GV_RepairKitThresholdMin.GetValue() - BonusFromSkill - BonusFromMod  
         Float ThresholdMax = GV_RepairKitThresholdMax.GetValue() + BonusFromSkill + BonusFromMod          
         Float RestoreBase = GV_RepairKitRestoreBase.GetValue() 
		 Float BonusRepairAmount = BonusRepairAmountCalc()
		 
		 If PlayerRef.GetValue(AV) < ThresholdMin
	        PlayerRef.AddItem(POTI_RepairKit, 1, True)
			MSGFail.Show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)			   
	 ElseIf PlayerRef.GetValue(AV) < ThresholdMax
	        PlayerRef.RestoreValue(AV, RestoreBase + BonusRepairAmount + BonusFromMod)	          			
		    GV_SFXBegin.SetValue(1)
	           If PlayerRef.GetValue(AV) > ThresholdMax
	              PlayerRef.RestoreValue(AV, 999)
	              PlayerRef.DamageValue(AV, 100 - ThresholdMax)
	        EndIf
			MSGCond.Show(PlayerRef.GetValue(AV), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	   Else
	        PlayerRef.AddItem(POTI_RepairKit, 1, True)
			MSGFail.Show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)			   
	  EndIf

EndFunction