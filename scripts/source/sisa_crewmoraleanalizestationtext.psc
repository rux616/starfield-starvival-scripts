ScriptName SISA_CrewMoraleAnalizeStationText Extends TerminalMenu Conditional

Actor Property PlayerRef Auto Const
ActorValue Property CrewMoraleAV Auto Const
Quest Property CrewMoraleQuest Auto Const
TerminalMenu property _SISA_TerminalMenu_CrewMorale_AnalizeStation_Main auto const mandatory
GlobalVariable property WeeklyDebt auto Const
GlobalVariable Property CrewRationsMoraleBase Auto Const
RefCollectionAlias Property CurrentCrew Auto
Conditionform Property ConditionFormShipCommandRank1 Auto Const Mandatory
Conditionform Property ConditionFormShipCommandRank2 Auto Const Mandatory
Conditionform Property ConditionFormShipCommandRank3 Auto Const Mandatory
Conditionform Property ConditionFormShipCommandRank4 Auto Const Mandatory

Event OnTerminalMenuEnter(TerminalMenu akTerminalBase, ObjectReference akTerminalRef)

    If akTerminalBase == _SISA_TerminalMenu_CrewMorale_AnalizeStation_Main   
       UpdateTextReplacement(akTerminalRef)
 EndIf

EndEvent

function UpdateTextReplacement(ObjectReference akTerminalRef)
		
		Int MoraleBase = CrewRationsMoraleBase.GetValue()as Int		
		Int TotalDebt = WeeklyDebt.GetValue() as Int
		Int TotalMorale = PlayerRef.GetValue(CrewMoraleAV) as Int        
		
		Float BaseValueCheck = (CrewMoraleQuest as SISA_CrewMorale).BaseCheck()
        Float Discount = (CrewMoraleQuest as SISA_CrewMorale).SalaryDiscount()
		Float TotalPayment = (BaseValueCheck * CurrentCrew.GetCount() / Discount) as Int
		Float RewardBonus = BaseValueCheck * CurrentCrew.GetCount() / 2 as Int 
		Float RationsAmount = RationsDiscount() 
		Float TotalMoralExpense = math.ceiling((MoraleBase + CurrentCrew.GetCount() * 0.35) / RationsAmount)
     
		akTerminalRef.AddTextReplacementValue("Debt", TotalDebt)
        akTerminalRef.AddTextReplacementValue("Morale", TotalMorale)
        akTerminalRef.AddTextReplacementValue("Payment", TotalPayment)
        akTerminalRef.AddTextReplacementValue("Reward", TotalPayment)
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

