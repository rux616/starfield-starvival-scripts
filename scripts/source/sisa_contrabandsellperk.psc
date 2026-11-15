ScriptName SISA_ContrabandSellPerk Extends Perk Const hidden

Actor Property PlayerRef Auto Const
ActorValue Property AV_CrimsonFleet Auto Const
Quest Property QuestFameAndRep Auto Const
Message Property MSG_SellContrabandMenu Auto Const
GlobalVariable Property ContrabandSellMultNeon Auto Const
GlobalVariable Property ContrabandSellMultAkila Auto Const
GlobalVariable Property ContrabandSellMultNewAtlantis Auto Const
GlobalVariable Property ContrabandSellMultCydonia Auto Const
GlobalVariable Property ContrabandSellMultHopeTown Auto Const
GlobalVariable Property ContrabandSellMultGagarin Auto Const
GlobalVariable Property ContrabandSellMultNewHomestead Auto Const
GlobalVariable Property ContrabandSellMultAurora Auto Const
GlobalVariable Property ContrabandSellMultAuroraNone Auto Const
GlobalVariable Property ContrabandSellMultTheDen Auto Const
GlobalVariable Property ContrabandSellMultTheKey Auto Const
GlobalVariable Property ContrabandSellMultRedMile Auto Const
GlobalVariable Property ContrabandSellPerkBonus Auto Const
GlobalVariable Property ContrabandSellLowerRep Auto Const
GlobalVariable Property ContrabandSellTheKey Auto Const
GlobalVariable Property FameAndRepToggle Auto Const
Potion Property POTI_Contraband_Aurora Auto Const
MiscObject Property MSC_Contraband_BlackMarketAntiques Auto Const
MiscObject Property MSC_Contraband_MechComponents Auto Const
MiscObject Property MSC_Contraband_SentientAIAdapters Auto Const
MiscObject Property MSC_Contraband_StolenArtwork Auto Const
MiscObject Property MSC_Contraband_HarvestedOrgans Auto Const
MiscObject Property MSC_Contraband_VaruunHeretigWritings Auto Const
MiscObject Property MSC_Contraband_XenoWarfareTech Auto Const
MiscObject Property Credits Auto Const
Location Property LocNeon Auto Const
Location Property LocAkila Auto Const
Location Property LocNewAtlantis Auto Const
Location Property LocCydonia Auto Const
Location Property LocHopeTown Auto Const
Location Property LocGagarin Auto Const
Location Property LocNewHomestead Auto Const
Location Property LocTheDen Auto Const
Location Property LocThekey Auto Const
Location Property LocRedMile Auto Const
Faction Property CrimsonFleetFaction Auto Const

Function SellContrabandKiosk_00(ObjectReference akTargetRef, Actor akActor)    
		 SellContraband(akTargetRef)
EndFunction

Function SellContrabandNPC_01(ObjectReference akTargetRef, Actor akActor)    
		 SellContraband(akTargetRef)
EndFunction

Function SellContrabandCF_02(ObjectReference akTargetRef, Actor akActor)    
		 SellContraband(akTargetRef)
EndFunction

Function SellContraband(ObjectReference akTargetRef, Int MenuType = 0, Int Button = 0)

         Int CreditsBonusNeon = 0    
         Int CreditsBonusAkila = 0
         Int CreditsBonusNewAtlantis = 0
         Int CreditsBonusCydonia = 0    
         Int CreditsBonusHopeTown = 0
         Int CreditsBonusGagarin = 0    
         Int CreditsBonusNewHomestead = 0 
         Int CreditsBonusTheDen = 0 
         Int CreditsBonusTheKey = 0 
         Int CreditsBonusRedMile = 0 

         Int RewardBlackMarketAntiques = 0
         Int RewardMechComponents = 0
         Int RewardSentientAIAdapters = 0
         Int RewardStolenArtwork = 0
         Int RewardHarvestedOrgans = 0
         Int RewardVaruunHeretigWritings = 0
         Int RewardXenoWarfareTech = 0
         Int RewardAurora = 0
         Int RewardAll = 0
                  
		 Int RewardFinal = 0
		 
		 Int AvailableContraband01 = PlayerRef.GetItemCount(MSC_Contraband_BlackMarketAntiques) 
		 Int AvailableContraband02 = PlayerRef.GetItemCount(MSC_Contraband_MechComponents) 
		 Int AvailableContraband03 = PlayerRef.GetItemCount(MSC_Contraband_SentientAIAdapters) 
		 Int AvailableContraband04 = PlayerRef.GetItemCount(MSC_Contraband_StolenArtwork) 
		 Int AvailableContraband05 = PlayerRef.GetItemCount(MSC_Contraband_HarvestedOrgans) 
		 Int AvailableContraband06 = PlayerRef.GetItemCount(MSC_Contraband_VaruunHeretigWritings) 
		 Int AvailableContraband07 = PlayerRef.GetItemCount(MSC_Contraband_XenoWarfareTech) 
		 Int AvailableContraband08 = PlayerRef.GetItemCount(POTI_Contraband_Aurora) 
		 Int TotalAvailable = AvailableContraband01 + AvailableContraband02 + AvailableContraband03 + AvailableContraband04 + AvailableContraband05 + AvailableContraband06 + AvailableContraband07 + AvailableContraband08
		 
         GlobalVariable AuroraLocationBonus = CheckForLocation()
	                
		 RewardBlackMarketAntiques = Math.Round(MSC_Contraband_BlackMarketAntiques.GetGoldValue() * PlayerRef.GetItemCount(MSC_Contraband_BlackMarketAntiques))
		 RewardMechComponents = Math.Round(MSC_Contraband_MechComponents.GetGoldValue() * PlayerRef.GetItemCount(MSC_Contraband_MechComponents))
		 RewardSentientAIAdapters = Math.Round(MSC_Contraband_SentientAIAdapters.GetGoldValue() * PlayerRef.GetItemCount(MSC_Contraband_SentientAIAdapters))
		 RewardStolenArtwork = Math.Round(MSC_Contraband_StolenArtwork.GetGoldValue() * PlayerRef.GetItemCount(MSC_Contraband_StolenArtwork))
		 RewardHarvestedOrgans = Math.Round(MSC_Contraband_HarvestedOrgans.GetGoldValue() * PlayerRef.GetItemCount(MSC_Contraband_HarvestedOrgans))
		 RewardVaruunHeretigWritings = Math.Round(MSC_Contraband_VaruunHeretigWritings.GetGoldValue() * PlayerRef.GetItemCount(MSC_Contraband_VaruunHeretigWritings))
		 RewardXenoWarfareTech = Math.Round(MSC_Contraband_XenoWarfareTech.GetGoldValue() * PlayerRef.GetItemCount(MSC_Contraband_XenoWarfareTech))
		 RewardAurora = Math.Round(POTI_Contraband_Aurora.GetGoldValue() * PlayerRef.GetItemCount(POTI_Contraband_Aurora) * AuroraLocationBonus.GetValue())
         RewardAll = RewardBlackMarketAntiques + RewardMechComponents + RewardSentientAIAdapters + RewardStolenArtwork + RewardHarvestedOrgans + RewardVaruunHeretigWritings + RewardXenoWarfareTech + RewardAurora  
		 
		 Float ReputationCalc = ReputationCalculator()		 
				 
				 If PlayerRef.IsInLocation(LocNeon)
                    CreditsBonusNeon = Math.Round(RewardAll * ContrabandSellPerkBonus.GetValue() * ContrabandSellMultNeon.GetValue() * ReputationCalc)             
			        RewardFinal = CreditsBonusNeon
			 ElseIf PlayerRef.IsInLocation(LocAkila)
			        CreditsBonusAkila = Math.Round(RewardAll * ContrabandSellPerkBonus.GetValue() * ContrabandSellMultAkila.GetValue() * ReputationCalc)             
			        RewardFinal = CreditsBonusAkila
			 ElseIf PlayerRef.IsInLocation(LocNewAtlantis)
			        CreditsBonusNewAtlantis = Math.Round(RewardAll * ContrabandSellPerkBonus.GetValue() * ContrabandSellMultNewAtlantis.GetValue() * ReputationCalc)  			  
			        RewardFinal = CreditsBonusNewAtlantis
			 ElseIf PlayerRef.IsInLocation(LocCydonia)
			        CreditsBonusCydonia = Math.Round(RewardAll * ContrabandSellPerkBonus.GetValue() * ContrabandSellMultCydonia.GetValue() * ReputationCalc) 			  
			        RewardFinal = CreditsBonusCydonia
			 ElseIf PlayerRef.IsInLocation(LocHopeTown)
			        CreditsBonusHopeTown = Math.Round(RewardAll * ContrabandSellPerkBonus.GetValue() * ContrabandSellMultHopeTown.GetValue() * ReputationCalc) 			  
			        RewardFinal = CreditsBonusHopeTown
			 ElseIf PlayerRef.IsInLocation(LocGagarin)
			        CreditsBonusGagarin = Math.Round(RewardAll * ContrabandSellPerkBonus.GetValue() * ContrabandSellMultGagarin.GetValue() * ReputationCalc)  			  
			        RewardFinal = CreditsBonusGagarin
			 ElseIf PlayerRef.IsInLocation(LocNewHomestead)
			        CreditsBonusNewHomestead = Math.Round(RewardAll * ContrabandSellPerkBonus.GetValue() * ContrabandSellMultNewHomestead.GetValue() * ReputationCalc) 				  			  			  
			        RewardFinal = CreditsBonusNewHomestead
			 ElseIf PlayerRef.IsInLocation(LocTheDen)
			        CreditsBonusTheDen = Math.Round(RewardAll * ContrabandSellPerkBonus.GetValue() * ContrabandSellMultTheDen.GetValue() * ReputationCalc) 				  			  			  
			        RewardFinal = CreditsBonusTheDen
			 ElseIf PlayerRef.IsInLocation(LocThekey)
			        CreditsBonusTheKey = Math.Round(RewardAll * ContrabandSellPerkBonus.GetValue() * ContrabandSellMultTheKey.GetValue() * ReputationCalc) 				  			  			  
			        RewardFinal = CreditsBonusTheKey
			 ElseIf PlayerRef.IsInLocation(LocRedMile)
			        CreditsBonusRedMile = Math.Round(RewardAll * ContrabandSellPerkBonus.GetValue() * ContrabandSellMultRedMile.GetValue() * ReputationCalc) 				  			  			  
			        RewardFinal = CreditsBonusRedMile
			  EndIf 
             		 			 
		 If Button == -1		 
     
	 ElseIf MenuType == 0
		    			
			Button = MSG_SellContrabandMenu.Show(TotalAvailable, RewardFinal, 0, 0, 0, 0, 0, 0, 0)	 
  			ActorValue AVCheck = (QuestFameAndRep as SISA_FameAndRepMB).CheckForAV()  	   
				   
				   If Button == 0
                      PlayerRef.Removeitem(MSC_Contraband_BlackMarketAntiques, 999, True, None)
                      PlayerRef.Removeitem(MSC_Contraband_MechComponents, 999, True, None)
                      PlayerRef.Removeitem(MSC_Contraband_SentientAIAdapters, 999, True, None)
                      PlayerRef.Removeitem(MSC_Contraband_StolenArtwork, 999, True, None)
                      PlayerRef.Removeitem(MSC_Contraband_HarvestedOrgans, 999, True, None)
                      PlayerRef.Removeitem(MSC_Contraband_VaruunHeretigWritings, 999, True, None)
                      PlayerRef.Removeitem(MSC_Contraband_XenoWarfareTech, 999, True, None)
                      PlayerRef.Removeitem(POTI_Contraband_Aurora, 999, True, None)
					  PlayerRef.Additem(Credits, RewardFinal, False)

                       If FameAndRepToggle.GetValue() == 1
                          Float RepDMGMult = ContrabandSellLowerRep.GetValue()
                          Float RepDMGMultTheKey = ContrabandSellTheKey.GetValue()
						  Float RepDMGTotal = RepDMGMult * TotalAvailable 
						  Float RepDMGTotalTheKey = RepDMGMultTheKey * TotalAvailable
						    If PlayerRef.IsInFaction(CrimsonFleetFaction)
						         If PlayerRef.IsInLocation(LocThekey)
							        PlayerRef.RestoreValue(AV_CrimsonFleet, RepDMGTotalTheKey)
                              Else
						            PlayerRef.DamageValue(AVCheck, RepDMGTotal)
							        PlayerRef.RestoreValue(AV_CrimsonFleet, RepDMGTotalTheKey)
						      EndIf
						 Else
						       PlayerRef.DamageValue(AVCheck, RepDMGTotal)
					     EndIf
					EndIf
			   ElseIf Button == 1 
					  ; Exit
				EndIf
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
      
 If PlayerRef.IsInFaction(CrimsonFleetFaction)  
      If PlayerRef.GetValue(AV_CrimsonFleet) < 10
         Return IfReputation00
  ElseIf PlayerRef.GetValue(AV_CrimsonFleet) >= 10 && PlayerRef.GetValue(AV_CrimsonFleet) < 20
         Return IfReputation10
  ElseIf PlayerRef.GetValue(AV_CrimsonFleet) >= 20 && PlayerRef.GetValue(AV_CrimsonFleet) < 30
         Return IfReputation20
  ElseIf PlayerRef.GetValue(AV_CrimsonFleet) >= 30 && PlayerRef.GetValue(AV_CrimsonFleet) < 40
         Return IfReputation30
  ElseIf PlayerRef.GetValue(AV_CrimsonFleet) >= 40 && PlayerRef.GetValue(AV_CrimsonFleet) < 50
         Return IfReputation40
  ElseIf PlayerRef.GetValue(AV_CrimsonFleet) >= 50 && PlayerRef.GetValue(AV_CrimsonFleet) < 60
         Return IfReputation50
  ElseIf PlayerRef.GetValue(AV_CrimsonFleet) >= 60 && PlayerRef.GetValue(AV_CrimsonFleet) < 70
         Return IfReputation60
  ElseIf PlayerRef.GetValue(AV_CrimsonFleet) >= 70 && PlayerRef.GetValue(AV_CrimsonFleet) < 80
         Return IfReputation70
  ElseIf PlayerRef.GetValue(AV_CrimsonFleet) >= 80 && PlayerRef.GetValue(AV_CrimsonFleet) < 90
         Return IfReputation80
  ElseIf PlayerRef.GetValue(AV_CrimsonFleet) >= 90 && PlayerRef.GetValue(AV_CrimsonFleet) < 100
         Return IfReputation90
  ElseIf PlayerRef.GetValue(AV_CrimsonFleet) >= 100
         Return IfReputation100
   EndIf
Else
    Return IfReputation50
EndIf

EndFunction

GlobalVariable Function CheckForLocation()
            
			GlobalVariable AuroraBonus = ContrabandSellMultAurora
			GlobalVariable AuroraNoBonus = ContrabandSellMultAuroraNone
					
				 If PlayerRef.IsInLocation(LocAkila) || PlayerRef.IsInLocation(LocNewAtlantis) || PlayerRef.IsInLocation(LocCydonia) || PlayerRef.IsInLocation(LocHopeTown) || PlayerRef.IsInLocation(LocGagarin) || PlayerRef.IsInLocation(LocNewHomestead) || PlayerRef.IsInLocation(LocTheDen) || PlayerRef.IsInLocation(LocThekey) || PlayerRef.IsInLocation(LocRedMile)
                    Return AuroraBonus            
             Else
			        Return AuroraNoBonus				  			  			  
			  EndIf 

EndFunction