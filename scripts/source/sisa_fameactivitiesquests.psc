ScriptName SISA_FameActivitiesQuests extends ActiveMagicEffect

Actor Property PlayerRef Auto Const 
ActorValue Property AV_Fame Auto Const
ActorValue Property AV_Reputation Auto Const
GlobalVariable Property GV_QuestFameReward Auto Const
Message Property MSG_FameIncrease Auto Const

Float Function FameCalculator()
	  	   
	  Float IfReputation00 = 0.50 	   
	  Float IfReputation10 = 0.60      
	  Float IfReputation20 = 0.70
	  Float IfReputation30 = 0.80      
	  Float IfReputation40 = 0.90 
	  Float IfReputation50 = 1.00
	  Float IfReputation60 = 1.10      
	  Float IfReputation70 = 1.20
	  Float IfReputation80 = 1.30      
	  Float IfReputation90 = 1.40 
	  Float IfReputation100 = 1.50
      
      If PlayerRef.GetValue(AV_Reputation) < 10
         Return IfReputation00
  ElseIf PlayerRef.GetValue(AV_Reputation) >= 10 && PlayerRef.GetValue(AV_Reputation) < 20
         Return IfReputation10
  ElseIf PlayerRef.GetValue(AV_Reputation) >= 20 && PlayerRef.GetValue(AV_Reputation) < 30
         Return IfReputation20
  ElseIf PlayerRef.GetValue(AV_Reputation) >= 30 && PlayerRef.GetValue(AV_Reputation) < 40
         Return IfReputation30
  ElseIf PlayerRef.GetValue(AV_Reputation) >= 40 && PlayerRef.GetValue(AV_Reputation) < 50
         Return IfReputation40
  ElseIf PlayerRef.GetValue(AV_Reputation) >= 50 && PlayerRef.GetValue(AV_Reputation) < 60
         Return IfReputation50
  ElseIf PlayerRef.GetValue(AV_Reputation) >= 60 && PlayerRef.GetValue(AV_Reputation) < 70
         Return IfReputation60
  ElseIf PlayerRef.GetValue(AV_Reputation) >= 70 && PlayerRef.GetValue(AV_Reputation) < 80
         Return IfReputation70
  ElseIf PlayerRef.GetValue(AV_Reputation) >= 80 && PlayerRef.GetValue(AV_Reputation) < 90
         Return IfReputation80
  ElseIf PlayerRef.GetValue(AV_Reputation) >= 90 && PlayerRef.GetValue(AV_Reputation) < 100
         Return IfReputation90
  ElseIf PlayerRef.GetValue(AV_Reputation) >= 100
         Return IfReputation100
   EndIf

EndFunction

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
      
	  Float FameAmount = FameCalculator()
	  Float FameReward = GV_QuestFameReward.GetValue() * FameAmount
	  
	  PlayerRef.RestoreValue(AV_Fame, FameReward)
      MSG_FameIncrease.Show()

EndEvent

