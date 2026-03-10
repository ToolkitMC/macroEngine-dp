# macro:cmd/tp_facing — Playeryu koordinata isinla and belirli yone baktir
# INPUT: macro:input { player:"<name>", x:<float>, y:<float>, z:<float>,
# fx:<float>, fy:<float>, fz:<float> }

$execute as @a[name=$(player),limit=1] at @s run tp @s $(x) $(y) $(z) facing $(fx) $(fy) $(fz)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/tp_facing ","color":"aqua"},{"text":"$(player)","color":"white"}]
