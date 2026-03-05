# macro:cmd/gamemode — Change a player's game mode
# INPUT: macro:input { player:"<name>", mode:"<survival|creative|adventure|spectator>" }

$execute as @a[name=$(player),limit=1] at @s run gamemode $(mode) @s
