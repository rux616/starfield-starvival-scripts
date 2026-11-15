ScriptName SISA_Intoxaddiction extends Quest

Group SISAActors
    Actor Property PlayerRef Auto Const
EndGroup

Group SISAActorValues
    ActorValue Property Sleep Auto Const
    ActorValue Property Health Auto Const
    ActorValue Property SelfControl Auto Const
    ActorValue Property Intoxication_Alcoholism Auto Const
    ActorValue Property Intoxication_Caffeinophagia Auto Const
    ActorValue Property Intoxication_CognitiveDissolution Auto Const
    ActorValue Property Intoxication_HeartAttack Auto Const
    ActorValue Property Intoxication_ParanoidTreatment Auto Const
    ActorValue Property Intoxication_StimulantsAddiction Auto Const
    ActorValue Property Intoxication_Obesity Auto Const
    ActorValue Property Intoxication_AddictionCount Auto Const
EndGroup

Group SISACondForms
    Conditionform Property ConditionFormPainToleranceRank1 Auto Const Mandatory
    Conditionform Property ConditionFormPainToleranceRank2 Auto Const Mandatory
    Conditionform Property ConditionFormPainToleranceRank3 Auto Const Mandatory
    Conditionform Property ConditionFormPainToleranceRank4 Auto Const Mandatory
    Conditionform Property ConditionFormWellnessRank1 Auto Const Mandatory
    Conditionform Property ConditionFormWellnessRank2 Auto Const Mandatory
    Conditionform Property ConditionFormWellnessRank3 Auto Const Mandatory
    Conditionform Property ConditionFormWellnessRank4 Auto Const Mandatory
    Conditionform Property ConditionFormSuppressFoodEffects Auto Const Mandatory
EndGroup

Group SISAArmors
    Armor Property WellRestedToken Auto Const
EndGroup

Group SISAPotions
    Potion Property AddPotionCureJunkFlush Auto Const
    Potion Property PotionAddictionAlcoholism Auto Const
    Potion Property PotionAddictionCaffeinophagia Auto Const
    Potion Property PotionAddictionCognitiveDissolution Auto Const
    Potion Property PotionAddictionHeartAttack Auto Const
    Potion Property PotionAddictionParanoidTreatment Auto Const
    Potion Property PotionAddictionStimulantsAddiction Auto Const
    Potion Property PotionAddictionObesity Auto Const
EndGroup

Group SISAGlobalVariables
    GlobalVariable Property IntoxicationMinDMG Auto Const
    GlobalVariable Property IntoxicationMaxDMG Auto Const
    GlobalVariable Property IntoxicationMinDMGHealthy Auto Const
    GlobalVariable Property IntoxicationMaxDMGHealthy Auto Const
    GlobalVariable Property AddictionCureTimerJunkFlush Auto Const
    GlobalVariable Property AddichroneTimeRestoration Auto Const
    GlobalVariable Property AddichroneRestoration Auto Const
    GlobalVariable Property AddictionToggleAlcoholism Auto Const
    GlobalVariable Property AddictionToggleCaffeinophagia Auto Const
    GlobalVariable Property AddictionToggleCognitiveDissolution Auto Const
    GlobalVariable Property AddictionToggleHeartAttack Auto Const
    GlobalVariable Property AddictionToggleParanoidTreatment Auto Const
    GlobalVariable Property AddictionToggleStimulants Auto Const
    GlobalVariable Property AddictionToggleObesity Auto Const
    GlobalVariable Property NeedsCheckerAfterConsumptionNotifier Auto Const
    GlobalVariable Property GV_BasicNeedsToggle Auto Const
    GlobalVariable Property GV_SelfControlToggle Auto Const
    GlobalVariable Property GV_PercentageTracker_Alcoholism Auto Const
    GlobalVariable Property GV_PercentageTracker_Caffeinophagia Auto Const
    GlobalVariable Property GV_PercentageTracker_CognDissolution Auto Const
    GlobalVariable Property GV_PercentageTracker_HeartAttack Auto Const
    GlobalVariable Property GV_PercentageTracker_ParanoidTreatment Auto Const
    GlobalVariable Property GV_PercentageTracker_Stimulants Auto Const
    GlobalVariable Property GV_PercentageTracker_Obesity Auto Const
EndGroup

Group SISAMagicEffects
    MagicEffect Property AddictionSuppressantCheck Auto Const
    MagicEffect Property AlcoholismCheck Auto Const
    MagicEffect Property CaffeinophagiaCheck Auto Const
    MagicEffect Property CognitiveDissolutionCheck Auto Const
    MagicEffect Property HeartAttackCheck Auto Const
    MagicEffect Property HyperCaloricCheck Auto Const
    MagicEffect Property ParanoidHealingCheck Auto Const
    MagicEffect Property StimulantsCheck Auto Const
    MagicEffect Property AddictionCureJunkFlush Auto Const
    MagicEffect Property AddichroneSuppression Auto Const
EndGroup

Group SISAMessages
    Message Property IntoxicationChecker Auto Const
    Message Property IntoxicationCheckerALCO Auto Const
    Message Property IntoxicationCheckerCAFF Auto Const
    Message Property IntoxicationCheckerCOGN Auto Const
    Message Property IntoxicationCheckerTACH Auto Const
    Message Property IntoxicationCheckerPHLG Auto Const
    Message Property IntoxicationCheckerODST Auto Const
    Message Property IntoxicationCheckerHCAL Auto Const
    Message Property MSG_NotifyCureAlcoholism Auto Const
    Message Property MSG_NotifyCureCaffeinophagia Auto Const
    Message Property MSG_NotifyCureCognitiveDis Auto Const
    Message Property MSG_NotifyCureHeartAttack Auto Const
    Message Property MSG_NotifyCureParanoidTreatment Auto Const
    Message Property MSG_NotifyCureStimulants Auto Const
    Message Property MSG_NotifyCureHypercaloric Auto Const
    Message Property MSG_NotifyLocationWarning Auto Const
EndGroup

Group SISAFormLists
    FormList Property AddictionItems_AlcoholismTrigger Auto
    FormList Property AddictionItems_CaffeinophagiaTrigger Auto
    FormList Property AddictionItems_CognitiveDissolutionTrigger Auto
    FormList Property AddictionItems_HeartAttackTrigger Auto
    FormList Property AddictionItems_ParanoidTreatmentTrigger Auto
    FormList Property AddictionItems_StimulantsAddictionTrigger Auto
    FormList Property AddictionItems_ObesityAddictionTrigger Auto
    FormList Property AddictionItems_ObesityAddictionRemover Auto
EndGroup

Group SISASpells
    Spell Property IntoxicationWarningSpell Auto Const
    Spell Property CureAddictionsSpell Auto Const
    Spell Property AddictionAlcoholismSpell Auto Const
    Spell Property AddictionCaffeinophagiaSpell Auto Const
    Spell Property AddictionCognitiveDisSpell Auto Const
    Spell Property AddictionHeartAttackSpell Auto Const
    Spell Property AddictionParanoidTreatmentSpell Auto Const
    Spell Property AddictionStimulantsSpell Auto Const
    Spell Property AddictionHypercaloricSpell Auto Const
    Spell Property JunkFlushCureAddictionsSpell Auto Const
EndGroup

Group SISAKeywords
    Keyword Property KWD_FoodDrinkAlc Auto Const
EndGroup

Group SISAWwise
    wwiseevent Property SFX_AddictionCure Auto Const
EndGroup


Bool AddichroneOnPlayer = false

Function StartIntoxaddiction()
         PrepareAV()
         RegisterEvents()
         AddPerksAndSpell()
EndFunction

Function StopIntoxaddiction()
         AddichroneOnPlayer = false
		 PlayerRef.RemoveSpell(IntoxicationWarningSpell)
	     PlayerRef.DamageValue(Intoxication_Alcoholism, 999)
	     PlayerRef.DamageValue(Intoxication_Caffeinophagia, 999)
	     PlayerRef.DamageValue(Intoxication_CognitiveDissolution, 999)
	     PlayerRef.DamageValue(Intoxication_HeartAttack, 999)
	     PlayerRef.DamageValue(Intoxication_ParanoidTreatment, 999)
	     PlayerRef.DamageValue(Intoxication_StimulantsAddiction, 999)
	     PlayerRef.DamageValue(Intoxication_Obesity, 999)
         UnregisterForPlayerSleep()
         UnregisterForPlayerWait()
         UnregisterForRemoteEvent(PlayerRef, "OnItemEquipped")
         UnregisterForMenuOpenCloseEvent("DataMenu")
	     UnregisterForActorValueChangedEvent(PlayerRef, Intoxication_Alcoholism)
	     UnregisterForActorValueChangedEvent(PlayerRef, Intoxication_Caffeinophagia)
	     UnregisterForActorValueChangedEvent(PlayerRef, Intoxication_CognitiveDissolution)
	     UnregisterForActorValueChangedEvent(PlayerRef, Intoxication_HeartAttack)
	     UnregisterForActorValueChangedEvent(PlayerRef, Intoxication_ParanoidTreatment)
	     UnregisterForActorValueChangedEvent(PlayerRef, Intoxication_StimulantsAddiction)
	     UnregisterForActorValueChangedEvent(PlayerRef, Intoxication_Obesity)
         CureAddictionsSpell.Cast(PlayerRef, PlayerRef)
EndFunction

Function PrepareAV()
	     PlayerRef.DamageValue(Intoxication_Alcoholism, 100)
	     PlayerRef.DamageValue(Intoxication_Caffeinophagia, 100)
	     PlayerRef.DamageValue(Intoxication_CognitiveDissolution, 100)
	     PlayerRef.DamageValue(Intoxication_HeartAttack, 100)
	     PlayerRef.DamageValue(Intoxication_ParanoidTreatment, 100)
	     PlayerRef.DamageValue(Intoxication_StimulantsAddiction, 100) 
	     PlayerRef.DamageValue(Intoxication_Obesity, 100) 
         PercentageTracker()
EndFunction

Function AddPerksAndSpell()         
		 Utility.Wait(0.5)		 
		 PlayerRef.AddSpell(IntoxicationWarningSpell, False) 
EndFunction

Function RegisterEvents()
         RegisterForPlayerSleep()
         RegisterForPlayerWait()
         RegisterForRemoteEvent(PlayerRef, "OnItemEquipped")	  
	     RegisterForActorValueChangedEvent(PlayerRef, Intoxication_Alcoholism)
	     RegisterForActorValueChangedEvent(PlayerRef, Intoxication_Caffeinophagia)
	     RegisterForActorValueChangedEvent(PlayerRef, Intoxication_CognitiveDissolution)
	     RegisterForActorValueChangedEvent(PlayerRef, Intoxication_HeartAttack)
	     RegisterForActorValueChangedEvent(PlayerRef, Intoxication_ParanoidTreatment)
	     RegisterForActorValueChangedEvent(PlayerRef, Intoxication_StimulantsAddiction)
	     RegisterForActorValueChangedEvent(PlayerRef, Intoxication_Obesity)
         RegisterForMenuOpenCloseEvent("DataMenu")         
EndFunction

Event OnMenuOpenCloseEvent(String asMenuName, Bool abOpening)
         	     	 			 
		 If asMenuName == "DataMenu"    
			       If abOpening == True														      					   
                      ;PercentageTracker()
					  PlayerRef.AddSpell(IntoxicationWarningSpell, False)	
				Else			                            
						If (PlayerRef.HasSpell(IntoxicationWarningSpell))
                            PlayerRef.RemoveSpell(IntoxicationWarningSpell)
                     EndIf				   
				EndIf
      EndIf

EndEvent

Event OnActorValueChanged(ObjectReference akObjRef, ActorValue akActorValue)    
	   
	   If akObjRef == PlayerRef && akActorValue == Intoxication_Alcoholism
	      RegisterForActorValueChangedEvent(PlayerRef, Intoxication_Alcoholism)
          GV_PercentageTracker_Alcoholism.SetValue(PlayerRef.GetValue(Intoxication_Alcoholism))
   ElseIf akObjRef == PlayerRef && akActorValue == Intoxication_Caffeinophagia
	      RegisterForActorValueChangedEvent(PlayerRef, Intoxication_Caffeinophagia)
          GV_PercentageTracker_Caffeinophagia.SetValue(PlayerRef.GetValue(Intoxication_Caffeinophagia))
   ElseIf akObjRef == PlayerRef && akActorValue == Intoxication_CognitiveDissolution
	      RegisterForActorValueChangedEvent(PlayerRef, Intoxication_CognitiveDissolution)
          GV_PercentageTracker_CognDissolution.SetValue(PlayerRef.GetValue(Intoxication_CognitiveDissolution))
   ElseIf akObjRef == PlayerRef && akActorValue == Intoxication_HeartAttack
	      RegisterForActorValueChangedEvent(PlayerRef, Intoxication_HeartAttack)
          GV_PercentageTracker_HeartAttack.SetValue(PlayerRef.GetValue(Intoxication_HeartAttack))
   ElseIf akObjRef == PlayerRef && akActorValue == Intoxication_ParanoidTreatment
	      RegisterForActorValueChangedEvent(PlayerRef, Intoxication_ParanoidTreatment)
          GV_PercentageTracker_ParanoidTreatment.SetValue(PlayerRef.GetValue(Intoxication_ParanoidTreatment))	
   ElseIf akObjRef == PlayerRef && akActorValue == Intoxication_StimulantsAddiction
	      RegisterForActorValueChangedEvent(PlayerRef, Intoxication_StimulantsAddiction)
          GV_PercentageTracker_Stimulants.SetValue(PlayerRef.GetValue(Intoxication_StimulantsAddiction))
   ElseIf akObjRef == PlayerRef && akActorValue == Intoxication_Obesity
	      RegisterForActorValueChangedEvent(PlayerRef, Intoxication_Obesity)
          GV_PercentageTracker_Obesity.SetValue(PlayerRef.GetValue(Intoxication_Obesity))
    EndIf

EndEvent

Function PercentageTracker()
         
         GV_PercentageTracker_Alcoholism.SetValue(PlayerRef.GetValue(Intoxication_Alcoholism))
         GV_PercentageTracker_Caffeinophagia.SetValue(PlayerRef.GetValue(Intoxication_Caffeinophagia))
         GV_PercentageTracker_CognDissolution.SetValue(PlayerRef.GetValue(Intoxication_CognitiveDissolution))
         GV_PercentageTracker_HeartAttack.SetValue(PlayerRef.GetValue(Intoxication_HeartAttack))
         GV_PercentageTracker_ParanoidTreatment.SetValue(PlayerRef.GetValue(Intoxication_ParanoidTreatment))
         GV_PercentageTracker_Stimulants.SetValue(PlayerRef.GetValue(Intoxication_StimulantsAddiction))
         GV_PercentageTracker_Obesity.SetValue(PlayerRef.GetValue(Intoxication_Obesity))

EndFunction

Event OnPlayerSleepStart(float afSleepStartTime, float afDesiredSleepEndTime, ObjectReference akBed)
	
	Int IfBasicNeedsActive = BasicNeedsCheck()
    If IfBasicNeedsActive == 1
          If PlayerRef.HasMagicEffect(AddictionSuppressantCheck) == True
             AddichroneOnPlayer = True    
       EndIf
 EndIf	

EndEvent

Event OnPlayerSleepStop(bool abInterrupted, ObjectReference akBed)
	
	Int IfBasicNeedsActive = BasicNeedsCheck()
    If IfBasicNeedsActive == 1	                       
          If PlayerRef.IsInScene() == False
     		 NeedsAfterSleep()
     		 AddichroneOnPlayer = False
       EndIf
 EndIf	

EndEvent

Function NeedsAfterSleep()
         
		 Float SelfControlDebuff = SelfControlDebuffCalcForSleep() * SelfControlCheck()
		 Int SleepDamaged = PlayerRef.GetValue(Sleep) as Int / 7 / SelfControlDebuff as Int
	     If PlayerRef.HasMagicEffect(CaffeinophagiaCheck) == True && AddichroneOnPlayer == False
            PlayerRef.DamageValue(Sleep, SleepDamaged)	 
		    PlayerRef.Removeitem(WellRestedToken, 999, True)
	  EndIf
   
EndFunction

Int Function BasicNeedsCheck()

      Int BasicNeedsEnabled = 1
      Int BasicNeedsDisabled = 0

      If GV_BasicNeedsToggle.GetValue() == 1
         return BasicNeedsEnabled
  Else
         return BasicNeedsDisabled   
   EndIf

EndFunction

Int Function SelfControlCheck()

      Int SelfControlEnabled = 1
      Int SelfControlDisabled = 0

      If GV_SelfControlToggle.GetValue() == 1
         return SelfControlEnabled
  Else
         return SelfControlDisabled   
   EndIf

EndFunction

Float Function SelfControlDebuffCalcForSleep()
         
         Float DebuffMultStage1 = 2.0
         Float DebuffMultStage2 = 3.0
         Float DebuffMultStage3 = 4.0		 
		 Float NoDebuff = 1.0
		 
		 If PlayerRef.GetValue(SelfControl) > 60 && PlayerRef.GetValue(SelfControl) <= 80 
            Return DebuffMultStage1
	 ElseIf PlayerRef.GetValue(SelfControl) > 40 && PlayerRef.GetValue(SelfControl) <= 60
            Return DebuffMultStage2
	 ElseIf PlayerRef.GetValue(SelfControl) <= 40
            Return DebuffMultStage3	  
	  Else
            Return NoDebuff
	  EndIf

EndFunction

Function IntoxicationChecker()

           Float IntoxicationCheck01 = PlayerRef.Getvalue(Intoxication_Alcoholism)
           Float IntoxicationCheck02 = PlayerRef.Getvalue(Intoxication_Caffeinophagia)
           Float IntoxicationCheck03 = PlayerRef.Getvalue(Intoxication_CognitiveDissolution)
           Float IntoxicationCheck04 = PlayerRef.Getvalue(Intoxication_HeartAttack)
           Float IntoxicationCheck05 = PlayerRef.Getvalue(Intoxication_ParanoidTreatment)
           Float IntoxicationCheck06 = PlayerRef.Getvalue(Intoxication_StimulantsAddiction)
           Float IntoxicationCheck07 = PlayerRef.Getvalue(Intoxication_Obesity)
           
		   IntoxicationChecker.show(IntoxicationCheck01, IntoxicationCheck02, IntoxicationCheck03, IntoxicationCheck04, IntoxicationCheck05, IntoxicationCheck06, 0.0, 0.0, 0.0)

EndFunction

Event OnTimer(int aiTimerID)
	 	  	      
      	     If (aiTimerID == 0)       
                
				PlayerRef.EquipItem(AddPotionCureJunkFlush, 1, True)
      	 
		 ElseIf (aiTimerID == 1)       

                Float ToxicityCheck01 = PlayerRef.Getvalue(Intoxication_Alcoholism)
				Float ToxicityCheck02 = PlayerRef.Getvalue(Intoxication_Caffeinophagia)
				Float ToxicityCheck03 = PlayerRef.Getvalue(Intoxication_CognitiveDissolution)
				Float ToxicityCheck04 = PlayerRef.Getvalue(Intoxication_HeartAttack)
				Float ToxicityCheck05 = PlayerRef.Getvalue(Intoxication_ParanoidTreatment)
				Float ToxicityCheck06 = PlayerRef.Getvalue(Intoxication_StimulantsAddiction)
				Float ToxicityCheck07 = PlayerRef.Getvalue(Intoxication_Obesity)
                
				Float Duration = AddichroneTimeRestoration.GetValue()
                Float Restore = AddichroneRestoration.GetValue()

                       If ToxicityCheck01 <= 0 && ToxicityCheck02 <= 0 && ToxicityCheck03 <= 0 && ToxicityCheck04 <= 0 && ToxicityCheck05 <= 0 && ToxicityCheck06 <= 0 && ToxicityCheck07 <= 0
                          IntoxicationChecker()
                          CancelTimer(1)
				   Else
					      PlayerRef.damagevalue(Intoxication_Alcoholism, Restore)
						  PlayerRef.damagevalue(Intoxication_Caffeinophagia, Restore)
						  PlayerRef.damagevalue(Intoxication_CognitiveDissolution, Restore)
						  PlayerRef.damagevalue(Intoxication_HeartAttack, Restore)
						  PlayerRef.damagevalue(Intoxication_ParanoidTreatment, Restore)
						  PlayerRef.damagevalue(Intoxication_StimulantsAddiction, Restore)																																				  
						  PlayerRef.damagevalue(Intoxication_Obesity, Restore)	
			              StartTimer(Duration, 1)
                    EndIf	  
		  EndIf
EndEvent

Event Actor.OnItemEquipped(Actor akSender, Form akBaseObject, ObjectReference akReference)

			    If GV_BasicNeedsToggle.GetValue() == 1
		                Float LocationRestrict = LocationCheck()  			
                        If LocationRestrict == 0.0 && akBaseObject.Haskeyword(KWD_FoodDrinkAlc)
				           Return
			         EndIf
		     EndIf
		   	
                If PlayerRef.HasMagicEffect(AddichroneSuppression) == False
                        If AddictionItems_AlcoholismTrigger.Find(akBaseObject) != -1 && AddictionToggleAlcoholism.GetValue() == 1
						   IntoxicationPoints(Intoxication_Alcoholism, PotionAddictionAlcoholism, IntoxicationCheckerALCO, 1.0)
                    ElseIf AddictionItems_CaffeinophagiaTrigger.Find(akBaseObject) != -1 && AddictionToggleCaffeinophagia.GetValue() == 1
                           IntoxicationPoints(Intoxication_Caffeinophagia, PotionAddictionCaffeinophagia, IntoxicationCheckerCAFF, 1.0)
                    ElseIf AddictionItems_CognitiveDissolutionTrigger.Find(akBaseObject) != -1 && AddictionToggleCognitiveDissolution.GetValue() == 1
                           IntoxicationPoints(Intoxication_CognitiveDissolution, PotionAddictionCognitiveDissolution, IntoxicationCheckerCOGN, 1.0)
                    ElseIf AddictionItems_HeartAttackTrigger.Find(akBaseObject) != -1 && AddictionToggleHeartAttack.GetValue() == 1
                           IntoxicationPoints(Intoxication_HeartAttack, PotionAddictionHeartAttack, IntoxicationCheckerTACH, 1.0)
                    ElseIf AddictionItems_ParanoidTreatmentTrigger.Find(akBaseObject) != -1 && AddictionToggleParanoidTreatment.GetValue() == 1
                           IntoxicationPoints(Intoxication_ParanoidTreatment, PotionAddictionParanoidTreatment, IntoxicationCheckerPHLG, 1.0)
                    ElseIf AddictionItems_StimulantsAddictionTrigger.Find(akBaseObject) != -1 && AddictionToggleStimulants.GetValue() == 1
                           IntoxicationPoints(Intoxication_StimulantsAddiction, PotionAddictionStimulantsAddiction, IntoxicationCheckerODST, 1.0)
                    ElseIf AddictionItems_ObesityAddictionTrigger.Find(akBaseObject) != -1 && AddictionToggleObesity.GetValue() == 1
                           IntoxicationPoints(Intoxication_Obesity, PotionAddictionObesity, IntoxicationCheckerHCAL, 2.0)
                     EndIf
             EndIf

                If AddictionItems_ObesityAddictionRemover.Find(akBaseObject) != -1
                   IntoxicationRemove(Intoxication_Alcoholism, Intoxication_Caffeinophagia, Intoxication_CognitiveDissolution, Intoxication_HeartAttack, Intoxication_ParanoidTreatment, Intoxication_StimulantsAddiction, Intoxication_Obesity)
                        If ConditionFormWellnessRank4.IsTrue(PlayerRef, None)
						   Int Chance = Utility.RandomInt(1, 100)
			               If Chance <= 5
			                  If PlayerRef.GetValue(Intoxication_AddictionCount) > 0
								 Int I = 0
							     While I < 1                                      
									   Int DiceRoll = Utility.RandomInt(0, 6)
									   If DiceRoll == 0
                                               If PlayerRef.HasMagicEffect(AlcoholismCheck)
                                                  CureRandomAddiction(AddictionAlcoholismSpell, Intoxication_Alcoholism, SFX_AddictionCure, MSG_NotifyCureAlcoholism)
												  i += 1
                                            EndIf  
								   ElseIf DiceRoll == 1
											   If PlayerRef.HasMagicEffect(CaffeinophagiaCheck)							               
                                                  CureRandomAddiction(AddictionCaffeinophagiaSpell, Intoxication_Caffeinophagia, SFX_AddictionCure, MSG_NotifyCureCaffeinophagia)
                                                  i += 1
                                            EndIf  
								   ElseIf DiceRoll == 2
                                               If PlayerRef.HasMagicEffect(CognitiveDissolutionCheck)
                                                  CureRandomAddiction(AddictionCognitiveDisSpell, Intoxication_CognitiveDissolution, SFX_AddictionCure, MSG_NotifyCureCognitiveDis)
                                                  i += 1
                                            EndIf  
								   ElseIf DiceRoll == 3
                                               If PlayerRef.HasMagicEffect(HeartAttackCheck)
                                                  CureRandomAddiction(AddictionHeartAttackSpell, Intoxication_HeartAttack, SFX_AddictionCure, MSG_NotifyCureHeartAttack)
                                                  i += 1
                                            EndIf  
								   ElseIf DiceRoll == 4
                                               If PlayerRef.HasMagicEffect(HyperCaloricCheck)
                                                  CureRandomAddiction(AddictionHypercaloricSpell, Intoxication_Obesity, SFX_AddictionCure, MSG_NotifyCureHypercaloric)
                                                  i += 1
                                            EndIf  
								   ElseIf DiceRoll == 5
                                               If PlayerRef.HasMagicEffect(ParanoidHealingCheck)
                                                  CureRandomAddiction(AddictionParanoidTreatmentSpell, Intoxication_ParanoidTreatment, SFX_AddictionCure, MSG_NotifyCureParanoidTreatment)
                                                  i += 1
                                            EndIf  
								   ElseIf DiceRoll == 6
                                               If PlayerRef.HasMagicEffect(StimulantsCheck)
                                                  CureRandomAddiction(AddictionStimulantsSpell, Intoxication_StimulantsAddiction, SFX_AddictionCure, MSG_NotifyCureStimulants)
                                                  i += 1
                                            EndIf  
							        EndIf
							     EndWhile			                      
			               EndIf
                       EndIf
                    EndIf
			 EndIf

EndEvent

Function CureRandomAddiction(Spell AddictionEffect, ActorValue AddictionAV, wwiseevent SFX, Message MSGNotify)
         MSGNotify.Show()
		 PlayerRef.RemoveSpell(AddictionEffect)
         PlayerRef.Damagevalue(AddictionAV, 999)
		 SFX.Play(PlayerRef)
EndFunction

Function IntoxicationPoints(ActorValue IntoxicationType, Potion Addiction, Message MSG, Float Divide)
		          
				 Float ToxicCalculator = IntoxicationCalculator()			           
				 Int ToxicCalculatorChance = IntoxicationChanceCalculator()				      
                 
				 Float MinDMG = (IntoxicationMinDMG.GetValue() / ToxicCalculator)	
                 Float MaxDMG = (IntoxicationMaxDMG.GetValue() / ToxicCalculator)
                 Float RandomDMG = Utility.RandomFloat(MinDMG / Divide, MaxDMG / Divide)

			     PlayerRef.RestoreValue(IntoxicationType, RandomDMG)
 			  
			     If PlayerRef.Getvalue(IntoxicationType) > 90			  
                    ApplyAddiction(60 / ToxicCalculatorChance, Addiction)
			 ElseIf PlayerRef.Getvalue(IntoxicationType) > 70 && PlayerRef.Getvalue(IntoxicationType) <= 90 			  
                    ApplyAddiction(30 / ToxicCalculatorChance, Addiction)
			 ElseIf PlayerRef.Getvalue(IntoxicationType) > 50 && PlayerRef.Getvalue(IntoxicationType) <= 70 			  
                    ApplyAddiction(15 / ToxicCalculatorChance, Addiction)
			 ElseIf PlayerRef.Getvalue(IntoxicationType) > 30 && PlayerRef.Getvalue(IntoxicationType) <= 50 			  
                    ApplyAddiction(5 / ToxicCalculatorChance, Addiction)
			  EndIf

             Float IntoxicationCheck01 = PlayerRef.Getvalue(Intoxication_Alcoholism)
             Float IntoxicationCheck02 = PlayerRef.Getvalue(Intoxication_Caffeinophagia)
             Float IntoxicationCheck03 = PlayerRef.Getvalue(Intoxication_CognitiveDissolution)
             Float IntoxicationCheck04 = PlayerRef.Getvalue(Intoxication_HeartAttack)
             Float IntoxicationCheck05 = PlayerRef.Getvalue(Intoxication_ParanoidTreatment)
             Float IntoxicationCheck06 = PlayerRef.Getvalue(Intoxication_StimulantsAddiction)
             Float IntoxicationCheck07 = PlayerRef.Getvalue(Intoxication_Obesity)
   
             If NeedsCheckerAfterConsumptionNotifier.GetValue() == 1
                MSG.show(PlayerRef.Getvalue(IntoxicationType))	
          EndIf

EndFunction

Function ApplyAddiction(Int AddictionChance, Potion Addiction)
		 Int RandomChance = Utility.RandomInt(1, 100)
         If RandomChance <= AddictionChance
            PlayerRef.EquipItem(Addiction, 1, True)
      EndIf
EndFunction

Function IntoxicationRemove(ActorValue IntoxicationType1, ActorValue IntoxicationType2, ActorValue IntoxicationType3, ActorValue IntoxicationType4, ActorValue IntoxicationType5, ActorValue IntoxicationType6, ActorValue IntoxicationType7)
				 
				 Float ToxicCalculator = IntoxicationCalculatorRemover()			          	          				 
				 Int ToxicCalculatorChance = IntoxicationCalculatorRemoverChance() as Int
				 
				 Int Chance = Utility.RandomInt(1, 100)			      
                 Float MinDMG = (IntoxicationMinDMGHealthy.GetValue() + ToxicCalculator)	
                 Float MaxDMG = (IntoxicationMaxDMGHealthy.GetValue() + ToxicCalculator)	
                 Float RandomDMG = Utility.RandomFloat(MinDMG, MaxDMG)
				 
				 If Chance <= ToxicCalculatorChance
                        If PlayerRef.GetValue(IntoxicationType1) <= 70
				           PlayerRef.DamageValue(IntoxicationType1, RandomDMG)
				     EndIf
                        If PlayerRef.GetValue(IntoxicationType2) <= 70					
					       PlayerRef.DamageValue(IntoxicationType2, RandomDMG)
				     EndIf
                        If PlayerRef.GetValue(IntoxicationType3) <= 70	
					       PlayerRef.DamageValue(IntoxicationType3, RandomDMG)
				     EndIf
                        If PlayerRef.GetValue(IntoxicationType4) <= 70	
					       PlayerRef.DamageValue(IntoxicationType4, RandomDMG)
				     EndIf
                        If PlayerRef.GetValue(IntoxicationType5) <= 70	
					       PlayerRef.DamageValue(IntoxicationType5, RandomDMG)
				     EndIf
                        If PlayerRef.GetValue(IntoxicationType6) <= 70	
					       PlayerRef.DamageValue(IntoxicationType6, RandomDMG)
				     EndIf
                        If PlayerRef.GetValue(IntoxicationType7) <= 70	
					       PlayerRef.DamageValue(IntoxicationType7, RandomDMG)
					 EndIf
					 IntoxicationMessagingSystemAfterConsumption() 
              EndIf

EndFunction

Function IntoxicationRestoreJunkFlush()

        Float Restore01 = PlayerRef.GetValue(Intoxication_Alcoholism)
		Float Restore02 = PlayerRef.GetValue(Intoxication_Caffeinophagia)
	    Float Restore03 = PlayerRef.GetValue(Intoxication_CognitiveDissolution)
		Float Restore04 = PlayerRef.GetValue(Intoxication_HeartAttack)
		Float Restore05 = PlayerRef.GetValue(Intoxication_ParanoidTreatment)
		Float Restore06 = PlayerRef.GetValue(Intoxication_StimulantsAddiction)
		Float Restore07 = PlayerRef.GetValue(Intoxication_Obesity)

		If PlayerRef.Getvalue(Intoxication_Alcoholism) > 0 && PlayerRef.HasMagicEffect(AlcoholismCheck)
           PlayerRef.Damagevalue(Intoxication_Alcoholism, Restore01)
     EndIf

		If PlayerRef.Getvalue(Intoxication_Caffeinophagia) > 0 && PlayerRef.HasMagicEffect(CaffeinophagiaCheck)
           PlayerRef.Damagevalue(Intoxication_Caffeinophagia, Restore02)
     EndIf

		If PlayerRef.Getvalue(Intoxication_CognitiveDissolution) > 0 && PlayerRef.HasMagicEffect(CognitiveDissolutionCheck)
           PlayerRef.Damagevalue(Intoxication_CognitiveDissolution, Restore03)
     EndIf

		If PlayerRef.Getvalue(Intoxication_HeartAttack) > 0 && PlayerRef.HasMagicEffect(HeartAttackCheck)
           PlayerRef.Damagevalue(Intoxication_HeartAttack, Restore04)
     EndIf

		If PlayerRef.Getvalue(Intoxication_ParanoidTreatment) > 0 && PlayerRef.HasMagicEffect(ParanoidHealingCheck)
           PlayerRef.Damagevalue(Intoxication_ParanoidTreatment, Restore05)
     EndIf

		If PlayerRef.Getvalue(Intoxication_StimulantsAddiction) > 0 && PlayerRef.HasMagicEffect(StimulantsCheck)
           PlayerRef.Damagevalue(Intoxication_StimulantsAddiction, Restore06)
     EndIf

		If PlayerRef.Getvalue(Intoxication_Obesity) > 0 && PlayerRef.HasMagicEffect(HyperCaloricCheck)
           PlayerRef.Damagevalue(Intoxication_Obesity, Restore07)
     EndIf
     
	    If PlayerRef.GetValuePercentage(Health) < 0.2
	       PlayerRef.DamageValue(Health, 999999)	 
	 Else
	       Float DMGHealth = PlayerRef.GetValue(Health) * 0.70
	       PlayerRef.DamageValue(Health, DMGHealth)
     EndIf
	 
	 JunkFlushCureAddictionsSpell.Cast(PlayerRef, PlayerRef)

EndFunction

Function IntoxicationRestoreMedic()

         Float Restore01 = PlayerRef.GetValue(Intoxication_Alcoholism)
		 Float Restore02 = PlayerRef.GetValue(Intoxication_Caffeinophagia)
	     Float Restore03 = PlayerRef.GetValue(Intoxication_CognitiveDissolution)
		 Float Restore04 = PlayerRef.GetValue(Intoxication_HeartAttack)
		 Float Restore05 = PlayerRef.GetValue(Intoxication_ParanoidTreatment)
		 Float Restore06 = PlayerRef.GetValue(Intoxication_StimulantsAddiction)
		 Float Restore07 = PlayerRef.GetValue(Intoxication_Obesity)

         PlayerRef.Damagevalue(Intoxication_Alcoholism, Restore01)
         PlayerRef.Damagevalue(Intoxication_Caffeinophagia, Restore02)
         PlayerRef.Damagevalue(Intoxication_CognitiveDissolution, Restore03)
         PlayerRef.Damagevalue(Intoxication_HeartAttack, Restore04)
         PlayerRef.Damagevalue(Intoxication_ParanoidTreatment, Restore05)
         PlayerRef.Damagevalue(Intoxication_StimulantsAddiction, Restore06)
         PlayerRef.Damagevalue(Intoxication_Obesity, Restore07)

EndFunction

Int Function IntoxicationChanceCalculator()
	  
	  Int PainToleranceRank0 = 1      
	  Int PainToleranceRank1 = 2
	  Int PainToleranceRank2 = 3      
	  Int PainToleranceRank3 = 4 
	  Int PainToleranceRank4 = 5
      
		If ConditionFormPainToleranceRank4.IsTrue(PlayerRef, None)    
		   Return PainToleranceRank4 
	ElseIf ConditionFormPainToleranceRank3.IsTrue(PlayerRef, None)  
	       Return PainToleranceRank3
	ElseIf ConditionFormPainToleranceRank2.IsTrue(PlayerRef, None)  	 
           Return PainToleranceRank2
	ElseIf ConditionFormPainToleranceRank1.IsTrue(PlayerRef, None) 
           Return PainToleranceRank1 
Else	
           Return PainToleranceRank0
     EndIf

EndFunction

Float Function IntoxicationCalculator()
	  
	  Float PainToleranceRank0 = 1.00      
	  Float PainToleranceRank1 = 1.25
	  Float PainToleranceRank2 = 1.50      
	  Float PainToleranceRank3 = 1.70 
	  Float PainToleranceRank4 = 2.00
      
		If ConditionFormPainToleranceRank4.IsTrue(PlayerRef, None)    
		   Return PainToleranceRank4 
	ElseIf ConditionFormPainToleranceRank3.IsTrue(PlayerRef, None)  
	       Return PainToleranceRank3
	ElseIf ConditionFormPainToleranceRank2.IsTrue(PlayerRef, None)  	 
           Return PainToleranceRank2
	ElseIf ConditionFormPainToleranceRank1.IsTrue(PlayerRef, None) 
           Return PainToleranceRank1 
Else	
           Return PainToleranceRank0
     EndIf

EndFunction

Float Function IntoxicationCalculatorRemover()
	  
	  Float WellnessRank0 = 0.0      
	  Float WellnessRank1 = 1.0
	  Float WellnessRank2 = 2.0      
	  Float WellnessRank3 = 3.0 
       
	    If ConditionFormWellnessRank3.IsTrue(PlayerRef, None)  
	       Return WellnessRank3
	ElseIf ConditionFormWellnessRank2.IsTrue(PlayerRef, None)  	 
           Return WellnessRank2
	ElseIf ConditionFormWellnessRank1.IsTrue(PlayerRef, None) 
           Return WellnessRank1 
Else	
           Return WellnessRank0
     EndIf

EndFunction

Float Function IntoxicationCalculatorRemoverChance()
	  
	  Int WellnessRank0Chance = 15      
	  Int WellnessRank1Chance = 20
	  Int WellnessRank2Chance = 25      
	  Int WellnessRank3Chance = 30 
      
	    If ConditionFormWellnessRank3.IsTrue(PlayerRef, None)  
	       Return WellnessRank3Chance
	ElseIf ConditionFormWellnessRank2.IsTrue(PlayerRef, None)  	 
           Return WellnessRank2Chance
	ElseIf ConditionFormWellnessRank1.IsTrue(PlayerRef, None) 
           Return WellnessRank1Chance 
Else	
           Return WellnessRank0Chance
     EndIf

EndFunction

Float Function LocationCheck()

      Float LocationOn = 0.0
      Float LocationOff = 1.0

          If ConditionFormSuppressFoodEffects.IsTrue(PlayerRef, None)  
		     return LocationOn
       Else
			 return LocationOff   
       EndIf

EndFunction

Function IntoxicationMessagingSystemAfterConsumption()

           Float IntoxicationCheck01 = PlayerRef.Getvalue(Intoxication_Alcoholism)
           Float IntoxicationCheck02 = PlayerRef.Getvalue(Intoxication_Caffeinophagia)
           Float IntoxicationCheck03 = PlayerRef.Getvalue(Intoxication_CognitiveDissolution)
           Float IntoxicationCheck04 = PlayerRef.Getvalue(Intoxication_HeartAttack)
           Float IntoxicationCheck05 = PlayerRef.Getvalue(Intoxication_ParanoidTreatment)
           Float IntoxicationCheck06 = PlayerRef.Getvalue(Intoxication_StimulantsAddiction)
           Float IntoxicationCheck07 = PlayerRef.Getvalue(Intoxication_Obesity)
   
         If NeedsCheckerAfterConsumptionNotifier.GetValue() == 1
            IntoxicationChecker.show(IntoxicationCheck01, IntoxicationCheck02, IntoxicationCheck03, IntoxicationCheck04, IntoxicationCheck05, IntoxicationCheck06, IntoxicationCheck07, 0.0, 0.0)	
      EndIf

EndFunction

Function AddictionCure()

        Float CureTimerJunkFlush = AddictionCureTimerJunkFlush.Getvalue()

        If PlayerRef.HasMagicEffect(AddictionCureJunkFlush) == True         
	       StartTimer(CureTimerJunkFlush, 0)	 
	 EndIf	

EndFunction

Function AddichroneRestoration()
		 StartTimer(0, 1)
EndFunction

Function AddichroneRestorationCancel()
         CancelTimer(1)
EndFunction

Function Update()		 
		 If PlayerRef.HasSpell(IntoxicationWarningSpell)
		    PlayerRef.RemoveSpell(IntoxicationWarningSpell) 
            Utility.Wait(0.5)	
           	PlayerRef.AddSpell(IntoxicationWarningSpell, False)  
      EndIf
      PlayerRef.DamageValue(Intoxication_Obesity, 999) 
	  RegisterForActorValueChangedEvent(PlayerRef, Intoxication_Alcoholism)
	  RegisterForActorValueChangedEvent(PlayerRef, Intoxication_Caffeinophagia)
	  RegisterForActorValueChangedEvent(PlayerRef, Intoxication_CognitiveDissolution)
	  RegisterForActorValueChangedEvent(PlayerRef, Intoxication_HeartAttack)
	  RegisterForActorValueChangedEvent(PlayerRef, Intoxication_ParanoidTreatment)
	  RegisterForActorValueChangedEvent(PlayerRef, Intoxication_StimulantsAddiction)
	  RegisterForActorValueChangedEvent(PlayerRef, Intoxication_Obesity)
EndFunction