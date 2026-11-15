ScriptName SISA_ReputationPresents extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
LeveledItem Property LVL_Presents Auto Const
Message Property MSG_PresentNofitication Auto Const
GlobalVariable Property GV_GoodRepPresentsChance Auto Const
GlobalVariable Property GV_GoodRepPresentsTime Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)      	  
		  Float Time = GV_GoodRepPresentsTime.GetValue()	  	  
		  StartTimer(Time, 0)
EndEvent

Event OnTimer(int aiTimerID)
             
			 Float Time = GV_GoodRepPresentsTime.GetValue()			 
			 Int Chance = Utility.RandomInt(1, 100)
     	     Int ChanceTrigger = GV_GoodRepPresentsChance.GetValue() as Int  
			 
			 If (aiTimerID == 0)  			    			    	
					If Chance <= ChanceTrigger
					   PlayerRef.Additem(LVL_Presents, 1)
				       MSG_PresentNofitication.show()
				 EndIf				 
				 StartTimer(Time, 0)          		  
		  EndIf

EndEvent	
