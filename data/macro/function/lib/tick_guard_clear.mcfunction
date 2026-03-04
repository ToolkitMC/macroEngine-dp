# ============================================
# macro:lib/tick_guard_clear
# ============================================
# Manually clears tick_guard for @s.
# Normally not needed — guard $epoch via automatically gecersiz olur.
# Use only when you want to exempt @s from the guard within the same tick.
#
# EXAMPLE:
# execute as <player> run function macro:lib/tick_guard_clear
# ============================================

scoreboard players set @s macro.tick_guard -1
