ScriptName SISA_RoverRadioMenu extends ActiveMagicEffect

Actor Property PlayerRef Auto Const
wwiseevent Property SoundEventClick Auto Const
Message Property MSG_RadioRoverMenu Auto Const
Potion Property Potion_RoverRadio Auto Const
GlobalVariable Property GV_RadioStation Auto Const

Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
   	
	  RoverRadioMenu()

EndEvent

Event OnEffectFinish(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, Float afMagnitude, Float afDuration)
   	
	PlayerRef.Additem(Potion_RoverRadio, 1, True)

EndEvent

Function RoverRadioMenu(Int MenuType = 0, Int Button = 0, Bool MenuOpened = True)

  SoundEventClick.Play(PlayerRef, None, None)

	 If Button == -1

 ElseIf MenuType == 0

		button = MSG_RadioRoverMenu.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)

	                                    If (button == 0)
                                            GV_RadioStation.SetValue(1)									
									ElseIf (button == 1)
                                            GV_RadioStation.SetValue(2)	
	                                ElseIf (button == 2)
                                            GV_RadioStation.SetValue(3)																			
									ElseIf (button == 3)
                                            GV_RadioStation.SetValue(4)											
									ElseIf (button == 4)
                                            GV_RadioStation.SetValue(5)	
									ElseIf (button == 5)
                                            GV_RadioStation.SetValue(6)	
	                                ElseIf (button == 6)
                                            GV_RadioStation.SetValue(7)																			
									ElseIf (button == 7)
                                            GV_RadioStation.SetValue(8)										
									ElseIf (button == 8)
                                            GV_RadioStation.SetValue(9)			
									ElseIf (button == 9)
                                            GV_RadioStation.SetValue(10)	
									ElseIf (button == 10)
                                            GV_RadioStation.SetValue(11)	
									ElseIf (button == 11)									   
										    GV_RadioStation.SetValue(12)	                                      									
									ElseIf (button == 12)
                                           ; Exit
                                           MenuOpened = False									 									       
									 EndIf
  EndIf

EndFunction