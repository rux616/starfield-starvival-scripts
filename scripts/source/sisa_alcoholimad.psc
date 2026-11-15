Scriptname SISA_AlcoholImad extends ActiveMagicEffect

ImageSpaceModifier Property theImod Const Auto
ImageSpaceModifier Property theImod02 Const Auto
Actor Property PlayerRef Auto Const
ActorValue Property AV_Drunkenness Auto Const
Spell Property SPL_Stagger Auto Const
GlobalVariable Property IMADTimer Auto Const
GlobalVariable Property IMADTimer02 Auto Const
GlobalVariable Property IMADTimerStagger Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, float afMagnitude, float afDuration)
	     
		 Float Timer01 = IMADTimer.GetValue()
		 Float Timer02 = IMADTimer02.GetValue()
		 Float TimerStagger = IMADTimerStagger.GetValue()
		 
	     If PlayerRef.GetValue(AV_Drunkenness) >= 85		       
            StartTimer(Timer02, 1)
            StartTimer(TimerStagger, 2)
      EndIf 	     
	  
	  StartTimer(Timer01, 0)

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, float afMagnitude, float afDuration)
        
		If theImod
		   theImod.Remove()
	 EndIf
		
		If theImod02
		   theImod02.Remove()		
   	 EndIf 
   		
		CancelTimer(0)
		CancelTimer(1)
		CancelTimer(2)

EndEvent

Event OnTimer(int aiTimerID)
	   
	   Float Timer01 = IMADTimer.GetValue()
	   Float Timer02 = IMADTimer02.GetValue()
	   Float TimerStagger = IMADTimerStagger.GetValue()       
	   
	   If aiTimerID == 0
                     
		  theImod.Apply()		 
		  StartTimer(Timer01, 0)

   ElseIf aiTimerID == 1
          
		  theImod02.Apply()
	      StartTimer(Timer02, 1)

   ElseIf aiTimerID == 2
          
		  SPL_Stagger.Cast(PlayerRef, PlayerRef)	
	      StartTimer(TimerStagger, 2)
	
	EndIf

EndEvent
