# ============================================
# macro:lib/for_each_player_at
# ============================================
# Run function AS and AT each online player.
# INPUT: macro:input { func:"<namespace:path>" }
# ============================================

$execute as @a at @s run function $(func)
