# ============================================
# macro:lib/schedule_reset
# ============================================
# Resets the countdown of an existing schedule.
# Removes the delayed queue entry and re-queues it.
# Does nothing if the schedule does not exist.
#
# INPUT: macro:input { key:"<schedule_id>" }
#
# EXAMPLE:
# data modify storage macro:input key set value "inactivity"
# function macro:lib/schedule_reset with storage macro:input {}
# ============================================

# Var mi check et
$execute unless data storage macro:engine schedules.$(key) run return 0

# Temporary kopyaya al
$data modify storage macro:engine _sreset set from storage macro:engine schedules.$(key)
$data modify storage macro:engine _sreset.key set value "$(key)"

# delete schedule record (like schedule_cancel)
$data remove storage macro:engine schedules.$(key)

# Yeniden schedule et (tam olarak lib/schedule mantigiyla)
function macro:lib/internal/schedule_reset_do with storage macro:engine _sreset
data remove storage macro:engine _sreset
