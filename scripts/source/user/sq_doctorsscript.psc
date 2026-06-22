Scriptname SQ_DoctorsScript extends Quest

Group Autofill
	ReferenceAlias Property PrimaryAliasDoctor Mandatory Const Auto
	GlobalVariable Property SQ_Doctors_Price_Wounds Mandatory Const Auto
	GlobalVariable Property SQ_Doctors_Price_Afflictions Mandatory Const Auto
	GlobalVariable Property SQ_Doctors_Price_Addictions Mandatory Const Auto
	GlobalVariable Property SQ_Doctors_Price_Everything Mandatory Const Auto
	GlobalVariable Property EnhancedInfirmary_VFX_Toggle Const Auto
	Spell Property SQ_Doctors_CureAll Mandatory Const Auto
	Spell Property CureAddictions Mandatory Const Auto
    ImageSpaceModifier Property theImod Auto Const
    ImageSpaceModifier Property theImod02 Auto Const
    Keyword Property DialogueSubTopicToSay Auto const
    wwiseevent Property SoundFX_Rehab Auto Const
    wwiseevent Property SoundFX_Rehab02 Auto Const
EndGroup

Actor PlayerRef
MiscObject Credits

float Property SecondsBeforeFade = 0.0 Auto Const
float Property FadeDuration = 4.5 Auto Const
float Property WaitTime = 0.5 Auto Const

int iHealMax = 999999999

Event OnQuestInit()
	PlayerRef = Game.GetPlayer()
	Credits = Game.GetCredits()
EndEvent

Function BuySupplies()
	Trace(self, "BuySupplies() ")
	PrimaryAliasDoctor.GetActorReference().ShowBarterMenu()
EndFunction

Function HealWounds()
	Trace(self, "HealWounds()")
	PayForService(SQ_Doctors_Price_Wounds)
	PlayerRef.RestoreValue(Game.GetHealthAV(), iHealMax)
    FadeToBlack()
EndFunction

Function HealAfflictions()
	Trace(self, "HealAfflictions()")
	PayForService(SQ_Doctors_Price_Afflictions)
	SQ_Doctors_CureAll.Cast(PlayerRef, PlayerRef)
    FadeToBlack()
EndFunction

Function HealAddictions()
	Trace(self, "HealAddictions()")
	PayForService(SQ_Doctors_Price_Addictions)
	CureAddictions.Cast(PlayerRef, PlayerRef)
    FadeToBlack() 
EndFunction

Function HealEverything()
	Trace(self, "HealEverything()")
	PayForService(SQ_Doctors_Price_Everything)
	CureAddictions.Cast(PlayerRef, PlayerRef)
	SQ_Doctors_CureAll.Cast(PlayerRef, PlayerRef)
    Utility.Wait(0.5)
	PlayerRef.RestoreValue(Game.GetHealthAV(), iHealMax)
	FadeToBlack()
EndFunction

Function CannotPay()
	Trace(self, "CannotPay()")
EndFunction

Function PayForService(GlobalVariable CostGlobal)
	Trace(self, "PayForService() CostGlobal: " + CostGlobal)
	PlayerRef.RemoveItem(Credits, CostGlobal.GetValueInt())
EndFunction

Function FadeToBlack()
   	
	If EnhancedInfirmary_VFX_Toggle.GetValue() == 1 	 
	   inputenablelayer DisableControls = inputenablelayer.Create()
	   DisableControls.DisablePlayerControls(True, True, True, False, True, True, True, True, True, True, False)	 
	   Game.FadeOutGame(true, true, SecondsBeforeFade, FadeDuration, true)
	   PlayerRef.SayCustom(DialogueSubTopicToSay, None, False, None)
	   theImod.Apply(1.0)
	   SoundFX_Rehab02.Play(PlayerRef, None, None)
	   Utility.Wait(6.5)
	   Game.FadeOutGame(false, true, SecondsBeforeFade, FadeDuration)
	   theImod02.Apply(1.0)
	   PlayerRef.SayCustom(DialogueSubTopicToSay, None, False, None)
	   SoundFX_Rehab.Play(PlayerRef, None, None)
	   Utility.Wait(7.0)
	   DisableControls.Delete()
 EndIf

EndFunction

;************************************************************************************
;****************************	   CUSTOM TRACE LOG	    *****************************
;************************************************************************************
bool Function Trace(ScriptObject CallingObject, string asTextToPrint, int aiSeverity = 0, string MainLogName = "SQ_Doctors",  string SubLogName = "SQ_DoctorsScript", bool bShowNormalTrace = false, bool bShowWarning = false, bool bPrefixTraceWithLogNames = true) DebugOnly
	return debug.TraceLog(CallingObject, asTextToPrint, MainLogName, SubLogName,  aiSeverity, bShowNormalTrace, bShowWarning, bPrefixTraceWithLogNames)
endFunction

bool Function Warning(ScriptObject CallingObject, string asTextToPrint, int aiSeverity = 2, string MainLogName = "SQ_Doctors",  string SubLogName = "SQ_DoctorsScript", bool bShowNormalTrace = false, bool bShowWarning = true, bool bPrefixTraceWithLogNames = true) BetaOnly
	return debug.TraceLog(CallingObject, asTextToPrint, MainLogName, SubLogName,  aiSeverity, bShowNormalTrace, bShowWarning, bPrefixTraceWithLogNames)
EndFunction