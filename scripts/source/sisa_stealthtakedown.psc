ScriptName SISA_StealthTakeDown Extends Perk Const hidden

Actor Property PlayerRef Auto Const
ActorValue Property AV_Execution Auto Const
Weapon Property WPN_Unarmed Auto Const
Idle Property IdleAnimMeleePowerAttack Mandatory Const Auto
Idle Property IdleAnimMeleePowerAttack02 Mandatory Const Auto
Idle Property IdleAnimMeleePowerAttack03 Mandatory Const Auto
Idle Property IdleAnimRangedBash Mandatory Const Auto
Idle Property IdleAnimRangedFire Mandatory Const Auto
Perk Property PRK_TakeDownDamage Auto Const
Perk Property PRK_TakeDownStun Auto Const
ImageSpaceModifier Property theImod Const Auto
Keyword Property KWD_RangedWPN Auto Const
Keyword Property KWD_MeleeWPN Auto Const
GlobalVariable Property GV_ExecutionNeeded Auto Const
GlobalVariable Property GV_ExecutionAtWork Auto Const
Spell Property SPL_Force Auto Const

Function Fragment_Entry_00(ObjectReference akTargetRef, Actor akActor)
         
		 Int ExecutionAmount = GV_ExecutionNeeded.GetValue() As Int 
         Int RandomAnim = Utility.RandomInt(0, 2) 	     
		 GV_ExecutionAtWork.SetValue(1)
		 PlayerRef.AddPerk(PRK_TakeDownDamage, False)
		 PlayerRef.DamageValue(AV_Execution, 1)
		 StartTimer(2, 0)
	     theImod.Apply()         
         
		 If PlayerRef.GetEquippedWeapon(0) == WPN_Unarmed		 
               If RandomAnim == 0
			      Utility.Wait(0.1)
				  PlayerRef.PlayIdle(IdleAnimMeleePowerAttack) 
                  PlayerRef.CreateDetectionEvent(PlayerRef, 30)
		   ElseIf RandomAnim == 1
			      Utility.Wait(0.1)
				  PlayerRef.PlayIdle(IdleAnimMeleePowerAttack02) 
                  PlayerRef.CreateDetectionEvent(PlayerRef, 30)
		   ElseIf RandomAnim == 2
			      Utility.Wait(0.1)
				  PlayerRef.PlayIdle(IdleAnimMeleePowerAttack03) 
                  PlayerRef.CreateDetectionEvent(PlayerRef, 30)
			EndIf	     
	 ElseIf PlayerRef.WornHasKeyword(KWD_RangedWPN)
            Utility.Wait(0.1)
			PlayerRef.PlayIdle(IdleAnimRangedFire) 
            PlayerRef.CreateDetectionEvent(PlayerRef, 30)
	 ElseIf PlayerRef.WornHasKeyword(KWD_MeleeWPN)
               If RandomAnim == 0
			      Utility.Wait(0.1)
				  PlayerRef.PlayIdle(IdleAnimMeleePowerAttack) 
                  PlayerRef.CreateDetectionEvent(PlayerRef, 30)
		   ElseIf RandomAnim == 1
			      Utility.Wait(0.1)
				  PlayerRef.PlayIdle(IdleAnimMeleePowerAttack02) 
                  PlayerRef.CreateDetectionEvent(PlayerRef, 30)
		   ElseIf RandomAnim == 2
			      Utility.Wait(0.1)
				  PlayerRef.PlayIdle(IdleAnimMeleePowerAttack03) 
                  PlayerRef.CreateDetectionEvent(PlayerRef, 30)
			EndIf
	  EndIf

EndFunction

Function Fragment_Entry_01(ObjectReference akTargetRef, Actor akActor)
	     
		 Int ExecutionAmount = GV_ExecutionNeeded.GetValue() As Int 
         Int RandomAnim = Utility.RandomInt(0, 2) 	     
		 GV_ExecutionAtWork.SetValue(1)
		 PlayerRef.AddPerk(PRK_TakeDownStun, False)
		 PlayerRef.DamageValue(AV_Execution, 1)
		 StartTimer(2, 0)
	     theImod.Apply()         
         
		 If PlayerRef.GetEquippedWeapon(0) == WPN_Unarmed		 
               If RandomAnim == 0
			      Utility.Wait(0.1)
				  PlayerRef.PlayIdle(IdleAnimMeleePowerAttack) 
                  PlayerRef.CreateDetectionEvent(PlayerRef, 30)
		   ElseIf RandomAnim == 1
			      Utility.Wait(0.1)
				  PlayerRef.PlayIdle(IdleAnimMeleePowerAttack02) 
                  PlayerRef.CreateDetectionEvent(PlayerRef, 30)
		   ElseIf RandomAnim == 2
			      Utility.Wait(0.1)
				  PlayerRef.PlayIdle(IdleAnimMeleePowerAttack03) 
                  PlayerRef.CreateDetectionEvent(PlayerRef, 30) 
			EndIf	     
	 ElseIf PlayerRef.WornHasKeyword(KWD_RangedWPN)
            Utility.Wait(0.1)
			PlayerRef.PlayIdle(IdleAnimRangedBash) 
            PlayerRef.CreateDetectionEvent(PlayerRef, 30)
	 ElseIf PlayerRef.WornHasKeyword(KWD_MeleeWPN)
               If RandomAnim == 0
			      Utility.Wait(0.1)
				  PlayerRef.PlayIdle(IdleAnimMeleePowerAttack) 
                  PlayerRef.CreateDetectionEvent(PlayerRef, 30)
		   ElseIf RandomAnim == 1
			      Utility.Wait(0.1)
				  PlayerRef.PlayIdle(IdleAnimMeleePowerAttack02) 
                  PlayerRef.CreateDetectionEvent(PlayerRef, 30)
		   ElseIf RandomAnim == 2
			      Utility.Wait(0.1)
				  PlayerRef.PlayIdle(IdleAnimMeleePowerAttack03) 
                  PlayerRef.CreateDetectionEvent(PlayerRef, 30)
			EndIf
	  EndIf

EndFunction

Function Fragment_Entry_02(ObjectReference akTargetRef, Actor akActor) 	     		 
		 (akTargetRef as Actor).OpenInventory(True, None, True)
EndFunction

Function Fragment_Entry_03(ObjectReference akTargetRef, Actor akActor)
         
		 SPL_Force.Cast(akTargetRef, akTargetRef) 	     		 
         Int RandomAnim = Utility.RandomInt(0, 2) 	     		 
		 PlayerRef.AddPerk(PRK_TakeDownDamage, False)
		 StartTimer(2, 1)
	     theImod.Apply()         
         
		 If PlayerRef.GetEquippedWeapon(0) == WPN_Unarmed		 
               If RandomAnim == 0
			      Utility.Wait(0.1)
				  PlayerRef.PlayIdle(IdleAnimMeleePowerAttack) 
		   ElseIf RandomAnim == 1
			      Utility.Wait(0.1)
				  PlayerRef.PlayIdle(IdleAnimMeleePowerAttack02) 
		   ElseIf RandomAnim == 2
			      Utility.Wait(0.1)
				  PlayerRef.PlayIdle(IdleAnimMeleePowerAttack03) 
			EndIf	     
	 ElseIf PlayerRef.WornHasKeyword(KWD_RangedWPN)
            Utility.Wait(0.1)
			PlayerRef.PlayIdle(IdleAnimRangedBash) 
	        ;PlayerRef.PlayIdle(IdleAnimRangedFire) 
	 ElseIf PlayerRef.WornHasKeyword(KWD_MeleeWPN)
               If RandomAnim == 0
			      Utility.Wait(0.1)
				  PlayerRef.PlayIdle(IdleAnimMeleePowerAttack) 
		   ElseIf RandomAnim == 1
			      Utility.Wait(0.1)
				  PlayerRef.PlayIdle(IdleAnimMeleePowerAttack02) 
		   ElseIf RandomAnim == 2
			      Utility.Wait(0.1)
				  PlayerRef.PlayIdle(IdleAnimMeleePowerAttack03) 
			EndIf
	  EndIf

EndFunction

Event OnTimer(int aiTimerID)
 
     	     If (aiTimerID == 0)
			 	If PlayerRef.HasPerk(PRK_TakeDownDamage)
				   PlayerRef.RemovePerk(PRK_TakeDownDamage)
			 EndIf	
				If PlayerRef.HasPerk(PRK_TakeDownStun)				
				   PlayerRef.RemovePerk(PRK_TakeDownStun)
		     EndIf
		     GV_ExecutionAtWork.SetValue(0)
     	 ElseIf (aiTimerID == 1)
			 	If PlayerRef.HasPerk(PRK_TakeDownDamage)
				   PlayerRef.RemovePerk(PRK_TakeDownDamage)
			 EndIf			  
		  Endif
		  
EndEvent
