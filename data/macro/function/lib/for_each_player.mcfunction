# ============================================
# macro:lib/for_each_player
# ============================================
# Runs the given function AS each online player.
# For each player @s equals that player.
#
# INPUT: macro:input { func:"<namespace:path>" }
# EXAMPLE:
# data modify storage macro:input func set value "mypack:daily/give_reward"
# function macro:lib/for_each_player with storage macro:input {}
# ============================================

$execute as @a run function $(func)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"lib/for_each_player ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(func)","color":"aqua"}]
