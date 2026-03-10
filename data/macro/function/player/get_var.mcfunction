# ============================================
# macro:player/get_var
# ============================================
# INPUT: macro:input { player:"<n>", key:"<variable>" }
# OUTPUT: macro:output { result: <value> }
# ============================================

$data modify storage macro:output result set from storage macro:engine players.$(player).$(key)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"player/get_var ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(key)","color":"aqua"},{"text":" → ","color":"dark_gray"},{"storage":"macro:output","nbt":"result","color":"green"}]
