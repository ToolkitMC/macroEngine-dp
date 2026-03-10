# macro:cmd/scoreboard_get — Playernun scoreboard valueini read
# INPUT: macro:input { player:"<name>", objective:"<objective>" }
# OUTPUT: macro:output { result:<int> }

$execute store result storage macro:output result int 1 run scoreboard players get @a[name=$(player),limit=1] $(objective)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/scoreboard_get ","color":"aqua"},{"text":"$(player)","color":"white"}]
