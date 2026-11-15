Scriptname SISA_AdvancedLootDoors_Perk Extends Perk Const hidden

Actor Property PlayerRef Auto Const
MiscObject Property Digipick Auto Const
MiscObject Property Digibreaker Auto Const
Message Property MSG_NotEnoughDigipicks Auto Const
Message Property MSG_NotEnoughDigibreakers Auto Const
Message Property MSG_AvailableDigipicks Auto Const
Message Property MSG_AvailableDigibreakers Auto Const
Explosion Property DigibreakerExplosion Auto Const
wwiseevent Property UnlockingSoundFX Auto Const
wwiseevent Property UnlockingSoundFX02 Auto Const

Function Fragment_EntryHackNovice_00(ObjectReference akTargetRef, Actor akActor)
         akTargetRef.Activate(PlayerRef)
EndFunction

Function Fragment_EntryHackAdvanced_01(ObjectReference akTargetRef, Actor akActor)
         akTargetRef.Activate(PlayerRef)
EndFunction

Function Fragment_EntryHackExpert_02(ObjectReference akTargetRef, Actor akActor)
         akTargetRef.Activate(PlayerRef)
EndFunction

Function Fragment_EntryHackMaster_03(ObjectReference akTargetRef, Actor akActor)
         akTargetRef.Activate(PlayerRef)
EndFunction

Function Fragment_EntryDigibreak_04(ObjectReference akTargetRef, Actor akActor)
		 If PlayerRef.GetItemCount(Digibreaker) > 0         
		    akTargetRef.BlockActivation(True, True)
		    PlayerRef.RemoveItem(Digibreaker, 1, False, None)
		    MSG_AvailableDigibreakers.show(PlayerRef.GetItemCount(Digibreaker))
		    Utility.Wait(1.0)
		    UnlockingSoundFX02.PlayAndWait(PlayerRef, None, None)
		    akTargetRef.Placeatme(DigibreakerExplosion, 1, False, false, true, none, none, True)
		    akTargetRef.UnLock(False)
            akTargetRef.BlockActivation(False, False)
		    akTargetRef.Activate(PlayerRef)
	 Else
            MSG_NotEnoughDigibreakers.show(PlayerRef.GetItemCount(Digibreaker)) 
      EndIf
EndFunction

Function Fragment_EntryRemoveLockGuardNovice_05(ObjectReference akTargetRef, Actor akActor) 		     		        	                					    	  
         If PlayerRef.GetItemCount(Digipick) >= 1
			PlayerRef.RemoveItem(Digipick, 1, False, None)
			UnlockingSoundFX.Play(PlayerRef, None, None)
		    akTargetRef.UnLock(False)
            akTargetRef.Activate(PlayerRef)         
	Else
			MSG_NotEnoughDigipicks.show(PlayerRef.GetItemCount(Digipick))
	  EndIf
EndFunction

Function Fragment_EntryRemoveLockGuardAdvancedNoBonus_06(ObjectReference akTargetRef, Actor akActor) 	       	              
         RemoveLockGuard(akTargetRef, 4, 25)
EndFunction

Function Fragment_EntryRemoveLockGuardAdvancedWithBonus_07(ObjectReference akTargetRef, Actor akActor) 		       	              				 
         RemoveLockGuard(akTargetRef, 2, 25)
EndFunction

Function Fragment_EntryRemoveLockGuardExpertNoBonus_08(ObjectReference akTargetRef, Actor akActor)      	               
         RemoveLockGuard(akTargetRef, 8, 50)
EndFunction

Function Fragment_EntryRemoveLockGuardExpertWithBonus_09(ObjectReference akTargetRef, Actor akActor)       	               				   
         RemoveLockGuard(akTargetRef, 4, 50)
EndFunction

Function Fragment_EntryRemoveLockGuardMasterNoBonus_10(ObjectReference akTargetRef, Actor akActor) 	                 	  
         RemoveLockGuard(akTargetRef, 12, 75)
EndFunction

Function Fragment_EntryRemoveLockGuardMasterWithBonus_11(ObjectReference akTargetRef, Actor akActor) 		                	  	               
         RemoveLockGuard(akTargetRef, 6, 75)
EndFunction

Function RemoveLockGuard(ObjectReference akTargetRef, Int Count, Int Locklevel)
  
         If PlayerRef.GetItemCount(Digipick) >= Count		    
			akTargetRef.SetLockLevel(Locklevel)  
			UnlockingSoundFX.Play(PlayerRef, None, None)	    
			PlayerRef.RemoveItem(Digipick, Count, False, None)
            MSG_AvailableDigipicks.show(PlayerRef.GetItemCount(Digipick))
	 Else
            MSG_NotEnoughDigipicks.show(PlayerRef.GetItemCount(Digipick)) 
      EndIf

EndFunction
