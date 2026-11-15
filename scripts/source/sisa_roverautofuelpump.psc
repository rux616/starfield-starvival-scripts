ScriptName SISA_RoverAutoFuelPump extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_RoverFuel Auto Const 
ObjectReference Property OBJ_SystemBlock Auto Const
Weapon Property MiscObj_RoverFuel Auto Const
Message Property MSG_RoverFuelInfo Auto Const
wwiseevent Property SoundFX_RefuelingStart Auto Const
wwiseevent Property SoundFX_RefuelingEnd Auto Const
GlobalVariable Property GV_ConsumeTimeInterval Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
							   Float FuelToFillWith = 0.0
					  
					           FuelToFillWith = Math.Round(PlayerRef.GetBaseValue(AV_RoverFuel) - PlayerRef.GetValue(AV_RoverFuel))
							   
							   SoundFX_RefuelingStart.PlayAndWait(PlayerRef, None, None)
							   SoundFX_RefuelingEnd.Play(PlayerRef, None, None)					  
										
										If FuelToFillWith >= OBJ_SystemBlock.GetItemCount(MiscObj_RoverFuel)							
										   FuelToFillWith = OBJ_SystemBlock.GetItemCount(MiscObj_RoverFuel)
										   PlayerRef.Restorevalue(AV_RoverFuel, FuelToFillWith)							          
										   OBJ_SystemBlock.RemoveItem(MiscObj_RoverFuel, FuelToFillWith as Int, True, None)
								    ElseIf FuelToFillWith < OBJ_SystemBlock.GetItemCount(MiscObj_RoverFuel)										  										   										   
										   PlayerRef.Restorevalue(AV_RoverFuel, 99999)							          
										   OBJ_SystemBlock.RemoveItem(MiscObj_RoverFuel, FuelToFillWith as Int, True, None)										   
									 EndIf
									 MSG_RoverFuelInfo.show(GV_ConsumeTimeInterval.GetValue(), PlayerRef.GetValue(AV_RoverFuel), PlayerRef.GetBaseValue(AV_RoverFuel), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)

EndEvent