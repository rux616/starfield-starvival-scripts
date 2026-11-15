ScriptName SISA_StealthTakeDown Extends Perk Const hidden

Actor Property PlayerRef Auto Const
ActorValue Property AV_Execution Auto Const
Weapon Property WPN_Unarmed Auto Const
Idle Property IdleAnimMeleePowerAttack Mandatory Const Auto
Idle Property IdleAnimMeleePowerAttack02 Mandatory Const Auto
Idle Property IdleAnimMeleePowerAttack03 Mandatory Const Auto
Idle Property IdleAnimRangedBash Mandatory Const Auto
Idle Property IdleAnimRangedFire Mandatory Const Auto
ImageSpaceModifier Property theImod Const Auto
Keyword Property KWD_RangedWPN Auto Const
Keyword Property KWD_MeleeWPN Auto Const
GlobalVariable Property GV_ExecutionAtWorkLethal Auto Const
GlobalVariable Property GV_ExecutionAtWorkStun Auto Const
Spell Property SPL_Force Auto Const

Function Fragment_Entry_00(ObjectReference akTargetRef, Actor akActor)
         
         Int RandomAnim = Utility.RandomInt(0, 2) 	     
		 GV_ExecutionAtWorkLethal.SetValue(1)
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
	     
         Int RandomAnim = Utility.RandomInt(0, 2) 	     
		 GV_ExecutionAtWorkStun.SetValue(1)
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
		 GV_ExecutionAtWorkLethal.SetValue(1)
		 StartTimer(2, 0)
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
		         GV_ExecutionAtWorkLethal.SetValue(0)		  
		         GV_ExecutionAtWorkStun.SetValue(0)	
		  Endif		  
EndEvent
