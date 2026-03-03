# macro:cmd/pardon — Oyuncunun yasağını kaldır
# INPUT: macro:input { player:"<ad>" }

execute unless entity @s[tag=nacro.admin] run return 0

$pardon $(player)
