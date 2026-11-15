Scriptname SISA_AdvancedLoot extends ObjectReference

LeveledItem PROPERTY Loot_Lock_Advanced AUTO
LeveledItem PROPERTY Loot_Lock_Expert AUTO
LeveledItem PROPERTY Loot_Lock_Master AUTO

AUTO STATE startState

EVENT OnLoad()
	    
	    IF(getLockLevel() == 50)
	      additem(Loot_Lock_Advanced)
	ELSEIF(getLockLevel() == 75)
		  additem(Loot_Lock_Expert)
	ELSEIF(getLockLevel() == 100)
		  additem(Loot_Lock_Master)
	 ENDIF

	 goToState("doNothing")

ENDEVENT

ENDSTATE

STATE doNothing

	EVENT OnLoad()
	ENDEVENT

ENDSTATE