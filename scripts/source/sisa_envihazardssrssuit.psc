ScriptName SISA_EnviHazardsSRSSuit Extends ObjectReference

Actor Property PlayerRef Auto Const
Keyword Property KWD_StationLink Auto Const mandatory
Keyword Property KWD_StationExitLink Auto Const mandatory
WwiseEvent Property SFX_EnterPod Auto Const
WwiseEvent Property SFX_ExitPod Auto Const
GlobalVariable Property GV_PODCheck Auto Const

ObjectReference MyLinkedRef
ObjectReference MyLinkedExitRef

Event OnActivate(ObjectReference akActionRef)
       If akActionRef == PlayerRef
		  MyLinkedRef = GetLinkedRef(KWD_StationLink)
		  MyLinkedExitRef = GetLinkedRef(KWD_StationExitLink)
            If GV_PODCheck.GetValue() == 0
               EnterPOD()  
	     Else
               ExitPOD()  
	     EndIf
	EndIf 
EndEvent

Function EnterPOD()
	 GV_PODCheck.SetValue(1)
	 SFX_EnterPod.Play(PlayerRef, None, None)  
	 Game.FadeOutGame(true, true, 0, 0.2, true)
     Utility.Wait(0.3)
	 Game.PopPlayerTo(MyLinkedRef, 0.0, 0.0, 0.0, True, False) 
     Utility.Wait(0.2)
	 Game.FadeOutGame(false, True, 0, 0.1) 
EndFunction	

Function ExitPOD()	   
	 GV_PODCheck.SetValue(0)
	 SFX_ExitPod.Play(PlayerRef, None, None) 
	 Game.FadeOutGame(true, true, 0, 0.2, true)
     Utility.Wait(0.3)
     Game.PopPlayerTo(MyLinkedExitRef, 0.0, 0.0, 0.0, True, False) 
     Utility.Wait(0.2)
     Game.FadeOutGame(false, True, 0, 0.1) 
EndFunction	

Event OnWorkshopObjectRemoved(ObjectReference akReference)      
	  If MyLinkedRef
         MyLinkedRef = None
   EndIf
	  If MyLinkedExitRef
         MyLinkedExitRef = None
   EndIf
EndEvent