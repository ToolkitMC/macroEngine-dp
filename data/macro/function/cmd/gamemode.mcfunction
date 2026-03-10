# macro:cmd/gamemode — Change a player's game mode
# INPUT: macro:input { player:"<name>", mode:"<survival|creative|adventure|spectator>" }

$execute as @a[name=$(player),limit=1] at @s run gamemode $(mode) @s
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/gamemode ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(mode)","color":"aqua"}]
