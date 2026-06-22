ScriptName SISA_LawEnforcementQuest extends Quest

Actor Property PlayerRef Auto Const
ActorValue Property Fame Auto Const
ActorValue Property Reputation Auto Const
Quest Property QuestFameAndRep Auto Const
MiscObject Property ArrestTokenItem_Ecliptic Auto Const
MiscObject Property ArrestTokenItem_EclipticLGNDR Auto Const
MiscObject Property ArrestTokenItem_Spacer Auto Const
MiscObject Property ArrestTokenItem_SpacerLGNDR Auto Const
MiscObject Property ArrestTokenItem_Varuun Auto Const
MiscObject Property ArrestTokenItem_VaruunLGNDR Auto Const
MiscObject Property ArrestTokenItem_CrimsonFleet Auto Const
MiscObject Property ArrestTokenItem_CrimsonFleetLGNDR Auto Const
MiscObject Property ArrestDeviceItem Auto Const
Faction Property Faction_CrimsonFleet Auto Const
Faction Property Faction_Ecliptic Auto Const
Faction Property Faction_Spacers Auto Const
Faction Property Faction_Varuun Auto Const
Keyword Property KWD_LawEnforcementLegendaryActor Auto Const
GlobalVariable Property GV_LawEnforcementCreditsRewardBase Auto Const
GlobalVariable Property GV_LawEnforcementCreditsRewardEcliptic Auto Const
GlobalVariable Property GV_LawEnforcementCreditsRewardCrimsonFleet Auto Const
GlobalVariable Property GV_LawEnforcementCreditsRewardSpacers Auto Const
GlobalVariable Property GV_LawEnforcementCreditsRewardVaruun Auto Const
GlobalVariable Property GV_LawEnforcementCaptureContPrice Auto Const
GlobalVariable Property GV_FameAndReputationToggle Auto Const
GlobalVariable Property FameOnKillDMG_CrimsonFleet Auto Const
GlobalVariable Property FameOnKillDMG_Ecliptic Auto Const
GlobalVariable Property FameOnKillDMG_Spacers Auto Const
GlobalVariable Property FameOnKillDMG_Varuun Auto Const
GlobalVariable Property RepOnKillDMG_CrimsonFleet Auto Const
GlobalVariable Property RepOnKillDMG_Ecliptic Auto Const
GlobalVariable Property RepOnKillDMG_Spacers Auto Const
GlobalVariable Property RepOnKillDMG_Varuun Auto Const
Message Property MSG_LawEnforcementMenu Auto Const
FormList Property AllArrestTokensList Auto Const
ReferenceAlias Property HomeShip Auto Const mandatory
ReferenceAlias Property PlayerShip Auto mandatory
LeveledItem Property LVL_LawEnforcementLGNDRReward Auto Const
Container Property ArrestDeviceItemContainer Auto Const
Perk Property LawEnforcementPerk Auto Const
ObjectReference Property Ref_DropToBlackHole Auto Const

Float CreditsRewardTotalMenu = 0.0
Float TotalArrestTagsLegendaryMenu = 0.0

Function LawEnforcementStart()         
		 PlayerRef.Addperk(LawEnforcementPerk, False)
EndFunction

Function LawEnforcementStop()
         
		 SpaceShipReference homeShipRef = HomeShip.GetShipRef()
         
		 PlayerRef.Removeperk(LawEnforcementPerk)
		 PlayerRef.RemoveItem(ArrestDeviceItem, 9999, True, None) 
		 PlayerRef.RemoveItem(AllArrestTokensList, 9999, True, None) 	 
		 homeShipRef.RemoveItem(ArrestDeviceItem, 9999, True, None) 
		 homeShipRef.RemoveItem(AllArrestTokensList, 9999, True, None)

EndFunction

Float Function FameAndRepCheck()

      Float FameAndRepEnabled = 1.0
      Float FameAndRepDisabled = 0.0

      If GV_FameAndReputationToggle.GetValue() == 1
         return FameAndRepEnabled
  Else
         return FameAndRepDisabled   
   EndIf

EndFunction

Float Function FameCalculator()
	  
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
	  
      If PlayerRef.GetValue(Reputation) < 10
         Return IfReputation00
  ElseIf PlayerRef.GetValue(Reputation) >= 10 && PlayerRef.GetValue(Reputation) < 20
         Return IfReputation10
  ElseIf PlayerRef.GetValue(Reputation) >= 20 && PlayerRef.GetValue(Reputation) < 30
         Return IfReputation20
  ElseIf PlayerRef.GetValue(Reputation) >= 30 && PlayerRef.GetValue(Reputation) < 40
         Return IfReputation30
  ElseIf PlayerRef.GetValue(Reputation) >= 40 && PlayerRef.GetValue(Reputation) < 50
         Return IfReputation40
  ElseIf PlayerRef.GetValue(Reputation) >= 50 && PlayerRef.GetValue(Reputation) < 60
         Return IfReputation50
  ElseIf PlayerRef.GetValue(Reputation) >= 60 && PlayerRef.GetValue(Reputation) < 70
         Return IfReputation60
  ElseIf PlayerRef.GetValue(Reputation) >= 70 && PlayerRef.GetValue(Reputation) < 80
         Return IfReputation70
  ElseIf PlayerRef.GetValue(Reputation) >= 80 && PlayerRef.GetValue(Reputation) < 90
         Return IfReputation80
  ElseIf PlayerRef.GetValue(Reputation) >= 90 && PlayerRef.GetValue(Reputation) < 100
         Return IfReputation90
  ElseIf PlayerRef.GetValue(Reputation) >= 100
         Return IfReputation100
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
      
	  ActorValue AVCheck = (QuestFameAndRep as SISA_FameAndRepMB).CheckForAV()
	  
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
   EndIf

EndFunction

Function BuyTags()
		 
		 MiscObject credits = Game.GetCredits() 		 
		 Int CaptureContainerPrice = GV_LawEnforcementCaptureContPrice.GetValueInt()
		 
		 PlayerRef.RemoveItem(Credits, CaptureContainerPrice, False) 
		 PlayerRef.Additem(ArrestDeviceItem, 5, False)	

EndFunction

Function SellTags()
		 
		 ActorValue AVCheck = (QuestFameAndRep as SISA_FameAndRepMB).CheckForAV()
		 Float IfFameAndRepActive = FameAndRepCheck()
		 SpaceShipReference homeShipRef = HomeShip.GetShipRef() 		        
		 MiscObject credits = Game.GetCredits()

		 Int TagsEcliptic = PlayerRef.GetItemCount(ArrestTokenItem_Ecliptic) + homeShipRef.GetItemCount(ArrestTokenItem_Ecliptic)
		 Int TagsEclipticLGNDR = PlayerRef.GetItemCount(ArrestTokenItem_EclipticLGNDR) + homeShipRef.GetItemCount(ArrestTokenItem_EclipticLGNDR)
		 Int TagsSpacer = PlayerRef.GetItemCount(ArrestTokenItem_Spacer) + homeShipRef.GetItemCount(ArrestTokenItem_Spacer) 
         Int TagsSpacerLGNDR = PlayerRef.GetItemCount(ArrestTokenItem_SpacerLGNDR) + homeShipRef.GetItemCount(ArrestTokenItem_SpacerLGNDR)	
		 Int TagsVaruun = PlayerRef.GetItemCount(ArrestTokenItem_Varuun) + homeShipRef.GetItemCount(ArrestTokenItem_Varuun)
         Int TagsVaruunLGNDR = PlayerRef.GetItemCount(ArrestTokenItem_VaruunLGNDR) + homeShipRef.GetItemCount(ArrestTokenItem_VaruunLGNDR)
		 Int TagsCrimsonFleet = PlayerRef.GetItemCount(ArrestTokenItem_CrimsonFleet) + homeShipRef.GetItemCount(ArrestTokenItem_CrimsonFleet)
         Int TagsCrimsonFleetLGNDR = PlayerRef.GetItemCount(ArrestTokenItem_CrimsonFleetLGNDR) + homeShipRef.GetItemCount(ArrestTokenItem_CrimsonFleetLGNDR)
		 
		 Float RepOnKillCF = math.round(RepOnKillDMG_CrimsonFleet.GetValue() * TagsCrimsonFleet * 1.20)
	     Float RepOnKillCFLGNDR = math.round(RepOnKillDMG_CrimsonFleet.GetValue() * TagsCrimsonFleetLGNDR * 1.8)
	     Float RepOnKillECL = math.round(RepOnKillDMG_Ecliptic.GetValue() * TagsEcliptic * 1.20)
	     Float RepOnKillECLLGNDR = math.round(RepOnKillDMG_Ecliptic.GetValue() * TagsEclipticLGNDR * 1.8)
	     Float RepOnKillSpace = math.round(RepOnKillDMG_Spacers.GetValue() * TagsSpacer * 1.20)
	     Float RepOnKillSpaceLGNDR = math.round(RepOnKillDMG_Spacers.GetValue() * TagsSpacerLGNDR * 1.8)
	     Float RepOnKillVar = math.round(RepOnKillDMG_Varuun.GetValue() * TagsVaruun * 1.20)
	     Float RepOnKillVarLGNDR = math.round(RepOnKillDMG_Varuun.GetValue() * TagsVaruunLGNDR * 1.8)
		 
		 Float FameAmount = FameCalculator()
	     Float FameOnKillCF = FameOnKillDMG_CrimsonFleet.GetValue() * TagsCrimsonFleet * 1.15 * FameAmount
	     Float FameOnKillCFLGNDR = FameOnKillDMG_CrimsonFleet.GetValue() * TagsCrimsonFleetLGNDR * 1.3 * FameAmount
	     Float FameOnKillECL = FameOnKillDMG_Ecliptic.GetValue() * TagsEcliptic * 1.15 * FameAmount
	     Float FameOnKillECLLGNDR = FameOnKillDMG_Ecliptic.GetValue() * TagsEclipticLGNDR * 1.3 * FameAmount
	     Float FameOnKillSpace = FameOnKillDMG_Spacers.GetValue() * TagsSpacer * 1.15 * FameAmount
	     Float FameOnKillSpaceLGNDR = FameOnKillDMG_Spacers.GetValue() * TagsSpacerLGNDR * 1.3 * FameAmount
	     Float FameOnKillVar = FameOnKillDMG_Varuun.GetValue() * TagsVaruun * 1.15 * FameAmount
	     Float FameOnKillVarLGNDR = FameOnKillDMG_Varuun.GetValue() * TagsVaruunLGNDR * 1.3 * FameAmount
		 		 
		 PlayerRef.RestoreValue(AVCheck, RepOnKillCF * IfFameAndRepActive)
		 PlayerRef.RestoreValue(AVCheck, RepOnKillCFLGNDR * IfFameAndRepActive)
		 PlayerRef.RestoreValue(AVCheck, RepOnKillECL * IfFameAndRepActive)
		 PlayerRef.RestoreValue(AVCheck, RepOnKillECLLGNDR * IfFameAndRepActive)
		 PlayerRef.RestoreValue(AVCheck, RepOnKillSpace * IfFameAndRepActive)
		 PlayerRef.RestoreValue(AVCheck, RepOnKillSpaceLGNDR * IfFameAndRepActive)
		 PlayerRef.RestoreValue(AVCheck, RepOnKillVar * IfFameAndRepActive)
		 PlayerRef.RestoreValue(AVCheck, RepOnKillVarLGNDR * IfFameAndRepActive)
		 
		 PlayerRef.RestoreValue(Fame, FameOnKillCF * IfFameAndRepActive)
		 PlayerRef.RestoreValue(Fame, FameOnKillCFLGNDR * IfFameAndRepActive)		 
		 PlayerRef.RestoreValue(Fame, FameOnKillECL * IfFameAndRepActive)		 
		 PlayerRef.RestoreValue(Fame, FameOnKillECLLGNDR * IfFameAndRepActive)
		 PlayerRef.RestoreValue(Fame, FameOnKillSpace * IfFameAndRepActive)
		 PlayerRef.RestoreValue(Fame, FameOnKillSpaceLGNDR * IfFameAndRepActive)		 
		 PlayerRef.RestoreValue(Fame, FameOnKillVar * IfFameAndRepActive)		 
		 PlayerRef.RestoreValue(Fame, FameOnKillVarLGNDR * IfFameAndRepActive)
		 
		 Utility.Wait(0.2)
		 
		 PlayerRef.RemoveItem(AllArrestTokensList, 9999, True, None) 
		 homeShipRef.RemoveItem(AllArrestTokensList, 9999, True, None) 
		 PlayerRef.Additem(Credits, CreditsRewardTotalMenu as Int, False)	
		 
		 While TotalArrestTagsLegendaryMenu > 0.0
		       PlayerRef.Additem(LVL_LawEnforcementLGNDRReward, 1, False)
               TotalArrestTagsLegendaryMenu -= 1.0
		 EndWhile   
		 
		 CreditsRewardTotalMenu = 0.0
         TotalArrestTagsLegendaryMenu = 0.0

EndFunction

Function Arrest(ObjectReference akTargetRef)
         	     		 
		 SpaceShipReference homeShipRef = HomeShip.GetShipRef()
		 Actor akTarget = akTargetRef as Actor 
		 akTarget.BlockActivation(True, True)					    											            				                        
				  If akTarget.IsInFaction(Faction_Ecliptic) == True
                     AddPrisoner(akTarget, ArrestTokenItem_EclipticLGNDR, ArrestTokenItem_Ecliptic, homeShipRef)
			  ElseIf akTarget.IsInFaction(Faction_Spacers) == True
                     AddPrisoner(akTarget, ArrestTokenItem_SpacerLGNDR, ArrestTokenItem_Spacer, homeShipRef)
			  ElseIf akTarget.IsInFaction(Faction_Varuun) == True
                     AddPrisoner(akTarget, ArrestTokenItem_VaruunLGNDR, ArrestTokenItem_Varuun, homeShipRef)
			  ElseIf akTarget.IsInFaction(Faction_CrimsonFleet) == True
                     AddPrisoner(akTarget, ArrestTokenItem_CrimsonFleetLGNDR, ArrestTokenItem_CrimsonFleet, homeShipRef)
			   EndIf	   					 					 					 					          
		 PlayerRef.RemoveItem(ArrestDeviceItem, 1, False, None)
		 akTarget.RemoveAllItems(homeShipRef, False, False) 
		 Utility.Wait(1.0)
		 akTarget.Kill(None)
		 akTarget.Placeatme(ArrestDeviceItemContainer, 1, False, false, true, none, none, True)
		 akTarget.MoveTo(Ref_DropToBlackHole, 0.0, 0.0, 0.0, True, False)
		 akTarget.BlockActivation(False, False)

EndFunction

Function AddPrisoner(Actor akTarget, MiscObject PrisonerLGNDR, MiscObject PrisonerCommon, SpaceShipReference ActiveShip)
		 		         
		 If akTarget.Haskeyword(KWD_LawEnforcementLegendaryActor) == True
			akTarget.Removekeyword(KWD_LawEnforcementLegendaryActor)
			ActiveShip.Additem(PrisonerLGNDR, 1, False)	
	  Else
			ActiveShip.Additem(PrisonerCommon, 1, False)	
      EndIf
			
EndFunction

Function LawEnforcementMenu(Int MenuType = 0, Int Button = 0, Bool MenuOpened = True)
  
  While MenuOpened		 			 
		 
		 If Button == -1		 
                
	 ElseIf MenuType == 0
		    
		    SpaceShipReference homeShipRef = HomeShip.GetShipRef()        
		    MiscObject credits = Game.GetCredits()
			
			Int CaptureContainerPrice = GV_LawEnforcementCaptureContPrice.GetValueInt()		 
		    
			Float CreditsRewardBase = GV_LawEnforcementCreditsRewardBase.GetValueInt()
		    Float CreditsRewardMultEcliptic = GV_LawEnforcementCreditsRewardEcliptic.GetValue()
		    Float CreditsRewardMultEclipticLGNDR = GV_LawEnforcementCreditsRewardEcliptic.GetValue()
		    Float CreditsRewardMultCrimsonFleet = GV_LawEnforcementCreditsRewardCrimsonFleet.GetValue()
		    Float CreditsRewardMultCrimsonFleetLGNDR = GV_LawEnforcementCreditsRewardCrimsonFleet.GetValue()
		    Float CreditsRewardMultSpacers = GV_LawEnforcementCreditsRewardSpacers.GetValue()
		    Float CreditsRewardMultSpacersLGNDR = GV_LawEnforcementCreditsRewardSpacers.GetValue()
		    Float CreditsRewardMultVaruun = GV_LawEnforcementCreditsRewardVaruun.GetValue()		 
            Float CreditsFromRep = ReputationCalculator()
            		    
			Float CreditsRewardEcliptic = 0.0		 
		    Float CreditsRewardSpacer = 0.0		 		 
		    Float CreditsRewardVaruun = 0.0
		    Float CreditsRewardCrimsonFleet = 0.0
		    Float CreditsRewardTotal = 0.0
		 
		    Float TotalArrestTagsEcliptic = 0.0
		    Float TotalArrestTagsEclipticLGNDR = 0.0
		    Float TotalArrestTagsSpacer = 0.0
		    Float TotalArrestTagsSpacerLGNDR = 0.0
		    Float TotalArrestTagsVaruun = 0.0
		    Float TotalArrestTagsVaruunLGNDR = 0.0
		    Float TotalArrestTagsCrimsonFleet = 0.0
		    Float TotalArrestTagsCrimsonFleetLGNDR = 0.0
		    Float TotalArrestTagsLegendary = 0.0
		 		 
		    TotalArrestTagsEcliptic = PlayerRef.GetItemCount(ArrestTokenItem_Ecliptic) + homeShipRef.GetItemCount(ArrestTokenItem_Ecliptic) + PlayerRef.GetItemCount(ArrestTokenItem_EclipticLGNDR) + homeShipRef.GetItemCount(ArrestTokenItem_EclipticLGNDR)
		    TotalArrestTagsEclipticLGNDR = PlayerRef.GetItemCount(ArrestTokenItem_EclipticLGNDR) + homeShipRef.GetItemCount(ArrestTokenItem_EclipticLGNDR)
		    TotalArrestTagsSpacer = PlayerRef.GetItemCount(ArrestTokenItem_Spacer) + homeShipRef.GetItemCount(ArrestTokenItem_Spacer) + PlayerRef.GetItemCount(ArrestTokenItem_SpacerLGNDR) + homeShipRef.GetItemCount(ArrestTokenItem_SpacerLGNDR)	 
            TotalArrestTagsSpacerLGNDR = PlayerRef.GetItemCount(ArrestTokenItem_SpacerLGNDR) + homeShipRef.GetItemCount(ArrestTokenItem_SpacerLGNDR)	
		    TotalArrestTagsVaruun = PlayerRef.GetItemCount(ArrestTokenItem_Varuun) + homeShipRef.GetItemCount(ArrestTokenItem_Varuun) + PlayerRef.GetItemCount(ArrestTokenItem_VaruunLGNDR) + homeShipRef.GetItemCount(ArrestTokenItem_VaruunLGNDR)	 
            TotalArrestTagsVaruunLGNDR = PlayerRef.GetItemCount(ArrestTokenItem_VaruunLGNDR) + homeShipRef.GetItemCount(ArrestTokenItem_VaruunLGNDR)
		    TotalArrestTagsCrimsonFleet = PlayerRef.GetItemCount(ArrestTokenItem_CrimsonFleet) + homeShipRef.GetItemCount(ArrestTokenItem_CrimsonFleet)	+ PlayerRef.GetItemCount(ArrestTokenItem_CrimsonFleetLGNDR) + homeShipRef.GetItemCount(ArrestTokenItem_CrimsonFleetLGNDR)	 	 
            TotalArrestTagsCrimsonFleetLGNDR = PlayerRef.GetItemCount(ArrestTokenItem_CrimsonFleetLGNDR) + homeShipRef.GetItemCount(ArrestTokenItem_CrimsonFleetLGNDR)
		    TotalArrestTagsLegendary = TotalArrestTagsEclipticLGNDR + TotalArrestTagsSpacerLGNDR + TotalArrestTagsVaruunLGNDR + TotalArrestTagsCrimsonFleetLGNDR 
		    TotalArrestTagsLegendaryMenu = TotalArrestTagsLegendary
			
			CreditsRewardEcliptic = TotalArrestTagsEcliptic * CreditsRewardBase * CreditsRewardMultEcliptic
		    CreditsRewardSpacer = TotalArrestTagsSpacer * CreditsRewardBase * CreditsRewardMultSpacers		 
		    CreditsRewardVaruun = TotalArrestTagsVaruun * CreditsRewardBase * CreditsRewardMultVaruun	 
		    CreditsRewardCrimsonFleet = TotalArrestTagsCrimsonFleet * CreditsRewardBase * CreditsRewardMultCrimsonFleet		 
		 
		    CreditsRewardTotal = (CreditsRewardEcliptic + CreditsRewardSpacer + CreditsRewardVaruun + CreditsRewardCrimsonFleet) * CreditsFromRep
		    CreditsRewardTotalMenu = CreditsRewardTotal			
			
			Button = MSG_LawEnforcementMenu.Show(TotalArrestTagsCrimsonFleet, TotalArrestTagsEcliptic, TotalArrestTagsSpacer, TotalArrestTagsVaruun, TotalArrestTagsLegendary, CreditsRewardTotal, TotalArrestTagsLegendary, CaptureContainerPrice)	 
                   
				   If Button == 0
	                  
					  SellTags()			   
			          MenuOpened = False
			   
			   ElseIf Button == 1 
                      
					  If PlayerRef.GetItemCount(credits) >= CaptureContainerPrice
					     BuyTags()	
                   EndIf     			   	   			   
			   
			   ElseIf Button == 2 
				      ; Exit
				      MenuOpened = False
				EndIf
      EndIf

EndWhile
EndFunction