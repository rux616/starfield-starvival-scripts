ScriptName SISA_ServiceDiscountPriceRefresh extends ActiveMagicEffect

Quest Property QuestEconomy Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
          
		  (QuestEconomy as SISA_Economy).RefreshServiceCosts()

EndEvent
