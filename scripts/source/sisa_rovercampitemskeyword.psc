Scriptname SISA_RoverCampItemsKeyword Extends ObjectReference

Keyword Property KWD_CampObject Auto Const

Bool Property Block = False Auto

Event OnInit()
      Addkeyword(KWD_CampObject)
      BlockActivation(Block, Block)
EndEvent
