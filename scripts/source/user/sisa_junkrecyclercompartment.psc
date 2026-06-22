ScriptName SISA_JunkRecyclerCompartment Extends Perk Const hidden

Actor Property PlayerRef Auto Const
ActorValue Property AV_JunkRecycleEnergy Auto Const
ObjectReference Property JunkRecyclerCompartmentRef Auto Const mandatory
ObjectReference Property JunkRecyclerCompartmentRef02 Auto Const mandatory
MiscObject Property PositronBattery Auto Const
GlobalVariable Property GV_Empty Auto Const
wwiseevent Property SoundEvent Auto Const
wwiseevent Property SoundEvent02 Auto Const

Function OpenOutputCompartment_00(ObjectReference akTargetRef, Actor akActor)
    
         akTargetRef.BlockActivation(True, True)
		 JunkRecyclerCompartmentRef.Activate(PlayerRef, False)
         akTargetRef.BlockActivation(False, False)

EndFunction

Function InsertBattery_01(ObjectReference akTargetRef, Actor akActor)
      
	  If GV_Empty.GetValue() == 1 || PlayerRef.GetValue(AV_JunkRecycleEnergy) < 100
         PlayerRef.RemoveItem(PositronBattery, 3, false)
         GV_Empty.SetValue(0)
         PlayerRef.RestoreValue(AV_JunkRecycleEnergy, 999)
         akTargetRef.BlockActivation(True, True)
		 SoundEvent.Play(akTargetRef, None, None)
         Utility.Wait(0.2)
		 SoundEvent.Play(akTargetRef, None, None)
         Utility.Wait(0.2)
		 SoundEvent.Play(akTargetRef, None, None)
		 Utility.Wait(0.2)
		 SoundEvent02.PlayAndWait(akTargetRef, None, None)
         akTargetRef.BlockActivation(False, False)
   EndIf

EndFunction

Function OpenInputCompartment_02(ObjectReference akTargetRef, Actor akActor)
    
         akTargetRef.BlockActivation(True, True)
		 JunkRecyclerCompartmentRef02.Activate(PlayerRef, False)
         akTargetRef.BlockActivation(False, False)

EndFunction
