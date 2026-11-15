ScriptName SISA_EnviPhenomenaAgroFLR extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
Spell Property SPL_Effect Const Auto
Explosion Property EXPL_Poison Auto Const
Keyword Property KWD_AgroFlora Auto Const

ObjectReference FloraPoison

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)  
	  StartTimer(1, 0)
EndEvent

Event OnTimer(int aiTimerID)		     	       			     
			 If (aiTimerID == 0)
				RegisterFlora()	        		
                StartTimer(1, 0)
		  EndIf
EndEvent

Function RegisterFlora()

    ObjectReference[] FloraRefs = PlayerRef.FindAllReferencesWithKeyword(KWD_AgroFlora, 4.0)
    int i = 0
    While i < FloraRefs.Length
           FloraPoison = FloraRefs[i]
           If FloraPoison != None
			        Int PoisonChance = Utility.RandomInt(0, 100)
				    If PoisonChance <= 50
			           FloraPoison.Placeatme(EXPL_Poison, 1, False, false, true, none, none, True)
					   SPL_Effect.cast(PlayerRef, PlayerRef)
		         EndIf
        EndIf
        i += 1
    EndWhile

EndFunction

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)  
	  CancelTimer(0)
EndEvent