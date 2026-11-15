ScriptName SISA_EnviPhenomenaTempest extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
GlobalVariable Property GV_StormActive Auto Const
GlobalVariable Property GV_AnomalyActive Auto Const
ImageSpaceModifier Property IMAD_Type1 Auto Const
ImageSpaceModifier Property IMAD_Type2 Auto Const
Spell Property SPL_StormSlowmo Const Auto
wwiseevent Property SFX_StormExplosion Auto Const
VisualEffect Property VFX_StormLighthning Auto Const mandatory
Perk Property PRK_Bonus Auto Const mandatory
Formlist Property LIST_SolidGasLiquidRes Auto Const
Explosion Property EXPL_Particle Auto Const

Float Property FLT_TimeEnd = 1.0 const auto
Float Property FLT_DropItemTime = 1.0 const auto

ObjectReference[] droppedItems

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)        
	  StartWeatherEffects()
EndEvent

Event OnTimer(int aiTimerID)

         If (aiTimerID == 0) 
             CleanupWeatherFromTimer()
     ElseIf (aiTimerID == 1) 
			  If GV_StormActive.GetValue() == 1 
                 Int RandomTimer = Utility.RandomInt(18, 36)
	             AdditionalEffectsForTimer()
	             StartTimer(RandomTimer, 1)
           EndIf
	 ElseIf (aiTimerID == 2) 
			  If GV_StormActive.GetValue() == 1
			     Float BoltStrikeTimer = Utility.RandomFloat(1.2, 1.8)
                 VFX_StormLighthning.Play(PlayerRef, FLT_TimeEnd, None)
	             StartTimer(BoltStrikeTimer, 2)
	        Else
                 VFX_StormLighthning.Stop(PlayerRef)
	       EndIf
	 ElseIf (aiTimerID == 3) 
                   If droppedItems != None
                      int i = 0
                      while i < droppedItems.Length
                            If droppedItems[i] != None
                               droppedItems[i].Placeatme(EXPL_Particle, 1, False, false, true, none, none, True)
							   droppedItems[i].Disable()
                               droppedItems[i].Delete()
                         EndIf
                        i += 1
                     endwhile
                EndIf	  	  
	  EndIf

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)	     
      CleanupWeatherOnEffectFinish()
EndEvent

Function StartWeatherEffects() 
          StartTimer(FLT_TimeEnd, 0)
	      GV_StormActive.SetValue(1)
		  PlayerRef.Addperk(PRK_Bonus, False) 
		  SPL_StormSlowmo.cast(PlayerRef, PlayerRef)
		  IMAD_Type1.Apply(0.5)
          IMAD_Type2.Apply(0.5)
          SFX_StormExplosion.Play(PlayerRef, None, None) 
	      Game.ShakeCamera(PlayerRef, 3.0, 3.0)       
          DropAllFromFormList()
		  Int RandomTimer = Utility.RandomInt(18, 36)
		  StartTimer(RandomTimer, 1)
		  Float BoltStrikeTimer = Utility.RandomFloat(1.2, 1.8)
		  StartTimer(BoltStrikeTimer, 2)
EndFunction

Function AdditionalEffectsForTimer()
		 Float RandomValueImad = Utility.RandomFloat(0.3, 0.7)
		 SPL_StormSlowmo.cast(PlayerRef, PlayerRef)
         IMAD_Type1.Apply(RandomValueImad)
         IMAD_Type2.Apply(RandomValueImad)
		 SFX_StormExplosion.Play(PlayerRef, None, None) 
		 Float RandomValueShakeMag = Utility.RandomFloat(1.0, 3.0)
		 Float RandomValueShakeDur = Utility.RandomFloat(1.0, 3.0)
	     Game.ShakeCamera(PlayerRef, RandomValueShakeMag, RandomValueShakeDur)
         DropAllFromFormList()
EndFunction

Function CleanupWeatherOnEffectFinish()
         GV_StormActive.SetValue(0)
         GV_AnomalyActive.SetValue(0)
         PlayerRef.Removeperk(PRK_Bonus)
         Weather.ReleaseOverride()
         VFX_StormLighthning.Stop(PlayerRef)
         CancelTimer(1)
         CancelTimer(2)
         CancelTimer(3)
EndFunction

Function CleanupWeatherFromTimer()
		 GV_StormActive.SetValue(0)
         GV_AnomalyActive.SetValue(0)
         PlayerRef.Removeperk(PRK_Bonus)
		 Weather.ReleaseOverride()
		 SPL_StormSlowmo.cast(PlayerRef, PlayerRef)
		 IMAD_Type1.Apply(0.5)
         IMAD_Type2.Apply(0.5)
		 SFX_StormExplosion.Play(PlayerRef, None, None) 
         VFX_StormLighthning.Stop(PlayerRef)
	     Game.ShakeCamera(PlayerRef, 3.0, 3.0) 
	     CancelTimer(1)
	     CancelTimer(2)
         CancelTimer(3)
EndFunction

Function DropAllFromFormList()
        
		int count = LIST_SolidGasLiquidRes.GetSize()
        droppedItems = new ObjectReference[count]

        int i = 0
        while i < count
            Form currentForm = LIST_SolidGasLiquidRes.GetAt(i)
            if currentForm != None
                int itemCount = PlayerRef.GetItemCount(currentForm)
                if itemCount > 0
                    ObjectReference droppedRef = PlayerRef.DropObject(currentForm, itemCount)
                    droppedItems[i] = droppedRef
                endif
            endif
            i += 1
        endwhile
        StartTimer(FLT_DropItemTime, 3)

EndFunction