# ============================================
# macro:event/unregister
# ============================================
# Removes all handlers registered to an event.
# INPUT: macro:input { event:"<event_name>" }
# ============================================

$data remove storage macro:engine events.$(event)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"event/unregister ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(event)","color":"aqua"}]
