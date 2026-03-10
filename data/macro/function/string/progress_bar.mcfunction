# ============================================
# macro:string/progress_bar v4.0
# ============================================
# Tek kullanimlik progress bar showimi
# Minecraft 1.21.11+ uyumlu
#
# USAGE:
# data modify storage macro:input player set value "<Player Adi>"
# data modify storage macro:input current set value 15
# data modify storage macro:input max set value 20
# data modify storage macro:input label set value "Health"
# function macro:string/progress_bar with storage macro:input {}
# ============================================

# Valueleri set
$scoreboard players set $pb1_seg macro.tmp $(current)
$scoreboard players set $pb1_max macro.tmp $(max)

# Max checku
execute if score $pb1_max macro.tmp matches ..0 run return fail

# 10 segmente bol
scoreboard players set $pb1_ten macro.tmp 10
scoreboard players operation $pb1_seg macro.tmp *= $pb1_ten macro.tmp
scoreboard players operation $pb1_seg macro.tmp /= $pb1_max macro.tmp

# 0-10 arasi sinirla
execute if score $pb1_seg macro.tmp matches ..0 run scoreboard players set $pb1_seg macro.tmp 0
execute if score $pb1_seg macro.tmp matches 10.. run scoreboard players set $pb1_seg macro.tmp 10

# Progress bar show
$execute if score $pb1_seg macro.tmp matches 0 run title @a[name=$(player),limit=1] actionbar {"text":"$(label) ░░░░░░░░░░"}
$execute if score $pb1_seg macro.tmp matches 1 run title @a[name=$(player),limit=1] actionbar {"text":"$(label) █░░░░░░░░░"}
$execute if score $pb1_seg macro.tmp matches 2 run title @a[name=$(player),limit=1] actionbar {"text":"$(label) ██░░░░░░░░"}
$execute if score $pb1_seg macro.tmp matches 3 run title @a[name=$(player),limit=1] actionbar {"text":"$(label) ███░░░░░░░"}
$execute if score $pb1_seg macro.tmp matches 4 run title @a[name=$(player),limit=1] actionbar {"text":"$(label) ████░░░░░░"}
$execute if score $pb1_seg macro.tmp matches 5 run title @a[name=$(player),limit=1] actionbar {"text":"$(label) █████░░░░░"}
$execute if score $pb1_seg macro.tmp matches 6 run title @a[name=$(player),limit=1] actionbar {"text":"$(label) ██████░░░░"}
$execute if score $pb1_seg macro.tmp matches 7 run title @a[name=$(player),limit=1] actionbar {"text":"$(label) ███████░░░"}
$execute if score $pb1_seg macro.tmp matches 8 run title @a[name=$(player),limit=1] actionbar {"text":"$(label) ████████░░"}
$execute if score $pb1_seg macro.tmp matches 9 run title @a[name=$(player),limit=1] actionbar {"text":"$(label) █████████░"}
$execute if score $pb1_seg macro.tmp matches 10 run title @a[name=$(player),limit=1] actionbar {"text":"$(label) ██████████"}
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"string/progress_bar ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(label)","color":"aqua"}]
