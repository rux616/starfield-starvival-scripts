ScriptName SISA_AfflictionPanacea extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_Fatigue Auto Const
ActorValue Property AV_Thirst Auto Const
ActorValue Property AV_Hunger Auto Const
Spell Property SPL_Drowsiness Auto Const

Int Property INT_FatigueDMG_Min = 1 Auto
Int Property INT_FatigueDMG_Max = 1 Auto
Int Property INT_ThirstDMG_Min = 1 Auto
Int Property INT_ThirstDMG_Max = 1 Auto
Int Property INT_HungerDMG_Min = 1 Auto
Int Property INT_HungerDMG_Max = 1 Auto

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
	  Int RandomDMGFatigue = Utility.RandomInt(INT_FatigueDMG_Min, INT_FatigueDMG_Max)
	  Int RandomDMGThirst = Utility.RandomInt(INT_ThirstDMG_Min, INT_ThirstDMG_Max)
	  Int RandomDMGHunger = Utility.RandomInt(INT_HungerDMG_Min, INT_HungerDMG_Max)
	  
	  PlayerRef.DamageValue(AV_Fatigue, RandomDMGFatigue)
      PlayerRef.DamageValue(AV_Thirst, RandomDMGThirst)
      PlayerRef.DamageValue(AV_Hunger, RandomDMGHunger)

      SPL_Drowsiness.Cast(PlayerRef, PlayerRef)

EndEvent