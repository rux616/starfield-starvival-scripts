ScriptName SISA_CrewMoraleAnalizeStation Extends TerminalMenu Conditional

Actor Property PlayerRef Auto Const
ActorValue Property CrewMoraleAV Auto Const
Quest Property CrewMoraleQuest Auto Const
ObjectReference Property CrewMoraleBoxRef Auto Const mandatory
GlobalVariable property WeeklyDebt auto Const
GlobalVariable property StatusMenuToggle auto Const
GlobalVariable Property CrewRationsMoraleBase Auto Const
GlobalVariable Property CrewBonusCooldown Auto Const
RefCollectionAlias Property CurrentCrew Auto
Conditionform Property ConditionFormShipCommandRank1 Auto Const Mandatory
Conditionform Property ConditionFormShipCommandRank2 Auto Const Mandatory
Conditionform Property ConditionFormShipCommandRank3 Auto Const Mandatory
Conditionform Property ConditionFormShipCommandRank4 Auto Const Mandatory
MiscObject Property Credits Auto Const
Message Property MSG_CrewIsAtFullMorale Auto Const

Function OPENMORALECONTAINER_00(ObjectReference akTerminalRef)

         CrewMoraleBoxRef.Activate(PlayerRef, False)

EndFunction

Function PAYDEBT_01(ObjectReference akTerminalRef)

         (CrewMoraleQuest as SISA_CrewMorale).PayDebt()
          UpdateTextReplacement(akTerminalRef)

EndFunction

Function STARTEAMSTATUSMENUTOGGLE_02(ObjectReference akTerminalRef)

         If StatusMenuToggle.GetValue() == 0
            StatusMenuToggle.SetValue(1)
     Else
            StatusMenuToggle.SetValue(0)
      EndIf

EndFunction

Function REWARDCREWWITHABONUS_03(ObjectReference akTerminalRef)
		 
	     Float BaseValueCheck = (CrewMoraleQuest as SISA_CrewMorale).BaseCheck()         
	     Float RewardBonus = Math.round(BaseValueCheck * CurrentCrew.GetCount()) 
	  
	     If PlayerRef.GetValue(CrewMoraleAV) >= 125	 
		    MSG_CrewIsAtFullMorale.Show()
	        Return
	  EndIf	 
		 
		 If PlayerRef.GetItemCount(Credits) >= RewardBonus 
            Float Increase = CrewBonusCooldown.Getvalue() + 1
			CrewBonusCooldown.SetValue(Increase)
			PlayerRef.RemoveItem(Credits, RewardBonus as Int, False, None)
			PlayerRef.RestoreValue(CrewMoraleAV, 15) 
	  EndIf
	  
	  UpdateTextReplacement(akTerminalRef)

EndFunction

function UpdateTextReplacement(ObjectReference akTerminalRef)
		
		Int MoraleBase = CrewRationsMoraleBase.GetValue()as Int		
		Int TotalDebt = WeeklyDebt.GetValue() as Int
		Int TotalMorale = PlayerRef.GetValue(CrewMoraleAV) as Int           
		
		Float BaseValueCheck = (CrewMoraleQuest as SISA_CrewMorale).BaseCheck()
        Float Discount = (CrewMoraleQuest as SISA_CrewMorale).SalaryDiscount()
		Float TotalPayment = (BaseValueCheck * CurrentCrew.GetCount() / Discount) as Int       
		Float RewardBonus = Math.round(BaseValueCheck * CurrentCrew.GetCount()) 
		Float RationsAmount = RationsDiscount() 
		Float TotalMoralExpense = math.ceiling((MoraleBase + CurrentCrew.GetCount() * 0.35) / RationsAmount)		        
		
		akTerminalRef.AddTextReplacementValue("Debt", TotalDebt)
        akTerminalRef.AddTextReplacementValue("Morale", TotalMorale)
        akTerminalRef.AddTextReplacementValue("Payment", TotalPayment)
        akTerminalRef.AddTextReplacementValue("Reward", RewardBonus)
        akTerminalRef.AddTextReplacementValue("MoraleExpense", TotalMoralExpense)

endFunction

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
