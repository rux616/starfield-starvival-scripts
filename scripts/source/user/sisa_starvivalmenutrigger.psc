ScriptName SISA_StarvivalMenuTrigger extends ObjectReference

Actor Property PlayerRef Auto Const
ObjectReference Property StarvivalMenu Auto Const

Event OnInit()

	SetAngle(0, 0, GetAngleZ())

EndEvent

Event OnActivate(ObjectReference akActionRef)

    If akActionRef == PlayerRef
      SISA_StarvivalGuide BookScript = StarvivalMenu as SISA_StarvivalGuide         
      If BookScript
         BookScript.EnterSettings()
   EndIf
 EndIf

EndEvent