ScriptName SISA_QuickAccessNPC Extends Perk Const hidden

Keyword Property Contraband Auto Const Mandatory

Function CompanionQuickAccess(ObjectReference akTargetRef, Actor akActor)		     
         Actor Target = akTargetRef as Actor
         Spell CarryWeightSpell = Game.GetFormFromFile(0x00003003, "SFBGS007.esm") as Spell
			If !Target.HasSpell(CarryWeightSpell)
			   Target.Addspell(CarryWeightSpell, False)
         EndIf
		 Utility.Wait(0.15)
		 Target.OpenInventory(true, Contraband, false)
EndFunction

Function TradeQuickAccess(ObjectReference akTargetRef, Actor akActor)		     
         Actor Target = akTargetRef as Actor
		 Utility.Wait(0.15)
		 Target.ShowBarterMenu()
EndFunction