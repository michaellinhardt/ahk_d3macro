#NoEnv
#Singleinstance force
#Persistent
SendMode, Input
boucle = 0

; ACTIVE DESACTIVE LA FONCTION
(::
	if (boucle = 0)	{
		Send {Z down}
		boucle = 1
		goto Restart
	}
	else if (boucle = 1) {
		Send {Z up}
		Click up right
		boucle = 0
	}
return

; RELANCE LE TIMER DE REPETITION
Restart:
	if (boucle = 1) {
		settimer, Bootstrap, 500
	}
return

Macro:
	Send {Z down}
	Sleep 100
	MouseClick, right
	Sleep 100
	Send a
	Sleep 100
	Send e
	Sleep 100
	Send r
	Sleep 100
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