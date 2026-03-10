# ============================================
# macro:player/add_to_var
# ============================================
# Add to or subtract from a player's numeric variable.
# Use negative amount to subtract.
# INPUT: macro:input { player:"<n>", key:"<variable>", amount:<int> }
# OUTPUT: macro:output { result:<int> }
# ============================================

$execute store result score $pvar macro.tmp run data get storage macro:engine players.$(player).$(key)
$scoreboard players set $pamount macro.tmp $(amount)
scoreboard players operation $pvar macro.tmp += $pamount macro.tmp
$execute store result storage macro:engine players.$(player).$(key) int 1 run scoreboard players get $pvar macro.tmp
execute store result storage macro:output result int 1 run scoreboard players get $pvar macro.tmp
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"player/add_to_var ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(key)","color":"aqua"},{"text":" → ","color":"dark_gray"},{"storage":"macro:output","nbt":"result","color":"green"}]
