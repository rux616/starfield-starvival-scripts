Scriptname SISA_AdvancedLoot_Perk Extends Perk Const hidden

Actor Property PlayerRef Auto Const
MiscObject Property Digipick Auto Const
MiscObject Property Digibreaker Auto Const
Keyword Property Token_HackedDoor Auto Const
Message Property MSG_NotEnoughDigipicks Auto Const
Message Property MSG_AvailableDigipicks Auto Const
Message Property MSG_AvailableDigibreakers Auto Const
Conditionform Property ConditionFormSecurityMaster Auto Const Mandatory
Conditionform Property ConditionFormSecurityAdvanced Auto Const Mandatory
Explosion Property DigibreakerExplosion Auto Const
wwiseevent Property UnlockingSoundFX Auto Const
wwiseevent Property UnlockingSoundFX02 Auto Const

Function Fragment_Entry_00(ObjectReference akTargetRef, Actor akActor)
 		                             
		Int DigipickCountMasterNoPerk = 10
		Int DigipickCountMasterWithPerk = 7
		Int ReduceLockLevelToExpert = 75          	  
	               
				   If ConditionFormSecurityMaster.IsTrue(PlayerRef, None)
                      RemoveLockGuard(akTargetRef, akActor, DigipickCountMasterWithPerk, ReduceLockLevelToExpert)
               Else
                      RemoveLockGuard(akTargetRef, akActor, DigipickCountMasterNoPerk, ReduceLockLevelToExpert)
                EndIf

EndFunction

Function Fragment_Entry_01(ObjectReference akTargetRef, Actor akActor)
        
		Int DigipickCountExpertNoPerk = 7
		Int DigipickCountExpertWithPerk = 4		
		Int ReduceLockLevelToAdvanced = 50        	               
				   
				   If ConditionFormSecurityMaster.IsTrue(PlayerRef, None)
                      RemoveLockGuard(akTargetRef, akActor, DigipickCountExpertWithPerk, ReduceLockLevelToAdvanced)
               Else
                      RemoveLockGuard(akTargetRef, akActor, DigipickCountExpertNoPerk, ReduceLockLevelToAdvanced)
                EndIf

EndFunction

Function Fragment_Entry_02(ObjectReference akTargetRef, Actor akActor)
         
		Int DigipickCountAdvancedNoPerk = 4
		Int DigipickCountAdvancedWithPerk = 1		
		Int ReduceLockLevelToNovice = 25		       	              
				  
				  If ConditionFormSecurityMaster.IsTrue(PlayerRef, None)
                     RemoveLockGuard(akTargetRef, akActor, DigipickCountAdvancedWithPerk, ReduceLockLevelToNovice)
              Else
                     RemoveLockGuard(akTargetRef, akActor, DigipickCountAdvancedNoPerk, ReduceLockLevelToNovice)
               EndIf

EndFunction

Function Fragment_Entry_03(ObjectReference akTargetRef, Actor akActor)
		
		Int DigipickCountInstant = 1  		        	                
					
					If ConditionFormSecurityAdvanced.IsTrue(PlayerRef, None)
                         If PlayerRef.GetItemCount(Digipick) >= DigipickCountInstant
					        PlayerRef.RemoveItem(Digipick, DigipickCountInstant, False, None)
							UnlockingSoundFX.Play(PlayerRef, None, None)
		                    akTargetRef.UnLock(False)
                            akTargetRef.Activate(PlayerRef)         
				            MSG_AvailableDigipicks.show(PlayerRef.GetItemCount(Digipick), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) 
					  Else
				            MSG_NotEnoughDigipicks.show(PlayerRef.GetItemCount(Digipick), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					  EndIf
				 EndIf

EndFunction

Function Fragment_Entry_04(ObjectReference akTargetRef, Actor akActor)
         
            akTargetRef.BlockActivation(True, True)
			PlayerRef.RemoveItem(Digibreaker, 1, False, None)
			MSG_AvailableDigibreakers.show(PlayerRef.GetItemCount(Digibreaker), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
			Utility.Wait(1.0)
		    UnlockingSoundFX02.PlayAndWait(PlayerRef, None, None)
		    akTargetRef.Placeatme(DigibreakerExplosion, 1, False, false, true, none, none, True)
		    akTargetRef.UnLock(False)
            akTargetRef.BlockActivation(False, False)

EndFunction

Function RemoveLockGuard(ObjectReference akTargetRef, Actor akActor, Int Count, Int Locklevel)
  
         If PlayerRef.GetItemCount(Digipick) >= Count		    
			akTargetRef.SetLockLevel(Locklevel)
			Utility.Wait(0.05)   
			UnlockingSoundFX.Play(PlayerRef, None, None)	    
			PlayerRef.RemoveItem(Digipick, Count, False, None)
            akTargetRef.BlockActivation(True, True)
			akTargetRef.BlockActivation(False, False)
	        MSG_AvailableDigipicks.show(PlayerRef.GetItemCount(Digipick), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	 Else
            MSG_NotEnoughDigipicks.show(PlayerRef.GetItemCount(Digipick), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) 
      EndIf

EndFunction