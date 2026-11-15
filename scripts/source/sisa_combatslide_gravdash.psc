ScriptName SISA_CombatSlide_GravDash extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Spell Property SPL_SlideKnockdown Auto Const
Spell Property SPL_SoundFX Auto Const
GlobalVariable Property GV_SlowmoCooldown Auto Const
GlobalVariable Property GV_SlowmoDur Auto Const

Bool AnimInTheProcess = False

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
		
		Float EffectDur = GV_SlowmoDur.GetValue()
		
		AnimInTheProcess = True
		StartTimer(EffectDur, 0)		
		StartTimer(0, 1) 
		StartTimer(0, 2) 

EndEvent

Event OnTimer(int aiTimerID)
		 
		 If (aiTimerID == 0)          		 
		    AnimInTheProcess = False
            GV_SlowmoCooldown.SetValue(0)
     ElseIf (aiTimerID == 1)
                If AnimInTheProcess == True
				     If GV_SlowmoCooldown.GetValue() == 0
			            SPL_SlideKnockdown.Cast(PlayerRef, PlayerRef)
                        StartTimer(0.2, 1)
	             Else
                        CancelTimer(1)			           
			      EndIf
			 EndIf
	 ElseIf (aiTimerID == 2)
                If AnimInTheProcess == True
				   SPL_SoundFX.Cast(PlayerRef, PlayerRef)
                   StartTimer(0.2, 2)		           
			 EndIf
	  EndIf

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
	  AnimInTheProcess = False 
      GV_SlowmoCooldown.SetValue(0)
      CancelTimer(0)
      CancelTimer(1)
      CancelTimer(2)

EndEvent

