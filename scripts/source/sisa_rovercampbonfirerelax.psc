Scriptname SISA_RoverCampBonfireRelax Extends ObjectReference

Actor Property PlayerRef Auto Const
Keyword Property KWD_RelaxMarker Auto Const
Keyword Property KWD_RelaxMarkerSitOnGround Auto Const
Spell Property SPL_CampRelaxBonus Auto Const
GlobalVariable Property GV_IsRelaxing Auto Const
GlobalVariable Property GV_IsIgnited Auto Const
Message Property MSG_RelaxNotification Auto Const
MagicEffect Property MGC_CheckForEffect Auto Const

Event OnActivate(ObjectReference akActionRef)
      
	   If akActionRef == PlayerRef	  
	      RegisterForRemoteEvent(PlayerRef, "OnGetUp")
             If GV_IsIgnited.GetValue() == 0
                Return
		  EndIf
		  GV_IsRelaxing.SetValue(1)
		  StartTimer(15, 0)		  		  	         
	EndIf

EndEvent

Event OnTimer(int aiTimerID)
	
	   If (aiTimerID == 0)
	        If GV_IsIgnited.GetValue() == 1 && !PlayerRef.HasMagicEffect(MGC_CheckForEffect)
		       MSG_RelaxNotification.Show()
               PlayerRef.DispelSpell(SPL_CampRelaxBonus)
		       SPL_CampRelaxBonus.Cast(PlayerRef, PlayerRef)       
         EndIf
   ElseIf (aiTimerID == 1)
		  UnregisterForRemoteEvent(PlayerREF, "OnGetUp")
		  If HasKeyword(KWD_RelaxMarkerSitOnGround) 
		     Delete()
       EndIf
	EndIf

EndEvent  

Event Actor.OnGetUp(Actor akSender, ObjectReference akFurniture)	 	 
	 If HasKeyword(KWD_RelaxMarker)          			            
           If GV_IsIgnited.GetValue() == 0
              StartTimer(1.0, 1)
              Return
		EndIf
		GV_IsRelaxing.SetValue(0)
		CancelTimer(0)
        StartTimer(1.0, 1)
  EndIf
EndEvent