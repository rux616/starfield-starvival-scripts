ScriptName SISA_ForTestingCampDeploy Extends ObjectReference

Actor Property PlayerRef Auto Const
Keyword Property KWD_CampObjectLink Auto Const mandatory
Packin Property PCKN_Camp Auto Const mandatory

ObjectReference MyLinkedRef
ObjectReference Camp

Event OnInit()
      ;Debug.Notification("Camp Set")
	  ;ObjectReference item = ReferenceToSpawnIn.PlaceAtMe(LeveledListToSpawnFrom, aiCount = 1, abForcePersist = false, abInitiallyDisabled = true, abDeleteWhenAble = false)
	  ;Camp = Placeatme(PCKN_Camp, 1, False, false, true, none, none, True)		
	  ;MyLinkedRef = GetLinkedRef(KWD_CampObjectLink)
      ;StartTimer(3, 0)
EndEvent

Function Remove()
         Debug.Notification("Camp Removed")
         MyLinkedRef.Delete()
         Camp.Delete()
         Delete()
EndFunction

Event OnTimer(int aiTimerID)
                         		 
		 If (aiTimerID == 0) 
            Remove()
            ;DisableChildren()
      EndIf
EndEvent

ObjectReference[] Function GetPackinChildren()
	return GetRefsLinkedToMe(KWD_CampObjectLink)
EndFunction

Function DisableChildren()
	ObjectReference[] packinChildren = GetPackinChildren()

	int i = 0
	While (i < packinChildren.length)
		packinChildren[i].DisableNoWait()
		i += 1
	EndWhile
EndFunction

Event OnWorkshopObjectPlaced(ObjectReference akReference)	
      Debug.Notification("Camp Set")
EndEvent