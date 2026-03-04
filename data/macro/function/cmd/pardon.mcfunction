# macro:cmd/pardon — Pardon a player
# INPUT: macro:input { player:"<name>" }

execute unless entity @s[tag=macro.admin] run return 0

$pardon $(player)
