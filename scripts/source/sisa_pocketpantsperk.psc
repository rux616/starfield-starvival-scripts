Scriptname SISA_PocketpantsPerk Extends Perk Const hidden

Actor Property PlayerRef Auto Const
Armor Property PocketPantsToken Auto Const
Armor Property RobohackToken Auto Const
Spell Property FragBangSpell Auto Const
Spell Property StunCloudSpell Auto Const
Spell Property FlamethrowerSpell Auto Const
Spell Property OverheatSpell Auto Const
Spell Property PoisonGrenadeSpell Auto Const
Spell Property HyberstarterSpell Auto Const
Spell Property RobotFrenzySpell Auto Const
Spell Property HumanFrenzySpell Auto Const
Spell Property KamikadzeSpell Auto Const
Spell Property KamikadzeWithFragBangSpell Auto Const
Spell Property SendDetectionEvent Auto Const
MiscObject Property PocketFrag Auto const
MiscObject Property PocketPoison Auto const
MiscObject Property PocketOverheat Auto const
MiscObject Property PocketHyberstarter Auto const
MiscObject Property PocketStunCloud Auto const
MiscObject Property PocketHiJack Auto const
MiscObject Property PocketFlamethrower Auto const
MiscObject Property PocketScapegoat Auto const
MiscObject Property PocketKamikadze Auto const
MiscObject Property Digipick Auto Const
Message Property MSG_PantsdropMenu Auto Const
Message Property MSG_RoboPantsdropMenu Auto Const
Message Property MSG_TargetAlreadyHacked Auto Const
Message Property MSG_RoboGadgetAtWork Auto Const
Message Property MSG_NPCGadgetAtWork Auto Const
GlobalVariable Property GV_DummyDoorUnlocked Auto Const

ObjectReference Property DummyDoor Auto Const

Function PrepareDummyDoorForHack()
      
	  RegisterForRemoteEvent(DummyDoor, "OnLockStateChanged")      
	  GV_DummyDoorUnlocked.SetValue(0)      
	  PlayerRef.RemoveItem(Digipick, 3, False, None)
	  DummyDoor.Lock(True, False, False)
      DummyDoor.SetLockLevel(75)
      DummyDoor.Activate(PlayerRef)

EndFunction

Event ObjectReference.OnLockStateChanged(ObjectReference akSource)
         
		 If DummyDoor.IsLocked() == False
            GV_DummyDoorUnlocked.SetValue(1)
      EndIf

EndEvent

Function Fragment_Entry_00(ObjectReference akTargetRef, Actor akActor)
		 
		 If akTargetRef.GetItemCount(PocketPantsToken) <= 0	 		 
            PantsDropMenu(akTargetRef, akActor)
     Else
            MSG_NPCGadgetAtWork.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) 
      EndIf		

EndFunction

Function Fragment_Entry_01(ObjectReference akTargetRef, Actor akActor)
         
         PrepareDummyDoorForHack()
		 Utility.Wait(0.2)
		 If GV_DummyDoorUnlocked.GetValue() == 1       
			   If akTargetRef.GetItemCount(RobohackToken) <= 0			              	
                  akTargetRef.AddItem(RobohackToken, 1, True)  
				  UnregisterForRemoteEvent(DummyDoor, "OnLockStateChanged")
				  RoboPantsDropMenu(akTargetRef, akActor)
           Else	
                  MSG_TargetAlreadyHacked.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)   
            EndIf
     EndIf

EndFunction

Function Fragment_Entry_02(ObjectReference akTargetRef, Actor akActor)
 		 
		 If akTargetRef.GetItemCount(PocketPantsToken) <= 0		
		    RoboPantsDropMenu(akTargetRef, akActor)
     Else
            MSG_RoboGadgetAtWork.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) 
      EndIf

EndFunction

Function PantsDropMenu(ObjectReference akTargetRef, Actor akActor, Int MenuType = 0, Int Button = 0)
		 			 
		 If Button == -1		 
     
	 ElseIf MenuType == 0
		    			
			Button = MSG_PantsdropMenu.Show(PlayerRef.GetItemCount(PocketPoison), PlayerRef.GetItemCount(PocketFrag), PlayerRef.GetItemCount(PocketStunCloud), PlayerRef.GetItemCount(PocketFlamethrower), PlayerRef.GetItemCount(PocketScapegoat), PlayerRef.GetItemCount(PocketKamikadze), 0, 0, 0)	 
            Int GetXP = akActor.GetLevel() / 2     
				   
				   If Button == 0
	                  
					  If PlayerRef.GetItemCount(PocketPoison) > 0
					     akTargetRef.Additem(PocketPantsToken, 1, True)
						 PlayerRef.RemoveItem(PocketPoison, 1, False, None)
		                 SendDetectionEvent.cast(akTargetRef, akTargetRef)
						 Utility.Wait(1.0)
						 PoisonGrenadeSpell.cast(akTargetRef, akTargetRef)						 
			             Game.RewardPlayerXP(GetXP)
				   EndIf
			   
			   ElseIf Button == 1
                      
					  If PlayerRef.GetItemCount(PocketFrag) > 0 						 
						 akTargetRef.Additem(PocketPantsToken, 1, True)
						 PlayerRef.RemoveItem(PocketFrag, 1, False, None)
					     SendDetectionEvent.cast(akTargetRef, akTargetRef)
					     Utility.Wait(3.0)
                         FragBangSpell.cast(akTargetRef, akTargetRef)
				         Game.RewardPlayerXP(GetXP)
				   EndIf  

			   ElseIf Button == 2
                      
					  If PlayerRef.GetItemCount(PocketStunCloud) > 0
					     akTargetRef.Additem(PocketPantsToken, 1, True)
						 PlayerRef.RemoveItem(PocketStunCloud, 1, False, None)
						 SendDetectionEvent.cast(akTargetRef, akTargetRef)
						 Utility.Wait(3.0)
						 StunCloudSpell.cast(akTargetRef, akTargetRef)
				         Game.RewardPlayerXP(GetXP)				   
				   EndIf

			   ElseIf Button == 3
					  
					  If PlayerRef.GetItemCount(PocketFlamethrower) > 0
					     akTargetRef.Additem(PocketPantsToken, 1, True)
						 PlayerRef.RemoveItem(PocketFlamethrower, 1, False, None)
				         SendDetectionEvent.cast(akTargetRef, akTargetRef)
						 Utility.Wait(3.0)
						 FlamethrowerSpell.cast(akTargetRef, akTargetRef)
				         Game.RewardPlayerXP(GetXP)				   
				   EndIf    	

			   ElseIf Button == 4
					  
					  If PlayerRef.GetItemCount(PocketScapegoat) > 0
					     akTargetRef.Additem(PocketPantsToken, 1, True)
						 PlayerRef.RemoveItem(PocketScapegoat, 1, False, None)
						 SendDetectionEvent.cast(akTargetRef, akTargetRef)
						 Utility.Wait(3.0)
						 HumanFrenzySpell.cast(akTargetRef, akTargetRef)
				         Game.RewardPlayerXP(GetXP)				   
				   EndIf  

			   ElseIf Button == 5
					  
					  If PlayerRef.GetItemCount(PocketKamikadze) > 0
					     akTargetRef.Additem(PocketPantsToken, 1, True)
						 PlayerRef.RemoveItem(PocketKamikadze, 1, False, None)
						 SendDetectionEvent.cast(akTargetRef, akTargetRef)
						 Utility.Wait(3.0)
						 KamikadzeSpell.cast(akTargetRef, akTargetRef)
				         Game.RewardPlayerXP(GetXP)				   
				   EndIf  

			   ElseIf Button == 6
					  
					  If PlayerRef.GetItemCount(PocketKamikadze) > 0 && PlayerRef.GetItemCount(PocketFrag) > 0
					     akTargetRef.Additem(PocketPantsToken, 1, True)
						 PlayerRef.RemoveItem(PocketKamikadze, 1, False, None)
						 PlayerRef.RemoveItem(PocketFrag, 1, False, None)
						 SendDetectionEvent.cast(akTargetRef, akTargetRef)
						 Utility.Wait(3.0)
						 KamikadzeWithFragBangSpell.cast(akTargetRef, akTargetRef)
				         Game.RewardPlayerXP(GetXP)				   
				   EndIf 

			   ElseIf Button == 7

				EndIf
      EndIf

EndFunction

Function RoboPantsDropMenu(ObjectReference akTargetRef, Actor akActor, Int MenuType = 0, Int Button = 0)
		 			 
		 If Button == -1		 
     
	 ElseIf MenuType == 0
		    			
			Button = MSG_RoboPantsdropMenu.Show(PlayerRef.GetItemCount(PocketOverheat), PlayerRef.GetItemCount(PocketHyberstarter), PlayerRef.GetItemCount(PocketHiJack), 0, 0, 0, 0, 0, 0)	 
            Int GetXP = akActor.GetLevel() / 2
				   
				   If Button == 0
	                  
					  
					  If PlayerRef.GetItemCount(PocketOverheat) > 0
					     akTargetRef.Additem(PocketPantsToken, 1, True)
						 PlayerRef.RemoveItem(PocketOverheat, 1, False, None)
				         OverheatSpell.cast(akTargetRef, akTargetRef)
				         SendDetectionEvent.cast(akTargetRef, akTargetRef)
				         Game.RewardPlayerXP(GetXP)
				   EndIf
			   
			   ElseIf Button == 1
                      
					  If PlayerRef.GetItemCount(PocketHyberstarter) > 0 
						 akTargetRef.Additem(PocketPantsToken, 1, True)
						 PlayerRef.RemoveItem(PocketHyberstarter, 1, False, None)			         
						 HyberstarterSpell.cast(akTargetRef, akTargetRef)
				         SendDetectionEvent.cast(akTargetRef, akTargetRef)
				         Game.RewardPlayerXP(GetXP)
				   EndIf  
			   
			   ElseIf Button == 2
					  
					  If PlayerRef.GetItemCount(PocketHiJack) > 0
						 akTargetRef.Additem(PocketPantsToken, 1, True)
						 PlayerRef.RemoveItem(PocketHiJack, 1, False, None)				         
						 RobotFrenzySpell.cast(akTargetRef, akTargetRef)
				         SendDetectionEvent.cast(akTargetRef, akTargetRef)
				         Game.RewardPlayerXP(GetXP)
				   EndIf     	
			   
			   ElseIf Button == 3
					  ; Exit  				
				EndIf
      EndIf

EndFunction		   