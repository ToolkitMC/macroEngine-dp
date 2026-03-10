# ============================================
# macro:lib/schedule
# ============================================
# Functionu interval tick'te bir calisacak sekilde zamanlar.
# Iptal for: macro:lib/schedule_cancel (key via).
# Devam etmek for: function forde macro:lib/schedule_renew cagir.
#
# BUG FIX v3.1: Re-calling with the same key will NOT add a
# duplicate entry to the queue — only func/interval is updated.
# Call schedule_cancel first to RESET the timer.
#
# INPUT: macro:input { func:"<namespace:path>", interval:<tick>, key:"<schedule_id>" }
# EXAMPLE:
# data modify storage macro:input func set value "mypack:tasks/heartbeat"
# data modify storage macro:input interval set value 200
# data modify storage macro:input key set value "heartbeat"
# function macro:lib/schedule with storage macro:input {}
# ============================================

# Already exists? → Only update data, do not re-queue
$execute if data storage macro:engine schedules.$(key) run data modify storage macro:engine schedules.$(key).func set value "$(func)"
$execute if data storage macro:engine schedules.$(key) run data modify storage macro:engine schedules.$(key).interval set value $(interval)
$execute if data storage macro:engine schedules.$(key) run return 0

# New schedule: save and add to queue
$data modify storage macro:engine schedules.$(key).func set value "$(func)"
$data modify storage macro:engine schedules.$(key).interval set value $(interval)
$data modify storage macro:engine queue append value {func:"$(func)", delay:$(interval)}
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"lib/schedule ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(key)","color":"aqua"}]
