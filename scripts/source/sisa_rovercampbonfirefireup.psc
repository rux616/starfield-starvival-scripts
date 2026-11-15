Scriptname SISA_RoverCampBonfireFireUp Extends ObjectReference

Actor Property PlayerRef Auto Const
Keyword Property KWD_BonfireObjectLink Auto Const mandatory
Keyword Property KWD_BonfireObjectLinkLight Auto Const mandatory
Keyword Property KWD_BonfireObjectLinkLight02 Auto Const mandatory
Keyword Property KWD_BonfireObjectLinkHazard Auto Const mandatory
Keyword Property KWD_BonfireObjectLinkSmoke Auto Const mandatory
Keyword Property KWD_BonfireObjectLinkLanternLight01 Auto Const mandatory
Keyword Property KWD_BonfireObjectLinkLanternLight02 Auto Const mandatory
Keyword Property KWD_BonfireObjectLinkLanternLight03 Auto Const mandatory
Keyword Property KWD_BonfireObjectLinkLanternLight04 Auto Const mandatory
Keyword Property KWD_BonfireObjectLinkLanternLight05 Auto Const mandatory
Keyword Property KWD_BonfireObjectLinkLanternLight06 Auto Const mandatory
Keyword Property KWD_BonfireObjectLinkLanternLight07 Auto Const mandatory
Keyword Property KWD_BonfireObjectLinkLanternLight08 Auto Const mandatory
Keyword Property KWD_BonfireObjectLinkLanternLight09 Auto Const mandatory
Keyword Property KWD_BonfireObjectLinkLanternLight10 Auto Const mandatory
Keyword Property KWD_BonfireObjectLinkPaperLantern01 Auto Const mandatory
Keyword Property KWD_BonfireObjectLinkPaperLantern02 Auto Const mandatory
Keyword Property KWD_BonfireObjectLinkPaperLantern03 Auto Const mandatory
Keyword Property KWD_BonfireObjectLinkPaperLantern04 Auto Const mandatory
Keyword Property KWD_BonfireObjectLinkPaperLantern05 Auto Const mandatory
Keyword Property KWD_BonfireObjectLinkPaperLantern06 Auto Const mandatory
Keyword Property KWD_BonfireObjectLinkPaperLantern07 Auto Const mandatory
Keyword Property KWD_BonfireObjectLinkPaperLantern08 Auto Const mandatory
Keyword Property KWD_BonfireObjectLinkWood Auto Const mandatory
Keyword Property KWD_BonfireObjectLinkFuel Auto Const mandatory
Keyword Property KWD_BonfireObjectLinkOxygen Auto Const mandatory
MiscObject Property MSC_CampingSupplies Auto Const
MiscObject Property MSC_CampingSupplies75 Auto Const
MiscObject Property MSC_CampingSupplies50 Auto Const
MiscObject Property MSC_CampingSupplies25 Auto Const
Message Property MSG_CampfireNeedsWood Auto Const
Message Property MSG_CampfireMenu Auto Const
Message Property MSG_CampfireTutorial Auto Const
Message Property MSG_CampfireTutorial02 Auto Const
Projectile Property PRJ_Cutter Auto Const
GlobalVariable Property GV_BonfireIgnited Auto Const
GlobalVariable Property GV_IsRelaxing Auto Const
GlobalVariable Property RoverSystems_AdaptiveCampTutorialDone Auto Const
Hazard Property HZRD_FireDamage Auto Const
Hazard Property HZRD_CampBonus Auto Const
Explosion Property EXPLO_CampFireFireUp Auto Const

ObjectReference MyLinkedRefFire
ObjectReference MyLinkedRefLight01
ObjectReference MyLinkedRefLight02
ObjectReference MyLinkedRefHazard
ObjectReference MyLinkedRefWood
ObjectReference MyLinkedRefSmoke
ObjectReference MyLinkedRefFuel
ObjectReference MyLinkedRefOxygen
ObjectReference MyLinkedRefLanternLight01
ObjectReference MyLinkedRefLanternLight02
ObjectReference MyLinkedRefLanternLight03
ObjectReference MyLinkedRefLanternLight04
ObjectReference MyLinkedRefLanternLight05
ObjectReference MyLinkedRefLanternLight06
ObjectReference MyLinkedRefLanternLight07
ObjectReference MyLinkedRefLanternLight08
ObjectReference MyLinkedRefLanternLight09
ObjectReference MyLinkedRefLanternLight10
ObjectReference MyLinkedRefPaperLantern01
ObjectReference MyLinkedRefPaperLantern02
ObjectReference MyLinkedRefPaperLantern03
ObjectReference MyLinkedRefPaperLantern04
ObjectReference MyLinkedRefPaperLantern05
ObjectReference MyLinkedRefPaperLantern06
ObjectReference MyLinkedRefPaperLantern07
ObjectReference MyLinkedRefPaperLantern08
ObjectReference HazardAreaBonus

Bool BonfireFireUp = False

Event OnInit()
	   MyLinkedRefFire = GetLinkedRef(KWD_BonfireObjectLink)
       MyLinkedRefLight01 = GetLinkedRef(KWD_BonfireObjectLinkLight)
       MyLinkedRefLight02 = GetLinkedRef(KWD_BonfireObjectLinkLight02)
       MyLinkedRefHazard = GetLinkedRef(KWD_BonfireObjectLinkHazard)
       MyLinkedRefSmoke = GetLinkedRef(KWD_BonfireObjectLinkSmoke)
       MyLinkedRefFuel = GetLinkedRef(KWD_BonfireObjectLinkFuel)
       MyLinkedRefOxygen = GetLinkedRef(KWD_BonfireObjectLinkOxygen)	   
	   MyLinkedRefWood = GetLinkedRef(KWD_BonfireObjectLinkWood)
       MyLinkedRefLanternLight01 = GetLinkedRef(KWD_BonfireObjectLinkLanternLight01)
       MyLinkedRefLanternLight02 = GetLinkedRef(KWD_BonfireObjectLinkLanternLight02)
       MyLinkedRefLanternLight03 = GetLinkedRef(KWD_BonfireObjectLinkLanternLight03)
       MyLinkedRefLanternLight04 = GetLinkedRef(KWD_BonfireObjectLinkLanternLight04)
       MyLinkedRefLanternLight05 = GetLinkedRef(KWD_BonfireObjectLinkLanternLight05)
       MyLinkedRefLanternLight06 = GetLinkedRef(KWD_BonfireObjectLinkLanternLight06)
       MyLinkedRefLanternLight07 = GetLinkedRef(KWD_BonfireObjectLinkLanternLight07)
       MyLinkedRefLanternLight08 = GetLinkedRef(KWD_BonfireObjectLinkLanternLight08)
       MyLinkedRefLanternLight09 = GetLinkedRef(KWD_BonfireObjectLinkLanternLight09)
       MyLinkedRefLanternLight10 = GetLinkedRef(KWD_BonfireObjectLinkLanternLight10)
       MyLinkedRefPaperLantern01 = GetLinkedRef(KWD_BonfireObjectLinkPaperLantern01)
       MyLinkedRefPaperLantern02 = GetLinkedRef(KWD_BonfireObjectLinkPaperLantern02)
       MyLinkedRefPaperLantern03 = GetLinkedRef(KWD_BonfireObjectLinkPaperLantern03)
       MyLinkedRefPaperLantern04 = GetLinkedRef(KWD_BonfireObjectLinkPaperLantern04)
       MyLinkedRefPaperLantern05 = GetLinkedRef(KWD_BonfireObjectLinkPaperLantern05)
       MyLinkedRefPaperLantern06 = GetLinkedRef(KWD_BonfireObjectLinkPaperLantern06)
       MyLinkedRefPaperLantern07 = GetLinkedRef(KWD_BonfireObjectLinkPaperLantern07)
       MyLinkedRefPaperLantern08 = GetLinkedRef(KWD_BonfireObjectLinkPaperLantern08)
EndEvent

Event OnHit(ObjectReference akTarget, ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked, string apMaterial)

     If akTarget == Self              		       			 
		  If akProjectile == PRJ_Cutter as Projectile
                If BonfireFireUp == False
	               FireUpBonfire()
             EndIf
       EndIf			  	   
  EndIf     

EndEvent

Event OnCellLoad()
     If BonfireFireUp == True   
	    float[] Offset = new float[3]
	    Offset[0] = 0.0
        Offset[1] = 0.0
        Offset[2] = 0.0
        HazardAreaBonus = Placeatme(HZRD_CampBonus, 1, False, false, true, Offset, none, False)
  EndIf
EndEvent

Event OnTimerGameTime(Int aiTimerID)     
	 If aiTimerID == 0
        ExtinguishBonfire()
  EndIf
EndEvent

Event OnTimer(int aiTimerID)

         If (aiTimerID == 0) 
			MSG_CampfireTutorial02.Show()
	  EndIf

EndEvent

Event OnActivate(ObjectReference akActionRef)

    If akActionRef == PlayerRef

          If BonfireFireUp == True
             CampfireMenu()
             Return
	   EndIf

          If PlayerRef.GetItemCount(MSC_CampingSupplies) <= 0 && PlayerRef.GetItemCount(MSC_CampingSupplies75) <= 0 && PlayerRef.GetItemCount(MSC_CampingSupplies50) <= 0 && PlayerRef.GetItemCount(MSC_CampingSupplies25) <= 0 
	         MSG_CampfireNeedsWood.Show()
	         Return
	  ElseIf PlayerRef.GetItemCount(MSC_CampingSupplies25) >= 1 
             Preparations(MSC_CampingSupplies25, None)
	  ElseIf PlayerRef.GetItemCount(MSC_CampingSupplies50) >= 1 
             Preparations(MSC_CampingSupplies50, MSC_CampingSupplies25)
	  ElseIf PlayerRef.GetItemCount(MSC_CampingSupplies75) >= 1 
             Preparations(MSC_CampingSupplies75, MSC_CampingSupplies50)
	  ElseIf PlayerRef.GetItemCount(MSC_CampingSupplies) >= 1 
             Preparations(MSC_CampingSupplies, MSC_CampingSupplies75) 
	   EndIf
	       If RoverSystems_AdaptiveCampTutorialDone.GetValue() == 0
	          MSG_CampfireTutorial.ShowAsHelpMessage(none, 8.0, 0, 1)
		EndIf
 EndIf

EndEvent

Function Preparations(MiscObject CampSupplies1, MiscObject CampSupplies2)
	     RegisterForHitEvent(self, None, None, None, -1, -1, -1, -1, True)
	     PlayerRef.RemoveItem(CampSupplies1, 1, False, None)
	     PlayerRef.AddItem(CampSupplies2, 1, True)
         MyLinkedRefWood.EnableNoWait()	
		 MyLinkedRefFuel.EnableNoWait()
		 MyLinkedRefOxygen.EnableNoWait()
	     BlockActivation(True, True) 
EndFunction

Function FireUpBonfire()
	     BlockActivation(False, False) 
	     GV_BonfireIgnited.SetValue(1)
		 BonfireFireUp = True
		 Utility.Wait(0.2)
         Placeatme(EXPLO_CampFireFireUp, 1, False, false, true, None, none, False)
		 Utility.Wait(0.1)
         StartTimerGameTime(8.0, 0)
	     MyLinkedRefFire.EnableNoWait()
	     MyLinkedRefLight01.EnableNoWait()
		 MyLinkedRefLight02.EnableNoWait()
		 MyLinkedRefHazard.EnableNoWait()
		 MyLinkedRefSmoke.EnableNoWait()
         MyLinkedRefLanternLight01.EnableNoWait()
         MyLinkedRefLanternLight02.EnableNoWait()
         MyLinkedRefLanternLight03.EnableNoWait()
         MyLinkedRefLanternLight04.EnableNoWait()
         MyLinkedRefLanternLight05.EnableNoWait()
         MyLinkedRefLanternLight06.EnableNoWait()
         MyLinkedRefLanternLight07.EnableNoWait()
         MyLinkedRefLanternLight08.EnableNoWait()
         MyLinkedRefLanternLight09.EnableNoWait()
         MyLinkedRefLanternLight10.EnableNoWait()
         MyLinkedRefPaperLantern01.EnableNoWait()
         MyLinkedRefPaperLantern02.EnableNoWait()
         MyLinkedRefPaperLantern03.EnableNoWait()
         MyLinkedRefPaperLantern04.EnableNoWait()
         MyLinkedRefPaperLantern05.EnableNoWait()
         MyLinkedRefPaperLantern06.EnableNoWait()
         MyLinkedRefPaperLantern07.EnableNoWait()
         MyLinkedRefPaperLantern08.EnableNoWait()		 
	     float[] Offset = new float[3]      
	     Offset[0] = 0.0
         Offset[1] = 0.0
         Offset[2] = 0.0
         HazardAreaBonus = Placeatme(HZRD_CampBonus, 1, False, false, true, Offset, none, False)
	       If RoverSystems_AdaptiveCampTutorialDone.GetValue() == 0
	          StartTimer(3.0, 0)
              RoverSystems_AdaptiveCampTutorialDone.SetValue(1) 
		EndIf
EndFunction

Function ExtinguishBonfire()
         GV_IsRelaxing.SetValue(0)
	     GV_BonfireIgnited.SetValue(0)
	     BonfireFireUp = False
	     Utility.Wait(0.2)
		 CancelTimerGameTime(0)
	     MyLinkedRefFire.DisableNoWait()
	     MyLinkedRefLight01.DisableNoWait()
	     MyLinkedRefLight02.DisableNoWait()		 
	     MyLinkedRefHazard.DisableNoWait()	
	     MyLinkedRefSmoke.DisableNoWait()	
         MyLinkedRefLanternLight01.DisableNoWait()
         MyLinkedRefLanternLight02.DisableNoWait()
         MyLinkedRefLanternLight03.DisableNoWait()
         MyLinkedRefLanternLight04.DisableNoWait()
         MyLinkedRefLanternLight05.DisableNoWait()
         MyLinkedRefLanternLight06.DisableNoWait()
         MyLinkedRefLanternLight07.DisableNoWait()
         MyLinkedRefLanternLight08.DisableNoWait()
         MyLinkedRefLanternLight09.DisableNoWait()
         MyLinkedRefLanternLight10.DisableNoWait()
         MyLinkedRefPaperLantern01.DisableNoWait()
         MyLinkedRefPaperLantern02.DisableNoWait()
         MyLinkedRefPaperLantern03.DisableNoWait()
         MyLinkedRefPaperLantern04.DisableNoWait()
         MyLinkedRefPaperLantern05.DisableNoWait()
         MyLinkedRefPaperLantern06.DisableNoWait()
         MyLinkedRefPaperLantern07.DisableNoWait()
         MyLinkedRefPaperLantern08.DisableNoWait()		 
		 MyLinkedRefFuel.DisableNoWait()
		 MyLinkedRefOxygen.DisableNoWait()
         MyLinkedRefWood.DisableNoWait()
         HazardAreaBonus.Delete()
EndFunction

Function CampfireMenu(Int MenuType = 0, Int Button = 0)
		 			 
		 If Button == -1		 
     
	 ElseIf MenuType == 0		    			
			Button = MSG_CampfireMenu.Show()	 
                   
				   If Button == 0	                     
				      ExtinguishBonfire()
			   ElseIf Button == 1	                     
				      ; Exit
				EndIf
      EndIf

EndFunction