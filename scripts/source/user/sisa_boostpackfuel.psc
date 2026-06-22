ScriptName SISA_BoostpackFuel extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_BoostpackFUEL Auto Const
GlobalVariable Property GV_BoostpackBlock Auto Const
GlobalVariable Property GV_BoostpackFuelUsageMult Auto Const
Keyword Property KWD_MuchEfficientFuelTank Auto Const
Conditionform Property ConditionFormBoostpackFuel02 Auto Const Mandatory
Conditionform Property ConditionFormBoostpackFuel03 Auto Const Mandatory
Conditionform Property ConditionFormBoostpackFuel04 Auto Const Mandatory

Float Property FuelConsumptionWithMod = 1.0 Auto Const
Float Property FuelConsumptionWithoutMod = 1.0 Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
	  Float ConsumptionAmount = FuelConsumptionCalculator()
	  Utility.SetINIFloat("fZeroGBoostDrainInitial:Boostpack", ConsumptionAmount)	
	  Utility.SetINIFloat("fZeroGBoostDrainSustained:Boostpack", ConsumptionAmount)		
      RegisterForAnimationEvent(akTarget, "StartImpactFX")

	  If PlayerRef.GetValue(AV_BoostpackFuel) > 0.0
         GV_BoostpackBlock.SetValue(0) 
   EndIf

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
	  If PlayerRef.GetValue(AV_BoostpackFUEL) <= 0
	     GV_BoostpackBlock.SetValue(1)
   EndIf
 
      UnRegisterForAnimationEvent(akTarget, "StartImpactFX")

EndEvent

Event OnAnimationEvent(ObjectReference akSource, string asEventName)
    
	If akSource           
		   If (asEventName == "StartImpactFX")
			         
					 MagicEffect LegendOMaticFastened = Game.GetFormFromFile(0x00000A40, "LegendOMatic - Legendary Expansion.esm") as MagicEffect 			         
					 If Game.IsPluginInstalled("LegendOMatic - Legendary Expansion.esm") && PlayerRef.HasMagicEffect(LegendOMaticFastened)      
				        Return	 
		          EndIf
					 
					 Float ConsumptionAmount = FuelConsumptionCalculator()			   
	                 If PlayerRef.GetValue(AV_BoostpackFuel) > 0.0
			            PlayerRef.DamageValue(AV_BoostpackFUEL, ConsumptionAmount)                    
	            Else
                        GV_BoostpackBlock.SetValue(1)    
	             EndIf	 
		EndIf 
 EndIf

EndEvent

Float Function FuelConsumptionCalculator()
	  
	  Float FuelCostBonus = BoostpackFuelCostBonus()      
	  Float fConsumptionVal = FuelConsumptionWithoutMod * FuelCostBonus * GV_BoostpackFuelUsageMult.GetValue()     
	  Float fConsumptionValMod = FuelConsumptionWithMod * FuelCostBonus * GV_BoostpackFuelUsageMult.GetValue()	  
	  
	  If PlayerRef.WornHasKeyword(KWD_MuchEfficientFuelTank) == True
		 Return fConsumptionValMod 
   Else
		 Return fConsumptionVal 
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

