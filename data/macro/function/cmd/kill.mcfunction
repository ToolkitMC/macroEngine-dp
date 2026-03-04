# macro:cmd/kill — Playeryu oldur
# INPUT: macro:input { player:"<name>" }

$execute as @a[name=$(player),limit=1] at @s run kill @s
