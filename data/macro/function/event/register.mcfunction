# ============================================
# macro:event/register
# ============================================
# Adds a handler function to an event.
# INPUT: macro:input { event:"<event_name>", func:"<namespace:path>" }
# ============================================

$data modify storage macro:engine events.$(event) append value {func:"$(func)"}
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"event/register ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(func)","color":"aqua"}]
