# Do not call directly.
# Makro INPUT: { event:"<event>", func:"<exclude>", src:[...] }
# _uro.src[0]'i events.<event>'e geri writear.
$data modify storage macro:engine events.$(event) append from storage macro:engine _uro.src[0]
