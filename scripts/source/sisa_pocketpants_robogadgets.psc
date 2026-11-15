Scriptname SISA_Pocketpants_RoboGadgets extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Armor Property PocketpantsToken Auto Const
Explosion Property Explosion01 Auto Const
Explosion Property Explosion02 Auto Const
Explosion Property Explosion03 Auto Const
Explosion Property Explosion04 Auto Const
Conditionform Property CND_ResearchComplete01 Auto Const Mandatory
Conditionform Property CND_ResearchComplete02 Auto Const Mandatory
Conditionform Property CND_ResearchComplete03 Auto Const Mandatory

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)         
EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
      If CND_ResearchComplete03.IsTrue(PlayerRef, None) 	  	     
         akCaster.Placeatme(Explosion04, 1, False, false, true, none, none, True)
  ElseIf CND_ResearchComplete02.IsTrue(PlayerRef, None) 	  
         akCaster.Placeatme(Explosion03, 1, False, false, true, none, none, True)
  ElseIf CND_ResearchComplete01.IsTrue(PlayerRef, None) 	  
         akCaster.Placeatme(Explosion02, 1, False, false, true, none, none, True)
   Else
         akCaster.Placeatme(Explosion01, 1, False, false, true, none, none, True)        
   EndIf

EndEvent   