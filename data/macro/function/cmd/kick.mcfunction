# macro:cmd/kick — Kick a player from the server
# INPUT: macro:input { player:"<name>", reason:"<reason>" }

execute unless entity @s[tag=macro.admin] run return 0

$kick @a[name=$(player),limit=1] $(reason)
