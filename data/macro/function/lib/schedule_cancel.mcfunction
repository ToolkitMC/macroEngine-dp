# ============================================
# macro:lib/schedule_cancel
# ============================================
# Cancels the specified schedule.
# Current run completes but will not be re-queued.
# INPUT: macro:input { key:"<schedule_id>" }
# ============================================

$data remove storage macro:engine schedules.$(key)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"lib/schedule_cancel ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(key)","color":"aqua"}]
