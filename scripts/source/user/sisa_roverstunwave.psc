ScriptName SISA_RoverStunWave extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Ammo Property AMMO_StuncloudCharge Auto Const
Explosion Property EXP_Stunwave Auto Const
FormList Property Stunwave_TriggerList Auto Const
ObjectReference Property OBJ_RoverTrunk Auto Const
Spell Property SPL_RoverFinder Auto Const
Keyword Property KWD_VehicleKeyword Auto Const mandatory
ReferenceAlias Property MyVehicle Auto mandatory

ObjectReference currentVehicle

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
	  FindVehicle()
	  StartTimer(1, 0)

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
            
	  CancelTimer(0)
	  UnregisterForHitEvent(PlayerRef, None, Stunwave_TriggerList, None, -1, -1, -1, -1, True)

EndEvent

Event OnTimer(int aiTimerID)
			 
			 If (aiTimerID == 0)   
		        RegisterForHitEvent(PlayerRef, None, Stunwave_TriggerList, None, -1, -1, -1, -1, True) 
		  EndIf

EndEvent

Event OnHit(ObjectReference akTarget, ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked, string apMaterial)
     
     If akTarget == PlayerRef          		  
		  If OBJ_RoverTrunk.GetItemCount(AMMO_StuncloudCharge) > 0
		     OBJ_RoverTrunk.RemoveItem(AMMO_StuncloudCharge, 1, True, None)
			 currentVehicle.Placeatme(EXP_Stunwave, 1, False, false, true, none, none, True)
			 StartTimer(30, 0)			     
       EndIf
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