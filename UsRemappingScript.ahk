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

Ralt & o::
{
  GetKeyState, state, Lshift
  if state = D
    sendinput, Ø
  else
    sendinput, ø  
  return
}

Ralt & p::
{
  sendinput, ¶
  return
}

Ralt & m::
{
  sendinput, µ
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

Rshift & 4::
{
  sendinput, §
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

; Und auch hier stellen wir die eigentliche Funktion wieder über Rshift zur Verfügung
;Fuer meine Lieblingssmileys
:*:``::
{
  sendinput, {^}
  return
}
