ScriptName SISA_NanoWeave extends ActiveMagicEffect

Actor Property PlayerRef Auto
ActorValue Property AV_SuitShieldEnergy Auto
EffectShader Property VisualFX_OnHitShildImpact Auto Const Mandatory
EffectShader Property VisualFX_OnHitShildImpact02 Auto Const Mandatory
Perk Property ReactiveShieldPerk Auto Const
Message Property ReactiveShieldEnergyAmount Auto Const
Explosion Property BoostPackExplosion Auto Const
Explosion Property BoostPackExplosion02 Auto Const
Explosion Property BoostPackExplosion03 Auto Const

Actor Target

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
	  Target = akCaster	  	  
	  Target.SetValue(AV_SuitShieldEnergy, 100)
	  
	  If Target.HasPerk(ReactiveShieldPerk) == False
	     Target.Addperk(ReactiveShieldPerk, False)
         VisualFX_OnHitShildImpact.Play(Target, 0.1)
		 RegisterForHitEvent(Target, None, None, None, -1, -1, -1, -1, True)
   EndIf
	  	    	      
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
		       If Target.HasPerk(ReactiveShieldPerk) == True
			      Target.Removeperk(ReactiveShieldPerk)
                  VisualFX_OnHitShildImpact02.Play(Target, 0.1)
	              VisualFX_OnHitShildImpact.Stop(Target)
				  UnregisterForHitEvent(Target, None, None, None, -1, -1, -1, -1, True)
            EndIf

EndEvent

Event OnHit(ObjectReference akTarget, ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked, string apMaterial)
   
   Int RandomDMG = Utility.RandomInt(3, 7)

     If akTarget == Target
		Target.damagevalue(AV_SuitShieldEnergy, RandomDMG) 		 
		StartTimer(2, 0)     		  		  
		     If Target.GetValue(AV_SuitShieldEnergy) > 0
                VisualFX_OnHitShildImpact.Play(Target, 0.1)
	      EndIf    
        RegisterForHitEvent(Target, None, None, None, -1, -1, -1, -1, True)
  EndIf     

EndEvent

Event OnTimer(int aiTimerID)
	  
     	If (aiTimerID == 0) 
		    ReactiveShieldEnergyAmount.show(PlayerRef.GetValue(AV_SuitShieldEnergy), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
     EndIf

EndEvent