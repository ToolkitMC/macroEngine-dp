$execute unless data storage macro:engine events.$(event) run return 0

$data modify storage macro:engine _event_tmp set from storage macro:engine events.$(event)
execute if data storage macro:engine _event_tmp[0] run function macro:event/internal/fire_next
data remove storage macro:engine _event_tmp
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"event/fire ","color":"aqua"},{"text":" → ","color":"#555555"},{"text":"$(event)","color":"aqua"}]
