Scriptname SISA_HarsherAfflictionsAlias extends ReferenceAlias

Actor Property PlayerRef Auto Const
GlobalVariable Property OnHitStagger Auto Const
GlobalVariable Property OnHitLimbAfflictionChance Auto Const
GlobalVariable Property OnHitCooldownLimb Auto Const
Spell Property SPL_OnHitStagger Auto Const
Spell Property SPL_InjuryTornMuscle Auto Const
Spell Property SPL_InjuryBrainInjury Auto Const
Spell Property SPL_InjuryFracturedLimb Auto Const
Spell Property SPL_InjuryFracturedSkull Auto Const
Spell Property SPL_InjuryConcussion Auto Const
Keyword Property KWD_ActorTypeHuman Auto Const
Keyword Property KWD_ActorTypeCreature Auto Const
Keyword Property KWD_ActorTypeRobot Auto Const
Keyword Property KWD_ActorTypeTurret Auto Const
Keyword Property KWD_ActorTypePlayer Auto Const

Bool Cooldown = False

Event OnAliasInit()	  
      RegisterForHitEvent(PlayerRef, None, None, None, -1, -1, -1, -1, True)
      Cooldown = False
EndEvent

Event OnPlayerLoadGame()	  
      RegisterForHitEvent(PlayerRef, None, None, None, -1, -1, -1, -1, True)
      Cooldown = False
EndEvent

Event OnHit(ObjectReference akTarget, ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked, string apMaterial)
     
	 Int RandomChance = Utility.RandomInt(0, 100)
	 Int LimbAfflictionType = Utility.RandomInt(0, 4)
	 Int LimbAfflictionChance = OnHitLimbAfflictionChance.GetValue() As Int
	 Float LimbCooldown = OnHitCooldownLimb.GetValue()
	 
	 If akTarget == PlayerRef
           If akAggressor.haskeyword(KWD_ActorTypeHuman) || akAggressor.haskeyword(KWD_ActorTypeCreature) || akAggressor.haskeyword(KWD_ActorTypeRobot) || akAggressor.haskeyword(KWD_ActorTypeTurret)
              If akAggressor.haskeyword(KWD_ActorTypePlayer) == False
		              If RandomChance < LimbAfflictionChance
		                       If Cooldown == False     
				                  Cooldown = True     
				                  StartTimer(LimbCooldown, 0)  
					               If LimbAfflictionType == 0
						              SPL_InjuryTornMuscle.Cast(PlayerRef, PlayerRef)						 
				               ElseIf LimbAfflictionType == 1
						              SPL_InjuryBrainInjury.Cast(PlayerRef, PlayerRef)	
				               ElseIf LimbAfflictionType == 2
						              SPL_InjuryFracturedLimb.Cast(PlayerRef, PlayerRef)
				               ElseIf LimbAfflictionType == 3
						              SPL_InjuryFracturedSkull.Cast(PlayerRef, PlayerRef)
				               ElseIf LimbAfflictionType == 4
						              SPL_InjuryConcussion.Cast(PlayerRef, PlayerRef)
				                EndIf
				                OnHitStagger.SetValue(5)
								SPL_OnHitStagger.Cast(PlayerRef, PlayerRef)
		                    EndIf
		           EndIf
		           RegisterForHitEvent(PlayerRef, None, None, None, -1, -1, -1, -1, True)
           EndIf
		EndIf
  EndIf     

EndEvent

Event OnTimer(int aiTimerID)
         If (aiTimerID == 0) 
			Cooldown = False
	  EndIf
EndEvent