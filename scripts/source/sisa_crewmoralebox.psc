ScriptName SISA_CrewMoraleBox extends ObjectReference

Actor Property PlayerRef Auto Const
ActorValue Property CrewMoraleAV Auto Const
Keyword Property KeywordFood Auto Const
Keyword Property KeywordDummyFood Auto Const
Keyword Property KeywordGiftbox Auto Const
Message Property MSG_CrewsMoraleCheck Auto Const
Message Property MSG_CrewsMoraleGiftBox Auto Const
Message Property MSG_CrewsMoraleFull Auto Const

FormList Property FoodItems_FruitVeggieGrade Auto
FormList Property FoodItems_PoorGrade Auto
FormList Property FoodItems_LowGrade Auto
FormList Property FoodItems_MediumGrade Auto
FormList Property FoodItems_HighGrade Auto
FormList Property FoodItems_LegendaryGrade Auto
FormList Property DrinkItems_LowGrade Auto
FormList Property DrinkItems_MediumGrade Auto
FormList Property DrinkItems_HighGrade Auto
FormList Property DrinkItems_EnergyGrade Auto
FormList Property ComboItems_LowGrade Auto
FormList Property ComboItems_MediumGrade Auto
FormList Property ComboItems_HighGrade Auto

Conditionform Property NutritionRank1 Auto Const Mandatory
Conditionform Property NutritionRank2 Auto Const Mandatory
Conditionform Property NutritionRank3 Auto Const Mandatory
Conditionform Property NutritionRank4 Auto Const Mandatory

Bool BlockMessage = False

Event OnInit()
      
	  RegisterFormenuOpenCloseEvent("ContainerMenu")  
	  AddInventoryEventFilter(KeywordFood)       
      AddInventoryEventFilter(KeywordDummyFood)    
      AddInventoryEventFilter(KeywordGiftbox)  

EndEvent

Event OnMenuOpenCloseEvent(String asMenuName, Bool abOpening)
    If (asMenuName == "ContainerMenu")
           If (abOpening)
			  BlockMessage = True
		Else
		      BlockMessage = False
		EndIf      
 EndIf    
EndEvent

Event OnItemAdded(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer, Int aiTransferReason)

		     If akBaseItem.HasKeyword(KeywordDummyFood)
                RemoveItem(akBaseItem, aiItemCount, True, None)	
				StartTimer(1, 0)
		 ElseIf akBaseItem.HasKeyword(KeywordFood)
				StartTimer(1, 0)    						 	     
		 ElseIf akBaseItem.HasKeyword(KeywordGiftbox)              
			       If BlockMessage == False
			          MSG_CrewsMoraleGiftBox.Show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)	  
	            EndIf	  
	      EndIf

EndEvent

Event OnTimer(int aiTimerID)
	  
     	     If (aiTimerID == 0) 
			           If PlayerRef.GetValue(CrewMoraleAV) >= 125
                          MSG_CrewsMoraleFull.Show(PlayerRef.GetValue(CrewMoraleAV))
						  CancelTimer(0)
				   Else       
						  If GetItemCount(FoodItems_PoorGrade) > 0
                             CheckForFood(FoodItems_PoorGrade, 1)
				      ElseIf GetItemCount(FoodItems_LowGrade) > 0
                             CheckForFood(FoodItems_LowGrade, 2)
					  ElseIf GetItemCount(FoodItems_MediumGrade) > 0
                             CheckForFood(FoodItems_MediumGrade, 3)
					  ElseIf GetItemCount(FoodItems_HighGrade) > 0
                             CheckForFood(FoodItems_HighGrade, 5)
					  ElseIf GetItemCount(FoodItems_LegendaryGrade) > 0
                             CheckForFood(FoodItems_LegendaryGrade, 7)
					  ElseIf GetItemCount(ComboItems_LowGrade) > 0
                             CheckForFood(ComboItems_LowGrade, 1)
					  ElseIf GetItemCount(ComboItems_MediumGrade) > 0
                             CheckForFood(ComboItems_MediumGrade, 3)
					  ElseIf GetItemCount(ComboItems_HighGrade) > 0
                             CheckForFood(ComboItems_HighGrade, 5)
					  ElseIf GetItemCount(DrinkItems_LowGrade) > 0
                             CheckForFood(DrinkItems_LowGrade, 1)
					  ElseIf GetItemCount(DrinkItems_MediumGrade) > 0
                             CheckForFood(DrinkItems_MediumGrade, 2)
					  ElseIf GetItemCount(DrinkItems_HighGrade) > 0
                             CheckForFood(DrinkItems_HighGrade, 3)
					  ElseIf GetItemCount(DrinkItems_EnergyGrade) > 0
                             CheckForFood(DrinkItems_EnergyGrade, 5)
					  ElseIf GetItemCount(FoodItems_FruitVeggieGrade) > 0
                             CheckForFood(FoodItems_FruitVeggieGrade, 2)
					   Else
					         MSG_CrewsMoraleCheck.Show(PlayerRef.GetValue(CrewMoraleAV))
							 CancelTimer(0)
					   EndIf
					
					EndIf
          EndIf
EndEvent

Function CheckForFood(FormList FoodList, Int RestoreAmount)
		 Float Bonus = FoodBonus()
		 PlayerRef.RestoreValue(CrewMoraleAV, RestoreAmount * Bonus)
	     RemoveItem(FoodList, 1, True, None)	 
		 StartTimer(1, 0)
EndFunction

Float Function FoodBonus()
	  
	  Float Nutrition0 = 1.00      
	  Float Nutrition1 = 1.10
	  Float Nutrition2 = 1.20      
	  Float Nutrition3 = 1.30 
	  Float Nutrition4 = 1.50
      
		If NutritionRank4.IsTrue(PlayerRef, None)    
		   Return Nutrition4 
	ElseIf NutritionRank3.IsTrue(PlayerRef, None)  
	       Return Nutrition3
	ElseIf NutritionRank2.IsTrue(PlayerRef, None)  	 
           Return Nutrition2
	ElseIf NutritionRank1.IsTrue(PlayerRef, None) 
           Return Nutrition1 
Else	
           Return Nutrition0
     EndIf

EndFunction		 