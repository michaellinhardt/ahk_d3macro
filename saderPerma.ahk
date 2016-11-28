#NoEnv
#Singleinstance force
#Persistent
SendMode, Input
boucle = 0

(::
	MouseClick, right
	Sleep 50
	Send r
return

; ACTIVE DESACTIVE LA FONCTION
$^z::
	if (boucle = 0)	{
		Send {SPACE down}
		Send {Z down}
		boucle = 1
		goto Restart
	}
	else if (boucle = 1) {
		Send {Z up}
		Send {SPACE up}
		Click up right
		boucle = 0
	}
return

; RELANCE LE TIMER DE REPETITION
Restart:
	if (boucle = 1) {
		settimer, Bootstrap, 800
	}
return

Macro:
	Send {SPACE down}
	Send {Z down}
	Sleep 100
	MouseClick, right
	Sleep 100
	Send r
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