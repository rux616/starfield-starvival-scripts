ScriptName SISA_EnviHazardsQuest extends Quest

Group SISAActors
    Actor Property PlayerRef Auto Const
EndGroup

Group SISAActorValues
    ActorValue Property Soak Auto Const
    ActorValue Property AV_Thermal Auto Const
	ActorValue Property AV_Airborne Auto Const
	ActorValue Property AV_Corrosive Auto Const
	ActorValue Property AV_Radiation Auto Const
    ActorValue Property AV_AdaptiveThermal Auto Const
	ActorValue Property AV_AdaptiveAirborne Auto Const
	ActorValue Property AV_AdaptiveCorrosive Auto Const
	ActorValue Property AV_AdaptiveRadiation Auto Const
EndGroup

Group SISAGlobalVariables
    GlobalVariable Property AEGBlock Auto Const
    GlobalVariable Property AEGResistance Auto Const
    GlobalVariable Property EnviHazardsMagnetosphere Auto Const
    GlobalVariable Property EnviHazardsAtmoPressure Auto Const
    GlobalVariable Property EnviHazardsSoakDamage01 Auto Const
    GlobalVariable Property EnviHazardsSoakDamage02 Auto Const
    GlobalVariable Property EnviHazardsSoakDamage03 Auto Const
    GlobalVariable Property EnviHazardsSoakDamage04 Auto Const
    GlobalVariable Property EnviHazardsSoakENVDamage01 Auto Const
    GlobalVariable Property EnviHazardsSoakENVDamage02 Auto Const
    GlobalVariable Property EnviHazardsSoakENVDamage03 Auto Const
    GlobalVariable Property EnviHazardsSoakENVDamage04 Auto Const
    GlobalVariable Property EnviHazardsWeatherDamage01 Auto Const
    GlobalVariable Property EnviHazardsWeatherDamage02 Auto Const
    GlobalVariable Property EnviHazardsWeatherDamage03 Auto Const
    GlobalVariable Property EnviHazardsWeatherDamage04 Auto Const
    GlobalVariable Property EnviHazardsWeatherENVDamage01 Auto Const
    GlobalVariable Property EnviHazardsWeatherENVDamage02 Auto Const
    GlobalVariable Property EnviHazardsWeatherENVDamage03 Auto Const
    GlobalVariable Property EnviHazardsWeatherENVDamage04 Auto Const
    GlobalVariable Property EnviHazardsHazardDamage Auto Const
    GlobalVariable Property EnviHazardsHazardENVDamage Auto Const
    GlobalVariable Property EnviHazardsRestoreSoak Auto Const
    GlobalVariable Property EnviHazardsHullBreachHazard Auto Const
    GlobalVariable Property EnviHazardsPeriodicChanceExtremeHigh Auto Const
    GlobalVariable Property EnviHazardsPeriodicChanceStandard Auto Const
    GlobalVariable Property EnviHazardsPeriodicChanceWater Auto Const
    GlobalVariable Property EnviHazardsPeriodicChanceWeather Auto Const
    GlobalVariable Property EnviHazardsIntervalWater Auto Const
    GlobalVariable Property EnviHazardsIntervalWeather Auto Const
    GlobalVariable Property EnviHazardsMagnetPeriodChance Auto Const
    GlobalVariable Property EnviHazardsMagnetPeriodInterval Auto Const
    GlobalVariable Property GV_EnviHazardsRegenToggle Auto Const
    GlobalVariable Property GV_EnviHazards_SoakWater Auto Const
    GlobalVariable Property GV_EnviHazards_SoakLava Auto Const
    GlobalVariable Property GV_EnviHazards_EnvironmentalDMGWater Auto Const
    GlobalVariable Property GV_EnviHazards_EnvironmentalDMGLava Auto Const
    GlobalVariable Property GV_EnviHazards_AgrophonicActive Auto Const
    GlobalVariable Property GV_EnviHazards_TempestActive Auto Const
    GlobalVariable Property GV_EnviHazards_CycleActive Auto Const
    GlobalVariable Property GV_EnviHazards_SolarActive Auto Const
    GlobalVariable Property GV_EnviHazards_BlazeActive Auto Const
    GlobalVariable Property GV_EnviHazards_PermafrostActive Auto Const
    GlobalVariable Property GV_EnviHazards_AnomalyActive Auto Const
    GlobalVariable Property GV_PercentageTracker_SOAK Auto Const
    GlobalVariable Property GV_PercentageTracker_ESPSAirborne Auto Const
    GlobalVariable Property GV_PercentageTracker_ESPSCorrosive Auto Const
    GlobalVariable Property GV_PercentageTracker_ESPSRadiation Auto Const
    GlobalVariable Property GV_PercentageTracker_ESPSThermal Auto Const
    GlobalVariable Property GV_ProtectionToggle Auto Const
    GlobalVariable Property GV_SOAKAutoRegenRestricterToggle Auto Const
EndGroup

Group SISAMessages
    Message Property MSGAEGRecharged Auto Const
    Message Property MSG_AdapterEnergyCheck Auto Const
EndGroup

Group SISASpells
    Spell Property ENVSystem_PlanetaryEffects Auto Const
    Spell Property ENVSystem_Extreme_Cold Auto Const
    Spell Property ENVSystem_Extreme_Corrosive Auto Const 
    Spell Property ENVSystem_Extreme_Heat Auto Const 
    Spell Property ENVSystem_Extreme_SolarRad Auto Const 
    Spell Property ENVSystem_Extreme_Toxic Auto Const 
    Spell Property ENVSystem_Water_Cold Auto Const
    Spell Property ENVSystem_Water_Corrosive Auto Const 
    Spell Property ENVSystem_Water_Heat Auto Const 
    Spell Property ENVSystem_Water_HeavyMetal Auto Const 
    Spell Property ENVSystem_Water_Microbial Auto Const 
    Spell Property ENVSystem_Water_Radioactive Auto Const 
    Spell Property ENVSystem_ProtectionRegen Auto Const 
    Spell Property ENVSystem_EnvironmentalRegen Auto Const 
    Spell Property ENVSystem_OxygenAdjustment Auto Const 
    Spell Property ENVSystem_AtmoPressure Auto Const 
    Spell Property ENVSystem_Magnetosphere Auto Const

    Spell Property ENVSystem_MagnetosphereExtreme Auto Const
    Spell Property ENVSystem_MagnetosphereMassive Auto Const
    Spell Property ENVSystem_MagnetospherePowerfull Auto Const
    Spell Property ENVSystem_MagnetosphereStrong Auto Const
    Spell Property ENVSystem_MagnetosphereVeryStrong Auto Const
    Spell Property ENVSystem_MagnetosphereNone Auto Const
    Spell Property ENVSystem_MagnetosphereVeryWeak Auto Const
    Spell Property ENVSystem_MagnetosphereWeak Auto Const

    Spell Property ENVSystem_WeatherAnomalies Auto Const 
    Spell Property ENVSystem_SolarFlare Auto Const
    Spell Property ENVSystem_SolarFlareEMPDMG Auto Const
    Spell Property ENVSystem_SolarFlareIncoming Auto Const
    Spell Property ENVSystem_Permafrost Auto Const
    Spell Property ENVSystem_PermafrostColdDMG Auto Const
    Spell Property ENVSystem_PermafrostIncoming Auto Const
    Spell Property ENVSystem_Blaze Auto Const
    Spell Property ENVSystem_BlazeFireDMG Auto Const
    Spell Property ENVSystem_BlazeIncoming Auto Const
    Spell Property EnviHazardsDialogueProtectionSpell Auto Const
    Spell Property AEGSystemSpell Auto Const
    Spell Property ENVSystem_AdaptiveThermalSpell Auto Const
    Spell Property ENVSystem_AdaptiveRadiationSpell Auto Const
    Spell Property ENVSystem_AdaptiveAirborneSpell Auto Const
    Spell Property ENVSystem_AdaptiveCorrosiveSpell Auto Const
    Spell Property ENVSystem_VisualFXSpell Auto Const
    Spell Property ENVSystem_AdaptiveDomeFXSpell Auto Const
    Spell Property ENVSystem_AdaptiveMessagingSpell Auto Const
EndGroup

Group SISAExplosions
    Explosion Property AEGExplosionFX Auto Const
EndGroup

Group SISAWwise
    wwiseevent Property SoundFX_AEGShield Auto Const
EndGroup

Group SISAEffectShaders
    Effectshader Property AEGShield Auto Const Mandatory
    Effectshader Property AEGShield02 Auto Const Mandatory
EndGroup

Group SISAWeathers
    Weather Property Weather_Agro01 Auto Const Mandatory
    Weather Property Weather_Agro02 Auto Const Mandatory
    Weather Property Weather_Tempest Auto Const Mandatory
    Weather Property Weather_Cycle Auto Const Mandatory
EndGroup

Int AEGShieldSoundInstance = -1

Function EnviHazardsStart()
		 PercentageTracker()
		 PrepareAVAndRegisterValues()
		 EnviHazardsUpdateGlobals()
         RefreshEnvironmentSystem()
EndFunction

Function EnviHazardsStop()
	     EnviHazardsUpdateGlobalsToVanilla()
	     RefreshEnvironmentSystemOnUninstall()
EndFunction

Event OnActorValueChanged(ObjectReference akObjRef, ActorValue akActorValue)    
	   
	   If akObjRef == PlayerRef && akActorValue == AV_AdaptiveAirborne
	      RegisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveAirborne)
          GV_PercentageTracker_ESPSAirborne.SetValue(PlayerRef.GetValue(AV_AdaptiveAirborne))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_AdaptiveCorrosive
	      RegisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveCorrosive)
          GV_PercentageTracker_ESPSCorrosive.SetValue(PlayerRef.GetValue(AV_AdaptiveCorrosive))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_AdaptiveRadiation
	      RegisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveRadiation)
          GV_PercentageTracker_ESPSRadiation.SetValue(PlayerRef.GetValue(AV_AdaptiveRadiation))
   ElseIf akObjRef == PlayerRef && akActorValue == AV_AdaptiveThermal
	      RegisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveThermal)
          GV_PercentageTracker_ESPSThermal.SetValue(PlayerRef.GetValue(AV_AdaptiveThermal))
    EndIf

EndEvent

Function PercentageTracker()        		 
         GV_PercentageTracker_SOAK.SetValue(PlayerRef.GetValue(Soak))
         GV_PercentageTracker_ESPSAirborne.SetValue(PlayerRef.GetValue(AV_AdaptiveAirborne))
         GV_PercentageTracker_ESPSCorrosive.SetValue(PlayerRef.GetValue(AV_AdaptiveCorrosive))
         GV_PercentageTracker_ESPSRadiation.SetValue(PlayerRef.GetValue(AV_AdaptiveRadiation))
         GV_PercentageTracker_ESPSThermal.SetValue(PlayerRef.GetValue(AV_AdaptiveThermal))
EndFunction

Function PrepareAVAndRegisterValues()        		 
         
		 PlayerRef.DamageValue(AV_AdaptiveThermal, 999)
         PlayerRef.DamageValue(AV_AdaptiveAirborne, 999)
         PlayerRef.DamageValue(AV_AdaptiveCorrosive, 999)
         PlayerRef.DamageValue(AV_AdaptiveRadiation, 999)
		 PlayerRef.RestoreValue(AV_AdaptiveCorrosive, 999)
		 PlayerRef.RestoreValue(AV_AdaptiveRadiation, 999)
		 PlayerRef.RestoreValue(AV_AdaptiveThermal, 999)
		 PlayerRef.RestoreValue(AV_AdaptiveAirborne, 999)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveAirborne)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveCorrosive)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveRadiation)
	     RegisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveThermal)

EndFunction

Function EnviHazardsUpdateGlobals()
         
         EnviHazardsSoakDamage01.Setvalue(0.65)
         EnviHazardsSoakDamage02.Setvalue(0.33)
         EnviHazardsSoakDamage03.Setvalue(0.24)
         EnviHazardsSoakDamage04.Setvalue(0.18)		 
         EnviHazardsSoakENVDamage01.Setvalue(3.8)
         EnviHazardsSoakENVDamage02.Setvalue(2.12)
         EnviHazardsSoakENVDamage03.Setvalue(1.56)
         EnviHazardsSoakENVDamage04.Setvalue(1.32)	
         EnviHazardsWeatherDamage01.Setvalue(2.03)
         EnviHazardsWeatherDamage02.Setvalue(1.05)
         EnviHazardsWeatherDamage03.Setvalue(0.66)
         EnviHazardsWeatherDamage04.Setvalue(0.48)	
         EnviHazardsWeatherENVDamage01.Setvalue(0.91)
         EnviHazardsWeatherENVDamage02.Setvalue(0.53)
         EnviHazardsWeatherENVDamage03.Setvalue(0.36)
         EnviHazardsWeatherENVDamage04.Setvalue(0.33)
         EnviHazardsHazardDamage.Setvalue(40.0)
         EnviHazardsHazardENVDamage.Setvalue(8.0)
         EnviHazardsRestoreSoak.Setvalue(0.5)
         EnviHazardsHullBreachHazard.Setvalue(1.2)
         EnviHazardsPeriodicChanceExtremeHigh.Setvalue(85.0)
         EnviHazardsPeriodicChanceStandard.Setvalue(25.0)
         EnviHazardsPeriodicChanceWater.Setvalue(25.0)
         EnviHazardsPeriodicChanceWeather.Setvalue(12.5)
         EnviHazardsIntervalWater.Setvalue(3.0)
         EnviHazardsIntervalWeather.Setvalue(25.0)
         GV_EnviHazards_SoakWater.Setvalue(20.0)
         GV_EnviHazards_SoakLava.Setvalue(500.0)
         GV_EnviHazards_EnvironmentalDMGWater.Setvalue(20.0)
         GV_EnviHazards_EnvironmentalDMGLava.Setvalue(60.0)
         GV_EnviHazards_AgrophonicActive.SetValue(0)
         GV_EnviHazards_TempestActive.SetValue(0)
         GV_EnviHazards_CycleActive.SetValue(0)
         GV_EnviHazards_SolarActive.SetValue(0)
         GV_EnviHazards_BlazeActive.SetValue(0)
         GV_EnviHazards_PermafrostActive.SetValue(0)
         GV_EnviHazards_AnomalyActive.SetValue(0)
		 GV_EnviHazardsRegenToggle.SetValue(0)

EndFunction

Function EnviHazardsUpdateGlobalsToVanilla()
	     
         EnviHazardsSoakDamage01.Setvalue(0.2381)
         EnviHazardsSoakDamage02.Setvalue(0.1333)
         EnviHazardsSoakDamage03.Setvalue(0.0996)
         EnviHazardsSoakDamage04.Setvalue(0.0836)		 
         EnviHazardsSoakENVDamage01.Setvalue(3.8)
         EnviHazardsSoakENVDamage02.Setvalue(2.12)
         EnviHazardsSoakENVDamage03.Setvalue(1.56)
         EnviHazardsSoakENVDamage04.Setvalue(1.32)	
         EnviHazardsWeatherDamage01.Setvalue(3.3333)
         EnviHazardsWeatherDamage02.Setvalue(1.8333)
         EnviHazardsWeatherDamage03.Setvalue(1.3333)
         EnviHazardsWeatherDamage04.Setvalue(1.1)	
         EnviHazardsWeatherENVDamage01.Setvalue(0.0)
         EnviHazardsWeatherENVDamage02.Setvalue(0.0)
         EnviHazardsWeatherENVDamage03.Setvalue(0.0)
         EnviHazardsWeatherENVDamage04.Setvalue(0.0)
         EnviHazardsHazardDamage.Setvalue(25.0)
         EnviHazardsHazardENVDamage.Setvalue(2.5)
         EnviHazardsRestoreSoak.Setvalue(5.0)
         EnviHazardsHullBreachHazard.Setvalue(0.8)
         EnviHazardsPeriodicChanceExtremeHigh.Setvalue(85.0)
         EnviHazardsPeriodicChanceStandard.Setvalue(25.0)
         EnviHazardsPeriodicChanceWater.Setvalue(25.0)
         EnviHazardsPeriodicChanceWeather.Setvalue(12.5)
         EnviHazardsIntervalWater.Setvalue(5.0)
         EnviHazardsIntervalWeather.Setvalue(30.0)
         GV_EnviHazards_SoakWater.Setvalue(10.0)
         GV_EnviHazards_SoakLava.Setvalue(300.0)
         GV_EnviHazards_EnvironmentalDMGWater.Setvalue(10.0)
         GV_EnviHazards_EnvironmentalDMGLava.Setvalue(40.0)
		 GV_EnviHazardsRegenToggle.SetValue(1)
         GV_SOAKAutoRegenRestricterToggle.SetValue(0)

EndFunction

Function RefreshEnvironmentSystem()

    If (PlayerRef.HasSpell(AEGSystemSpell))
        PlayerRef.RemoveSpell(AEGSystemSpell)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Extreme_Cold))
        PlayerRef.RemoveSpell(ENVSystem_Extreme_Cold)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Extreme_Corrosive))
        PlayerRef.RemoveSpell(ENVSystem_Extreme_Corrosive)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Extreme_Heat))
        PlayerRef.RemoveSpell(ENVSystem_Extreme_Heat)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Extreme_SolarRad))
        PlayerRef.RemoveSpell(ENVSystem_Extreme_SolarRad)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Extreme_Toxic))
        PlayerRef.RemoveSpell(ENVSystem_Extreme_Toxic)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Water_Cold))
        PlayerRef.RemoveSpell(ENVSystem_Water_Cold)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Water_Corrosive))
        PlayerRef.RemoveSpell(ENVSystem_Water_Corrosive)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Water_Heat))
        PlayerRef.RemoveSpell(ENVSystem_Water_Heat)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Water_HeavyMetal))
        PlayerRef.RemoveSpell(ENVSystem_Water_HeavyMetal)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Water_Microbial))
        PlayerRef.RemoveSpell(ENVSystem_Water_Microbial)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Water_Radioactive))
        PlayerRef.RemoveSpell(ENVSystem_Water_Radioactive)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_ProtectionRegen))
        PlayerRef.RemoveSpell(ENVSystem_ProtectionRegen)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_EnvironmentalRegen))
        PlayerRef.RemoveSpell(ENVSystem_EnvironmentalRegen)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_OxygenAdjustment))
        PlayerRef.RemoveSpell(ENVSystem_OxygenAdjustment)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_AtmoPressure))
        PlayerRef.RemoveSpell(ENVSystem_AtmoPressure)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Magnetosphere))
        PlayerRef.RemoveSpell(ENVSystem_Magnetosphere)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_MagnetosphereExtreme))
        PlayerRef.RemoveSpell(ENVSystem_MagnetosphereExtreme)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_MagnetosphereMassive))
        PlayerRef.RemoveSpell(ENVSystem_MagnetosphereMassive)
    EndIf
    
	If (PlayerRef.HasSpell(ENVSystem_MagnetospherePowerfull))
        PlayerRef.RemoveSpell(ENVSystem_MagnetospherePowerfull)
    EndIf
    
	If (PlayerRef.HasSpell(ENVSystem_MagnetosphereStrong))
        PlayerRef.RemoveSpell(ENVSystem_MagnetosphereStrong)
    EndIf
    
	If (PlayerRef.HasSpell(ENVSystem_MagnetosphereVeryStrong))
        PlayerRef.RemoveSpell(ENVSystem_MagnetosphereVeryStrong)
    EndIf
    
	If (PlayerRef.HasSpell(ENVSystem_MagnetosphereNone))
        PlayerRef.RemoveSpell(ENVSystem_MagnetosphereNone)
    EndIf
    
	If (PlayerRef.HasSpell(ENVSystem_MagnetosphereVeryWeak))
        PlayerRef.RemoveSpell(ENVSystem_MagnetosphereVeryWeak)
    EndIf
    
	If (PlayerRef.HasSpell(ENVSystem_MagnetosphereWeak))
        PlayerRef.RemoveSpell(ENVSystem_MagnetosphereWeak)
    EndIf	

    If (PlayerRef.HasSpell(ENVSystem_WeatherAnomalies))
        PlayerRef.RemoveSpell(ENVSystem_WeatherAnomalies)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_SolarFlare))
        PlayerRef.RemoveSpell(ENVSystem_SolarFlare)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_SolarFlareIncoming))
        PlayerRef.RemoveSpell(ENVSystem_SolarFlareIncoming)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Permafrost))
        PlayerRef.RemoveSpell(ENVSystem_Permafrost)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_PermafrostIncoming))
        PlayerRef.RemoveSpell(ENVSystem_PermafrostIncoming)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Blaze))
        PlayerRef.RemoveSpell(ENVSystem_Blaze)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_BlazeIncoming))
        PlayerRef.RemoveSpell(ENVSystem_BlazeIncoming)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_PlanetaryEffects))
        PlayerRef.RemoveSpell(ENVSystem_PlanetaryEffects)
    EndIf

    If (PlayerRef.HasSpell(EnviHazardsDialogueProtectionSpell))
        PlayerRef.RemoveSpell(EnviHazardsDialogueProtectionSpell)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_AdaptiveThermalSpell))
        PlayerRef.RemoveSpell(ENVSystem_AdaptiveThermalSpell)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_AdaptiveRadiationSpell))
        PlayerRef.RemoveSpell(ENVSystem_AdaptiveRadiationSpell)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_AdaptiveAirborneSpell))
        PlayerRef.RemoveSpell(ENVSystem_AdaptiveAirborneSpell)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_AdaptiveCorrosiveSpell))
        PlayerRef.RemoveSpell(ENVSystem_AdaptiveCorrosiveSpell)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_VisualFXSpell))
        PlayerRef.RemoveSpell(ENVSystem_VisualFXSpell)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_AdaptiveDomeFXSpell))
        PlayerRef.RemoveSpell(ENVSystem_AdaptiveDomeFXSpell)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_AdaptiveMessagingSpell))
        PlayerRef.RemoveSpell(ENVSystem_AdaptiveMessagingSpell)
    EndIf

	PlayerRef.DispelSpell(ENVSystem_SolarFlareEMPDMG)    
	PlayerRef.DispelSpell(ENVSystem_PermafrostColdDMG)  	
	PlayerRef.DispelSpell(ENVSystem_BlazeFireDMG) 
   
	Utility.Wait(1.0)    
	PlayerRef.AddSpell(ENVSystem_Extreme_Cold, False)
    PlayerRef.AddSpell(ENVSystem_Extreme_Corrosive, False)
    PlayerRef.AddSpell(ENVSystem_Extreme_Heat, False)
    PlayerRef.AddSpell(ENVSystem_Extreme_SolarRad, False)
    PlayerRef.AddSpell(ENVSystem_Extreme_Toxic, False)
	
	Utility.Wait(1.0)	
	PlayerRef.AddSpell(ENVSystem_Water_Cold, False)
    PlayerRef.AddSpell(ENVSystem_Water_Corrosive, False)
    PlayerRef.AddSpell(ENVSystem_Water_HeavyMetal, False)
    PlayerRef.AddSpell(ENVSystem_Water_Microbial, False)
    PlayerRef.AddSpell(ENVSystem_Water_Radioactive, False)
	
	Utility.Wait(1.0)	
    PlayerRef.AddSpell(ENVSystem_ProtectionRegen, False)
    PlayerRef.AddSpell(ENVSystem_EnvironmentalRegen, False)
    PlayerRef.AddSpell(ENVSystem_OxygenAdjustment, False)
    PlayerRef.AddSpell(ENVSystem_AtmoPressure, False)
    PlayerRef.AddSpell(ENVSystem_Magnetosphere, False)
	PlayerRef.AddSpell(ENVSystem_MagnetosphereExtreme, False)
    PlayerRef.AddSpell(ENVSystem_MagnetosphereMassive, False)
	PlayerRef.AddSpell(ENVSystem_MagnetospherePowerfull, False)
	PlayerRef.AddSpell(ENVSystem_MagnetosphereStrong, False)
	PlayerRef.AddSpell(ENVSystem_MagnetosphereVeryStrong, False)
	PlayerRef.AddSpell(ENVSystem_MagnetosphereNone, False)
	PlayerRef.AddSpell(ENVSystem_MagnetosphereVeryWeak, False)
	PlayerRef.AddSpell(ENVSystem_MagnetosphereWeak, False)	
    PlayerRef.AddSpell(ENVSystem_WeatherAnomalies, False)
    PlayerRef.AddSpell(ENVSystem_SolarFlare, False)
    PlayerRef.AddSpell(ENVSystem_Permafrost, False)
    PlayerRef.AddSpell(ENVSystem_Blaze, False)
    PlayerRef.AddSpell(ENVSystem_PlanetaryEffects, False)
    PlayerRef.AddSpell(EnviHazardsDialogueProtectionSpell, False)
    PlayerRef.AddSpell(AEGSystemSpell, False)

	Utility.Wait(1.0)
    PlayerRef.AddSpell(ENVSystem_AdaptiveThermalSpell, False)
    PlayerRef.AddSpell(ENVSystem_AdaptiveRadiationSpell, False)
    PlayerRef.AddSpell(ENVSystem_AdaptiveAirborneSpell, False)
    PlayerRef.AddSpell(ENVSystem_AdaptiveCorrosiveSpell, False)
    PlayerRef.AddSpell(ENVSystem_VisualFXSpell, False)
    PlayerRef.AddSpell(ENVSystem_AdaptiveDomeFXSpell, False)
    PlayerRef.AddSpell(ENVSystem_AdaptiveMessagingSpell, False)

EndFunction

Function RarePhenomenaStart()
          Utility.Wait(1.0)
		  PlayerRef.AddSpell(ENVSystem_WeatherAnomalies, False)
          PlayerRef.AddSpell(ENVSystem_SolarFlare, False)
          PlayerRef.AddSpell(ENVSystem_Permafrost, False)
          PlayerRef.AddSpell(ENVSystem_Blaze, False)
EndFunction

Function RarePhenomenaStop()
          Utility.Wait(1.0)
		  PlayerRef.RemoveSpell(ENVSystem_WeatherAnomalies)
          PlayerRef.RemoveSpell(ENVSystem_SolarFlare)
          PlayerRef.RemoveSpell(ENVSystem_Permafrost)
          PlayerRef.RemoveSpell(ENVSystem_Blaze)
EndFunction

Function InfernalVFXStart()
          Utility.Wait(1.0)
		  PlayerRef.AddSpell(ENVSystem_VisualFXSpell, False)
EndFunction

Function InfernalVFXStop()
          Utility.Wait(1.0)
		  PlayerRef.RemoveSpell(ENVSystem_VisualFXSpell)
EndFunction

Function AdaptiveDomeVFXStart()
          Utility.Wait(1.0)
		  PlayerRef.AddSpell(ENVSystem_AdaptiveDomeFXSpell, False)
EndFunction

Function AdaptiveDomeVFXStop()
          Utility.Wait(1.0)
		  PlayerRef.RemoveSpell(ENVSystem_AdaptiveDomeFXSpell)
EndFunction

Function RefreshEnvironmentSystemOnUninstall()

    If (PlayerRef.HasSpell(AEGSystemSpell))
        PlayerRef.RemoveSpell(AEGSystemSpell)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Extreme_Cold))
        PlayerRef.RemoveSpell(ENVSystem_Extreme_Cold)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Extreme_Corrosive))
        PlayerRef.RemoveSpell(ENVSystem_Extreme_Corrosive)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Extreme_Heat))
        PlayerRef.RemoveSpell(ENVSystem_Extreme_Heat)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Extreme_SolarRad))
        PlayerRef.RemoveSpell(ENVSystem_Extreme_SolarRad)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Extreme_Toxic))
        PlayerRef.RemoveSpell(ENVSystem_Extreme_Toxic)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Water_Cold))
        PlayerRef.RemoveSpell(ENVSystem_Water_Cold)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Water_Corrosive))
        PlayerRef.RemoveSpell(ENVSystem_Water_Corrosive)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Water_Heat))
        PlayerRef.RemoveSpell(ENVSystem_Water_Heat)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Water_HeavyMetal))
        PlayerRef.RemoveSpell(ENVSystem_Water_HeavyMetal)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Water_Microbial))
        PlayerRef.RemoveSpell(ENVSystem_Water_Microbial)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Water_Radioactive))
        PlayerRef.RemoveSpell(ENVSystem_Water_Radioactive)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_ProtectionRegen))
        PlayerRef.RemoveSpell(ENVSystem_ProtectionRegen)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_EnvironmentalRegen))
        PlayerRef.RemoveSpell(ENVSystem_EnvironmentalRegen)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_OxygenAdjustment))
        PlayerRef.RemoveSpell(ENVSystem_OxygenAdjustment)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_AtmoPressure))
        PlayerRef.RemoveSpell(ENVSystem_AtmoPressure)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Magnetosphere))
        PlayerRef.RemoveSpell(ENVSystem_Magnetosphere)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_MagnetosphereExtreme))
        PlayerRef.RemoveSpell(ENVSystem_MagnetosphereExtreme)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_MagnetosphereMassive))
        PlayerRef.RemoveSpell(ENVSystem_MagnetosphereMassive)
    EndIf
    
	If (PlayerRef.HasSpell(ENVSystem_MagnetospherePowerfull))
        PlayerRef.RemoveSpell(ENVSystem_MagnetospherePowerfull)
    EndIf
    
	If (PlayerRef.HasSpell(ENVSystem_MagnetosphereStrong))
        PlayerRef.RemoveSpell(ENVSystem_MagnetosphereStrong)
    EndIf
    
	If (PlayerRef.HasSpell(ENVSystem_MagnetosphereVeryStrong))
        PlayerRef.RemoveSpell(ENVSystem_MagnetosphereVeryStrong)
    EndIf
    
	If (PlayerRef.HasSpell(ENVSystem_MagnetosphereNone))
        PlayerRef.RemoveSpell(ENVSystem_MagnetosphereNone)
    EndIf
    
	If (PlayerRef.HasSpell(ENVSystem_MagnetosphereVeryWeak))
        PlayerRef.RemoveSpell(ENVSystem_MagnetosphereVeryWeak)
    EndIf
    
	If (PlayerRef.HasSpell(ENVSystem_MagnetosphereWeak))
        PlayerRef.RemoveSpell(ENVSystem_MagnetosphereWeak)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_WeatherAnomalies))
        PlayerRef.RemoveSpell(ENVSystem_WeatherAnomalies)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_SolarFlare))
        PlayerRef.RemoveSpell(ENVSystem_SolarFlare)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_SolarFlareIncoming))
        PlayerRef.RemoveSpell(ENVSystem_SolarFlareIncoming)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Permafrost))
        PlayerRef.RemoveSpell(ENVSystem_Permafrost)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_PermafrostIncoming))
        PlayerRef.RemoveSpell(ENVSystem_PermafrostIncoming)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_Blaze))
        PlayerRef.RemoveSpell(ENVSystem_Blaze)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_BlazeIncoming))
        PlayerRef.RemoveSpell(ENVSystem_BlazeIncoming)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_PlanetaryEffects))
        PlayerRef.RemoveSpell(ENVSystem_PlanetaryEffects)
    EndIf

    If (PlayerRef.HasSpell(EnviHazardsDialogueProtectionSpell))
        PlayerRef.RemoveSpell(EnviHazardsDialogueProtectionSpell)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_AdaptiveThermalSpell))
        PlayerRef.RemoveSpell(ENVSystem_AdaptiveThermalSpell)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_AdaptiveRadiationSpell))
        PlayerRef.RemoveSpell(ENVSystem_AdaptiveRadiationSpell)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_AdaptiveAirborneSpell))
        PlayerRef.RemoveSpell(ENVSystem_AdaptiveAirborneSpell)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_AdaptiveCorrosiveSpell))
        PlayerRef.RemoveSpell(ENVSystem_AdaptiveCorrosiveSpell)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_VisualFXSpell))
        PlayerRef.RemoveSpell(ENVSystem_VisualFXSpell)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_AdaptiveDomeFXSpell))
        PlayerRef.RemoveSpell(ENVSystem_AdaptiveDomeFXSpell)
    EndIf

    If (PlayerRef.HasSpell(ENVSystem_AdaptiveMessagingSpell))
        PlayerRef.RemoveSpell(ENVSystem_AdaptiveMessagingSpell)
    EndIf

    If Weather.GetCurrentWeather() == Weather_Agro01 || Weather.GetCurrentWeather() == Weather_Agro02 || Weather.GetCurrentWeather() == Weather_Tempest || Weather.GetCurrentWeather() == Weather_Cycle
       Weather.ReleaseOverride()               
	EndIf
	
	PlayerRef.DispelSpell(ENVSystem_SolarFlareEMPDMG)    
	PlayerRef.DispelSpell(ENVSystem_PermafrostColdDMG)  	
	PlayerRef.DispelSpell(ENVSystem_BlazeFireDMG)  

	Utility.Wait(1.0)    
	PlayerRef.AddSpell(ENVSystem_Extreme_Cold, False)
    PlayerRef.AddSpell(ENVSystem_Extreme_Corrosive, False)
    PlayerRef.AddSpell(ENVSystem_Extreme_Heat, False)
    PlayerRef.AddSpell(ENVSystem_Extreme_SolarRad, False)
    PlayerRef.AddSpell(ENVSystem_Extreme_Toxic, False)
	
	Utility.Wait(1.0)	
	PlayerRef.AddSpell(ENVSystem_Water_Cold, False)
    PlayerRef.AddSpell(ENVSystem_Water_Corrosive, False)
    PlayerRef.AddSpell(ENVSystem_Water_HeavyMetal, False)
    PlayerRef.AddSpell(ENVSystem_Water_Microbial, False)
    PlayerRef.AddSpell(ENVSystem_Water_Radioactive, False)
	
	Utility.Wait(1.0)	
    PlayerRef.AddSpell(ENVSystem_ProtectionRegen, False)
    PlayerRef.AddSpell(ENVSystem_EnvironmentalRegen, False)
    PlayerRef.AddSpell(ENVSystem_OxygenAdjustment, False)

	UnregisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveAirborne)
	UnregisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveCorrosive)
	UnregisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveRadiation)
	UnregisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveThermal)

EndFunction

Function AEGStart()
         
		 AEGBlock.SetValue(1)		 
		 AEGResistance.SetValue(1)
		 AEGShield.Play(PlayerRef, -1)         
		 AEGShield02.Play(PlayerRef, -1)
		 AEGShieldSoundInstance = SoundFX_AEGShield.Play(PlayerRef, None, None)
		 PlayerRef.Placeatme(AEGExplosionFX, 1, False, false, true, none, none, True)
		 PlayerRef.RestoreValue(Soak, 999)
		 StartTimer(180, 0)
		 StartTimer(900, 1)

EndFunction

Function AEGStop()
         
		 AEGResistance.SetValue(0)
         AEGShield.Stop(PlayerRef)
		 AEGShield02.Stop(PlayerRef)
		 wwiseevent.StopInstance(AEGShieldSoundInstance)
         AEGShieldSoundInstance = -1

EndFunction

Function AdapterNotificationChecks()
         
		 Float RadiationAdaptive = PlayerRef.GetValue(AV_AdaptiveRadiation)
		 Float CorrosiveAdaptive = PlayerRef.GetValue(AV_AdaptiveCorrosive)
		 Float AirborneAdaptive = PlayerRef.GetValue(AV_AdaptiveAirborne)    
		 Float ThermalAdaptive = PlayerRef.GetValue(AV_AdaptiveThermal)		 
		 
         MSG_AdapterEnergyCheck.Show(AirborneAdaptive, CorrosiveAdaptive, RadiationAdaptive, ThermalAdaptive)

EndFunction

Event OnTimer(int aiTimerID)
	       	 		 		 
		     If (aiTimerID == 0) 
		        AEGStop()
		 ElseIf (aiTimerID == 1) 
                AEGBlock.SetValue(0)		  
		        MSGAEGRecharged.Show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)		  
		  EndIf
EndEvent

Function Update()
       If (PlayerRef.HasSpell(ENVSystem_Magnetosphere))
           PlayerRef.RemoveSpell(ENVSystem_Magnetosphere)
           Utility.Wait(1.0)
		   PlayerRef.AddSpell(ENVSystem_Magnetosphere, False)
	EndIf
	   If (PlayerRef.HasSpell(ENVSystem_AtmoPressure))
           PlayerRef.RemoveSpell(ENVSystem_AtmoPressure)
           Utility.Wait(1.0)
		   PlayerRef.AddSpell(ENVSystem_AtmoPressure, False)
	EndIf
		   PlayerRef.AddSpell(ENVSystem_MagnetosphereExtreme, False)
		   PlayerRef.AddSpell(ENVSystem_MagnetosphereMassive, False)
		   PlayerRef.AddSpell(ENVSystem_MagnetospherePowerfull, False)
		   PlayerRef.AddSpell(ENVSystem_MagnetosphereStrong, False)
		   PlayerRef.AddSpell(ENVSystem_MagnetosphereVeryStrong, False)
		   PlayerRef.AddSpell(ENVSystem_MagnetosphereNone, False)
		   PlayerRef.AddSpell(ENVSystem_MagnetosphereVeryWeak, False)
		   PlayerRef.AddSpell(ENVSystem_MagnetosphereWeak, False)		   
EndFunction

Function UIHUDBridge()
	    Utility.Wait(1.0)
        PlayerRef.RemoveSpell(ENVSystem_PlanetaryEffects)
	    UnregisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveAirborne)
	    UnregisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveCorrosive)
	    UnregisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveRadiation)
	    UnregisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveThermal)
EndFunction

Function UIHUDBridgeDeconstruct()
	    Utility.Wait(1.0)
	    RegisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveAirborne)
	    RegisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveCorrosive)
	    RegisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveRadiation)
	    RegisterForActorValueChangedEvent(PlayerRef, AV_AdaptiveThermal)
        PercentageTracker()
        PlayerRef.AddSpell(ENVSystem_PlanetaryEffects, False)
EndFunction