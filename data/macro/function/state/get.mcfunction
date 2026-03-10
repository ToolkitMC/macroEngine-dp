# ============================================
# macro:state/get
# ============================================
# Returns the player's current state.
# INPUT: macro:input { player:"<player_name>" }
# OUTPUT: macro:output { result:"<state>" }
# ============================================

data remove storage macro:output result
$execute if data storage macro:engine states.$(player) run data modify storage macro:output result set from storage macro:engine states.$(player)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"state/get ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"storage":"macro:output","nbt":"result","color":"green"}]
