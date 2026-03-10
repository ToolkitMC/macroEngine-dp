# macro:cmd/scoreboard_add — Playernun scoreboard valueine add
# INPUT: macro:input { player:"<name>", objective:"<objective>", amount:<int> }

$execute as @a[name=$(player),limit=1] at @s run scoreboard players add @s $(objective) $(amount)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/scoreboard_add ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(amount)","color":"aqua"}]
