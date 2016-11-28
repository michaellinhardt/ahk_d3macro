#NoEnv
#Singleinstance force
#Persistent
SendMode, Input
boucle = 0

; ACTIVE DESACTIVE LA FONCTION
PgDn::
	Send {RCTRL down}
	Send {RSHIFT down}
	Send p
	Send {RSHIFT up}
	Send {RCTRL up}
return

