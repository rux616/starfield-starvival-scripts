Scriptname SISA_WeaponDegrade extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_DegradeLevel Auto Const
String Property AnimEvent Auto Const
String Property AnimEvent02 Auto Const
Conditionform Property ConditionFormDegradeLess01 Auto Const Mandatory
Conditionform Property ConditionFormDegradeLess02 Auto Const Mandatory
Conditionform Property ConditionFormDegradeLess03 Auto Const Mandatory
Conditionform Property ConditionFormDegradeLess04 Auto Const Mandatory
MagicEffect Property MGC_HandyDandy Auto Const
GlobalVariable Property GV_PerShotDMG Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	  RegisterForAnimationEvent(PlayerRef, AnimEvent) 
	  RegisterForAnimationEvent(PlayerRef, AnimEvent02) 
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	  UnregisterForAnimationEvent(PlayerRef, AnimEvent) 
	  UnregisterForAnimationEvent(PlayerRef, AnimEvent02) 
EndEvent

Event OnAnimationEvent(ObjectReference akSource, string asEventName)
     	      
	 If(asEventName == AnimEvent || asEventName == AnimEvent02)		        		  		  
	    Float Scale = DegradeScale()
	    Float HandyDandyBonus = HandyDandyMult()
	    Float PerShotDMG = GV_PerShotDMG.GetValue()	
		PlayerRef.DamageValue(AV_DegradeLevel, PerShotDMG / Scale / HandyDandyBonus)	     	          
  EndIf

EndEvent

Float Function HandyDandyMult()
     
	 Float Mult00 = 1.00
     Float Mult01 = 1.50 	 	 
		
		If PlayerRef.HasmagicEffect(MGC_HandyDandy)    
		   Return Mult01 
      Else	
           Return Mult00
     EndIf

EndFunction

Float Function DegradeScale()
     
	 Float Mult00 = 1.0
     Float Mult01 = 1.5 	 
     Float Mult02 = 2.0
     Float Mult03 = 2.5
     Float Mult04 = 3.0	 
		
		If ConditionFormDegradeLess04.IsTrue(PlayerRef, None)     
		   Return Mult04 
	ElseIf ConditionFormDegradeLess03.IsTrue(PlayerRef, None)  
	       Return Mult03
	ElseIf ConditionFormDegradeLess02.IsTrue(PlayerRef, None)	 
           Return Mult02
	ElseIf ConditionFormDegradeLess01.IsTrue(PlayerRef, None)
           Return Mult01 
     Else	
           Return Mult00
     EndIf

EndFunction