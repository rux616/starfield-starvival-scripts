Scriptname SISA_CombatStaggerAlias extends ReferenceAlias

Actor Property PlayerRef Auto Const
GlobalVariable Property OnHitStagger Auto Const
GlobalVariable Property OnHitPower Auto Const
GlobalVariable Property OnHitEnvironment Auto Const
GlobalVariable Property OnHitDuration Auto Const
GlobalVariable Property OnHitChance Auto Const
GlobalVariable Property OnHitCooldown Auto Const
GlobalVariable Property OnHitEnvironmentToggle Auto Const
ImageSpaceModifier Property IMAD_OnHit Auto Const
Spell Property SPL_OnHitStagger Auto Const
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
	 Int RandomStaggerAmount = Utility.RandomInt(0, 100)
	 Int HitChance = OnHitChance.GetValue() As Int
	 Float StaggerCooldown = OnHitCooldown.GetValue()
	 
	 If akTarget == PlayerRef
           If akAggressor.haskeyword(KWD_ActorTypeHuman) || akAggressor.haskeyword(KWD_ActorTypeCreature) || akAggressor.haskeyword(KWD_ActorTypeRobot) || akAggressor.haskeyword(KWD_ActorTypeTurret)
              If akAggressor.haskeyword(KWD_ActorTypePlayer) == False
				Game.ShakeCamera(PlayerRef, OnHitPower.GetValue() as Float, OnHitDuration.GetValue() as Float)
		        IMAD_OnHit.Apply(1.0)
		              If RandomChance < HitChance
		                       If Cooldown == False     
				                  Cooldown = True     
				                  StartTimer(StaggerCooldown, 0)  
					               If RandomStaggerAmount <= 25
						              OnHitStagger.SetValue(2)						 
				               ElseIf RandomStaggerAmount > 25 && RandomStaggerAmount <= 50
						              OnHitStagger.SetValue(3)
				               ElseIf RandomStaggerAmount > 50 && RandomStaggerAmount <= 75
						              OnHitStagger.SetValue(4)
				               ElseIf RandomStaggerAmount > 75 && RandomStaggerAmount <= 100
						              OnHitStagger.SetValue(5)
				                EndIf
				                SPL_OnHitStagger.Cast(PlayerRef, PlayerRef)
		                    EndIf
		           EndIf
		           RegisterForHitEvent(PlayerRef, None, None, None, -1, -1, -1, -1, True)
           EndIf
		Else
				   If OnHitEnvironmentToggle.GetValue() == 1
				      Game.ShakeCamera(PlayerRef, OnHitEnvironment.GetValue() as Float, OnHitDuration.GetValue() as Float)
		              IMAD_OnHit.Apply(1.0)		              
                EndIf
                RegisterForHitEvent(PlayerRef, None, None, None, -1, -1, -1, -1, True)
		EndIf
  EndIf     

EndEvent

Event OnTimer(int aiTimerID)

         If (aiTimerID == 0) 
			Cooldown = False
	  EndIf

EndEvent

				  