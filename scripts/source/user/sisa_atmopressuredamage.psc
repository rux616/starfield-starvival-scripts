ScriptName SISA_AtmoPressureDamage extends ActiveMagicEffect

Float Property CastTimerInterval = 2.0 const auto
Float Property CastDamage = 2.0 const auto
Float Property DamageThreshold = 25.0 const auto
Float Property DamageThresholdWithPerk = 25.0 const auto
Actor Property PlayerRef Auto Const
ActorValue Property EnvironmentalDamage Auto Const
Conditionform Property ConditionFormEnvironmentalConditioning03 Auto Const Mandatory

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)

         StartTimer(CastTimerInterval, 0)

EndEvent

Event OnTimer(int aiTimerID)
         
		 Float MakeDamage = Damage() 
         
		 If (aiTimerID == 0) 
			    
				     If PlayerRef.GetValue(EnvironmentalDamage) < MakeDamage
			            PlayerRef.DamageValue(EnvironmentalDamage, CastDamage)
		          EndIf
		          StartTimer(CastTimerInterval, 0)

	  EndIf

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
    
	  CancelTimer(0)

EndEvent

Float Function Damage()

	  If ConditionFormEnvironmentalConditioning03.IsTrue(PlayerRef, None)
	     Return DamageThresholdWithPerk
  Else
         Return DamageThreshold
   EndIf

EndFunction