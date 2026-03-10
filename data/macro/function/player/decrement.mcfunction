# macro:player/decrement — Decrement variable by 1
# INPUT: macro:input { player:"<n>", key:"<variable>" }
# OUTPUT: macro:output { result:<new_value> }

$execute store result score $pvar macro.tmp run data get storage macro:engine players.$(player).$(key)
scoreboard players remove $pvar macro.tmp 1
$execute store result storage macro:engine players.$(player).$(key) int 1 run scoreboard players get $pvar macro.tmp
execute store result storage macro:output result int 1 run scoreboard players get $pvar macro.tmp
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"player/decrement ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(key)","color":"aqua"},{"text":" → ","color":"dark_gray"},{"storage":"macro:output","nbt":"result","color":"green"}]
