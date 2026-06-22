ScriptName SISA_EnviHazardsSpellAdder extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Spell Property MagnetosphereType Auto Const Mandatory

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
          
		  If (PlayerRef.HasSpell(MagnetosphereType) == False)
		     PlayerRef.AddSpell(MagnetosphereType, False)      
       EndIf

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
          
		  If (PlayerRef.HasSpell(MagnetosphereType))
		     PlayerRef.RemoveSpell(MagnetosphereType)      
       EndIf

EndEvent
