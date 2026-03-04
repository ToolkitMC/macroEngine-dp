# ============================================
# macro:lib/debounce
# ============================================
# Schedules the function only if not already scheduled.
# Zaten actiand bir schedule if present, cagriyi yok sayar
# (first call is preserved — subsequent ones are dropped).
#
# For the opposite behaviour (son cagriyi koru):
# schedule_cancel → schedule seklinde cagirin.
#
# INPUT: macro:input { func:"<namespace:path>", interval:<tick>, key:"<id>" }
# EXAMPLE:
# data modify storage macro:input func set value "mypack:save/checkpoint"
# data modify storage macro:input interval set value 60
# data modify storage macro:input key set value "autosave"
# function macro:lib/debounce with storage macro:input {}
# # → Player fires every second but only saves once every 3s
# ============================================

# Schedule zaten if present, → gormezden gel (debounce)
$execute if data storage macro:engine schedules.$(key) run return 0

# If absent → create a normal schedule
function macro:lib/schedule with storage macro:input {}
