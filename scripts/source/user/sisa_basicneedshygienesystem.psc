ScriptName SISA_BasicNeedsHygieneSystem extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_Hygiene Auto Const
GlobalVariable Property GV_HygieneDMG Auto Const
GlobalVariable Property GV_SpacesuitDMGMult Auto Const
GlobalVariable Property GV_GlobalDMGMult Auto Const
GlobalVariable Property GV_GlobalTimeMult Auto Const
Keyword Property KWD_WornSpacesuit Auto Const
Conditionform Property CF_InWater Auto Const Mandatory
Conditionform Property CF_InWaterExtreme Auto Const Mandatory
Message Property MSG_SafeWater Auto Const
Message Property MSG_HazardWater Auto Const

Float Property FLT_Timer = 1.0 Auto
Float Property FLT_DMG = 1.0 Auto
Float Property FLT_InWaterAmount = 1.0 Auto
Float Property FLT_DMGSpacesuit = 1.0 Auto

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      Float FinalTime = FLT_Timer * GV_GlobalTimeMult.GetValue()
	  StartTimer(FinalTime, 0)
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      CancelTimer(0)
EndEvent

Event OnTimer(int aiTimerID)
	 	  	      
     	     If (aiTimerID == 0)       
             Float FinalTime = FLT_Timer * GV_GlobalTimeMult.GetValue()				
		     Float SpacesuitDMGMult = GV_SpacesuitDMGMult.GetValue() 				   
			 Float GlobalDMGMult = GV_GlobalDMGMult.GetValue()                 
			 Float HygieneDMGWater = FLT_InWaterAmount * GlobalDMGMult				
				
				If CF_InWater.IsTrue(PlayerRef, None) 
				   PlayerRef.RestoreValue(AV_Hygiene, FLT_InWaterAmount) 
				   MSG_SafeWater.Show(PlayerRef.GetValue(AV_Hygiene))
				   StartTimer(FLT_Timer, 0)
			       Return	
			 EndIf

                If CF_InWaterExtreme.IsTrue(PlayerRef, None) 
				   PlayerRef.DamageValue(AV_Hygiene, HygieneDMGWater) 
				   MSG_HazardWater.Show(PlayerRef.GetValue(AV_Hygiene))
				   StartTimer(FinalTime, 0)
			       Return	
			 EndIf
								
				If PlayerRef.WornHasKeyword(KWD_WornSpacesuit)
				   Float HygieneDMGWithSpacesuit = FLT_DMG * GlobalDMGMult * FLT_DMGSpacesuit * SpacesuitDMGMult
				   PlayerRef.DamageValue(AV_Hygiene, HygieneDMGWithSpacesuit)   
		     Else
				   Float HygieneDMG = FLT_DMG * GlobalDMGMult
				   PlayerRef.DamageValue(AV_Hygiene, HygieneDMG) 
             EndIf
			 StartTimer(FinalTime, 0)		 
		 EndIf	

EndEvent				