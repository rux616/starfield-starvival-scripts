ScriptName SISA_AfflictionCuresTrigger extends ActiveMagicEffect

sq_env_afflictionsscript Property SQ_ENV Auto Const mandatory
{ autofill }
Keyword Property TreatmentEffectKeyword Auto Const mandatory
{ filter for: ENV_EffectType_AFFL_Treatment_ }

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
  Int improvementLevels = Math.Max(afMagnitude, 1.0) as Int
  SQ_ENV.ImproveActiveAfflictions(TreatmentEffectKeyword, improvementLevels, True)
EndEvent

Bool Function Trace(ScriptObject CallingObject, String asTextToPrint, Int aiSeverity, String MainLogName, String SubLogName, Bool bShowNormalTrace, Bool bShowWarning, Bool bPrefixTraceWithLogNames)
  Return Debug.TraceLog(CallingObject, asTextToPrint, MainLogName, SubLogName, aiSeverity, bShowNormalTrace, bShowWarning, bPrefixTraceWithLogNames, True)
EndFunction

Bool Function warning(ScriptObject CallingObject, String asTextToPrint, Int aiSeverity, String MainLogName, String SubLogName, Bool bShowNormalTrace, Bool bShowWarning, Bool bPrefixTraceWithLogNames)
  Return false
EndFunction