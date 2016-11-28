#NoEnv
#Singleinstance force
#Include getPixel.ahk
#Persistent

RButton::
	MouseGetPos, xpos, ypos
	msgSplash = STOP: CARTE
	SplashTextOn, 150, 1, X: %xpos% Y: %ypos%, a
	WinMove, %msgSplash%, , 5, 5
return