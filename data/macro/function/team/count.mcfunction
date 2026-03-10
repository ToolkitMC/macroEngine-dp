# ============================================
# macro:team/count
# ============================================
# Takimdaki online player sayisini dondurur.
# INPUT: macro:input { team:"<name>" }
# OUTPUT: macro:output { result:<int> }
# ============================================

scoreboard players set $team_cnt macro.tmp 0
$execute as @a[team=$(team)] run scoreboard players add $team_cnt macro.tmp 1
execute store result storage macro:output result int 1 run scoreboard players get $team_cnt macro.tmp
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"team/count ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(team)","color":"aqua"},{"text":" → ","color":"dark_gray"},{"storage":"macro:output","nbt":"result","color":"green"}]
