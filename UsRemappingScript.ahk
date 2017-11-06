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

Rshift & \::
{
  GetKeyState, state, Lshift
  if state = D
    sendinput, |
  else
    sendinput, \
  return
}

:*:\::
{
  sendinput, {ENTER}
  return
}

;Fuer meine Lieblingssmileys
:*:``::
{
  sendinput, {^}
  return
}