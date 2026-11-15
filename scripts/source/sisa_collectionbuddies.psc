ScriptName SISA_CollectionBuddies Extends Perk Const hidden

Actor Property PlayerRef Auto Const
MiscObject Property Credits Auto Const
MiscObject Property MiscItem_AntiqueEarthBaseball Auto Const
MiscObject Property MiscItem_AntiqueEarthBasketball Auto Const
MiscObject Property MiscItem_AntiqueEarthCDPlayer Auto Const
MiscObject Property MiscItem_AntiqueEarthDuckFigure Auto Const
MiscObject Property MiscItem_AntiqueEarthHockeyStick Auto Const
MiscObject Property MiscItem_AntiqueEarthPiggyBank Auto Const
MiscObject Property MiscItem_AntiqueEarthSoccerBall Auto Const
MiscObject Property MiscItem_AntiqueEarthVideoTape Auto Const
MiscObject Property MiscItem_AntiquePC Auto Const
MiscObject Property MiscItem_AntiquePCEarth Auto Const
MiscObject Property MiscItem_AntiquePiggyBank Auto Const
MiscObject Property MiscItem_AntiquePortableCDPlayer Auto Const
MiscObject Property MiscItem_AntiqueToyMotorcycle01 Auto Const
MiscObject Property MiscItem_AntiqueToyMotorcycle02 Auto Const
MiscObject Property MiscItem_AntiqueToyMotorcycle03 Auto Const
MiscObject Property MiscItem_AntiqueToyMotorcycle04 Auto Const
MiscObject Property MiscItem_AntiqueVideoTape Auto Const
MiscObject Property MiscItem_OldEarthFlipLighter Auto Const
MiscObject Property MiscItem_OrnateStartar Auto Const
MiscObject Property MiscItem_NasaCoffeeMug Auto Const
MiscObject Property MiscItem_SnowGlobe01 Auto Const
MiscObject Property MiscItem_SnowGlobe02 Auto Const
MiscObject Property MiscItem_SnowGlobe03 Auto Const
MiscObject Property MiscItem_SnowGlobe04 Auto Const
MiscObject Property MiscItem_ToyRocket Auto Const
MiscObject Property MiscItem_DeskPhone Auto Const
MiscObject Property MiscItem_NasaNotebook01 Auto Const
MiscObject Property MiscItem_NasaNotebook02 Auto Const
MiscObject Property MiscItem_NasaNotepad Auto Const
MiscObject Property MiscItem_Pen Auto Const
MiscObject Property MiscItem_Pamphlet01 Auto Const
MiscObject Property MiscItem_Pamphlet02 Auto Const
MiscObject Property MiscItem_OldEarthBaseball Auto Const
MiscObject Property MiscItem_MercuryCamera Auto Const
MiscObject Property MiscItem_AntiqueSubmarineClock Auto Const
Message Property MSG_SellAntiquesMenu Auto Const
Conditionform Property CF_NegotiationRank1 Auto Const Mandatory
Conditionform Property CF_NegotiationRank2 Auto Const Mandatory
Conditionform Property CF_NegotiationRank3 Auto Const Mandatory
Conditionform Property CF_NegotiationRank4 Auto Const Mandatory
ReferenceAlias Property HomeShip Auto Const mandatory

Function SellAntiques_00(ObjectReference akTargetRef, Actor akActor)			
		 akTargetRef.BlockActivation(True, True) 
		 SellAntiques(akTargetRef)
EndFunction

Function SellAntiques(ObjectReference akTargetRef, Int MenuType = 0, Int Button = 0, Bool MenuOpened = True)
 
 While MenuOpened
 	 
	 If Button == -1         

 ElseIf MenuType == 0		 			 
			
			SpaceShipReference homeShipRef = HomeShip.GetShipRef()
			
			Int EarthBaseball = (PlayerRef.GetItemCount(MiscItem_AntiqueEarthBaseball) + homeShipRef.GetItemCount(MiscItem_AntiqueEarthBaseball)) * MiscItem_AntiqueEarthBaseball.GetGoldValue()                                                                            
			Int EarthBasketball = (PlayerRef.GetItemCount(MiscItem_AntiqueEarthBasketball) + homeShipRef.GetItemCount(MiscItem_AntiqueEarthBasketball)) * MiscItem_AntiqueEarthBasketball.GetGoldValue()                  		  
 			Int EarthCDPlayer = (PlayerRef.GetItemCount(MiscItem_AntiqueEarthCDPlayer) + homeShipRef.GetItemCount(MiscItem_AntiqueEarthCDPlayer)) * MiscItem_AntiqueEarthCDPlayer.GetGoldValue()   
			Int EarthDuckFigure = (PlayerRef.GetItemCount(MiscItem_AntiqueEarthDuckFigure) + homeShipRef.GetItemCount(MiscItem_AntiqueEarthDuckFigure)) * MiscItem_AntiqueEarthDuckFigure.GetGoldValue()                                                                               
			Int EarthHockeyStick = (PlayerRef.GetItemCount(MiscItem_AntiqueEarthHockeyStick) + homeShipRef.GetItemCount(MiscItem_AntiqueEarthHockeyStick))  * MiscItem_AntiqueEarthHockeyStick.GetGoldValue()                 		  
 			Int EarthPiggyBank = (PlayerRef.GetItemCount(MiscItem_AntiqueEarthPiggyBank) + homeShipRef.GetItemCount(MiscItem_AntiqueEarthPiggyBank)) * MiscItem_AntiqueEarthPiggyBank.GetGoldValue()   
			Int EarthSoccerBall = (PlayerRef.GetItemCount(MiscItem_AntiqueEarthSoccerBall) + homeShipRef.GetItemCount(MiscItem_AntiqueEarthSoccerBall)) * MiscItem_AntiqueEarthSoccerBall.GetGoldValue()                                                                               
			Int EarthVideoTape = (PlayerRef.GetItemCount(MiscItem_AntiqueEarthVideoTape) + homeShipRef.GetItemCount(MiscItem_AntiqueEarthVideoTape)) * MiscItem_AntiqueEarthVideoTape.GetGoldValue()                  		  
 			Int PCEarth = (PlayerRef.GetItemCount(MiscItem_AntiquePCEarth) + homeShipRef.GetItemCount(MiscItem_AntiquePCEarth)) * MiscItem_AntiquePCEarth.GetGoldValue()   
			Int PC = (PlayerRef.GetItemCount(MiscItem_AntiquePC) + homeShipRef.GetItemCount(MiscItem_AntiquePC)) * MiscItem_AntiquePC.GetGoldValue()                                                                                 
			Int PiggyBank = (PlayerRef.GetItemCount(MiscItem_AntiquePiggyBank) + homeShipRef.GetItemCount(MiscItem_AntiquePiggyBank)) * MiscItem_AntiquePiggyBank.GetGoldValue()                    		  
 			Int PortableCDPlayer = (PlayerRef.GetItemCount(MiscItem_AntiquePortableCDPlayer) + homeShipRef.GetItemCount(MiscItem_AntiquePortableCDPlayer)) * MiscItem_AntiquePortableCDPlayer.GetGoldValue()    
			Int ToyMotorcycle01 = (PlayerRef.GetItemCount(MiscItem_AntiqueToyMotorcycle01) + homeShipRef.GetItemCount(MiscItem_AntiqueToyMotorcycle01)) * MiscItem_AntiqueToyMotorcycle01.GetGoldValue()                                                                                 
			Int ToyMotorcycle02 = (PlayerRef.GetItemCount(MiscItem_AntiqueToyMotorcycle02) + homeShipRef.GetItemCount(MiscItem_AntiqueToyMotorcycle02)) * MiscItem_AntiqueToyMotorcycle02.GetGoldValue()                   		  
 			Int ToyMotorcycle03 = (PlayerRef.GetItemCount(MiscItem_AntiqueToyMotorcycle03) + homeShipRef.GetItemCount(MiscItem_AntiqueToyMotorcycle03)) * MiscItem_AntiqueToyMotorcycle03.GetGoldValue()    
			Int ToyMotorcycle04 = (PlayerRef.GetItemCount(MiscItem_AntiqueToyMotorcycle04) + homeShipRef.GetItemCount(MiscItem_AntiqueToyMotorcycle04)) * MiscItem_AntiqueToyMotorcycle04.GetGoldValue()                                                                                 
			Int VideoTape = (PlayerRef.GetItemCount(MiscItem_AntiqueVideoTape) + homeShipRef.GetItemCount(MiscItem_AntiqueVideoTape)) * MiscItem_AntiqueVideoTape.GetGoldValue()                  		  
 			Int FlipLighter = (PlayerRef.GetItemCount(MiscItem_OldEarthFlipLighter) + homeShipRef.GetItemCount(MiscItem_OldEarthFlipLighter)) * MiscItem_OldEarthFlipLighter.GetGoldValue()    
 			Int OrnateStartar = (PlayerRef.GetItemCount(MiscItem_OrnateStartar) + homeShipRef.GetItemCount(MiscItem_OrnateStartar)) * MiscItem_OrnateStartar.GetGoldValue() 

 			Int NasaCoffeeMug = (PlayerRef.GetItemCount(MiscItem_NasaCoffeeMug) + homeShipRef.GetItemCount(MiscItem_NasaCoffeeMug)) * MiscItem_NasaCoffeeMug.GetGoldValue()    
			Int Snowglobe01 = (PlayerRef.GetItemCount(MiscItem_SnowGlobe01) + homeShipRef.GetItemCount(MiscItem_SnowGlobe01)) * MiscItem_SnowGlobe01.GetGoldValue()                                                                                 
			Int Snowglobe02 = (PlayerRef.GetItemCount(MiscItem_SnowGlobe02) + homeShipRef.GetItemCount(MiscItem_SnowGlobe02)) * MiscItem_SnowGlobe02.GetGoldValue()                   		  
 			Int Snowglobe03 = (PlayerRef.GetItemCount(MiscItem_SnowGlobe03) + homeShipRef.GetItemCount(MiscItem_SnowGlobe03)) * MiscItem_SnowGlobe03.GetGoldValue()    
			Int Snowglobe04 = (PlayerRef.GetItemCount(MiscItem_SnowGlobe04) + homeShipRef.GetItemCount(MiscItem_SnowGlobe04)) * MiscItem_SnowGlobe04.GetGoldValue()                                                                                 
			Int ToyRocket = (PlayerRef.GetItemCount(MiscItem_ToyRocket) + homeShipRef.GetItemCount(MiscItem_ToyRocket)) * MiscItem_ToyRocket.GetGoldValue()                  		  
 			Int Deskphone = (PlayerRef.GetItemCount(MiscItem_DeskPhone) + homeShipRef.GetItemCount(MiscItem_DeskPhone)) * MiscItem_DeskPhone.GetGoldValue()    
 			Int NasaNotebook01 = (PlayerRef.GetItemCount(MiscItem_NasaNotebook01) + homeShipRef.GetItemCount(MiscItem_NasaNotebook01)) * MiscItem_NasaNotebook01.GetGoldValue() 
 			Int NasaNotebook02 = (PlayerRef.GetItemCount(MiscItem_NasaNotebook02) + homeShipRef.GetItemCount(MiscItem_NasaNotebook02)) * MiscItem_NasaNotebook02.GetGoldValue() 
 			Int NasaNotepad = (PlayerRef.GetItemCount(MiscItem_NasaNotepad) + homeShipRef.GetItemCount(MiscItem_NasaNotepad)) * MiscItem_NasaNotepad.GetGoldValue() 
 			Int Pen = (PlayerRef.GetItemCount(MiscItem_Pen) + homeShipRef.GetItemCount(MiscItem_Pen)) * MiscItem_Pen.GetGoldValue() 			
 			Int Pamphlet01 = (PlayerRef.GetItemCount(MiscItem_Pamphlet01) + homeShipRef.GetItemCount(MiscItem_Pamphlet01)) * MiscItem_Pamphlet01.GetGoldValue() 
 			Int Pamphlet02 = (PlayerRef.GetItemCount(MiscItem_Pamphlet02) + homeShipRef.GetItemCount(MiscItem_Pamphlet02)) * MiscItem_Pamphlet02.GetGoldValue() 
 			Int MercuryCamera = (PlayerRef.GetItemCount(MiscItem_MercuryCamera) + homeShipRef.GetItemCount(MiscItem_MercuryCamera)) * MiscItem_MercuryCamera.GetGoldValue() 
 			Int OldEarthBaseball = (PlayerRef.GetItemCount(MiscItem_OldEarthBaseball) + homeShipRef.GetItemCount(MiscItem_OldEarthBaseball)) * MiscItem_OldEarthBaseball.GetGoldValue() 
 			Int AntiqueSubmarineClock = (PlayerRef.GetItemCount(MiscItem_AntiqueSubmarineClock) + homeShipRef.GetItemCount(MiscItem_AntiqueSubmarineClock)) * MiscItem_AntiqueSubmarineClock.GetGoldValue() 

			Float Negotiation = NegotiationBonus()
			Int RewardSumm01 = EarthBaseball+EarthBasketball+EarthCDPlayer+EarthDuckFigure+EarthHockeyStick+EarthPiggyBank+EarthSoccerBall+EarthVideoTape+FlipLighter+PCEarth
			Int RewardSumm02 = PC+PiggyBank+PortableCDPlayer+ToyMotorcycle01+ToyMotorcycle02+ToyMotorcycle03+ToyMotorcycle04+VideoTape+FlipLighter+OrnateStartar					
			Int RewardSumm03 = NasaCoffeeMug+Snowglobe01+Snowglobe02+Snowglobe03+Snowglobe04+ToyRocket+Deskphone+NasaNotebook01+NasaNotebook02+NasaNotepad+Pen+Pamphlet01+Pamphlet02+MercuryCamera+OldEarthBaseball+AntiqueSubmarineClock			
			Int TotalReward = Math.Round((RewardSumm01+RewardSumm02+RewardSumm03) * Negotiation)
			
			Button = MSG_SellAntiquesMenu.Show(TotalReward)	 
                   
				   If Button == 0	                     
                      Reward(MiscItem_AntiqueEarthBaseball)
			   ElseIf Button == 1	
                      Reward(MiscItem_AntiqueEarthBasketball)
			   ElseIf Button == 2	
                      Reward(MiscItem_AntiqueEarthCDPlayer)
			   ElseIf Button == 3	
                      Reward(MiscItem_AntiqueEarthDuckFigure)
			   ElseIf Button == 4	
                      Reward(MiscItem_AntiqueEarthHockeyStick)
			   ElseIf Button == 5	
                      Reward(MiscItem_AntiqueEarthPiggyBank)
			   ElseIf Button == 6	
                      Reward(MiscItem_AntiqueEarthSoccerBall)
			   ElseIf Button == 7	
                      Reward(MiscItem_AntiqueEarthVideoTape)
			   ElseIf Button == 8	
                      Reward(MiscItem_AntiquePCEarth)
			   ElseIf Button == 9	                     
                      Reward(MiscItem_AntiquePC)
			   ElseIf Button == 10	
                      Reward(MiscItem_AntiquePiggyBank)
			   ElseIf Button == 11	
                      Reward(MiscItem_AntiquePortableCDPlayer)
			   ElseIf Button == 12	
                      Reward(MiscItem_AntiqueToyMotorcycle01)
			   ElseIf Button == 13	
                      Reward(MiscItem_AntiqueToyMotorcycle02)
			   ElseIf Button == 14	
                      Reward(MiscItem_AntiqueToyMotorcycle03)
			   ElseIf Button == 15	
                      Reward(MiscItem_AntiqueToyMotorcycle04)
			   ElseIf Button == 16	
                      Reward(MiscItem_AntiqueVideoTape)
			   ElseIf Button == 17	
                      Reward(MiscItem_OldEarthFlipLighter)
			   ElseIf Button == 18	
                      Reward(MiscItem_OrnateStartar)
			   ElseIf Button == 19	
                      Reward(MiscItem_NasaCoffeeMug)
			   ElseIf Button == 20	
                      Reward(MiscItem_SnowGlobe01)			   
			   ElseIf Button == 21	
                      Reward(MiscItem_SnowGlobe02)				   
			   ElseIf Button == 22	
                      Reward(MiscItem_SnowGlobe03)				   
			   ElseIf Button == 23	
                      Reward(MiscItem_SnowGlobe04)				   
			   ElseIf Button == 24	
                      Reward(MiscItem_ToyRocket)				   
			   ElseIf Button == 25	
                      Reward(MiscItem_DeskPhone)				   
			   ElseIf Button == 26	
                      Reward(MiscItem_NasaNotebook01)			   
			   ElseIf Button == 27	
                      Reward(MiscItem_NasaNotebook02)			   
			   ElseIf Button == 28	
                      Reward(MiscItem_NasaNotepad)				   
			   ElseIf Button == 29	
                      Reward(MiscItem_Pen)			   
			   ElseIf Button == 30	
                      Reward(MiscItem_Pamphlet01)					   
			   ElseIf Button == 31	
                      Reward(MiscItem_Pamphlet02)				   			  			  			   			   			  			   
			   ElseIf Button == 32	
                      Reward(MiscItem_MercuryCamera)
			   ElseIf Button == 33	
                      Reward(MiscItem_OldEarthBaseball)
			   ElseIf Button == 34	
                      Reward(MiscItem_AntiqueSubmarineClock)
			   ElseIf Button == 35	
				      akTargetRef.BlockActivation(false, false) 
					  MenuOpened = False
				EndIf
                 
  EndIf
EndWhile
EndFunction

Float Function NegotiationBonus()
	  
	  Float NegotiationRank0 = 1.0 	  
	  Float NegotiationRank1 = 1.10      
	  Float NegotiationRank2 = 1.20
	  Float NegotiationRank3 = 1.30      
	  Float NegotiationRank4 = 1.50 
	    
		If CF_NegotiationRank4.IsTrue(PlayerRef, None)  
	       Return NegotiationRank4      
	ElseIf CF_NegotiationRank3.IsTrue(PlayerRef, None)  
	       Return NegotiationRank3
	ElseIf CF_NegotiationRank2.IsTrue(PlayerRef, None)  	 
           Return NegotiationRank2
	ElseIf CF_NegotiationRank1.IsTrue(PlayerRef, None) 
           Return NegotiationRank1 
Else	
           Return NegotiationRank0
     EndIf

EndFunction

Function Reward(MiscObject AntiqueItem)
	     SpaceShipReference homeShipRef = HomeShip.GetShipRef()
		 Float Negotiation = NegotiationBonus()
	     Int ItemCount = PlayerRef.GetItemCount(AntiqueItem) + homeShipRef.GetItemCount(AntiqueItem)
         Int CreditsReward = math.round(AntiqueItem.GetGoldValue() * ItemCount * Negotiation) 
		 PlayerRef.AddItem(Credits, CreditsReward, False)
		 PlayerRef.RemoveItem(AntiqueItem, ItemCount, False, None)
		 homeShipRef.RemoveItem(AntiqueItem, ItemCount, False, None)
EndFunction