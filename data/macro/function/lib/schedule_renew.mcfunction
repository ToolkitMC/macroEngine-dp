$execute unless data storage macro:engine schedules.$(key) run return 0
$data modify storage macro:engine _sched_tmp set from storage macro:engine schedules.$(key)
function macro:lib/internal/schedule_requeue with storage macro:engine _sched_tmp
data remove storage macro:engine _sched_tmp
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"lib/schedule_renew ","color":"aqua"},{"text":" → ","color":"#555555"},{"text":"$(key)","color":"aqua"}]
