ScriptName SISA_OxygenQuest extends Quest

Actor Property PlayerRef Auto Const
ActorValue Property Oxygen Auto Const
ActorValue Property OxygenBoosterReadinessAV Auto Const
ActorValue Property HelmetDegradationAV Auto Const
Keyword Property OxygenAffliction Auto Const
Keyword Property DialogueSubTopicToSay Auto Const
Potion Property OxygenBoosterPotion Auto Const
Conditionform Property ConditionFormOxygen Auto Const Mandatory
GlobalVariable Property OxygenDMG_Min Auto Const
GlobalVariable Property OxygenDMG_Max Auto Const
GlobalVariable Property OxygenDMGCombat_Min Auto Const
GlobalVariable Property OxygenDMGCombat_Max Auto Const
GlobalVariable Property OxygenDMG_JointPain Auto Const
GlobalVariable Property OxygenDMG_Asphyxiation Auto Const
GlobalVariable Property OxygenDMG_Cramping Auto Const
GlobalVariable Property OxygenDMG_Crippled Auto Const
GlobalVariable Property OxygenDMG_DiffBreath Auto Const
GlobalVariable Property OxygenDMG_Fever Auto Const
GlobalVariable Property OxygenDMG_Migraine Auto Const
GlobalVariable Property OxygenDMG_Soreness Auto Const
GlobalVariable Property OxygenTime Auto Const
GlobalVariable Property OxygenNotificationToggle Auto Const
GlobalVariable Property OxygenCooldown Auto Const
GlobalVariable Property OxygenCooldownCounts Auto Const
GlobalVariable Property GV_PercentageTracker_O2 Auto Const
GlobalVariable Property GV_DegradationToggle Auto Const
MagicEffect Property AfflictionCheck_JointPain Auto Const
MagicEffect Property AfflictionCheck_Migraine Auto Const
MagicEffect Property AfflictionCheck_Soreness Auto Const
MagicEffect Property AfflictionCheck_Asphyxiation Auto Const
MagicEffect Property AfflictionCheck_Cramping Auto Const
MagicEffect Property AfflictionCheck_Crippled Auto Const
MagicEffect Property AfflictionCheck_DifficultyBreathing Auto Const
MagicEffect Property AfflictionCheck_Fever Auto Const
MagicEffect Property OxygenEfficient Auto Const
Message Property MSGOxygenLevels Auto Const
Spell Property OxygenStart Auto Const
Spell Property OxygenStop Auto Const
Spell Property OxygenWatchHud Auto Const
Spell Property OxygenSystemSpell Auto Const
wwiseevent Property SoundFX_OxygenRestore Auto Const

Float CooldownTime = 30.0

Function OxygenStart()
		      
		 OxygenStart.Cast(PlayerRef, PlayerRef)
		 Utility.Wait(0.5)
		 PlayerRef.AddSpell(OxygenSystemSpell, False)
	     PlayerRef.Additem(OxygenBoosterPotion, 2, False)
		 PlayerRef.DamageValue(Oxygen, 9999)
		 PlayerRef.RestoreValue(Oxygen, 100)
         PlayerRef.DamageValue(OxygenBoosterReadinessAV, 9999)	
		 PercentageTracker()
		 OxygenCheckOnce()
	     SoundFX_OxygenRestore.PlayAndWait(PlayerRef, None, None)	

EndFunction

Function OxygenStop()
		 
		 PlayerRef.DamageValue(Oxygen, 9999)
		 PlayerRef.RestoreValue(Oxygen, 100)
         PlayerRef.DamageValue(OxygenBoosterReadinessAV, 9999)	     
         PlayerRef.RemoveSpell(OxygenSystemSpell) 
		 PlayerRef.Removeitem(OxygenBoosterPotion, 9999, True, None)
		 PlayerRef.RestoreValue(Oxygen, 9999)
         PlayerRef.RestoreValue(OxygenBoosterReadinessAV, 9999)
	     SoundFX_OxygenRestore.PlayAndWait(PlayerRef, None, None)
		 CancelTimer(0)
         CancelTimer(1)
         OxygenStop.Cast(PlayerRef, PlayerRef)	

EndFunction

Function PercentageTracker()        		 
         GV_PercentageTracker_O2.SetValue(PlayerRef.GetValue(Oxygen))
EndFunction

Event OnTimer(int aiTimerID)
	       	 
		     If (aiTimerID == 0) 
                
				    Float OxygenCycle = OxygenTime.Getvalue()
                    
					If PlayerRef.GetValue(Oxygen) > 0 && ConditionFormOxygen.IsTrue(PlayerRef, None) == False 
				       O2UsageConditions()
				       StartTimer(OxygenCycle, 0)				
				 Else
		               CancelTimer(0)
				 EndIf
 
		 ElseIf (aiTimerID == 1)
                     
					 If OxygenCooldownCounts.GetValue() <= 0
				        OxygenCooldownCounts.SetValue(30.0)
						OxygenCooldown.SetValue(0)
						CooldownTime = 30.0
						CancelTimer(1)
				 Else
				        CooldownTime -= 1.0
						OxygenCooldownCounts.SetValue(CooldownTime)
						StartTimer(1, 1)
				  EndIf
		  
		  EndIf
EndEvent

Function OxygenCheckOnce()
	     
		 Float OxygenAmount = PlayerRef.GetValue(Oxygen) 
		 
		 If OxygenNotificationToggle.GetValue() == 1
			MSGOxygenLevels.show(OxygenAmount, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)  	 
	        PlayerRef.SayCustom(DialogueSubTopicToSay, None, False, None)
	 ElseIf OxygenNotificationToggle.GetValue() == 2
			OxygenWatchHud.cast(PlayerRef, PlayerRef)
			PlayerRef.SayCustom(DialogueSubTopicToSay, None, False, None)		   
	 ElseIf OxygenNotificationToggle.GetValue() == 3
			MSGOxygenLevels.show(OxygenAmount, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) 
			OxygenWatchHud.cast(PlayerRef, PlayerRef)
			PlayerRef.SayCustom(DialogueSubTopicToSay, None, False, None)	
	  EndIf

EndFunction

Function OxygenConsumeStart()         
		 Float OxygenCycle = OxygenTime.Getvalue()         
		 StartTimer(OxygenCycle, 0)
         OxygenCheckOnce()
EndFunction

Function OxygenConsumeStop()                  		 
		 CancelTimer(0)		 	 
	     OxygenCheckOnce()
EndFunction

Function OxygenConsumeStartSprint()
   
     If PlayerRef.GetValue(Oxygen) > 0 && ConditionFormOxygen.IsTrue(PlayerRef, None) == False       
          While playerRef.IsSprinting() == True
                O2UsageConditions()
			    Utility.Wait(1.0)
	   EndWhile
  EndIf

EndFunction

Function OxygenReplenishCooldown()                  
		 CooldownTime = 30.0
		 StartTimer(1, 1)
EndFunction

Float Function DegradationCheck()

      Float DegradationEnabled = 1.0
      Float DegradationDisabled = 0.0

      If GV_DegradationToggle.GetValue() == 1
         return DegradationEnabled
  Else
         return DegradationDisabled   
   EndIf

EndFunction

Float Function DegradationLevel()
      
	  Float Level0 = 0.0
      Float Level1 = 0.2
      Float Level2 = 0.5
      Float Level3 = 0.9
      Float Level4 = 1.4      
	  
	  If PlayerRef.GetValue(HelmetDegradationAV) > 50.0 && PlayerRef.GetValue(HelmetDegradationAV) <= 75.0
         return Level1
  ElseIf PlayerRef.GetValue(HelmetDegradationAV) > 25.0 && PlayerRef.GetValue(HelmetDegradationAV) <= 50.0
         return Level2  
  ElseIf PlayerRef.GetValue(HelmetDegradationAV) > 0.0 && PlayerRef.GetValue(HelmetDegradationAV) <= 25.0
         return Level3  
  ElseIf PlayerRef.GetValue(HelmetDegradationAV) <= 0.0
         return Level4 
Else
         return Level0     
   EndIf

EndFunction

Function O2Damage(Float DMG, Float CombatDMG)
		 	   
			   Float DegradeCheck = DegradationCheck()	 			  
			   Float DegradeLevel = DegradationLevel()	
			   
			   If PlayerRef.IsInCombat() == True
			         If PlayerRef.HasMagicEffect(OxygenEfficient)
				        PlayerRef.DamageValue(Oxygen, (CombatDMG + (DegradeCheck * DegradeLevel)) / 1.5)
                  Else
			            PlayerRef.DamageValue(Oxygen, CombatDMG + (DegradeCheck * DegradeLevel))
			      EndIf
			Else
	                 If PlayerRef.HasMagicEffect(OxygenEfficient) 
				        PlayerRef.DamageValue(Oxygen, (DMG + (DegradeCheck * DegradeLevel)) / 1.5)
	              Else
			            PlayerRef.DamageValue(Oxygen, DMG + (DegradeCheck * DegradeLevel))
			      EndIf
			EndIf

EndFunction

Function O2UsageConditions()
         
		 Float OxygenDamageMin = OxygenDMG_Min.Getvalue()
		 Float OxygenDamageMax = OxygenDMG_Max.Getvalue()
		 Float RandomDMG = Utility.RandomFloat(OxygenDamageMin, OxygenDamageMax)

		 Float OxygenCombatDamageMin = OxygenDMGCombat_Min.Getvalue()
		 Float OxygenCombatDamageMax = OxygenDMGCombat_Max.Getvalue()
		 Float RandomCombatDMG = Utility.RandomFloat(OxygenCombatDamageMin, OxygenCombatDamageMax)          		 
		 
		 Float OxygenDamageJointPain = OxygenDMG_JointPain.Getvalue()
		 Float OxygenDamageJointPainNormal = OxygenDamageJointPain + RandomDMG
		 Float OxygenDamageJointPainCombat = OxygenDamageJointPain + RandomCombatDMG		 
		 Float OxygenDamageMigraine = OxygenDMG_Migraine.Getvalue()	 
		 Float OxygenDamageMigraineNormal = OxygenDamageMigraine + RandomDMG	
		 Float OxygenDamageMigraineCombat = OxygenDamageMigraine + RandomCombatDMG		 
		 Float OxygenDamageSoreness = OxygenDMG_Soreness.Getvalue()		 
		 Float OxygenDamageSorenessNormal = OxygenDamageSoreness + RandomDMG	
		 Float OxygenDamageSorenessCombat = OxygenDamageSoreness + RandomCombatDMG			 
		 Float OxygenDamageAsphyxiation = OxygenDMG_Asphyxiation.Getvalue()		 
		 Float OxygenDamageAsphyxiationNormal = OxygenDamageAsphyxiation + RandomDMG
		 Float OxygenDamageAsphyxiationCombat = OxygenDamageAsphyxiation + RandomCombatDMG			 		 
		 Float OxygenDamageCramping = OxygenDMG_Cramping.Getvalue()
		 Float OxygenDamageCrampingNormal = OxygenDamageCramping + RandomDMG	 
		 Float OxygenDamageCrampingCombat = OxygenDamageCramping + RandomCombatDMG			 
		 Float OxygenDamageCrippled = OxygenDMG_Crippled.Getvalue()	 
		 Float OxygenDamageCrippledNormal = OxygenDamageCrippled + RandomDMG
		 Float OxygenDamageCrippledCombat = OxygenDamageCrippled + RandomCombatDMG			 		 
		 Float OxygenDamageDifficultyBreathing = OxygenDMG_DiffBreath.Getvalue()			 
		 Float OxygenDamageDifficultyBreathingNormal = OxygenDamageDifficultyBreathing + RandomDMG		 
		 Float OxygenDamageDifficultyBreathingCombat = OxygenDamageDifficultyBreathing + RandomCombatDMG		 
		 Float OxygenDamageFever = OxygenDMG_Fever.Getvalue()
		 Float OxygenDamageFeverNormal = OxygenDamageFever + RandomDMG
		 Float OxygenDamageFeverCombat = OxygenDamageFever + RandomCombatDMG        
		 
		 If PlayerRef.HasMagicEffectWithKeyword(OxygenAffliction) == False
		    O2Damage(RandomDMG, RandomCombatDMG)         		 		 		 
	 Else  
			If PlayerRef.HasMagicEffect(AfflictionCheck_JointPain) == True		 
		       O2Damage(OxygenDamageJointPainNormal, OxygenDamageJointPainCombat)
	     EndIf

		    If PlayerRef.HasMagicEffect(AfflictionCheck_Migraine) == True		 
		       O2Damage(OxygenDamageMigraineNormal, OxygenDamageMigraineCombat)
	     EndIf

		    If PlayerRef.HasMagicEffect(AfflictionCheck_Soreness) == True		 
		       O2Damage(OxygenDamageSorenessNormal, OxygenDamageSorenessCombat)
	     EndIf

		    If PlayerRef.HasMagicEffect(AfflictionCheck_Asphyxiation) == True		 
		       O2Damage(OxygenDamageAsphyxiationNormal, OxygenDamageAsphyxiationCombat)
	     EndIf

		    If PlayerRef.HasMagicEffect(AfflictionCheck_Cramping) == True		 
		       O2Damage(OxygenDamageCrampingNormal, OxygenDamageCrampingCombat)
	     EndIf

		    If PlayerRef.HasMagicEffect(AfflictionCheck_Crippled) == True		 
		       O2Damage(OxygenDamageCrippledNormal, OxygenDamageCrippledCombat)
	     EndIf

		    If PlayerRef.HasMagicEffect(AfflictionCheck_DifficultyBreathing) == True		 
		       O2Damage(OxygenDamageDifficultyBreathingNormal, OxygenDamageDifficultyBreathingCombat)
	     EndIf

		    If PlayerRef.HasMagicEffect(AfflictionCheck_Fever) == True		 
		       O2Damage(OxygenDamageFeverNormal, OxygenDamageFeverCombat)
	     EndIf
     EndIf
     
EndFunction
