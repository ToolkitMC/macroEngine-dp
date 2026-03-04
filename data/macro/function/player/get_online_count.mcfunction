# ============================================
# macro:player/get_online_count
# ============================================
# Returns the current number of players on the server.
# INPUT: (yok)
# OUTPUT: macro:output { result:<int> }
# ============================================

scoreboard players set $poc macro.tmp 0
execute as @a run scoreboard players add $poc macro.tmp 1
execute store result storage macro:output result int 1 run scoreboard players get $poc macro.tmp
