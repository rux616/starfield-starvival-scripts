ScriptName SISA_CrewMorale extends Quest

Group SISAActors
    Actor Property PlayerRef Auto Const
EndGroup

Group SISAActorValues
    ActorValue Property CrewMoraleAV Auto Const
    ActorValue Property ReputationAV Auto Const
EndGroup

Group SISACondForms
    Conditionform Property ConditionFormShipCommandRank1 Auto Const Mandatory
    Conditionform Property ConditionFormShipCommandRank2 Auto Const Mandatory
    Conditionform Property ConditionFormShipCommandRank3 Auto Const Mandatory
    Conditionform Property ConditionFormShipCommandRank4 Auto Const Mandatory
EndGroup

Group SISAPotions
    Potion Property CrewMoraleDummyFood Auto Const
EndGroup

Group SISALeveledItem
    LeveledItem Property LVL_CrewPresentsTypes Auto Const
EndGroup

Group SISAGlobalVariables
    GlobalVariable Property CrewRationsBaseSalary Auto Const
    GlobalVariable Property CrewRationsMoralTimer Auto Const
    GlobalVariable Property CrewRationsMoraleBase Auto Const
    GlobalVariable Property CrewRationsDeptCounter Auto Const
    GlobalVariable Property GV_PercentageTracker_Morale Auto Const
    GlobalVariable Property CrewBonusCooldown Auto Const
    GlobalVariable Property FameAndReputationToggle Auto Const
    GlobalVariable Property GV_RepDebtTriggers Auto Const
    GlobalVariable Property GV_RepMoraleTriggers Auto Const
EndGroup

Group SISAObjectRef
    ObjectReference Property CrewMoraleBoxRef Auto Const mandatory
EndGroup

Group SISAKeywords
    Keyword Property KWD_ActorTypeRobot Auto Const mandatory
EndGroup

Group SISAMessages
    Message Property MSGCrewMoraleCheck Auto Const
    Message Property MSGCrewMoralePaymentInfo Auto Const
    Message Property MSGCrewMoraleDebtInfo Auto Const
EndGroup

Group SISARefAliasesCol
    RefCollectionAlias Property CurrentCrew Auto
EndGroup

Group SISASpells
    Spell Property CrewMoraleBuffSpell Auto Const
    Spell Property CrewMoraleAmmoWeightSpell Auto Const
    Spell Property CrewMoraleCheckerSpell Auto Const
    Spell Property CrewMoraleCheckerSpellPlayer Auto Const
EndGroup

Group SISAPerks
    Perk Property CompanionBasicPerk Auto Const
EndGroup

Int SalaryDept = 0

Function CrewMoraleStart()
 		 
		 PlayerRef.RestoreValue(CrewMoraleAV, 999)		 
		 PlayerRef.DamageValue(CrewMoraleAV, 25)        
         Utility.Wait(0.5)
		 PlayerRef.AddSpell(CrewMoraleCheckerSpell, False)
		 PlayerRef.AddSpell(CrewMoraleCheckerSpellPlayer, False)
		 CrewMoraleTimer()
         StartCrewRationsGameTimeTimer()
         RegisterForMenuOpenCloseEvent("DataMenu")
	     RegisterForActorValueChangedEvent(PlayerRef, CrewMoraleAV)
         RegisterForMenuOpenCloseEvent("ShipCrewMenu")
		 GetAvailableCrewAndAddSpell()
		 PercentageTracker()

EndFunction

Function CrewMoraleStop()
         
		 PlayerRef.RestoreValue(CrewMoraleAV, 999)
		 PlayerRef.DamageValue(CrewMoraleAV, 25)
		 CrewBonusCooldown.SetValue(0)
		 CancelTimer(0)
		 CancelTimerGameTime(0)
         PlayerRef.RemoveSpell(CrewMoraleCheckerSpell)
         PlayerRef.RemoveSpell(CrewMoraleCheckerSpellPlayer)
         UnregisterForMenuOpenCloseEvent("DataMenu")
	     UnregisterForMenuOpenCloseEvent("ShipCrewMenu")
		 UnregisterForActorValueChangedEvent(PlayerRef, CrewMoraleAV)
         GetAvailableCrewAndReAddPerkAndRemoveSpells()

EndFunction

Event OnMenuOpenCloseEvent(String asMenuName, Bool abOpening)
         	     	 			 
		 If asMenuName == "DataMenu"    
			       If abOpening == True														      					   
                      ;PercentageTracker()
				      PlayerRef.AddSpell(CrewMoraleCheckerSpell, False) 
				Else			                            
						If (PlayerRef.HasSpell(CrewMoraleCheckerSpell))
                            PlayerRef.RemoveSpell(CrewMoraleCheckerSpell)
                     EndIf				   
				EndIf
	 ElseIf asMenuName == "ShipCrewMenu"    
			       If abOpening == True														      					   
			          GetAvailableCrewAndAddSpell()
				EndIf
      EndIf

EndEvent

Event OnActorValueChanged(ObjectReference akObjRef, ActorValue akActorValue)    
	   
	   If akObjRef == PlayerRef && akActorValue == CrewMoraleAV
	      RegisterForActorValueChangedEvent(PlayerRef, CrewMoraleAV)
          GV_PercentageTracker_Morale.SetValue(PlayerRef.GetValue(CrewMoraleAV))
    EndIf

EndEvent

Function PercentageTracker()        	 
         GV_PercentageTracker_Morale.SetValue(PlayerRef.GetValue(CrewMoraleAV))
EndFunction

Function Update()        	          
	     Utility.Wait(0.5)
         If !PlayerRef.HasSpell(CrewMoraleCheckerSpellPlayer)
		    PlayerRef.AddSpell(CrewMoraleCheckerSpellPlayer, False)
      EndIf
	  RegisterForActorValueChangedEvent(PlayerRef, CrewMoraleAV)
      RegisterForMenuOpenCloseEvent("ShipCrewMenu")
      GetAvailableCrewAndReAddPerkAndRemoveSpells()
      Utility.Wait(2.0)
      GetAvailableCrewAndAddSpell()
EndFunction

Event OnTimerGameTime(Int aiTimerID)
     
	 If aiTimerID == 0
        CrewRationsTimer()
        StartCrewRationsGameTimeTimer()
  EndIf

EndEvent

Event OnTimer(int aiTimerID)
	       	 		 
	 If (aiTimerID == 0) 
		CrewMoraleTimer()		  		  
  EndIf

EndEvent

Function CrewMoraleTimer()
  
  Float Timer = CrewRationsMoralTimer.GetValue()
  Float RationsAmount = RationsDiscount()  
  
  Int MoraleBase = CrewRationsMoraleBase.GetValue()as Int	
  Int ChanceGift = Utility.RandomInt(0, 100)
  
  Actor CrewMemberMorale = GetAvailableCrewMorale()  

       If CrewMemberMorale
						     
			 If PlayerRef.GetValue(CrewMoraleAV) > 120 && ChanceGift <= 12
		        CrewMoraleBoxRef.Additem(LVL_CrewPresentsTypes, 3, True)  
		 ElseIf PlayerRef.GetValue(CrewMoraleAV) > 100 && ChanceGift <= 8
		        CrewMoraleBoxRef.Additem(LVL_CrewPresentsTypes, 2, True)
		 ElseIf PlayerRef.GetValue(CrewMoraleAV) > 80 && ChanceGift <= 4
		        CrewMoraleBoxRef.Additem(LVL_CrewPresentsTypes, 1, True)
		  EndIf
		  
		  PlayerRef.DamageValue(CrewMoraleAV, math.ceiling((MoraleBase + CurrentCrew.GetCount() * 0.35) / RationsAmount))  		  
		  MSGCrewMoraleCheck.Show(PlayerRef.GetValue(CrewMoraleAV)) 
		  CrewMoraleBoxRef.Additem(CrewMoraleDummyFood, 1, True) 
	         If FameAndReputationToggle.GetValue() == 1               
		         If PlayerRef.GetValue(CrewMoraleAV) < 20.0
	                Float RepMoraleDMG = GV_RepMoraleTriggers.GetValue()
	                PlayerRef.DamageValue(ReputationAV, RepMoraleDMG)
		      EndIf
          EndIf
		  StartTimer(Timer, 0)
	EndIf

EndFunction

Function CrewMoraleTimerReset()         
		 Float Timer = CrewRationsMoralTimer.GetValue()         
		 CancelTimer(0)
         StartTimer(Timer, 0)
EndFunction

Float Function SalaryDiscount()
	  
	  Float ShipCommandRank0 = 1.00      
	  Float ShipCommandRank1 = 1.25
	  Float ShipCommandRank2 = 1.50      
	  Float ShipCommandRank3 = 1.75 
	  Float ShipCommandRank4 = 2.00
      
		If ConditionFormShipCommandRank4.IsTrue(PlayerRef, None)    
		   Return ShipCommandRank4 
	ElseIf ConditionFormShipCommandRank3.IsTrue(PlayerRef, None)  
	       Return ShipCommandRank3
	ElseIf ConditionFormShipCommandRank2.IsTrue(PlayerRef, None)  	 
           Return ShipCommandRank2
	ElseIf ConditionFormShipCommandRank1.IsTrue(PlayerRef, None) 
           Return ShipCommandRank1 
Else	
           Return ShipCommandRank0
     EndIf

EndFunction

Float Function RationsDiscount()
	  
	  Float ShipCommandRank0 = 1.00      
	  Float ShipCommandRank1 = 1.15
	  Float ShipCommandRank2 = 1.30      
	  Float ShipCommandRank3 = 1.50 
	  Float ShipCommandRank4 = 1.75
      
		If ConditionFormShipCommandRank4.IsTrue(PlayerRef, None)    
		   Return ShipCommandRank4 
	ElseIf ConditionFormShipCommandRank3.IsTrue(PlayerRef, None)  
	       Return ShipCommandRank3
	ElseIf ConditionFormShipCommandRank2.IsTrue(PlayerRef, None)  	 
           Return ShipCommandRank2
	ElseIf ConditionFormShipCommandRank1.IsTrue(PlayerRef, None) 
           Return ShipCommandRank1 
Else	
           Return ShipCommandRank0
     EndIf

EndFunction

Float Function BaseCheck()
	  
	  Float BaseSalary = CrewRationsBaseSalary.GetValue()
        
		If PlayerRef.GetLevel() > 100 
           Return BaseSalary * 6.0      
	ElseIf PlayerRef.GetLevel() > 90 && PlayerRef.GetLevel() <= 100   
           Return BaseSalary * 5.5 
    ElseIf PlayerRef.GetLevel() > 80 && PlayerRef.GetLevel() <= 90  	
           Return BaseSalary * 5.0
    ElseIf PlayerRef.GetLevel() > 70 && PlayerRef.GetLevel() <= 80 
           Return BaseSalary * 4.5       
    ElseIf PlayerRef.GetLevel() > 60 && PlayerRef.GetLevel() <= 70 
           Return BaseSalary * 4.0     	 
    ElseIf PlayerRef.GetLevel() > 50 && PlayerRef.GetLevel() <= 60 
           Return BaseSalary * 3.5     	 
    ElseIf PlayerRef.GetLevel() > 40 && PlayerRef.GetLevel() <= 50 
           Return BaseSalary * 3.0     	 
    ElseIf PlayerRef.GetLevel() > 30 && PlayerRef.GetLevel() <= 40 
           Return BaseSalary * 2.5       	 
    ElseIf PlayerRef.GetLevel() > 20 && PlayerRef.GetLevel() <= 30 
           Return BaseSalary * 2.0    	 
    ElseIf PlayerRef.GetLevel() > 10 && PlayerRef.GetLevel() <= 20 
           Return BaseSalary * 1.5     	 
    ElseIf PlayerRef.GetLevel() <= 10 
           Return BaseSalary     	 
     EndIf 	 

EndFunction

Function CrewRationsTimer()

  MiscObject credits = Game.GetCredits() 
  Actor CrewMember = GetAvailableCrew()  
  Float Discount = SalaryDiscount()
  Int playerCredits = playerRef.GetItemCount(credits)
  Float BaseValueCheck = BaseCheck()
  Float CrewRationsMax = BaseValueCheck * CurrentCrew.GetCount() / Discount
  
  CrewBonusCooldown.SetValue(0)
  
  If CrewMember
   
       If playerCredits >= CrewRationsMax as Int
		  playerRef.RemoveItem(credits, CrewRationsMax as Int, False, None)
	      PlayerRef.RestoreValue(CrewMoraleAV, 30)
	      MSGCrewMoralePaymentInfo.Show(CrewRationsMax as Int, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) 
	Else
	      CrewRationsMax -= playerCredits
		  SalaryDept += CrewRationsMax as Int
		  playerRef.RemoveItem(credits, playerCredits, False, None)
		  CrewRationsDeptCounter.SetValue(SalaryDept)
		  PlayerRef.DamageValue(CrewMoraleAV, 999)
		  MSGCrewMoraleDebtInfo.Show(CrewRationsDeptCounter.GetValue(), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) 
	         If FameAndReputationToggle.GetValue() == 0
                Return	  
          EndIf      
	      Float RepDebtDMG = GV_RepDebtTriggers.GetValue()
	      PlayerRef.DamageValue(ReputationAV, RepDebtDMG) 
	EndIf

EndIf

EndFunction

Function StartCrewRationsGameTimeTimer()
  
  Float hoursUntilNextMondayAt8AM = Self.GetHoursUntilNextMondayAt8AM()
  
  StartTimerGameTime(hoursUntilNextMondayAt8AM, 0)

EndFunction

Float Function GetHoursUntilNextMondayAt8AM()
      
	  Float currentDay = Utility.GetCurrentGameTime()
      Int nextWeek = Math.Floor(currentDay + 7.0)
      Int nextSunday = nextWeek - nextWeek % 7
      Int nextMonday = nextSunday + 1
      Float nextMondayAt8AM = nextMonday as Float + 0.333299994
      Float daysUntilNextMondayAt8AM = nextMondayAt8AM - currentDay
      Float hoursUntilNextMondayAt8AM = daysUntilNextMondayAt8AM * 24.0
      Return hoursUntilNextMondayAt8AM

EndFunction

Actor Function GetAvailableCrew()
    
	int crewCount = CurrentCrew.GetCount()
	int i = 0
    
	While i < crewCount             
			  Actor CrewMember = CurrentCrew.GetActorAt(i)            
			  If CrewMember && CrewMember.GetCrewAssignment() == True
				 return CrewMember
		   Else
			     return none 
		   EndIf		
		   i += 1
    EndWhile
    
	return none

EndFunction

Actor Function GetAvailableCrewMorale()
    
	Float Timer = CrewRationsMoralTimer.GetValue() 
	int crewCount = CurrentCrew.GetCount()
	Int i = 0
    	
	While i < crewCount              
			  Actor CrewMemberMorale = CurrentCrew.GetActorAt(i)             	
			     If !CrewMemberMorale.Haskeyword(KWD_ActorTypeRobot)
				    return CrewMemberMorale	
		      EndIf
			  i += 1
    EndWhile
		      
	StartTimer(Timer, 0)
	return none

EndFunction

Function GetAvailableCrewAndAddSpell()
    
	int crewCount = CurrentCrew.GetCount()
	int i = 0
    
    While i < crewCount
        Actor CrewMember = CurrentCrew.GetActorAt(i)
        
           If CrewMember
               If !CrewMember.HasSpell(CrewMoraleBuffSpell)
                   CrewMember.AddSpell(CrewMoraleBuffSpell, False)
            Endif
        EndIf
        i += 1
    EndWhile

EndFunction

Function GetAvailableCrewAndReAddPerkAndRemoveSpells()
    
	int crewCount = CurrentCrew.GetCount()
	int i = 0
    
    While i < crewCount
        Actor CrewMember = CurrentCrew.GetActorAt(i)
        
           If CrewMember
               If CrewMember.HasPerk(CompanionBasicPerk)
                  CrewMember.RemovePerk(CompanionBasicPerk)
                  CrewMember.AddPerk(CompanionBasicPerk, False)
            Endif
               If CrewMember.HasSpell(CrewMoraleBuffSpell)
                  CrewMember.RemoveSpell(CrewMoraleBuffSpell)
            Endif
               If CrewMember.HasSpell(CrewMoraleAmmoWeightSpell)
                  CrewMember.RemoveSpell(CrewMoraleAmmoWeightSpell)
            Endif
        EndIf
        i += 1
    EndWhile

EndFunction

Function PayDebt()
									                                   
         Int DeptSalary = CrewRationsDeptCounter.GetValue() As Int                                   
		 MiscObject credits = Game.GetCredits() 
         Int playerCredits = playerRef.GetItemCount(credits)
									
		 If CrewRationsDeptCounter.GetValue() > 0
               If playerCredits >= DeptSalary
                  PlayerRef.RemoveItem(credits, DeptSalary, False, None)
				  SalaryDept = 0
		          CrewRationsDeptCounter.SetValue(SalaryDept)
				  MSGCrewMoraleDebtInfo.Show(CrewRationsDeptCounter.GetValue(), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) 
			EndIf
      EndIf

EndFunction