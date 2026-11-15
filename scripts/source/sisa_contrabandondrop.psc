ScriptName SISA_ContrabandOnDrop extends ObjectReference

Actor Property PlayerRef Auto Const
MiscObject Property ContrabandItem Auto Const
GlobalVariable Property GV_EconomyToggle Auto Const
Spell Property SPL_OnDropAlarmSender Auto Const
Spell Property SPL_OnDropAlarmSenderHigh Auto Const
Explosion Property EXPLO_DestroyFX Auto Const
FormList Property List_Locations Auto Const

Event OnGrab()

     If !IsPlayerInLocationList(List_Locations)
        Return
  EndIf
     
	 If GV_EconomyToggle.GetValue() == 1
        StartTimer(0.2, 0)
  EndIf

EndEvent

Event OnRelease()
     
	 If !IsPlayerInLocationList(List_Locations)
        Return
  EndIf

     If GV_EconomyToggle.GetValue() == 1
	    RegisterForHitEvent(self, None, None, None, -1, -1, -1, -1, True)
        CancelTimer(0)
	    SPL_OnDropAlarmSender.Cast(PlayerRef, PlayerRef)
  EndIf
EndEvent

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)

     If !IsPlayerInLocationList(List_Locations)
        Return
  EndIf

     If GV_EconomyToggle.GetValue() == 1
	         If akOldContainer && !akNewContainer
                StartTimer(10, 1)
				RegisterForHitEvent(self, None, None, None, -1, -1, -1, -1, True)
				SPL_OnDropAlarmSender.Cast(PlayerRef, PlayerRef)
         ElseIf akNewContainer && !akOldContainer
                CancelTimer(1)
				SPL_OnDropAlarmSender.Cast(PlayerRef, PlayerRef)
				UnregisterForHitEvent(self, None, None, None, -1, -1, -1, -1, True)
          Else
                CancelTimer(1)
                UnregisterForHitEvent(self, None, None, None, -1, -1, -1, -1, True)
		  EndIf
  EndIf
EndEvent

Event OnTimer(int aiTimerID)
	       	 
		     If (aiTimerID == 0)
                     If GV_EconomyToggle.GetValue() == 1
				        SPL_OnDropAlarmSender.Cast(PlayerRef, PlayerRef)
                        StartTimer(1, 0)
		          EndIf
		 ElseIf (aiTimerID == 1)
                     If GV_EconomyToggle.GetValue() == 1
				        SPL_OnDropAlarmSenderHigh.Cast(self, self)
		          EndIf
		  EndIf
EndEvent

Event OnHit(ObjectReference akTarget, ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked, string apMaterial)
     
     If akTarget == self
        Placeatme(EXPLO_DestroyFX, 1, False, false, true, none, none, True)
		Disable(False)
 	    Delete()        
  EndIf     

EndEvent

Bool Function IsPlayerInLocationList(FormList locList)
    Int count = locList.GetSize()
    While count > 0
        count -= 1
        Location loc = locList.GetAt(count) as Location
        If loc && PlayerRef.IsInLocation(loc)
            Return True
        EndIf
    EndWhile
    Return False
EndFunction