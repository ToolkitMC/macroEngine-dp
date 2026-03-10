# ============================================
# macro:player/del_var
# ============================================
# INPUT: macro:input { player:"<n>", key:"<variable>" }
# ============================================

$data remove storage macro:engine players.$(player).$(key)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"player/del_var ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(key)","color":"aqua"}]
