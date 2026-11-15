ScriptName SISA_EnviPhenomenaSolarRVR extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_RoverMaintenance Auto Const
GlobalVariable Property GV_SolarStormDamageMin Auto Const
GlobalVariable Property GV_SolarStormDamageMax Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)  
              
			  Float SolarStormDMGMin = GV_SolarStormDamageMin.GetValue()
              Float SolarStormDMGMax = GV_SolarStormDamageMax.GetValue()
              Float SolarStormDMG = Utility.RandomFloat(SolarStormDMGMin, SolarStormDMGMax)

		      If PlayerRef.GetValue(AV_RoverMaintenance) > 0
                 PlayerRef.damagevalue(AV_RoverMaintenance, SolarStormDMG)     
	       EndIf

EndEvent

