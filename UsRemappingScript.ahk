;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; AutoHotKey Script                                      ;
; Deutsche Umlaute auf den jeweiligen Buchstaben         ;
; Ergänzungen der \ Taste als Enter-Taste                ;
; Nutzung von Rshift zum Umschalten der Funktionalitäten ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


Rshift & a::
{
  GetKeyState, state, Lshift
  if state = D
    sendinput, Ä
  else
    sendinput, ä    
  return
}

Rshift & o::
{
  GetKeyState, state, Lshift
  if state = D
    sendinput, Ö
  else
    sendinput, ö    
  return
}

Rshift & u::
{
  GetKeyState, state, Lshift
  if state = D
    sendinput, Ü
  else
    sendinput, ü
  return
}

Rshift & s::
{
  sendinput, ß
  return
}

Rshift & e::
{
  sendinput, €
  return
}

Ralt & q::
{
  sendinput, @
  return
}

Rshift & q::
{
  sendinput, @
  return
}

; Falls man das US International Layout hat, kann man die Tasta über dem Enter auch als
; Enter-Taste benutzen.
:*:\::
{
  sendinput, {ENTER}
  return
}

; Die reguläre Funktion wird hier dann mit dem Rshift wieder zur Verfügung gestellt.
Rshift & \::
{
  GetKeyState, state, Lshift
  if state = D
    sendinput, |
  else
    sendinput, \
  return
}

;Fuer meine Lieblingssmileys
:*:``::
{
  sendinput, {^}
  return
}
