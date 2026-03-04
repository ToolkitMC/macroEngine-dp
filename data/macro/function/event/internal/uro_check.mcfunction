# Do not call directly.
# Makro INPUT: { func:"<handler_func>" } — _uro.src[0]'in icerigi
# Bu handler, _uro.func via eslesmiyorsa events listesine geri addnir.
$execute unless data storage macro:engine _uro{func:"$(func)"} run function macro:event/internal/uro_append with storage macro:engine _uro
