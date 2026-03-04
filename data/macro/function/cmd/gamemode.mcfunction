# macro:cmd/gamemode — Playernun oyun modunu degistir
# INPUT: macro:input { player:"<name>", mode:"<survival|creative|adventure|spectator>" }

$execute as @a[name=$(player),limit=1] at @s run gamemode $(mode) @s
