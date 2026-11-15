ScriptName SISA_NanoWeaveRegen extends ActiveMagicEffect

Actor Property PlayerRef Auto
ActorValue Property AV_SuitShieldEnergy Auto
EffectShader Property VisualFX_OnHitShildImpact Auto Const Mandatory
EffectShader Property VisualFX_OnHitShildImpact02 Auto Const Mandatory
Message Property ReactiveShieldEnergyAmount Auto Const

Actor Target

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
	  Target = akCaster
	  Target.SetValue(AV_SuitShieldEnergy, 100)
	  StartTimer(60, 0)
     
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
				       If Target.GetValue(AV_SuitShieldEnergy) >= 100
                          VisualFX_OnHitShildImpact02.Play(Target, 0.1)
						  CancelTimer(0)
					EndIf

EndEvent

Event OnTimer(int aiTimerID)
	  
     	If (aiTimerID == 0) 
				       					   					   
					   If Target.GetValue(AV_SuitShieldEnergy) < 100
						  Target.RestoreValue(AV_SuitShieldEnergy, 25)
                          VisualFX_OnHitShildImpact.Play(Target, 0.1)
						  StartTimer(60, 0)
					EndIf

		               If PlayerRef
		                  ReactiveShieldEnergyAmount.show(PlayerRef.GetValue(AV_SuitShieldEnergy), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)   
	                EndIf

     EndIf

EndEvent				   