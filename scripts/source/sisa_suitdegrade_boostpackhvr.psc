ScriptName SISA_SuitDegrade_BoostpackHVR extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_DegradeLevel Auto Const
Message Property MSG_SUITConditionLevel Auto Const
GlobalVariable Property GV_BlockJetPack Auto Const
GlobalVariable Property GV_HoverDMG Auto Const
Conditionform Property ConditionFormDegradeLess01 Auto Const Mandatory
Conditionform Property ConditionFormDegradeLess02 Auto Const Mandatory
Conditionform Property ConditionFormDegradeLess03 Auto Const Mandatory
Conditionform Property ConditionFormDegradeLess04 Auto Const Mandatory
MagicEffect Property MGC_HandyDandy Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)

	  StartTimer(0, 0)

	  If PlayerRef.GetValue(AV_DegradeLevel) > 0.0
         GV_BlockJetPack.SetValue(0) 
  Else
         GV_BlockJetPack.SetValue(1) 
   EndIf

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
      If PlayerRef.GetValue(AV_DegradeLevel) <= 0.0
         GV_BlockJetPack.SetValue(1)
   EndIf

EndEvent

Event OnTimer(int aiTimerID)
		          
		 If (aiTimerID == 0) 
			     Float Scale = DegradeScale()
	             Float HandyDandyBonus = HandyDandyMult()
		         If PlayerRef.GetValue(AV_DegradeLevel) > 0.0
		            Float HoverDMG = GV_HoverDMG.GetValue()
					PlayerRef.DamageValue(AV_DegradeLevel, HoverDMG / Scale / HandyDandyBonus)
	                StartTimer(1.0, 0)
	         Else
                    GV_BlockJetPack.SetValue(1)    
	          EndIf	  
	  EndIf

EndEvent

Float Function HandyDandyMult()
     
	 Float Mult00 = 1.00
     Float Mult01 = 1.30 	 	 
		
		If PlayerRef.HasmagicEffect(MGC_HandyDandy)    
		   Return Mult01 
      Else	
           Return Mult00
     EndIf

EndFunction

Float Function DegradeScale()
     
	 Float Mult00 = 1.00
     Float Mult01 = 1.20 	 
     Float Mult02 = 1.30 
     Float Mult03 = 1.40 
     Float Mult04 = 1.50 	 
		
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
