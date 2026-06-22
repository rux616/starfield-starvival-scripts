Scriptname SISA_TakedownsQuest extends Quest

Actor Property PlayerRef Auto Const
ActorValue Property ExecutionPoints Auto Const
ActorValue Property ExecutionMeter Auto Const
Perk Property StealthTakeDownPerk Auto Const

Function TakedownsStart()
		 
		 PlayerRef.RestoreValue(ExecutionMeter, 999)
         PlayerRef.DamageValue(ExecutionMeter, 999)
		 PlayerRef.RestoreValue(ExecutionPoints, 999)
         PlayerRef.DamageValue(ExecutionPoints, 999)
         PlayerRef.Addperk(StealthTakeDownPerk, False)   

EndFunction

Function TakedownsStop()
		 
		 PlayerRef.RestoreValue(ExecutionMeter, 999)
         PlayerRef.DamageValue(ExecutionMeter, 999)
		 PlayerRef.RestoreValue(ExecutionPoints, 999)
         PlayerRef.DamageValue(ExecutionPoints, 999)
         PlayerRef.Removeperk(StealthTakeDownPerk)

EndFunction


