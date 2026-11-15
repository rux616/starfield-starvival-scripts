ScriptName SISA_SpaceshipServiceDiscountRefresh extends ActiveMagicEffect

Quest Property QuestSpaceshipSystems Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
          
		  (QuestSpaceshipSystems as SISA_SpaceshipFuel).CalculateFuelCost()
		  (QuestSpaceshipSystems as SISA_SpaceshipFuel).CalculateRepairCost()

EndEvent
