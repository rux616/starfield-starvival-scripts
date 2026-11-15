ScriptName SISA_Economy_DialogueReset Extends Quest

GlobalVariable Property SQ_Doctors_Price_Wounds Auto Const 
GlobalVariable Property SQ_Doctors_Price_Afflictions Auto Const 
GlobalVariable Property SQ_Doctors_Price_Addictions Auto Const 
GlobalVariable Property SQ_Doctors_Price_Everything Auto Const 
GlobalVariable Property SetCostCore Auto Const 
GlobalVariable Property SetCostMidtown Auto Const 
GlobalVariable Property SetCostTraitHome Auto Const 
GlobalVariable Property SetCostShipService Auto Const 
GlobalVariable Property SetCostTradeTower Auto Const 
GlobalVariable Property SetCostSleepcrate Auto Const 
GlobalVariable Property SetCostEnhance Auto Const 
GlobalVariable Property SetCostWell Auto Const

Function ResetServiceDialogues()

            UpdateCurrentInstanceGlobal(SQ_Doctors_Price_Wounds)
            UpdateCurrentInstanceGlobal(SQ_Doctors_Price_Afflictions)
            UpdateCurrentInstanceGlobal(SQ_Doctors_Price_Addictions)
            UpdateCurrentInstanceGlobal(SQ_Doctors_Price_Everything)
            UpdateCurrentInstanceGlobal(SetCostCore)
            UpdateCurrentInstanceGlobal(SetCostMidtown)
            UpdateCurrentInstanceGlobal(SetCostTraitHome)
            UpdateCurrentInstanceGlobal(SetCostTradeTower)
            UpdateCurrentInstanceGlobal(SetCostSleepcrate)
            UpdateCurrentInstanceGlobal(SetCostEnhance)
            UpdateCurrentInstanceGlobal(SetCostWell)

EndFunction
