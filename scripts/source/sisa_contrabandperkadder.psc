ScriptName SISA_ContrabandPerkAdder extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Conditionform Property ConditionFormContrabandStage01 Auto Const Mandatory
Conditionform Property ConditionFormContrabandStage02 Auto Const Mandatory
Conditionform Property ConditionFormContrabandStage03 Auto Const Mandatory
Conditionform Property ConditionFormContrabandStage04 Auto Const Mandatory

GlobalVariable Property ContrabandBonus Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
        
		  If ConditionFormContrabandStage04.IsTrue(PlayerRef, None)
             ContrabandBonus.SetValue(2.0)
	  ElseIf ConditionFormContrabandStage03.IsTrue(PlayerRef, None)
             ContrabandBonus.SetValue(1.75)
	  ElseIf ConditionFormContrabandStage02.IsTrue(PlayerRef, None)
             ContrabandBonus.SetValue(1.50)
	  ElseIf ConditionFormContrabandStage01.IsTrue(PlayerRef, None)
             ContrabandBonus.SetValue(1.25)
        Else
             ContrabandBonus.SetValue(1.00)      
	   EndIf

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
                    
          ContrabandBonus.SetValue(1.00)

EndEvent
