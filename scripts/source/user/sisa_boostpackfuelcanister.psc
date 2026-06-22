ScriptName SISA_BoostpackFuelCanister extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AVBoostpackFuel Auto Const
MiscObject Property EmptyBoostpackFuelCanister Auto Const
Potion Property BoostpackFuelCanister Auto Const
Message Property MSG_BoostpackIsFull Auto Const
GlobalVariable Property GV_BoostpackBlock Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      	  
	     If PlayerRef.GetValue(AVBoostpackFuel) == 100.0
		    PlayerRef.Additem(BoostpackFuelCanister, 1, True)
	        MSG_BoostpackIsFull.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	 Else		
			GV_BoostpackBlock.SetValue(0)
			PlayerRef.RestoreValue(AVBoostpackFuel, 100)
            PlayerRef.Additem(EmptyBoostpackFuelCanister, 1, True)  
	  EndIf

EndEvent