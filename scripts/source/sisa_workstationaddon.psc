ScriptName SISA_WorkstationAddon Extends ObjectReference

Actor Property PlayerRef Auto Const
Keyword Property KWD_WorkstationLink Auto Const mandatory
GlobalVariable Property GV_WorkstationToggle Auto Const

Event OnActivate(ObjectReference akActionRef)
       If akActionRef == PlayerRef
		  ObjectReference MyLinkedRef = GetLinkedRef(KWD_WorkstationLink)
          If GV_WorkstationToggle.GetValue() == 1          
	         MyLinkedRef.Enable(True)
	  ElseIf GV_WorkstationToggle.GetValue() == 0 
	         MyLinkedRef.Disable(False)
	   EndIf
	EndIf 
EndEvent