ScriptName SISA_OxygenBooster extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property Oxygen Auto Const
MiscObject Property EmptyOxygenBooster const auto
wwiseevent Property SoundEvent Auto Const
MagicEffect Property O2CapacityIncreaser Auto Const
ResearchProject Property Research_OxygenBoosterMK2 Auto Const Mandatory

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
	  If Game.IsResearchComplete(Research_OxygenBoosterMK2) == False	  
	     Utility.Wait(3.0)
	     SoundEvent.PlayAndWait(PlayerRef, None, None)
   Else
         SoundEvent.Play(PlayerRef, None, None)
   EndIf
	  
	  If PlayerRef.HasMagicEffect(O2CapacityIncreaser) == True
	     PlayerRef.RestoreValue(Oxygen, 999)
  Else
	     PlayerRef.DamageValue(Oxygen, 999)
	     PlayerRef.RestoreValue(Oxygen, 100)
   EndIf
   PlayerRef.Additem(EmptyOxygenBooster, 1, True)  

EndEvent