Scriptname SISA_DecoyActor extends Actor

Spell Property SPL_DecoyAOE Auto Const
EffectShader Property EFS_Ghost Auto Const
Explosion Property EXPLO_Cloud Auto Const

Event OnInit()
	  Self.Placeatme(EXPLO_Cloud, 1, False, false, true, none, none, True)
	  EFS_Ghost.Play(self, -1)
	  SetAngle(0, 0, GetAngleZ())
	  StartTimer(30, 0)
EndEvent

Event OnTimer(int aiTimerID)
	       	 
		     If (aiTimerID == 0)
                Self.Disable(False)
 		        Self.Delete()
	            Self.Placeatme(EXPLO_Cloud, 1, False, false, true, none, none, True)
		  EndIf

EndEvent