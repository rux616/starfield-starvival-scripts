ScriptName SISA_HarsherAfflictions extends Quest

Actor Property PlayerRef Auto Const
GlobalVariable Property GV_AFFL_Symp_Asphyxiation Auto Const
GlobalVariable Property GV_AFFL_Symp_Bleeding01 Auto Const
GlobalVariable Property GV_AFFL_Symp_Bleeding02 Auto Const
GlobalVariable Property GV_AFFL_Symp_Blisters Auto Const
GlobalVariable Property GV_AFFL_Symp_Confusion Auto Const
GlobalVariable Property GV_AFFL_Symp_Cough Auto Const
GlobalVariable Property GV_AFFL_Symp_CoughMinTime Auto Const
GlobalVariable Property GV_AFFL_Symp_CoughMaxTime Auto Const
GlobalVariable Property GV_AFFL_Symp_Cramping Auto Const
GlobalVariable Property GV_AFFL_Symp_Crippled Auto Const
GlobalVariable Property GV_AFFL_Symp_DiffBreathing Auto Const
GlobalVariable Property GV_AFFL_Symp_Fever Auto Const
GlobalVariable Property GV_AFFL_Symp_IntensePain Auto Const
GlobalVariable Property GV_AFFL_Symp_InternalBleeding Auto Const
GlobalVariable Property GV_AFFL_Symp_InternalBleedingTime Auto Const
GlobalVariable Property GV_AFFL_Symp_JointPain Auto Const
GlobalVariable Property GV_AFFL_Symp_Migrain Auto Const
GlobalVariable Property GV_AFFL_Symp_Nausea Auto Const
GlobalVariable Property GV_AFFL_Symp_NauseaPreset Auto Const
GlobalVariable Property GV_AFFL_Symp_Pain01 Auto Const
GlobalVariable Property GV_AFFL_Symp_Pain02 Auto Const
GlobalVariable Property GV_AFFL_Symp_Shock Auto Const
GlobalVariable Property GV_AFFL_Symp_Soreness Auto Const
GlobalVariable Property GV_AFFL_Symp_Swelling Auto Const
GlobalVariable Property GV_AFFL_Symp_Unbalanced01 Auto Const
GlobalVariable Property GV_AFFL_Symp_Unbalanced02 Auto Const
GlobalVariable Property GV_AFFL_Symp_ConcussionTimerMIN Auto Const
GlobalVariable Property GV_AFFL_Symp_ConcussionTimerMAX Auto Const
GlobalVariable Property GV_AFFL_Symp_LimbAfflictionChance Auto Const
GlobalVariable Property GV_AFFL_Symp_Weakness Auto Const
GlobalVariable Property GV_AFFL_Symp_DifficultyPreset Auto Const
GlobalVariable Property GV_AFFL_Symp_DeathToggle Auto Const
Spell Property ENVSystem_AfflictionPool Auto Const 

Function HarsherAfflictionsStart()         
		 AfflictionDiffucultyPresetStarborn()
EndFunction

Function HarsherAfflictionsStop()
		 AfflictionDiffucultyPresetVanilla()
EndFunction

Function Update()
      If GV_AFFL_Symp_DifficultyPreset.GetValue() == 0
         GV_AFFL_Symp_ConcussionTimerMIN.SetValue(60.0)
	     GV_AFFL_Symp_ConcussionTimerMAX.SetValue(100.0)
         GV_AFFL_Symp_LimbAfflictionChance.SetValue(2.0)
  ElseIf GV_AFFL_Symp_DifficultyPreset.GetValue() == 1
         GV_AFFL_Symp_ConcussionTimerMIN.SetValue(50.0)
	     GV_AFFL_Symp_ConcussionTimerMAX.SetValue(90.0)
         GV_AFFL_Symp_LimbAfflictionChance.SetValue(4.0)
  ElseIf GV_AFFL_Symp_DifficultyPreset.GetValue() == 2
         GV_AFFL_Symp_ConcussionTimerMIN.SetValue(40.0)
	     GV_AFFL_Symp_ConcussionTimerMAX.SetValue(70.0)
         GV_AFFL_Symp_LimbAfflictionChance.SetValue(6.0)
  ElseIf GV_AFFL_Symp_DifficultyPreset.GetValue() == 3
         GV_AFFL_Symp_ConcussionTimerMIN.SetValue(30.0)
	     GV_AFFL_Symp_ConcussionTimerMAX.SetValue(50.0)
         GV_AFFL_Symp_LimbAfflictionChance.SetValue(10.0)
  ElseIf GV_AFFL_Symp_DifficultyPreset.GetValue() == 4
         GV_AFFL_Symp_ConcussionTimerMIN.SetValue(15.0)
	     GV_AFFL_Symp_ConcussionTimerMAX.SetValue(30.0)
         GV_AFFL_Symp_LimbAfflictionChance.SetValue(15.0)
   EndIf
		 RefreshAfflictionSystem()
EndFunction

Function RefreshAfflictionSystem()

       If (PlayerRef.HasSpell(ENVSystem_AfflictionPool))
           PlayerRef.RemoveSpell(ENVSystem_AfflictionPool)
    EndIf    
	Utility.Wait(1.0)  
    PlayerRef.AddSpell(ENVSystem_AfflictionPool, False)

EndFunction

Function AfflictionDeath()
    
	If GV_AFFL_Symp_DeathToggle.GetValue() == 0 
 	   GV_AFFL_Symp_DeathToggle.SetValue(0.2)   
ElseIf GV_AFFL_Symp_DeathToggle.GetValue() == 0.2  
       GV_AFFL_Symp_DeathToggle.SetValue(0)
 EndIf

EndFunction

Function AfflictionDiffucultyPresetVanilla()

    GV_AFFL_Symp_DifficultyPreset.SetValue(0)
    GV_AFFL_Symp_DeathToggle.SetValue(0.2)
    
	GV_AFFL_Symp_Asphyxiation.SetValue(0.5)          ; O2 capacity greatly reduced
    GV_AFFL_Symp_Bleeding01.SetValue(3)              ; Melee Atacking, Sprinting and melee attacks cause Health damage
    GV_AFFL_Symp_Bleeding02.SetValue(1.5)            ; Sprinting, Sprinting and melee attacks cause Health damage
    GV_AFFL_Symp_Blisters.SetValue(0.15)             ; Melee attacks deal less damage
    GV_AFFL_Symp_Confusion.SetValue(0.25)            ; Ship weapons cost more to fire while in Targeting Mode
    GV_AFFL_Symp_Cough.SetValue(25)                  ; Sporadic O2 damage and detection event
    GV_AFFL_Symp_CoughMinTime.SetValue(60)           ; Min Time between coughing
    GV_AFFL_Symp_CoughMaxTime.SetValue(120)          ; Max Time between coughing
    GV_AFFL_Symp_Cramping.SetValue(1)                ; Movement prevents O2 recovery 
    GV_AFFL_Symp_Crippled.SetValue(10)               ; Running uses O2 and sprinting immediately exhausts O2
    GV_AFFL_Symp_DiffBreathing.SetValue(50)          ; O2 recovery rate is reduced
    GV_AFFL_Symp_Fever.SetValue(0.3)                 ; Increased O2 usage
    GV_AFFL_Symp_IntensePain.SetValue(0.10)          ; Incoming damage is increased 
    GV_AFFL_Symp_InternalBleeding.SetValue(0.15)     ; Periodic Health damage
    GV_AFFL_Symp_InternalBleedingTime.SetValue(120)  ; Time Between Periodic Health damage
    GV_AFFL_Symp_JointPain.SetValue(1)               ; Sneaking uses O2
    GV_AFFL_Symp_Migrain.SetValue(2)                 ; Aiming uses O2
    GV_AFFL_Symp_Nausea.SetValue(0.25)               ; Food and drink are less effective
    GV_AFFL_Symp_NauseaPreset.SetValue(0)            ; Difficulty Preset
    GV_AFFL_Symp_Pain01.SetValue(25)                 ; Max Oxygen, Taking Health damage expends O2
    GV_AFFL_Symp_Pain02.SetValue(1)                  ; Min Oxygen, Taking Health damage expends O2
    GV_AFFL_Symp_Shock.SetValue(0.5)                 ; Health slowly drains to 10%
    GV_AFFL_Symp_Soreness.SetValue(3)                ; Melee attacks use O2
    GV_AFFL_Symp_Swelling.SetValue(0.25)             ; Increased carry weight for equipped items
    GV_AFFL_Symp_Unbalanced01.SetValue(0.5)          ; Aim Accuracy, Melee damage and ranged accuracy reduced 
    GV_AFFL_Symp_Unbalanced02.SetValue(0.3)          ; Melee Damage, Melee damage and ranged accuracy reduced
    GV_AFFL_Symp_Weakness.SetValue(0.25)             ; Reduced Carry Capacity
    GV_AFFL_Symp_ConcussionTimerMIN.SetValue(60.0)   ; Activation frequency of double vision (MIN)
	GV_AFFL_Symp_ConcussionTimerMAX.SetValue(100.0)  ; Activation frequency of double vision (MAX)
    GV_AFFL_Symp_LimbAfflictionChance.SetValue(2.0)  ; OnHit Limb Affliction chance  
	
	RefreshAfflictionSystem()

EndFunction

Function AfflictionDiffucultyPresetNovice()

    GV_AFFL_Symp_DifficultyPreset.SetValue(1)
    GV_AFFL_Symp_DeathToggle.SetValue(0)
    
	GV_AFFL_Symp_Asphyxiation.SetValue(0.6)          ; O2 capacity greatly reduced
    GV_AFFL_Symp_Bleeding01.SetValue(5)              ; Melee Atacking, Sprinting and melee attacks cause Health damage
    GV_AFFL_Symp_Bleeding02.SetValue(3)              ; Sprinting, Sprinting and melee attacks cause Health damage
    GV_AFFL_Symp_Blisters.SetValue(0.3)              ; Melee attacks deal less damage
    GV_AFFL_Symp_Confusion.SetValue(0.5)             ; Ship weapons cost more to fire while in Targeting Mode
    GV_AFFL_Symp_Cough.SetValue(40)                  ; Sporadic O2 damage and detection event
    GV_AFFL_Symp_CoughMinTime.SetValue(50)           ; Min Time between coughing
    GV_AFFL_Symp_CoughMaxTime.SetValue(100)          ; Max Time between coughing
    GV_AFFL_Symp_Cramping.SetValue(1.3)              ; Movement prevents O2 recovery 
    GV_AFFL_Symp_Crippled.SetValue(14)               ; Running uses O2 and sprinting immediately exhausts O2
    GV_AFFL_Symp_DiffBreathing.SetValue(55)          ; O2 recovery rate is reduced
    GV_AFFL_Symp_Fever.SetValue(0.5)                 ; Increased O2 usage
    GV_AFFL_Symp_IntensePain.SetValue(0.20)          ; Incoming damage is increased 
    GV_AFFL_Symp_InternalBleeding.SetValue(0.2)      ; Periodic Health damage
    GV_AFFL_Symp_InternalBleedingTime.SetValue(100)  ; Time Between Periodic Health damage
    GV_AFFL_Symp_JointPain.SetValue(1.5)             ; Sneaking uses O2
    GV_AFFL_Symp_Migrain.SetValue(3)                 ; Aiming uses O2
    GV_AFFL_Symp_Nausea.SetValue(0.4)                ; Food and drink are less effective
    GV_AFFL_Symp_NauseaPreset.SetValue(1)            ; Difficulty Preset
    GV_AFFL_Symp_Pain01.SetValue(35)                 ; Max Oxygen, Taking Health damage expends O2
    GV_AFFL_Symp_Pain02.SetValue(3)                  ; Min Oxygen, Taking Health damage expends O2
    GV_AFFL_Symp_Shock.SetValue(0.9)                 ; Health slowly drains to 10%
    GV_AFFL_Symp_Soreness.SetValue(5)                ; Melee attacks use O2
    GV_AFFL_Symp_Swelling.SetValue(0.4)              ; Increased carry weight for equipped items
    GV_AFFL_Symp_Unbalanced01.SetValue(0.6)          ; Aim Accuracy, Melee damage and ranged accuracy reduced 
    GV_AFFL_Symp_Unbalanced02.SetValue(0.5)          ; Melee Damage, Melee damage and ranged accuracy reduced
    GV_AFFL_Symp_Weakness.SetValue(0.3)              ; Reduced Carry Capacity
    GV_AFFL_Symp_ConcussionTimerMIN.SetValue(50.0)   ; Activation frequency of double vision (MIN)
	GV_AFFL_Symp_ConcussionTimerMAX.SetValue(90.0)   ; Activation frequency of double vision (MAX)
    GV_AFFL_Symp_LimbAfflictionChance.SetValue(4.0)  ; OnHit Limb Affliction chance  
    
	RefreshAfflictionSystem()

EndFunction

Function AfflictionDiffucultyPresetStarborn()
 
    GV_AFFL_Symp_DifficultyPreset.SetValue(2)
    GV_AFFL_Symp_DeathToggle.SetValue(0)
    
	GV_AFFL_Symp_Asphyxiation.SetValue(0.7)          ; O2 capacity greatly reduced
    GV_AFFL_Symp_Bleeding01.SetValue(9)              ; Melee Atacking, Sprinting and melee attacks cause Health damage
    GV_AFFL_Symp_Bleeding02.SetValue(6)              ; Sprinting, Sprinting and melee attacks cause Health damage
    GV_AFFL_Symp_Blisters.SetValue(0.5)              ; Melee attacks deal less damage
    GV_AFFL_Symp_Confusion.SetValue(0.7)             ; Ship weapons cost more to fire while in Targeting Mode
    GV_AFFL_Symp_Cough.SetValue(60)                  ; Sporadic O2 damage and detection event
    GV_AFFL_Symp_CoughMinTime.SetValue(30)           ; Min Time between coughing
    GV_AFFL_Symp_CoughMaxTime.SetValue(60)           ; Max Time between coughing
    GV_AFFL_Symp_Cramping.SetValue(1.8)              ; Movement prevents O2 recovery 
    GV_AFFL_Symp_Crippled.SetValue(18)               ; Running uses O2 and sprinting immediately exhausts O2
    GV_AFFL_Symp_DiffBreathing.SetValue(60)          ; O2 recovery rate is reduced
    GV_AFFL_Symp_Fever.SetValue(0.7)                 ; Increased O2 usage
    GV_AFFL_Symp_IntensePain.SetValue(0.35)          ; Incoming damage is increased 
    GV_AFFL_Symp_InternalBleeding.SetValue(0.25)     ; Periodic Health damage
    GV_AFFL_Symp_InternalBleedingTime.SetValue(80)   ; Time Between Periodic Health damage
    GV_AFFL_Symp_JointPain.SetValue(2)               ; Sneaking uses O2
    GV_AFFL_Symp_Migrain.SetValue(4)                 ; Aiming uses O2
    GV_AFFL_Symp_Nausea.SetValue(0.6)                ; Food and drink are less effective
    GV_AFFL_Symp_NauseaPreset.SetValue(2)            ; Difficulty Preset
    GV_AFFL_Symp_Pain01.SetValue(40)                 ; Max Oxygen, Taking Health damage expends O2
    GV_AFFL_Symp_Pain02.SetValue(7)                  ; Min Oxygen, Taking Health damage expends O2
    GV_AFFL_Symp_Shock.SetValue(1.4)                 ; Health slowly drains to 10%
    GV_AFFL_Symp_Soreness.SetValue(8)                ; Melee attacks use O2
    GV_AFFL_Symp_Swelling.SetValue(0.7)              ; Increased carry weight for equipped items
    GV_AFFL_Symp_Unbalanced01.SetValue(0.7)          ; Aim Accuracy, Melee damage and ranged accuracy reduced 
    GV_AFFL_Symp_Unbalanced02.SetValue(0.6)          ; Melee Damage, Melee damage and ranged accuracy reduced
    GV_AFFL_Symp_Weakness.SetValue(0.35)             ; Reduced Carry Capacity
    GV_AFFL_Symp_ConcussionTimerMIN.SetValue(40.0)   ; Activation frequency of double vision (MIN)
	GV_AFFL_Symp_ConcussionTimerMAX.SetValue(70.0)   ; Activation frequency of double vision (MAX)
    GV_AFFL_Symp_LimbAfflictionChance.SetValue(6.0)  ; OnHit Limb Affliction chance  
    
	RefreshAfflictionSystem()

EndFunction

Function AfflictionDiffucultyPresetStardusk()

    GV_AFFL_Symp_DifficultyPreset.SetValue(3)
    GV_AFFL_Symp_DeathToggle.SetValue(0)
    
	GV_AFFL_Symp_Asphyxiation.SetValue(0.8)          ; O2 capacity greatly reduced
    GV_AFFL_Symp_Bleeding01.SetValue(10)             ; Melee Atacking, Sprinting and melee attacks cause Health damage
    GV_AFFL_Symp_Bleeding02.SetValue(7)              ; Sprinting, Sprinting and melee attacks cause Health damage
    GV_AFFL_Symp_Blisters.SetValue(0.6)              ; Melee attacks deal less damage
    GV_AFFL_Symp_Confusion.SetValue(0.8)             ; Ship weapons cost more to fire while in Targeting Mode
    GV_AFFL_Symp_Cough.SetValue(80)                  ; Sporadic O2 damage and detection event
    GV_AFFL_Symp_CoughMinTime.SetValue(15)           ; Min Time between coughing
    GV_AFFL_Symp_CoughMaxTime.SetValue(30)           ; Max Time between coughing
    GV_AFFL_Symp_Cramping.SetValue(2.4)              ; Movement prevents O2 recovery 
    GV_AFFL_Symp_Crippled.SetValue(20)               ; Running uses O2 and sprinting immediately exhausts O2
    GV_AFFL_Symp_DiffBreathing.SetValue(65)          ; O2 recovery rate is reduced
    GV_AFFL_Symp_Fever.SetValue(0.8)                 ; Increased O2 usage
    GV_AFFL_Symp_IntensePain.SetValue(0.45)          ; Incoming damage is increased 
    GV_AFFL_Symp_InternalBleeding.SetValue(0.30)     ; Periodic Health damage
    GV_AFFL_Symp_InternalBleedingTime.SetValue(60)   ; Time Between Periodic Health damage
    GV_AFFL_Symp_JointPain.SetValue(4)               ; Sneaking uses O2
    GV_AFFL_Symp_Migrain.SetValue(5)                 ; Aiming uses O2
    GV_AFFL_Symp_Nausea.SetValue(0.8)                ; Food and drink are less effective
    GV_AFFL_Symp_NauseaPreset.SetValue(3)            ; Difficulty Preset
    GV_AFFL_Symp_Pain01.SetValue(47)                 ; Max Oxygen, Taking Health damage expends O2
    GV_AFFL_Symp_Pain02.SetValue(9)                  ; Min Oxygen, Taking Health damage expends O2
    GV_AFFL_Symp_Shock.SetValue(1.8)                 ; Health slowly drains to 10%
    GV_AFFL_Symp_Soreness.SetValue(10)               ; Melee attacks use O2
    GV_AFFL_Symp_Swelling.SetValue(0.9)              ; Increased carry weight for equipped items
    GV_AFFL_Symp_Unbalanced01.SetValue(0.8)          ; Aim Accuracy, Melee damage and ranged accuracy reduced 
    GV_AFFL_Symp_Unbalanced02.SetValue(0.7)          ; Melee Damage, Melee damage and ranged accuracy reduced
    GV_AFFL_Symp_Weakness.SetValue(0.4)              ; Reduced Carry Capacity
    GV_AFFL_Symp_ConcussionTimerMIN.SetValue(30.0)   ; Activation frequency of double vision (MIN)
	GV_AFFL_Symp_ConcussionTimerMAX.SetValue(50.0)   ; Activation frequency of double vision (MAX)
    GV_AFFL_Symp_LimbAfflictionChance.SetValue(10.0) ; OnHit Limb Affliction chance      
	
	RefreshAfflictionSystem()

EndFunction

Function AfflictionDiffucultyPresetStarNightmare()

    GV_AFFL_Symp_DifficultyPreset.SetValue(4)
    GV_AFFL_Symp_DeathToggle.SetValue(0)
    
	GV_AFFL_Symp_Asphyxiation.SetValue(0.9)          ; O2 capacity greatly reduced
    GV_AFFL_Symp_Bleeding01.SetValue(12)             ; Melee Atacking, Sprinting and melee attacks cause Health damage
    GV_AFFL_Symp_Bleeding02.SetValue(8)              ; Sprinting, Sprinting and melee attacks cause Health damage
    GV_AFFL_Symp_Blisters.SetValue(0.75)             ; Melee attacks deal less damage
    GV_AFFL_Symp_Confusion.SetValue(0.9)             ; Ship weapons cost more to fire while in Targeting Mode
    GV_AFFL_Symp_Cough.SetValue(100)                 ; Sporadic O2 damage and detection event
    GV_AFFL_Symp_CoughMinTime.SetValue(10)           ; Min Time between coughing
    GV_AFFL_Symp_CoughMaxTime.SetValue(20)           ; Max Time between coughing
    GV_AFFL_Symp_Cramping.SetValue(2.6)              ; Movement prevents O2 recovery 
    GV_AFFL_Symp_Crippled.SetValue(24)               ; Running uses O2 and sprinting immediately exhausts O2
    GV_AFFL_Symp_DiffBreathing.SetValue(70)          ; O2 recovery rate is reduced
    GV_AFFL_Symp_Fever.SetValue(0.9)                 ; Increased O2 usage
    GV_AFFL_Symp_IntensePain.SetValue(0.6)           ; Incoming damage is increased 
    GV_AFFL_Symp_InternalBleeding.SetValue(0.35)     ; Periodic Health damage
    GV_AFFL_Symp_InternalBleedingTime.SetValue(45)   ; Time Between Periodic Health damage
    GV_AFFL_Symp_JointPain.SetValue(5)               ; Sneaking uses O2
    GV_AFFL_Symp_Migrain.SetValue(6)                 ; Aiming uses O2
    GV_AFFL_Symp_Nausea.SetValue(1)                  ; Food and drink are less effective
    GV_AFFL_Symp_NauseaPreset.SetValue(4)            ; Difficulty Preset
    GV_AFFL_Symp_Pain01.SetValue(60)                 ; Max Oxygen, Taking Health damage expends O2
    GV_AFFL_Symp_Pain02.SetValue(14)                 ; Min Oxygen, Taking Health damage expends O2
    GV_AFFL_Symp_Shock.SetValue(2.2)                 ; Health slowly drains to 10%
    GV_AFFL_Symp_Soreness.SetValue(12)               ; Melee attacks use O2
    GV_AFFL_Symp_Swelling.SetValue(0.9)              ; Increased carry weight for equipped items
    GV_AFFL_Symp_Unbalanced01.SetValue(0.9)          ; Aim Accuracy, Melee damage and ranged accuracy reduced 
    GV_AFFL_Symp_Unbalanced02.SetValue(0.8)          ; Melee Damage, Melee damage and ranged accuracy reduced
    GV_AFFL_Symp_Weakness.SetValue(0.5)              ; Reduced Carry Capacity
    GV_AFFL_Symp_ConcussionTimerMIN.SetValue(15.0)   ; Activation frequency of double vision (MIN)
	GV_AFFL_Symp_ConcussionTimerMAX.SetValue(30.0)   ; Activation frequency of double vision (MAX)
    GV_AFFL_Symp_LimbAfflictionChance.SetValue(15.0) ; OnHit Limb Affliction chance  
    
	RefreshAfflictionSystem()

EndFunction