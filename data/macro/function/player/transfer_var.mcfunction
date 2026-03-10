# ============================================
# macro:player/transfer_var
# ============================================
# Transfer a variable amount from one player to another.
# INPUT: macro:input { from:"<source>", to:"<target>", key:"<variable>", amount:<int> }
# OUTPUT: macro:output { result:<hedef_yeni_value> }
# ============================================

$execute store result score $tr_f macro.tmp run data get storage macro:engine players.$(from).$(key)
$scoreboard players set $tr_a macro.tmp $(amount)
scoreboard players operation $tr_f macro.tmp -= $tr_a macro.tmp
$execute store result storage macro:engine players.$(from).$(key) int 1 run scoreboard players get $tr_f macro.tmp

$execute store result score $tr_t macro.tmp run data get storage macro:engine players.$(to).$(key)
scoreboard players operation $tr_t macro.tmp += $tr_a macro.tmp
$execute store result storage macro:engine players.$(to).$(key) int 1 run scoreboard players get $tr_t macro.tmp

execute store result storage macro:output result int 1 run scoreboard players get $tr_t macro.tmp
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"player/transfer_var ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(key)","color":"aqua"},{"text":" → ","color":"dark_gray"},{"storage":"macro:output","nbt":"result","color":"green"}]
