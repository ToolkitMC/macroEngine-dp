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
