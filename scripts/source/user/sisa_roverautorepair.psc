ScriptName SISA_RoverAutoRepair extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_RoverMaintenance Auto Const 
ObjectReference Property OBJ_SystemBlock Auto Const
Weapon Property MiscObj_RoverMaintenanceKit Auto Const
Message Property MSG_RoverMaintenanceInfo Auto Const
wwiseevent Property SoundFX_RepairingStart Auto Const
wwiseevent Property SoundFX_RepairingEnd Auto Const
wwiseevent Property SoundFX_RepairingSuccess Auto Const
GlobalVariable Property GV_DamageTimeInterval Auto Const
GlobalVariable Property GV_RepairKitThresholdMax Auto Const
GlobalVariable Property GV_RepairKitRestoreBase Auto Const
Effectshader Property VFX_FireMembrane Auto Const Mandatory
Effectshader Property VFX_RepairMembrane Auto Const Mandatory
Effectshader Property VFX_Maintenance Auto Const mandatory
Spell Property SPL_RoverFinder Auto Const
Keyword Property KWD_VehicleKeyword Auto Const mandatory
ReferenceAlias Property MyVehicle Auto mandatory
Conditionform Property CF_EngineSystems01 Auto Const Mandatory
Conditionform Property CF_EngineSystems02 Auto Const Mandatory
Conditionform Property CF_EngineSystems03 Auto Const Mandatory
Conditionform Property CF_EngineSystems04 Auto Const Mandatory

ObjectReference currentVehicle

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)	   					    	  
      FindVehicleAndSpawn()
	  Float TriggerPoint = 35.0
      RegisterForActorValueLessThanEvent(PlayerRef, AV_RoverMaintenance, TriggerPoint) 						          							           		   
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)	   					    
	  Float TriggerPoint = 35.0
      UnregisterForActorValueLessThanEvent(PlayerRef, AV_RoverMaintenance, TriggerPoint) 
	  CancelTimer(0)						          							           		   
EndEvent

Event OnTimer(int aiTimerID)
	
	    If (aiTimerID == 0)
		       
			   Float EngineSystemsBonusThresholds = BonusThresholds()
		       Float EngineSystemsBonusRepair = BonusRepair()
               Float ThresholdMax = GV_RepairKitThresholdMax.GetValue() + EngineSystemsBonusThresholds 
               Float RestoreBase = GV_RepairKitRestoreBase.GetValue() 
               
			   If PlayerRef.GetValue(AV_RoverMaintenance) < ThresholdMax && OBJ_SystemBlock.GetItemCount(MiscObj_RoverMaintenanceKit) > 0 
		           OBJ_SystemBlock.RemoveItem(MiscObj_RoverMaintenanceKit, 1, True, None)				   
				   PlayerRef.Restorevalue(AV_RoverMaintenance, RestoreBase + EngineSystemsBonusRepair)
		           VFX()       
						  If PlayerRef.GetValue(AV_RoverMaintenance) > ThresholdMax						
                             PlayerRef.Restorevalue(AV_RoverMaintenance, 999)
                             PlayerRef.Damagevalue(AV_RoverMaintenance, 100 - ThresholdMax)
                       EndIf		  
				   StartTimer(2, 0)
			 EndIf
		     MSG_RoverMaintenanceInfo.show(GV_DamageTimeInterval.GetValue(), PlayerRef.GetValue(AV_RoverMaintenance), PlayerRef.GetBaseValue(AV_RoverMaintenance), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)	 
	 EndIf

EndEvent

Function VFX()
	         
		 VFX_Maintenance.Play(currentVehicle, 2.0)
		 SoundFX_RepairingStart.Play(PlayerRef, None, None)
		 SoundFX_RepairingEnd.Play(PlayerRef, None, None)
		 VFX_FireMembrane.Stop(currentVehicle)
		 VFX_RepairMembrane.Play(currentVehicle, 2.0)
		 SoundFX_RepairingSuccess.Play(PlayerRef, None, None)
			
EndFunction

Event OnActorValueLessThan(ObjectReference akObjRef, ActorValue akActorValue)
    
	  Float TriggerPoint = 35.0	   
	  RegisterForActorValueLessThanEvent(PlayerRef, AV_RoverMaintenance, TriggerPoint)    
	   
	   If (akObjRef as Actor) == PlayerRef
          StartTimer(1, 0)
    EndIf

EndEvent

Float Function BonusRepair()

      Float EngineSystems00 = 0.0
      Float EngineSystems01 = 5.0
      Float EngineSystems02 = 10.0
      Float EngineSystems03 = 15.0
      Float EngineSystems04 = 20.0

		If CF_EngineSystems04.IsTrue(PlayerRef, None)    
		   Return EngineSystems04 
	ElseIf CF_EngineSystems03.IsTrue(PlayerRef, None)  
	       Return EngineSystems03
	ElseIf CF_EngineSystems02.IsTrue(PlayerRef, None)  	 
           Return EngineSystems02
	ElseIf CF_EngineSystems01.IsTrue(PlayerRef, None) 
           Return EngineSystems01 
Else	
           Return EngineSystems00
     EndIf

EndFunction

Float Function BonusThresholds()

      Float EngineSystems00 = 0.0
      Float EngineSystems01 = 4.0
      Float EngineSystems02 = 8.0
      Float EngineSystems03 = 12.0
      Float EngineSystems04 = 15.0

		If CF_EngineSystems04.IsTrue(PlayerRef, None)    
		   Return EngineSystems04 
	ElseIf CF_EngineSystems03.IsTrue(PlayerRef, None)  
	       Return EngineSystems03
	ElseIf CF_EngineSystems02.IsTrue(PlayerRef, None)  	 
           Return EngineSystems02
	ElseIf CF_EngineSystems01.IsTrue(PlayerRef, None) 
           Return EngineSystems01 
Else	
           Return EngineSystems00
     EndIf

EndFunction


Function FindVehicleAndSpawn()
     
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
        Int maxLoops = 1
        While currentVehicle == None && I < maxLoops
        currentVehicle = MyVehicle.GetReference()
	    MyVehicle.ClearAndRefillAlias()
	    MyVehicle.ForceRefTo(currentVehicle)  
        Utility.Wait(0.1)
        I += 1
        EndWhile
  EndIf

EndFunction