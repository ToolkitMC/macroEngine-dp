# ============================================
# macro:log/clear
# ============================================
# Clears all log entries.
# Resets log_display list and rolls back counter.
#
# USAGE:
# function macro:log/clear
# ============================================

data modify storage macro:engine log_display set value []
scoreboard players set $log_count macro.tmp 0
