ScriptName SISA_EnviHazardVFX extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
VisualEffect Property VFX_CameraAttach Const Auto 
ImagespaceModifier Property IMAD_Frost Const Auto 

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      ;VFX_CameraAttach.Stop(PlayerRef)
	  VFX_CameraAttach.Play(PlayerRef, -1, None)
      IMAD_Frost.Apply(1.0)
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      IMAD_Frost.Remove()
      VFX_CameraAttach.Stop(PlayerRef)
EndEvent
