Scriptname ForceLegendaryActorScript extends Actor Const

LegendaryAliasQuestScript Property LegendaryAliasQuest Mandatory Const Auto

Event OnLoad()
	if IsDead() == false
	    Keyword BossActorKeyword = Game.GetFormFromFile(0x000015EC, "Starvival - Immersive Survival Addon.esm") as Keyword 	
		Addkeyword(BossActorKeyword)
		LegendaryAliasQuest.MakeLegendary(self)
	endif
EndEvent

Event OnDeath(ObjectReference akKiller)
	  Keyword BossActorKeyword = Game.GetFormFromFile(0x000015EC, "Starvival - Immersive Survival Addon.esm") as Keyword 
	  Removekeyword(BossActorKeyword)
	  LegendaryAliasQuest.RemoveLegendary(self)
EndEvent