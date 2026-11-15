ScriptName SISA_WorkbenchFilteringCat Extends Perk Const hidden

GlobalVariable Property GV_Filter_Ammo Auto Const
GlobalVariable Property GV_Filter_Addictions Auto Const
GlobalVariable Property GV_Filter_Afflictions Auto Const
GlobalVariable Property GV_Filter_Hearts Auto Const
GlobalVariable Property GV_Filter_Healing Auto Const
GlobalVariable Property GV_Filter_Enhancements Auto Const
GlobalVariable Property GV_Filter_Industrial Auto Const
GlobalVariable Property GV_Filter_Spaceship Auto Const
GlobalVariable Property GV_Filter_Ingots Auto Const
GlobalVariable Property GV_Filter_Vehicle Auto Const
GlobalVariable Property GV_Filter_Gadgets Auto Const
GlobalVariable Property GV_Filter_Auxilliary Auto Const
GlobalVariable Property GV_Filter_Drinks Auto Const
GlobalVariable Property GV_Filter_Food Auto Const
GlobalVariable Property GV_Filter_Alcohol Auto Const
GlobalVariable Property GV_Filter_Grenades Auto Const
GlobalVariable Property GV_Filter_Mines Auto Const
GlobalVariable Property GV_Filter_Replenishers Auto Const
Message Property MSG_WorkbenchFilterMenuIndustrial Auto Const
Message Property MSG_WorkbenchFilterMenuCooking Auto Const
Message Property MSG_WorkbenchFilterMenuPharm Auto Const

Function Fragment_Entry_00(ObjectReference akTargetRef, Actor akActor)       
         Industrial()
EndFunction

Function Fragment_Entry_01(ObjectReference akTargetRef, Actor akActor)       
         Pharmaceutical()
EndFunction

Function Fragment_Entry_02(ObjectReference akTargetRef, Actor akActor)       
         Cooking()
EndFunction

Function Industrial(Int MenuType = 0, Int Button = 0)

	 If Button == -1

 ElseIf MenuType == 0
		button = MSG_WorkbenchFilterMenuIndustrial.show()

	                                    If (button == 0)
                                            GV_Filter_Ammo.SetValue(0)
	                                        Industrial()
									ElseIf (button == 1)
                                            GV_Filter_Ammo.SetValue(1)	                                		                                
									        Industrial()
									ElseIf (button == 2)
                                            GV_Filter_Auxilliary.SetValue(0)		                                
									        Industrial()
									ElseIf (button == 3)
                                            GV_Filter_Auxilliary.SetValue(1)
									        Industrial()
									ElseIf (button == 4)
                                            GV_Filter_Gadgets.SetValue(0)		                                
									        Industrial()
									ElseIf (button == 5)
                                            GV_Filter_Gadgets.SetValue(1)	                                
									        Industrial()
									ElseIf (button == 6)
                                            GV_Filter_Ingots.SetValue(0)		                                
									        Industrial()
									ElseIf (button == 7)
                                            GV_Filter_Ingots.SetValue(1)	
									        Industrial()
									ElseIf (button == 8)
                                            GV_Filter_Industrial.SetValue(0)		                                
									        Industrial()
									ElseIf (button == 9)
                                            GV_Filter_Industrial.SetValue(1)
									        Industrial()
									ElseIf (button == 10)
                                            GV_Filter_Spaceship.SetValue(0)		                                
									        Industrial()
									ElseIf (button == 11)
                                            GV_Filter_Spaceship.SetValue(1)
									        Industrial()
									ElseIf (button == 12)
                                            GV_Filter_Vehicle.SetValue(0)		                                
									        Industrial()
									ElseIf (button == 13)
                                            GV_Filter_Vehicle.SetValue(1)
									        Industrial()
									ElseIf (button == 14)
                                            GV_Filter_Ammo.SetValue(1)	
                                            GV_Filter_Auxilliary.SetValue(1)
                                            GV_Filter_Gadgets.SetValue(1)
                                            GV_Filter_Ingots.SetValue(1)
                                            GV_Filter_Industrial.SetValue(1)
                                            GV_Filter_Spaceship.SetValue(1)
                                            GV_Filter_Vehicle.SetValue(1)
									        Industrial()
									ElseIf (button == 15)
                                            GV_Filter_Ammo.SetValue(0)	
                                            GV_Filter_Auxilliary.SetValue(0)
                                            GV_Filter_Gadgets.SetValue(0)
                                            GV_Filter_Ingots.SetValue(0)
                                            GV_Filter_Industrial.SetValue(0)
                                            GV_Filter_Spaceship.SetValue(0)
                                            GV_Filter_Vehicle.SetValue(0)
									        Industrial()								 									 
									 EndIf

  EndIf
EndFunction

Function Pharmaceutical(Int MenuType = 0, Int Button = 0)

	 If Button == -1

 ElseIf MenuType == 0
		button = MSG_WorkbenchFilterMenuPharm.show()

	                                    If (button == 0)
                                            GV_Filter_Addictions.SetValue(0)
                                            Pharmaceutical()
	                                ElseIf (button == 1)
                                            GV_Filter_Addictions.SetValue(1)	                                		                                
                                            Pharmaceutical()
									ElseIf (button == 2)
                                            GV_Filter_Afflictions.SetValue(0)		                                
                                            Pharmaceutical()
									ElseIf (button == 3)
                                            GV_Filter_Afflictions.SetValue(1)
                                            Pharmaceutical()
									ElseIf (button == 4)
                                            GV_Filter_Enhancements.SetValue(0)		                                
                                            Pharmaceutical()
									ElseIf (button == 5)
                                            GV_Filter_Enhancements.SetValue(1)	                                
                                            Pharmaceutical()
									ElseIf (button == 6)
                                            GV_Filter_Healing.SetValue(0)		                                
                                            Pharmaceutical()
									ElseIf (button == 7)
                                            GV_Filter_Healing.SetValue(1)	
                                            Pharmaceutical()
									ElseIf (button == 8)
                                            GV_Filter_Hearts.SetValue(0)		                                
                                            Pharmaceutical()
									ElseIf (button == 9)
                                            GV_Filter_Hearts.SetValue(1)
                                            Pharmaceutical()
									ElseIf (button == 10)
                                            GV_Filter_Replenishers.SetValue(0)		                                
                                            Pharmaceutical()
									ElseIf (button == 11)
                                            GV_Filter_Replenishers.SetValue(1)
                                            Pharmaceutical()
									ElseIf (button == 12)
                                            GV_Filter_Addictions.SetValue(1)	
                                            GV_Filter_Afflictions.SetValue(1)
                                            GV_Filter_Enhancements.SetValue(1)
                                            GV_Filter_Healing.SetValue(1)
                                            GV_Filter_Hearts.SetValue(1)
                                            GV_Filter_Replenishers.SetValue(1)
                                            Pharmaceutical()
									ElseIf (button == 13)
                                            GV_Filter_Addictions.SetValue(0)	
                                            GV_Filter_Afflictions.SetValue(0)
                                            GV_Filter_Enhancements.SetValue(0)
                                            GV_Filter_Healing.SetValue(0)
                                            GV_Filter_Hearts.SetValue(0)
                                            GV_Filter_Replenishers.SetValue(0)
                                            Pharmaceutical()							 									 
									 EndIf

  EndIf
EndFunction

Function Cooking(Int MenuType = 0, Int Button = 0)

	 If Button == -1

 ElseIf MenuType == 0
		button = MSG_WorkbenchFilterMenuCooking.show()

	                                    If (button == 0)
                                            GV_Filter_Alcohol.SetValue(0)
                                            Cooking()
	                                ElseIf (button == 1)
                                            GV_Filter_Alcohol.SetValue(1)	                                		                                
                                            Cooking()
									ElseIf (button == 2)
                                            GV_Filter_Drinks.SetValue(0)		                                
                                            Cooking()
									ElseIf (button == 3)
                                            GV_Filter_Drinks.SetValue(1)
                                            Cooking()
									ElseIf (button == 4)
                                            GV_Filter_Food.SetValue(0)		                                
                                            Cooking()
									ElseIf (button == 5)
                                            GV_Filter_Food.SetValue(1)	                                
                                            Cooking()
									ElseIf (button == 6)
                                            GV_Filter_Alcohol.SetValue(1)	
                                            GV_Filter_Drinks.SetValue(1)
                                            GV_Filter_Food.SetValue(1)
                                            Cooking()
									ElseIf (button == 7)
                                            GV_Filter_Alcohol.SetValue(0)	
                                            GV_Filter_Drinks.SetValue(0)
                                            GV_Filter_Food.SetValue(0)
                                            Cooking()							 									 
									 EndIf

  EndIf
EndFunction