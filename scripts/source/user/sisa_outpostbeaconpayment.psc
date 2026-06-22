ScriptName SISA_OutpostBeaconPayment Extends Perk Const hidden

Actor Property PlayerRef Auto Const
Quest Property Quest_Economy Auto Const
Message Property MSG_PaymentsMenu Auto Const
GlobalVariable Property GV_DebtCounter Auto Const
GlobalVariable Property GV_OutpostCount Auto Const
GlobalVariable Property GV_OutpostPrice Auto Const
MiscObject Property MSC_Credits Auto Const

Function PaymentInformation(ObjectReference akTargetRef, Actor akActor)	     
         OutpostPaymentMenu()
EndFunction

Function OutpostPaymentMenu(Int MenuType = 0, Int Button = 0, Bool MenuOpened = True)
 
 While MenuOpened
 	 
	 If Button == -1         

 ElseIf MenuType == 0
           
		   Float ReputationCalc = (Quest_Economy as SISA_Economy).ReputationCalculator()
           Float Discount = (Quest_Economy as SISA_Economy).ServiceDiscountCost()
		   Float DebtCounter = GV_DebtCounter.Getvalue()	       
           Float OutpostCount = GV_OutpostCount.Getvalue()
           Float OutpostPrice = GV_OutpostPrice.Getvalue()
           Float OutpostPayment = math.round(OutpostCount * OutpostPrice / Discount / ReputationCalc)
		   
		   button = MSG_PaymentsMenu.show(OutpostCount, OutpostPrice, OutpostPayment, DebtCounter)	

	                                    If (button == 0)                                           
										   (Quest_Economy as SISA_Economy).PayOutpostTaxDebt()																											
									ElseIf (button == 1)                                                                               
										   ; Exit
										   MenuOpened = False																		 
									 EndIf
  EndIf		   
EndWhile
EndFunction

