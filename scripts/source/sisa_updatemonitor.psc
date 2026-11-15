Scriptname SISA_UpdateMonitor extends Quest

Quest Property MainQuest Auto Const

Event OnInit()

	UpdateTracking()

EndEvent

Function UpdateTracking()

             (MainQuest as SISA_Survival).Update()

EndFunction


