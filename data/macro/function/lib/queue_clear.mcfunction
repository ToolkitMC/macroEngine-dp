# ============================================
# macro:lib/queue_clear
# ============================================
# Removes all queued items immediately.
# The currently running job in this tick is unaffected.
#
# WARNING: This is irreversible. All scheduled wait/queue_add
# cagrilari is cancelled. Schedule'lar (macro:engine schedules)
# silinmez — onlar for schedule_cancel kullanin.
#
# INPUT: (yok)
# OUTPUT: (yok)
#
# EXAMPLE:
# # Clear all jobs at game end
# function macro:lib/queue_clear
# ============================================

data remove storage macro:engine queue
data modify storage macro:engine queue set value []
