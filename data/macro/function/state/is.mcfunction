# ============================================
# macro:state/is
# ============================================
# Checks whether the player's state matches.
# INPUT: macro:input { player:"<player_name>", state:"<expected_state>" }
# OUTPUT: macro:output { result: 1b (match) / 0b (no match) }
# ============================================

data modify storage macro:output result set value 0b
$execute if data storage macro:engine states{$(player):"$(state)"} run data modify storage macro:output result set value 1b
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"state/is ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(state)","color":"aqua"},{"text":" → ","color":"dark_gray"},{"storage":"macro:output","nbt":"result","color":"green"}]
