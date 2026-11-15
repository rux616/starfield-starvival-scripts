ScriptName SISA_RoverGarageSpawner extends ObjectReference

Actor Property PlayerRef Auto Const
Spell Property SPL_RoverFinder Auto Const
Keyword Property KWD_VehicleKeyword Auto Const mandatory
ReferenceAlias Property MyVehicle Auto mandatory

ObjectReference currentVehicle

Event OnInit()	  	     
	 
	 SPL_RoverFinder.Cast(PlayerRef, None)
     currentVehicle = MyVehicle.GetReference()
	 MyVehicle.ClearAndRefillAlias()
	 MyVehicle.ForceRefTo(currentVehicle)     
	 Utility.Wait(0.1)
    
     If !currentVehicle.HasKeyword(KWD_VehicleKeyword)
        currentVehicle = MyVehicle.GetReference()
	    MyVehicle.ClearAndRefillAlias()
	    MyVehicle.ForceRefTo(currentVehicle)  
        Int I = 0
        Int maxLoops = 10
        While currentVehicle == None && I < maxLoops
        currentVehicle = MyVehicle.GetReference()
	    MyVehicle.ClearAndRefillAlias()
	    MyVehicle.ForceRefTo(currentVehicle)  
        Utility.Wait(0.1)
        I += 1
        EndWhile
  EndIf

		 Utility.Wait(0.5)
		 currentVehicle.Disable(False)
		 Utility.Wait(0.5)
	     currentVehicle.MoveTo(self, 0.0, 0.0, 0.0, True, False)
		 currentVehicle.Enable(False)	 		       

EndEvent