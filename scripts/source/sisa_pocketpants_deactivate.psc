Scriptname SISA_Pocketpants_Deactivate extends ActiveMagicEffect

Explosion Property ElectricExplosion Auto Const
Armor Property PocketpantsToken Auto Const
Conditionform Property CND_ResearchComplete03 Auto Const Mandatory
Actor Property PlayerRef Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
	    akCaster.Placeatme(ElectricExplosion, 1, False, false, true, none, none, True)   
	    akCaster.SetUnconscious(True)

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
     
	 If CND_ResearchComplete03.IsTrue(PlayerRef, None)     
	    akCaster.Kill()
 Else
		akCaster.SetUnconscious(False)
  EndIf    
	 
	 If akCaster.GetItemCount(PocketpantsToken) > 0
        akCaster.Removeitem(PocketpantsToken, 999, True, None)
  EndIf

EndEvent   