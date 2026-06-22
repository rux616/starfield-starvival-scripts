ScriptName SISA_ReputationAimingAtNPC extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_Reputation Auto Const
GlobalVariable Property GV_RepAimAtNPCPoints Auto Const
Faction Property GuardFaction Auto Const
Quest Property QuestFameAndRep Auto Const

Idle Property PlayIdleAnim Mandatory Const Auto
Idle Property PlayIdleAnim02 Mandatory Const Auto
Idle Property PlayIdleAnim03 Mandatory Const Auto
Idle Property PlayIdleAnim04 Mandatory Const Auto
Idle Property PlayIdleAnim05 Mandatory Const Auto
Idle Property PlayIdleAnim06 Mandatory Const Auto
Idle Property PlayIdleAnimGuard01 Mandatory Const Auto
Idle Property PlayIdleAnimGuard02 Mandatory Const Auto

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
	  Actor IdleActor = akTarget as Actor
	  ActorValue AVCheck = (QuestFameAndRep as SISA_FameAndRepMB).CheckForAV() 
	  ObjectReference IdleFurniture = IdleActor.GetFurnitureUsing()
	  Float AimAtNPC = GV_RepAimAtNPCPoints.GetValue()
	  Int IdleType = Utility.RandomInt(0, 5)
	  Int IdleTypeGuard = Utility.RandomInt(0, 1)
	  Int GuardPatience = Utility.RandomInt(1, 100)
	  
	  If IdleFurniture == False	  
          If PlayerRef.HasDetectionLOS(IdleActor)

             If IdleActor.IsInFaction(GuardFaction) == True
                    If GuardPatience < 15
				       IdleActor.TryToStartCombat(PlayerRef)
					   PlayerRef.DamageValue(AVCheck, AimAtNPC * 4.0) 
				 Else      
				       If IdleTypeGuard == 0
					      IdleActor.PlayIdle(PlayIdleAnimGuard01)
				          PlayerRef.DamageValue(AVCheck, AimAtNPC * 2.0) 
				   ElseIf IdleTypeGuard == 1
					      IdleActor.PlayIdle(PlayIdleAnimGuard02)
				          PlayerRef.DamageValue(AVCheck, AimAtNPC * 2.0) 
				    EndIf
				 EndIf
				
		         Return
		  EndIf
			 
			 If IdleType == 0
	            Utility.Wait(0.1)
                IdleActor.PlayIdle(PlayIdleAnim)    	  
                PlayerRef.DamageValue(AVCheck, AimAtNPC)
		 ElseIf IdleType == 1
	            Utility.Wait(0.1)
                IdleActor.PlayIdle(PlayIdleAnim02) 
                PlayerRef.DamageValue(AVCheck, AimAtNPC)
         ElseIf IdleType == 2
	            Utility.Wait(0.1)
                IdleActor.PlayIdle(PlayIdleAnim03) 
                PlayerRef.DamageValue(AVCheck, AimAtNPC)
         ElseIf IdleType == 3
	            Utility.Wait(0.1)
                IdleActor.PlayIdle(PlayIdleAnim04) 
                PlayerRef.DamageValue(AVCheck, AimAtNPC)
         ElseIf IdleType == 4
	            Utility.Wait(0.1)
                IdleActor.PlayIdle(PlayIdleAnim05) 
                PlayerRef.DamageValue(AVCheck, AimAtNPC)
         ElseIf IdleType == 5
	            Utility.Wait(0.1)
                IdleActor.PlayIdle(PlayIdleAnim06) 		 
                PlayerRef.DamageValue(AVCheck, AimAtNPC)
          EndIf
	
       EndIf
   EndIf	  
EndEvent
