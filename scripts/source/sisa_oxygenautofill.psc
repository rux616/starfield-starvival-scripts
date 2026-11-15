ScriptName SISA_OxygenAutoFill extends ActiveMagicEffect

Actor Property PlayerRef Auto const
ActorValue Property Oxygen Auto Const
Potion Property OxygenBoosterPotion Auto Const
wwiseevent Property SoundEvent Auto Const
wwiseevent Property SoundEvent02 Auto Const
ImageSpaceModifier Property theImod Auto Const
GlobalVariable Property OxygenNotificationToggle Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)

      If PlayerRef.GetItemCount(OxygenBoosterPotion) > 0
         theImod.Apply(1.0)
		 PlayerRef.RemoveItem(OxygenBoosterPotion, 1, False, None) 
		 SoundEvent02.Play(PlayerRef, None, None)
		 SoundEvent.Play(PlayerRef, None, None)
		 PlayerRef.RestoreValue(Oxygen, 999)
   EndIf

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)

      theImod.Remove()

EndEvent