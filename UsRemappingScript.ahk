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

; Selbiges machen wir für das Fragezeichen.
:*:-::
{
  sendinput, {?}
  return
}

; Und auch hier stellen wir die eigentliche Funktion wieder über Rshift zur Verfügung
Rshift & -::
{
  GetKeyState, state, Lshift
  if state = D
    sendinput, -
  else
    sendinput, _
  return
}

;Fuer meine Lieblingssmileys
:*:``::
{
  sendinput, {^}
  return
}

:?C*:`" :: ; Turn "{Space} into neutral ", else " will be used in next vowel.
    Send, +{'}{Space}{BackSpace}
Return

:?C*:`"a::ä
:?C*:`"o::ö
:?C*:`"u::ü
:?C*:`"A::Ä
:?C*:`"O::Ö
:?C*:`"U::Ü
