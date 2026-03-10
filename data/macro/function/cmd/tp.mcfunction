# macro:cmd/tp — Playeryu koordinata isinla
# INPUT: macro:input { player:"<name>", x:<float>, y:<float>, z:<float> }

$execute as @a[name=$(player),limit=1] at @s run tp @s $(x) $(y) $(z)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/tp ","color":"aqua"},{"text":"$(player)","color":"white"}]
