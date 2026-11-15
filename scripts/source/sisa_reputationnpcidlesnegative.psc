ScriptName SISA_ReputationNPCIdlesNegative extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Race Property CitizenRace Auto Const
Idle Property PlayIdleAnim Mandatory Const Auto
Idle Property PlayIdleAnim02 Mandatory Const Auto
Idle Property PlayIdleAnim03 Mandatory Const Auto
Idle Property PlayIdleAnim04 Mandatory Const Auto
Idle Property PlayIdleAnim05 Mandatory Const Auto
Idle Property PlayIdleAnim06 Mandatory Const Auto
Idle Property PlayIdleAnim07 Mandatory Const Auto
Idle Property PlayIdleAnim08 Mandatory Const Auto
Idle Property PlayIdleAnim09 Mandatory Const Auto
Idle Property PlayIdleAnim10 Mandatory Const Auto
Idle Property PlayIdleAnim11 Mandatory Const Auto
Idle Property PlayIdleAnim12 Mandatory Const Auto
Idle Property PlayIdleAnim13 Mandatory Const Auto
Idle Property PlayIdleAnim14 Mandatory Const Auto
Idle Property PlayIdleAnim15 Mandatory Const Auto
Faction Property GuardFaction Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
	  Actor IdleActor = akTarget as Actor
	  ObjectReference IdleFurniture = IdleActor.GetFurnitureUsing()
	  Int IdleType = Utility.RandomInt(0, 14)
	  Int IdleTypeGuard = Utility.RandomInt(0, 1)
	  
	  If IdleFurniture == False
	     If PlayerRef.HasDetectionLOS(IdleActor)

             If IdleActor.IsInFaction(GuardFaction) == True
    
				   If IdleTypeGuard == 0
					  IdleActor.PlayIdle(PlayIdleAnim07)
			   ElseIf IdleTypeGuard == 1
					  IdleActor.PlayIdle(PlayIdleAnim08)
				EndIf				
		        Return
		  EndIf
        
		     If IdleActor.GetRace() == CitizenRace
			       If IdleType == 0
	                  Utility.Wait(0.1)
                      IdleActor.PlayIdle(PlayIdleAnim)    	  
               ElseIf IdleType == 1
	                  Utility.Wait(0.1)
                      IdleActor.PlayIdle(PlayIdleAnim02) 
               ElseIf IdleType == 2
	                  Utility.Wait(0.1)
                      IdleActor.PlayIdle(PlayIdleAnim03) 
               ElseIf IdleType == 3
	                  Utility.Wait(0.1)
                      IdleActor.PlayIdle(PlayIdleAnim04) 
               ElseIf IdleType == 4
	                  Utility.Wait(0.1)
                      IdleActor.PlayIdle(PlayIdleAnim05) 
               ElseIf IdleType == 5
	                  Utility.Wait(0.1)
                      IdleActor.PlayIdle(PlayIdleAnim06) 		 
               ElseIf IdleType == 6
	                  Utility.Wait(0.1)
                      IdleActor.PlayIdle(PlayIdleAnim07) 
               ElseIf IdleType == 7
	                  Utility.Wait(0.1)
                      IdleActor.PlayIdle(PlayIdleAnim08)
               ElseIf IdleType == 8
	                  Utility.Wait(0.1)
                      IdleActor.PlayIdle(PlayIdleAnim09) 
               ElseIf IdleType == 9
	                  Utility.Wait(0.1)
                      IdleActor.PlayIdle(PlayIdleAnim10) 
               ElseIf IdleType == 10
	                  Utility.Wait(0.1)
                      IdleActor.PlayIdle(PlayIdleAnim11) 
               ElseIf IdleType == 11
	                  Utility.Wait(0.1)
                      IdleActor.PlayIdle(PlayIdleAnim12) 		 
               ElseIf IdleType == 12
	                  Utility.Wait(0.1)
                      IdleActor.PlayIdle(PlayIdleAnim13) 
               ElseIf IdleType == 13
	                  Utility.Wait(0.1)
                      IdleActor.PlayIdle(PlayIdleAnim14)
               ElseIf IdleType == 14
	                  Utility.Wait(0.1)
                      IdleActor.PlayIdle(PlayIdleAnim15)
                EndIf
          EndIf
     EndIf
   EndIf

EndEvent

