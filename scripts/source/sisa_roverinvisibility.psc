ScriptName SISA_RoverInvisibility extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_InvisCharge Auto Const
Effectshader Property ES_Invisibility Auto Const Mandatory
Perk Property PRK_Undetectable Auto Const
Spell Property SPL_RoverFinder Auto Const
Keyword Property KWD_VehicleKeyword Auto Const mandatory
ReferenceAlias Property MyVehicle Auto mandatory

ObjectReference currentVehicle

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
 	  
	  FindVehicle()	     
	  ES_Invisibility.Play(currentVehicle, -1)
      ES_Invisibility.Play(PlayerRef, -1)
	  PlayerRef.SetValue(AV_InvisCharge, 1)
	  PlayerRef.RestoreValue(AV_InvisCharge, 9999)
	  If PlayerRef.Hasperk(PRK_Undetectable) == False
	     PlayerRef.Addperk(PRK_Undetectable, False)
   EndIf
   
   StartTimer(15, 0)

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      	  
	  If PlayerRef.Hasperk(PRK_Undetectable) == True
	     PlayerRef.Removeperk(PRK_Undetectable)
   EndIf
	  
	  ES_Invisibility.Stop(currentVehicle) 
	  ES_Invisibility.Stop(PlayerRef) 

EndEvent

Event OnTimer(int aiTimerID)

			 If (aiTimerID == 0)   

	                If PlayerRef.Hasperk(PRK_Undetectable) == True
	                   PlayerRef.Removeperk(PRK_Undetectable)
                 EndIf
	             	             
				 PlayerRef.DamageValue(AV_InvisCharge, 9999)
				 ES_Invisibility.Stop(currentVehicle) 
	             ES_Invisibility.Stop(PlayerRef) 

		  EndIf

EndEvent

Function FindVehicle()
     
	 SPL_RoverFinder.Cast(PlayerRef, None)
     currentVehicle = MyVehicle.GetReference()
	 MyVehicle.ClearAndRefillAlias()
	 MyVehicle.ForceRefTo(currentVehicle)     
	 Utility.Wait(0.100000001)
    
     If !currentVehicle.HasKeyword(KWD_VehicleKeyword)
        currentVehicle = MyVehicle.GetReference()
	    MyVehicle.ClearAndRefillAlias()
	    MyVehicle.ForceRefTo(currentVehicle)  
        Int I = 0
        Int maxLoops = 1
        While currentVehicle == None && I < maxLoops
        currentVehicle = MyVehicle.GetReference()
	    MyVehicle.ClearAndRefillAlias()
	    MyVehicle.ForceRefTo(currentVehicle)  
        Utility.Wait(0.100000001)
        I += 1
        EndWhile
  EndIf
     
EndFunction