Scriptname SISA_RepairVendorMenu Extends Perk Const hidden

Quest Property QuestFameAndRep Auto Const
Actor Property PlayerRef Auto Const
ActorValue Property AV_BoostpackFuel Auto Const
ActorValue Property AV_DegradeHandgunSemi Auto Const
ActorValue Property AV_DegradeHandgunSemiLaser Auto Const
ActorValue Property AV_DegradeHandgunSemiParticle Auto Const
ActorValue Property AV_DegradeHandgunAuto Auto Const
ActorValue Property AV_DegradeHandgunAutoLaser Auto Const
ActorValue Property AV_DegradeHandgunAutoParticle Auto Const
ActorValue Property AV_DegradeRifleSemi Auto Const
ActorValue Property AV_DegradeRifleSemiLaser Auto Const
ActorValue Property AV_DegradeRifleSemiParticle Auto Const
ActorValue Property AV_DegradeRifleAuto Auto Const
ActorValue Property AV_DegradeRifleAutoLaser Auto Const
ActorValue Property AV_DegradeRifleAutoParticle Auto Const
ActorValue Property AV_DegradeRifleEM Auto Const
ActorValue Property AV_DegradeShotgun Auto Const
ActorValue Property AV_DegradeShotgunParticle Auto Const
ActorValue Property AV_DegradeMelee Auto Const
ActorValue Property AV_DegradeHeavy Auto Const
ActorValue Property AV_DegradeHeavyParticle Auto Const
ActorValue Property AV_DegradeLauncher Auto Const
ActorValue Property AV_DegradeLauncherParticle Auto Const
ActorValue Property AV_DegradeSniper Auto Const
ActorValue Property AV_DegradeSniperLaser Auto Const
ActorValue Property AV_DegradeSniperParticle Auto Const
ActorValue Property AV_DegradeTool Auto Const
ActorValue Property AV_DegradeSuit Auto Const
ActorValue Property AV_DegradeBoostpack Auto Const
ActorValue Property AV_DegradeHelmet Auto Const
GlobalVariable Property GV_DebuffTokenSuit Auto Const
GlobalVariable Property GV_DebuffTokenBoostpack Auto Const
GlobalVariable Property GV_DebuffTokenHelmet Auto Const
GlobalVariable Property GV_DebuffTokenHandgunSemi Auto Const
GlobalVariable Property GV_DebuffTokenHandgunSemiLaser Auto Const
GlobalVariable Property GV_DebuffTokenHandgunSemiParticle Auto Const
GlobalVariable Property GV_DebuffTokenHandgunAuto Auto Const
GlobalVariable Property GV_DebuffTokenHandgunAutoLaser Auto Const
GlobalVariable Property GV_DebuffTokenHandgunAutoParticle Auto Const
GlobalVariable Property GV_DebuffTokenExplosive Auto Const
GlobalVariable Property GV_DebuffTokenExplosiveParticle Auto Const
GlobalVariable Property GV_DebuffTokenHeavy Auto Const
GlobalVariable Property GV_DebuffTokenHeavyParticle Auto Const
GlobalVariable Property GV_DebuffTokenTool Auto Const
GlobalVariable Property GV_DebuffTokenMelee Auto Const
GlobalVariable Property GV_DebuffTokenRifleSemi Auto Const
GlobalVariable Property GV_DebuffTokenRifleSemiLaser Auto Const
GlobalVariable Property GV_DebuffTokenRifleSemiParticle Auto Const
GlobalVariable Property GV_DebuffTokenRifleAuto Auto Const
GlobalVariable Property GV_DebuffTokenRifleAutoLaser Auto Const
GlobalVariable Property GV_DebuffTokenRifleAutoParticle Auto Const
GlobalVariable Property GV_DebuffTokenRifleEM Auto Const
GlobalVariable Property GV_DebuffTokenShotguns Auto Const
GlobalVariable Property GV_DebuffTokenShotgunsParticle Auto Const
GlobalVariable Property GV_DebuffTokenSniper Auto Const
GlobalVariable Property GV_DebuffTokenSniperLaser Auto Const
GlobalVariable Property GV_DebuffTokenSniperParticle Auto Const
GlobalVariable Property GV_BoostpackNeedsFuelToggle Auto Const
GlobalVariable Property GV_BlockJetPack Auto Const
GlobalVariable Property GV_PriceMultWeapon Auto Const
GlobalVariable Property GV_PriceMultArmor Auto Const
GlobalVariable Property FameAndRepToggle Auto Const
Message Property MSG_RepairVendorMenu Auto Const
Message Property MSG_RepairVendorMenuWeapons Auto Const
Message Property MSG_RepairVendorMenuTools Auto Const
Message Property MSG_RepairVendorMenuWeaponsHandgunAuto Auto Const
Message Property MSG_RepairVendorMenuWeaponsHandgunAutoLaser Auto Const
Message Property MSG_RepairVendorMenuWeaponsHandgunAutoParticle Auto Const
Message Property MSG_RepairVendorMenuWeaponsHandgunSemi Auto Const
Message Property MSG_RepairVendorMenuWeaponsHandgunSemiLaser Auto Const
Message Property MSG_RepairVendorMenuWeaponsHandgunSemiParticle Auto Const
Message Property MSG_RepairVendorMenuWeaponsLaunchers Auto Const
Message Property MSG_RepairVendorMenuWeaponsLaunchersParticle Auto Const
Message Property MSG_RepairVendorMenuWeaponsMelee Auto Const
Message Property MSG_RepairVendorMenuWeaponsMiniguns Auto Const
Message Property MSG_RepairVendorMenuWeaponsMinigunsParticle Auto Const
Message Property MSG_RepairVendorMenuWeaponsRiflesAuto Auto Const
Message Property MSG_RepairVendorMenuWeaponsRiflesAutoLaser Auto Const
Message Property MSG_RepairVendorMenuWeaponsRiflesAutoParticle Auto Const
Message Property MSG_RepairVendorMenuWeaponsRiflesSemi Auto Const
Message Property MSG_RepairVendorMenuWeaponsRiflesSemiLaser Auto Const
Message Property MSG_RepairVendorMenuWeaponsRiflesSemiParticle Auto Const
Message Property MSG_RepairVendorMenuWeaponsRiflesEM Auto Const
Message Property MSG_RepairVendorMenuWeaponsShotguns Auto Const
Message Property MSG_RepairVendorMenuWeaponsShotgunsParticle Auto Const
Message Property MSG_RepairVendorMenuWeaponsSniper Auto Const
Message Property MSG_RepairVendorMenuWeaponsSniperLaser Auto Const
Message Property MSG_RepairVendorMenuWeaponsSniperParticle Auto Const
Message Property MSG_RepairVendorMenuApparel Auto Const
Message Property MSG_RepairVendorMenuApparelHelmet Auto Const
Message Property MSG_RepairVendorMenuApparelBoostpack Auto Const
Message Property MSG_RepairVendorMenuApparelSpacesuit Auto Const
Message Property MSG_RepairVendorMenuNotEnoughCredits Auto Const
MiscObject Property Credits Auto Const
wwiseevent Property SFX_Repair Auto Const

Conditionform Property ConditionFormRepairDiscount01 Auto Const Mandatory
Conditionform Property ConditionFormRepairDiscount02 Auto Const Mandatory
Conditionform Property ConditionFormRepairDiscount03 Auto Const Mandatory
Conditionform Property ConditionFormRepairDiscount04 Auto Const Mandatory

Float Function DiscountRepair()
     
	 Float DiscountPercent00 = 1.00
     Float DiscountPercent01 = 1.20 	 
     Float DiscountPercent02 = 1.35 
     Float DiscountPercent03 = 1.50 
     Float DiscountPercent04 = 1.75 	 
		
		If ConditionFormRepairDiscount04.IsTrue(PlayerRef, None)     
		   Return DiscountPercent04 
	ElseIf ConditionFormRepairDiscount03.IsTrue(PlayerRef, None)  
	       Return DiscountPercent03
	ElseIf ConditionFormRepairDiscount02.IsTrue(PlayerRef, None)	 
           Return DiscountPercent02
	ElseIf ConditionFormRepairDiscount01.IsTrue(PlayerRef, None)
           Return DiscountPercent01 
Else	
           Return DiscountPercent00
     EndIf

EndFunction

Float Function FameAndRepCheck()

      Float FameAndRepEnabled = 1.0
      Float FameAndRepDisabled = 0.0

      If FameAndRepToggle.GetValue() == 1
         return FameAndRepEnabled
  Else
         return FameAndRepDisabled   
   EndIf

EndFunction

Float Function ReputationCalculator()
	  
	  Float IfReputation00 = 0.50 	   
	  Float IfReputation10 = 0.60      
	  Float IfReputation20 = 0.70
	  Float IfReputation30 = 0.80      
	  Float IfReputation40 = 0.90 
	  Float IfReputation50 = 1.00
	  Float IfReputation60 = 1.10      
	  Float IfReputation70 = 1.20
	  Float IfReputation80 = 1.30      
	  Float IfReputation90 = 1.40 
	  Float IfReputation100 = 1.50
      Float IfFameAndRepDisabled = FameAndRepCheck()
	  
	  If IfFameAndRepDisabled == 0.0
         Return IfReputation50 	  
   EndIf 
  	  
	  ActorValue AVCheck = (QuestFameAndRep as SISA_FameAndRepMB).CheckForAVRepair()      
 
      If PlayerRef.GetValue(AVCheck) < 10
         Return IfReputation00
  ElseIf PlayerRef.GetValue(AVCheck) >= 10 && PlayerRef.GetValue(AVCheck) < 20
         Return IfReputation10
  ElseIf PlayerRef.GetValue(AVCheck) >= 20 && PlayerRef.GetValue(AVCheck) < 30
         Return IfReputation20
  ElseIf PlayerRef.GetValue(AVCheck) >= 30 && PlayerRef.GetValue(AVCheck) < 40
         Return IfReputation30
  ElseIf PlayerRef.GetValue(AVCheck) >= 40 && PlayerRef.GetValue(AVCheck) < 50
         Return IfReputation40
  ElseIf PlayerRef.GetValue(AVCheck) >= 50 && PlayerRef.GetValue(AVCheck) < 60
         Return IfReputation50
  ElseIf PlayerRef.GetValue(AVCheck) >= 60 && PlayerRef.GetValue(AVCheck) < 70
         Return IfReputation60
  ElseIf PlayerRef.GetValue(AVCheck) >= 70 && PlayerRef.GetValue(AVCheck) < 80
         Return IfReputation70
  ElseIf PlayerRef.GetValue(AVCheck) >= 80 && PlayerRef.GetValue(AVCheck) < 90
         Return IfReputation80
  ElseIf PlayerRef.GetValue(AVCheck) >= 90 && PlayerRef.GetValue(AVCheck) < 100
         Return IfReputation90
  ElseIf PlayerRef.GetValue(AVCheck) >= 100
         Return IfReputation100
   Else
         Return IfReputation50
   EndIf

EndFunction

Function RepairEquipment_00(ObjectReference akTargetRef, Actor akActor)         		 
         RepairEquipment()	 
EndFunction

Function RepairEquipmentTools_01(ObjectReference akTargetRef, Actor akActor)         		 
         RepairEquipmentTools()	 
EndFunction

Function RepairEquipmentTools(Int MenuType = 0, Int Button = 0, Bool MenuOpened = True)
 
 While MenuOpened
 	 
	 If Button == -1         

 ElseIf MenuType == 0
		   
		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeTool)
		   Float PriceMult = GV_PriceMultWeapon.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(150.0, 1500.0, AV_DegradeTool, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuTools.show(CurrentAV, CredAmount, Cost)	

			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenTool, None, AV_DegradeTool, Cost)																																				                                   
	     ElseIf (button == 1)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf
 		   
  EndIf

EndWhile
EndFunction

Function RepairEquipment(Int MenuType = 0, Int Button = 0, Bool MenuOpened = True)
 
 While MenuOpened
 	 
	 If Button == -1         

 ElseIf MenuType == 0
		   
		   button = MSG_RepairVendorMenu.show()	

	                                    If (button == 0)                                           
										   MenuType = 1										
									ElseIf (button == 1)                                           
										   MenuType = 5																	                                          										                                     
									ElseIf (button == 2)                                                                               
										   ; Exit
										   MenuOpened = False																		 
									 EndIf
 ElseIf MenuType == 1              			  
           
		   Float BoostpackAV = PlayerRef.Getvalue(AV_DegradeBoostpack)
           Float HelmetAV = PlayerRef.Getvalue(AV_DegradeHelmet)
           Float SuitAV = PlayerRef.Getvalue(AV_DegradeSuit)		
		   
		   button = MSG_RepairVendorMenuApparel.show(BoostpackAV, HelmetAV, SuitAV)	
	                                    
										If (button == 0)
                                           MenuType = 2																		
									ElseIf (button == 1)									
                                           MenuType = 3	
									ElseIf (button == 2)                                           
                                           MenuType = 4	                                    
									ElseIf (button == 3)                                           
                                           MenuType = 0	 
									ElseIf (button == 4)                                           
										   ; Exit                                           
										   MenuOpened = False									                                                                            									
									 EndIf
 ElseIf MenuType == 2  
		   
		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeBoostpack)
		   Float PriceMult = GV_PriceMultArmor.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(230.0, 2600.0, AV_DegradeBoostpack, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuApparelBoostpack.show(CurrentAV, CredAmount, Cost)

			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenBoostpack, GV_BlockJetPack, AV_DegradeBoostpack, Cost)																		
		 ElseIf (button == 1)									
                MenuType = 1																		                                   
	     ElseIf (button == 2)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf

 ElseIf MenuType == 3
		   
		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeHelmet)
		   Float PriceMult = GV_PriceMultArmor.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(180.0, 1900.0, AV_DegradeHelmet, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuApparelHelmet.show(CurrentAV, CredAmount, Cost)
		     
			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenHelmet, None, AV_DegradeHelmet, Cost)																		
		 ElseIf (button == 1)									
                MenuType = 1																		                                   
	     ElseIf (button == 2)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf

 ElseIf MenuType == 4
		   
		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeSuit)           
		   Float PriceMult = GV_PriceMultArmor.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(300.0, 3000.0, AV_DegradeSuit, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuApparelSpacesuit.show(CurrentAV, CredAmount, Cost)
		     
			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenSuit, None, AV_DegradeSuit, Cost)																		
		 ElseIf (button == 1)									
                MenuType = 1																		                                   
	     ElseIf (button == 2)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf
 
 ElseIf MenuType == 5		   
		button = MSG_RepairVendorMenuWeapons.show()	
	                                    
										If (button == 0)
                                           MenuType = 6																		
									ElseIf (button == 1)									
                                           MenuType = 7	
									ElseIf (button == 2)                                           
                                           MenuType = 8	                                    
									ElseIf (button == 3)                                           
                                           MenuType = 9	 
									ElseIf (button == 4)                                           
                                           MenuType = 10	 
									ElseIf (button == 5)                                           
                                           MenuType = 11
									ElseIf (button == 6)                                           
                                           MenuType = 12
									ElseIf (button == 7)                                           
                                           MenuType = 13
									ElseIf (button == 8)                                           
                                           MenuType = 14
									ElseIf (button == 9)                                           
                                           MenuType = 15
									ElseIf (button == 10)                                           
                                           MenuType = 16
									ElseIf (button == 11)                                           
                                           MenuType = 17
									ElseIf (button == 12)                                           
                                           MenuType = 18
									ElseIf (button == 13)                                           
                                           MenuType = 19
									ElseIf (button == 14)                                           
                                           MenuType = 20
									ElseIf (button == 15)                                           
                                           MenuType = 21
									ElseIf (button == 16)                                           
                                           MenuType = 22
									ElseIf (button == 17)                                           
                                           MenuType = 23
									ElseIf (button == 18)                                           
                                           MenuType = 24
									ElseIf (button == 19)                                           
                                           MenuType = 25
									ElseIf (button == 20)                                           
                                           MenuType = 26
									ElseIf (button == 21)                                           
                                           MenuType = 27
									ElseIf (button == 22)                                           
                                           MenuType = 28
									ElseIf (button == 23)                                           
                                           MenuType = 0
									ElseIf (button == 24)
										   ; Exit                                           
										   MenuOpened = False									                                                                            									
									 EndIf

 ElseIf MenuType == 6
		   
		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeHandgunAuto)  
		   Float PriceMult = GV_PriceMultWeapon.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(100.0, 750.0, AV_DegradeHandgunAuto, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuWeaponsHandgunAuto.show(CurrentAV, CredAmount, Cost)
		     
			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenHandgunAuto, None, AV_DegradeHandgunAuto, Cost)																		
		 ElseIf (button == 1)									
                MenuType = 5																		                                   
	     ElseIf (button == 2)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf

 ElseIf MenuType == 7
		   
		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeHandgunAutoLaser)  
		   Float PriceMult = GV_PriceMultWeapon.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(200.0, 850.0, AV_DegradeHandgunAutoLaser, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuWeaponsHandgunAutoLaser.show(CurrentAV, CredAmount, Cost)
		     
			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenHandgunAutoLaser, None, AV_DegradeHandgunAutoLaser, Cost)																		
		 ElseIf (button == 1)									
                MenuType = 5																		                                   
	     ElseIf (button == 2)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf

 ElseIf MenuType == 8
		   
		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeHandgunAutoParticle)  
		   Float PriceMult = GV_PriceMultWeapon.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(300.0, 950.0, AV_DegradeHandgunAutoParticle, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuWeaponsHandgunAutoParticle.show(CurrentAV, CredAmount, Cost)
		     
			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenHandgunAutoParticle, None, AV_DegradeHandgunAutoParticle, Cost)																		
		 ElseIf (button == 1)									
                MenuType = 5																		                                   
	     ElseIf (button == 2)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf

 ElseIf MenuType == 9 
		   
		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeHandgunSemi)  
		   Float PriceMult = GV_PriceMultWeapon.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(75.0, 500.0, AV_DegradeHandgunSemi, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuWeaponsHandgunSemi.show(CurrentAV, CredAmount, Cost)
		     
			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenHandgunSemi, None, AV_DegradeHandgunSemi, Cost)																		
		 ElseIf (button == 1)									
                MenuType = 5																		                                   
	     ElseIf (button == 2)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf

 ElseIf MenuType == 10 
		   
		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeHandgunSemiLaser)  
		   Float PriceMult = GV_PriceMultWeapon.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(175.0, 600.0, AV_DegradeHandgunSemiLaser, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuWeaponsHandgunSemiLaser.show(CurrentAV, CredAmount, Cost)
		     
			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenHandgunSemiLaser, None, AV_DegradeHandgunSemiLaser, Cost)																		
		 ElseIf (button == 1)									
                MenuType = 5																		                                   
	     ElseIf (button == 2)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf

 ElseIf MenuType == 11 
		   
		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeHandgunSemiParticle)  
		   Float PriceMult = GV_PriceMultWeapon.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(275.0, 700.0, AV_DegradeHandgunSemiParticle, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuWeaponsHandgunSemiParticle.show(CurrentAV, CredAmount, Cost)
		     
			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenHandgunSemiParticle, None, AV_DegradeHandgunSemiParticle, Cost)																		
		 ElseIf (button == 1)									
                MenuType = 5																		                                   
	     ElseIf (button == 2)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf

 ElseIf MenuType == 12
		   
		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeRifleAuto) 
		   Float PriceMult = GV_PriceMultWeapon.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(150.0, 1200.0, AV_DegradeRifleAuto, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuWeaponsRiflesAuto.show(CurrentAV, CredAmount, Cost)
		     
			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenRifleAuto, None, AV_DegradeRifleAuto, Cost)																		
		 ElseIf (button == 1)									
                MenuType = 5																		                                   
	     ElseIf (button == 2)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf

 ElseIf MenuType == 13
		   
		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeRifleAutoLaser) 
		   Float PriceMult = GV_PriceMultWeapon.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(250.0, 1300.0, AV_DegradeRifleAutoLaser, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuWeaponsRiflesAutoLaser.show(CurrentAV, CredAmount, Cost)
		     
			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenRifleAutoLaser, None, AV_DegradeRifleAutoLaser, Cost)																		
		 ElseIf (button == 1)									
                MenuType = 5																		                                   
	     ElseIf (button == 2)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf

 ElseIf MenuType == 14
		   
		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeRifleAutoParticle) 
		   Float PriceMult = GV_PriceMultWeapon.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(350.0, 1400.0, AV_DegradeRifleAutoParticle, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuWeaponsRiflesAutoParticle.show(CurrentAV, CredAmount, Cost)
		     
			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenRifleAutoParticle, None, AV_DegradeRifleAutoParticle, Cost)																		
		 ElseIf (button == 1)									
                MenuType = 5																		                                   
	     ElseIf (button == 2)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf

 ElseIf MenuType == 15
		   
		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeRifleSemi) 
		   Float PriceMult = GV_PriceMultWeapon.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(125.0, 1000.0, AV_DegradeRifleSemi, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuWeaponsRiflesSemi.show(CurrentAV, CredAmount, Cost)
		     
			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenRifleSemi, None, AV_DegradeRifleSemi, Cost)																		
		 ElseIf (button == 1)									
                MenuType = 5																		                                   
	     ElseIf (button == 2)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf

 ElseIf MenuType == 16
		   
		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeRifleSemiLaser) 
		   Float PriceMult = GV_PriceMultWeapon.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(225.0, 1100.0, AV_DegradeRifleSemiLaser, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuWeaponsRiflesSemiLaser.show(CurrentAV, CredAmount, Cost)
		     
			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenRifleSemiLaser, None, AV_DegradeRifleSemiLaser, Cost)																		
		 ElseIf (button == 1)									
                MenuType = 5																		                                   
	     ElseIf (button == 2)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf

 ElseIf MenuType == 17
		   
		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeRifleSemiParticle) 
		   Float PriceMult = GV_PriceMultWeapon.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(325.0, 1200.0, AV_DegradeRifleSemiParticle, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuWeaponsRiflesSemiParticle.show(CurrentAV, CredAmount, Cost)
		     
			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenRifleSemiParticle, None, AV_DegradeRifleSemiParticle, Cost)																		
		 ElseIf (button == 1)									
                MenuType = 5																		                                   
	     ElseIf (button == 2)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf

 ElseIf MenuType == 18
		   
		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeShotgun) 
		   Float PriceMult = GV_PriceMultWeapon.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(175.0, 1700.0, AV_DegradeShotgun, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuWeaponsShotguns.show(CurrentAV, CredAmount, Cost)
		     
			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenShotguns, None, AV_DegradeShotgun, Cost)																		
		 ElseIf (button == 1)									
                MenuType = 5																		                                   
	     ElseIf (button == 2)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf

 ElseIf MenuType == 19
		   
		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeShotgunParticle) 
		   Float PriceMult = GV_PriceMultWeapon.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(375.0, 2000.0, AV_DegradeShotgunParticle, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuWeaponsShotgunsParticle.show(CurrentAV, CredAmount, Cost)
		     
			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenShotgunsParticle, None, AV_DegradeShotgunParticle, Cost)																		
		 ElseIf (button == 1)									
                MenuType = 5																		                                   
	     ElseIf (button == 2)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf

 ElseIf MenuType == 20
		   
		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeSniper) 
		   Float PriceMult = GV_PriceMultWeapon.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(200.0, 2000.0, AV_DegradeSniper, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuWeaponsSniper.show(CurrentAV, CredAmount, Cost)
		     
			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenSniper, None, AV_DegradeSniper, Cost)																		
		 ElseIf (button == 1)									
                MenuType = 5																		                                   
	     ElseIf (button == 2)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf

 ElseIf MenuType == 21
		   
		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeSniperLaser) 
		   Float PriceMult = GV_PriceMultWeapon.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(300.0, 2100.0, AV_DegradeSniperLaser, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuWeaponsSniperLaser.show(CurrentAV, CredAmount, Cost)
		     
			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenSniperLaser, None, AV_DegradeSniperLaser, Cost)																		
		 ElseIf (button == 1)									
                MenuType = 5																		                                   
	     ElseIf (button == 2)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf

 ElseIf MenuType == 22
		   
		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeSniperParticle) 
		   Float PriceMult = GV_PriceMultWeapon.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(400.0, 2200.0, AV_DegradeSniperParticle, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuWeaponsSniperParticle.show(CurrentAV, CredAmount, Cost)
		     
			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenSniperParticle, None, AV_DegradeSniperParticle, Cost)																		
		 ElseIf (button == 1)									
                MenuType = 5																		                                   
	     ElseIf (button == 2)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf

 ElseIf MenuType == 23

		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeHeavy) 
		   Float PriceMult = GV_PriceMultWeapon.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(300.0, 2400.0, AV_DegradeHeavy, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuWeaponsMiniguns.show(CurrentAV, CredAmount, Cost)
		     
			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenHeavy, None, AV_DegradeHeavy, Cost)																		
		 ElseIf (button == 1)									
                MenuType = 5																		                                   
	     ElseIf (button == 2)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf

 ElseIf MenuType == 24

		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeHeavyParticle) 
		   Float PriceMult = GV_PriceMultWeapon.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(500.0, 2600.0, AV_DegradeHeavyParticle, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuWeaponsMinigunsParticle.show(CurrentAV, CredAmount, Cost)
		     
			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenHeavyParticle, None, AV_DegradeHeavyParticle, Cost)																		
		 ElseIf (button == 1)									
                MenuType = 5																		                                   
	     ElseIf (button == 2)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf

 ElseIf MenuType == 25
		   
		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeLauncher)  
		   Float PriceMult = GV_PriceMultWeapon.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(300.0, 2800.0, AV_DegradeLauncher, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuWeaponsLaunchers.show(CurrentAV, CredAmount, Cost)
		     
			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenExplosive, None, AV_DegradeLauncher, Cost)																		
		 ElseIf (button == 1)									
                MenuType = 5																		                                   
	     ElseIf (button == 2)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf

 ElseIf MenuType == 26
		   
		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeLauncherParticle)  
		   Float PriceMult = GV_PriceMultWeapon.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(500.0, 3000.0, AV_DegradeLauncherParticle, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuWeaponsLaunchersParticle.show(CurrentAV, CredAmount, Cost)
		     
			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenExplosiveParticle, None, AV_DegradeLauncherParticle, Cost)																		
		 ElseIf (button == 1)									
                MenuType = 5																		                                   
	     ElseIf (button == 2)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf

 ElseIf MenuType == 27
		   
		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeRifleEM) 
		   Float PriceMult = GV_PriceMultWeapon.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(300.0, 2100.0, AV_DegradeRifleEM, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuWeaponsRiflesEM.show(CurrentAV, CredAmount, Cost)
		     
			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenRifleEM, None, AV_DegradeRifleEM, Cost)																		
		 ElseIf (button == 1)									
                MenuType = 5																		                                   
	     ElseIf (button == 2)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf

 ElseIf MenuType == 28
		   
		   Float CurrentAV = PlayerRef.Getvalue(AV_DegradeMelee)  
		   Float PriceMult = GV_PriceMultWeapon.GetValue()
		   Float RepBonus = ReputationCalculator()
		   Float Cost = CalculateCost(100.0, 300.0, AV_DegradeMelee, PriceMult, RepBonus)		 		             
		   Int CredAmount = PlayerRef.GetItemCount(Credits)
		   button = MSG_RepairVendorMenuWeaponsMelee.show(CurrentAV, CredAmount, Cost)
		     
			 If (button == 0)
                RepairVendorMenu(GV_DebuffTokenMelee, None, AV_DegradeMelee, Cost)																		
		 ElseIf (button == 1)									
                MenuType = 5																		                                   
	     ElseIf (button == 2)                                           
				; Exit                                           
				MenuOpened = False									                                                                            									
		  EndIf

  EndIf
		   
EndWhile
EndFunction

Function RepairVendorMenu(GlobalVariable DebuffToken, GlobalVariable BlockBoostPack, ActorValue DegradeAV, Float RepairCost)
	    				   			             						 
		If PlayerRef.GetValue(DegradeAV) >= 100.0
		   Return
	 EndIf
						 
		If PlayerRef.GetItemCount(Credits) >= RepairCost
		   DebuffToken.SetValue(0)
		   PlayerRef.RestoreValue(DegradeAV, 999)
		   PlayerRef.RemoveItem(Credits, RepairCost as Int, False)
		   SFX_Repair.Play(PlayerRef, None, None)

		                If GV_BoostpackNeedsFuelToggle.GetValue() == 1
	                           If PlayerRef.GetValue(AV_BoostpackFuel) > 0.0
                                  BlockBoostPack.SetValue(0) 
                            Else
                                  BlockBoostPack.SetValue(1) 
			                EndIf
	                  Else 
		                   BlockBoostPack.SetValue(0)
	                 EndIf

	Else
			MSG_RepairVendorMenuNotEnoughCredits.Show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	 EndIf

EndFunction

Float Function CalculateCost(Float BaseMult, Float AddMult, ActorValue AV, Float PriceMult, Float RepBonus)
		 			 
           Float Base = BaseMult
           Float Add = AddMult
		   Float Discount = DiscountRepair()
		   Float FinalPrice = 0.0
		   
		   If PlayerRef.GetValue(AV) >= 100.0		              
		      Return Math.Round(FinalPrice)
	    Else
		      FinalPrice = Math.Round(((100 - PlayerRef.GetValue(AV)) * Base / Discount + Add) * PriceMult / RepBonus) 	              
		      Return Math.Round(FinalPrice)
		EndIf
		   
EndFunction	   	   