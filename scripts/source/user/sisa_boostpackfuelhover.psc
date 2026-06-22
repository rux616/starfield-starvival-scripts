ScriptName SISA_BoostpackFuelHover extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_BoostpackFUEL Auto Const
GlobalVariable Property GV_BoostpackBlock Auto Const
GlobalVariable Property GV_BoostpackFuelUsageMult Auto Const
GlobalVariable Property GV_BoostpackFuelVFX Auto Const
Keyword Property KWD_MuchEfficientFuelTank Auto Const
Spell Property SPL_HoverVFX Auto Const
Explosion Property EXPLO_Type01 Auto Const
Explosion Property EXPLO_Type02 Auto Const
Wwiseevent Property SFX_BoostpackHover Auto Const
Conditionform Property ConditionFormBoostpackFuel02 Auto Const Mandatory
Conditionform Property ConditionFormBoostpackFuel03 Auto Const Mandatory
Conditionform Property ConditionFormBoostpackFuel04 Auto Const Mandatory

Float Property FuelConsumptionHoverWithMod = 1.0 Auto Const
Float Property FuelConsumptionHoverWithoutMod = 1.0 Auto Const

Int BoostpackHoverSoundInstance = -1

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	  	  
	  wwiseevent.StopInstance(BoostpackHoverSoundInstance)
      BoostpackHoverSoundInstance = -1
      BoostpackHoverSoundInstance = SFX_BoostpackHover.Play(akTarget, None, None) 
	  
	  StartTimer(0, 0)
	  
	  If GV_BoostpackFuelVFX.GetValue() == 1
	     StartTimer(0, 1)
   EndIf

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	    
	  wwiseevent.StopInstance(BoostpackHoverSoundInstance)
      BoostpackHoverSoundInstance = -1      
	  
	  If PlayerRef.GetValue(AV_BoostpackFUEL) <= 0
	     GV_BoostpackBlock.SetValue(1)
   EndIf
	     CancelTimer(0)
	     CancelTimer(1)

EndEvent

Event OnTimer(int aiTimerID)
         		          
		 If (aiTimerID == 0) 
		      Float ConsumptionAmountHover = FuelConsumptionCalculatorHover()			
			  If PlayerRef.GetValue(AV_BoostpackFUEL) > 0
			     PlayerRef.DamageValue(AV_BoostpackFUEL, ConsumptionAmountHover)
				 StartTimer(0.03, 0)
           EndIf	  
                    
	 ElseIf (aiTimerID == 1) 	  
	          If PlayerRef.IsInCombat() == True
			     PlayerRef.Placeatme(EXPLO_Type01, 1, False, false, true, none, none, True)
	             PlayerRef.Placeatme(EXPLO_Type02, 1, False, false, true, none, none, True)
			     SPL_HoverVFX.Cast(PlayerRef, PlayerRef)
			Else
                 PlayerRef.Placeatme(EXPLO_Type02, 1, False, false, true, none, none, True)
			     SPL_HoverVFX.Cast(PlayerRef, PlayerRef)
	        EndIf
			StartTimer(0.03, 1)
	  EndIf

EndEvent

Float Function FuelConsumptionCalculatorHover()
	  
	  Float FuelCostBonus = BoostpackFuelCostBonus()	  	  
	  Float fConsumptionValHover = FuelConsumptionHoverWithoutMod * FuelCostBonus * GV_BoostpackFuelUsageMult.GetValue()     
	  Float fConsumptionValModHover = FuelConsumptionHoverWithMod * FuelCostBonus * GV_BoostpackFuelUsageMult.GetValue()            
	  
	  If PlayerRef.WornHasKeyword(KWD_MuchEfficientFuelTank) == True
		 Return fConsumptionValModHover 
   Else
		 Return fConsumptionValHover 
   EndIf
    
EndFunction

Float Function BoostpackFuelCostBonus()
     
	 Float FuelCost01 = 1.00
     Float FuelCost02 = 0.80 	 
     Float FuelCost03 = 0.70 
     Float FuelCost04 = 0.50 
	 		
		If ConditionFormBoostpackFuel04.IsTrue(PlayerRef, None)    
		   Return FuelCost04 
	ElseIf ConditionFormBoostpackFuel03.IsTrue(PlayerRef, None)  
	       Return FuelCost03
	ElseIf ConditionFormBoostpackFuel02.IsTrue(PlayerRef, None)  	 
           Return FuelCost02
Else	
           Return FuelCost01
     EndIf

EndFunction