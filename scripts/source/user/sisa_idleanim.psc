ScriptName SISA_IdleAnim extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Furniture Property FRN_IdleAnim Auto Const

ObjectReference IdleAnim

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
	  IdleAnim = PlayerRef.Placeatme(FRN_IdleAnim, 1, False, false, true, none, none, True) 
      IdleAnim.Activate(PlayerRef, False)
      StartTimer(20, 0) 

EndEvent

Event OnTimer(int aiTimerID)

     	     If (aiTimerID == 0)     
                IdleAnim.Activate(PlayerRef, False)
		        Utility.Wait(5.0)
		        IdleAnim.Delete()
		  EndIf
	  
EndEvent