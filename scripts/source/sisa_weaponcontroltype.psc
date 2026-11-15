ScriptName SISA_WeaponControlType extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property Oxygen Auto Const
ActorValue Property CarbonDioxide Auto Const
ActorValue Property CarbonDioxideOxygenMax Auto Const
Spell Property SpellCast Auto Const
Spell Property SpellCast02 Auto Const
GlobalVariable Property GlobalMultiplierPerShot Auto Const
GlobalVariable Property GlobalMultiplierPerReload Auto Const
MagicEffect Property MGC_CooldownSpell Auto Const

Float Property FLT_Damage = 1.0 Auto Const
Float Property FLT_Reload = 1.0 Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	  RegisterForAnimationEvent(PlayerRef, "weaponFire") 
      RegisterForAnimationEvent(PlayerRef, "reloadComplete") 
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	  UnregisterForAnimationEvent(PlayerRef, "weaponFire") 
	  UnregisterForAnimationEvent(PlayerRef, "reloadComplete")
EndEvent

Event OnAnimationEvent(ObjectReference akSource, string asEventName)
     
	 float fDamageVal = FLT_Damage * GlobalMultiplierPerShot.GetValue()
	 float fReloadVal = FLT_Reload * GlobalMultiplierPerReload.GetValue()
	 	 
	 If(asEventName == "weaponFire")		        		
       OxygenDamage(fDamageVal, Oxygen, CarbonDioxide, CarbonDioxideOxygenMax, SpellCast) 
 ElseIf(asEventName == "reloadComplete")             
       PlayerRef.CreateDetectionEvent(PlayerRef, 30)
	   OxygenDamage(fReloadVal, Oxygen, CarbonDioxide, CarbonDioxideOxygenMax, SpellCast02)  
  EndIf

EndEvent

Function OxygenDamage(Float DMG, ActorValue AV, ActorValue AV2, ActorValue AV3, Spell CastSpell)
         
		   If PlayerRef.GetValue(AV) > 0
		      PlayerRef.DamageValue(AV, DMG) 
	   ElseIf PlayerRef.GetValue(AV3) <= 10
	          PlayerRef.DamageValue(AV2, 0)
	   Else
	          PlayerRef.DamageValue(AV2, DMG)
	    EndIf

		   If PlayerRef.HasMagicEffect(MGC_CooldownSpell)
              Return	
		EndIf 
		
		CastSpell.cast(PlayerRef, PlayerRef)	

EndFunction