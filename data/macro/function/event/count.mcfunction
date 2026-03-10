# ============================================
# macro:event/count
# ============================================
# Bir event'e kayitli handler sayisini dondurur.
# INPUT: macro:input { event:"<event_name>" }
# OUTPUT: macro:output { result:<int> } (0 = event yok or bos)
# ============================================

data modify storage macro:output result set value 0
$execute if data storage macro:engine events.$(event) run execute store result storage macro:output result int 1 run data get storage macro:engine events.$(event)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"event/count ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(event)","color":"aqua"},{"text":" → ","color":"dark_gray"},{"storage":"macro:output","nbt":"result","color":"green"}]
