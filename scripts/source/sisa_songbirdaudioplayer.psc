ScriptName SISA_SongbirdAudioplayer extends ActiveMagicEffect

Quest Property MaintenanceQuest Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)   	
	(MaintenanceQuest as SISA_Survival).SongbirdAudioplayer()
EndEvent
