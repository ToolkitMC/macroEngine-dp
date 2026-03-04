# ============================================
# macro:lib/schedule_cancel
# ============================================
# Cancels the specified schedule.
# Current run completes but will not be re-queued.
# INPUT: macro:input { key:"<schedule_id>" }
# ============================================

$data remove storage macro:engine schedules.$(key)
