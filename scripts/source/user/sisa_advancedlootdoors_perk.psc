Scriptname SISA_AdvancedLootDoors_Perk Extends Perk Const hidden

Actor Property PlayerRef Auto Const
MiscObject Property Digipick Auto Const
MiscObject Property Digibreaker Auto Const
Message Property MSG_NotEnoughDigipicks Auto Const
Message Property MSG_NotEnoughDigibreakers Auto Const
Message Property MSG_NoviceDoorMenu Auto Const
Message Property MSG_AdvancedDoorMenu Auto Const
Message Property MSG_ExpertDoorMenu Auto Const
Message Property MSG_MasterDoorMenu Auto Const
Message Property MSG_NoExpertise Auto Const
Message Property MSG_AvailableDigipicksDoor Auto Const
Message Property MSG_AvailableDigibreakersDoor Auto Const
Conditionform Property ConditionFormSecurityElite Auto Const Mandatory
Conditionform Property ConditionFormSecurityMaster Auto Const Mandatory
Conditionform Property ConditionFormSecurityAdvanced Auto Const Mandatory
Conditionform Property ConditionFormSecurityExpert Auto Const Mandatory
Explosion Property DigibreakerExplosion Auto Const
wwiseevent Property UnlockingSoundFX Auto Const
wwiseevent Property UnlockingSoundFX02 Auto Const

Function Fragment_Entry_00(ObjectReference akTargetRef, Actor akActor)
 
		If akTargetRef.GetLockLevel() > 0 && akTargetRef.GetLockLevel() <= 25		     
		   DoorsMenuNovice(akTargetRef)
    ElseIf akTargetRef.GetLockLevel() > 25 && akTargetRef.GetLockLevel() <= 50
	       If ConditionFormSecurityAdvanced.IsTrue(PlayerRef, None)
	          DoorsMenuAdvanced(akTargetRef)
	    Else
	          MSG_NoExpertise.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
		EndIf
    ElseIf akTargetRef.GetLockLevel() > 50 && akTargetRef.GetLockLevel() <= 75
	       If ConditionFormSecurityExpert.IsTrue(PlayerRef, None)
	          DoorsMenuExpert(akTargetRef)
	    Else
	          MSG_NoExpertise.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
		EndIf
    ElseIf akTargetRef.GetLockLevel() > 75 && akTargetRef.GetLockLevel() <= 100
	       If ConditionFormSecurityMaster.IsTrue(PlayerRef, None) || ConditionFormSecurityElite.IsTrue(PlayerRef, None)
		      DoorsMenuMaster(akTargetRef)
	    Else
	          MSG_NoExpertise.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
		EndIf
	 EndIf

EndFunction

Int Function LockguardCostAdvanced()
    
	Int LockguardCostAdvancedWithoutPerk = 4
    Int LockguardCostAdvancedWithPerk = 1
	
    If ConditionFormSecurityElite.IsTrue(PlayerRef, None) 
       Return LockguardCostAdvancedWithPerk
 Else
       Return LockguardCostAdvancedWithoutPerk
 EndIf

EndFunction

Int Function LockguardCostExpert()
    
	Int LockguardCostExpertWithoutPerk = 7
    Int LockguardCostExpertWithPerk = 4
	
    If ConditionFormSecurityElite.IsTrue(PlayerRef, None) 
       Return LockguardCostExpertWithPerk
 Else
       Return LockguardCostExpertWithoutPerk
 EndIf

EndFunction

Int Function LockguardCostMaster()
    
	Int LockguardCostMasterWithoutPerk = 10
    Int LockguardCostMasterWithPerk = 7
	
    If ConditionFormSecurityElite.IsTrue(PlayerRef, None) 
       Return LockguardCostMasterWithPerk
 Else
       Return LockguardCostMasterWithoutPerk
 EndIf

EndFunction

Function DoorsMenuNovice(ObjectReference akTargetRef, Int MenuType = 0, Int Button = 0)
		 			 
		 If Button == -1		 
     
	 ElseIf MenuType == 0
		    			
			Button = MSG_NoviceDoorMenu.Show(PlayerRef.GetItemCount(Digipick), PlayerRef.GetItemCount(Digibreaker), 0, 0, 0, 0, 0, 0, 0)	 
                   
				   If Button == 0
	                  
					  akTargetRef.Activate(PlayerRef)
			   
			   ElseIf Button == 1
                        
		                Int DigipickCountInstant = 1  		        	                
					    	  
							  If ConditionFormSecurityAdvanced.IsTrue(PlayerRef, None)
                                       If PlayerRef.GetItemCount(Digipick) >= DigipickCountInstant
					                      PlayerRef.RemoveItem(Digipick, DigipickCountInstant, False, None)
							              UnlockingSoundFX.Play(PlayerRef, None, None)
		                                  akTargetRef.UnLock(False)
                                          akTargetRef.Activate(PlayerRef)         
				                   Else
				                          MSG_NotEnoughDigipicks.show(PlayerRef.GetItemCount(Digipick), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					                EndIf
				           EndIf
			   
			   ElseIf Button == 2
                             	
					  Lockbreaker(akTargetRef)
			   
			   ElseIf Button == 3 
                      ; Exit
				EndIf
      EndIf

EndFunction

Function DoorsMenuAdvanced(ObjectReference akTargetRef, Int MenuType = 0, Int Button = 0)
		 			 
		 If Button == -1		 
     
	 ElseIf MenuType == 0
			
			Int LockGuardCost01 = LockguardCostAdvanced()
		    Button = MSG_AdvancedDoorMenu.Show(LockGuardCost01, PlayerRef.GetItemCount(Digipick), PlayerRef.GetItemCount(Digibreaker), 0, 0, 0, 0, 0, 0)	 
                   
				   If Button == 0
	                  
					  akTargetRef.Activate(PlayerRef)
			   
			   ElseIf Button == 1
                        
		              Int DigipickCountAdvancedNoPerk = 4
		              Int DigipickCountAdvancedWithPerk = 1		
		              Int ReduceLockLevelToNovice = 25		       	              
				  
				               If ConditionFormSecurityElite.IsTrue(PlayerRef, None)
                                  RemoveLockGuard(akTargetRef, DigipickCountAdvancedWithPerk, ReduceLockLevelToNovice)
                            Else
                                  RemoveLockGuard(akTargetRef, DigipickCountAdvancedNoPerk, ReduceLockLevelToNovice)
                            EndIf
			   
			   ElseIf Button == 2
                             	
				      Lockbreaker(akTargetRef)
			   
			   ElseIf Button == 3 
                      ; Exit
				EndIf
      EndIf

EndFunction

Function DoorsMenuExpert(ObjectReference akTargetRef, Int MenuType = 0, Int Button = 0)
		 			 
		 If Button == -1		 
     
	 ElseIf MenuType == 0
		    Int LockGuardCost02 = LockguardCostExpert()
			Button = MSG_ExpertDoorMenu.Show(LockGuardCost02, PlayerRef.GetItemCount(Digipick), PlayerRef.GetItemCount(Digibreaker), 0, 0, 0, 0, 0, 0)	 
                   
				   If Button == 0
	                  
					  akTargetRef.Activate(PlayerRef)
			   
			   ElseIf Button == 1
                        
		              Int DigipickCountExpertNoPerk = 7
		              Int DigipickCountExpertWithPerk = 4		
		              Int ReduceLockLevelToAdvanced = 50        	               
				   
				               If ConditionFormSecurityElite.IsTrue(PlayerRef, None)
                                  RemoveLockGuard(akTargetRef, DigipickCountExpertWithPerk, ReduceLockLevelToAdvanced)
                            Else
                                  RemoveLockGuard(akTargetRef, DigipickCountExpertNoPerk, ReduceLockLevelToAdvanced)
                            EndIf
			   
			   ElseIf Button == 2
                             	
					  Lockbreaker(akTargetRef)
			   
			   ElseIf Button == 3 
                      ; Exit
				EndIf
      EndIf

EndFunction

Function DoorsMenuMaster(ObjectReference akTargetRef, Int MenuType = 0, Int Button = 0)
		 			 
		 If Button == -1		 
     
	 ElseIf MenuType == 0
		    Int LockGuardCost03 = LockguardCostMaster()
			Button = MSG_MasterDoorMenu.Show(LockGuardCost03, PlayerRef.GetItemCount(Digipick), PlayerRef.GetItemCount(Digibreaker), 0, 0, 0, 0, 0, 0)	 
                   
				   If Button == 0
	                  
					  akTargetRef.Activate(PlayerRef)
			   
			   ElseIf Button == 1
                        
		              Int DigipickCountMasterNoPerk = 10
		              Int DigipickCountMasterWithPerk = 7
		              Int ReduceLockLevelToExpert = 75          	  
	               
				               If ConditionFormSecurityElite.IsTrue(PlayerRef, None)
                                  RemoveLockGuard(akTargetRef, DigipickCountMasterWithPerk, ReduceLockLevelToExpert)
                           Else
                                  RemoveLockGuard(akTargetRef, DigipickCountMasterNoPerk, ReduceLockLevelToExpert)
                            EndIf
			   
			   ElseIf Button == 2
                             	
					  Lockbreaker(akTargetRef)
			   
			   ElseIf Button == 3 
                      ; Exit
				EndIf
      EndIf

EndFunction

Function Lockbreaker(ObjectReference akTargetRef)
         
		 If PlayerRef.GetItemCount(Digibreaker) > 0         
		    akTargetRef.BlockActivation(True, True)
		    PlayerRef.RemoveItem(Digibreaker, 1, False, None)
		    MSG_AvailableDigibreakersDoor.show(PlayerRef.GetItemCount(Digibreaker), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
		    Utility.Wait(1.0)
		    UnlockingSoundFX02.PlayAndWait(PlayerRef, None, None)
		    akTargetRef.Placeatme(DigibreakerExplosion, 1, False, false, true, none, none, True)
		    akTargetRef.UnLock(False)
            akTargetRef.BlockActivation(False, False)
		    akTargetRef.Activate(PlayerRef)
	 Else
            MSG_NotEnoughDigibreakers.show(PlayerRef.GetItemCount(Digibreaker), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) 
      EndIf

EndFunction

Function RemoveLockGuard(ObjectReference akTargetRef, Int Count, Int Locklevel)
  
         If PlayerRef.GetItemCount(Digipick) >= Count		    
			akTargetRef.SetLockLevel(Locklevel)  
			UnlockingSoundFX.Play(PlayerRef, None, None)	    
			PlayerRef.RemoveItem(Digipick, Count, False, None)
            MSG_AvailableDigipicksDoor.show(PlayerRef.GetItemCount(Digipick), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	 Else
            MSG_NotEnoughDigipicks.show(PlayerRef.GetItemCount(Digipick), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) 
      EndIf

EndFunction
