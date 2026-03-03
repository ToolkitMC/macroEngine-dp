# macro:cmd/kick — Oyuncuyu sunucudan at
# INPUT: macro:input { player:"<ad>", reason:"<sebep>" }

execute unless entity @s[tag=nacro.admin] run return 0

$kick @a[name=$(player),limit=1] $(reason)
