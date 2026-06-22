Scriptname SISA_Pocketpants_Minibombs extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Armor Property PocketpantsToken Auto Const
Explosion Property SelfDestructExplosion01 Auto Const
Explosion Property SelfDestructExplosion02 Auto Const
Explosion Property SelfDestructExplosion03 Auto Const
Explosion Property SelfDestructExplosion04 Auto Const
Spell Property SlowmoAddon Auto Const
Conditionform Property CND_ResearchCompleteAdvMinibombs01 Auto Const Mandatory
Conditionform Property CND_ResearchCompleteAdvMinibombs02 Auto Const Mandatory
Conditionform Property CND_ResearchCompleteAdvMinibombs03 Auto Const Mandatory

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)         
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
      If CND_ResearchCompleteAdvMinibombs03.IsTrue(PlayerRef, None) 	  	     
         akCaster.Placeatme(SelfDestructExplosion04, 1, False, false, true, none, none, True)
  ElseIf CND_ResearchCompleteAdvMinibombs02.IsTrue(PlayerRef, None) 	  
         akCaster.Placeatme(SelfDestructExplosion03, 1, False, false, true, none, none, True)
  ElseIf CND_ResearchCompleteAdvMinibombs01.IsTrue(PlayerRef, None) 	  
         akCaster.Placeatme(SelfDestructExplosion02, 1, False, false, true, none, none, True)
   Else
         akCaster.Placeatme(SelfDestructExplosion01, 1, False, false, true, none, none, True)        
   EndIf
   
   akCaster.Kill()
   SlowmoAddon.Cast(PlayerRef, PlayerRef)

     If akCaster.GetItemCount(PocketpantsToken) > 0
        akCaster.Removeitem(PocketpantsToken, 999, True, None)
  EndIf

EndEvent   