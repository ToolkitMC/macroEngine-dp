# ============================================
# macro:team/delete
# ============================================
# Removes the team from the game and from storage.
# INPUT: macro:input { team:"<name>" }
# OUTPUT: —
# ============================================

$team remove $(team)
$data remove storage macro:engine teams.$(team)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"team/delete ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(team)","color":"aqua"}]
