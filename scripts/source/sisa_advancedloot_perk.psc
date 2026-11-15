Scriptname SISA_AdvancedLoot_Perk Extends Perk Const hidden

Actor Property PlayerRef Auto Const
MiscObject Property Digipick Auto Const
MiscObject Property Digibreaker Auto Const
Message Property MSG_NotEnoughDigipicks Auto Const
Message Property MSG_NotEnoughDigibreakers Auto Const
Message Property MSG_AvailableDigipicks Auto Const
Message Property MSG_AvailableDigibreakers Auto Const
Message Property MSG_DigipicsReturned Auto Const
Explosion Property DigibreakerExplosion Auto Const
wwiseevent Property UnlockingSoundFX Auto Const
wwiseevent Property UnlockingSoundFX02 Auto Const
wwiseevent Property UnlockingSoundFX03 Auto Const
Conditionform Property CF_TerminalObjects Auto Const Mandatory
Conditionform Property CF_SecurityRank4 Auto Const Mandatory
GlobalVariable Property GV_DummyDoorForVendingUnlocked Auto Const
ObjectReference Property DummyDoor Auto Const
Keyword Property KWD_Hacked Auto Const
MiscObject Property MSC_Credits Auto Const
EffectShader Property VFX_Sparks Auto Const

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
			UnlockingSoundFX.Play(PlayerRef, None, None)
		    MSG_AvailableDigibreakers.show(PlayerRef.GetItemCount(Digibreaker))
		    Utility.Wait(1.0)
			UnlockingSoundFX02.PlayAndWait(PlayerRef, None, None)
		    UnlockingSoundFX03.Play(PlayerRef, None, None)
		    akTargetRef.Placeatme(DigibreakerExplosion, 1, False, false, true, none, none, True)
		    akTargetRef.UnLock(False)
            akTargetRef.BlockActivation(False, False)
		       If !CF_TerminalObjects.IsTrue(akTargetRef, None) 
			      akTargetRef.Activate(akTargetRef)
	        EndIf
	 Else
            MSG_NotEnoughDigibreakers.show(PlayerRef.GetItemCount(Digibreaker)) 
      EndIf
EndFunction

Function Fragment_EntryRemoveLockGuardNovice_05(ObjectReference akTargetRef, Actor akActor) 		     		        	                					    	  
         If PlayerRef.GetItemCount(Digipick) >= 1
			PlayerRef.RemoveItem(Digipick, 1, False, None)
			UnlockingSoundFX.Play(PlayerRef, None, None)
			UnlockingSoundFX03.Play(PlayerRef, None, None)
		    akTargetRef.UnLock(False)
            akTargetRef.BlockActivation(True, True)
            akTargetRef.BlockActivation(False, False)
		       If !CF_TerminalObjects.IsTrue(akTargetRef, None) 
			      akTargetRef.Activate(akTargetRef)
	        EndIf        
	Else
			MSG_NotEnoughDigipicks.show(PlayerRef.GetItemCount(Digipick))
	  EndIf
EndFunction

Function Fragment_EntryRemoveLockGuardAdvancedNoBonus_06(ObjectReference akTargetRef, Actor akActor) 	       	              
         RemoveLockGuard(akTargetRef, 4, 25, 0)
EndFunction

Function Fragment_EntryRemoveLockGuardAdvancedWithBonus_07(ObjectReference akTargetRef, Actor akActor) 		       	              				 
         RemoveLockGuard(akTargetRef, 2, 25, 16)
EndFunction

Function Fragment_EntryRemoveLockGuardExpertNoBonus_08(ObjectReference akTargetRef, Actor akActor)      	               
         RemoveLockGuard(akTargetRef, 8, 50, 0)
EndFunction

Function Fragment_EntryRemoveLockGuardExpertWithBonus_09(ObjectReference akTargetRef, Actor akActor)       	               				   
         RemoveLockGuard(akTargetRef, 5, 50, 12)
EndFunction

Function Fragment_EntryRemoveLockGuardMasterNoBonus_10(ObjectReference akTargetRef, Actor akActor) 	                 	  
         RemoveLockGuard(akTargetRef, 12, 75, 0)
EndFunction

Function Fragment_EntryRemoveLockGuardMasterWithBonus_11(ObjectReference akTargetRef, Actor akActor) 		                	  	               
         RemoveLockGuard(akTargetRef, 8, 75, 8)
EndFunction

Function Fragment_EntryHackVendingMachine_12(ObjectReference akTargetRef, Actor akActor) 		                	  	               
         PrepareDummyDoorForHack()
		 Utility.Wait(0.2)
		 If GV_DummyDoorForVendingUnlocked.GetValue() == 1       
			   If !akTargetRef.Haskeyword(KWD_Hacked)		              	
                  akTargetRef.AddKeyword(KWD_Hacked)  
				  UnregisterForRemoteEvent(DummyDoor, "OnLockStateChanged")
				  Int CredAmount = Utility.RandomInt(250, 3000)
				  Utility.Wait(1.5)
				  PlayerRef.Additem(MSC_Credits, CredAmount, False) 
                  VFX_Sparks.Play(akTargetRef, 0.5)
			EndIf
     EndIf
EndFunction

Function PrepareDummyDoorForHack()
      
	  RegisterForRemoteEvent(DummyDoor, "OnLockStateChanged")      
	  GV_DummyDoorForVendingUnlocked.SetValue(0)      
	  DummyDoor.Lock(True, False, False)
      DummyDoor.SetLockLevel(50)
      DummyDoor.Activate(PlayerRef)

EndFunction

Event ObjectReference.OnLockStateChanged(ObjectReference akSource)
         
		 If DummyDoor.IsLocked() == False
            GV_DummyDoorForVendingUnlocked.SetValue(1)
      EndIf

EndEvent

Function RemoveLockGuard(ObjectReference akTargetRef, Int Count, Int Locklevel, Int ChanceToReturnDigipic)
  
         If PlayerRef.GetItemCount(Digipick) >= Count		    
			akTargetRef.SetLockLevel(Locklevel)  
			UnlockingSoundFX.Play(PlayerRef, None, None)	    
			UnlockingSoundFX03.Play(PlayerRef, None, None)
			PlayerRef.RemoveItem(Digipick, Count, False, None)
            akTargetRef.BlockActivation(True, True)
            akTargetRef.BlockActivation(False, False)
			   If CF_SecurityRank4.IsTrue(PlayerRef, None) 
			      Int ChanceToReturnDigipics = Utility.RandomInt(1, 100)
			      If ChanceToReturnDigipics <= ChanceToReturnDigipic
			         PlayerRef.AddItem(Digipick, Count, False)
			         MSG_DigipicsReturned.Show()
			         MSG_AvailableDigipicks.show(PlayerRef.GetItemCount(Digipick))
			         Return
			   EndIf
			EndIf
			MSG_AvailableDigipicks.show(PlayerRef.GetItemCount(Digipick))
	  Else
            MSG_NotEnoughDigipicks.show(PlayerRef.GetItemCount(Digipick)) 
      EndIf

EndFunction
