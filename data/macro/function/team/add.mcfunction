# ============================================
# macro:team/add
# ============================================
# Playeryu takima addr.
# INPUT: macro:input { team:"<name>", player:"<player>" }
# OUTPUT: —
# ============================================

$team join $(team) $(player)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"team/add ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(team)","color":"aqua"}]
