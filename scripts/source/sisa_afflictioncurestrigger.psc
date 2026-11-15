ScriptName SISA_AfflictionCuresTrigger extends ActiveMagicEffect

sq_env_afflictionsscript Property SQ_ENV Auto Const mandatory
{ autofill }
Keyword Property TreatmentEffectKeyword Auto Const mandatory
{ filter for: ENV_EffectType_AFFL_Treatment_ }

Actor Property PlayerRef Auto Const
Conditionform Property CF_PerkRank02 Auto Const Mandatory
Conditionform Property CF_PerkRank03 Auto Const Mandatory
Conditionform Property CF_PerkRank04 Auto Const Mandatory

Float Property FLT_Improvements = 1.0 Auto
Int Property Int_CureChanceBasic = 1 Auto

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
  Int Int_CureChance = CureChance()
  Int improvementLevels = Math.Max(afMagnitude, FLT_Improvements) as Int
  SQ_ENV.ImproveActiveAfflictions(TreatmentEffectKeyword, improvementLevels, True, Int_CureChance)
EndEvent

Bool Function Trace(ScriptObject CallingObject, String asTextToPrint, Int aiSeverity, String MainLogName, String SubLogName, Bool bShowNormalTrace, Bool bShowWarning, Bool bPrefixTraceWithLogNames)
  Return Debug.TraceLog(CallingObject, asTextToPrint, MainLogName, SubLogName, aiSeverity, bShowNormalTrace, bShowWarning, bPrefixTraceWithLogNames, True)
EndFunction

Bool Function warning(ScriptObject CallingObject, String asTextToPrint, Int aiSeverity, String MainLogName, String SubLogName, Bool bShowNormalTrace, Bool bShowWarning, Bool bPrefixTraceWithLogNames)
  Return false
EndFunction

Int Function CureChance()

	 Int Chance01 = Int_CureChanceBasic
     Int Chance02 = Int_CureChanceBasic + 4 	 
     Int Chance03 = Int_CureChanceBasic + 8 
     Int Chance04 = Int_CureChanceBasic + 12 
	 		
		If CF_PerkRank04.IsTrue(PlayerRef, None)    
		   Return Chance04 
	ElseIf CF_PerkRank03.IsTrue(PlayerRef, None)  
	       Return Chance03
	ElseIf CF_PerkRank02.IsTrue(PlayerRef, None)  	 
           Return Chance02
    Else	
           Return Chance01
     EndIf    

EndFunction