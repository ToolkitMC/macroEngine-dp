# macro:cmd/scoreboard_set — Playernun scoreboard valueini write
# INPUT: macro:input { player:"<name>", objective:"<objective>", value:<int> }

$execute as @a[name=$(player),limit=1] at @s run scoreboard players set @s $(objective) $(value)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/scoreboard_set ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(value)","color":"aqua"}]
