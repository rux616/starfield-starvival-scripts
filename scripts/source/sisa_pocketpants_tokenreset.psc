Scriptname SISA_Pocketpants_TokenReset extends ActiveMagicEffect

Armor Property PocketpantsToken Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)         
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
     If akCaster.GetItemCount(PocketpantsToken) > 0
        akCaster.Removeitem(PocketpantsToken, 999, True, None)
  EndIf

EndEvent   