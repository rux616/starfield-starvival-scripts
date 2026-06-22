Scriptname SISA_AlcoholSober extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
ActorValue Property AV_Drunkenness Auto Const
Spell Property SPL_HangoverStage1 Auto Const
Spell Property SPL_HangoverStage2 Auto Const
Spell Property SPL_HangoverStage3 Auto Const
Armor Property DrunkennessTokenStage1 Auto Const
Armor Property DrunkennessTokenStage2 Auto Const
Armor Property DrunkennessTokenStage3 Auto Const
MagicEffect Property TierCheck01 Auto Const
MagicEffect Property TierCheck02 Auto Const
MagicEffect Property TierCheck03 Auto Const
GlobalVariable Property SoberTimer Auto Const
GlobalVariable Property SoberAmount Auto Const
GlobalVariable Property SoberCheck Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, float afMagnitude, float afDuration)
	  
	  Float Timer = SoberTimer.GetValue()
	  Float Check = SoberCheck.GetValue()	  
	  
	  StartTimer(Timer, 0)
	  StartTimer(Check, 1)

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, float afMagnitude, float afDuration)
			     
		   If PlayerRef.GetItemCount(DrunkennessTokenStage3) > 0 && PlayerRef.GetItemCount(DrunkennessTokenStage2) > 0 && PlayerRef.GetItemCount(DrunkennessTokenStage1) > 0
		      		    If PlayerRef.HasMagicEffect(TierCheck02) == False && PlayerRef.HasMagicEffect(TierCheck01) == False			               
						   SPL_HangoverStage3.Cast(PlayerRef, PlayerRef)
	                ElseIf PlayerRef.HasMagicEffect(TierCheck02) == True
						   PlayerRef.DispelSpell(SPL_HangoverStage2)
						   SPL_HangoverStage3.Cast(PlayerRef, PlayerRef)
	                ElseIf PlayerRef.HasMagicEffect(TierCheck01) == True						   
						   PlayerRef.DispelSpell(SPL_HangoverStage1)
						   SPL_HangoverStage3.Cast(PlayerRef, PlayerRef)  
	                 EndIf
	   ElseIf PlayerRef.GetItemCount(DrunkennessTokenStage2) > 0 && PlayerRef.GetItemCount(DrunkennessTokenStage1) > 0
		      		    If PlayerRef.HasMagicEffect(TierCheck01) == False
						   SPL_HangoverStage2.Cast(PlayerRef, PlayerRef)
			         Else
						   PlayerRef.DispelSpell(SPL_HangoverStage1)
						   SPL_HangoverStage2.Cast(PlayerRef, PlayerRef)		   
	                 EndIf
	   ElseIf PlayerRef.GetItemCount(DrunkennessTokenStage1) > 0
		      		    If PlayerRef.HasMagicEffect(TierCheck03) == False && PlayerRef.HasMagicEffect(TierCheck02) == False
		                   SPL_HangoverStage1.Cast(PlayerRef, PlayerRef)		   
	                 EndIf
	    EndIf   
		
		   If PlayerRef.GetItemCount(DrunkennessTokenStage3) > 0
		      PlayerRef.RemoveItem(DrunkennessTokenStage3, PlayerRef.GetItemCount(DrunkennessTokenStage3), True)
        EndIf
		   
		   If PlayerRef.GetItemCount(DrunkennessTokenStage2) > 0
		      PlayerRef.RemoveItem(DrunkennessTokenStage2, PlayerRef.GetItemCount(DrunkennessTokenStage2), True)
	    EndIf
		   
		   If PlayerRef.GetItemCount(DrunkennessTokenStage1) > 0
		      PlayerRef.RemoveItem(DrunkennessTokenStage1, PlayerRef.GetItemCount(DrunkennessTokenStage1), True)		   
	    EndIf		   
		   
		      CancelTimer(0)
		      CancelTimer(1)

EndEvent

Event OnTimer(int aiTimerID)
	   
	   Float Timer = SoberTimer.GetValue()
	   Float Amount = SoberAmount.GetValue()
	   Float Check = SoberCheck.GetValue()       
       
	   If aiTimerID == 0
          
		  PlayerRef.DamageValue(AV_Drunkenness, Amount)
	      StartTimer(Timer, 0)	

   ElseIf aiTimerID == 1
		  
		  If PlayerRef.GetValue(AV_Drunkenness) < 50
		          If PlayerRef.GetItemCount(DrunkennessTokenStage1) <= 0
		             PlayerRef.AddItem(DrunkennessTokenStage1, 1, True)		   
			   EndIf			  
	      
	  ElseIf PlayerRef.GetValue(AV_Drunkenness) >= 50 && PlayerRef.GetValue(AV_Drunkenness) < 85		  
		          
				  If PlayerRef.GetItemCount(DrunkennessTokenStage1) <= 0
		             PlayerRef.AddItem(DrunkennessTokenStage1, 1, True)		   
			   EndIf	
		          
				  If PlayerRef.GetItemCount(DrunkennessTokenStage2) <= 0
		             PlayerRef.AddItem(DrunkennessTokenStage2, 1, True)		   
	           EndIf		  
	      
	  ElseIf PlayerRef.GetValue(AV_Drunkenness) >= 85	  
				  
				  If PlayerRef.GetItemCount(DrunkennessTokenStage1) <= 0
		             PlayerRef.AddItem(DrunkennessTokenStage1, 1, True)		   
			   EndIf
		          
				  If PlayerRef.GetItemCount(DrunkennessTokenStage2) <= 0
		             PlayerRef.AddItem(DrunkennessTokenStage2, 1, True)		   
	           EndIf
		          
				  If PlayerRef.GetItemCount(DrunkennessTokenStage3) <= 0
		             PlayerRef.AddItem(DrunkennessTokenStage3, 1, True)		   
	           EndIf			  		  
	   EndIf

		  If PlayerRef.GetItemCount(DrunkennessTokenStage3) > 0 && PlayerRef.GetItemCount(DrunkennessTokenStage2) > 0 && PlayerRef.GetItemCount(DrunkennessTokenStage1) > 0
		     CancelTimer(1)
	   Else
			 StartTimer(Check, 1)
	   EndIf
		     	       			  	 
	EndIf

EndEvent
