# macro:cmd/deop — Revoke OP from a player
# INPUT: macro:input { player:"<name>" }

execute unless entity @s[tag=macro.admin] run return 0

$deop $(player)
