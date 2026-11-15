Scriptname SISA_SuitDegrade extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_DegradeLevel Auto Const
Message Property MSG_SUITConditionLevel Auto Const
GlobalVariable Property GV_BlockJetPack Auto Const
GlobalVariable Property GV_PerBoostDMG Auto Const
GlobalVariable Property GV_OnHitDMG Auto Const
GlobalVariable Property GV_OnHitChance Auto Const
Conditionform Property ConditionFormDegradeLess01 Auto Const Mandatory
Conditionform Property ConditionFormDegradeLess02 Auto Const Mandatory
Conditionform Property ConditionFormDegradeLess03 Auto Const Mandatory
Conditionform Property ConditionFormDegradeLess04 Auto Const Mandatory
MagicEffect Property MGF_EnviroCoating Auto Const
MagicEffect Property MGC_HandyDandy Auto Const

String Property AnimEvent Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
	  
	  RegisterForAnimationEvent(PlayerRef, AnimEvent) 
      RegisterForHitEvent(PlayerRef, None, None, None, -1, -1, -1, -1, True)
           
	  If PlayerRef.GetValue(AV_DegradeLevel) > 0.0
         GV_BlockJetPack.SetValue(0) 
  Else
         GV_BlockJetPack.SetValue(1) 
   EndIf

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)

	  UnregisterForAnimationEvent(PlayerRef, AnimEvent) 
      UnregisterForHitEvent(PlayerRef, None, None, None, -1, -1, -1, -1, True)

      If PlayerRef.GetValue(AV_DegradeLevel) <= 0.0
         GV_BlockJetPack.SetValue(1)
   EndIf

EndEvent

Event OnAnimationEvent(ObjectReference akSource, string asEventName)
     	 
     If(asEventName == AnimEvent)		        
		  Float Scale = DegradeScale()
	      Float HandyDandyBonus = HandyDandyMult()
		  If PlayerRef.GetValue(AV_DegradeLevel) > 0.0
		     Float PerBoostDamage = GV_PerBoostDMG.GetValue() 
			 PlayerRef.DamageValue(AV_DegradeLevel, PerBoostDamage / Scale / HandyDandyBonus)
	   Else
             GV_BlockJetPack.SetValue(1)    
	   EndIf
  
  EndIf

EndEvent

Event OnHit(ObjectReference akTarget, ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked, string apMaterial)
	 
     Float RandomChance = Utility.RandomInt(0, 100)
	 
	 If akTarget == PlayerRef
		  Float OnHitChance = GV_OnHitChance.GetValue() 
		  If RandomChance <= OnHitChance 
				Float Scale = DegradeScale()
	            Float HandyDandyBonus = HandyDandyMult()
				If PlayerRef.GetValue(AV_DegradeLevel) > 0.0
		              If PlayerRef.HasMagicEffect(MGF_EnviroCoating) == False 				        
				         Float OnHitDamage = GV_OnHitDMG.GetValue() 
						 PlayerRef.DamageValue(AV_DegradeLevel, OnHitDamage / Scale / HandyDandyBonus)
	               EndIf
	        Else
                   GV_BlockJetPack.SetValue(1)    
	         EndIf
	   EndIf
	   RegisterForHitEvent(PlayerRef, None, None, None, -1, -1, -1, -1, True)  
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