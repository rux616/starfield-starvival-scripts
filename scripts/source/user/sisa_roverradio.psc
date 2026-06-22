ScriptName SISA_RoverRadio extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
wwiseevent Property RadioStation Auto Const

GlobalVariable Property GV_RadioToggle Auto Const
MusicType Property MusicSilence Auto Const

Int RadioSoundInstance = -1
wwiseevent Radio

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
   	
	  RadioStationTrigger(RadioStation)

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
   	
	  MusicSilence.Remove()
	  wwiseevent.StopInstance(RadioSoundInstance)
      GV_RadioToggle.SetValue(0) 

EndEvent

Function RadioStationTrigger(wwiseevent Station)
         
		 If GV_RadioToggle.GetValue() == 0
	        MusicSilence.Remove()
	        wwiseevent.StopInstance(RadioSoundInstance)
            GV_RadioToggle.SetValue(0) 		 
	        Return 
	  EndIf
		 
		 MusicSilence.Remove()
		 wwiseevent.StopInstance(RadioSoundInstance)
         Radio = Station
         RadioSoundInstance = Radio.Play(PlayerRef, None, None)
		 MusicSilence.Add()
		 GV_RadioToggle.SetValue(1)

Endfunction