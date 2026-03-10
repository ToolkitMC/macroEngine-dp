# macro:cmd/xp_get — Playernun XP seviyesini read
# INPUT: macro:input { player:"<name>", type:"levels"|"points" }
# OUTPUT: macro:output { result:<int> }

$execute store result storage macro:output result int 1 run xp query @a[name=$(player),limit=1] $(type)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/xp_get ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(type)","color":"aqua"}]
