ScriptName SISA_SelfDeployTurret extends Actor

Actor Property PlayerRef Auto Const
Explosion Property EXPLO_Reveal Auto Const
Explosion Property EXPLO_Reveal02 Auto Const
EffectShader Property VFX_Reveal Auto Const Mandatory
GlobalVariable Property GV_DeployCount Auto Const
Weapon Property WPN_DeployTurret Auto Const
Conditionform Property CF_PortableFriend01 Auto Const Mandatory
Conditionform Property CF_PortableFriend02 Auto Const Mandatory
Conditionform Property CF_PortableFriend03 Auto Const Mandatory
Conditionform Property CF_PortableFriend04 Auto Const Mandatory
Message Property MSG_LimitReached Auto Const
Message Property MSG_NoExpertise Auto Const
Potion Property POTI_ChallengeActivity Auto Const
Hazard Property HZRD_PositiveHazard Auto Const
Spell Property SPL_EmpoweringAura Auto Const
Perk Property PRK_MobileFirePower Auto Const

ObjectReference PositiveHazard

Event OnInit()
         
		 If !PlayerRef.HasPerk(PRK_MobileFirePower)
	        PlaceAtMe(EXPLO_Reveal02, 1, False, False, True, None, None, True) 
            Disable(False)
 	        Delete()	  
	        PlayerRef.Additem(WPN_DeployTurret, 1, True)
			MSG_NoExpertise.Show()
		    Return
	  EndIf	 
		 
		 Float DeployBonus = DeployPosibilities() 
         If GV_DeployCount.GetValue() >= DeployBonus
            Disable(False)
 	        Delete()	  
	        PlayerRef.Additem(WPN_DeployTurret, 1, True)
			MSG_LimitReached.Show()
			Return
	  EndIf

		 If CF_PortableFriend04.IsTrue(PlayerRef, None)    
		    PositiveHazard = Placeatme(HZRD_PositiveHazard, 1, False, false, true, None, none, False)
	        ;StartTimer(0, 1)
	  EndIf
	  PlaceAtMe(EXPLO_Reveal02, 1, False, False, True, None, None, True)   
	  Float DeployCount = GV_DeployCount.Getvalue() + 1.0
	  GV_DeployCount.SetValue(DeployCount)
	  SetAngle(0, 0, GetAngleZ())
      MoveToNearestNavmeshLocation() 
      MoveTo(Self, 0, 0, -0.05)
	  PlayerRef.EquipItem(POTI_ChallengeActivity, False, True)
	  Utility.Wait(0.1)
	  VFX_Reveal.Play(self, 2) 
      Float LifespanTimer = Lifespan()
	  StartTimer(LifespanTimer, 0)

EndEvent

Event OnDeath(ObjectReference akKiller)
	  Float DeployCount = GV_DeployCount.Getvalue() - 1.0
	  GV_DeployCount.SetValue(DeployCount)
	     If GV_DeployCount.GetValue() < 0
            GV_DeployCount.SetValue(0)
	  EndIf
	  CancelTimer(0)
	  PlaceAtMe(EXPLO_Reveal02, 1, False, False, True, None, None, True)    
		 If CF_PortableFriend04.IsTrue(PlayerRef, None)    
	        CancelTimer(1)
		    ;DispelSpell(SPL_EmpoweringAura)
			PositiveHazard.Delete()
	  EndIf
	  Disable(False)
 	  Delete()
EndEvent

Event OnTimer(int aiTimerID)	       	 
		     If (aiTimerID == 0)
	            Float DeployCount = GV_DeployCount.Getvalue() - 1.0
	            GV_DeployCount.SetValue(DeployCount)
	               If GV_DeployCount.GetValue() < 0
                      GV_DeployCount.SetValue(0)
	            EndIf
		           If CF_PortableFriend04.IsTrue(PlayerRef, None)    
		              ;DispelSpell(SPL_EmpoweringAura)
					  PositiveHazard.Delete()
	                  CancelTimer(1)
	            EndIf
				PlaceAtMe(EXPLO_Reveal02, 1, False, False, True, None, None, True)    
                Disable(False)
 	            Delete()
		 ElseIf (aiTimerID == 1)
                SPL_EmpoweringAura.Cast(Self, Self) 
		        StartTimer(2.0, 1)
		  EndIf
EndEvent

Float Function Lifespan()
     
     Float LifespanTime01 = 30.0 	 
     Float LifespanTime02 = 40.0 
     Float LifespanTime03 = 50.0 
     Float LifespanTime04 = 60.0 	 
		
		If CF_PortableFriend04.IsTrue(PlayerRef, None)    
		   Return LifespanTime04 
	ElseIf CF_PortableFriend03.IsTrue(PlayerRef, None)  
	       Return LifespanTime03
	ElseIf CF_PortableFriend02.IsTrue(PlayerRef, None)  	 
           Return LifespanTime02
	ElseIf CF_PortableFriend01.IsTrue(PlayerRef, None) 
           Return LifespanTime01 
     EndIf

EndFunction

Float Function DeployPosibilities()
     	 
     Float LifespanTime02 = 2.0 
     Float LifespanTime03 = 3.0 
     Float LifespanTime04 = 4.0 	 
		
		If CF_PortableFriend04.IsTrue(PlayerRef, None)    
		   Return LifespanTime04 
	ElseIf CF_PortableFriend03.IsTrue(PlayerRef, None)  
	       Return LifespanTime03
	ElseIf CF_PortableFriend02.IsTrue(PlayerRef, None)  	 
           Return LifespanTime02
     EndIf
     Return 1.0
EndFunction