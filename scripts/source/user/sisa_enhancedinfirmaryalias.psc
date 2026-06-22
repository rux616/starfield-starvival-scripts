Scriptname SISA_EnhancedInfirmaryAlias extends ReferenceAlias

Actor Property PlayerRef Auto Const
FormList Property BedList Auto Const
Message Property MSG_InfirmaryMenu Auto Const
Message Property MSG_InfirmaryNoSupplies Auto Const
Message Property MSG_InfirmaryNoExpertise Auto Const
RefCollectionAlias Property CurrentCrew Auto
ReferenceAlias Property HomeShip Auto Const mandatory
Perk Property CrewMedicinePerk Auto Const
Spell Property Infirmary_CureAll Mandatory Const Auto
Spell Property Infirmary_CureAddictions Mandatory Const Auto
Spell Property Infirmary_AdvancedMedicine Mandatory Const Auto
Location Property CurrentLoc Auto
LocationAlias Property playerShipInteriorLocation Auto Const mandatory
GlobalVariable Property InfirmaryEnhancedTriggerType Auto Const
wwiseevent Property SoundFX_Rehab Auto Const
wwiseevent Property SoundFX_Rehab02 Auto Const
Conditionform Property HasAddiction Auto Const Mandatory
Conditionform Property PlayerIsAMedic Auto Const Mandatory
Perk Property PlayerIsACombatMedic Auto Const
MiscObject Property InfirmarySupplies Auto Const
Keyword Property DialogueSubTopicToSay Auto const
ImageSpaceModifier Property theImod Auto Const
ImageSpaceModifier Property theImod02 Auto Const

float Property SecondsBeforeFade = 0.0 Auto Const
float Property FadeDuration = 4.5 Auto Const

int iHealMax = 999999999
Bool BlockCamera = False

Event OnSit(ObjectReference akFurniture)
    
    CurrentLoc = PlayerRef.GetCurrentlocation()
	
	If InfirmaryEnhancedTriggerType.GetValue() == 0
	      If BedList.HasForm(akFurniture.GetBaseObject())
              Actor MedicCrew = GetDoctor()
			  If MedicCrew  
				 Utility.wait(0.7)
                 ;If CurrentLoc == playerShipInteriorLocation.GetLocation() == True
					If BlockCamera == False
					   InfirmaryMenu(MedicCrew)
                 EndIf
			  ;EndIf
           EndIf
	   EndIf
 EndIf

EndEvent
  
Actor Function GetDoctor()
    
	int i = 0
    
	While i < CurrentCrew.GetCount()
        Actor Medic = CurrentCrew.GetAt(i) as Actor
		   
		   If Medic && Medic.HasPerk(CrewMedicinePerk)
	             If PlayerRef.GetDistance(Medic) <= 100
                    return Medic
	          EndIf
	   ElseIf Medic && PlayerIsAMedic.IsTrue(PlayerRef, None)
              return Medic	   
	   ElseIf Medic && PlayerRef.Hasperk(PlayerIsACombatMedic) == True
              return Medic
        EndIf

        i += 1
    EndWhile
    
	MSG_InfirmaryNoExpertise.Show(0, 0, 0, 0, 0, 0, 0, 0, 0)
	return none

EndFunction

Function InfirmaryMenu(Actor doctor, Int MenuType = 0, Int Button = 0)
		 
		 SpaceShipReference homeShipRef = HomeShip.GetShipRef()         
		 Int InfirmarySupplyAmount = homeShipRef.GetitemCount(InfirmarySupplies)                 	     
	     ObjectReference Bed = PlayerRef.GetFurnitureUsing()	 
		 
		 If Button == -1		 
     
	 ElseIf MenuType == 0
		    Button = MSG_InfirmaryMenu.Show(InfirmarySupplyAmount, 0, 0, 0, 0, 0, 0, 0, 0)	 

	               If Button == 0
                        
						If InfirmarySupplyAmount >= 1
					       homeShipRef.RemoveItem(InfirmarySupplies, 1, True, None)  
						   HealWounds()    
	                 Else
			               MSG_InfirmaryNoSupplies.Show(0, 0, 0, 0, 0, 0, 0, 0, 0)	
			         EndIf
			   
			   ElseIf Button == 1
						
						If InfirmarySupplyAmount >= 1
					       homeShipRef.RemoveItem(InfirmarySupplies, 1, True, None)  
						   HealAfflictions()    
	                 Else
			               MSG_InfirmaryNoSupplies.Show(0, 0, 0, 0, 0, 0, 0, 0, 0)	
			         EndIf
 	           
			   ElseIf Button == 2   
						
						If InfirmarySupplyAmount >= 1
					       homeShipRef.RemoveItem(InfirmarySupplies, 1, True, None)  
						   HealAddictions()    
	                 Else
			               MSG_InfirmaryNoSupplies.Show(0, 0, 0, 0, 0, 0, 0, 0, 0)	
			         EndIf
 	           
			   ElseIf Button == 3 

						If InfirmarySupplyAmount >= 2
					       homeShipRef.RemoveItem(InfirmarySupplies, 2, True, None)  
						   AdministerMedicine()    
	                 Else
			               MSG_InfirmaryNoSupplies.Show(0, 0, 0, 0, 0, 0, 0, 0, 0)	
			         EndIf
							           
			   ElseIf Button == 4 

						If InfirmarySupplyAmount >= 3
					       homeShipRef.RemoveItem(InfirmarySupplies, 3, True, None)  
						   HealEverything()    
	                 Else
			               MSG_InfirmaryNoSupplies.Show(0, 0, 0, 0, 0, 0, 0, 0, 0)	
			         EndIf

			   ElseIf Button == 5 

						If InfirmarySupplyAmount >= 5
					       homeShipRef.RemoveItem(InfirmarySupplies, 5, True, None)  
						   HealEverythingPlus()    
	                 Else
			               MSG_InfirmaryNoSupplies.Show(0, 0, 0, 0, 0, 0, 0, 0, 0)	
			         EndIf

			   ElseIf Button == 6 
                      ; Exit
	            	 		If Bed 
	                           Bed.Activate(PlayerRef, False)
						 EndIf				
				EndIf
      EndIf

EndFunction

Function AdministerMedicine()
     	 
	 Infirmary_AdvancedMedicine.Cast(PlayerRef, PlayerRef) 
	 FadeToBlack()

EndFunction

Function HealWounds()
     	 
	 PlayerRef.RestoreValue(Game.GetHealthAV(), iHealMax)	 
	 FadeToBlack()

EndFunction

Function HealAfflictions()
	 	 
	 Infirmary_CureAll.Cast(PlayerRef, PlayerRef)	 
	 FadeToBlack()

EndFunction

Function HealAddictions()
     
	 PlayerRef.RestoreValue(Game.GetHealthAV(), iHealMax)	 
	 Infirmary_CureAddictions.Cast(PlayerRef, PlayerRef)	 
	 FadeToBlack()

EndFunction

Function HealEverything()
	 
	 Infirmary_CureAll.Cast(PlayerRef, PlayerRef)
	 PlayerRef.RestoreValue(Game.GetHealthAV(), iHealMax)	 
	 
	 If HasAddiction.IsTrue(PlayerRef, None) 
	    Infirmary_CureAddictions.Cast(PlayerRef, PlayerRef)
  EndIf
     
	 FadeToBlack()

EndFunction

Function HealEverythingPlus()
	 
	 Infirmary_CureAll.Cast(PlayerRef, PlayerRef)
	 PlayerRef.RestoreValue(Game.GetHealthAV(), iHealMax)	 
	 
	 If HasAddiction.IsTrue(PlayerRef, None) 
	    Infirmary_CureAddictions.Cast(PlayerRef, PlayerRef)
  EndIf
     
	 Infirmary_AdvancedMedicine.Cast(PlayerRef, PlayerRef)
	 FadeToBlack()

EndFunction

Function FadeToBlack()
     
	 Actor MedicCrew = GetDoctor()	
     ObjectReference Bed = PlayerRef.GetFurnitureUsing()	 
     
	 inputenablelayer DisableControls = inputenablelayer.Create()
	 DisableControls.DisablePlayerControls(True, True, True, False, True, True, True, True, True, True, False)	 
	 Game.FadeOutGame(true, true, SecondsBeforeFade, FadeDuration, true)
	 PlayerRef.SayCustom(DialogueSubTopicToSay, None, False, None)
	 theImod.Apply(1.0)
	 SoundFX_Rehab02.Play(PlayerRef, None, None)
	 Utility.Wait(6.5)
	 	If BlockCamera == False
	       BlockCamera = True
		   Game.PopPlayerTo(Bed, 0, 0, 0, True, False)
	       PlayerRef.SnapIntoInteraction(Bed)	 
     EndIf
	 Utility.Wait(2.0)
	 theImod02.Apply(1.0)
	 PlayerRef.SayCustom(DialogueSubTopicToSay, None, False, None)
	 SoundFX_Rehab.Play(PlayerRef, None, None)
	 Game.FadeOutGame(false, true, SecondsBeforeFade, FadeDuration, False)
	    If BlockCamera == True
		   BlockCamera = False
     EndIf
	 Utility.Wait(7.0)
	 DisableControls.Delete()
	 Utility.Wait(0.1)
	 InfirmaryMenu(MedicCrew)

EndFunction