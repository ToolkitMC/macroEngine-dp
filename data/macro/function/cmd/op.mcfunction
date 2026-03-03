# macro:cmd/op — Oyuncuya OP ver
# INPUT: macro:input { player:"<ad>" }
# ⚠ Sadece konsol veya OP seviye 4 çalıştırabilir

execute unless entity @s[tag=nacro.admin] run return 0

$op $(player)
