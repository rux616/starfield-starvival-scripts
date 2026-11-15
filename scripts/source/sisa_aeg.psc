ScriptName SISA_AEG extends ActiveMagicEffect

Quest Property EnviHazardsQuest Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	   SISA_EnviHazardsQuest EnviHazardsScript = EnviHazardsQuest as SISA_EnviHazardsQuest       
       If EnviHazardsScript
          EnviHazardsScript.AEGStart()
    EndIf
EndEvent

