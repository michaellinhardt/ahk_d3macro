#NoEnv
#Singleinstance force
#Persistent
SendMode, Input
boucle = 0

; ACTIVE DESACTIVE LA FONCTION
(::
	if (boucle = 0)	{
		Send {SPACE down}
		Click down right
		boucle = 1
		goto Restart
	}
	else if (boucle = 1) {
		Send {SPACE up}
		Click up right
		boucle = 0
	}
return

; RELANCE LE TIMER DE REPETITION
Restart:
	if (boucle = 1) {
		settimer, Bootstrap, 4700
	}
return

Macro:
	Send {SPACE down}
	Click down right
	Sleep 100
	MouseClick, left
	goto Restart
return

Bootstrap:
	settimer, Bootstrap, off
	
	IfWinActive, Diablo III
	{	
		if (boucle = 0) {
			goto Restart
		}
		goto Macro
	}
	goto Restart
return