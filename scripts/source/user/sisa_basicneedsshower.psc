ScriptName SISA_BasicNeedsShower Extends ObjectReference

Actor Property PlayerRef Auto Const
ActorValue Property AV_Hygiene Auto Const
ActorValue Property AV_EnvDMG Auto Const
Message Property MSG_ShoweringComplete Auto
Message Property MSG_TooFarAway Auto
Message Property MSG_ShowerMenu Auto
Keyword Property DialogueSubTopicToSay Auto const
EffectShader Property FX_Wetness Auto Const Mandatory
VisualEffect Property VFX_Water Const Auto 
WwiseEvent Property SFX_Showering Auto Const
MiscObject Property MSC_HygieneProducts Auto Const
Explosion Property EXPLO_Steam Auto Const
Idle Property PlayIdleAnim01 Mandatory Auto Const
Idle Property PlayIdleAnim02 Mandatory Auto Const
Idle Property PlayIdleAnim03 Mandatory Auto Const
Idle Property PlayIdleAnim04 Mandatory Auto Const
Idle Property PlayIdleAnim05 Mandatory Auto Const
Idle Property PlayIdleAnim06 Mandatory Auto Const
Idle Property PlayIdleAnim07 Mandatory Auto Const
Idle Property PlayIdleAnim08 Mandatory Auto Const
Idle Property PlayIdleAnim09 Mandatory Auto Const
Idle Property PlayIdleAnim10 Mandatory Auto Const
ImagespaceModifier Property IMAD_Blur Auto Const
ImagespaceModifier Property IMAD_Blink Auto Const
Spell Property SPL_HygieneProtection Auto Const
Spell Property SPL_FragrandGingerbread Auto Const
GlobalVariable Property GV_HygieneToggle Auto Const
GlobalVariable Property GV_ShowerVFX Auto Const
GlobalVariable Property GV_ShowerClothingRemoval Auto Const
GlobalVariable Property GV_ShowerQuickerProcess Auto Const

Armor StorePlayerClothing3
Armor StorePlayerClothing4
Armor StorePlayerClothing5
Armor StorePlayerClothing6
Armor StorePlayerClothing8
Armor StorePlayerClothing9
Armor StorePlayerClothing10
Armor StorePlayerClothing11
Armor StorePlayerClothing17
Armor StorePlayerClothing19
Armor StorePlayerClothing22
Armor StorePlayerClothing26
Armor StorePlayerClothing27
Armor StorePlayerClothing35
Armor StorePlayerClothing37

Float Property FLT_ProcessTime = 30.0 Auto
Float Property FLT_ProcessTimeQuick = 5.0 Auto
Float Property MaxActivationDistance = 1.4 Auto

Int ShowerSoundInstance = -1

Bool UsingHygiene = false
Bool bIsEnabled = False

InputEnableLayer inputLayer

Event OnActivate(ObjectReference akActionRef)
     Float dist = akActionRef.GetDistance(Self)
     If dist > MaxActivationDistance
        MSG_TooFarAway.Show()
        Return
  EndIf
  ShowerMenu()
EndEvent

Event Actor.OnItemUnequipped(Actor akSender, Form akBaseObject, ObjectReference akReference)

        If akSender == PlayerREF           		  			   
			   If StorePlayerClothing3 == None                  
				  StorePlayerClothing3 = akBaseObject as Armor
           ElseIf StorePlayerClothing4 == None                  
				  StorePlayerClothing4 = akBaseObject as Armor	
           ElseIf StorePlayerClothing5 == None                  
				  StorePlayerClothing5 = akBaseObject as Armor	
           ElseIf StorePlayerClothing6 == None                  
				  StorePlayerClothing6 = akBaseObject as Armor
           ElseIf StorePlayerClothing8 == None
                  StorePlayerClothing8 = akBaseObject as Armor			
           ElseIf StorePlayerClothing9 == None                 
				  StorePlayerClothing9 = akBaseObject as Armor				
           ElseIf StorePlayerClothing10 == None
				  StorePlayerClothing10 = akBaseObject as Armor	
           ElseIf StorePlayerClothing11 == None
				  StorePlayerClothing11 = akBaseObject as Armor	
           ElseIf StorePlayerClothing17 == None
				  StorePlayerClothing17 = akBaseObject as Armor	
           ElseIf StorePlayerClothing19 == None
				  StorePlayerClothing19 = akBaseObject as Armor	
           ElseIf StorePlayerClothing22 == None                  
				  StorePlayerClothing22 = akBaseObject as Armor	
           ElseIf StorePlayerClothing26 == None                  
				  StorePlayerClothing26 = akBaseObject as Armor				
           ElseIf StorePlayerClothing27 == None                  
				  StorePlayerClothing27 = akBaseObject as Armor	
           ElseIf StorePlayerClothing35 == None                  
				  StorePlayerClothing35 = akBaseObject as Armor	
           ElseIf StorePlayerClothing37 == None                  
				  StorePlayerClothing37 = akBaseObject as Armor	
			EndIf            
	 EndIf

EndEvent

Event OnWorkshopObjectPlaced(ObjectReference akReference)
EndEvent

Event OnTimer(int aiTimerID)
	 	  	      
     	     If (aiTimerID == 0) 
                If bIsEnabled == True
				   Float Timer = Utility.RandomFloat(0.3, 1.5)
				   Float Timer02 = Utility.RandomFloat(1.2, 2.4)
				   PlayerRef.Placeatme(EXPLO_Steam, 1, False, false, true, none, none, True)
				   If UsingHygiene == True
				      StartTimer(Timer, 0)
		       Else
				      StartTimer(Timer02, 0)
			    EndIf
			 EndIf

     	 ElseIf (aiTimerID == 1) 
                If bIsEnabled == True
				   Float Timer = Utility.RandomFloat(15.0, 20.0)
				   Float BlinkPower = Utility.RandomFloat(0.3, 0.9)
                   IMAD_Blink.Apply(BlinkPower)
				   StartTimer(Timer, 1)
		     EndIf
     	 
		 ElseIf (aiTimerID == 2) 
                If bIsEnabled == True
				   Float Timer = Utility.RandomFloat(0.15, 0.3)
                   VFX_Water.Play(PlayerRef, 0.3)
				   StartTimer(Timer, 2)
			 EndIf
		  EndIf
EndEvent

Function ShowerMenu(Int MenuType = 0, Int Button = 0)
              	     		 
		 If Button == -1		      
	 ElseIf MenuType == 0
		    Float HygieneStatus = PlayerRef.GetValue(AV_Hygiene)
		    Int HygieneProducts = PlayerRef.GetItemCount(MSC_HygieneProducts)
			Button = MSG_ShowerMenu.Show(HygieneProducts, HygieneStatus)	 	
	               
				   If Button == 0
                      UsingHygiene = False
					  StartShower()			   
			   ElseIf Button == 1
                      UsingHygiene = True
                      StartShower() 	           
			   ElseIf Button == 2 
                      ShowerMenu()
			   ElseIf Button == 3 
                      ; Exit
				EndIf
      EndIf

EndFunction

Function StartShower()
  
     Game.ForceThirdPerson()
     bIsEnabled = True
     inputLayer = InputEnableLayer.Create()    	 	 	 
     inputLayer.DisablePlayerControls()	      
     StoreOutfit()
     StartFX()
        If GV_ShowerQuickerProcess.GetValue() == 0
           Utility.Wait(FLT_ProcessTime)  
     Else
           Utility.Wait(FLT_ProcessTimeQuick)  
	 EndIf
	 StopShower() 
     EquipOutfit()

EndFunction

Function StoreOutfit()
     If GV_ShowerClothingRemoval.GetValue() == 1
        RegisterForRemoteEvent(PlayerREF, "OnItemUnequipped")
  
        StorePlayerClothing3 = None
        StorePlayerClothing4 = None
        StorePlayerClothing5 = None
        StorePlayerClothing6 = None
        StorePlayerClothing8 = None
        StorePlayerClothing9 = None
        StorePlayerClothing10 = None			   
        StorePlayerClothing11 = None	
        StorePlayerClothing17 = None	
        StorePlayerClothing19 = None	
        StorePlayerClothing22 = None
        StorePlayerClothing26 = None			   
        StorePlayerClothing27 = None
        StorePlayerClothing35 = None
        StorePlayerClothing37 = None
   
        PlayerREF.UnequipItemSlot(3) ; unequip armor in the body slot
        PlayerREF.UnequipItemSlot(4) ; unequip armor in the hat slot
        PlayerREF.UnequipItemSlot(5) ; unequip armor in the hat slot
        PlayerREF.UnequipItemSlot(6) ; unequip armor in the hat slot
        PlayerREF.UnequipItemSlot(8) ; unequip armor in the sleeves slot
        PlayerREF.UnequipItemSlot(9) ; unequip head vis slot
        PlayerREF.UnequipItemSlot(10) ; unequip upper body slot	  	  
        PlayerREF.UnequipItemSlot(11) ; unequip armor in the hat slot
        PlayerREF.UnequipItemSlot(17) ; unequip armor in the hat slot
        PlayerREF.UnequipItemSlot(19) ; unequip armor in the hat slot
        PlayerREF.UnequipItemSlot(22) ; unequip chronomark slot
        PlayerREF.UnequipItemSlot(26) ; unequip eyepatch slot
        PlayerREF.UnequipItemSlot(27) ; unequip armor in the hat slot
        PlayerREF.UnequipItemSlot(35) ; unequip armor in the spacesuit slot
        PlayerREF.UnequipItemSlot(37) ; unequip armor in the spacesuit slot
  EndIf
EndFunction

Function EquipOutfit()
     If GV_ShowerClothingRemoval.GetValue() == 1
	          If StorePlayerClothing3 != None
                 PlayerREF.EquipItem(StorePlayerClothing3, absilent=true)
           EndIf
              If StorePlayerClothing4 != None
                 PlayerREF.EquipItem(StorePlayerClothing4, absilent=true)
           EndIf
              If StorePlayerClothing5 != None
                 PlayerREF.EquipItem(StorePlayerClothing5, absilent=true)
           EndIf
              If StorePlayerClothing6 != None
                 PlayerREF.EquipItem(StorePlayerClothing6, absilent=true)
           EndIf
              If StorePlayerClothing8 != None
                 PlayerREF.EquipItem(StorePlayerClothing8, absilent=true)
           EndIf
	          If StorePlayerClothing9 != None
                 PlayerREF.EquipItem(StorePlayerClothing9, absilent=true)
           EndIf
              If StorePlayerClothing10 != None
                 PlayerREF.EquipItem(StorePlayerClothing10, absilent=true)
           EndIf
              If StorePlayerClothing11 != None
                 PlayerREF.EquipItem(StorePlayerClothing11, absilent=true)
           EndIf
              If StorePlayerClothing17 != None
                 PlayerREF.EquipItem(StorePlayerClothing17, absilent=true)
           EndIf
              If StorePlayerClothing19 != None
                 PlayerREF.EquipItem(StorePlayerClothing19, absilent=true)
           EndIf
	          If StorePlayerClothing22 != None
                 PlayerREF.EquipItem(StorePlayerClothing22, absilent=true)
           EndIf
	          If StorePlayerClothing26 != None
                 PlayerREF.EquipItem(StorePlayerClothing26, absilent=true)
           EndIf
	          If StorePlayerClothing27 != None
                 PlayerREF.EquipItem(StorePlayerClothing27, absilent=true)
           EndIf
              If StorePlayerClothing35 != None
                 PlayerREF.EquipItem(StorePlayerClothing35, absilent=true)
           EndIf 
              If StorePlayerClothing37 != None
                 PlayerREF.EquipItem(StorePlayerClothing37, absilent=true)
           EndIf 
           UnregisterForRemoteEvent(PlayerREF, "OnItemUnequipped")
  EndIf
EndFunction

Function StartFX()
         Utility.Wait(1.0)
         PlayerRef.SayCustom(DialogueSubTopicToSay, None, False, None)
		 wwiseevent.StopInstance(ShowerSoundInstance)
         ShowerSoundInstance = -1
         ShowerSoundInstance = SFX_Showering.Play(PlayerRef, None, None)     
            If GV_ShowerVFX.GetValue() == 1
		       FX_Wetness.Play(PlayerRef, -1)
               IMAD_Blur.Apply(0.8)
               StartTimer(0, 0)
               StartTimer(15, 1)
               StartTimer(0, 2)
         EndIf
         Idles()
EndFunction

Function StopShower()         
            If GV_ShowerVFX.GetValue() == 1
		       CancelTimer(0)
               CancelTimer(1)
               FX_Wetness.Stop(PlayerRef)
               IMAD_Blur.Remove()	
               IMAD_Blink.Remove()
         EndIf
         inputLayer.EnablePlayerControls()	
         inputLayer.Delete()   
         wwiseevent.StopInstance(ShowerSoundInstance)
         ShowerSoundInstance = -1				
         bIsEnabled = False  	
	     PlayerRef.SayCustom(DialogueSubTopicToSay, None, False, None)
	      If GV_HygieneToggle.GetValue() == 1
		       If UsingHygiene == False
                  PlayerRef.RestoreValue(AV_Hygiene, 999)	
                  PlayerRef.DamageValue(AV_Hygiene, 25)
	              PlayerRef.RestoreValue(AV_EnvDMG, 5)
            Else	
                  PlayerRef.RemoveItem(MSC_HygieneProducts, 1, False, None)
	              PlayerRef.RestoreValue(AV_Hygiene, 999)	
	              PlayerRef.RestoreValue(AV_EnvDMG, 30)	
                  SPL_HygieneProtection.Cast(PlayerRef, PlayerRef)
	        EndIf 
      Else
	           If UsingHygiene == True
			      SPL_FragrandGingerbread.Cast(PlayerRef, PlayerRef)
	        EndIf
	  EndIf
	  MSG_ShoweringComplete.Show()
EndFunction

Function Idles()
             Int VariationsPhase1 = Utility.RandomInt(0, 7)
             If VariationsPhase1 == 0
		        Utility.Wait(0.1)
                PlayerRef.PlayIdle(PlayIdleAnim01) 
         ElseIf VariationsPhase1 == 1
		        Utility.Wait(0.1)
                PlayerRef.PlayIdle(PlayIdleAnim02) 
         ElseIf VariationsPhase1 == 2
		        Utility.Wait(0.1)
                PlayerRef.PlayIdle(PlayIdleAnim03) 
         ElseIf VariationsPhase1 == 3
		        Utility.Wait(0.1)
                PlayerRef.PlayIdle(PlayIdleAnim04) 
         ElseIf VariationsPhase1 == 4
		        Utility.Wait(0.1)
                PlayerRef.PlayIdle(PlayIdleAnim05) 
         ElseIf VariationsPhase1 == 5
		        Utility.Wait(0.1)
                PlayerRef.PlayIdle(PlayIdleAnim06) 
         ElseIf VariationsPhase1 == 6
		        Utility.Wait(0.1)
                PlayerRef.PlayIdle(PlayIdleAnim07) 
         ElseIf VariationsPhase1 == 7
		        Utility.Wait(0.1)
                PlayerRef.PlayIdle(PlayIdleAnim08)
          EndIf
          If GV_ShowerQuickerProcess.GetValue() == 0        
		     Utility.Wait(6.0)
             Int VariationsPhase2 = Utility.RandomInt(0, 1)
             If VariationsPhase2 == 0
		        Utility.Wait(0.1)
                PlayerRef.PlayIdle(PlayIdleAnim09) 
         ElseIf VariationsPhase2 == 1
		        Utility.Wait(0.1)
                PlayerRef.PlayIdle(PlayIdleAnim10) 
          EndIf
       EndIf
EndFunction