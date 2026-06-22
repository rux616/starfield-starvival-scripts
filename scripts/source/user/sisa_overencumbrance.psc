ScriptName SISA_Overencumbrance extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_Health Auto Const
Spell Property Spell_PlayerPain Auto Const

InputEnableLayer inputLayer

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)       
	   StartTimer(0, 0)       
	   inputLayer = InputEnableLayer.Create()
	   inputLayer.EnableRunning(false)
	   inputLayer.EnableSprinting(false)
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
       CancelTimer(0)
	   inputLayer.EnableRunning(true)
	   inputLayer.EnableSprinting(true)
EndEvent

Event OnTimer(int aiTimerID)
	 	  	      
     	     If (aiTimerID == 0)  
                 Float HPDMG = PlayerRef.GetBaseValue(AV_Health) * 0.02
				 Game.ShakeCamera(PlayerRef, 0.3, 0.3)
                 Game.ShakeController(0.3, 0.3, 0.3)
				 Spell_PlayerPain.Cast(PlayerRef, PlayerRef)
				 PlayerRef.DamageValue(AV_Health, HPDMG)
		         StartTimer(1.0, 0) 
		  EndIf

EndEvent