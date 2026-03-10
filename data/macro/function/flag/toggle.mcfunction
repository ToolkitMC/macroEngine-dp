# ============================================
# macro:flag/toggle
# ============================================
# Toggles a global flag.
# INPUT: macro:input { key:"<flag_name>" }
# OUTPUT: macro:output { result: 1b (newly set) / 0b (newly unset) }
# ============================================

scoreboard players set $ftgl macro.tmp 0
$execute if data storage macro:engine flags.$(key) run scoreboard players set $ftgl macro.tmp 1

$execute if score $ftgl macro.tmp matches 1 run data remove storage macro:engine flags.$(key)
execute if score $ftgl macro.tmp matches 1 run data modify storage macro:output result set value 0b

$execute if score $ftgl macro.tmp matches 0 run data modify storage macro:engine flags.$(key) set value 1b
execute if score $ftgl macro.tmp matches 0 run data modify storage macro:output result set value 1b
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"flag/toggle ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(key)","color":"aqua"},{"text":" → ","color":"dark_gray"},{"storage":"macro:output","nbt":"result","color":"green"}]
