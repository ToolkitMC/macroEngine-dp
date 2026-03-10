# ============================================
# macro:state/set
# ============================================
# Assigns a state to a player.
# INPUT: macro:input { player:"<player_name>", state:"<state>" }
# ============================================

$data modify storage macro:engine states.$(player) set value "$(state)"
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"state/set ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(state)","color":"aqua"}]
