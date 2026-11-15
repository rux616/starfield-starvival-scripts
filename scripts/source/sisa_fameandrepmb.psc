Scriptname SISA_FameAndRepMB extends Quest

Actor Property PlayerRef Auto Const

ActorValue Property Fame Auto Const
ActorValue Property Reputation Auto Const

ActorValue Property AV_ReputationUC Auto Const
ActorValue Property AV_ReputationFC Auto Const
ActorValue Property AV_ReputationCF Auto Const

FormList Property List_UCLocations Auto Const
FormList Property List_FCLocations Auto Const
FormList Property List_CFLocations Auto Const

GlobalVariable Property MissionBoardBounty01Reward Auto
GlobalVariable Property MissionBoardBounty02Reward Auto
GlobalVariable Property MissionBoardBounty03Reward Auto
GlobalVariable Property MissionBoardBounty04Reward Auto
GlobalVariable Property MissionBoardBountySpace01Reward Auto
GlobalVariable Property MissionBoardBountySpace01RewardCOPY0001 Auto
GlobalVariable Property MissionBoardBountySpace02Reward Auto
GlobalVariable Property MissionBoardBountySpace03Reward Auto
GlobalVariable Property MissionBoardBountySpace04Reward Auto
GlobalVariable Property MissionBoardBountySpace05Reward Auto
GlobalVariable Property MissionBoardBountySpace06Reward Auto
GlobalVariable Property MissionBoardHunt01Reward Auto
GlobalVariable Property MissionBoardHack01Reward Auto
GlobalVariable Property MissionBoardPiracy01Reward Auto
GlobalVariable Property MissionBoardPiracy02Reward Auto
GlobalVariable Property MissionBoardPiracy03Reward Auto
GlobalVariable Property MissionBoardPlantEvidence01Reward Auto
GlobalVariable Property MissionBoardRescue01Reward Auto
GlobalVariable Property MissionBoardSabotage01Reward Auto
GlobalVariable Property MissionBoardSmuggle01Reward Auto
GlobalVariable Property MissionBoardSmuggle01RewardCOPY0004 Auto
GlobalVariable Property MissionBoardSmuggle01RewardCOPY0005 Auto
GlobalVariable Property MissionBoardSteal01Reward Auto
GlobalVariable Property MissionBoardSteal02Reward Auto
GlobalVariable Property MissionBoardSurvey01Reward Auto
GlobalVariable Property MissionBoardSurvey02Reward Auto
GlobalVariable Property MissionBoardSurvey03Reward Auto
GlobalVariable Property MissionBoardSurvey04Reward Auto
GlobalVariable Property MissionBoardSurveyTraitRewardBase Auto
GlobalVariable Property MissionBoardCargo01Reward Auto
GlobalVariable Property MissionBoardCargo01RewardCOPY0000 Auto
GlobalVariable Property MissionBoardCargo01RewardCOPY0001 Auto
GlobalVariable Property MissionBoardCargo02Reward Auto
GlobalVariable Property MissionBoardPassenger01Reward Auto
GlobalVariable Property MissionBoardPassenger01RewardCOPY0000 Auto
GlobalVariable Property MissionBoardPassenger01RewardCOPY0001 Auto
GlobalVariable Property MissionBoardPassenger01RewardCOPY0002 Auto
GlobalVariable Property MissionBoardPassenger02Reward Auto
GlobalVariable Property MissionBoardPassenger02RewardCOPY0000 Auto
GlobalVariable Property MissionBoardPassenger03Reward Auto
GlobalVariable Property MissionBoardPassenger05Reward Auto
GlobalVariable Property MissionBoardPassenger06Reward Auto
GlobalVariable Property MissionBoardPassenger07Reward Auto
GlobalVariable Property MissionBoardPassenger08Reward Auto
GlobalVariable Property MissionBoardPassenger09Reward Auto
GlobalVariable Property MissionBoardPassenger10Reward Auto
GlobalVariable Property MissionBoardPassenger11Reward Auto
GlobalVariable Property MissionBoardPassenger12Reward Auto
GlobalVariable Property MissionBoardSupplyRewardBaseExoticORG Auto
GlobalVariable Property MissionBoardSupplyRewardBaseRareORG Auto
GlobalVariable Property MissionBoardSupplyRewardBaseUncommonORG Auto
GlobalVariable Property MissionBoardSupplyRewardBaseCommonORG Auto
GlobalVariable Property MissionBoardSupplyRewardBaseMFG03 Auto
GlobalVariable Property MissionBoardSupplyRewardBaseMFG02 Auto
GlobalVariable Property MissionBoardSupplyRewardBaseMFG01 Auto
GlobalVariable Property MissionBoardSupplyRewardBaseRare Auto
GlobalVariable Property MissionBoardSupplyRewardBaseUncommon Auto
GlobalVariable Property MissionBoardSupplyRewardBaseCommon Auto
GlobalVariable Property GV_PercentageTracker_Fame Auto Const
GlobalVariable Property GV_PercentageTracker_Reputation Auto Const
GlobalVariable Property GV_PercentageTracker_ReputationUC Auto Const
GlobalVariable Property GV_PercentageTracker_ReputationFC Auto Const
GlobalVariable Property GV_PercentageTracker_ReputationCF Auto Const
GlobalVariable Property GV_SupplyRewardMultStore Auto Const
GlobalVariable Property GV_MissionBoardRewardMult_Bounty Auto Const
GlobalVariable Property GV_MissionBoardRewardMult_Hunt Auto Const
GlobalVariable Property GV_MissionBoardRewardMult_Piracy Auto Const
GlobalVariable Property GV_MissionBoardRewardMult_Smuggle Auto Const
GlobalVariable Property GV_MissionBoardRewardMult_Plant Auto Const
GlobalVariable Property GV_MissionBoardRewardMult_Steal Auto Const
GlobalVariable Property GV_MissionBoardRewardMult_Sabotage Auto Const
GlobalVariable Property GV_MissionBoardRewardMult_Hack Auto Const
GlobalVariable Property GV_MissionBoardRewardMult_Rescue Auto Const
GlobalVariable Property GV_MissionBoardRewardMult_Survey Auto Const
GlobalVariable Property GV_MissionBoardRewardMult_Cargo Auto Const
GlobalVariable Property GV_MissionBoardRewardMult_Supply Auto Const
GlobalVariable Property GV_MissionBoardRewardMult_Passenger Auto Const

Spell Property FameSpellPerkPoints Auto Const
Spell Property FameSpellRewards Auto Const
Spell Property FameSpellQuests Auto Const
Spell Property FameSpellQuestsSide Auto Const
Spell Property RepRanksMSGSpell Auto Const
Spell Property ReputationStatusMenuSpell Auto Const
Spell Property IntimidationSpell Auto Const
Spell Property PositiveSpell Auto Const

Perk Property ReputationPerk Auto Const
Perk Property ReputationPerk_UC Auto Const
Perk Property ReputationPerk_FCNew Auto Const
Perk Property ReputationPerk_CF Auto Const
Perk Property ReputationClearancePerk Auto Const

sq_playershipscript Property SQ_PlayerShip Auto

Function FameAndRepStart()
		 
		 PlayerRef.RestoreValue(Fame, 999)
		 PlayerRef.DamageValue(Fame, 999)		 
		 PlayerRef.RestoreValue(Reputation, 999)
		 PlayerRef.DamageValue(Reputation, 50)         
		 PlayerRef.RestoreValue(AV_ReputationUC, 999)
		 PlayerRef.DamageValue(AV_ReputationUC, 50)
		 PlayerRef.RestoreValue(AV_ReputationFC, 999)
		 PlayerRef.DamageValue(AV_ReputationFC, 50)
		 PlayerRef.RestoreValue(AV_ReputationCF, 999)
		 PlayerRef.DamageValue(AV_ReputationCF, 50)
		 Utility.Wait(0.5) 
		 PlayerRef.AddSpell(FameSpellPerkPoints, False)
		 PlayerRef.AddSpell(FameSpellQuests, False)
		 PlayerRef.AddSpell(FameSpellQuestsSide, False)
		 PlayerRef.AddSpell(FameSpellRewards, False)
		 PlayerRef.AddSpell(IntimidationSpell, False)
		 PlayerRef.AddSpell(PositiveSpell, False)
		 PlayerRef.AddSpell(ReputationStatusMenuSpell, False)
		 PlayerRef.AddSpell(RepRanksMSGSpell, False)
         PlayerRef.AddPerk(ReputationPerk, False)		 
         PlayerRef.AddPerk(ReputationClearancePerk, False)
         PlayerRef.AddPerk(ReputationPerk_UC, False)
         PlayerRef.AddPerk(ReputationPerk_FCNew, False)
         PlayerRef.AddPerk(ReputationPerk_CF, False)
         RegisterForMenuOpenCloseEvent("DataMenu")
	     RegisterForActorValueChangedEvent(PlayerRef, Fame)
	     RegisterForActorValueChangedEvent(PlayerRef, Reputation)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_ReputationUC)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_ReputationFC)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_ReputationCF)
         PercentageTracker()

EndFunction

Function FameAndRepStop()
		 
		 PlayerRef.DamageValue(Fame, 999)
         
		 PlayerRef.RestoreValue(Reputation, 999)		         
         PlayerRef.DamageValue(Reputation, 50)

         PlayerRef.RestoreValue(AV_ReputationUC, 999)		         
         PlayerRef.DamageValue(AV_ReputationUC, 50)

         PlayerRef.RestoreValue(AV_ReputationFC, 999)		         
         PlayerRef.DamageValue(AV_ReputationFC, 50)

         PlayerRef.RestoreValue(AV_ReputationCF, 999)		         
         PlayerRef.DamageValue(AV_ReputationCF, 50)

		 PlayerRef.Removeperk(ReputationPerk) 
		 PlayerRef.Removeperk(ReputationPerk_UC) 
		 PlayerRef.Removeperk(ReputationPerk_FCNew) 
		 PlayerRef.Removeperk(ReputationPerk_CF)
		 PlayerRef.Removeperk(ReputationClearancePerk)
         PlayerRef.RemoveSpell(FameSpellPerkPoints)
         PlayerRef.RemoveSpell(FameSpellRewards)
         PlayerRef.RemoveSpell(FameSpellQuests)
         PlayerRef.RemoveSpell(FameSpellQuestsSide)
         PlayerRef.RemoveSpell(ReputationStatusMenuSpell)
         PlayerRef.RemoveSpell(RepRanksMSGSpell)
         PlayerRef.RemoveSpell(IntimidationSpell)
         PlayerRef.RemoveSpell(PositiveSpell)
         MissionBoardRewardsReset()
         UnregisterForMenuOpenCloseEvent("DataMenu")
	     UnregisterForActorValueChangedEvent(PlayerRef, Fame)
	     UnregisterForActorValueChangedEvent(PlayerRef, Reputation)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_ReputationUC)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_ReputationFC)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_ReputationCF)

EndFunction

Function RecalculateReputation()

		 PlayerRef.Removeperk(ReputationPerk) 
		 PlayerRef.Removeperk(ReputationPerk_UC) 
		 PlayerRef.Removeperk(ReputationPerk_FCNew) 
		 PlayerRef.Removeperk(ReputationPerk_CF)
         
		 PlayerRef.RestoreValue(Reputation, 999)		         
         PlayerRef.DamageValue(Reputation, 50)
         PlayerRef.RestoreValue(AV_ReputationUC, 999)		         
         PlayerRef.DamageValue(AV_ReputationUC, 50)
         PlayerRef.RestoreValue(AV_ReputationFC, 999)		         
         PlayerRef.DamageValue(AV_ReputationFC, 50)
         PlayerRef.RestoreValue(AV_ReputationCF, 999)		         
         PlayerRef.DamageValue(AV_ReputationCF, 50)

         PlayerRef.AddPerk(ReputationPerk, False)		 
         PlayerRef.AddPerk(ReputationPerk_UC, False)
         PlayerRef.AddPerk(ReputationPerk_FCNew, False)
         PlayerRef.AddPerk(ReputationPerk_CF, False)                

EndFunction

Function Update()		                 
EndFunction

Function UpdateHotfix()		                          		 
         PlayerRef.AddPerk(ReputationPerk_FCNew, False)
EndFunction

Event OnMenuOpenCloseEvent(String asMenuName, Bool abOpening)
         	     	 			 
		 If asMenuName == "DataMenu"    
			       If abOpening == True														      					   
                      PercentageTracker()
					  PlayerRef.AddSpell(ReputationStatusMenuSpell, False)	
				Else			                            			   
						If (PlayerRef.HasSpell(ReputationStatusMenuSpell))
                            PlayerRef.RemoveSpell(ReputationStatusMenuSpell)
                     EndIf	
				EndIf
      EndIf

EndEvent

Event OnActorValueChanged(ObjectReference akObjRef, ActorValue akActorValue)    
	   
	   If akObjRef == PlayerRef && akActorValue == Fame
	      RegisterForActorValueChangedEvent(PlayerRef, Fame)
          GV_PercentageTracker_Fame.SetValue(PlayerRef.GetValue(Fame))
   ElseIf akObjRef == PlayerRef && akActorValue == Reputation
	      RegisterForActorValueChangedEvent(PlayerRef, Reputation)
          GV_PercentageTracker_Reputation.SetValue(PlayerRef.GetValue(Reputation))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_ReputationUC
	      RegisterForActorValueChangedEvent(PlayerRef, AV_ReputationUC)
          GV_PercentageTracker_ReputationUC.SetValue(PlayerRef.GetValue(AV_ReputationUC))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_ReputationFC
	      RegisterForActorValueChangedEvent(PlayerRef, AV_ReputationFC)
          GV_PercentageTracker_ReputationFC.SetValue(PlayerRef.GetValue(AV_ReputationFC))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_ReputationCF
	      RegisterForActorValueChangedEvent(PlayerRef, AV_ReputationCF)
          GV_PercentageTracker_ReputationCF.SetValue(PlayerRef.GetValue(AV_ReputationCF))
    EndIf

EndEvent

Function PercentageTracker()         		 
         GV_PercentageTracker_Fame.SetValue(PlayerRef.GetValue(Fame))
         GV_PercentageTracker_Reputation.SetValue(PlayerRef.GetValue(Reputation))
         GV_PercentageTracker_ReputationUC.SetValue(PlayerRef.GetValue(AV_ReputationUC))
         GV_PercentageTracker_ReputationFC.SetValue(PlayerRef.GetValue(AV_ReputationFC))
         GV_PercentageTracker_ReputationCF.SetValue(PlayerRef.GetValue(AV_ReputationCF))
EndFunction

Int Function PlayerLevelCheck()
	  
	  Int Level = PlayerRef.GetLevel()     
	  Int LevelMax = 100
      
		If PlayerRef.GetLevel() < 100    
           Return Level 
    ElseIf PlayerRef.GetLevel() >= 100 	
           Return LevelMax
     EndIf

EndFunction

Bool Function IsPlayerInLocationList(FormList locList)
    Int count = locList.GetSize()
    While count > 0
        count -= 1
        Location loc = locList.GetAt(count) as Location
        If loc && PlayerRef.IsInLocation(loc)
            Return True
        EndIf
    EndWhile
    Return False
EndFunction

Bool Function IsShipInLocationList(SpaceShipReference ship, FormList locList)
    Int count = locList.GetSize()
    While count > 0
        count -= 1
        Location loc = locList.GetAt(count) as Location
        If loc && ship.IsInLocation(loc)
            Return True
        EndIf
    EndWhile
    Return False
EndFunction

ActorValue Function CheckForAV()

		        SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
                
				If PlayerRef && IsPlayerInLocationList(List_UCLocations) || IsShipInLocationList(akShip, List_UCLocations) 
                   Return AV_ReputationUC
		    ElseIf PlayerRef && IsPlayerInLocationList(List_FCLocations) || IsShipInLocationList(akShip, List_FCLocations) 
                   Return AV_ReputationFC			 
		    ElseIf PlayerRef && IsPlayerInLocationList(List_CFLocations) || IsShipInLocationList(akShip, List_CFLocations) 
                   Return AV_ReputationCF				 
			 Else
                   Return Reputation
			 EndIf 
             Return None

EndFunction

ActorValue Function CheckForAVPickpocket()

		        SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
                
				If PlayerRef && IsPlayerInLocationList(List_UCLocations) || IsShipInLocationList(akShip, List_UCLocations) 
                   Return AV_ReputationUC
		    ElseIf PlayerRef && IsPlayerInLocationList(List_FCLocations) || IsShipInLocationList(akShip, List_FCLocations) 
                   Return AV_ReputationFC			 				 
			 Else
                   Return Reputation
			 EndIf 
             Return None

EndFunction

ActorValue Function CheckForAVRepair()

		        SpaceShipReference akShip = SQ_PlayerShip.PlayerShip.GetShipRef()
                
				If PlayerRef && IsPlayerInLocationList(List_UCLocations) || IsShipInLocationList(akShip, List_UCLocations) 
                   Return AV_ReputationUC
		    ElseIf PlayerRef && IsPlayerInLocationList(List_FCLocations) || IsShipInLocationList(akShip, List_FCLocations) 
                   Return AV_ReputationFC
			 EndIf 
             Return None

EndFunction

Function RefreshMissionBoards()
    PlayerRef.DamageValue(Reputation, 12)
    PlayerRef.RestoreValue(Reputation, 12)
EndFunction

Function RefreshMissionBoardRewards(Float CreditsMult)
	
	Float playerLVLCheck = PlayerLevelCheck()
	Float BountyMult = GV_MissionBoardRewardMult_Bounty.GetValue()
	Float HuntMult = GV_MissionBoardRewardMult_Hunt.GetValue()
	Float PiracyMult = GV_MissionBoardRewardMult_Piracy.GetValue()
	Float SmuggleMult = GV_MissionBoardRewardMult_Smuggle.GetValue()
	Float PlantMult = GV_MissionBoardRewardMult_Plant.GetValue()
	Float StealMult = GV_MissionBoardRewardMult_Steal.GetValue()
	Float SabotageMult = GV_MissionBoardRewardMult_Sabotage.GetValue()
	Float HackMult = GV_MissionBoardRewardMult_Hack.GetValue()
	Float RescueMult = GV_MissionBoardRewardMult_Rescue.GetValue()
	Float SurveyMult = GV_MissionBoardRewardMult_Survey.GetValue()
	Float CargoMult = GV_MissionBoardRewardMult_Cargo.GetValue()
	Float PassengerMult = GV_MissionBoardRewardMult_Passenger.GetValue()
	Float SupplyMult = GV_MissionBoardRewardMult_Supply.GetValue()
	
	MissionBoardRewardsReset()	
	
	MissionBoardBounty01Reward.SetValue(MissionBoardBounty01Reward.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
	MissionBoardBounty02Reward.SetValue(MissionBoardBounty02Reward.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
	MissionBoardBounty03Reward.SetValue(MissionBoardBounty03Reward.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
	MissionBoardBounty04Reward.SetValue(MissionBoardBounty04Reward.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))	
	MissionBoardBountySpace01Reward.SetValue(MissionBoardBountySpace01Reward.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
	MissionBoardBountySpace01RewardCOPY0001.SetValue(MissionBoardBountySpace01RewardCOPY0001.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
	MissionBoardBountySpace02Reward.SetValue(MissionBoardBountySpace02Reward.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
	MissionBoardBountySpace03Reward.SetValue(MissionBoardBountySpace03Reward.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
	MissionBoardBountySpace04Reward.SetValue(MissionBoardBountySpace04Reward.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
	MissionBoardBountySpace05Reward.SetValue(MissionBoardBountySpace05Reward.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
	MissionBoardBountySpace06Reward.SetValue(MissionBoardBountySpace06Reward.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
	MissionBoardHunt01Reward.SetValue(MissionBoardHunt01Reward.GetValue() * CreditsMult * HuntMult + (playerLVLCheck * 150))
	MissionBoardPiracy01Reward.SetValue(MissionBoardPiracy01Reward.GetValue() * CreditsMult * PiracyMult + (playerLVLCheck * 150))
	MissionBoardPiracy02Reward.SetValue(MissionBoardPiracy02Reward.GetValue() * CreditsMult * PiracyMult + (playerLVLCheck * 150))
	MissionBoardPiracy03Reward.SetValue(MissionBoardPiracy03Reward.GetValue() * CreditsMult * PiracyMult + (playerLVLCheck * 150))
	MissionBoardSmuggle01Reward.SetValue(MissionBoardSmuggle01Reward.GetValue() * CreditsMult * SmuggleMult + (playerLVLCheck * 150))
	MissionBoardSmuggle01RewardCOPY0004.SetValue(MissionBoardSmuggle01RewardCOPY0004.GetValue() * CreditsMult * SmuggleMult + (playerLVLCheck * 150))	
	MissionBoardSmuggle01RewardCOPY0005.SetValue(MissionBoardSmuggle01RewardCOPY0005.GetValue() * CreditsMult * SmuggleMult + (playerLVLCheck * 150))
	MissionBoardPlantEvidence01Reward.SetValue(MissionBoardPlantEvidence01Reward.GetValue() * CreditsMult * PlantMult + (playerLVLCheck * 150))
	MissionBoardSteal01Reward.SetValue(MissionBoardSteal01Reward.GetValue() * CreditsMult * StealMult + (playerLVLCheck * 150))
	MissionBoardSteal02Reward.SetValue(MissionBoardSteal02Reward.GetValue() * CreditsMult * StealMult + (playerLVLCheck * 150))
	MissionBoardHack01Reward.SetValue(MissionBoardHack01Reward.GetValue() * CreditsMult * HackMult + (playerLVLCheck * 150))
	MissionBoardSabotage01Reward.SetValue(MissionBoardSabotage01Reward.GetValue() * CreditsMult * SabotageMult + (playerLVLCheck * 150))
	MissionBoardRescue01Reward.SetValue(MissionBoardRescue01Reward.GetValue() * CreditsMult * RescueMult + (playerLVLCheck * 150))
	MissionBoardSurvey01Reward.SetValue(MissionBoardSurvey01Reward.GetValue() * CreditsMult * SurveyMult + (playerLVLCheck * 150))
	MissionBoardSurvey02Reward.SetValue(MissionBoardSurvey02Reward.GetValue() * CreditsMult * SurveyMult + (playerLVLCheck * 150))
	MissionBoardSurvey03Reward.SetValue(MissionBoardSurvey03Reward.GetValue() * CreditsMult * SurveyMult + (playerLVLCheck * 150))
	MissionBoardSurvey04Reward.SetValue(MissionBoardSurvey04Reward.GetValue() * CreditsMult * SurveyMult + (playerLVLCheck * 150))
	MissionBoardSurveyTraitRewardBase.SetValue(MissionBoardSurveyTraitRewardBase.GetValue() * CreditsMult * SurveyMult + (playerLVLCheck * 150))
	MissionBoardCargo01Reward.SetValue(MissionBoardCargo01Reward.GetValue() * CreditsMult * CargoMult + (playerLVLCheck * 150))
	MissionBoardCargo01RewardCOPY0000.SetValue(MissionBoardCargo01RewardCOPY0000.GetValue() * CreditsMult * CargoMult + (playerLVLCheck * 150))
	MissionBoardCargo01RewardCOPY0001.SetValue(MissionBoardCargo01RewardCOPY0001.GetValue() * CreditsMult * CargoMult + (playerLVLCheck * 150))
	MissionBoardCargo02Reward.SetValue(MissionBoardCargo02Reward.GetValue() * CreditsMult * CargoMult + (playerLVLCheck * 150))
	MissionBoardPassenger02Reward.SetValue(MissionBoardPassenger02Reward.GetValue() * CreditsMult * PassengerMult + (playerLVLCheck * 150))
	MissionBoardPassenger02RewardCOPY0000.SetValue(MissionBoardPassenger02RewardCOPY0000.GetValue() * CreditsMult * PassengerMult + (playerLVLCheck * 150))
	MissionBoardPassenger01Reward.SetValue(MissionBoardPassenger01Reward.GetValue() * CreditsMult * PassengerMult + (playerLVLCheck * 150))
	MissionBoardPassenger01RewardCOPY0000.SetValue(MissionBoardPassenger01RewardCOPY0000.GetValue() * CreditsMult * PassengerMult + (playerLVLCheck * 150))
	MissionBoardPassenger01RewardCOPY0001.SetValue(MissionBoardPassenger01RewardCOPY0001.GetValue() * CreditsMult * PassengerMult + (playerLVLCheck * 150))
	MissionBoardPassenger01RewardCOPY0002.SetValue(MissionBoardPassenger01RewardCOPY0002.GetValue() * CreditsMult * PassengerMult + (playerLVLCheck * 150))
	MissionBoardPassenger03Reward.SetValue(MissionBoardPassenger03Reward.GetValue() * CreditsMult * PassengerMult + (playerLVLCheck * 150))
	MissionBoardPassenger05Reward.SetValue(MissionBoardPassenger05Reward.GetValue() * CreditsMult * PassengerMult + (playerLVLCheck * 150))
	MissionBoardPassenger06Reward.SetValue(MissionBoardPassenger06Reward.GetValue() * CreditsMult * PassengerMult + (playerLVLCheck * 150))
	MissionBoardPassenger07Reward.SetValue(MissionBoardPassenger07Reward.GetValue() * CreditsMult * PassengerMult + (playerLVLCheck * 150))
	MissionBoardPassenger08Reward.SetValue(MissionBoardPassenger08Reward.GetValue() * CreditsMult * PassengerMult + (playerLVLCheck * 150))
	MissionBoardPassenger09Reward.SetValue(MissionBoardPassenger09Reward.GetValue() * CreditsMult * PassengerMult + (playerLVLCheck * 150))
	MissionBoardPassenger10Reward.SetValue(MissionBoardPassenger10Reward.GetValue() * CreditsMult * PassengerMult + (playerLVLCheck * 150))
	MissionBoardPassenger11Reward.SetValue(MissionBoardPassenger11Reward.GetValue() * CreditsMult * PassengerMult + (playerLVLCheck * 150))
	MissionBoardPassenger12Reward.SetValue(MissionBoardPassenger12Reward.GetValue() * CreditsMult * PassengerMult + (playerLVLCheck * 150))
	MissionBoardSupplyRewardBaseExoticORG.SetValue(MissionBoardSupplyRewardBaseExoticORG.GetValue() * 50 * CreditsMult * SupplyMult + (playerLVLCheck * 150))
	MissionBoardSupplyRewardBaseRareORG.SetValue(MissionBoardSupplyRewardBaseRareORG.GetValue() * 30 * CreditsMult * SupplyMult + (playerLVLCheck * 150))
	MissionBoardSupplyRewardBaseUncommonORG.SetValue(MissionBoardSupplyRewardBaseUncommonORG.GetValue() * 20 * CreditsMult * SupplyMult + (playerLVLCheck * 150))
	MissionBoardSupplyRewardBaseCommonORG.SetValue(MissionBoardSupplyRewardBaseCommonORG.GetValue() * 10 * CreditsMult * SupplyMult + (playerLVLCheck * 150))
	MissionBoardSupplyRewardBaseMFG03.SetValue(MissionBoardSupplyRewardBaseMFG03.GetValue() * 30 * CreditsMult * SupplyMult + (playerLVLCheck * 150))
	MissionBoardSupplyRewardBaseMFG02.SetValue(MissionBoardSupplyRewardBaseMFG02.GetValue() * 20 * CreditsMult * SupplyMult + (playerLVLCheck * 150))
	MissionBoardSupplyRewardBaseMFG01.SetValue(MissionBoardSupplyRewardBaseMFG01.GetValue() * 10 * CreditsMult * SupplyMult + (playerLVLCheck * 150))
	MissionBoardSupplyRewardBaseRare.SetValue(MissionBoardSupplyRewardBaseRare.GetValue() * 30 * CreditsMult * SupplyMult + (playerLVLCheck * 150))
	MissionBoardSupplyRewardBaseUncommon.SetValue(MissionBoardSupplyRewardBaseUncommon.GetValue() * 10 * CreditsMult * SupplyMult + (playerLVLCheck * 150))
	MissionBoardSupplyRewardBaseCommon.SetValue(MissionBoardSupplyRewardBaseCommon.GetValue() * 20 * CreditsMult * SupplyMult + (playerLVLCheck * 150))
    
	GlobalVariable MissionBoardEliteBountySpace01Reward_TA = Game.GetFormFromFile(0x0000005E, "SFBGS003.esm") as GlobalVariable
	GlobalVariable MissionBoardEliteBountySpace02Reward_TA = Game.GetFormFromFile(0x00000060, "SFBGS003.esm") as GlobalVariable   
    
	MissionBoardEliteBountySpace01Reward_TA.SetValue(MissionBoardEliteBountySpace01Reward_TA.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
    MissionBoardEliteBountySpace02Reward_TA.SetValue(MissionBoardEliteBountySpace02Reward_TA.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))

	GlobalVariable SFBGS003_Global_MissionBoardEliteBounty_Reward_01 = Game.GetFormFromFile(0x0000005B, "SFBGS003.esm") as GlobalVariable
	GlobalVariable SFBGS003_Global_MissionBoardEliteBounty_Reward_02 = Game.GetFormFromFile(0x0000283C, "SFBGS003.esm") as GlobalVariable 
	
	SFBGS003_Global_MissionBoardEliteBounty_Reward_01.SetValue(SFBGS003_Global_MissionBoardEliteBounty_Reward_01.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
    SFBGS003_Global_MissionBoardEliteBounty_Reward_02.SetValue(SFBGS003_Global_MissionBoardEliteBounty_Reward_02.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))

	GlobalVariable SFBGS003_CreditsRewardBountyQuestLarge = Game.GetFormFromFile(0x0000F652, "SFBGS003.esm") as GlobalVariable
	GlobalVariable SFBGS003_CreditsRewardBountyQuestMedium = Game.GetFormFromFile(0x0000F651, "SFBGS003.esm") as GlobalVariable 
	GlobalVariable SFBGS003_CreditsRewardBountyQuestSmall = Game.GetFormFromFile(0x0000FD3B, "SFBGS003.esm") as GlobalVariable 
	
	SFBGS003_CreditsRewardBountyQuestLarge.SetValue(SFBGS003_CreditsRewardBountyQuestLarge.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
    SFBGS003_CreditsRewardBountyQuestMedium.SetValue(SFBGS003_CreditsRewardBountyQuestMedium.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
    SFBGS003_CreditsRewardBountyQuestSmall.SetValue(SFBGS003_CreditsRewardBountyQuestSmall.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))

	GlobalVariable SFBGS003_NPCDemandMoney_Large = Game.GetFormFromFile(0x000004F6, "SFBGS003.esm") as GlobalVariable
	GlobalVariable SFBGS003_NPCDemandMoney_LargeCOPY0007 = Game.GetFormFromFile(0x0000F9DC, "SFBGS003.esm") as GlobalVariable 
	GlobalVariable SFBGS003_NPCDemandMoney_LargeCOPY0010 = Game.GetFormFromFile(0x0000F9EB, "SFBGS003.esm") as GlobalVariable 
	GlobalVariable SFBGS003_NPCDemandMoney_LargeCOPY0011 = Game.GetFormFromFile(0x0000F9F5, "SFBGS003.esm") as GlobalVariable 
	GlobalVariable SFBGS003_NPCDemandMoney_LargeCOPY0012 = Game.GetFormFromFile(0x0000F9FF, "SFBGS003.esm") as GlobalVariable 

	SFBGS003_NPCDemandMoney_Large.SetValue(SFBGS003_NPCDemandMoney_Large.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
    SFBGS003_NPCDemandMoney_LargeCOPY0007.SetValue(SFBGS003_NPCDemandMoney_LargeCOPY0007.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
    SFBGS003_NPCDemandMoney_LargeCOPY0010.SetValue(SFBGS003_NPCDemandMoney_LargeCOPY0010.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
    SFBGS003_NPCDemandMoney_LargeCOPY0011.SetValue(SFBGS003_NPCDemandMoney_LargeCOPY0011.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
    SFBGS003_NPCDemandMoney_LargeCOPY0012.SetValue(SFBGS003_NPCDemandMoney_LargeCOPY0012.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))

	GlobalVariable SFBGS003_NPCDemandMoney_Medium = Game.GetFormFromFile(0x00000495, "SFBGS003.esm") as GlobalVariable
	GlobalVariable SFBGS003_NPCDemandMoney_MediumCOPY0008 = Game.GetFormFromFile(0x0000F9DB, "SFBGS003.esm") as GlobalVariable 
	GlobalVariable SFBGS003_NPCDemandMoney_MediumCOPY0011 = Game.GetFormFromFile(0x0000F9EA, "SFBGS003.esm") as GlobalVariable 
	GlobalVariable SFBGS003_NPCDemandMoney_MediumCOPY0012 = Game.GetFormFromFile(0x0000F9F4, "SFBGS003.esm") as GlobalVariable 
	GlobalVariable SFBGS003_NPCDemandMoney_MediumCOPY0013 = Game.GetFormFromFile(0x0000F9FE, "SFBGS003.esm") as GlobalVariable 

	SFBGS003_NPCDemandMoney_Medium.SetValue(SFBGS003_NPCDemandMoney_Medium.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
    SFBGS003_NPCDemandMoney_MediumCOPY0008.SetValue(SFBGS003_NPCDemandMoney_MediumCOPY0008.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
    SFBGS003_NPCDemandMoney_MediumCOPY0011.SetValue(SFBGS003_NPCDemandMoney_MediumCOPY0011.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
    SFBGS003_NPCDemandMoney_MediumCOPY0012.SetValue(SFBGS003_NPCDemandMoney_MediumCOPY0012.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
    SFBGS003_NPCDemandMoney_MediumCOPY0013.SetValue(SFBGS003_NPCDemandMoney_MediumCOPY0013.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))

	GlobalVariable SFBGS003_NPCDemandMoney_Small = Game.GetFormFromFile(0x000004F5, "SFBGS003.esm") as GlobalVariable
	GlobalVariable SFBGS003_NPCDemandMoney_SmallCOPY0007 = Game.GetFormFromFile(0x0000F9DD, "SFBGS003.esm") as GlobalVariable 
	GlobalVariable SFBGS003_NPCDemandMoney_SmallCOPY0010 = Game.GetFormFromFile(0x0000F9EC, "SFBGS003.esm") as GlobalVariable 
	GlobalVariable SFBGS003_NPCDemandMoney_SmallCOPY0011 = Game.GetFormFromFile(0x0000F9F6, "SFBGS003.esm") as GlobalVariable 
	GlobalVariable SFBGS003_NPCDemandMoney_SmallCOPY0012 = Game.GetFormFromFile(0x0000FA01, "SFBGS003.esm") as GlobalVariable 

	SFBGS003_NPCDemandMoney_Small.SetValue(SFBGS003_NPCDemandMoney_Small.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
    SFBGS003_NPCDemandMoney_SmallCOPY0007.SetValue(SFBGS003_NPCDemandMoney_SmallCOPY0007.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
    SFBGS003_NPCDemandMoney_SmallCOPY0010.SetValue(SFBGS003_NPCDemandMoney_SmallCOPY0010.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
    SFBGS003_NPCDemandMoney_SmallCOPY0011.SetValue(SFBGS003_NPCDemandMoney_SmallCOPY0011.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
    SFBGS003_NPCDemandMoney_SmallCOPY0012.SetValue(SFBGS003_NPCDemandMoney_SmallCOPY0012.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))
	
	GlobalVariable SFBGS003_Global_BountyBonusLimit = Game.GetFormFromFile(0x00005789, "SFBGS003.esm") as GlobalVariable 
	
	SFBGS003_Global_BountyBonusLimit.SetValue(SFBGS003_Global_BountyBonusLimit.GetValue() * CreditsMult * BountyMult + (playerLVLCheck * 150))

    GV_SupplyRewardMultStore.SetValue(CreditsMult * SupplyMult)

EndFunction

Float Function SupplyMissionMult()
	  Float Mult = GV_SupplyRewardMultStore.GetValue()
      Return Mult
EndFunction

Function MissionBoardRewardsReset()

	MissionBoardBounty01Reward.SetValue(3200)
	MissionBoardBounty02Reward.SetValue(3200)
	MissionBoardBounty03Reward.SetValue(3200)
	MissionBoardBounty04Reward.SetValue(3200)	
	MissionBoardBountySpace01Reward.SetValue(2650)
	MissionBoardBountySpace01RewardCOPY0001.SetValue(2650)
	MissionBoardBountySpace02Reward.SetValue(2650)
	MissionBoardBountySpace03Reward.SetValue(2650)
	MissionBoardBountySpace04Reward.SetValue(2650)
	MissionBoardBountySpace05Reward.SetValue(2650)
	MissionBoardBountySpace06Reward.SetValue(2650)
	MissionBoardHunt01Reward.SetValue(2000)
	MissionBoardHack01Reward.SetValue(2100)
	MissionBoardPiracy01Reward.SetValue(3900)
	MissionBoardPiracy02Reward.SetValue(3900)
	MissionBoardPiracy03Reward.SetValue(3900)
	MissionBoardPlantEvidence01Reward.SetValue(2300)
	MissionBoardRescue01Reward.SetValue(2000)
	MissionBoardSabotage01Reward.SetValue(2200)
	MissionBoardSmuggle01Reward.SetValue(3000)
	MissionBoardSmuggle01RewardCOPY0004.SetValue(3000)	
	MissionBoardSmuggle01RewardCOPY0005.SetValue(3000)
	MissionBoardSteal01Reward.SetValue(3000)
	MissionBoardSteal02Reward.SetValue(3000)
	MissionBoardSurvey01Reward.SetValue(1000)
	MissionBoardSurvey02Reward.SetValue(1000)
	MissionBoardSurvey03Reward.SetValue(1000)
	MissionBoardSurvey04Reward.SetValue(1000)
	MissionBoardSurveyTraitRewardBase.SetValue(3000)
	MissionBoardCargo01Reward.SetValue(1600)
	MissionBoardCargo01RewardCOPY0000.SetValue(1600)
	MissionBoardCargo01RewardCOPY0001.SetValue(1600)
	MissionBoardCargo02Reward.SetValue(1200)
	MissionBoardPassenger02Reward.SetValue(900)
	MissionBoardPassenger02RewardCOPY0000.SetValue(900)
	MissionBoardPassenger01Reward.SetValue(1500)
	MissionBoardPassenger01RewardCOPY0000.SetValue(1500)
	MissionBoardPassenger01RewardCOPY0001.SetValue(1500)
	MissionBoardPassenger01RewardCOPY0002.SetValue(1500)
	MissionBoardPassenger03Reward.SetValue(1500)
	MissionBoardPassenger05Reward.SetValue(1500)
	MissionBoardPassenger06Reward.SetValue(1500)
	MissionBoardPassenger07Reward.SetValue(1500)
	MissionBoardPassenger08Reward.SetValue(1500)
	MissionBoardPassenger09Reward.SetValue(1500)
	MissionBoardPassenger10Reward.SetValue(1500)
	MissionBoardPassenger11Reward.SetValue(1500)
	MissionBoardPassenger12Reward.SetValue(1500)
	MissionBoardSupplyRewardBaseExoticORG.SetValue(700)
	MissionBoardSupplyRewardBaseRareORG.SetValue(500)
	MissionBoardSupplyRewardBaseUncommonORG.SetValue(350)
	MissionBoardSupplyRewardBaseCommonORG.SetValue(250)
	MissionBoardSupplyRewardBaseMFG03.SetValue(600)
	MissionBoardSupplyRewardBaseMFG02.SetValue(400)
	MissionBoardSupplyRewardBaseMFG01.SetValue(250)
	MissionBoardSupplyRewardBaseRare.SetValue(300)
	MissionBoardSupplyRewardBaseUncommon.SetValue(200)
	MissionBoardSupplyRewardBaseCommon.SetValue(150)

	GlobalVariable MissionBoardEliteBountySpace01Reward_TA = Game.GetFormFromFile(0x0000005E, "SFBGS003.esm") as GlobalVariable
	GlobalVariable MissionBoardEliteBountySpace02Reward_TA = Game.GetFormFromFile(0x00000060, "SFBGS003.esm") as GlobalVariable   
    
	MissionBoardEliteBountySpace01Reward_TA.SetValue(5000)
    MissionBoardEliteBountySpace02Reward_TA.SetValue(5000)

	GlobalVariable SFBGS003_Global_MissionBoardEliteBounty_Reward_01 = Game.GetFormFromFile(0x0000005B, "SFBGS003.esm") as GlobalVariable
	GlobalVariable SFBGS003_Global_MissionBoardEliteBounty_Reward_02 = Game.GetFormFromFile(0x0000283C, "SFBGS003.esm") as GlobalVariable 
	
	SFBGS003_Global_MissionBoardEliteBounty_Reward_01.SetValue(5100)
    SFBGS003_Global_MissionBoardEliteBounty_Reward_02.SetValue(5000)

	GlobalVariable SFBGS003_CreditsRewardBountyQuestLarge = Game.GetFormFromFile(0x0000F652, "SFBGS003.esm") as GlobalVariable
	GlobalVariable SFBGS003_CreditsRewardBountyQuestMedium = Game.GetFormFromFile(0x0000F651, "SFBGS003.esm") as GlobalVariable 
	GlobalVariable SFBGS003_CreditsRewardBountyQuestSmall = Game.GetFormFromFile(0x0000FD3B, "SFBGS003.esm") as GlobalVariable 
	
	SFBGS003_CreditsRewardBountyQuestLarge.SetValue(50000)
    SFBGS003_CreditsRewardBountyQuestMedium.SetValue(25000)
    SFBGS003_CreditsRewardBountyQuestSmall.SetValue(10000)

	GlobalVariable SFBGS003_NPCDemandMoney_Large = Game.GetFormFromFile(0x000004F6, "SFBGS003.esm") as GlobalVariable
	GlobalVariable SFBGS003_NPCDemandMoney_LargeCOPY0007 = Game.GetFormFromFile(0x0000F9DC, "SFBGS003.esm") as GlobalVariable 
	GlobalVariable SFBGS003_NPCDemandMoney_LargeCOPY0010 = Game.GetFormFromFile(0x0000F9EB, "SFBGS003.esm") as GlobalVariable 
	GlobalVariable SFBGS003_NPCDemandMoney_LargeCOPY0011 = Game.GetFormFromFile(0x0000F9F5, "SFBGS003.esm") as GlobalVariable 
	GlobalVariable SFBGS003_NPCDemandMoney_LargeCOPY0012 = Game.GetFormFromFile(0x0000F9FF, "SFBGS003.esm") as GlobalVariable 

	SFBGS003_NPCDemandMoney_Large.SetValue(2500)
    SFBGS003_NPCDemandMoney_LargeCOPY0007.SetValue(2500)
    SFBGS003_NPCDemandMoney_LargeCOPY0010.SetValue(2500)
    SFBGS003_NPCDemandMoney_LargeCOPY0011.SetValue(2500)
    SFBGS003_NPCDemandMoney_LargeCOPY0012.SetValue(2500)

	GlobalVariable SFBGS003_NPCDemandMoney_Medium = Game.GetFormFromFile(0x00000495, "SFBGS003.esm") as GlobalVariable
	GlobalVariable SFBGS003_NPCDemandMoney_MediumCOPY0008 = Game.GetFormFromFile(0x0000F9DB, "SFBGS003.esm") as GlobalVariable 
	GlobalVariable SFBGS003_NPCDemandMoney_MediumCOPY0011 = Game.GetFormFromFile(0x0000F9EA, "SFBGS003.esm") as GlobalVariable 
	GlobalVariable SFBGS003_NPCDemandMoney_MediumCOPY0012 = Game.GetFormFromFile(0x0000F9F4, "SFBGS003.esm") as GlobalVariable 
	GlobalVariable SFBGS003_NPCDemandMoney_MediumCOPY0013 = Game.GetFormFromFile(0x0000F9FE, "SFBGS003.esm") as GlobalVariable 

	SFBGS003_NPCDemandMoney_Medium.SetValue(1000)
    SFBGS003_NPCDemandMoney_MediumCOPY0008.SetValue(1000)
    SFBGS003_NPCDemandMoney_MediumCOPY0011.SetValue(1000)
    SFBGS003_NPCDemandMoney_MediumCOPY0012.SetValue(1000)
    SFBGS003_NPCDemandMoney_MediumCOPY0013.SetValue(1000)

	GlobalVariable SFBGS003_NPCDemandMoney_Small = Game.GetFormFromFile(0x000004F5, "SFBGS003.esm") as GlobalVariable
	GlobalVariable SFBGS003_NPCDemandMoney_SmallCOPY0007 = Game.GetFormFromFile(0x0000F9DD, "SFBGS003.esm") as GlobalVariable 
	GlobalVariable SFBGS003_NPCDemandMoney_SmallCOPY0010 = Game.GetFormFromFile(0x0000F9EC, "SFBGS003.esm") as GlobalVariable 
	GlobalVariable SFBGS003_NPCDemandMoney_SmallCOPY0011 = Game.GetFormFromFile(0x0000F9F6, "SFBGS003.esm") as GlobalVariable 
	GlobalVariable SFBGS003_NPCDemandMoney_SmallCOPY0012 = Game.GetFormFromFile(0x0000FA01, "SFBGS003.esm") as GlobalVariable 

	SFBGS003_NPCDemandMoney_Small.SetValue(500)
    SFBGS003_NPCDemandMoney_SmallCOPY0007.SetValue(500)
    SFBGS003_NPCDemandMoney_SmallCOPY0010.SetValue(500)
    SFBGS003_NPCDemandMoney_SmallCOPY0011.SetValue(500)
    SFBGS003_NPCDemandMoney_SmallCOPY0012.SetValue(500)
	
	GlobalVariable SFBGS003_Global_BountyBonusLimit = Game.GetFormFromFile(0x00005789, "SFBGS003.esm") as GlobalVariable 
	
	SFBGS003_Global_BountyBonusLimit.SetValue(5000)
    
	GV_SupplyRewardMultStore.SetValue(1.0)

EndFunction

Function UIHUDBridge()
		 PlayerRef.RemoveSpell(ReputationStatusMenuSpell)         		 
         UnregisterForMenuOpenCloseEvent("DataMenu")
	     UnregisterForActorValueChangedEvent(PlayerRef, Reputation)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_ReputationUC)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_ReputationFC)
	     UnregisterForActorValueChangedEvent(PlayerRef, AV_ReputationCF)
	     UnregisterForActorValueChangedEvent(PlayerRef, Fame)
EndFunction

Function UIHUDBridgeDeconstruct()
         Utility.Wait(1.0)		 
         RegisterForMenuOpenCloseEvent("DataMenu")
	     RegisterForActorValueChangedEvent(PlayerRef, Reputation)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_ReputationUC)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_ReputationFC)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_ReputationCF)
	     RegisterForActorValueChangedEvent(PlayerRef, Fame)
		 PercentageTracker()
		 PlayerRef.AddSpell(ReputationStatusMenuSpell, False)
EndFunction