ScriptName SISA_RoverShockerCloak extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_ShockerCharge Auto Const
Message Property MSG_ShockerChargeAmount Auto Const
ObjectReference Property OBJ_RoverTrunk Auto Const
Ammo Property AMMO_ShockerCharge Auto Const
VisualEffect Property VFX_ShockerAura Auto Const Mandatory
Effectshader Property ES_ShockerAura Auto Const Mandatory
Spell Property SPL_RoverFinder Auto Const
Keyword Property KWD_VehicleKeyword Auto Const mandatory
ReferenceAlias Property MyVehicle Auto mandatory

ObjectReference currentVehicle

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
	  FindVehicle()	  
	  VFX_ShockerAura.Play(currentVehicle, -1, None)
	  ES_ShockerAura.Play(currentVehicle, -1) 
	  StartTimer(5, 0)
  	  StartTimer(1, 1)    

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      	  
	  VFX_ShockerAura.Stop(currentVehicle) 
	  ES_ShockerAura.Stop(currentVehicle) 
	  MSG_ShockerChargeAmount.show(PlayerRef.GetValue(AV_ShockerCharge), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	  CancelTimer(0)
	  CancelTimer(1)

EndEvent

Event OnTimer(int aiTimerID)
	  
	      Int RandomDMG = Utility.RandomInt(8, 12)		 
 			 
			 If (aiTimerID == 0)   
		         If PlayerRef.GetValue(AV_ShockerCharge) > 0
							 If PlayerRef.GetValue(AV_ShockerCharge) <= 12
				                  If OBJ_RoverTrunk.GetItemCount(AMMO_ShockerCharge) > 0
								     OBJ_RoverTrunk.RemoveItem(AMMO_ShockerCharge, 1, True, None)
									 PlayerRef.SetValue(AV_ShockerCharge, 100) 
									 PlayerRef.RestoreValue(AV_ShockerCharge, 9999)
						             StartTimer(5, 0)
							         StartTimer(3, 1) 
									 Return
							   Else
						             VFX_ShockerAura.Stop(currentVehicle) 
									 ES_ShockerAura.Stop(currentVehicle) 
									 MSG_ShockerChargeAmount.show(PlayerRef.GetValue(AV_ShockerCharge), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					                 CancelTimer(0)
						             CancelTimer(1)
							   EndIf
						  EndIf
					      
						  PlayerRef.DamageValue(AV_ShockerCharge, RandomDMG)
				          MSG_ShockerChargeAmount.show(PlayerRef.GetValue(AV_ShockerCharge), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
				          StartTimer(5, 0)
		                  StartTimer(1, 1)    
		      Else
					VFX_ShockerAura.Stop(currentVehicle) 
					ES_ShockerAura.Stop(currentVehicle) 
					MSG_ShockerChargeAmount.show(PlayerRef.GetValue(AV_ShockerCharge), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					CancelTimer(0)
		            CancelTimer(1)
			 EndIf		  

	     ElseIf (aiTimerID == 1) 
	             ES_ShockerAura.Stop(currentVehicle)
				 ES_ShockerAura.Play(currentVehicle, -1)
		         StartTimer(3, 1)
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