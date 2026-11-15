ScriptName SISA_StoreTextAlias Extends ReferenceAlias

Actor Property PlayerRef Auto Const
ObjectReference Property TestREF Auto 

Event OnPlayerLoadGame()
	Utility.Wait(3.0)
	TestRef.Activate(PlayerRef, False)
EndEvent