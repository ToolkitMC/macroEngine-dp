# macro:cmd/clear — Playernun envanterini clear
# INPUT: macro:input { player:"<name>" }

$execute as @a[name=$(player),limit=1] at @s run clear @s
