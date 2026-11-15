ScriptName SISA_WeaponControlTypeADS extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property Oxygen Auto Const
ActorValue Property CarbonDioxide Auto Const
ActorValue Property CarbonDioxideOxygenMax Auto Const
GlobalVariable Property GlobalMultiplierADS Auto Const
GlobalVariable Property GlobalMigraineDMG Auto Const
MagicEffect Property MGC_Migraine Auto Const

Float Property FLT_Damage = 1.0 Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)      
	  StartTimer(0.2, 0)    
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      CancelTimer(0)
EndEvent

Event OnTimer(int aiTimerID)
	   
	   Float MigraineDebuff = MigraineAffliction()
	   Float fDamageVal = FLT_Damage * GlobalMultiplierADS.GetValue() * MigraineDebuff
	   
	   If (aiTimerID == 0)		   
           OxygenDamage(fDamageVal, Oxygen, CarbonDioxide, CarbonDioxideOxygenMax)		  
		   StartTimer(0.2, 0)
	EndIf

EndEvent

Function OxygenDamage(Float DMG, ActorValue AV, ActorValue AV2, ActorValue AV3)
         
		   If PlayerRef.GetValue(AV) > 0
		      PlayerRef.DamageValue(AV, DMG) 
	   ElseIf PlayerRef.GetValue(AV3) <= 10
	          PlayerRef.DamageValue(AV2, 0)
	   Else
	          PlayerRef.DamageValue(AV2, DMG)
	    EndIf

EndFunction

Float Function MigraineAffliction()
           Float MigraineMult = GlobalMigraineDMG.GetValue()  
		   If PlayerRef.HasMagicEffect(MGC_Migraine)
		      Return MigraineMult 
	    Else
              Return 1.0
	    EndIf
EndFunction

