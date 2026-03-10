# ============================================
# macro:string/progress_bar_self v4.0
# ============================================
# Rewritten for Minecraft 1.21.11+
# Runs separately for each player
#
# USAGE:
# data modify storage macro:engine pb_obj set value "health"
# data modify storage macro:engine pb_max set value 20
# data modify storage macro:engine pb_label set value "Health"
# ============================================

# pb_max checku
$scoreboard players set $pbs_max macro.tmp $(pb_max)
execute if score $pbs_max macro.tmp matches ..0 run return fail

# Mevcut valuei read
$execute store result score $pbs_seg macro.tmp run scoreboard players get @s $(pb_obj)

# 10 segmente bol
scoreboard players set $pbs_ten macro.tmp 10
scoreboard players operation $pbs_seg macro.tmp *= $pbs_ten macro.tmp
scoreboard players operation $pbs_seg macro.tmp /= $pbs_max macro.tmp

# 0-10 arasi sinirla
execute if score $pbs_seg macro.tmp matches ..0 run scoreboard players set $pbs_seg macro.tmp 0
execute if score $pbs_seg macro.tmp matches 10.. run scoreboard players set $pbs_seg macro.tmp 10

# Progress bar show - basit format
$execute if score $pbs_seg macro.tmp matches 0 run title @s actionbar {"text":"$(pb_label) ░░░░░░░░░░"}
$execute if score $pbs_seg macro.tmp matches 1 run title @s actionbar {"text":"$(pb_label) █░░░░░░░░░"}
$execute if score $pbs_seg macro.tmp matches 2 run title @s actionbar {"text":"$(pb_label) ██░░░░░░░░"}
$execute if score $pbs_seg macro.tmp matches 3 run title @s actionbar {"text":"$(pb_label) ███░░░░░░░"}
$execute if score $pbs_seg macro.tmp matches 4 run title @s actionbar {"text":"$(pb_label) ████░░░░░░"}
$execute if score $pbs_seg macro.tmp matches 5 run title @s actionbar {"text":"$(pb_label) █████░░░░░"}
$execute if score $pbs_seg macro.tmp matches 6 run title @s actionbar {"text":"$(pb_label) ██████░░░░"}
$execute if score $pbs_seg macro.tmp matches 7 run title @s actionbar {"text":"$(pb_label) ███████░░░"}
$execute if score $pbs_seg macro.tmp matches 8 run title @s actionbar {"text":"$(pb_label) ████████░░"}
$execute if score $pbs_seg macro.tmp matches 9 run title @s actionbar {"text":"$(pb_label) █████████░"}
$execute if score $pbs_seg macro.tmp matches 10 run title @s actionbar {"text":"$(pb_label) ██████████"}
tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"string/progress_bar_self ","color":"aqua"}]
