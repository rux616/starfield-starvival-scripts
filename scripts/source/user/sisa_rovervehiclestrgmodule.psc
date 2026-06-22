ScriptName SISA_RoverVehicleSTRGModule Extends ObjectReference

GlobalVariable Property GV_VehicleModule Auto Const
Int Property Value = 0 Auto

Event OnInit()
	  GV_VehicleModule.SetValue(Value)	     
EndEvent