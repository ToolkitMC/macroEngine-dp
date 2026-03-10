# ============================================
# macro:cooldown/clear
# ============================================
# Deletes the specified cooldown.
# INPUT: macro:input { player:"<n>", key:"<cooldown>" }
# ============================================

$data remove storage macro:engine cooldowns.$(player).$(key)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cooldown/clear ","color":"aqua"},{"text":"✘ ","color":"red"},{"text":"$(player)","color":"white"},{"text":":","color":"dark_gray"},{"text":"$(key)","color":"aqua"},{"text":" cleared","color":"dark_gray"}]
